=======================================
Modelica.Mechanics.MultiBody.Interfaces
=======================================

`Modelica.Mechanics.MultiBody <Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody>`_.Interfaces
-----------------------------------------------------------------------------------------------------------

**Connectors and partial models for 3-dim. mechanical components**

Information
~~~~~~~~~~~

::

This package contains connectors and partial models (i.e., models that
are only used to build other models) of the MultiBody library.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                         | Description                                                                                                                                                                    |
+==============================================================================================================================================================================================================================+================================================================================================================================================================================+
| |image20| `Frame <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame>`_                                                                                                              | Coordinate system fixed to the component with one cut-force and cut-torque (no icon)                                                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image21| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_                                                                                                         | Coordinate system fixed to the component with one cut-force and cut-torque (filled rectangular icon)                                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image22| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_                                                                                                         | Coordinate system fixed to the component with one cut-force and cut-torque (non-filled rectangular icon)                                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image23| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_                                                                                             | Coordinate system fixed to the component used to express in which coordinate system a vector is resolved (non-filled rectangular icon)                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image24| `FlangeWithBearing <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing>`_                                                                                      | Connector consisting of 1-dim. rotational flange and its bearing frame                                                                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image25| `FlangeWithBearingAdaptor <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptor>`_                                                                        | Adaptor to allow direct connections to the sub-connectors of FlangeWithBearing                                                                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image26| `PartialTwoFrames <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames>`_                                                                                        | Base model for components providing two frame connectors + outer world + assert to guarantee that the component is connected                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image27| `PartialTwoFramesDoubleSize <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesDoubleSize>`_                                                                    | Base model for components providing two frame connectors + outer world + assert to guarantee that the component is connected (default icon size is factor 2 larger as usual)   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image28| `PartialOneFrame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_a>`_                                                                                     | Base model for components providing one frame\_a connector + outer world + assert to guarantee that the component is connected                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image29| `PartialOneFrame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_b>`_                                                                                     | Base model for components providing one frame\_b connector + outer world + assert to guarantee that the component is connected                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image30| `PartialElementaryJoint <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJoint>`_                                                                            | Base model for elementary joints (has two frames + outer world + assert to guarantee that the joint is connected)                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image31| `PartialForce <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialForce>`_                                                                                                | Base model for force elements (provide frame\_b.f and frame\_b.t in subclasses)                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image32| `PartialLineForce <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce>`_                                                                                        | Base model for line force elements                                                                                                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image33| `PartialAbsoluteSensor <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialAbsoluteSensor>`_                                                                              | Base model to measure an absolute frame variable                                                                                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image34| `PartialRelativeSensor <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialRelativeSensor>`_                                                                              | Base model to measure a relative variable between two frames                                                                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image35| `PartialVisualizer <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer>`_                                                                                      | Base model for visualizers (has a frame\_a on the left side + outer world + assert to guarantee that the component is connected)                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image36| `ZeroPosition <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.ZeroPosition>`_                                                                                                | Set absolute position vector of frame\_resolve to a zero vector and the orientation object to a null rotation                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image37| `partialGravityAcceleration <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration>`_                                                                    |                                                                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image38| `partialSurfaceCharacteristic <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic>`_                                                                |                                                                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image39| `partialColorMap <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialColorMap>`_                                                                                          | Interface for a function returning a color map                                                                                                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.Frame
---------------------------------------------------------------------------------------------------------------------------------------

**Coordinate system fixed to the component with one cut-force and
cut-torque (no icon)**

Information
~~~~~~~~~~~

::

Basic definition of a coordinate system that is fixed to a mechanical
component. In the origin of the coordinate system the cut-force and the
cut-torque is acting. This component has no icon definition and is only
used by inheritance from frame connectors to define different icons.

::

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| Type                                                                                                        | Name      | Description                                                                                   |
+=============================================================================================================+===========+===============================================================================================+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                               | r\_0[3]   | Position vector from world frame to the connector frame origin, resolved in world frame [m]   |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_   | R         | Orientation object to rotate the world frame into the connector frame                         |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| flow `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_                                                | f[3]      | Cut-force resolved in connector frame [N]                                                     |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| flow `Torque <Modelica_SIunits.html#Modelica.SIunits.Torque>`_                                              | t[3]      | Cut-torque resolved in connector frame [N.m]                                                  |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Frame 
      "Coordinate system fixed to the component with one cut-force and cut-torque (no icon)"
      import SI = Modelica.SIunits;
      SI.Position r_0[3] 
        "Position vector from world frame to the connector frame origin, resolved in world frame";
      Frames.Orientation R 
        "Orientation object to rotate the world frame into the connector frame";
      flow SI.Force f[3] "Cut-force resolved in connector frame";
      flow SI.Torque t[3] "Cut-torque resolved in connector frame";
    end Frame;

