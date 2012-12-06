===================================
Modelica.Mechanics.MultiBody.Forces
===================================

`Modelica.Mechanics.MultiBody <Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody>`_.Forces
-------------------------------------------------------------------------------------------------------

**Components that exert forces and/or torques between frames**

Information
~~~~~~~~~~~

::

This package contains components that exert forces and torques between
two frame connectors, e.g., between two parts.

Content
^^^^^^^

+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ***Model***                                                                                                                       | ***Description***                                                                                                                                                                                                                           |
+===================================================================================================================================+=============================================================================================================================================================================================================================================+
| `WorldForce <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.WorldForce>`_                           | External force acting at the frame to which this component is connected and defined by 3 input signals, that are interpreted as one vector resolved in frame world, frame\_b or frame\_resolve.                                             |
|                                                                                                                                   |  |image12|                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `WorldTorque <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.WorldTorque>`_                         | External torque acting at the frame to which this component is connected and defined by 3 input signals, that are interpreted as one vector resolved in frame world, frame\_b or frame\_resolve.                                            |
|                                                                                                                                   |  |image13|                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `WorldForceAndTorque <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque>`_         | External force and external torque acting at the frame to which this component is connected and defined by 3+3 input signals, that are interpreted as a force and as a torque vector resolved in frame world, frame\_b or frame\_resolve.   |
|                                                                                                                                   |  |image14|                                                                                                                                                                                                                                  |
|                                                                                                                                   |  |image15|                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Force <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.Force>`_                                     | Force acting between two frames defined by 3 input signals resolved in frame world, frame\_a, frame\_b or in frame\_resolve.                                                                                                                |
|                                                                                                                                   |  |image16|                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Torque <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.Torque>`_                                   | Torque acting between two frames defined by 3 input signals resolved in frame world, frame\_a, frame\_b or in frame\_resolve.                                                                                                               |
|                                                                                                                                   |  |image17|                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `ForceAndTorque <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.ForceAndTorque>`_                   | Force and torque acting between two frames defined by 3+3 input signals resolved in frame world, frame\_a, frame\_b or in frame\_resolve.                                                                                                   |
|                                                                                                                                   |  |image18|                                                                                                                                                                                                                                  |
|                                                                                                                                   |  |image19|                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `LineForceWithMass <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.LineForceWithMass>`_             | General line force component with an optional point mass on the connection line. The force law can be defined by a component of Modelica.Mechanics.Translational                                                                            |
|                                                                                                                                   |  |image20|                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `LineForceWithTwoMasses <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.LineForceWithTwoMasses>`_   | General line force component with two optional point masses on the connection line. The force law can be defined by a component of Modelica.Mechanics.Translational                                                                         |
|                                                                                                                                   |  |image21|                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Spring <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.Spring>`_                                   | Linear translational spring with optional mass                                                                                                                                                                                              |
|                                                                                                                                   |  |image22|                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Damper <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.Damper>`_                                   | Linear (velocity dependent) damper                                                                                                                                                                                                          |
|                                                                                                                                   |  |image23|                                                                                                                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `SpringDamperParallel <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel>`_       | Linear spring and damper in parallel connection                                                                                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `SpringDamperSeries <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.SpringDamperSeries>`_           | Linear spring and damper in series connection                                                                                                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                           | Description                                                                                                                                  |
+================================================================================================================================================================================================+==============================================================================================================================================+
| |image37| `WorldForce <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.WorldForce>`_                                                                              | External force acting at frame\_b, defined by 3 input signals and resolved in frame world, frame\_b or frame\_resolve                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image38| `WorldTorque <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.WorldTorque>`_                                                                            | External torque acting at frame\_b, defined by 3 input signals and resolved in frame world, frame\_b or frame\_resolve                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image39| `WorldForceAndTorque <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque>`_                                                            | External force and torque acting at frame\_b, defined by 3+3 input signals and resolved in frame world, frame\_b or in frame\_resolve        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image40| `Force <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.Force>`_                                                                                        | Force acting between two frames, defined by 3 input signals and resolved in frame world, frame\_a, frame\_b or frame\_resolve                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image41| `Torque <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.Torque>`_                                                                                      | Torque acting between two frames, defined by 3 input signals and resolved in frame world, frame\_a, frame\_b or frame\_resolve               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image42| `ForceAndTorque <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.ForceAndTorque>`_                                                                      | Force and torque acting between two frames, defined by 3+3 input signals and resolved in frame world, frame\_a, frame\_b or frame\_resolve   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image43| `LineForceWithMass <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.LineForceWithMass>`_                                                                | General line force component with an optional point mass on the connection line                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image44| `LineForceWithTwoMasses <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.LineForceWithTwoMasses>`_                                                      | General line force component with two optional point masses on the connection line                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image45| `Spring <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.Spring>`_                                                                                      | Linear translational spring with optional mass                                                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image46| `Damper <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.Damper>`_                                                                                      | Linear (velocity dependent) damper                                                                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image47| `SpringDamperParallel <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel>`_                                                          | Linear spring and linear damper in parallel                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image48| `SpringDamperSeries <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces.SpringDamperSeries>`_                                                              | Linear spring and linear damper in series connection                                                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image49| `Internal <Modelica_Mechanics_MultiBody_Forces_Internal.html#Modelica.Mechanics.MultiBody.Forces.Internal>`_                                                                         | Internal package, should not be used by user                                                                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+

--------------

|image50| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.WorldForce
------------------------------------------------------------------------------------------------------------------------------------------

**External force acting at frame\_b, defined by 3 input signals and
resolved in frame world, frame\_b or frame\_resolve**

.. figure:: Modelica.Mechanics.MultiBody.Forces.WorldForceD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.WorldForce

   Modelica.Mechanics.MultiBody.Forces.WorldForce

Information
~~~~~~~~~~~

::

The **3** signals of the **force** connector are interpreted as the x-,
y- and z-coordinates of a **force** acting at the frame connector to
which frame\_b of this component is attached. Via parameter
**resolveInFrame** it is defined, in which frame these coordinates shall
be resolved:

+------------------------------+----------------------------------------------------------------------------+
| **Types.ResolveInFrameB.**   | **Meaning**                                                                |
+==============================+============================================================================+
| world                        | Resolve input force in world frame (= default)                             |
+------------------------------+----------------------------------------------------------------------------+
| frame\_b                     | Resolve input force in frame\_b                                            |
+------------------------------+----------------------------------------------------------------------------+
| frame\_resolve               | Resolve input force in frame\_resolve (frame\_resolve must be connected)   |
+------------------------------+----------------------------------------------------------------------------+

If resolveInFrame = Types.ResolveInFrameB.frame\_resolve, the force
coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If force={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a force of 100 N is acting along the
positive x-axis of frame\_b.

Note, the cut-torque in frame\_b (frame\_b.t) is always set to zero.
Conceptually, a force and torque acts on the world frame in such a way
that the force and torque balance between world.frame\_b and frame\_b is
fulfilled. For efficiency reasons, this reaction torque is, however, not
computed.

This force component is by default visualized as an arrow acting at the
connector to which it is connected. The diameter and color of the arrow
can be defined via variables **diameter** and **color**. The arrow
points in the direction defined by the force signal. The length of the
arrow is proportional to the length of the force vector using parameter
**N\_to\_m** as scaling factor. For example, if N\_to\_m = 100 N/m, then
a force of 350 N is displayed as an arrow of length 3.5 m.

An example how to use this model is given in the following figure:

.. figure:: ../Resources/Images/MultiBody/Forces/WorldForce1.png
   :align: center
   :alt: 

This leads to the following animation

.. figure:: ../Resources/Images/MultiBody/Forces/WorldForce2.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.PartialOneFrame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_b>`_
(Base model for components providing one frame\_b connector + outer
world + assert to guarantee that the component is connected).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                         |
+===========================================================================================================================+=======================+===================================+=====================================================================================+
| Boolean                                                                                                                   | animation             | true                              | = true, if animation shall be enabled                                               |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `ResolveInFrameB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameB>`_           | resolveInFrame        | Modelica.Mechanics.MultiBody...   | Frame in which input force is resolved (1: world, 2: frame\_b, 3: frame\_resolve)   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| Real                                                                                                                      | N\_to\_m              | world.defaultN\_to\_m             | Force arrow scaling (length = force/N\_to\_m) [N/m]                                 |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | diameter              | world.defaultArrowDiameter        | Diameter of force arrow [m]                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                 | Modelica.Mechanics.MultiBody...   | Color of arrow                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                      |
+==========================================================================================================================+==================+==================================================================================+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system fixed to the component with one cut-force and cut-torque       |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | The input signals are optionally resolved in this frame                          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                | force[3]         | x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame [N]   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model WorldForce 
      "External force acting at frame_b, defined by 3 input signals and resolved in frame world, frame_b or frame_resolve"

      import SI = Modelica.SIunits;
      extends Interfaces.PartialOneFrame_b;
      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve 
        "The input signals are optionally resolved in this frame";
      Modelica.Blocks.Interfaces.RealInput force[3](each final quantity="Force", each final unit=
                       "N") 
        "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame";
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameB resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world 
        "Frame in which input force is resolved (1: world, 2: frame_b, 3: frame_resolve)";
      parameter Real N_to_m(unit="N/m") = world.defaultN_to_m 
        "Force arrow scaling (length = force/N_to_m)";
      input SI.Diameter diameter=world.defaultArrowDiameter 
        "Diameter of force arrow";
      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.ForceColor 
        "Color of arrow";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position f_in_m[3]=frame_b.f/N_to_m 
        "Force mapped from N to m for animation";
      Visualizers.Advanced.Arrow arrow(
        diameter=diameter,
        color=color,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=f_in_m,
        r_head=-f_in_m) if world.enableAnimation and animation;

    public 
      Internal.BasicWorldForce basicWorldForce(resolveInFrame=resolveInFrame);
    protected 
      Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve);
    equation 
      connect(basicWorldForce.frame_b, frame_b);
      connect(basicWorldForce.force, force);
      connect(basicWorldForce.frame_resolve, frame_resolve);
      connect(zeroPosition.frame_resolve, basicWorldForce.frame_resolve);
    end WorldForce;

--------------

|image51| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.WorldTorque
-------------------------------------------------------------------------------------------------------------------------------------------

**External torque acting at frame\_b, defined by 3 input signals and
resolved in frame world, frame\_b or frame\_resolve**

.. figure:: Modelica.Mechanics.MultiBody.Forces.WorldTorqueD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.WorldTorque

   Modelica.Mechanics.MultiBody.Forces.WorldTorque

Information
~~~~~~~~~~~

::

The **3** signals of the **torque** connector are interpreted as the x-,
y- and z-coordinates of a **torque** acting at the frame connector to
which frame\_b of this component is attached. Via parameter
**resolveInFrame** it is defined, in which frame these coordinates shall
be resolved:

+------------------------------+-----------------------------------------------------------------------------+
| **Types.ResolveInFrameB.**   | **Meaning**                                                                 |
+==============================+=============================================================================+
| world                        | Resolve input torque in world frame (= default)                             |
+------------------------------+-----------------------------------------------------------------------------+
| frame\_b                     | Resolve input torque in frame\_b                                            |
+------------------------------+-----------------------------------------------------------------------------+
| frame\_resolve               | Resolve input torque in frame\_resolve (frame\_resolve must be connected)   |
+------------------------------+-----------------------------------------------------------------------------+

If resolveInFrame = Types.ResolveInFrameB.frame\_resolve, the torque
coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If torque={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a torque of 100 N is acting along the
positive x-axis of frame\_b.

Note, the cut-force in frame\_b (frame\_b.f) is always set to zero.
Conceptually, a force and torque acts on the world frame in such a way
that the force and torque balance between world.frame\_b and frame\_b is
fulfilled. For efficiency reasons, this reaction torque is, however, not
computed.

This torque component is by default visualized as a **double arrow**
acting at the connector to which it is connected. The diameter and color
of the arrow can be defined via variables **diameter** and **color**.
The double arrow points in the direction defined by the torque vector.
The length of the double arrow is proportional to the length of the
torque vector using parameter **Nm\_to\_m** as scaling factor. For
example, if Nm\_to\_m = 100 Nm/m, then a torque of 350 Nm is displayed
as an arrow of length 3.5 m.

An example how to use this model is given in the following figure:

.. figure:: ../Resources/Images/MultiBody/Forces/WorldTorque1.png
   :align: center
   :alt: 

This leads to the following animation

.. figure:: ../Resources/Images/MultiBody/Forces/WorldTorque2.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.PartialOneFrame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_b>`_
(Base model for components providing one frame\_b connector + outer
world + assert to guarantee that the component is connected).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                          |
+===========================================================================================================================+=======================+===================================+======================================================================================+
| Boolean                                                                                                                   | animation             | true                              | = true, if animation shall be enabled                                                |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------+
| `ResolveInFrameB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameB>`_           | resolveInFrame        | Modelica.Mechanics.MultiBody...   | Frame in which input torque is resolved (1: world, 2: frame\_b, 3: frame\_resolve)   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                                                      | Nm\_to\_m             | world.defaultNm\_to\_m            | Torque arrow scaling (length = torque/Nm\_to\_m) [N.m/m]                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | diameter              | world.defaultArrowDiameter        | Diameter of torque arrow [m]                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                 | Modelica.Mechanics.MultiBody...   | Color of arrow                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                         |
+==========================================================================================================================+==================+=====================================================================================+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system fixed to the component with one cut-force and cut-torque          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | The input signals are optionally resolved in this frame                             |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                | torque[3]        | x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame [N.m]   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model WorldTorque 
      "External torque acting at frame_b, defined by 3 input signals and resolved in frame world, frame_b or frame_resolve"

      extends Interfaces.PartialOneFrame_b;

      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve 
        "The input signals are optionally resolved in this frame";
      Modelica.Blocks.Interfaces.RealInput torque[3](each final quantity="Torque", each final unit=
                       "N.m") 
        "x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame";
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameB resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world 
        "Frame in which input torque is resolved (1: world, 2: frame_b, 3: frame_resolve)";
      parameter Real Nm_to_m(unit="N.m/m") = world.defaultNm_to_m 
        "Torque arrow scaling (length = torque/Nm_to_m)";
      input SI.Diameter diameter=world.defaultArrowDiameter 
        "Diameter of torque arrow";
      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.TorqueColor 
        "Color of arrow";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position t_in_m[3]=frame_b.t/Nm_to_m 
        "Torque mapped from Nm to m for animation";
      Visualizers.Advanced.DoubleArrow arrow(
        diameter=diameter,
        color=color,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=t_in_m,
        r_head=-t_in_m) if world.enableAnimation and animation;
    public 
      Internal.BasicWorldTorque basicWorldTorque(resolveInFrame=resolveInFrame);
    protected 
      Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve);
    equation 
      connect(basicWorldTorque.frame_b, frame_b);
      connect(basicWorldTorque.torque, torque);
      connect(frame_resolve, basicWorldTorque.frame_resolve);
      connect(zeroPosition.frame_resolve, basicWorldTorque.frame_resolve);
    end WorldTorque;