--------------

|image40| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.Frame\_a
----------------------------------------------------------------------------------------------------------------------------------------------------

**Coordinate system fixed to the component with one cut-force and
cut-torque (filled rectangular icon)**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.Frame_aD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.Frame\_a

   Modelica.Mechanics.MultiBody.Interfaces.Frame\_a

Information
~~~~~~~~~~~

::

Basic definition of a coordinate system that is fixed to a mechanical
component. In the origin of the coordinate system the cut-force and the
cut-torque is acting. This component has a filled rectangular icon.

::

Extends from
`Frame <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame>`_
(Coordinate system fixed to the component with one cut-force and
cut-torque (no icon)).

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| Type                                                                                                        | Name      | Description                                                                                   |
+=============================================================================================================+===========+===============================================================================================+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                               | r\_0[3]   | Position vector from world frame to the connector frame origin, resolved in world frame [m]   |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_   | R         | Orientation object to rotate the world frame into the connector frame                         |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| flow `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_                                                | f[3]      | Cut-force resolved in connector frame [N]                                                     |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| flow `Torque <Modelica_SIunits.html#Modelica.SIunits.Torque>`_                                              | t[3]      | Cut-torque resolved in connector frame [N.m]                                                  |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Frame_a 
      "Coordinate system fixed to the component with one cut-force and cut-torque (filled rectangular icon)"
      extends Frame;

    end Frame_a;

--------------

|image41| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.Frame\_b
----------------------------------------------------------------------------------------------------------------------------------------------------

**Coordinate system fixed to the component with one cut-force and
cut-torque (non-filled rectangular icon)**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.Frame_bD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.Frame\_b

   Modelica.Mechanics.MultiBody.Interfaces.Frame\_b

Information
~~~~~~~~~~~

::

Basic definition of a coordinate system that is fixed to a mechanical
component. In the origin of the coordinate system the cut-force and the
cut-torque is acting. This component has a non-filled rectangular icon.

::

Extends from
`Frame <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame>`_
(Coordinate system fixed to the component with one cut-force and
cut-torque (no icon)).

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| Type                                                                                                        | Name      | Description                                                                                   |
+=============================================================================================================+===========+===============================================================================================+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                               | r\_0[3]   | Position vector from world frame to the connector frame origin, resolved in world frame [m]   |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_   | R         | Orientation object to rotate the world frame into the connector frame                         |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| flow `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_                                                | f[3]      | Cut-force resolved in connector frame [N]                                                     |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| flow `Torque <Modelica_SIunits.html#Modelica.SIunits.Torque>`_                                              | t[3]      | Cut-torque resolved in connector frame [N.m]                                                  |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Frame_b 
      "Coordinate system fixed to the component with one cut-force and cut-torque (non-filled rectangular icon)"
      extends Frame;

    end Frame_b;

--------------

|image42| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.Frame\_resolve
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Coordinate system fixed to the component used to express in which
coordinate system a vector is resolved (non-filled rectangular icon)**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.Frame_resolveD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.Frame\_resolve

   Modelica.Mechanics.MultiBody.Interfaces.Frame\_resolve

Information
~~~~~~~~~~~

::

Basic definition of a coordinate system that is fixed to a mechanical
component. In the origin of the coordinate system the cut-force and the
cut-torque is acting. This coordinate system is used to express in which
coordinate system a vector is resolved. A component that uses a
Frame\_resolve connector has to set the cut-force and cut-torque of this
frame to zero. When connecting from a Frame\_resolve connector to
another frame connector, by default the connecting line has line style
"dotted". This component has a non-filled rectangular icon.

::

Extends from
`Frame <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame>`_
(Coordinate system fixed to the component with one cut-force and
cut-torque (no icon)).

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| Type                                                                                                        | Name      | Description                                                                                   |
+=============================================================================================================+===========+===============================================================================================+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                               | r\_0[3]   | Position vector from world frame to the connector frame origin, resolved in world frame [m]   |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_   | R         | Orientation object to rotate the world frame into the connector frame                         |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| flow `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_                                                | f[3]      | Cut-force resolved in connector frame [N]                                                     |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+
| flow `Torque <Modelica_SIunits.html#Modelica.SIunits.Torque>`_                                              | t[3]      | Cut-torque resolved in connector frame [N.m]                                                  |
+-------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Frame_resolve "Coordinate system fixed to the component used to express in which
    coordinate system a vector is resolved (non-filled rectangular icon)"
      extends Frame;

    end Frame_resolve;

--------------

|image43| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.FlangeWithBearing
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Connector consisting of 1-dim. rotational flange and its bearing
frame**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing

   Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing

Information
~~~~~~~~~~~

::

This hierarchical connector models a 1-dim. rotational flange connector
and its optional bearing defined by a 3-dim. frame connector. If a
connection to the subconnectors should be clearly visible, connect first
an instance of
`FlangeWithBearingAdaptor <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptor>`_
to the FlangeWithBearing connector.

::

Parameters
~~~~~~~~~~

+-----------+---------------------------+-----------+------------------------------------------------------------------------+
| Type      | Name                      | Default   | Description                                                            |
+===========+===========================+===========+========================================================================+
| Boolean   | includeBearingConnector   | false     | = true, if bearing frame connector is present, otherwise not present   |
+-----------+---------------------------+-----------+------------------------------------------------------------------------+

Contents
~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------------------------------------------+
| Type                                                                                                             | Name                      | Description                                                            |
+==================================================================================================================+===========================+========================================================================+
| Boolean                                                                                                          | includeBearingConnector   | = true, if bearing frame connector is present, otherwise not present   |
+------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange                    | 1-dim. rotational flange                                               |
+------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------------------------------------------+
| `Frame <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame>`_            | bearingFrame              | 3-dim. frame in which the 1-dim. shaft is mounted                      |
+------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector FlangeWithBearing 
      "Connector consisting of 1-dim. rotational flange and its bearing frame"
      parameter Boolean includeBearingConnector=false 
        "= true, if bearing frame connector is present, otherwise not present";
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange 
        "1-dim. rotational flange";
      Modelica.Mechanics.MultiBody.Interfaces.Frame bearingFrame if 
        includeBearingConnector "3-dim. frame in which the 1-dim. shaft is mounted";


    end FlangeWithBearing;

--------------

|image44| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.FlangeWithBearingAdaptor
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Adaptor to allow direct connections to the sub-connectors of
FlangeWithBearing**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptorD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptor

   Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptor

Information
~~~~~~~~~~~

::

Adaptor object to make a more visible connection to the flange and frame
subconnectors of a
`FlangeWithBearing <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing>`_
connector.

::

Parameters
~~~~~~~~~~

+-----------+---------------------------+-----------+------------------------------------------------------------------------+
| Type      | Name                      | Default   | Description                                                            |
+===========+===========================+===========+========================================================================+
| Boolean   | includeBearingConnector   | false     | = true, if bearing frame connector is present, otherwise not present   |
+-----------+---------------------------+-----------+------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------+------------------+---------------------------------------------------------------------------------------+
| Type                                                                                                                            | Name             | Description                                                                           |
+=================================================================================================================================+==================+=======================================================================================+
| `FlangeWithBearing <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing>`_   | flangeAndFrame   | Compound connector consisting of 1-dim. rotational flange and 3-dim. frame mounting   |
+---------------------------------------------------------------------------------------------------------------------------------+------------------+---------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_                  | flange           | 1-dim. rotational flange                                                              |
+---------------------------------------------------------------------------------------------------------------------------------+------------------+---------------------------------------------------------------------------------------+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_                      | frame            | 3-dim. frame in which the 1-dim. shaft is mounted                                     |
+---------------------------------------------------------------------------------------------------------------------------------+------------------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FlangeWithBearingAdaptor 
      "Adaptor to allow direct connections to the sub-connectors of FlangeWithBearing"
      parameter Boolean includeBearingConnector=false 
        "= true, if bearing frame connector is present, otherwise not present";

      Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing flangeAndFrame(
          includeBearingConnector=includeBearingConnector) 
        "Compound connector consisting of 1-dim. rotational flange and 3-dim. frame mounting";
      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange 
        "1-dim. rotational flange";
      Frame_a frame if includeBearingConnector 
        "3-dim. frame in which the 1-dim. shaft is mounted";

    equation 
      connect(flange, flangeAndFrame.flange);
      connect(frame, flangeAndFrame.bearingFrame);
    end FlangeWithBearingAdaptor;

--------------

|image45| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.PartialTwoFrames
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames

   Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames

Information
~~~~~~~~~~~

::

This partial model provides two frame connectors, access to the world
object and an assert to check that both frame connectors are connected.
Therefore, inherit from this partial model if the two frame connectors
are needed and if the two frame connectors should be connected for a
correct model.

::

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                                  |
+==============================================================================================================+============+==============================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system fixed to the component with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_   | frame\_b   | Coordinate system fixed to the component with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialTwoFrames 
      "Base model for components providing two frame connectors + outer world + assert to guarantee that the component is connected"

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of component is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of component is not connected");
    end PartialTwoFrames;

--------------

|image46| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.PartialTwoFramesDoubleSize
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected (default icon size
is factor 2 larger as usual)**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesDoubleSizeD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesDoubleSize

   Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesDoubleSize

Information
~~~~~~~~~~~

::

This partial model provides two frame connectors, access to the world
object and an assert to check that both frame connectors are connected.
Therefore, inherit from this partial model if the two frame connectors
are needed and if the two frame connectors should be connected for a
correct model.

When dragging "PartialTwoFrames", the default size is a factor of two
larger as usual. This partial model is used by the Joint.Assemblies
joint aggregation models.

::

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                                  |
+==============================================================================================================+============+==============================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system fixed to the component with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_   | frame\_b   | Coordinate system fixed to the component with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialTwoFramesDoubleSize 
      "Base model for components providing two frame connectors + outer world + assert to guarantee that the component is connected (default icon size is factor 2 larger as usual)"

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the component with one cut-force and cut-torque";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of component is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of component is not connected");
    end PartialTwoFramesDoubleSize;

--------------

|image47| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.PartialOneFrame\_a
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model for components providing one frame\_a connector + outer
world + assert to guarantee that the component is connected**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_aD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame\_a

   Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame\_a

Information
~~~~~~~~~~~

::

This partial model provides one frame\_a connector, access to the world
object and an assert to check that the frame\_a connector is connected.
Therefore, inherit from this partial model if the frame\_a connector is
needed and if this connector should be connected for a correct model.

::

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                                  |
+==============================================================================================================+============+==============================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system fixed to the component with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialOneFrame_a 
      "Base model for components providing one frame_a connector + outer world + assert to guarantee that the component is connected"

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of component is not connected");
    end PartialOneFrame_a;

--------------

|image48| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.PartialOneFrame\_b
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model for components providing one frame\_b connector + outer
world + assert to guarantee that the component is connected**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_aD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame\_b

   Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame\_b

Information
~~~~~~~~~~~

::

This partial model provides one frame\_b connector, access to the world
object and an assert to check that the frame\_b connector is connected.
Therefore, inherit from this partial model if the frame\_b connector is
needed and if this connector should be connected for a correct model.

::

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                                  |
+==============================================================================================================+============+==============================================================================+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_   | frame\_b   | Coordinate system fixed to the component with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialOneFrame_b 
      "Base model for components providing one frame_b connector + outer world + assert to guarantee that the component is connected"

      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of component is not connected");
    end PartialOneFrame_b;

--------------

|image49| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.PartialElementaryJoint
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model for elementary joints (has two frames + outer world +
assert to guarantee that the joint is connected)**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJointD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJoint

   Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJoint

Information
~~~~~~~~~~~

::

All **elementary joints** should inherit from this base model, i.e.,
joints that are directly defined by equations, provided they compute
either the rotation object of frame\_b from the rotation object of
frame\_a and from relative quantities (or vice versa), or there is a
constraint equation between the rotation objects of the two frames. In
other cases, a joint object should inherit from
**Interfaces.PartialTwoFrames** (e.g., joint Spherical, because there is
no constraint between the rotation objects of frame\_a and frame\_b or
joint Cylindrical because it is not an elementary joint).

This partial model provides two frame connectors, a "Connections.branch"
between frame\_a and frame\_b, access to the world object and an assert
to check that both frame connectors are connected.

::

     

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                              |
+==============================================================================================================+============+==========================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system fixed to the joint with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_   | frame\_b   | Coordinate system fixed to the joint with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialElementaryJoint 
      "Base model for elementary joints (has two frames + outer world + assert to guarantee that the joint is connected)"

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the joint with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the joint with one cut-force and cut-torque";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      Connections.branch(frame_a.R, frame_b.R);
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of joint object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of joint object is not connected");
    end PartialElementaryJoint;

--------------

|image50| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.PartialForce
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model for force elements (provide frame\_b.f and frame\_b.t in
subclasses)**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJointD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.PartialForce

   Modelica.Mechanics.MultiBody.Interfaces.PartialForce

Information
~~~~~~~~~~~

::

All **3-dimensional force** and **torque elements** should be based on
this superclass. This model defines frame\_a and frame\_b, computes the
relative translation and rotation between the two frames and calculates
the cut-force and cut-torque at frame\_a by a force and torque balance
from the cut-force and cut-torque at frame\_b. As a result, in a
subclass, only the relationship between the cut-force and cut-torque at
frame\_b has to be defined as a function of the following relative
quantities:

::

      r_rel_b[3]: Position vector from origin of frame_a to origin
                  of frame_b, resolved in frame_b
      R_rel     : Relative orientation object to rotate from frame_a to frame_b

Assume that force f = {100,0,0} should be applied on the body to which
this force element is attached at frame\_b, then the definition should
be:

::

       model Constant_x_Force
          extends Modelica.Mechanics.MultiBody.Interfaces.PartialForce;
       equation
          frame_b.f = {-100, 0, 0};
          frame_b.t = zeros(3);
       end Constant_x_Force;

Note, that frame\_b.f and frame\_b.t are flow variables and therefore
the negative value of frame\_b.f and frame\_b.t is acting at the part to
which this force element is connected.

::

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                              |
+==============================================================================================================+============+==========================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system fixed to the joint with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_   | frame\_b   | Coordinate system fixed to the joint with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialForce 
      "Base model for force elements (provide frame_b.f and frame_b.t in subclasses)"

      import SI = Modelica.SIunits;
      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the joint with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the joint with one cut-force and cut-torque";

      SI.Position r_rel_b[3] 
        "Position vector from origin of frame_a to origin of frame_b, resolved in frame_b";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of force object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of force object is not connected");

      /* Determine relative position vector
         between frame_a and frame_b
      */
      r_rel_b = Frames.resolve2(frame_b.R, frame_b.r_0 - frame_a.r_0);

      /* Force and torque balance between frame_a and frame_b */
      zeros(3) = frame_a.f + Frames.resolveRelative(frame_b.f, frame_b.R, frame_a.
         R);
      zeros(3) = frame_a.t + Frames.resolveRelative(frame_b.t + cross(r_rel_b,
        frame_b.f), frame_b.R, frame_a.R);
    end PartialForce;

--------------

|image51| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.PartialLineForce
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model for line force elements**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJointD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce

   Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce

Information
~~~~~~~~~~~

::

All **line force** elements should be based on this base model. This
model defines frame\_a and frame\_b, computes the relative distance
**s** and provides the force and torque balance of the cut-forces and
cut-torques at frame\_a and frame\_b, respectively. In sub-models, only
the line force **f**, acting at frame\_b on the line from frame\_a to
frame\_b, as a function of the relative distance **s** and its
derivative **der**(**s**) has to be defined. Example:

::

       model Spring
          parameter Real c "spring constant",
          parameter Real s_unstretched "unstretched spring length";
          extends Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce;
       equation
          f = c*(s-s_unstretched);
       end Spring;

::

Parameters
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| Type                                                                                           | Name                      | Default   | Description                                                                |
+================================================================================================+===========================+===========+============================================================================+
| **Advanced**                                                                                   |
+------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                  | s\_small                  | 1.E-6     | Prevent zero-division if relative distance s=0 [m]                         |
+------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| If enabled, can give wrong results, see MultiBody.UsersGuide.Tutorial.ConnectionOfLineForces   |
+------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| Boolean                                                                                        | fixedRotationAtFrame\_a   | false     | =true, if rotation frame\_a.R is fixed (to directly connect line forces)   |
+------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| Boolean                                                                                        | fixedRotationAtFrame\_b   | false     | =true, if rotation frame\_b.R is fixed (to directly connect line forces)   |
+------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                                      |
+==============================================================================================================+============+==================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system fixed to the force element with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_   | frame\_b   | Coordinate system fixed to the force element with one cut-force and cut-torque   |
+--------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialLineForce "Base model for line force elements"
      import SI = Modelica.SIunits;
      parameter SI.Position s_small=1.E-6 
        " Prevent zero-division if relative distance s=0";
      parameter Boolean fixedRotationAtFrame_a=false 
        "=true, if rotation frame_a.R is fixed (to directly connect line forces)";
      parameter Boolean fixedRotationAtFrame_b=false 
        "=true, if rotation frame_b.R is fixed (to directly connect line forces)";

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the force element with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the force element with one cut-force and cut-torque";
      SI.Force f 
        "Line force acting on frame_a and on frame_b (positive, if acting on frame_b and directed from frame_a to frame_b)";
      SI.Position s 
        "(Guarded) distance between the origin of frame_a and the origin of frame_b (>= s_small))";
      Real e_a[3](each final unit="1") 
        "Unit vector on the line connecting the origin of frame_a with the origin of frame_b resolved in frame_a (directed from frame_a to frame_b)";
      Modelica.SIunits.Position r_rel_a[3] 
        "Position vector from origin of frame_a to origin of frame_b, resolved in frame_a";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of line force object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of line force object is not connected");

      // Determine distance s and n_a
      r_rel_a = Frames.resolve2(frame_a.R, frame_b.r_0 - frame_a.r_0);
      s = noEvent(max(Modelica.Math.Vectors.length(
                                    r_rel_a), s_small));
      e_a = r_rel_a/s;

      /* Determine forces and torques at frame_a and frame_b */
      frame_a.f = -e_a*f;
      frame_b.f = -Frames.resolve2(Frames.relativeRotation(frame_a.R, frame_b.R),
         frame_a.f);

      // Additional equations, if direct connections of line forces
      if fixedRotationAtFrame_a then
        Connections.root(frame_a.R);
        frame_a.R = Frames.nullRotation();
      else
        frame_a.t = zeros(3);
      end if;

      if fixedRotationAtFrame_b then
        Connections.root(frame_b.R);
        frame_b.R = Frames.nullRotation();
      else
        frame_b.t = zeros(3);
      end if;

    end PartialLineForce;

--------------

|image52| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.PartialAbsoluteSensor
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model to measure an absolute frame variable**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.PartialAbsoluteSensorD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.PartialAbsoluteSensor

   Modelica.Mechanics.MultiBody.Interfaces.PartialAbsoluteSensor

Information
~~~~~~~~~~~

::

This is the base class of a 3-dim. mechanics component with one frame
and one output port in order to measure an absolute quantity in the
frame connector and to provide the measured signal as output for further
processing with the blocks of package Modelica.Blocks.

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+-----------+----------+-----------+----------------------------+
| Type      | Name     | Default   | Description                |
+===========+==========+===========+============================+
| Integer   | n\_out   | 1         | Number of output signals   |
+-----------+----------+-----------+----------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------------------------------+
| Type                                                                                                         | Name        | Description                                                                       |
+==============================================================================================================+=============+===================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a    | Coordinate system from which absolute quantities are provided as output signals   |
+--------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                 | y[n\_out]   | Measured data as signal vector                                                    |
+--------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialAbsoluteSensor 
      "Base model to measure an absolute frame variable"
      extends Modelica.Icons.RotationalSensor;
      parameter Integer n_out = 1 "Number of output signals";
      Interfaces.Frame_a frame_a 
        "Coordinate system from which absolute quantities are provided as output signals";

      Modelica.Blocks.Interfaces.RealOutput y[n_out] 
        "Measured data as signal vector";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;

    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of absolute sensor object is not connected");
    end PartialAbsoluteSensor;

--------------

|image53| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.PartialRelativeSensor
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model to measure a relative variable between two frames**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.PartialRelativeSensorD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.PartialRelativeSensor

   Modelica.Mechanics.MultiBody.Interfaces.PartialRelativeSensor

Information
~~~~~~~~~~~

::

This is a base class for 3-dim. mechanical components with two frames
and one output port in order to measure relative quantities between the
two frames or the cut-forces/torques in the frame and to provide the
measured signals as output for further processing with the blocks of
package Modelica.Blocks.

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+-----------+----------+-----------+----------------------------+
| Type      | Name     | Default   | Description                |
+===========+==========+===========+============================+
| Integer   | n\_out   | 1         | Number of output signals   |
+-----------+----------+-----------+----------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+-------------+----------------------------------+
| Type                                                                                                         | Name        | Description                      |
+==============================================================================================================+=============+==================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a    | Coordinate system a              |
+--------------------------------------------------------------------------------------------------------------+-------------+----------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_   | frame\_b    | Coordinate system b              |
+--------------------------------------------------------------------------------------------------------------+-------------+----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                 | y[n\_out]   | Measured data as signal vector   |
+--------------------------------------------------------------------------------------------------------------+-------------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialRelativeSensor 
      "Base model to measure a relative variable between two frames"
      extends Modelica.Icons.RotationalSensor;
      parameter Integer n_out = 1 "Number of output signals";
      Interfaces.Frame_a frame_a "Coordinate system a";
      Interfaces.Frame_b frame_b "Coordinate system b";

      Modelica.Blocks.Interfaces.RealOutput y[n_out] 
        "Measured data as signal vector";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;

    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of relative sensor object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of relative sensor object is not connected");

    end PartialRelativeSensor;

--------------

|image54| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.PartialVisualizer
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model for visualizers (has a frame\_a on the left side + outer
world + assert to guarantee that the component is connected)**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizerD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer

   Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer

Information
~~~~~~~~~~~

::

This partial model provides one frame\_a connector, access to the world
object and an assert to check that the frame\_a connector is connected.
It is used by inheritance from all visualizer objects.

::

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+-------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                 |
+==============================================================================================================+============+=============================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system in which visualization data is resolved   |
+--------------------------------------------------------------------------------------------------------------+------------+-------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialVisualizer 
      "Base model for visualizers (has a frame_a on the left side + outer world + assert to guarantee that the component is connected)"

      Interfaces.Frame_a frame_a 
        "Coordinate system in which visualization data is resolved";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of visualizer object is not connected");
    end PartialVisualizer;

--------------