--------------

|image52| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.WorldForceAndTorque
---------------------------------------------------------------------------------------------------------------------------------------------------

**External force and torque acting at frame\_b, defined by 3+3 input
signals and resolved in frame world, frame\_b or in frame\_resolve**

.. figure:: Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorqueD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque

   Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque

Information
~~~~~~~~~~~

::

The **3** signals of the **force** and **torque** connector are
interpreted as the x-, y- and z-coordinates of a **force** and
**torque** acting at the frame connector to which frame\_b of this
component is attached. Via parameter **resolveInFrame** it is defined,
in which frame these coordinates shall be resolved:

+------------------------------+---------------------------------------------------------------------------------------+
| **Types.ResolveInFrameB.**   | **Meaning**                                                                           |
+==============================+=======================================================================================+
| world                        | Resolve input forceand torque in world frame (= default)                              |
+------------------------------+---------------------------------------------------------------------------------------+
| frame\_b                     | Resolve input force and torque in frame\_b                                            |
+------------------------------+---------------------------------------------------------------------------------------+
| frame\_resolve               | Resolve input force and torque in frame\_resolve (frame\_resolve must be connected)   |
+------------------------------+---------------------------------------------------------------------------------------+

If resolveInFrame = Types.ResolveInFrameB.frame\_resolve, the force and
torque coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If force={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a force of 100 N is acting along the
positive x-axis of frame\_b.

Conceptually, a force and torque acts on the world frame in such a way
that the force and torque balance between world.frame\_b and frame\_b is
fulfilled. For efficiency reasons, this reaction torque is, however, not
computed.

The force and torque are by default visualized as an arrow (force) and
as a double arrow (torque) acting at the connector to which they are
connected. The diameters and colors of the arrows can be defined via
variables **forceDiameter**, **torqueDiameter**, **forceColor** and
**torqueColor**. The arrows point in the directions defined by the force
and torque vectors. The lengths of the arrows are proportional to the
length of the force and torque vectors, respectively, using parameters
**N\_to\_m** and **Nm\_to\_m** as scaling factors. For example, if
N\_to\_m = 100 N/m, then a force of 350 N is displayed as an arrow of
length 3.5 m.

An example how to use this model is given in the following figure:

.. figure:: ../Resources/Images/MultiBody/Forces/WorldForceAndTorque1.png
   :align: center
   :alt: 

This leads to the following animation

.. figure:: ../Resources/Images/MultiBody/Forces/WorldForceAndTorque2.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.PartialOneFrame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_b>`_
(Base model for components providing one frame\_b connector + outer
world + assert to guarantee that the component is connected).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                                     |
+===========================================================================================================================+=======================+===================================+=================================================================================================+
| Boolean                                                                                                                   | animation             | true                              | = true, if animation shall be enabled                                                           |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `ResolveInFrameB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameB>`_           | resolveInFrame        | Modelica.Mechanics.MultiBody...   | Frame in which input force and torque are resolved (1: world, 2: frame\_b, 3: frame\_resolve)   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | N\_to\_m              | world.defaultN\_to\_m             | Force arrow scaling (length = force/N\_to\_m) [N/m]                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | Nm\_to\_m             | world.defaultNm\_to\_m            | Torque arrow scaling (length = torque/Nm\_to\_m) [N.m/m]                                        |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | forceDiameter         | world.defaultArrowDiameter        | Diameter of force arrow [m]                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | torqueDiameter        | forceDiameter                     | Diameter of torque arrow [m]                                                                    |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | forceColor            | Modelica.Mechanics.MultiBody...   | Color of force arrow                                                                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | torqueColor           | Modelica.Mechanics.MultiBody...   | Color of torque arrow                                                                           |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                 |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                         |
+==========================================================================================================================+==================+=====================================================================================+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system fixed to the component with one cut-force and cut-torque          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | The input signals are optionally resolved in this frame                             |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                | force[3]         | x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame [N]      |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                | torque[3]        | x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame [N.m]   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model WorldForceAndTorque 
      "External force and torque acting at frame_b, defined by 3+3 input signals and resolved in frame world, frame_b or in frame_resolve"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      extends Interfaces.PartialOneFrame_b;
      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve 
        "The input signals are optionally resolved in this frame";
      Blocks.Interfaces.RealInput force[3](each final quantity="Force", each final unit=
                       "N") 
        "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame";
      Blocks.Interfaces.RealInput torque[3](each final quantity="Torque", each final unit=
                       "N.m") 
        "x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame";

      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameB resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world 
        "Frame in which input force and torque are resolved (1: world, 2: frame_b, 3: frame_resolve)";

      parameter Real N_to_m(unit="N/m") = world.defaultN_to_m 
        " Force arrow scaling (length = force/N_to_m)";
      parameter Real Nm_to_m(unit="N.m/m") = world.defaultNm_to_m 
        " Torque arrow scaling (length = torque/Nm_to_m)";
      input SI.Diameter forceDiameter=world.defaultArrowDiameter 
        " Diameter of force arrow";
      input SI.Diameter torqueDiameter=forceDiameter " Diameter of torque arrow";
      input Types.Color forceColor=Modelica.Mechanics.MultiBody.Types.Defaults.ForceColor 
        " Color of force arrow";
      input Types.Color torqueColor=Modelica.Mechanics.MultiBody.Types.Defaults.TorqueColor 
        " Color of torque arrow";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position f_in_m[3]=frame_b.f/N_to_m 
        "Force mapped from N to m for animation";
      SI.Position t_in_m[3]=frame_b.t/Nm_to_m 
        "Torque mapped from Nm to m for animation";
      Visualizers.Advanced.Arrow forceArrow(
        diameter=forceDiameter,
        color=forceColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=f_in_m,
        r_head=-f_in_m) if world.enableAnimation and animation;
      Visualizers.Advanced.DoubleArrow torqueArrow(
        diameter=torqueDiameter,
        color=torqueColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=t_in_m,
        r_head=-t_in_m) if world.enableAnimation and animation;
    public 
      Internal.BasicWorldForce basicWorldForce(resolveInFrame=resolveInFrame);
      Internal.BasicWorldTorque basicWorldTorque(resolveInFrame=resolveInFrame);
    protected 
      Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve);
    equation 
      connect(basicWorldForce.frame_b, frame_b);
      connect(basicWorldForce.force, force);
      connect(basicWorldTorque.frame_b, frame_b);
      connect(basicWorldTorque.torque, torque);
      connect(basicWorldForce.frame_resolve, frame_resolve);
      connect(basicWorldTorque.frame_resolve, frame_resolve);
      connect(zeroPosition.frame_resolve, basicWorldTorque.frame_resolve);
      connect(zeroPosition.frame_resolve, basicWorldForce.frame_resolve);
    end WorldForceAndTorque;

--------------

|image53| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.Force
-------------------------------------------------------------------------------------------------------------------------------------

**Force acting between two frames, defined by 3 input signals and
resolved in frame world, frame\_a, frame\_b or frame\_resolve**

.. figure:: Modelica.Mechanics.MultiBody.Forces.ForceD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.Force

   Modelica.Mechanics.MultiBody.Forces.Force

Information
~~~~~~~~~~~

::

The **3** signals of the **force** connector are interpreted as the x-,
y- and z-coordinates of a **force** acting at the frame connector to
which frame\_b of this component is attached. Via parameter
**resolveInFrame** it is defined, in which frame these coordinates shall
be resolved:

+-------------------------------+----------------------------------------------------------------------------+
| **Types.ResolveInFrameAB.**   | **Meaning**                                                                |
+===============================+============================================================================+
| world                         | Resolve input force in world frame                                         |
+-------------------------------+----------------------------------------------------------------------------+
| frame\_a                      | Resolve input force in frame\_a                                            |
+-------------------------------+----------------------------------------------------------------------------+
| frame\_b                      | Resolve input force in frame\_b (= default)                                |
+-------------------------------+----------------------------------------------------------------------------+
| frame\_resolve                | Resolve input force in frame\_resolve (frame\_resolve must be connected)   |
+-------------------------------+----------------------------------------------------------------------------+

If resolveInFrame = ResolveInFrameAB.frame\_resolve, the force
coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If force={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a force of 100 N is acting along the
positive x-axis of frame\_b.

Note, the cut-torque in frame\_b (frame\_b.t) is always set to zero.
Additionally, a force and torque acts on frame\_a in such a way that the
force and torque balance between frame\_a and frame\_b is fulfilled.

An example how to use this model is given in the following figure:

.. figure:: ../Resources/Images/MultiBody/Forces/Force1.png
   :align: center
   :alt: 

This leads to the following animation (the yellow cylinder characterizes
the line between frame\_a and frame\_b of the Force component, i.e., the
force acts with negative sign also on the opposite side of this
cylinder, but for clarity this is not shown in the animation):

.. figure:: ../Resources/Images/MultiBody/Forces/Force2.png
   :align: center
   :alt: 

::

Extends from
`Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames>`_
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                     | Default                           | Description                                                                                      |
+===========================================================================================================================+==========================+===================================+==================================================================================================+
| Boolean                                                                                                                   | animation                | true                              | = true, if animation shall be enabled                                                            |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `ResolveInFrameAB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB>`_         | resolveInFrame           | Modelica.Mechanics.MultiBody...   | Frame in which input force is resolved (1: world, 2: frame\_a, 3: frame\_b, 4: frame\_resolve)   |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | N\_to\_m                 | world.defaultN\_to\_m             | Force arrow scaling (length = force/N\_to\_m) [N/m]                                              |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | forceDiameter            | world.defaultArrowDiameter        | Diameter of force arrow [m]                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | connectionLineDiameter   | forceDiameter                     | Diameter of line connecting frame\_a and frame\_b [m]                                            |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | forceColor               | Modelica.Mechanics.MultiBody...   | Color of force arrow                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | connectionLineColor      | Modelica.Mechanics.MultiBody...   | Color of line connecting frame\_a and frame\_b                                                   |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient      | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                  |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                      |
+==========================================================================================================================+==================+==================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system fixed to the component with one cut-force and cut-torque       |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system fixed to the component with one cut-force and cut-torque       |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | The input signals are optionally resolved in this frame                          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                | force[3]         | x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame [N]   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Force 
      "Force acting between two frames, defined by 3 input signals and resolved in frame world, frame_a, frame_b or frame_resolve"

      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;
      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve 
        "The input signals are optionally resolved in this frame";
      Modelica.Blocks.Interfaces.RealInput force[3](each final quantity="Force", each final unit=
                       "N") 
        "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame";
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b 
        "Frame in which input force is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";
      parameter Real N_to_m(unit="N/m") = world.defaultN_to_m 
        " Force arrow scaling (length = force/N_to_m)";
      input SI.Diameter forceDiameter=world.defaultArrowDiameter 
        " Diameter of force arrow";
      input SI.Diameter connectionLineDiameter=forceDiameter 
        " Diameter of line connecting frame_a and frame_b";
      input Types.Color forceColor=Modelica.Mechanics.MultiBody.Types.Defaults.ForceColor 
        " Color of force arrow";
      input Types.Color connectionLineColor=Modelica.Mechanics.MultiBody.Types.Defaults.SensorColor 
        " Color of line connecting frame_a and frame_b";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position f_in_m[3]=frame_b.f/N_to_m 
        "Force mapped from N to m for animation";
      Visualizers.Advanced.Arrow forceArrow(
        diameter=forceDiameter,
        color=forceColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=f_in_m,
        r_head=-f_in_m) if world.enableAnimation and animation;
      Visualizers.Advanced.Shape connectionLine(
        shapeType="cylinder",
        lengthDirection=basicForce.r_0,
        widthDirection={0,1,0},
        length=Modelica.Math.Vectors.length(basicForce.r_0),
        width=connectionLineDiameter,
        height=connectionLineDiameter,
        color=connectionLineColor,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0) if world.enableAnimation and animation;

    public 
      MultiBody.Forces.Internal.BasicForce basicForce(resolveInFrame=resolveInFrame);
    protected 
      MultiBody.Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve);
    equation 
      connect(basicForce.frame_a, frame_a);
      connect(basicForce.frame_b, frame_b);
      connect(force, basicForce.force);
      connect(basicForce.frame_resolve, frame_resolve);
      connect(zeroPosition.frame_resolve, basicForce.frame_resolve);
    end Force;

--------------

|image54| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.Torque
--------------------------------------------------------------------------------------------------------------------------------------

**Torque acting between two frames, defined by 3 input signals and
resolved in frame world, frame\_a, frame\_b or frame\_resolve**

.. figure:: Modelica.Mechanics.MultiBody.Forces.TorqueD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.Torque

   Modelica.Mechanics.MultiBody.Forces.Torque

Information
~~~~~~~~~~~

::

The **3** signals of the **torque** connector are interpreted as the x-,
y- and z-coordinates of a **torque** acting at the frame connector to
which frame\_b of this component is attached. Via parameter
**resolveInFrame** it is defined, in which frame these coordinates shall
be resolved:

+-------------------------------+-----------------------------------------------------------------------------+
| **Types.ResolveInFrameAB.**   | **Meaning**                                                                 |
+===============================+=============================================================================+
| world                         | Resolve input torque in world frame                                         |
+-------------------------------+-----------------------------------------------------------------------------+
| frame\_a                      | Resolve input torque in frame\_a                                            |
+-------------------------------+-----------------------------------------------------------------------------+
| frame\_b                      | Resolve input torque in frame\_b (= default)                                |
+-------------------------------+-----------------------------------------------------------------------------+
| frame\_resolve                | Resolve input torque in frame\_resolve (frame\_resolve must be connected)   |
+-------------------------------+-----------------------------------------------------------------------------+

If resolveInFrame = ResolveInFrameAB.frame\_resolve, the torque
coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If torque={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a torque of 100 N.m is acting along the
positive x-axis of frame\_b.

Note, the cut-forces in frame\_a and frame\_b (frame\_a.f, frame\_b.f)
are always set to zero and the cut-torque at frame\_a (frame\_a.t) is
the same as the cut-torque at frame\_b (frame\_b.t) but with opposite
sign.

An example how to use this model is given in the following figure:

.. figure:: ../Resources/Images/MultiBody/Forces/Torque1.png
   :align: center
   :alt: 

This leads to the following animation (the yellow cylinder characterizes
the line between frame\_a and frame\_b of the Torque component, i.e.,
the torque acts with negative sign also on the opposite side of this
cylinder, but for clarity this is not shown in the animation):

.. figure:: ../Resources/Images/MultiBody/Forces/Torque2.png
   :align: center
   :alt: 

::

Extends from
`Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames>`_
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                     | Default                           | Description                                                                                      |
+===========================================================================================================================+==========================+===================================+==================================================================================================+
| Boolean                                                                                                                   | animation                | true                              | = true, if animation shall be enabled                                                            |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `ResolveInFrameAB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB>`_         | resolveInFrame           | Modelica.Mechanics.MultiBody...   | Frame in which input force is resolved (1: world, 2: frame\_a, 3: frame\_b, 4: frame\_resolve)   |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | Nm\_to\_m                | world.defaultNm\_to\_m            | Torque arrow scaling (length = torque/Nm\_to\_m) [N.m/m]                                         |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | torqueDiameter           | world.defaultArrowDiameter        | Diameter of torque arrow [m]                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | connectionLineDiameter   | torqueDiameter                    | Diameter of line connecting frame\_a and frame\_b [m]                                            |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | torqueColor              | Modelica.Mechanics.MultiBody...   | Color of torque arrow                                                                            |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | connectionLineColor      | Modelica.Mechanics.MultiBody...   | Color of line connecting frame\_a and frame\_b                                                   |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient      | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                  |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                         |
+==========================================================================================================================+==================+=====================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system fixed to the component with one cut-force and cut-torque          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system fixed to the component with one cut-force and cut-torque          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | The input signals are optionally resolved in this frame                             |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                | torque[3]        | x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame [N.m]   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Torque 
      "Torque acting between two frames, defined by 3 input signals and resolved in frame world, frame_a, frame_b or frame_resolve"

      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;
      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve 
        "The input signals are optionally resolved in this frame";

      Modelica.Blocks.Interfaces.RealInput torque[3](each final quantity="Torque", each final unit=
                       "N.m") 
        "x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame";
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b 
        "Frame in which input force is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";
      parameter Real Nm_to_m(unit="N.m/m") = world.defaultNm_to_m 
        " Torque arrow scaling (length = torque/Nm_to_m)";
      input SI.Diameter torqueDiameter=world.defaultArrowDiameter 
        " Diameter of torque arrow";
      input SI.Diameter connectionLineDiameter=torqueDiameter 
        " Diameter of line connecting frame_a and frame_b";
      input Types.Color torqueColor=Modelica.Mechanics.MultiBody.Types.Defaults.TorqueColor 
        " Color of torque arrow";
      input Types.Color connectionLineColor=Modelica.Mechanics.MultiBody.Types.Defaults.SensorColor 
        " Color of line connecting frame_a and frame_b";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position t_in_m[3]=frame_b.t/Nm_to_m 
        "Torque mapped from Nm to m for animation";
      Visualizers.Advanced.DoubleArrow torqueArrow(
        diameter=torqueDiameter,
        color=torqueColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=t_in_m,
        r_head=-t_in_m) if world.enableAnimation and animation;
      Visualizers.Advanced.Shape connectionLine(
        shapeType="cylinder",
        lengthDirection=basicTorque.r_0,
        widthDirection={0,1,0},
        length=Modelica.Math.Vectors.length(
                             basicTorque.r_0),
        width=connectionLineDiameter,
        height=connectionLineDiameter,
        color=connectionLineColor,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0) if world.enableAnimation and animation;

    public 
      Internal.BasicTorque basicTorque(resolveInFrame=resolveInFrame);
    protected 
      Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve);
    equation 
      connect(basicTorque.frame_a, frame_a);
      connect(basicTorque.frame_b, frame_b);
      connect(basicTorque.torque, torque);
      connect(basicTorque.frame_resolve, frame_resolve);
      connect(zeroPosition.frame_resolve, basicTorque.frame_resolve);
    end Torque;

--------------

|image55| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.ForceAndTorque
----------------------------------------------------------------------------------------------------------------------------------------------

**Force and torque acting between two frames, defined by 3+3 input
signals and resolved in frame world, frame\_a, frame\_b or
frame\_resolve**

.. figure:: Modelica.Mechanics.MultiBody.Forces.ForceAndTorqueD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.ForceAndTorque

   Modelica.Mechanics.MultiBody.Forces.ForceAndTorque

Information
~~~~~~~~~~~

::

The **3** signals of the **force** connector and the **3** signals of
the **torque** connector are interpreted as the x-, y- and z-coordinates
of a **force** and of a **torque** acting at the frame connector to
which frame\_b of this component is attached. Via parameter
**resolveInFrame** it is defined, in which frame these coordinates shall
be resolved:

+-------------------------------+-----------------------------------------------------------------------------------+
| **Types.ResolveInFrameAB.**   | **Meaning**                                                                       |
+===============================+===================================================================================+
| world                         | Resolve input force/torque in world frame                                         |
+-------------------------------+-----------------------------------------------------------------------------------+
| frame\_a                      | Resolve input force/torque in frame\_a                                            |
+-------------------------------+-----------------------------------------------------------------------------------+
| frame\_b                      | Resolve input force/torque in frame\_b (= default)                                |
+-------------------------------+-----------------------------------------------------------------------------------+
| frame\_resolve                | Resolve input force/torque in frame\_resolve (frame\_resolve must be connected)   |
+-------------------------------+-----------------------------------------------------------------------------------+

If resolveInFrame = ResolveInFrameAB.frame\_resolve, the force and
torque coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If force={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a force of 100 N is acting along the
positive x-axis of frame\_b.

Note, a force and torque acts on frame\_a in such a way that the force
and torque balance between frame\_a and frame\_b is fulfilled.

An example how to use this model is given in the following figure:

.. figure:: ../Resources/Images/MultiBody/Forces/ForceAndTorque1.png
   :align: center
   :alt: 

This leads to the following animation (the yellow cylinder characterizes
the line between frame\_a and frame\_b of the ForceAndTorque component,
i.e., the force and torque acts with negative sign also on the opposite
side of this cylinder, but for clarity this is not shown in the
animation):

.. figure:: ../Resources/Images/MultiBody/Forces/ForceAndTorque2.png
   :align: center
   :alt: 

::

Extends from
`Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames>`_
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                     | Default                           | Description                                                                                                  |
+===========================================================================================================================+==========================+===================================+==============================================================================================================+
| Boolean                                                                                                                   | animation                | true                              | = true, if animation shall be enabled                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| `ResolveInFrameAB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB>`_         | resolveInFrame           | Modelica.Mechanics.MultiBody...   | Frame in which input force and torque are resolved (1: world, 2: frame\_a, 3: frame\_b, 4: frame\_resolve)   |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | N\_to\_m                 | world.defaultN\_to\_m             | Force arrow scaling (length = force/N\_to\_m) [N/m]                                                          |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | Nm\_to\_m                | world.defaultNm\_to\_m            | Torque arrow scaling (length = torque/Nm\_to\_m) [N.m/m]                                                     |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | forceDiameter            | world.defaultArrowDiameter        | Diameter of force arrow [m]                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | torqueDiameter           | forceDiameter                     | Diameter of torque arrow [m]                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | connectionLineDiameter   | forceDiameter                     | Diameter of line connecting frame\_a and frame\_b [m]                                                        |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | forceColor               | Modelica.Mechanics.MultiBody...   | Color of force arrow                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | torqueColor              | Modelica.Mechanics.MultiBody...   | Color of torque arrow                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | connectionLineColor      | Modelica.Mechanics.MultiBody...   | Color of line connecting frame\_a and frame\_b                                                               |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient      | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                              |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                         |
+==========================================================================================================================+==================+=====================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system fixed to the component with one cut-force and cut-torque          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system fixed to the component with one cut-force and cut-torque          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                | force[3]         | x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame [N]      |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                | torque[3]        | x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame [N.m]   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | The input signals are optionally resolved in this frame                             |
+--------------------------------------------------------------------------------------------------------------------------+------------------+-------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ForceAndTorque 
      "Force and torque acting between two frames, defined by 3+3 input signals and resolved in frame world, frame_a, frame_b or frame_resolve"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;

      Blocks.Interfaces.RealInput force[3](each final quantity="Force", each final unit=
                       "N") 
        "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame";
      Blocks.Interfaces.RealInput torque[3](each final quantity="Torque", each final unit=
                       "N.m") 
        "x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame";
      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve 
        "The input signals are optionally resolved in this frame";

      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b 
        "Frame in which input force and torque are resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";
      parameter Real N_to_m(unit="N/m") = world.defaultN_to_m 
        "Force arrow scaling (length = force/N_to_m)";
      parameter Real Nm_to_m(unit="N.m/m") = world.defaultNm_to_m 
        "Torque arrow scaling (length = torque/Nm_to_m)";
      input SI.Diameter forceDiameter=world.defaultArrowDiameter 
        "Diameter of force arrow";
      input SI.Diameter torqueDiameter=forceDiameter " Diameter of torque arrow";
      input SI.Diameter connectionLineDiameter=forceDiameter 
        "Diameter of line connecting frame_a and frame_b";
      input Types.Color forceColor=Modelica.Mechanics.MultiBody.Types.Defaults.ForceColor 
        "Color of force arrow";
      input Types.Color torqueColor=Modelica.Mechanics.MultiBody.Types.Defaults.TorqueColor 
        "Color of torque arrow";
      input Types.Color connectionLineColor=Modelica.Mechanics.MultiBody.Types.Defaults.SensorColor 
        "Color of line connecting frame_a and frame_b";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position f_in_m[3]=frame_b.f/N_to_m 
        "Force mapped from N to m for animation";
      SI.Position t_in_m[3]=frame_b.t/Nm_to_m 
        "Torque mapped from Nm to m for animation";
      Visualizers.Advanced.Arrow forceArrow(
        diameter=forceDiameter,
        color=forceColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=f_in_m,
        r_head=-f_in_m) if world.enableAnimation and animation;
      Visualizers.Advanced.DoubleArrow torqueArrow(
        diameter=torqueDiameter,
        color=torqueColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=t_in_m,
        r_head=-t_in_m) if world.enableAnimation and animation;
      Visualizers.Advanced.Shape connectionLine(
        shapeType="cylinder",
        lengthDirection=basicForce.r_0,
        widthDirection={0,1,0},
        length=Modelica.Math.Vectors.length(
                             basicForce.r_0),
        width=connectionLineDiameter,
        height=connectionLineDiameter,
        color=connectionLineColor,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0) if world.enableAnimation and animation;

    public 
      Internal.BasicForce basicForce(resolveInFrame=resolveInFrame);
      Internal.BasicTorque basicTorque(resolveInFrame=resolveInFrame);
    protected 
      Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve);
    equation 
      connect(basicForce.frame_a, frame_a);
      connect(basicForce.frame_b, frame_b);
      connect(basicTorque.frame_b, frame_b);
      connect(basicTorque.frame_a, frame_a);
      connect(basicForce.force, force);
      connect(basicTorque.torque, torque);
      connect(basicTorque.frame_resolve, frame_resolve);
      connect(basicForce.frame_resolve, frame_resolve);
      connect(zeroPosition.frame_resolve, basicTorque.frame_resolve);
      connect(zeroPosition.frame_resolve, basicForce.frame_resolve);
    end ForceAndTorque;

--------------

|image56| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.LineForceWithMass
-------------------------------------------------------------------------------------------------------------------------------------------------

**General line force component with an optional point mass on the
connection line**

.. figure:: Modelica.Mechanics.MultiBody.Forces.LineForceWithMassD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.LineForceWithMass

   Modelica.Mechanics.MultiBody.Forces.LineForceWithMass

Information
~~~~~~~~~~~

::

This component is used to exert a **line force** between the origin of
frame\_a and the origin of frame\_b by attaching components of the
**1-dimensional translational** mechanical library of Modelica
(Modelica.Mechanics.Translational) between the two flange connectors
**flange\_a** and **flange\_b**. Optionally, there is a **point mass**
on the line connecting the origin of frame\_a and the origin of
frame\_b. This point mass approximates the **mass** of the **force
element**. The distance of the point mass from frame\_a as a fraction of
the distance between frame\_a and frame\_b is defined via parameter
**lengthFraction** (default is 0.5, i.e., the point mass is in the
middle of the line).

In the translational library there is the implicit assumption that
forces of components that have only one flange connector act with
opposite sign on the bearings of the component. This assumption is also
used in the LineForceWithMass component: If a connection is present to
only one of the flange connectors, then the force in this flange
connector acts implicitly with opposite sign also in the other flange
connector.

::

Extends from
`Interfaces.PartialTwoFrames <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames>`_
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                      | Default                           | Description                                                                                                   |
+===========================================================================================================================+===========================+===================================+===============================================================================================================+
| Boolean                                                                                                                   | animateLine               | true                              | = true, if a line shape between frame\_a and frame\_b shall be visualized                                     |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | animateMass               | true                              | = true, if point mass shall be visualized as sphere provided m > 0                                            |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                                                     | m                         | 0                                 | Mass of point mass on the connetion line between the origin of frame\_a and the origin of frame\_b [kg]       |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | lengthFraction            | 0.5                               | Location of point mass with respect to frame\_a as a fraction of the distance from frame\_a to frame\_b [1]   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient       | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                               |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| if animateLine = true                                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `ShapeType <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeType>`_                       | lineShapeType             | "cylinder"                        | Type of shape visualizing the line from frame\_a to frame\_b                                                  |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | lineShapeWidth            | world.defaultArrowDiameter        | Width of shape [m]                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | lineShapeHeight           | lineShapeWidth                    | Height of shape [m]                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `ShapeExtra <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeExtra>`_                     | lineShapeExtra            | 0.0                               | Extra parameter for shape                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | lineShapeColor            | Modelica.Mechanics.MultiBody...   | Color of line shape                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| if animateMass = true                                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | massDiameter              | world.defaultBodyDiameter         | Diameter of point mass sphere                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | massColor                 | Modelica.Mechanics.MultiBody...   | Color of point mass                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | s\_small                  | 1.E-10                            | Prevent zero-division if distance between frame\_a and frame\_b is zero [m]                                   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| If enabled, can give wrong results, see MultiBody.UsersGuide.Tutorial.ConnectionOfLineForces                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | fixedRotationAtFrame\_a   | false                             | =true, if rotation frame\_a.R is fixed (to directly connect line forces)                                      |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | fixedRotationAtFrame\_b   | false                             | =true, if rotation frame\_b.R is fixed (to directly connect line forces)                                      |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                                                                            |
+========================================================================================================================+=============+========================================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_             | frame\_a    | Coordinate system fixed to the component with one cut-force and cut-torque                             |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_             | frame\_b    | Coordinate system fixed to the component with one cut-force and cut-torque                             |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------------------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_b   | 1-dim. translational flange (connect force of Translational library between flange\_a and flange\_b)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_a   | 1-dim. translational flange (connect force of Translational library between flange\_a and flange\_b)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model LineForceWithMass 
      "General line force component with an optional point mass on the connection line"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      extends Interfaces.PartialTwoFrames;
      Modelica.Mechanics.Translational.Interfaces.Flange_a flange_b 
        "1-dim. translational flange (connect force of Translational library between flange_a and flange_b)";
      Modelica.Mechanics.Translational.Interfaces.Flange_b flange_a 
        "1-dim. translational flange (connect force of Translational library between flange_a and flange_b)";
        

      parameter Boolean animateLine=true 
        "= true, if a line shape between frame_a and frame_b shall be visualized";
      parameter Boolean animateMass=true 
        "= true, if point mass shall be visualized as sphere provided m > 0";
      parameter SI.Mass m(min=0)=0 
        "Mass of point mass on the connetion line between the origin of frame_a and the origin of frame_b";
      parameter Real lengthFraction(
        unit="1",
        min=0,
        max=1) = 0.5 
        "Location of point mass with respect to frame_a as a fraction of the distance from frame_a to frame_b";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      parameter Types.ShapeType lineShapeType="cylinder" 
        "Type of shape visualizing the line from frame_a to frame_b";
      input SI.Length lineShapeWidth=world.defaultArrowDiameter "Width of shape";
      input SI.Length lineShapeHeight=lineShapeWidth "Height of shape";
      parameter Types.ShapeExtra lineShapeExtra=0.0 "Extra parameter for shape";
      input Types.Color lineShapeColor=Modelica.Mechanics.MultiBody.Types.Defaults.SensorColor 
        "Color of line shape";
      input Real massDiameter=world.defaultBodyDiameter 
        "Diameter of point mass sphere";
      input Types.Color massColor=Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor 
        "Color of point mass";
      parameter SI.Position s_small=1.E-10 
        "Prevent zero-division if distance between frame_a and frame_b is zero";
      parameter Boolean fixedRotationAtFrame_a=false 
        "=true, if rotation frame_a.R is fixed (to directly connect line forces)";
      parameter Boolean fixedRotationAtFrame_b=false 
        "=true, if rotation frame_b.R is fixed (to directly connect line forces)";

      SI.Distance length 
        "Distance between the origin of frame_a and the origin of frame_b";
      SI.Position r_rel_0[3] 
        "Position vector from frame_a to frame_b resolved in world frame";
      Real e_rel_0[3](each final unit="1") 
        "Unit vector in direction from frame_a to frame_b, resolved in world frame";

    protected 
      SI.Force fa "Force from flange_a";
      SI.Force fb "Force from flange_b";
      SI.Position r_CM_0[3](stateSelect=StateSelect.avoid) 
        "Position vector from world frame to point mass, resolved in world frame";
      SI.Velocity v_CM_0[3](stateSelect=StateSelect.avoid) 
        "First derivative of r_CM_0";
      SI.Acceleration ag_CM_0[3] "der(v_CM_0) - gravityAcceleration";

      Visualizers.Advanced.Shape lineShape(
        shapeType=lineShapeType,
        color=lineShapeColor,
        specularCoefficient=specularCoefficient,
        length=length,
        width=lineShapeWidth,
        height=lineShapeHeight,
        lengthDirection=e_rel_0,
        widthDirection=Frames.resolve1(frame_a.R, {0,1,0}),
        extra=lineShapeExtra,
        r=frame_a.r_0) if world.enableAnimation and animateLine;

      Visualizers.Advanced.Shape massShape(
        shapeType="sphere",
        color=massColor,
        specularCoefficient=specularCoefficient,
        length=massDiameter,
        width=massDiameter,
        height=massDiameter,
        lengthDirection=e_rel_0,
        widthDirection={0,1,0},
        r_shape=e_rel_0*(length*lengthFraction - massDiameter/2),
        r=frame_a.r_0) if world.enableAnimation and animateMass and m > 0;
    equation 
      assert(noEvent(length > s_small), "
    The distance between the origin of frame_a and the origin of frame_b
    of a LineForceWithMass component became smaller as parameter s_small
    (= a small number, defined in the \"Advanced\" menu). The distance is
    set to s_small, although it is smaller, to avoid a division by zero
    when computing the direction of the line force. Possible reasons
    for this situation:
    - At initial time the distance may already be zero: Change the initial
      positions of the bodies connected by this element.
    - Hardware stops are not modeled or are modeled not stiff enough.
      Include stops, e.g., stiff springs, or increase the stiffness
      if already present.
    - Another error in your model may lead to unrealistically large forces
      and torques that would in reality destroy the stops.
    - The flange_b connector might be defined by a pre-defined motion,
      e.g., with Modelica.Mechanics.Translational.Position and the
      predefined flange_b.s is zero or negative.
    ");

      // Determine relative position vector between the two frames
      r_rel_0 = frame_b.r_0 - frame_a.r_0;
      length = Modelica.Math.Vectors.length(
                             r_rel_0);
      flange_a.s = 0;
      flange_b.s = length;
      e_rel_0 = r_rel_0/Frames.Internal.maxWithoutEvent(length, s_small);

      // Determine translational flange forces
      if cardinality(flange_a) > 0 and cardinality(flange_b) > 0 then
        fa = flange_a.f;
        fb = flange_b.f;
      elseif cardinality(flange_a) > 0 and cardinality(flange_b) == 0 then
        fa = flange_a.f;
        fb = -fa;
      elseif cardinality(flange_a) == 0 and cardinality(flange_b) > 0 then
        fa = -fb;
        fb = flange_b.f;
      else
        fa = 0;
        fb = 0;
      end if;

      /* Force and torque balance of point mass
         - Kinematics for center of mass CM of point mass including gravity
           r_CM_0 = frame_a.r0 + r_rel_CM_0;
           v_CM_0 = der(r_CM_0);
           ag_CM_0 = der(v_CM_0) - world.gravityAcceleration(r_CM_0);
         - Power balance for the connection line
           (f1=force on frame_a side, f2=force on frame_b side, h=lengthFraction)
           0 = f1*va - m*ag_CM*(va+(vb-va)*h) + f2*vb
             = (f1 - m*ag_CM*(1-h))*va + (f2 - m*ag_CM*h)*vb
           since va and vb are completely indepedent from other
           the paranthesis must vanish:
             f1 := m*ag_CM*(1-h)
             f2 := m*ag_CM*h
         - Force balance on frame_a and frame_b finally results in
             0 = frame_a.f + e_rel_a*fa - f1_a
             0 = frame_b.f + e_rel_b*fb - f2_b
           and therefore
             frame_a.f = -e_rel_a*fa + m*ag_CM_a*(1-h)
             frame_b.f = -e_rel_b*fb + m*ag_CM_b*h
      */
      if m > 0 then
        r_CM_0 = frame_a.r_0 + r_rel_0*lengthFraction;
        v_CM_0 = der(r_CM_0);
        ag_CM_0 = der(v_CM_0) - world.gravityAcceleration(r_CM_0);
        frame_a.f = Frames.resolve2(frame_a.R, (m*(1 - lengthFraction))*ag_CM_0
           - e_rel_0*fa);
        frame_b.f = Frames.resolve2(frame_b.R, (m*lengthFraction)*ag_CM_0 -
          e_rel_0*fb);
      else
        r_CM_0 = zeros(3);
        v_CM_0 = zeros(3);
        ag_CM_0 = zeros(3);
        frame_a.f = -Frames.resolve2(frame_a.R, e_rel_0*fa);
        frame_b.f = -Frames.resolve2(frame_b.R, e_rel_0*fb);
      end if;

      // Provide appropriate equations, if direct connections of line forces
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
    end LineForceWithMass;

--------------

|image57| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.LineForceWithTwoMasses
------------------------------------------------------------------------------------------------------------------------------------------------------

**General line force component with two optional point masses on the
connection line**

.. figure:: Modelica.Mechanics.MultiBody.Forces.LineForceWithTwoMassesD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.LineForceWithTwoMasses

   Modelica.Mechanics.MultiBody.Forces.LineForceWithTwoMasses

Information
~~~~~~~~~~~

::

This component is used to exert a **line force** between the origin of
frame\_a and the origin of frame\_b by attaching components of the
**1-dimensional translational** mechanical library of Modelica
(Modelica.Mechanics.Translational) between the two flange connectors
**flange\_a** and **flange\_b**. Optionally, there are **two point
masses** on the line connecting the origin of frame\_a and the origin of
frame\_b. These point masses approximate the **masses** of the **force
element**. The locations of the two point masses are defined by their
(fixed) distances of L\_a relative to frame\_a and of L\_b relative to
frame\_b, respectively.

In example
`MultiBody.Examples.Elementary.LineForceWithTwoMasses <Modelica_Mechanics_MultiBody_Examples_Elementary.html#Modelica.Mechanics.MultiBody.Examples.Elementary.LineForceWithTwoMasses>`_
the usage of this line force element is shown and is compared with an
alternative implementation using a
`MultiBody.Joints.Assemblies.JointUPS <Modelica_Mechanics_MultiBody_Joints_Assemblies.html#Modelica.Mechanics.MultiBody.Joints.Assemblies.JointUPS>`_
component. The composition diagram of this example is displayed in the
figure below.

.. figure:: ../Resources/Images/MultiBody/Examples/Elementary/LineForceWithTwoMasses1.png
   :align: center
   :alt: 

The animation view at time = 0 is shown in the next figure. The system
on the left side in the front is the animation with the
LineForceWithTwoMasses component whereas the system on the right side in
the back is the animation with the JointUPS component. Both
implementations yield the same result. However, the implementation with
the LineForceWithTwoMasses component is simpler.

.. figure:: ../Resources/Images/MultiBody/Examples/Elementary/LineForceWithTwoMasses2.png
   :align: center
   :alt: 

In the translational library there is the implicit assumption that
forces of components that have only one flange connector act with
opposite sign on the bearings of the component. This assumption is also
used in the LineForceWithTwoMasses component: If a connection is present
to only one of the flange connectors, then the force in this flange
connector acts implicitly with opposite sign also in the other flange
connector.

::

Extends from
`Interfaces.PartialTwoFrames <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames>`_
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                      | Default                           | Description                                                                                                 |
+===========================================================================================================================+===========================+===================================+=============================================================================================================+
| Boolean                                                                                                                   | animate                   | true                              | = true, if animation shall be enabled                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | animateMasses             | true                              | = true, if point masses shall be visualized provided animate=true and m\_a, m\_b > 0                        |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                                                     | m\_a                      | 0                                 | Mass of point mass a on the connetion line between the origin of frame\_a and the origin of frame\_b [kg]   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                                                     | m\_b                      | 0                                 | Mass of point mass b on the connetion line between the origin of frame\_a and the origin of frame\_b [kg]   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | L\_a                      | 0                                 | Distance between point mass a and frame\_a (positive, if in direction of frame\_b) [m]                      |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | L\_b                      | L\_a                              | Distance between point mass b and frame\_b (positive, if in direction of frame\_a) [m]                      |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| Cylinder at frame\_a if animation = true                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | cylinderDiameter\_a       | world.defaultForceWidth           | Diameter of cylinder at frame\_a [m]                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | cylinderLength\_a         | 2\*L\_a                           | Length of cylinder at frame\_a [m]                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color\_a                  | {155,155,155}                     | Color of cylinder at frame\_a                                                                               |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient       | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                             |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| Cylinder at frame\_b if animation = true                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | diameterFraction          | 0.8                               | Diameter of cylinder at frame\_b with respect to diameter of cylinder at frame\_a                           |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | cylinderLength\_b         | 2\*L\_b                           | Length of cylinder at frame\_b [m]                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color\_b                  | {100,100,100}                     | Color of cylinder at frame\_b                                                                               |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| if animation = true and animateMasses = true                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | massDiameterFaction       | 1.7                               | Diameter of point mass spheres with respect to cylinderDiameter\_a                                          |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | massColor                 | Modelica.Mechanics.MultiBody...   | Color of point masses                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | s\_small                  | 1.E-10                            | Prevent zero-division if distance between frame\_a and frame\_b is zero [m]                                 |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| If enabled, can give wrong results, see MultiBody.UsersGuide.Tutorial.ConnectionOfLineForces                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | fixedRotationAtFrame\_a   | false                             | =true, if rotation frame\_a.R is fixed (to directly connect line forces)                                    |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | fixedRotationAtFrame\_b   | false                             | =true, if rotation frame\_b.R is fixed (to directly connect line forces)                                    |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+-------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                                                                            |
+========================================================================================================================+=============+========================================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_             | frame\_a    | Coordinate system fixed to the component with one cut-force and cut-torque                             |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_             | frame\_b    | Coordinate system fixed to the component with one cut-force and cut-torque                             |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------------------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_b   | 1-dim. translational flange (connect force of Translational library between flange\_a and flange\_b)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_a   | 1-dim. translational flange (connect force of Translational library between flange\_a and flange\_b)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model LineForceWithTwoMasses 
      "General line force component with two optional point masses on the connection line"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;

      extends Interfaces.PartialTwoFrames;
      Modelica.Mechanics.Translational.Interfaces.Flange_a flange_b 
        "1-dim. translational flange (connect force of Translational library between flange_a and flange_b)";
      Modelica.Mechanics.Translational.Interfaces.Flange_b flange_a 
        "1-dim. translational flange (connect force of Translational library between flange_a and flange_b)";
        

      parameter Boolean animate=true "= true, if animation shall be enabled";
      parameter Boolean animateMasses=true 
        "= true, if point masses shall be visualized provided animate=true and m_a, m_b > 0";
      parameter SI.Mass m_a(min=0)=0 
        "Mass of point mass a on the connetion line between the origin of frame_a and the origin of frame_b";
      parameter SI.Mass m_b(min=0)=0 
        "Mass of point mass b on the connetion line between the origin of frame_a and the origin of frame_b";
      parameter SI.Position L_a=0 
        "Distance between point mass a and frame_a (positive, if in direction of frame_b)";
      parameter SI.Position L_b=L_a 
        "Distance between point mass b and frame_b (positive, if in direction of frame_a)";
      input SI.Diameter cylinderDiameter_a=world.defaultForceWidth 
        " Diameter of cylinder at frame_a";
      parameter SI.Length cylinderLength_a=2*L_a " Length of cylinder at frame_a";
      input Types.Color color_a={155,155,155} " Color of cylinder at frame_a";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      input Real diameterFraction=0.8 
        " Diameter of cylinder at frame_b with respect to diameter of cylinder at frame_a";
      parameter SI.Length cylinderLength_b=2*L_b " Length of cylinder at frame_b";
      input Types.Color color_b={100,100,100} " Color of cylinder at frame_b";
      input Real massDiameterFaction=1.7 
        " Diameter of point mass spheres with respect to cylinderDiameter_a";
      input Types.Color massColor=Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor 
        " Color of point masses";
      parameter SI.Position s_small=1.E-10 
        " Prevent zero-division if distance between frame_a and frame_b is zero";
      parameter Boolean fixedRotationAtFrame_a=false 
        "=true, if rotation frame_a.R is fixed (to directly connect line forces)";
      parameter Boolean fixedRotationAtFrame_b=false 
        "=true, if rotation frame_b.R is fixed (to directly connect line forces)";

      SI.Distance length 
        "Distance between the origin of frame_a and the origin of frame_b";
      SI.Position r_rel_0[3] 
        "Position vector from frame_a to frame_b resolved in world frame";
      Real e_rel_0[3](each final unit="1") 
        "Unit vector in direction from frame_a to frame_b, resolved in world frame";

    protected 
      SI.Force fa "Force from flange_a";
      SI.Force fb "Force from flange_b";
      SI.Position r_CM1_0[3](stateSelect=StateSelect.avoid) 
        "Position vector from world frame to point mass 1, resolved in world frame";
      SI.Position r_CM2_0[3](stateSelect=StateSelect.avoid) 
        "Position vector from world frame to point mass 2, resolved in world frame";
      SI.Velocity v_CM1_0[3](stateSelect=StateSelect.avoid) 
        "der(r_CM_1_0) - velocity of point mass 1";
      SI.Velocity v_CM2_0[3](stateSelect=StateSelect.avoid) 
        "der(r_CM_2_0) - velocity of point mass 2";
      SI.Acceleration ag_CM1_0[3] "der(v_CM1_0) - gravityAcceleration(r_CM1_0)";
      SI.Acceleration ag_CM2_0[3] "der(v_CM2_0) - gravityAcceleration(r_CM2_0)";
      SI.Force aux1_0[3] "Auxiliary force 1";
      SI.Force aux2_0[3] "Auxiliary force 2";

      input SI.Length cylinderDiameter_b=cylinderDiameter_a*diameterFraction;
      input SI.Length massDiameter=cylinderDiameter_a*massDiameterFaction;
      parameter Boolean animateMasses2=world.enableAnimation and animate and animateMasses and m_a > 0 and m_b > 0;
      Visualizers.Advanced.Shape cylinder_a(
        shapeType="cylinder",
        color=color_a,
        specularCoefficient=specularCoefficient,
        length=cylinderLength_a,
        width=cylinderDiameter_a,
        height=cylinderDiameter_a,
        lengthDirection=e_rel_0,
        widthDirection={0,1,0},
        r=frame_a.r_0) if world.enableAnimation and animate;

      Visualizers.Advanced.Shape cylinder_b(
        shapeType="cylinder",
        color=color_b,
        specularCoefficient=specularCoefficient,
        length=cylinderLength_b,
        width=cylinderDiameter_b,
        height=cylinderDiameter_b,
        lengthDirection=-e_rel_0,
        widthDirection={0,1,0},
        r=frame_b.r_0) if world.enableAnimation and animate;

      Visualizers.Advanced.Shape sphere_a(
        shapeType="sphere",
        color=massColor,
        specularCoefficient=specularCoefficient,
        length=massDiameter,
        width=massDiameter,
        height=massDiameter,
        lengthDirection=e_rel_0,
        widthDirection={0,1,0},
        r_shape=e_rel_0*(L_a - massDiameter/2),
        r=frame_a.r_0) if animateMasses2;

      Visualizers.Advanced.Shape sphere_b(
        shapeType="sphere",
        color=massColor,
        specularCoefficient=specularCoefficient,
        length=massDiameter,
        width=massDiameter,
        height=massDiameter,
        lengthDirection=-e_rel_0,
        widthDirection={0,1,0},
        r_shape=-e_rel_0*(L_b - massDiameter/2),
        r=frame_b.r_0) if animateMasses2;
    equation 
      assert(noEvent(length > s_small), "
    The distance between the origin of frame_a and the origin of frame_b
    of a LineForceWithTwoMasses component became smaller as parameter s_small
    (= a small number, defined in the \"Advanced\" menu). The distance is
    set to s_small, although it is smaller, to avoid a division by zero
    when computing the direction of the line force. Possible reasons
    for this situation:
    - At initial time the distance may already be zero: Change the initial
      positions of the bodies connected by this element.
    - Hardware stops are not modeled or are modeled not stiff enough.
      Include stops, e.g., stiff springs, or increase the stiffness
      if already present.
    - Another error in your model may lead to unrealistically large forces
      and torques that would in reality destroy the stops.
    - The flange_b connector might be defined by a pre-defined motion,
      e.g., with Modelica.Mechanics.Translational.Position and the
      predefined flange_b.s is zero or negative.
    ");

      // Determine relative position vector between the two frames
      r_rel_0 = frame_b.r_0 - frame_a.r_0;
      length = Modelica.Math.Vectors.length(
                             r_rel_0);
      flange_a.s = 0;
      flange_b.s = length;
      e_rel_0 = r_rel_0/Frames.Internal.maxWithoutEvent(length, s_small);

      // Determine translational flange forces
      if cardinality(flange_a) > 0 and cardinality(flange_b) > 0 then
        fa = flange_a.f;
        fb = flange_b.f;
      elseif cardinality(flange_a) > 0 and cardinality(flange_b) == 0 then
        fa = flange_a.f;
        fb = -fa;
      elseif cardinality(flange_a) == 0 and cardinality(flange_b) > 0 then
        fa = -fb;
        fb = flange_b.f;
      else
        fa = 0;
        fb = 0;
      end if;

      /* Force and torque balance of the two point masses
         - Kinematics for center of masses CM1, CM2 of point masses including gravity
           (L = length, va = der(frame_a.r_0), vb = der(frame_b.r_0))
           r_CM1_0 = frame_a.r_0 + e_rel_0*L_a;
           r_CM2_0 = frame_b.r_0 - e_rel_0*L_b;
           v_CM1_0 = der(r_CM1_0);
           v_CM2_0 = der(r_CM2_0);
           ag_CM1_0 = der(v_CM1_0) - world.gravityAcceleration(r_CM1_0);
           ag_CM2_0 = der(v_CM2_0) - world.gravityAcceleration(r_CM2_0);
           der(e_rel_0) = der(r_rel_0/sqrt(r_rel_0*r_rel_0))
                        = 1/L*(I - e_rel_0*e_rel_0')*der(r_rel_0)
                        = 1/L*(I - e_rel_0*e_rel_0')*(vb - va)
           v_CM1_0 = va + L_a/L*(I - e_rel_0*e_rel_0')*(vb - va)
           v_CM2_0 = vb - L_b/L*(I - e_rel_0*e_rel_0')*(vb - va)
         - Power balance for the connection line
           (f1=force on frame_a side, f2=force on frame_b side)
           0 = f1*va - m_a*ag_CM1*v_CM1 + f2*vb - m_b*ag_CM2*v_CM2
             = f1*va - m_a*ag_CM1*(va + L_a/L*(I - e_rel*e_rel')*(vb - va)) +
               f2*vb - m_b*ag_CM2*(vb - L_b/L*(I - e_rel*e_rel')*(vb - va))
             = (f1 - m_a*ag_CM1*(I - L_a/L*(I - e_rel*e_rel'))
                   - m_b*ag_CM2*(L_b/L*(I - e_rel*e_rel')))*va +
               (f2 - m_b*ag_CM2*(I - L_b/L*(I - e_rel_0*e_rel_0'))
                   - m_a*ag_CM1*(L_a/L*(I - e_rel*e_rel')))*vb
             = va*(f1 - m_a*ag_CM1 +
                   (m_a*ag_CM1*L_a/L - m_b*ag_CM2*L_b/L)*(I - e_rel*e_rel')) +
               vb*(f2 - m_b*ag_CM2 +
                   (m_b*ag_CM2*L_b/L - m_a*ag_CM1*L_a/L)*(I - e_rel*e_rel'))
           since va and vb are completely independent from other
           the paranthesis must vanish:
             f1 := m_a*ag_CM1 - (m_a*ag_CM1*L_a/L - m_b*ag_CM2*L_b/L)*(I - e_rel*e_rel')
             f2 := m_b*ag_CM2 + (m_a*ag_CM1*L_a/L - m_b*ag_CM2*L_b/L)*(I - e_rel*e_rel')
           or
             aux1 := ag_CM1*(m_a*L_a/L) - ag_CM2*(m_b*L_b/L);
             aux2 := aux1 - (aux1'*e_rel)*e_rel
             f1 := m_a*ag_CM1 - aux2
             f2 := m_b*ag_CM2 + aux2
         - Force balance on frame_a and frame_b finally results in
             0 = frame_a.f + e_rel_a*fa - f1_a
             0 = frame_b.f + e_rel_b*fb - f2_b
           and therefore
             frame_a.f = -e_rel_a*fa + m_a*ag_CM1 - aux2
             frame_b.f = -e_rel_b*fb + m_b*ag_CM2 + aux2
      */
      if m_a > 0 or m_b > 0 then
        r_CM1_0 = frame_a.r_0 + e_rel_0*L_a;
        r_CM2_0 = frame_b.r_0 - e_rel_0*L_b;
        v_CM1_0 = der(r_CM1_0);
        v_CM2_0 = der(r_CM2_0);
        ag_CM1_0 = der(v_CM1_0) - world.gravityAcceleration(r_CM1_0);
        ag_CM2_0 = der(v_CM2_0) - world.gravityAcceleration(r_CM2_0);
        aux1_0 = ag_CM1_0*(m_a*L_a/length) - ag_CM2_0*(m_b*L_b/length);
        aux2_0 = aux1_0 - (aux1_0*e_rel_0)*e_rel_0;
        frame_a.f = Frames.resolve2(frame_a.R, m_a*ag_CM1_0 - aux2_0 - e_rel_0*fa);
        frame_b.f = Frames.resolve2(frame_b.R, m_b*ag_CM2_0 + aux2_0 - e_rel_0*fb);
      else
        r_CM1_0 = zeros(3);
        r_CM2_0 = zeros(3);
        v_CM1_0 = zeros(3);
        v_CM2_0 = zeros(3);
        ag_CM1_0 = zeros(3);
        ag_CM2_0 = zeros(3);
        aux1_0 = zeros(3);
        aux2_0 = zeros(3);
        frame_a.f = -Frames.resolve2(frame_a.R, e_rel_0*fa);
        frame_b.f = -Frames.resolve2(frame_b.R, e_rel_0*fb);
      end if;

      // Provide appropriate equations, if direct connections of line forces
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

    end LineForceWithTwoMasses;

--------------

|image58| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.Spring
--------------------------------------------------------------------------------------------------------------------------------------

**Linear translational spring with optional mass**

.. figure:: Modelica.Mechanics.MultiBody.Forces.SpringD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.Spring

   Modelica.Mechanics.MultiBody.Forces.Spring

Information
~~~~~~~~~~~

::

**Linear spring** acting as line force between frame\_a and frame\_b. A
**force f** is exerted on the origin of frame\_b and with opposite sign
on the origin of frame\_a along the line from the origin of frame\_a to
the origin of frame\_b according to the equation:

::

       f = c*(s - s_unstretched);

where "c" and "s\_unstretched" are parameters and "s" is the distance
between the origin of frame\_a and the origin of frame\_b.

Optionally, the mass of the spring is taken into account by a point mass
located on the line between frame\_a and frame\_b (default: middle of
the line). If the spring mass is zero, the additional equations to
handle the mass are removed.

In the following figure a typical animation of the spring is shown. The
blue sphere in the middle of the spring characterizes the location of
the point mass.

.. figure:: ../Resources/Images/MultiBody/Examples/Elementary/SpringWithMass.png
   :align: center
   :alt: model Examples.Elementary.SpringWithMass

   model Examples.Elementary.SpringWithMass
::

Extends from
`Interfaces.PartialTwoFrames <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames>`_
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                      | Default                            | Description                                                                                                                                   |
+===========================================================================================================================+===========================+====================================+===============================================================================================================================================+
| Boolean                                                                                                                   | animation                 | true                               | = true, if animation shall be enabled                                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | showMass                  | true                               | = true, if point mass shall be visualized as sphere if animation=true and m>0                                                                 |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| `TranslationalSpringConstant <Modelica_SIunits.html#Modelica.SIunits.TranslationalSpringConstant>`_                       | c                         |                                    | Spring constant [N/m]                                                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | s\_unstretched            | 0                                  | Unstretched spring length [m]                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                                                     | m                         | 0                                  | Spring mass located on the connetion line between the origin of frame\_a and the origin of frame\_b [kg]                                      |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | lengthFraction            | 0.5                                | Location of spring mass with respect to frame\_a as a fraction of the distance from frame\_a to frame\_b (=0: at frame\_a; =1: at frame\_b)   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | width                     | world.defaultForceWidth            | Width of spring [m]                                                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | coilWidth                 | width/10                           | Width of spring coil [m]                                                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| Integer                                                                                                                   | numberOfWindings          | 5                                  | Number of spring windings                                                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                     | Modelica.Mechanics.MultiBody...    | Color of spring                                                                                                                               |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient       | world.defaultSpecularCoeffic...    | Reflection of ambient light (= 0: light is completely absorbed)                                                                               |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| if animation = true and showMass = true                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | massDiameter              | max(0, (width - 2\*coilWidth)...   | Diameter of mass point sphere [m]                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | massColor                 | Modelica.Mechanics.MultiBody...    | Color of mass point                                                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| If enabled, can give wrong results, see MultiBody.UsersGuide.Tutorial.ConnectionOfLineForces                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | fixedRotationAtFrame\_a   | false                              | =true, if rotation frame\_a.R is fixed (to directly connect line forces)                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | fixedRotationAtFrame\_b   | false                              | =true, if rotation frame\_b.R is fixed (to directly connect line forces)                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

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

    model Spring "Linear translational spring with optional mass"
      import Modelica.Mechanics.MultiBody.Types;
      extends Interfaces.PartialTwoFrames;
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Boolean showMass=true 
        "= true, if point mass shall be visualized as sphere if animation=true and m>0";

      parameter SI.TranslationalSpringConstant c(final min=0) "Spring constant";
      parameter SI.Length s_unstretched=0 "Unstretched spring length";
      parameter SI.Mass m(min=0)=0 
        "Spring mass located on the connetion line between the origin of frame_a and the origin of frame_b";
      parameter Real lengthFraction(
        min=0,
        max=1) = 0.5 
        "Location of spring mass with respect to frame_a as a fraction of the distance from frame_a to frame_b (=0: at frame_a; =1: at frame_b)";
      input SI.Distance width=world.defaultForceWidth " Width of spring";
      input SI.Distance coilWidth=width/10 " Width of spring coil";
      parameter Integer numberOfWindings=5 " Number of spring windings";
      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.SpringColor 
        " Color of spring";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      input SIunits.Diameter massDiameter=max(0, (width - 2*coilWidth)*0.9) 
        " Diameter of mass point sphere";
      input Types.Color massColor=Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor 
        " Color of mass point";
      parameter Boolean fixedRotationAtFrame_a=false 
        "=true, if rotation frame_a.R is fixed (to directly connect line forces)";
      parameter Boolean fixedRotationAtFrame_b=false 
        "=true, if rotation frame_b.R is fixed (to directly connect line forces)";

      Forces.LineForceWithMass lineForce(
        animateLine=animation,
        animateMass=showMass,
        m=m,
        lengthFraction=lengthFraction,
        lineShapeType="spring",
        lineShapeHeight=coilWidth*2,
        lineShapeWidth=width,
        lineShapeExtra=numberOfWindings,
        lineShapeColor=color,
        specularCoefficient=specularCoefficient,
        massDiameter=massDiameter,
        massColor=massColor,
        fixedRotationAtFrame_a=fixedRotationAtFrame_a,
        fixedRotationAtFrame_b=fixedRotationAtFrame_b);
      Modelica.Mechanics.Translational.Components.Spring spring(
                                                     s_rel0=s_unstretched, c=c);

    equation 
      connect(lineForce.frame_a, frame_a);
      connect(lineForce.frame_b, frame_b);
      connect(spring.flange_b, lineForce.flange_b);
      connect(spring.flange_a, lineForce.flange_a);

    end Spring;

--------------

|image59| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.Damper
--------------------------------------------------------------------------------------------------------------------------------------

**Linear (velocity dependent) damper**

.. figure:: Modelica.Mechanics.MultiBody.Forces.DamperD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.Damper

   Modelica.Mechanics.MultiBody.Forces.Damper

Information
~~~~~~~~~~~

::

**Linear damper** acting as line force between frame\_a and frame\_b. A
**force f** is exerted on the origin of frame\_b and with opposite sign
on the origin of frame\_a along the line from the origin of frame\_a to
the origin of frame\_b according to the equation:

::

       f = d*der(s);

where "d" is a parameter, "s" is the distance between the origin of
frame\_a and the origin of frame\_b and der(s) is the time derivative of
"s".

In the following figure a typical animation is shown where a mass is
hanging on a damper.

.. figure:: ../Resources/Images/MultiBody/Forces/Damper.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.PartialLineForce <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce>`_
(Base model for line force elements),
`Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| Type                                                                                                                      | Name                      | Default                           | Description                                                                |
+===========================================================================================================================+===========================+===================================+============================================================================+
| Boolean                                                                                                                   | animation                 | true                              | = true, if animation shall be enabled                                      |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `TranslationalDampingConstant <Modelica_SIunits.html#Modelica.SIunits.TranslationalDampingConstant>`_                     | d                         |                                   | Damping constant [N.s/m]                                                   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| Boolean                                                                                                                   | useHeatPort               | false                             | =true, if heatPort is enabled                                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                       | T                         | 293.15                            | Fixed device temperature if useHeatPort = false [K]                        |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | length\_a                 | world.defaultForceLength          | Length of cylinder at frame\_a side [m]                                    |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | diameter\_a               | world.defaultForceWidth           | Diameter of cylinder at frame\_a side [m]                                  |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | diameter\_b               | 0.6\*diameter\_a                  | Diameter of cylinder at frame\_b side [m]                                  |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color\_a                  | {100,100,100}                     | Color at frame\_a                                                          |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color\_b                  | {155,155,155}                     | Color at frame\_b                                                          |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient       | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)            |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | s\_small                  | 1.E-6                             | Prevent zero-division if relative distance s=0 [m]                         |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| If enabled, can give wrong results, see MultiBody.UsersGuide.Tutorial.ConnectionOfLineForces                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| Boolean                                                                                                                   | fixedRotationAtFrame\_a   | false                             | =true, if rotation frame\_a.R is fixed (to directly connect line forces)   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| Boolean                                                                                                                   | fixedRotationAtFrame\_b   | false                             | =true, if rotation frame\_b.R is fixed (to directly connect line forces)   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                                      |
+======================================================================================================================+============+==================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_           | frame\_a   | Coordinate system fixed to the force element with one cut-force and cut-torque   |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_           | frame\_b   | Coordinate system fixed to the force element with one cut-force and cut-torque   |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   | Optional port to which dissipated losses are transported in form of heat         |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Damper "Linear (velocity dependent) damper"
      import Modelica.Mechanics.MultiBody.Types;
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter SI.TranslationalDampingConstant d(final min=0, start = 0) 
        "Damping constant";
      parameter SI.Distance length_a=world.defaultForceLength 
        " Length of cylinder at frame_a side";
      input SIunits.Diameter diameter_a=world.defaultForceWidth 
        " Diameter of cylinder at frame_a side";
      input SIunits.Diameter diameter_b=0.6*diameter_a 
        " Diameter of cylinder at frame_b side";
      input Types.Color color_a={100,100,100} " Color at frame_a";
      input Types.Color color_b={155,155,155} " Color at frame_b";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      extends Interfaces.PartialLineForce;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort
        (final T=293.15);
    protected 
      SI.Position r0_b[3]=e_a*noEvent(min(length_a, s));
      Visualizers.Advanced.Shape shape_a(
        shapeType="cylinder",
        color=color_a,
        specularCoefficient=specularCoefficient,
        length=noEvent(min(length_a, s)),
        width=diameter_a,
        height=diameter_a,
        lengthDirection=e_a,
        widthDirection={0,1,0},
        r=frame_a.r_0,
        R=frame_a.R) if 
                       world.enableAnimation and animation;
      Visualizers.Advanced.Shape shape_b(
        shapeType="cylinder",
        color=color_b,
        specularCoefficient=specularCoefficient,
        length=noEvent(max(s - length_a, 0)),
        width=diameter_b,
        height=diameter_b,
        lengthDirection=e_a,
        widthDirection={0,1,0},
        r_shape=r0_b,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
    equation 
      f = d*der(s);
      lossPower = f*der(s);
    end Damper;

--------------

|image60| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.SpringDamperParallel
----------------------------------------------------------------------------------------------------------------------------------------------------

**Linear spring and linear damper in parallel**

.. figure:: Modelica.Mechanics.MultiBody.Forces.SpringDamperParallelD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel

   Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel

Information
~~~~~~~~~~~

::

**Linear spring** and **dinear damper** in parallel acting as line force
between frame\_a and frame\_b. A **force f** is exerted on the origin of
frame\_b and with opposite sign on the origin of frame\_a along the line
from the origin of frame\_a to the origin of frame\_b according to the
equation:

::

       f = c*(s - s_unstretched) + d*der(s);

where "c", "s\_unstretched" and "d" are parameters, "s" is the distance
between the origin of frame\_a and the origin of frame\_b and der(s) is
the time derivative of s.

::

Extends from
`Interfaces.PartialLineForce <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce>`_
(Base model for line force elements),
`Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| Type                                                                                                                      | Name                      | Default                           | Description                                                                |
+===========================================================================================================================+===========================+===================================+============================================================================+
| Boolean                                                                                                                   | animation                 | true                              | = true, if animation shall be enabled                                      |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `TranslationalSpringConstant <Modelica_SIunits.html#Modelica.SIunits.TranslationalSpringConstant>`_                       | c                         |                                   | Spring constant [N/m]                                                      |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | s\_unstretched            | 0                                 | Unstretched spring length [m]                                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `TranslationalDampingConstant <Modelica_SIunits.html#Modelica.SIunits.TranslationalDampingConstant>`_                     | d                         | 0                                 | Damping constant [N.s/m]                                                   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| Boolean                                                                                                                   | useHeatPort               | false                             | =true, if heatPort is enabled                                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                       | T                         | 293.15                            | Fixed device temperature if useHeatPort = false [K]                        |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | width                     | world.defaultForceWidth           | Width of spring [m]                                                        |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | coilWidth                 | width/10                          | Width of spring coil [m]                                                   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| Integer                                                                                                                   | numberOfWindings          | 5                                 | Number of spring windings                                                  |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                     | Modelica.Mechanics.MultiBody...   | Color of spring                                                            |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient       | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)            |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | s\_small                  | 1.E-6                             | Prevent zero-division if relative distance s=0 [m]                         |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| If enabled, can give wrong results, see MultiBody.UsersGuide.Tutorial.ConnectionOfLineForces                              |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| Boolean                                                                                                                   | fixedRotationAtFrame\_a   | false                             | =true, if rotation frame\_a.R is fixed (to directly connect line forces)   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+
| Boolean                                                                                                                   | fixedRotationAtFrame\_b   | false                             | =true, if rotation frame\_b.R is fixed (to directly connect line forces)   |
+---------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------------------------+----------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                                      |
+======================================================================================================================+============+==================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_           | frame\_a   | Coordinate system fixed to the force element with one cut-force and cut-torque   |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_           | frame\_b   | Coordinate system fixed to the force element with one cut-force and cut-torque   |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   | Optional port to which dissipated losses are transported in form of heat         |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SpringDamperParallel 
      "Linear spring and linear damper in parallel"
      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter SI.TranslationalSpringConstant c(final min=0) "Spring constant";
      parameter SI.Length s_unstretched=0 "Unstretched spring length";
      parameter SI.TranslationalDampingConstant d(final min=0) = 0 
        "Damping constant";
      input SI.Distance width=world.defaultForceWidth " Width of spring";
      input SI.Distance coilWidth=width/10 " Width of spring coil";
      parameter Integer numberOfWindings=5 " Number of spring windings";
      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.SpringColor 
        " Color of spring";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      extends Interfaces.PartialLineForce;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort
        (final T=293.15);

    protected 
      Modelica.SIunits.Force f_d "Damping force";
      Visualizers.Advanced.Shape shape(
        shapeType="spring",
        color=color,
        length=s,
        width=width,
        height=coilWidth*2,
        lengthDirection=e_a,
        widthDirection={0,1,0},
        extra=numberOfWindings,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
    equation 
      f_d = d*der(s);
      f = c*(s - s_unstretched) + f_d;
      lossPower = f_d*der(s);
    end SpringDamperParallel;

--------------

|image61| `Modelica.Mechanics.MultiBody.Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_.SpringDamperSeries
--------------------------------------------------------------------------------------------------------------------------------------------------

**Linear spring and linear damper in series connection**

.. figure:: Modelica.Mechanics.MultiBody.Forces.SpringDamperSeriesD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Forces.SpringDamperSeries

   Modelica.Mechanics.MultiBody.Forces.SpringDamperSeries

Information
~~~~~~~~~~~

::

**Linear spring** and **linear damper** in series connection acting as
line force between frame\_a and frame\_b:

::

      frame_a --> damper ----> spring --> frame_b
              |              |
              |-- s_damper --|  (s_damper is the state variable of this system)

A **force f** is exerted on the origin of frame\_b and with opposite
sign on the origin of frame\_a along the line from the origin of
frame\_a to the origin of frame\_b according to the equations:

::

       f = c*(s - s_unstretched - s_damper);
       f = d*der(s_damper);

where "c", "s\_unstretched" and "d" are parameters, "s" is the distance
between the origin of frame\_a and the origin of frame\_b. "s\_damper"
is the length of the damper (= an internal state of this force element)
and der(s\_damper) is the time derivative of s\_damper.

::

Extends from
`Interfaces.PartialLineForce <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce>`_
(Base model for line force elements),
`Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| Type                                                                                                    | Name                      | Default   | Description                                                                |
+=========================================================================================================+===========================+===========+============================================================================+
| `TranslationalSpringConstant <Modelica_SIunits.html#Modelica.SIunits.TranslationalSpringConstant>`_     | c                         |           | Spring constant [N/m]                                                      |
+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                               | s\_unstretched            | 0         | Unstretched spring length [m]                                              |
+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| `TranslationalDampingConstant <Modelica_SIunits.html#Modelica.SIunits.TranslationalDampingConstant>`_   | d                         | 0         | Damping constant [N.s/m]                                                   |
+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                               | s\_damper\_start          | 0         | Initial length of damper [m]                                               |
+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort               | false     | =true, if heatPort is enabled                                              |
+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T                         | 293.15    | Fixed device temperature if useHeatPort = false [K]                        |
+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| **Advanced**                                                                                            |
+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                           | s\_small                  | 1.E-6     | Prevent zero-division if relative distance s=0 [m]                         |
+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| If enabled, can give wrong results, see MultiBody.UsersGuide.Tutorial.ConnectionOfLineForces            |
+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| Boolean                                                                                                 | fixedRotationAtFrame\_a   | false     | =true, if rotation frame\_a.R is fixed (to directly connect line forces)   |
+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+
| Boolean                                                                                                 | fixedRotationAtFrame\_b   | false     | =true, if rotation frame\_b.R is fixed (to directly connect line forces)   |
+---------------------------------------------------------------------------------------------------------+---------------------------+-----------+----------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                                      |
+======================================================================================================================+============+==================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_           | frame\_a   | Coordinate system fixed to the force element with one cut-force and cut-torque   |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_           | frame\_b   | Coordinate system fixed to the force element with one cut-force and cut-torque   |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   | Optional port to which dissipated losses are transported in form of heat         |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SpringDamperSeries 
      "Linear spring and linear damper in series connection"
      import SI = Modelica.SIunits;
      parameter SI.TranslationalSpringConstant c(final min=0) "Spring constant";
      parameter SI.Length s_unstretched=0 "Unstretched spring length";
      parameter SI.TranslationalDampingConstant d(final min=0) = 0 
        "Damping constant";
      parameter SI.Length s_damper_start=0 "Initial length of damper";
      SI.Position s_damper(start=s_damper_start, fixed=true) 
        "Actual length of damper (frame_a - damper - spring - frame_b)";
      extends Interfaces.PartialLineForce;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort
        (final T=293.15);
    equation 
      f = c*(s - s_unstretched - s_damper);
      d*der(s_damper) = f;
      lossPower = f*der(s_damper);
    end SpringDamperSeries;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:27
2010.

.. |image0| image:: ../Resources/Images/MultiBody/Forces/ArrowForce.png
.. |image1| image:: ../Resources/Images/MultiBody/Forces/ArrowTorque.png
.. |image2| image:: ../Resources/Images/MultiBody/Forces/ArrowForce.png
.. |image3| image:: ../Resources/Images/MultiBody/Forces/ArrowTorque.png
.. |image4| image:: ../Resources/Images/MultiBody/Forces/ArrowForce2.png
.. |image5| image:: ../Resources/Images/MultiBody/Forces/ArrowTorque2.png
.. |image6| image:: ../Resources/Images/MultiBody/Forces/ArrowForce2.png
.. |image7| image:: ../Resources/Images/MultiBody/Forces/ArrowTorque2.png
.. |image8| image:: ../Resources/Images/MultiBody/Forces/LineForceWithMass.png
.. |image9| image:: ../Resources/Images/MultiBody/Forces/LineForceWithTwoMasses.png
.. |image10| image:: ../Resources/Images/MultiBody/Forces/Spring2.png
.. |image11| image:: ../Resources/Images/MultiBody/Forces/Damper2.png
.. |image12| image:: ../Resources/Images/MultiBody/Forces/ArrowForce.png
.. |image13| image:: ../Resources/Images/MultiBody/Forces/ArrowTorque.png
.. |image14| image:: ../Resources/Images/MultiBody/Forces/ArrowForce.png
.. |image15| image:: ../Resources/Images/MultiBody/Forces/ArrowTorque.png
.. |image16| image:: ../Resources/Images/MultiBody/Forces/ArrowForce2.png
.. |image17| image:: ../Resources/Images/MultiBody/Forces/ArrowTorque2.png
.. |image18| image:: ../Resources/Images/MultiBody/Forces/ArrowForce2.png
.. |image19| image:: ../Resources/Images/MultiBody/Forces/ArrowTorque2.png
.. |image20| image:: ../Resources/Images/MultiBody/Forces/LineForceWithMass.png
.. |image21| image:: ../Resources/Images/MultiBody/Forces/LineForceWithTwoMasses.png
.. |image22| image:: ../Resources/Images/MultiBody/Forces/Spring2.png
.. |image23| image:: ../Resources/Images/MultiBody/Forces/Damper2.png
.. |Modelica.Mechanics.MultiBody.Forces.WorldForce| image:: Modelica.Mechanics.MultiBody.Forces.WorldForceS.png
.. |Modelica.Mechanics.MultiBody.Forces.WorldTorque| image:: Modelica.Mechanics.MultiBody.Forces.WorldTorqueS.png
.. |Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorque| image:: Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorqueS.png
.. |Modelica.Mechanics.MultiBody.Forces.Force| image:: Modelica.Mechanics.MultiBody.Forces.ForceS.png
.. |Modelica.Mechanics.MultiBody.Forces.Torque| image:: Modelica.Mechanics.MultiBody.Forces.TorqueS.png
.. |Modelica.Mechanics.MultiBody.Forces.ForceAndTorque| image:: Modelica.Mechanics.MultiBody.Forces.ForceAndTorqueS.png
.. |Modelica.Mechanics.MultiBody.Forces.LineForceWithMass| image:: Modelica.Mechanics.MultiBody.Forces.LineForceWithMassS.png
.. |Modelica.Mechanics.MultiBody.Forces.LineForceWithTwoMasses| image:: Modelica.Mechanics.MultiBody.Forces.LineForceWithTwoMassesS.png
.. |Modelica.Mechanics.MultiBody.Forces.Spring| image:: Modelica.Mechanics.MultiBody.Forces.SpringS.png
.. |Modelica.Mechanics.MultiBody.Forces.Damper| image:: Modelica.Mechanics.MultiBody.Forces.DamperS.png
.. |Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel| image:: Modelica.Mechanics.MultiBody.Forces.SpringDamperParallelS.png
.. |Modelica.Mechanics.MultiBody.Forces.SpringDamperSeries| image:: Modelica.Mechanics.MultiBody.Forces.SpringDamperSeriesS.png
.. |Modelica.Mechanics.MultiBody.Forces.Internal| image:: Modelica.Mechanics.MultiBody.Forces.InternalS.png
.. |image37| image:: Modelica.Mechanics.MultiBody.Forces.WorldForceS.png
.. |image38| image:: Modelica.Mechanics.MultiBody.Forces.WorldTorqueS.png
.. |image39| image:: Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorqueS.png
.. |image40| image:: Modelica.Mechanics.MultiBody.Forces.ForceS.png
.. |image41| image:: Modelica.Mechanics.MultiBody.Forces.TorqueS.png
.. |image42| image:: Modelica.Mechanics.MultiBody.Forces.ForceAndTorqueS.png
.. |image43| image:: Modelica.Mechanics.MultiBody.Forces.LineForceWithMassS.png
.. |image44| image:: Modelica.Mechanics.MultiBody.Forces.LineForceWithTwoMassesS.png
.. |image45| image:: Modelica.Mechanics.MultiBody.Forces.SpringS.png
.. |image46| image:: Modelica.Mechanics.MultiBody.Forces.DamperS.png
.. |image47| image:: Modelica.Mechanics.MultiBody.Forces.SpringDamperParallelS.png
.. |image48| image:: Modelica.Mechanics.MultiBody.Forces.SpringDamperSeriesS.png
.. |image49| image:: Modelica.Mechanics.MultiBody.Forces.InternalS.png
.. |image50| image:: Modelica.Mechanics.MultiBody.Forces.WorldForceI.png
.. |image51| image:: Modelica.Mechanics.MultiBody.Forces.WorldTorqueI.png
.. |image52| image:: Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorqueI.png
.. |image53| image:: Modelica.Mechanics.MultiBody.Forces.ForceI.png
.. |image54| image:: Modelica.Mechanics.MultiBody.Forces.TorqueI.png
.. |image55| image:: Modelica.Mechanics.MultiBody.Forces.ForceAndTorqueI.png
.. |image56| image:: Modelica.Mechanics.MultiBody.Forces.LineForceWithMassI.png
.. |image57| image:: Modelica.Mechanics.MultiBody.Forces.LineForceWithTwoMassesI.png
.. |image58| image:: Modelica.Mechanics.MultiBody.Forces.SpringI.png
.. |image59| image:: Modelica.Mechanics.MultiBody.Forces.DamperI.png
.. |image60| image:: Modelica.Mechanics.MultiBody.Forces.SpringDamperParallelI.png
.. |image61| image:: Modelica.Mechanics.MultiBody.Forces.SpringDamperSeriesI.png