|image55| `Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.ZeroPosition
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Set absolute position vector of frame\_resolve to a zero vector and
the orientation object to a null rotation**

.. figure:: Modelica.Mechanics.MultiBody.Interfaces.ZeroPositionD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Interfaces.ZeroPosition

   Modelica.Mechanics.MultiBody.Interfaces.ZeroPosition

Information
~~~~~~~~~~~

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| Type                                                                                                                     | Name             | Description   |
+==========================================================================================================================+==================+===============+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   |               |
+--------------------------------------------------------------------------------------------------------------------------+------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ZeroPosition 
      "Set absolute position vector of frame_resolve to a zero vector and the orientation object to a null rotation"
       extends Modelica.Blocks.Interfaces.BlockIcon;
      Interfaces.Frame_resolve frame_resolve;
    equation 
      Connections.root(frame_resolve.R);
      frame_resolve.R = Modelica.Mechanics.MultiBody.Frames.nullRotation();
      frame_resolve.r_0 = zeros(3);
    end ZeroPosition;

--------------

`Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.partialGravityAcceleration
------------------------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

::

This partial function defines the interface to the gravity function used
in the World object. All gravity field functions must inherit from this
function. The input to the function is the absolute position vector of a
point in the gravity field, whereas the output is the gravity
acceleration at this point, resolved in the world frame.

::

Inputs
~~~~~~

+-----------------------------------------------------------------+--------+-----------+---------------------------------------------------------------------------------+
| Type                                                            | Name   | Default   | Description                                                                     |
+=================================================================+========+===========+=================================================================================+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_   | r[3]   |           | Position vector from world frame to actual point, resolved in world frame [m]   |
+-----------------------------------------------------------------+--------+-----------+---------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+--------------+----------------------------------------------------------------------+
| Type                                                                    | Name         | Description                                                          |
+=========================================================================+==============+======================================================================+
| `Acceleration <Modelica_SIunits.html#Modelica.SIunits.Acceleration>`_   | gravity[3]   | Gravity acceleration at position r, resolved in world frame [m/s2]   |
+-------------------------------------------------------------------------+--------------+----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial function partialGravityAcceleration
       input Modelica.SIunits.Position r[3] 
        "Position vector from world frame to actual point, resolved in world frame";
       output Modelica.SIunits.Acceleration gravity[3] 
        "Gravity acceleration at position r, resolved in world frame";
    end partialGravityAcceleration;

--------------

`Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.partialSurfaceCharacteristic
--------------------------------------------------------------------------------------------------------------------------------------------------------------

Inputs
~~~~~~

+-----------+-----------------------+-----------+---------------------------------------------------+
| Type      | Name                  | Default   | Description                                       |
+===========+=======================+===========+===================================================+
| Integer   | nu                    |           | Number of points in u-Dimension                   |
+-----------+-----------------------+-----------+---------------------------------------------------+
| Integer   | nv                    |           | Number of points in v-Dimension                   |
+-----------+-----------------------+-----------+---------------------------------------------------+
| Boolean   | multiColoredSurface   | false     | = true: Color is defined for each surface point   |
+-----------+-----------------------+-----------+---------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| Type                                                            | Name                                                                                 | Description                                                                |
+=================================================================+======================================================================================+============================================================================+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_   | X[nu, nv]                                                                            | [nu,nv] positions of points in x-Direction resolved in surface frame [m]   |
+-----------------------------------------------------------------+--------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_   | Y[nu, nv]                                                                            | [nu,nv] positions of points in y-Direction resolved in surface frame [m]   |
+-----------------------------------------------------------------+--------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_   | Z[nu, nv]                                                                            | [nu,nv] positions of points in z-Direction resolved in surface frame [m]   |
+-----------------------------------------------------------------+--------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| Real                                                            | C[if multiColoredSurface then nu else 0, if multiColoredSurface then nv else 0, 3]   | [nu,nv,3] Color array, defining the color for each surface point           |
+-----------------------------------------------------------------+--------------------------------------------------------------------------------------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial function partialSurfaceCharacteristic
       input Integer nu "Number of points in u-Dimension";
       input Integer nv "Number of points in v-Dimension";
       input Boolean multiColoredSurface=false 
        "= true: Color is defined for each surface point";
       output Modelica.SIunits.Position X[nu,nv] 
        "[nu,nv] positions of points in x-Direction resolved in surface frame";
       output Modelica.SIunits.Position Y[nu,nv] 
        "[nu,nv] positions of points in y-Direction resolved in surface frame";
       output Modelica.SIunits.Position Z[nu,nv] 
        "[nu,nv] positions of points in z-Direction resolved in surface frame";
       output Real C[if multiColoredSurface then nu else 0,
                     if multiColoredSurface then nv else 0,3] 
        "[nu,nv,3] Color array, defining the color for each surface point";
    end partialSurfaceCharacteristic;

--------------

`Modelica.Mechanics.MultiBody.Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_.partialColorMap
-------------------------------------------------------------------------------------------------------------------------------------------------

**Interface for a function returning a color map**

Information
~~~~~~~~~~~

::

This partial function defines the interface of a function that returns a
color map. Predefined color map functions are defined in package
`Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps <Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps>`_.

::

Inputs
~~~~~~

+-----------+-------------+-----------+-------------------------------------+
| Type      | Name        | Default   | Description                         |
+===========+=============+===========+=====================================+
| Integer   | n\_colors   | 64        | Number of colors in the color map   |
+-----------+-------------+-----------+-------------------------------------+

Outputs
~~~~~~~

+--------+--------------------------+----------------------------------------+
| Type   | Name                     | Description                            |
+========+==========================+========================================+
| Real   | colorMap[n\_colors, 3]   | Color map to map a scalar to a color   |
+--------+--------------------------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial function partialColorMap 
      "Interface for a function returning a color map"
      input Integer n_colors=64 "Number of colors in the color map";
      output Real colorMap[n_colors,3] "Color map to map a scalar to a color";
    end partialColorMap;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:28
2010.

.. |Modelica.Mechanics.MultiBody.Interfaces.Frame| image:: Modelica.Mechanics.MultiBody.Interfaces.FrameS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.Frame\_a| image:: Modelica.Mechanics.MultiBody.Interfaces.Frame_aS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.Frame\_b| image:: Modelica.Mechanics.MultiBody.Interfaces.Frame_bS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.Frame\_resolve| image:: Modelica.Mechanics.MultiBody.Interfaces.Frame_resolveS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing| image:: Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptor| image:: Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptorS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesDoubleSize| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesDoubleSizeS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame\_a| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_aS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame\_b| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_bS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJoint| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJointS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.PartialForce| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialForceS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialLineForceS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.PartialAbsoluteSensor| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialAbsoluteSensorS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.PartialRelativeSensor| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialRelativeSensorS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizerS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.ZeroPosition| image:: Modelica.Mechanics.MultiBody.Interfaces.ZeroPositionS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration| image:: Modelica.Mechanics.MultiBody.Interfaces.partialGravityAccelerationS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic| image:: Modelica.Mechanics.MultiBody.Interfaces.partialGravityAccelerationS.png
.. |Modelica.Mechanics.MultiBody.Interfaces.partialColorMap| image:: Modelica.Mechanics.MultiBody.Interfaces.partialGravityAccelerationS.png
.. |image20| image:: Modelica.Mechanics.MultiBody.Interfaces.FrameS.png
.. |image21| image:: Modelica.Mechanics.MultiBody.Interfaces.Frame_aS.png
.. |image22| image:: Modelica.Mechanics.MultiBody.Interfaces.Frame_bS.png
.. |image23| image:: Modelica.Mechanics.MultiBody.Interfaces.Frame_resolveS.png
.. |image24| image:: Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingS.png
.. |image25| image:: Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptorS.png
.. |image26| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesS.png
.. |image27| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesDoubleSizeS.png
.. |image28| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_aS.png
.. |image29| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_bS.png
.. |image30| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJointS.png
.. |image31| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialForceS.png
.. |image32| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialLineForceS.png
.. |image33| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialAbsoluteSensorS.png
.. |image34| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialRelativeSensorS.png
.. |image35| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizerS.png
.. |image36| image:: Modelica.Mechanics.MultiBody.Interfaces.ZeroPositionS.png
.. |image37| image:: Modelica.Mechanics.MultiBody.Interfaces.partialGravityAccelerationS.png
.. |image38| image:: Modelica.Mechanics.MultiBody.Interfaces.partialGravityAccelerationS.png
.. |image39| image:: Modelica.Mechanics.MultiBody.Interfaces.partialGravityAccelerationS.png
.. |image40| image:: Modelica.Mechanics.MultiBody.Interfaces.Frame_aI.png
.. |image41| image:: Modelica.Mechanics.MultiBody.Interfaces.Frame_bI.png
.. |image42| image:: Modelica.Mechanics.MultiBody.Interfaces.Frame_resolveI.png
.. |image43| image:: Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingI.png
.. |image44| image:: Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptorI.png
.. |image45| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesI.png
.. |image46| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesDoubleSizeI.png
.. |image47| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_aI.png
.. |image48| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_bI.png
.. |image49| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJointI.png
.. |image50| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialForceI.png
.. |image51| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialLineForceI.png
.. |image52| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialAbsoluteSensorI.png
.. |image53| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialRelativeSensorI.png
.. |image54| image:: Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizerI.png
.. |image55| image:: Modelica.Mechanics.MultiBody.Interfaces.ZeroPositionI.png
