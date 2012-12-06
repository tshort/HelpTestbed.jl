==================================
Modelica.Mechanics.MultiBody.Parts
==================================

`Modelica.Mechanics.MultiBody <Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody>`_.Parts
------------------------------------------------------------------------------------------------------

**Rigid components such as bodies with mass and inertia and massless
rods**

Information
~~~~~~~~~~~

::

Package **Parts** contains **rigid components** of a multi-body system.
These components may be used to build up more complicated structures.
For example, a part may be built up of a "Body" and of several
"FixedTranslation" components.

Content
^^^^^^^

+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ***Model***                                                                                                         | ***Description***                                                                                                                                                                                |
+=====================================================================================================================+==================================================================================================================================================================================================+
| `Fixed <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Fixed>`_                         | Frame fixed in world frame at a given position. It is visualized with a shape, see **shapeType** below (the frames on the two sides do not belong to the component):                             |
|                                                                                                                     |  |image9|                                                                                                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `FixedTranslation <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.FixedTranslation>`_   | Fixed translation of frame\_b with respect to frame\_a. It is visualized with a shape, see **shapeType** below (the frames on the two sides do not belong to the component):                     |
|                                                                                                                     |  |image10|                                                                                                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `FixedRotation <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.FixedRotation>`_         | Fixed translation and fixed rotation of frame\_b with respect to frame\_a It is visualized with a shape, see **shapeType** below (the frames on the two sides do not belong to the component):   |
|                                                                                                                     |  |image11|                                                                                                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Body <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Body>`_                           | Rigid body with mass, inertia tensor and one frame connector. It is visualized with a cylinder and a sphere at the center of mass:                                                               |
|                                                                                                                     |  |image12|                                                                                                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `BodyShape <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.BodyShape>`_                 | Rigid body with mass, inertia tensor, different shapes (see **shapeType** below) for animation, and two frame connectors:                                                                        |
|                                                                                                                     |  |image13|                                                                                                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Fixed BodyBox <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Fixed>`_                 | Rigid body with box shape (mass and animation properties are computed from box data and from density):                                                                                           |
|                                                                                                                     |  |image14|                                                                                                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `BodyCylinder <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.BodyCylinder>`_           | Rigid body with cylinder shape (mass and animation properties are computed from cylinder data and from density):                                                                                 |
|                                                                                                                     |  |image15|                                                                                                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `PointMass <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.PointMass>`_                 | Rigid body where inertia tensor and rotation is neglected:                                                                                                                                       |
|                                                                                                                     |  |image16|                                                                                                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Mounting1D <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Mounting1D>`_               | Propagate 1-dim. support torque to 3-dim. system                                                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `Rotor1D <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Rotor1D>`_                     | 1D inertia attachable on 3-dim. bodies (without neglecting dynamic effects)                                                                                                                      |
|                                                                                                                     |  |image17|                                                                                                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `BevelGear1D <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.BevelGear1D>`_             | 1D gearbox with arbitrary shaft directions (3D bearing frame)                                                                                                                                    |
+---------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Components **Fixed**, **FixedTranslation**, **FixedRotation** and
**BodyShape** are visualized according to parameter **shapeType**, that
may have the following values (e.g., shapeType = "box"):

.. figure:: ../Resources/Images/MultiBody/FixedShape.png
   :align: center
   :alt: model Visualizers.FixedShape

   model Visualizers.FixedShape
All the details of the visualization shape parameters are given in
`Visualizers.FixedShape <Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers.FixedShape>`_

Colors in all animation parts are defined via parameter **color**. This
is an Integer vector with 3 elements, {r, g, b}, and specifies the color
of the shape. {r,g,b} are the "red", "green" and "blue" color parts,
given in the ranges 0 .. 255, respectively. The predefined type
**MultiBody.Types.Color** contains a menu definition of the colors used
in the MultiBody library (this will be replaced by a color editor).

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                      | Description                                                                                                                                                 |
+===========================================================================================================================================================================+=============================================================================================================================================================+
| |image31| `Fixed <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Fixed>`_                                                                     | Frame fixed in the world frame at a given position                                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image32| `FixedTranslation <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.FixedTranslation>`_                                               | Fixed translation of frame\_b with respect to frame\_a                                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image33| `FixedRotation <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.FixedRotation>`_                                                     | Fixed translation followed by a fixed rotation of frame\_b with respect to frame\_a                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image34| `Body <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Body>`_                                                                       | Rigid body with mass, inertia tensor and one frame connector (12 potential states)                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image35| `BodyShape <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.BodyShape>`_                                                             | Rigid body with mass, inertia tensor, different shapes for animation, and two frame connectors (12 potential states)                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image36| `BodyBox <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.BodyBox>`_                                                                 | Rigid body with box shape. Mass and animation properties are computed from box data and density (12 potential states)                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image37| `BodyCylinder <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.BodyCylinder>`_                                                       | Rigid body with cylinder shape. Mass and animation properties are computed from cylinder data and density (12 potential states)                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image38| `PointMass <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.PointMass>`_                                                             | Rigid body where body rotation and inertia tensor is neglected (6 potential states)                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image39| `Mounting1D <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Mounting1D>`_                                                           | Propagate 1-dim. support torque to 3-dim. system (provided world.driveTrainMechanics3D=true)                                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image40| `Rotor1D <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Rotor1D>`_                                                                 | 1D inertia attachable on 3-dim. bodies (3D dynamic effects are taken into account if world.driveTrainMechanics3D=true)                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image41| `BevelGear1D <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.BevelGear1D>`_                                                         | 1D gearbox with arbitrary shaft directions and 3-dim. bearing frame (3D dynamic effects are taken into account provided world.driveTrainMechanics3D=true)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image42| `RollingWheel <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.RollingWheel>`_                                                       | Ideal rolling wheel on flat surface z=0 (5 positional, 3 velocity degrees of freedom)                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image43| `RollingWheelSet <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.RollingWheelSet>`_                                                 | Ideal rolling wheel set consisting of two ideal rolling wheels connected together by an axis                                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

|image44| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.Fixed
----------------------------------------------------------------------------------------------------------------------------------

**Frame fixed in the world frame at a given position**

.. figure:: Modelica.Mechanics.MultiBody.Parts.FixedD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.Fixed

   Modelica.Mechanics.MultiBody.Parts.Fixed

Information
~~~~~~~~~~~

::

Element consisting of a frame (frame\_b) that is fixed in the world
frame at a given position defined by parameter vector **r** (vector from
origin of world frame to frame\_b, resolved in the world frame).

By default, this component is visualized by a cylinder connecting the
world frame and frame\_b of this components, as shown in the figure
below. Note, that the visualized world frame on the left side and
Fixed.frame\_b on the right side are not part of the component animation
and that the animation may be switched off via parameter animation =
**false**.

.. figure:: ../Resources/Images/MultiBody/Fixed.png
   :align: center
   :alt: Parts.Fixed

   Parts.Fixed
::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                         |
+===========================================================================================================================+=======================+===================================+=====================================================================================+
| Boolean                                                                                                                   | animation             | true                              | = true, if animation shall be enabled                                               |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r[3]                  | {0,0,0}                           | Position vector from world frame to frame\_b, resolved in world frame [m]           |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `ShapeType <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeType>`_                       | shapeType             | "cylinder"                        | Type of shape                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_shape[3]           | {0,0,0}                           | Vector from world frame to shape origin, resolved in world frame [m]                |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | lengthDirection[3]    | r - r\_shape                      | Vector in length direction of shape, resolved in world frame [m]                    |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | widthDirection[3]     | {0,1,0}                           | Vector in width direction of shape, resolved in world frame [m]                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | length                | Modelica.Math.Vectors.length...   | Length of shape [m]                                                                 |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | width                 | length/world.defaultWidthFra...   | Width of shape [m]                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | height                | width                             | Height of shape [m]                                                                 |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `ShapeExtra <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeExtra>`_                     | extra                 | 0.0                               | Additional parameter for cone, pipe etc. (see docu of Visualizers.Advanced.Shape)   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                 | Modelica.Mechanics.MultiBody...   | Color of shape                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------+
| Type                                                                                                         | Name       | Description                                  |
+==============================================================================================================+============+==============================================+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_   | frame\_b   | Coordinate system fixed in the world frame   |
+--------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Fixed "Frame fixed in the world frame at a given position"
      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;

      Interfaces.Frame_b frame_b "Coordinate system fixed in the world frame";

      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter SI.Position r[3]={0,0,0} 
        "Position vector from world frame to frame_b, resolved in world frame";
      parameter Types.ShapeType shapeType="cylinder" " Type of shape";
      parameter SI.Position r_shape[3]={0,0,0} 
        " Vector from world frame to shape origin, resolved in world frame";
      parameter SI.Position lengthDirection[3]=r - r_shape 
        " Vector in length direction of shape, resolved in world frame";
      parameter SI.Position widthDirection[3]={0,1,0} 
        " Vector in width direction of shape, resolved in world frame";
      parameter SI.Length length=Modelica.Math.Vectors.length(
                                               r - r_shape) " Length of shape";
      parameter SI.Distance width=length/world.defaultWidthFraction 
        " Width of shape";
      parameter SI.Distance height=width " Height of shape";
      parameter Types.ShapeExtra extra=0.0 
        " Additional parameter for cone, pipe etc. (see docu of Visualizers.Advanced.Shape)";
      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.RodColor 
        " Color of shape";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
      Visualizers.Advanced.Shape shape(
        shapeType=shapeType,
        color=color,
        specularCoefficient=specularCoefficient,
        length=length,
        width=width,
        height=height,
        lengthDirection=lengthDirection,
        widthDirection=widthDirection,
        extra=extra,
        r_shape=r_shape,
        r=zeros(3),
        R=Frames.nullRotation()) if world.enableAnimation and animation;
    equation 
      Connections.root(frame_b.R);
      frame_b.r_0 = r;
      frame_b.R = Frames.nullRotation();
    end Fixed;

--------------

|image45| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.FixedTranslation
---------------------------------------------------------------------------------------------------------------------------------------------

**Fixed translation of frame\_b with respect to frame\_a**

.. figure:: Modelica.Mechanics.MultiBody.Parts.FixedTranslationD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.FixedTranslation

   Modelica.Mechanics.MultiBody.Parts.FixedTranslation

Information
~~~~~~~~~~~

::

Component for a **fixed translation** of frame\_b with respect to
frame\_a, i.e., the relationship between connectors frame\_a and
frame\_b remains constant and frame\_a is always **parallel** to
frame\_b.

By default, this component is visualized by a cylinder connecting
frame\_a and frame\_b, as shown in the figure below. Note, that the two
visualized frames are not part of the component animation and that the
animation may be switched off via parameter animation = **false**.

.. figure:: ../Resources/Images/MultiBody/FixedTranslation.png
   :align: center
   :alt: Parts.FixedTranslation

   Parts.FixedTranslation
::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                             |
+===========================================================================================================================+=======================+===================================+=========================================================================================+
| Boolean                                                                                                                   | animation             | true                              | = true, if animation shall be enabled                                                   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r[3]                  |                                   | Vector from frame\_a to frame\_b resolved in frame\_a [m]                               |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `ShapeType <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeType>`_                       | shapeType             | "cylinder"                        | Type of shape                                                                           |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_shape[3]           | {0,0,0}                           | Vector from frame\_a to shape origin, resolved in frame\_a [m]                          |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | lengthDirection       | r - r\_shape                      | Vector in length direction of shape, resolved in frame\_a [1]                           |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | widthDirection        | {0,1,0}                           | Vector in width direction of shape, resolved in frame\_a [1]                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | length                | Modelica.Math.Vectors.length...   | Length of shape [m]                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | width                 | length/world.defaultWidthFra...   | Width of shape [m]                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | height                | width                             | Height of shape. [m]                                                                    |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `ShapeExtra <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeExtra>`_                     | extra                 | 0.0                               | Additional parameter depending on shapeType (see docu of Visualizers.Advanced.Shape).   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                 | Modelica.Mechanics.MultiBody...   | Color of shape                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+

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

    model FixedTranslation 
      "Fixed translation of frame_b with respect to frame_a"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the component with one cut-force and cut-torque";

      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter SI.Position r[3](start={0,0,0}) 
        "Vector from frame_a to frame_b resolved in frame_a";
      parameter Types.ShapeType shapeType="cylinder" " Type of shape";
      parameter SI.Position r_shape[3]={0,0,0} 
        " Vector from frame_a to shape origin, resolved in frame_a";
      parameter Types.Axis lengthDirection=r - r_shape 
        " Vector in length direction of shape, resolved in frame_a";
      parameter Types.Axis widthDirection={0,1,0} 
        " Vector in width direction of shape, resolved in frame_a";
      parameter SI.Length length=Modelica.Math.Vectors.length(
                                               r - r_shape) " Length of shape";
      parameter SI.Distance width=length/world.defaultWidthFraction 
        " Width of shape";
      parameter SI.Distance height=width " Height of shape.";
      parameter Types.ShapeExtra extra=0.0 
        " Additional parameter depending on shapeType (see docu of Visualizers.Advanced.Shape).";
      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.RodColor 
        " Color of shape";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
      Visualizers.Advanced.Shape shape(
        shapeType=shapeType,
        color=color,
        specularCoefficient=specularCoefficient,
        r_shape=r_shape,
        lengthDirection=lengthDirection,
        widthDirection=widthDirection,
        length=length,
        width=width,
        height=height,
        extra=extra,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
    equation 
      Connections.branch(frame_a.R, frame_b.R);
      assert(cardinality(frame_a) > 0 or cardinality(frame_b) > 0,
        "Neither connector frame_a nor frame_b of FixedTranslation object is connected");

      frame_b.r_0 = frame_a.r_0 + Frames.resolve1(frame_a.R, r);
      frame_b.R = frame_a.R;

      /* Force and torque balance */
      zeros(3) = frame_a.f + frame_b.f;
      zeros(3) = frame_a.t + frame_b.t + cross(r, frame_b.f);
    end FixedTranslation;

--------------

|image46| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.FixedRotation
------------------------------------------------------------------------------------------------------------------------------------------

**Fixed translation followed by a fixed rotation of frame\_b with
respect to frame\_a**

.. figure:: Modelica.Mechanics.MultiBody.Parts.FixedRotationD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.FixedRotation

   Modelica.Mechanics.MultiBody.Parts.FixedRotation

Information
~~~~~~~~~~~

::

Component for a **fixed translation** and **fixed rotation** of frame\_b
with respect to frame\_a, i.e., the relationship between connectors
frame\_a and frame\_b remains constant. There are several possibilities
to define the orientation of frame\_b with respect to frame\_a:

-  **Planar rotation** along axis 'n' (that is fixed and resolved in
   frame\_a) with a fixed angle 'angle'.
-  **Vectors n\_x** and **n\_y** that are directed along the
   corresponding axes direction of frame\_b and are resolved in frame\_a
   (if n\_y is not orthogonal to n\_x, the y-axis of frame\_b is
   selected such that it is orthogonal to n\_x and in the plane of n\_x
   and n\_y).
-  **Sequence** of **three planar axes rotations**. For example,
   "sequence = {1,2,3}" and "angles = {90, 45, -90}" means to rotate
   frame\_a around the x axis with 90 degrees, around the new y axis
   with 45 degrees and around the new z axis around -90 degrees to
   arrive at frame\_b. Note, that sequence={1,2,3} is the Cardan angle
   sequence and sequence = {3,1,3} is the Euler angle sequence.

By default, this component is visualized by a cylinder connecting
frame\_a and frame\_b, as shown in the figure below. In this figure
frame\_b is rotated along the z-axis of frame\_a with 60 degree. Note,
that the two visualized frames are not part of the component animation
and that the animation may be switched off via parameter animation =
**false**.

.. figure:: ../Resources/Images/MultiBody/FixedRotation.png
   :align: center
   :alt: Parts.FixedRotation

   Parts.FixedRotation
::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                             |
+===========================================================================================================================+=======================+===================================+=========================================================================================+
| Boolean                                                                                                                   | animation             | true                              | = true, if animation shall be enabled                                                   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r[3]                  | {0,0,0}                           | Vector from frame\_a to frame\_b resolved in frame\_a [m]                               |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `RotationTypes <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationTypes>`_               | rotationType          | Modelica.Mechanics.MultiBody...   | Type of rotation description                                                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| if rotationType = RotationAxis                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | n                     | {1,0,0}                           | Axis of rotation in frame\_a (= same as in frame\_b) [1]                                |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Angle\_deg <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Angle_deg>`_            | angle                 | 0                                 | Angle to rotate frame\_a around axis n into frame\_b [deg]                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| if rotationType = TwoAxesVectors                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | n\_x                  | {1,0,0}                           | Vector along x-axis of frame\_b resolved in frame\_a [1]                                |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | n\_y                  | {0,1,0}                           | Vector along y-axis of frame\_b resolved in frame\_a [1]                                |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| if rotationType = PlanarRotationSequence                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `RotationSequence <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationSequence>`_         | sequence              | {1,2,3}                           | Sequence of rotations                                                                   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Angle\_deg <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Angle_deg>`_            | angles[3]             | {0,0,0}                           | Rotation angles around the axes defined in 'sequence' [deg]                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `ShapeType <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeType>`_                       | shapeType             | "cylinder"                        | Type of shape                                                                           |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_shape[3]           | {0,0,0}                           | Vector from frame\_a to shape origin, resolved in frame\_a [m]                          |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | lengthDirection       | r - r\_shape                      | Vector in length direction of shape, resolved in frame\_a [1]                           |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | widthDirection        | {0,1,0}                           | Vector in width direction of shape, resolved in frame\_a [1]                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | length                | Modelica.Math.Vectors.length...   | Length of shape [m]                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | width                 | length/world.defaultWidthFra...   | Width of shape [m]                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | height                | width                             | Height of shape. [m]                                                                    |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `ShapeExtra <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeExtra>`_                     | extra                 | 0.0                               | Additional parameter depending on shapeType (see docu of Visualizers.Advanced.Shape).   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                 | Modelica.Mechanics.MultiBody...   | Color of shape                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------------------------------------+

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

    model FixedRotation 
      "Fixed translation followed by a fixed rotation of frame_b with respect to frame_a"

      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types;
      import SI = Modelica.SIunits;
      import Cv = Modelica.SIunits.Conversions;
      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the component with one cut-force and cut-torque";

      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter SI.Position r[3]={0,0,0} 
        "Vector from frame_a to frame_b resolved in frame_a";
      parameter Modelica.Mechanics.MultiBody.Types.RotationTypes rotationType=
                Modelica.Mechanics.MultiBody.Types.RotationTypes.RotationAxis 
        "Type of rotation description";
      parameter Types.Axis n={1,0,0} 
        " Axis of rotation in frame_a (= same as in frame_b)";
      parameter Cv.NonSIunits.Angle_deg angle=0 
        " Angle to rotate frame_a around axis n into frame_b";

      parameter Types.Axis n_x={1,0,0} 
        " Vector along x-axis of frame_b resolved in frame_a";
      parameter Types.Axis n_y={0,1,0} 
        " Vector along y-axis of frame_b resolved in frame_a";

      parameter Types.RotationSequence sequence(
        min={1,1,1},
        max={3,3,3}) = {1,2,3} " Sequence of rotations";
      parameter Cv.NonSIunits.Angle_deg angles[3]={0,0,0} 
        " Rotation angles around the axes defined in 'sequence'";
      parameter Types.ShapeType shapeType="cylinder" " Type of shape";
      parameter SI.Position r_shape[3]={0,0,0} 
        " Vector from frame_a to shape origin, resolved in frame_a";
      parameter Types.Axis lengthDirection=r - r_shape 
        " Vector in length direction of shape, resolved in frame_a";
      parameter Types.Axis widthDirection={0,1,0} 
        " Vector in width direction of shape, resolved in frame_a";
      parameter SI.Length length=Modelica.Math.Vectors.length(
                                               r - r_shape) " Length of shape";
      parameter SI.Distance width=length/world.defaultWidthFraction 
        " Width of shape";
      parameter SI.Distance height=width " Height of shape.";
      parameter Types.ShapeExtra extra=0.0 
        " Additional parameter depending on shapeType (see docu of Visualizers.Advanced.Shape).";
    /*
      parameter Boolean checkTotalPower=false
        "= true, if total power flowing into this component shall be determined (must be zero)"
        annotation (Dialog(tab="Advanced"));
    */

      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.RodColor 
        " Color of shape";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      final parameter Frames.Orientation R_rel=if rotationType == 1 then 
          Frames.planarRotation(Modelica.Math.Vectors.normalize(
                                                 n,0.0), Cv.from_deg(angle), 0) else 
          if rotationType == 2 then Frames.from_nxy(n_x, n_y) else 
          Frames.axesRotations(sequence, Cv.from_deg(angles), zeros(3)) 
        "Fixed rotation object from frame_a to frame_b";
    /*
      SI.Power totalPower
        "Total power flowing into this element, if checkTotalPower=true (otherwise dummy)";
    */
    protected 
      outer Modelica.Mechanics.MultiBody.World world;

      /*
      parameter Frames.Orientation R_rel_inv=
          Frames.inverseRotation(R_rel)
    */
      parameter Frames.Orientation R_rel_inv=Frames.from_T(transpose(R_rel.T),
          zeros(3)) "Inverse of R_rel (rotate from frame_b to frame_a)";
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape shape(
        shapeType=shapeType,
        color=color,
        specularCoefficient=specularCoefficient,
        r_shape=r_shape,
        lengthDirection=lengthDirection,
        widthDirection=widthDirection,
        length=length,
        width=width,
        height=height,
        extra=extra,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;

    equation 
      Connections.branch(frame_a.R, frame_b.R);
      assert(cardinality(frame_a) > 0 or cardinality(frame_b) > 0,
        "Neither connector frame_a nor frame_b of FixedRotation object is connected");

      /* Relationships between quantities of frame_a and frame_b */
      frame_b.r_0 = frame_a.r_0 + Frames.resolve1(frame_a.R, r);
      if rooted(frame_a.R) then
        frame_b.R = Frames.absoluteRotation(frame_a.R, R_rel);
        zeros(3) = frame_a.f + Frames.resolve1(R_rel, frame_b.f);
        zeros(3) = frame_a.t + Frames.resolve1(R_rel, frame_b.t) - cross(r, frame_a.f);
      else
        frame_a.R = Frames.absoluteRotation(frame_b.R, R_rel_inv);
        zeros(3) = frame_b.f + Frames.resolve1(R_rel_inv, frame_a.f);
        zeros(3) = frame_b.t + Frames.resolve1(R_rel_inv, frame_a.t) + cross(Frames.resolve1(R_rel_inv,r), frame_b.f);
      end if;

    /*
      if checkTotalPower then
        totalPower = frame_a.f*Frames.resolve2(frame_a.R, der(frame_a.r_0)) +
                     frame_b.f*Frames.resolve2(frame_b.R, der(frame_b.r_0)) +
                     frame_a.t*Frames.angularVelocity2(frame_a.R) +
                     frame_b.t*Frames.angularVelocity2(frame_b.R);
      else
        totalPower = 0;
      end if;
    */
    end FixedRotation;

--------------

|image47| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.Body
---------------------------------------------------------------------------------------------------------------------------------

**Rigid body with mass, inertia tensor and one frame connector (12
potential states)**

.. figure:: Modelica.Mechanics.MultiBody.Parts.BodyD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.Body

   Modelica.Mechanics.MultiBody.Parts.Body

Information
~~~~~~~~~~~

::

**Rigid body** with mass and inertia tensor. All parameter vectors have
to be resolved in frame\_a. The **inertia tensor** has to be defined
with respect to a coordinate system that is parallel to frame\_a with
the origin at the center of mass of the body.

By default, this component is visualized by a **cylinder** located
between frame\_a and the center of mass and by a **sphere** that has its
center at the center of mass. If the cylinder length is smaller as the
radius of the sphere, e.g., since frame\_a is located at the center of
mass, the cylinder is not displayed. Note, that the animation may be
switched off via parameter animation = **false**.

.. figure:: ../Resources/Images/MultiBody/Body.png
   :align: center
   :alt: Parts.Body

   Parts.Body
**States of Body Components**

Every body has potential states. If possible a tool will select the
states of joints and not the states of bodies because this is usually
the most efficient choice. In this case the position, orientation,
velocity and angular velocity of frame\_a of the body will be computed
by the component that is connected to frame\_a. However, if a body is
moving freely in space, variables of the body have to be used as states.
The potential states of the body are:

-  The **position vector** frame\_a.r\_0 from the origin of the world
   frame to the origin of frame\_a of the body, resolved in the world
   frame and the **absolute velocity** v\_0 of the origin of frame\_a,
   resolved in the world frame (= der(frame\_a.r\_0)).
-  If parameter **useQuaternions** in the "Advanced" menu is **true**
   (this is the default), then **4 quaternions** are potential states.
   Additionally, the coordinates of the absolute angular velocity vector
   of the body are 3 potential states.
    If **useQuaternions** in the "Advanced" menu is **false**, then **3
   angles** and the derivatives of these angles are potential states.
   The orientation of frame\_a is computed by rotating the world frame
   along the axes defined in parameter vector "sequence\_angleStates"
   (default = {1,2,3}, i.e., the Cardan angle sequence) around the
   angles used as potential states. For example, the default is to
   rotate the x-axis of the world frame around angles[1], the new y-axis
   around angles[2] and the new z-axis around angles[3], arriving at
   frame\_a.

The quaternions have the slight disadvantage that there is a non-linear
constraint equation between the 4 quaternions. Therefore, at least one
non-linear equation has to be solved during simulation. A tool might,
however, analytically solve this simple constraint equation. Using the 3
angles as states has the disadvantage that there is a singular
configuration in which a division by zero will occur. If it is possible
to determine in advance for an application class that this singular
configuration is outside of the operating region, the 3 angles might be
used as potential states by setting **useQuaternions** = **false**.

In text books about 3-dimensional mechanics often 3 angles and the
angular velocity are used as states. This is not the case here, since 3
angles and their derivatives are used as potential states (if
useQuaternions = false). The reason is that for real-time simulation the
discretization formula of the integrator might be "inlined" and solved
together with the body equations. By appropriate symbolic transformation
the performance is drastically increased if angles and their derivatives
are used as states, instead of angles and the angular velocity.

Whether or not variables of the body are used as states is usually
automatically selected by the Modelica translator. If parameter
**enforceStates** is set to **true** in the "Advanced" menu, then body
variables are forced to be used as states according to the setting of
parameters "useQuaternions" and "sequence\_angleStates".

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                    | Default                           | Description                                                                                              |
+===========================================================================================================================+=========================+===================================+==========================================================================================================+
| Boolean                                                                                                                   | animation               | true                              | = true, if animation shall be enabled (show cylinder and sphere)                                         |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_CM[3]                |                                   | Vector from frame\_a to center of mass, resolved in frame\_a [m]                                         |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                                                     | m                       |                                   | Mass of rigid body [kg]                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Inertia tensor (resolved in center of mass, parallel to frame\_a)                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_11                   | 0.001                             | (1,1) element of inertia tensor [kg.m2]                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_22                   | 0.001                             | (2,2) element of inertia tensor [kg.m2]                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_33                   | 0.001                             | (3,3) element of inertia tensor [kg.m2]                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_21                   | 0                                 | (2,1) element of inertia tensor [kg.m2]                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_31                   | 0                                 | (3,1) element of inertia tensor [kg.m2]                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_32                   | 0                                 | (3,2) element of inertia tensor [kg.m2]                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| **Initialization**                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_0.start[3]           | {0,0,0}                           | Position vector from origin of world frame to origin of frame\_a [m]                                     |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_                                                             | v\_0.start[3]           | {0,0,0}                           | Absolute velocity of frame\_a, resolved in world frame (= der(r\_0)) [m/s]                               |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Acceleration <Modelica_SIunits.html#Modelica.SIunits.Acceleration>`_                                                     | a\_0.start[3]           | {0,0,0}                           | Absolute acceleration of frame\_a resolved in world frame (= der(v\_0)) [m/s2]                           |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | angles\_fixed           | false                             | = true, if angles\_start are used as initial values, else as guess values                                |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                                                   | angles\_start[3]        | {0,0,0}                           | Initial values of angles to rotate frame\_a around 'sequence\_start' axes into frame\_b [rad]            |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `RotationSequence <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationSequence>`_         | sequence\_start         | {1,2,3}                           | Sequence of rotations to rotate frame\_a into frame\_b at initial time                                   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | w\_0\_fixed             | false                             | = true, if w\_0\_start are used as initial values, else as guess values                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                               | w\_0\_start[3]          | {0,0,0}                           | Initial or guess values of angular velocity of frame\_a resolved in world frame [rad/s]                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | z\_0\_fixed             | false                             | = true, if z\_0\_start are used as initial values, else as guess values                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `AngularAcceleration <Modelica_SIunits.html#Modelica.SIunits.AngularAcceleration>`_                                       | z\_0\_start[3]          | {0,0,0}                           | Initial values of angular acceleration z\_0 = der(w\_0) [rad/s2]                                         |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | sphereDiameter          | world.defaultBodyDiameter         | Diameter of sphere [m]                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | sphereColor             | Modelica.Mechanics.MultiBody...   | Color of sphere                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | cylinderDiameter        | sphereDiameter/Types.Default...   | Diameter of cylinder [m]                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | cylinderColor           | sphereColor                       | Color of cylinder                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient     | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | enforceStates           | false                             | = true, if absolute variables of body object shall be used as states (StateSelect.always)                |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | useQuaternions          | true                              | = true, if quaternions shall be used as potential states otherwise use 3 angles as potential states      |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `RotationSequence <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationSequence>`_         | sequence\_angleStates   | {1,2,3}                           | Sequence of rotations to rotate world frame into frame\_a around the 3 angles used as potential states   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+
| Type                                                                                                         | Name       | Description                       |
+==============================================================================================================+============+===================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system fixed at body   |
+--------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Body 
      "Rigid body with mass, inertia tensor and one frame connector (12 potential states)"

      import SI = Modelica.SIunits;
      import C = Modelica.Constants;
      import Modelica.Math.*;
      import Modelica.Mechanics.MultiBody.Types;
      import Modelica.Mechanics.MultiBody.Frames;
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
        "Coordinate system fixed at body";
      parameter Boolean animation=true 
        "= true, if animation shall be enabled (show cylinder and sphere)";
      parameter SI.Position r_CM[3](start={0,0,0}) 
        "Vector from frame_a to center of mass, resolved in frame_a";
      parameter SI.Mass m(min=0, start = 1) "Mass of rigid body";
      parameter SI.Inertia I_11(min=0) = 0.001 " (1,1) element of inertia tensor";
      parameter SI.Inertia I_22(min=0) = 0.001 " (2,2) element of inertia tensor";
      parameter SI.Inertia I_33(min=0) = 0.001 " (3,3) element of inertia tensor";
      parameter SI.Inertia I_21(min=-C.inf)=0 " (2,1) element of inertia tensor";
      parameter SI.Inertia I_31(min=-C.inf)=0 " (3,1) element of inertia tensor";
      parameter SI.Inertia I_32(min=-C.inf)=0 " (3,2) element of inertia tensor";

      SI.Position r_0[3](start={0,0,0}, each stateSelect=if enforceStates then 
                  StateSelect.always else StateSelect.avoid) 
        "Position vector from origin of world frame to origin of frame_a";
      SI.Velocity v_0[3](start={0,0,0}, each stateSelect=if enforceStates then StateSelect.always else 
                  StateSelect.avoid) 
        "Absolute velocity of frame_a, resolved in world frame (= der(r_0))";
      SI.Acceleration a_0[3](start={0,0,0}) 
        "Absolute acceleration of frame_a resolved in world frame (= der(v_0))";

      parameter Boolean angles_fixed = false 
        "= true, if angles_start are used as initial values, else as guess values";
      parameter SI.Angle angles_start[3]={0,0,0} 
        "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b";
      parameter Types.RotationSequence sequence_start={1,2,3} 
        "Sequence of rotations to rotate frame_a into frame_b at initial time";

      parameter Boolean w_0_fixed = false 
        "= true, if w_0_start are used as initial values, else as guess values";
      parameter SI.AngularVelocity w_0_start[3]={0,0,0} 
        "Initial or guess values of angular velocity of frame_a resolved in world frame";

      parameter Boolean z_0_fixed = false 
        "= true, if z_0_start are used as initial values, else as guess values";
      parameter SI.AngularAcceleration z_0_start[3]={0,0,0} 
        "Initial values of angular acceleration z_0 = der(w_0)";

      parameter SI.Diameter sphereDiameter=world.defaultBodyDiameter 
        "Diameter of sphere";
      input Types.Color sphereColor=Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor 
        "Color of sphere";
      parameter SI.Diameter cylinderDiameter=sphereDiameter/Types.Defaults.
          BodyCylinderDiameterFraction "Diameter of cylinder";
      input Types.Color cylinderColor=sphereColor "Color of cylinder";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      parameter Boolean enforceStates=false 
        " = true, if absolute variables of body object shall be used as states (StateSelect.always)";
      parameter Boolean useQuaternions=true 
        " = true, if quaternions shall be used as potential states otherwise use 3 angles as potential states";
      parameter Types.RotationSequence sequence_angleStates={1,2,3} 
        " Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states";

      final parameter SI.Inertia I[3, 3]=[I_11, I_21, I_31; I_21, I_22, I_32;
          I_31, I_32, I_33] "inertia tensor";
      final parameter Frames.Orientation R_start=Modelica.Mechanics.MultiBody.Frames.axesRotations(
          sequence_start, angles_start, zeros(3)) 
        "Orientation object from world frame to frame_a at initial time";
      final parameter SI.AngularAcceleration z_a_start[3]=Frames.resolve2(R_start, z_0_start) 
        "Initial values of angular acceleration z_a = der(w_a), i.e., time derivative of angular velocity resolved in frame_a";

      SI.AngularVelocity w_a[3](start=Frames.resolve2(R_start, w_0_start),
                                fixed=fill(w_0_fixed,3),
                                each stateSelect=if enforceStates then (if useQuaternions then 
                                StateSelect.always else StateSelect.never) else StateSelect.avoid) 
        "Absolute angular velocity of frame_a resolved in frame_a";
      SI.AngularAcceleration z_a[3](start=Frames.resolve2(R_start, z_0_start),fixed=fill(z_0_fixed,3)) 
        "Absolute angular acceleration of frame_a resolved in frame_a";
      SI.Acceleration g_0[3] "Gravity acceleration resolved in world frame";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;

      // Declarations for quaternions (dummies, if quaternions are not used)
      parameter Frames.Quaternions.Orientation Q_start=Frames.to_Q(R_start) 
        "Quaternion orientation object from world frame to frame_a at initial time";
      Frames.Quaternions.Orientation Q(start=Q_start, each stateSelect=if 
            enforceStates then (if useQuaternions then StateSelect.prefer else 
            StateSelect.never) else StateSelect.avoid) 
        "Quaternion orientation object from world frame to frame_a (dummy value, if quaternions are not used as states)";

      // Declaration for 3 angles
      parameter SI.Angle phi_start[3]=if sequence_start[1] ==
          sequence_angleStates[1] and sequence_start[2] == sequence_angleStates[2]
           and sequence_start[3] == sequence_angleStates[3] then angles_start else 
           Frames.axesRotationsAngles(R_start, sequence_angleStates) 
        "Potential angle states at initial time";
      SI.Angle phi[3](start=phi_start, each stateSelect=if enforceStates then (if 
            useQuaternions then StateSelect.never else StateSelect.always) else 
            StateSelect.avoid) 
        "Dummy or 3 angles to rotate world frame into frame_a of body";
      SI.AngularVelocity phi_d[3](each stateSelect=if enforceStates then (if 
            useQuaternions then StateSelect.never else StateSelect.always) else 
            StateSelect.avoid) "= der(phi)";
      SI.AngularAcceleration phi_dd[3] "= der(phi_d)";

      // Declarations for animation
      Visualizers.Advanced.Shape cylinder(
        shapeType="cylinder",
        color=cylinderColor,
        specularCoefficient=specularCoefficient,
        length=if Modelica.Math.Vectors.length(r_CM) > sphereDiameter/2 then 
                  Modelica.Math.Vectors.length(r_CM) - (if cylinderDiameter > 1.1*
            sphereDiameter then sphereDiameter/2 else 0) else 0,
        width=cylinderDiameter,
        height=cylinderDiameter,
        lengthDirection=r_CM,
        widthDirection={0,1,0},
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
      Visualizers.Advanced.Shape sphere(
        shapeType="sphere",
        color=sphereColor,
        specularCoefficient=specularCoefficient,
        length=sphereDiameter,
        width=sphereDiameter,
        height=sphereDiameter,
        lengthDirection={1,0,0},
        widthDirection={0,1,0},
        r_shape=r_CM - {1,0,0}*sphereDiameter/2,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation and sphereDiameter > 0;
    initial equation 
      if angles_fixed then
        // Initialize positional variables
        if not Connections.isRoot(frame_a.R) then
          // frame_a.R is computed somewhere else
          zeros(3) = Frames.Orientation.equalityConstraint(frame_a.R, R_start);
        elseif useQuaternions then
          // frame_a.R is computed from quaternions Q
          zeros(3) = Frames.Quaternions.Orientation.equalityConstraint(Q, Q_start);
        else
          // frame_a.R is computed from the 3 angles 'phi'
          phi = phi_start;
        end if;
      end if;

    equation 
      if enforceStates then
        Connections.root(frame_a.R);
      else
        Connections.potentialRoot(frame_a.R);
      end if;
      r_0 = frame_a.r_0;

      if not Connections.isRoot(frame_a.R) then
        // Body does not have states
        // Dummies
        Q = {0,0,0,1};
        phi = zeros(3);
        phi_d = zeros(3);
        phi_dd = zeros(3);
      elseif useQuaternions then
        // Use Quaternions as states (with dynamic state selection)
        frame_a.R = Frames.from_Q(Q, Frames.Quaternions.angularVelocity2(Q, der(Q)));
        {0} = Frames.Quaternions.orientationConstraint(Q);

        // Dummies
        phi = zeros(3);
        phi_d = zeros(3);
        phi_dd = zeros(3);
      else
        // Use Cardan angles as states
        phi_d = der(phi);
        phi_dd = der(phi_d);
        frame_a.R = Frames.axesRotations(sequence_angleStates, phi, phi_d);

        // Dummies
        Q = {0,0,0,1};
      end if;

      // gravity acceleration at center of mass resolved in world frame
      g_0 = world.gravityAcceleration(frame_a.r_0 + Frames.resolve1(frame_a.R,
        r_CM));

      // translational kinematic differential equations
      v_0 = der(frame_a.r_0);
      a_0 = der(v_0);

      // rotational kinematic differential equations
      w_a = Frames.angularVelocity2(frame_a.R);
      z_a = der(w_a);

      /* Newton/Euler equations with respect to center of mass
                a_CM = a_a + cross(z_a, r_CM) + cross(w_a, cross(w_a, r_CM));
                f_CM = m*(a_CM - g_a);
                t_CM = I*z_a + cross(w_a, I*w_a);
           frame_a.f = f_CM
           frame_a.t = t_CM + cross(r_CM, f_CM);
        Inserting the first three equations in the last two results in:
      */
      frame_a.f = m*(Frames.resolve2(frame_a.R, a_0 - g_0) + cross(z_a, r_CM) +
        cross(w_a, cross(w_a, r_CM)));
      frame_a.t = I*z_a + cross(w_a, I*w_a) + cross(r_CM, frame_a.f);
    end Body;

--------------

|image48| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.BodyShape
--------------------------------------------------------------------------------------------------------------------------------------

**Rigid body with mass, inertia tensor, different shapes for animation,
and two frame connectors (12 potential states)**

.. figure:: Modelica.Mechanics.MultiBody.Parts.BodyShapeD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.BodyShape

   Modelica.Mechanics.MultiBody.Parts.BodyShape

Information
~~~~~~~~~~~

::

**Rigid body** with mass and inertia tensor and **two frame
connectors**. All parameter vectors have to be resolved in frame\_a. The
**inertia tensor** has to be defined with respect to a coordinate system
that is parallel to frame\_a with the origin at the center of mass of
the body. The coordinate system **frame\_b** is always parallel to
**frame\_a**.

By default, this component is visualized by any **shape** that can be
defined with Modelica.Mechanics.MultiBody.Visualizers.FixedShape. This
shape is placed between frame\_a and frame\_b (default: length(shape) =
Frames.length(r)). Additionally a **sphere** may be visualized that has
its center at the center of mass. Note, that the animation may be
switched off via parameter animation = **false**.

.. figure:: ../Resources/Images/MultiBody/BodyShape.png
   :align: center
   :alt: Parts.BodyShape

   Parts.BodyShape
The following shapes can be defined via parameter **shapeType**, e.g.,
shapeType="cone":

.. figure:: ../Resources/Images/MultiBody/FixedShape.png
   :align: center
   :alt: Visualizers.FixedShape

   Visualizers.FixedShape
A BodyShape component has potential states. For details of these states
and of the "Advanced" menu parameters, see model
`MultiBody.Parts.Body <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Body>`_.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                    | Default                           | Description                                                                                                                      |
+===========================================================================================================================+=========================+===================================+==================================================================================================================================+
| Boolean                                                                                                                   | animation               | true                              | = true, if animation shall be enabled (show shape between frame\_a and frame\_b and optionally a sphere at the center of mass)   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | animateSphere           | true                              | = true, if mass shall be animated as sphere provided animation=true                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r[3]                    |                                   | Vector from frame\_a to frame\_b resolved in frame\_a [m]                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_CM[3]                |                                   | Vector from frame\_a to center of mass, resolved in frame\_a [m]                                                                 |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                                                     | m                       |                                   | Mass of rigid body [kg]                                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| Inertia tensor (resolved in center of mass, parallel to frame\_a)                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_11                   | 0.001                             | (1,1) element of inertia tensor [kg.m2]                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_22                   | 0.001                             | (2,2) element of inertia tensor [kg.m2]                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_33                   | 0.001                             | (3,3) element of inertia tensor [kg.m2]                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_21                   | 0                                 | (2,1) element of inertia tensor [kg.m2]                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_31                   | 0                                 | (3,1) element of inertia tensor [kg.m2]                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | I\_32                   | 0                                 | (3,2) element of inertia tensor [kg.m2]                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| **Initialization**                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_0.start[3]           | {0,0,0}                           | Position vector from origin of world frame to origin of frame\_a [m]                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_                                                             | v\_0.start[3]           | {0,0,0}                           | Absolute velocity of frame\_a, resolved in world frame (= der(r\_0)) [m/s]                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Acceleration <Modelica_SIunits.html#Modelica.SIunits.Acceleration>`_                                                     | a\_0.start[3]           | {0,0,0}                           | Absolute acceleration of frame\_a resolved in world frame (= der(v\_0)) [m/s2]                                                   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | angles\_fixed           | false                             | = true, if angles\_start are used as initial values, else as guess values                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                                                   | angles\_start[3]        | {0,0,0}                           | Initial values of angles to rotate frame\_a around 'sequence\_start' axes into frame\_b [rad]                                    |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `RotationSequence <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationSequence>`_         | sequence\_start         | {1,2,3}                           | Sequence of rotations to rotate frame\_a into frame\_b at initial time                                                           |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | w\_0\_fixed             | false                             | = true, if w\_0\_start are used as initial values, else as guess values                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                               | w\_0\_start[3]          | {0,0,0}                           | Initial or guess values of angular velocity of frame\_a resolved in world frame [rad/s]                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | z\_0\_fixed             | false                             | = true, if z\_0\_start are used as initial values, else as guess values                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `AngularAcceleration <Modelica_SIunits.html#Modelica.SIunits.AngularAcceleration>`_                                       | z\_0\_start[3]          | {0,0,0}                           | Initial values of angular acceleration z\_0 = der(w\_0) [rad/s2]                                                                 |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `ShapeType <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeType>`_                       | shapeType               | "cylinder"                        | Type of shape                                                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_shape[3]             | {0,0,0}                           | Vector from frame\_a to shape origin, resolved in frame\_a [m]                                                                   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | lengthDirection         | r - r\_shape                      | Vector in length direction of shape, resolved in frame\_a [1]                                                                    |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | widthDirection          | {0,1,0}                           | Vector in width direction of shape, resolved in frame\_a [1]                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | length                  | Modelica.Math.Vectors.length...   | Length of shape [m]                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | width                   | length/world.defaultWidthFra...   | Width of shape [m]                                                                                                               |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | height                  | width                             | Height of shape. [m]                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `ShapeExtra <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeExtra>`_                     | extra                   | 0.0                               | Additional parameter depending on shapeType (see docu of Visualizers.Advanced.Shape).                                            |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                   | Modelica.Mechanics.MultiBody...   | Color of shape                                                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient     | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| if animation = true and animateSphere = true                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | sphereDiameter          | 2\*width                          | Diameter of sphere [m]                                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | sphereColor             | color                             | Color of sphere of mass                                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | enforceStates           | false                             | = true, if absolute variables of body object shall be used as states (StateSelect.always)                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | useQuaternions          | true                              | = true, if quaternions shall be used as potential states otherwise use 3 angles as potential states                              |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
| `RotationSequence <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationSequence>`_         | sequence\_angleStates   | {1,2,3}                           | Sequence of rotations to rotate world frame into frame\_a around the 3 angles used as potential states                           |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

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

    model BodyShape 
      "Rigid body with mass, inertia tensor, different shapes for animation, and two frame connectors (12 potential states)"

      import SI = Modelica.SIunits;
      import C = Modelica.Constants;
      import Modelica.Mechanics.MultiBody.Types;

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the component with one cut-force and cut-torque";

      parameter Boolean animation=true 
        "= true, if animation shall be enabled (show shape between frame_a and frame_b and optionally a sphere at the center of mass)";
      parameter Boolean animateSphere=true 
        "= true, if mass shall be animated as sphere provided animation=true";
      parameter SI.Position r[3](start={0,0,0}) 
        "Vector from frame_a to frame_b resolved in frame_a";
      parameter SI.Position r_CM[3](start={0,0,0}) 
        "Vector from frame_a to center of mass, resolved in frame_a";
      parameter SI.Mass m(min=0, start = 1) "Mass of rigid body";
      parameter SI.Inertia I_11(min=0) = 0.001 " (1,1) element of inertia tensor";
      parameter SI.Inertia I_22(min=0) = 0.001 " (2,2) element of inertia tensor";
      parameter SI.Inertia I_33(min=0) = 0.001 " (3,3) element of inertia tensor";
      parameter SI.Inertia I_21(min=-C.inf) = 0 " (2,1) element of inertia tensor";
      parameter SI.Inertia I_31(min=-C.inf) = 0 " (3,1) element of inertia tensor";
      parameter SI.Inertia I_32(min=-C.inf) = 0 " (3,2) element of inertia tensor";

      SI.Position r_0[3](start={0,0,0}, each stateSelect=if enforceStates then 
                  StateSelect.always else StateSelect.avoid) 
        "Position vector from origin of world frame to origin of frame_a";
      SI.Velocity v_0[3](start={0,0,0}, each stateSelect=if enforceStates then StateSelect.always else 
                  StateSelect.avoid) 
        "Absolute velocity of frame_a, resolved in world frame (= der(r_0))";
      SI.Acceleration a_0[3](start={0,0,0}) 
        "Absolute acceleration of frame_a resolved in world frame (= der(v_0))";

      parameter Boolean angles_fixed = false 
        "= true, if angles_start are used as initial values, else as guess values";
      parameter SI.Angle angles_start[3]={0,0,0} 
        "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b";
      parameter Types.RotationSequence sequence_start={1,2,3} 
        "Sequence of rotations to rotate frame_a into frame_b at initial time";

      parameter Boolean w_0_fixed = false 
        "= true, if w_0_start are used as initial values, else as guess values";
      parameter SI.AngularVelocity w_0_start[3]={0,0,0} 
        "Initial or guess values of angular velocity of frame_a resolved in world frame";

      parameter Boolean z_0_fixed = false 
        "= true, if z_0_start are used as initial values, else as guess values";
      parameter SI.AngularAcceleration z_0_start[3]={0,0,0} 
        "Initial values of angular acceleration z_0 = der(w_0)";

      parameter Types.ShapeType shapeType="cylinder" " Type of shape";
      parameter SI.Position r_shape[3]={0,0,0} 
        " Vector from frame_a to shape origin, resolved in frame_a";
      parameter Types.Axis lengthDirection=r - r_shape 
        " Vector in length direction of shape, resolved in frame_a";
      parameter Types.Axis widthDirection={0,1,0} 
        " Vector in width direction of shape, resolved in frame_a";
      parameter SI.Length length=Modelica.Math.Vectors.length(
                                               r - r_shape) " Length of shape";
      parameter SI.Distance width=length/world.defaultWidthFraction 
        " Width of shape";
      parameter SI.Distance height=width " Height of shape.";
      parameter Types.ShapeExtra extra=0.0 
        " Additional parameter depending on shapeType (see docu of Visualizers.Advanced.Shape).";
      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor 
        " Color of shape";
      parameter SI.Diameter sphereDiameter=2*width " Diameter of sphere";
      input Types.Color sphereColor=color " Color of sphere of mass";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      parameter Boolean enforceStates=false 
        " = true, if absolute variables of body object shall be used as states (StateSelect.always)";
      parameter Boolean useQuaternions=true 
        " = true, if quaternions shall be used as potential states otherwise use 3 angles as potential states";
      parameter Types.RotationSequence sequence_angleStates={1,2,3} 
        " Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states";

      FixedTranslation frameTranslation(r=r, animation=false);
      Body body(
        r_CM=r_CM,
        m=m,
        I_11=I_11,
        I_22=I_22,
        I_33=I_33,
        I_21=I_21,
        I_31=I_31,
        I_32=I_32,
        animation=false,
        sequence_start=sequence_start,
        angles_fixed=angles_fixed,
        angles_start=angles_start,
        w_0_fixed=w_0_fixed,
        w_0_start=w_0_start,
        z_0_fixed=z_0_fixed,
        z_0_start=z_0_start,
        useQuaternions=useQuaternions,
        sequence_angleStates=sequence_angleStates,
        enforceStates=false);
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
      Visualizers.Advanced.Shape shape1(
        shapeType=shapeType,
        color=color,
        specularCoefficient=specularCoefficient,
        length=length,
        width=width,
        height=height,
        lengthDirection=lengthDirection,
        widthDirection=widthDirection,
        r_shape=r_shape,
        extra=extra,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
      Visualizers.Advanced.Shape shape2(
        shapeType="sphere",
        color=sphereColor,
        specularCoefficient=specularCoefficient,
        length=sphereDiameter,
        width=sphereDiameter,
        height=sphereDiameter,
        lengthDirection={1,0,0},
        widthDirection={0,1,0},
        r_shape=r_CM - {1,0,0}*sphereDiameter/2,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation and animateSphere;
    equation 
      r_0 = frame_a.r_0;
      v_0 = der(r_0);
      a_0 = der(v_0);
      connect(frame_a, frameTranslation.frame_a);
      connect(frame_b, frameTranslation.frame_b);
      connect(frame_a, body.frame_a);
    end BodyShape;

--------------

|image49| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.BodyBox
------------------------------------------------------------------------------------------------------------------------------------

**Rigid body with box shape. Mass and animation properties are computed
from box data and density (12 potential states)**

.. figure:: Modelica.Mechanics.MultiBody.Parts.BodyBoxD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.BodyBox

   Modelica.Mechanics.MultiBody.Parts.BodyBox

Information
~~~~~~~~~~~

::

**Rigid body** with **box** shape. The mass properties of the body
(mass, center of mass, inertia tensor) are computed from the box data.
Optionally, the box may be hollow. The (outer) box shape is by default
used in the animation. The hollow part is not shown in the animation.
The two connector frames **frame\_a** and **frame\_b** are always
parallel to each other. Example of component animation (note, that the
animation may be switched off via parameter animation = **false**):

.. figure:: ../Resources/Images/MultiBody/BodyBox.png
   :align: center
   :alt: Parts.BodyBox

   Parts.BodyBox
A BodyBox component has potential states. For details of these states
and of the "Advanced" menu parameters, see model
`MultiBody.Parts.Body <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Body>`_.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                    | Default                           | Description                                                                                              |
+===========================================================================================================================+=========================+===================================+==========================================================================================================+
| Boolean                                                                                                                   | animation               | true                              | = true, if animation shall be enabled (show box between frame\_a and frame\_b)                           |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r[3]                    |                                   | Vector from frame\_a to frame\_b resolved in frame\_a [m]                                                |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_shape[3]             | {0,0,0}                           | Vector from frame\_a to box origin, resolved in frame\_a [m]                                             |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | lengthDirection         | r - r\_shape                      | Vector in length direction of box, resolved in frame\_a [1]                                              |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | widthDirection          | {0,1,0}                           | Vector in width direction of box, resolved in frame\_a [1]                                               |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | length                  | Modelica.Math.Vectors.length...   | Length of box [m]                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | width                   | length/world.defaultWidthFra...   | Width of box [m]                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | height                  | width                             | Height of box [m]                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | innerWidth              | 0                                 | Width of inner box surface (0 <= innerWidth <= width) [m]                                                |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | innerHeight             | innerWidth                        | Height of inner box surface (0 <= innerHeight <= height) [m]                                             |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                               | density                 | 7700                              | Density of cylinder (e.g., steel: 7700 .. 7900, wood : 400 .. 800) [kg/m3]                               |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                   | Modelica.Mechanics.MultiBody...   | Color of box                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient     | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| **Initialization**                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_0.start[3]           | {0,0,0}                           | Position vector from origin of world frame to origin of frame\_a [m]                                     |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_                                                             | v\_0.start[3]           | {0,0,0}                           | Absolute velocity of frame\_a, resolved in world frame (= der(r\_0)) [m/s]                               |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Acceleration <Modelica_SIunits.html#Modelica.SIunits.Acceleration>`_                                                     | a\_0.start[3]           | {0,0,0}                           | Absolute acceleration of frame\_a resolved in world frame (= der(v\_0)) [m/s2]                           |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | angles\_fixed           | false                             | = true, if angles\_start are used as initial values, else as guess values                                |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                                                   | angles\_start[3]        | {0,0,0}                           | Initial values of angles to rotate frame\_a around 'sequence\_start' axes into frame\_b [rad]            |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `RotationSequence <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationSequence>`_         | sequence\_start         | {1,2,3}                           | Sequence of rotations to rotate frame\_a into frame\_b at initial time                                   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | w\_0\_fixed             | false                             | = true, if w\_0\_start are used as initial values, else as guess values                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                               | w\_0\_start[3]          | {0,0,0}                           | Initial or guess values of angular velocity of frame\_a resolved in world frame [rad/s]                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | z\_0\_fixed             | false                             | = true, if z\_0\_start are used as initial values, else as guess values                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `AngularAcceleration <Modelica_SIunits.html#Modelica.SIunits.AngularAcceleration>`_                                       | z\_0\_start[3]          | {0,0,0}                           | Initial values of angular acceleration z\_0 = der(w\_0) [rad/s2]                                         |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | enforceStates           | false                             | = true, if absolute variables of body object shall be used as states (StateSelect.always)                |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | useQuaternions          | true                              | = true, if quaternions shall be used as potential states otherwise use 3 angles as potential states      |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `RotationSequence <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationSequence>`_         | sequence\_angleStates   | {1,2,3}                           | Sequence of rotations to rotate world frame into frame\_a around the 3 angles used as potential states   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+

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

    model BodyBox 
      "Rigid body with box shape. Mass and animation properties are computed from box data and density (12 potential states)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
      parameter Boolean animation=true 
        "= true, if animation shall be enabled (show box between frame_a and frame_b)";
      parameter SI.Position r[3](start={0.1,0,0}) 
        "Vector from frame_a to frame_b resolved in frame_a";
      parameter SI.Position r_shape[3]={0,0,0} 
        "Vector from frame_a to box origin, resolved in frame_a";
      parameter Modelica.Mechanics.MultiBody.Types.Axis lengthDirection=r - r_shape 
        "Vector in length direction of box, resolved in frame_a";
      parameter Modelica.Mechanics.MultiBody.Types.Axis widthDirection={0,1,0} 
        "Vector in width direction of box, resolved in frame_a";
      parameter SI.Length length=Modelica.Math.Vectors.length(
                                               r - r_shape) "Length of box";
      parameter SI.Distance width=length/world.defaultWidthFraction "Width of box";
      parameter SI.Distance height=width "Height of box";
      parameter SI.Distance innerWidth=0 
        "Width of inner box surface (0 <= innerWidth <= width)";
      parameter SI.Distance innerHeight=innerWidth 
        "Height of inner box surface (0 <= innerHeight <= height)";
      parameter SI.Density density = 7700 
        "Density of cylinder (e.g., steel: 7700 .. 7900, wood : 400 .. 800)";
      input Modelica.Mechanics.MultiBody.Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor 
        "Color of box";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

      SI.Position r_0[3](start={0,0,0}, each stateSelect=if enforceStates then 
                  StateSelect.always else StateSelect.avoid) 
        "Position vector from origin of world frame to origin of frame_a";
      SI.Velocity v_0[3](start={0,0,0}, each stateSelect=if enforceStates then StateSelect.always else 
                  StateSelect.avoid) 
        "Absolute velocity of frame_a, resolved in world frame (= der(r_0))";
      SI.Acceleration a_0[3](start={0,0,0}) 
        "Absolute acceleration of frame_a resolved in world frame (= der(v_0))";

      parameter Boolean angles_fixed = false 
        "= true, if angles_start are used as initial values, else as guess values";
      parameter SI.Angle angles_start[3]={0,0,0} 
        "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b";
      parameter Types.RotationSequence sequence_start={1,2,3} 
        "Sequence of rotations to rotate frame_a into frame_b at initial time";

      parameter Boolean w_0_fixed = false 
        "= true, if w_0_start are used as initial values, else as guess values";
      parameter SI.AngularVelocity w_0_start[3]={0,0,0} 
        "Initial or guess values of angular velocity of frame_a resolved in world frame";

      parameter Boolean z_0_fixed = false 
        "= true, if z_0_start are used as initial values, else as guess values";
      parameter SI.AngularAcceleration z_0_start[3]={0,0,0} 
        "Initial values of angular acceleration z_0 = der(w_0)";

      parameter Boolean enforceStates=false 
        " = true, if absolute variables of body object shall be used as states (StateSelect.always)";
      parameter Boolean useQuaternions=true 
        " = true, if quaternions shall be used as potential states otherwise use 3 angles as potential states";
      parameter Types.RotationSequence sequence_angleStates={1,2,3} 
        " Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states";

      final parameter SI.Mass mo(min=0)=density*length*width*height 
        "Mass of box without hole";
      final parameter SI.Mass mi(min=0)=density*length*innerWidth*innerHeight 
        "Mass of hole of box";
      final parameter SI.Mass m(min=0)=mo - mi "Mass of box";
      final parameter Frames.Orientation R=Frames.from_nxy(r, widthDirection) 
        "Orientation object from frame_a to coordinates system spanned by r and widthDirection";
      final parameter SI.Position r_CM[3]=r_shape + Modelica.Math.Vectors.normalize(lengthDirection)*length/2 
        "Position vector from origin of frame_a to center of mass, resolved in frame_a";
      final parameter SI.Inertia I[3, 3]=Frames.resolveDyade1(R, diagonal({mo*(
          width*width + height*height) - mi*(innerWidth*innerWidth + innerHeight*
          innerHeight),mo*(length*length + height*height) - mi*(length*length +
          innerHeight*innerHeight),mo*(length*length + width*width) - mi*(length*
          length + innerWidth*innerWidth)}/12)) 
        "Inertia tensor of body box with respect to center of mass, parallel to frame_a";
      Body body(
        animation=false,
        r_CM=r_CM,
        m=m,
        I_11=I[1, 1],
        I_22=I[2, 2],
        I_33=I[3, 3],
        I_21=I[2, 1],
        I_31=I[3, 1],
        I_32=I[3, 2],
        sequence_start=sequence_start,
        angles_fixed=angles_fixed,
        angles_start=angles_start,
        w_0_fixed=w_0_fixed,
        w_0_start=w_0_start,
        z_0_fixed=z_0_fixed,
        z_0_start=z_0_start,
        useQuaternions=useQuaternions,
        sequence_angleStates=sequence_angleStates,
        enforceStates=false);
      FixedTranslation frameTranslation(
        r=r,
        animation=animation,
        shapeType="box",
        r_shape=r_shape,
        lengthDirection=lengthDirection,
        widthDirection=widthDirection,
        length=length,
        width=width,
        height=height,
        color=color,
       specularCoefficient=specularCoefficient);

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      r_0 = frame_a.r_0;
      v_0 = der(r_0);
      a_0 = der(v_0);

      assert(innerWidth <= width,
        "parameter innerWidth is greater as parameter width");
      assert(innerHeight <= height,
        "parameter innerHeight is greater as paraemter height");
      connect(frameTranslation.frame_a, frame_a);
      connect(frameTranslation.frame_b, frame_b);
      connect(frame_a, body.frame_a);
    end BodyBox;

--------------

|image50| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.BodyCylinder
-----------------------------------------------------------------------------------------------------------------------------------------

**Rigid body with cylinder shape. Mass and animation properties are
computed from cylinder data and density (12 potential states)**

.. figure:: Modelica.Mechanics.MultiBody.Parts.BodyBoxD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.BodyCylinder

   Modelica.Mechanics.MultiBody.Parts.BodyCylinder

Information
~~~~~~~~~~~

::

**Rigid body** with **cylinder** shape. The mass properties of the body
(mass, center of mass, inertia tensor) are computed from the cylinder
data. Optionally, the cylinder may be hollow. The cylinder shape is by
default used in the animation. The two connector frames **frame\_a** and
**frame\_b** are always parallel to each other. Example of component
animation (note, that the animation may be switched off via parameter
animation = **false**):

.. figure:: ../Resources/Images/MultiBody/BodyCylinder.png
   :align: center
   :alt: Parts.BodyCylinder

   Parts.BodyCylinder
A BodyCylinder component has potential states. For details of these
states and of the "Advanced" menu parameters, see model
`MultiBody.Parts.Body <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Body>`_.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                    | Default                           | Description                                                                                              |
+===========================================================================================================================+=========================+===================================+==========================================================================================================+
| Boolean                                                                                                                   | animation               | true                              | = true, if animation shall be enabled (show cylinder between frame\_a and frame\_b)                      |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r[3]                    |                                   | Vector from frame\_a to frame\_b, resolved in frame\_a [m]                                               |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_shape[3]             | {0,0,0}                           | Vector from frame\_a to cylinder origin, resolved in frame\_a [m]                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | lengthDirection         | r - r\_shape                      | Vector in length direction of cylinder, resolved in frame\_a [1]                                         |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | length                  | Modelica.Math.Vectors.length...   | Length of cylinder [m]                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | diameter                | length/world.defaultWidthFra...   | Diameter of cylinder [m]                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | innerDiameter           | 0                                 | Inner diameter of cylinder (0 <= innerDiameter <= Diameter) [m]                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                               | density                 | 7700                              | Density of cylinder (e.g., steel: 7700 .. 7900, wood : 400 .. 800) [kg/m3]                               |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                   | Modelica.Mechanics.MultiBody...   | Color of cylinder                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient     | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                          |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| **Initialization**                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_0.start[3]           | {0,0,0}                           | Position vector from origin of world frame to origin of frame\_a [m]                                     |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_                                                             | v\_0.start[3]           | {0,0,0}                           | Absolute velocity of frame\_a, resolved in world frame (= der(r\_0)) [m/s]                               |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Acceleration <Modelica_SIunits.html#Modelica.SIunits.Acceleration>`_                                                     | a\_0.start[3]           | {0,0,0}                           | Absolute acceleration of frame\_a resolved in world frame (= der(v\_0)) [m/s2]                           |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | angles\_fixed           | false                             | = true, if angles\_start are used as initial values, else as guess values                                |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                                                   | angles\_start[3]        | {0,0,0}                           | Initial values of angles to rotate frame\_a around 'sequence\_start' axes into frame\_b [rad]            |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `RotationSequence <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationSequence>`_         | sequence\_start         | {1,2,3}                           | Sequence of rotations to rotate frame\_a into frame\_b at initial time                                   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | w\_0\_fixed             | false                             | = true, if w\_0\_start are used as initial values, else as guess values                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                               | w\_0\_start[3]          | {0,0,0}                           | Initial or guess values of angular velocity of frame\_a resolved in world frame [rad/s]                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | z\_0\_fixed             | false                             | = true, if z\_0\_start are used as initial values, else as guess values                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `AngularAcceleration <Modelica_SIunits.html#Modelica.SIunits.AngularAcceleration>`_                                       | z\_0\_start[3]          | {0,0,0}                           | Initial values of angular acceleration z\_0 = der(w\_0) [rad/s2]                                         |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | enforceStates           | false                             | = true, if absolute variables of body object shall be used as states (StateSelect.always)                |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | useQuaternions          | true                              | = true, if quaternions shall be used as potential states otherwise use 3 angles as potential states      |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+
| `RotationSequence <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationSequence>`_         | sequence\_angleStates   | {1,2,3}                           | Sequence of rotations to rotate world frame into frame\_a around the 3 angles used as potential states   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------+

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

    model BodyCylinder 
      "Rigid body with cylinder shape. Mass and animation properties are computed from cylinder data and density (12 potential states)"

      import SI = Modelica.SIunits;
      import NonSI = Modelica.SIunits.Conversions.NonSIunits;
      import Modelica.Mechanics.MultiBody.Types;
      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
      parameter Boolean animation=true 
        "= true, if animation shall be enabled (show cylinder between frame_a and frame_b)";
      parameter SI.Position r[3](start={0.1,0,0}) 
        "Vector from frame_a to frame_b, resolved in frame_a";
      parameter SI.Position r_shape[3]={0,0,0} 
        "Vector from frame_a to cylinder origin, resolved in frame_a";
      parameter Modelica.Mechanics.MultiBody.Types.Axis lengthDirection=r - r_shape 
        "Vector in length direction of cylinder, resolved in frame_a";
      parameter SI.Length length=Modelica.Math.Vectors.length(
                                               r - r_shape) "Length of cylinder";
      parameter SI.Distance diameter=length/world.defaultWidthFraction 
        "Diameter of cylinder";
      parameter SI.Distance innerDiameter=0 
        "Inner diameter of cylinder (0 <= innerDiameter <= Diameter)";
      parameter SI.Density density = 7700 
        "Density of cylinder (e.g., steel: 7700 .. 7900, wood : 400 .. 800)";
      input Modelica.Mechanics.MultiBody.Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor 
        "Color of cylinder";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

      SI.Position r_0[3](start={0,0,0}, each stateSelect=if enforceStates then 
                  StateSelect.always else StateSelect.avoid) 
        "Position vector from origin of world frame to origin of frame_a";
      SI.Velocity v_0[3](start={0,0,0}, each stateSelect=if enforceStates then StateSelect.always else 
                  StateSelect.avoid) 
        "Absolute velocity of frame_a, resolved in world frame (= der(r_0))";
      SI.Acceleration a_0[3](start={0,0,0}) 
        "Absolute acceleration of frame_a resolved in world frame (= der(v_0))";

      parameter Boolean angles_fixed = false 
        "= true, if angles_start are used as initial values, else as guess values";
      parameter SI.Angle angles_start[3]={0,0,0} 
        "Initial values of angles to rotate frame_a around 'sequence_start' axes into frame_b";
      parameter Types.RotationSequence sequence_start={1,2,3} 
        "Sequence of rotations to rotate frame_a into frame_b at initial time";

      parameter Boolean w_0_fixed = false 
        "= true, if w_0_start are used as initial values, else as guess values";
      parameter SI.AngularVelocity w_0_start[3]={0,0,0} 
        "Initial or guess values of angular velocity of frame_a resolved in world frame";

      parameter Boolean z_0_fixed = false 
        "= true, if z_0_start are used as initial values, else as guess values";
      parameter SI.AngularAcceleration z_0_start[3]={0,0,0} 
        "Initial values of angular acceleration z_0 = der(w_0)";

      parameter Boolean enforceStates=false 
        " = true, if absolute variables of body object shall be used as states (StateSelect.always)";
      parameter Boolean useQuaternions=true 
        " = true, if quaternions shall be used as potential states otherwise use 3 angles as potential states";
      parameter Types.RotationSequence sequence_angleStates={1,2,3} 
        " Sequence of rotations to rotate world frame into frame_a around the 3 angles used as potential states";

      constant Real pi=Modelica.Constants.pi;
      final parameter SI.Distance radius=diameter/2 "Radius of cylinder";
      final parameter SI.Distance innerRadius=innerDiameter/2 
        "Inner-Radius of cylinder";
      final parameter SI.Mass mo(min=0)=density*pi*length*radius*radius 
        "Mass of cylinder without hole";
      final parameter SI.Mass mi(min=0)=density*pi*length*innerRadius*innerRadius 
        "Mass of hole of cylinder";
      final parameter SI.Inertia I22=(mo*(length*length + 3*radius*radius) - mi*(
          length*length + 3*innerRadius*innerRadius))/12 
        "Inertia with respect to axis through center of mass, perpendicular to cylinder axis";
      final parameter SI.Mass m(min=0)=mo - mi "Mass of cylinder";
      final parameter Frames.Orientation R=Frames.from_nxy(r, {0,1,0}) 
        "Orientation object from frame_a to frame spanned by cylinder axis and axis perpendicular to cylinder axis";
      final parameter SI.Position r_CM[3]=r_shape + Modelica.Math.Vectors.normalize(lengthDirection)*length/2 
        "Position vector from frame_a to center of mass, resolved in frame_a";
      final parameter SI.Inertia I[3, 3]=Frames.resolveDyade1(R, diagonal({(mo*
          radius*radius - mi*innerRadius*innerRadius)/2,I22,I22})) 
        "Inertia tensor of cylinder with respect to center of mass, resolved in frame parallel to frame_a";

      Body body(
        r_CM=r_CM,
        m=m,
        I_11=I[1, 1],
        I_22=I[2, 2],
        I_33=I[3, 3],
        I_21=I[2, 1],
        I_31=I[3, 1],
        I_32=I[3, 2],
        animation=false,
        sequence_start=sequence_start,
        angles_fixed=angles_fixed,
        angles_start=angles_start,
        w_0_fixed=w_0_fixed,
        w_0_start=w_0_start,
        z_0_fixed=z_0_fixed,
        z_0_start=z_0_start,
        useQuaternions=useQuaternions,
        sequence_angleStates=sequence_angleStates,
        enforceStates=false);
      FixedTranslation frameTranslation(
        r=r,
        animation=animation,
        shapeType="pipecylinder",
        r_shape=r_shape,
        lengthDirection=lengthDirection,
        length=length,
        width=diameter,
        height=diameter,
        extra=innerDiameter/diameter,
        color=color,
        specularCoefficient=specularCoefficient,
        widthDirection={0,1,0});

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      r_0 = frame_a.r_0;
      v_0 = der(r_0);
      a_0 = der(v_0);

      assert(innerDiameter < diameter,
        "parameter innerDiameter is greater as parameter diameter.");
      connect(frameTranslation.frame_a, frame_a);
      connect(frameTranslation.frame_b, frame_b);
      connect(frame_a, body.frame_a);
    end BodyCylinder;

--------------

|image51| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.PointMass
--------------------------------------------------------------------------------------------------------------------------------------

**Rigid body where body rotation and inertia tensor is neglected (6
potential states)**

.. figure:: Modelica.Mechanics.MultiBody.Parts.PointMassD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.PointMass

   Modelica.Mechanics.MultiBody.Parts.PointMass

Information
~~~~~~~~~~~

::

**Rigid body** where the inertia tensor is neglected. This body is
solely defined by its mass. By default, this component is visualized by
a **sphere** that has its center at frame\_a. Note, that the animation
may be switched off via parameter animation = **false**.

Every PointMass has potential states. If possible a tool will select the
states of joints and not the states of PointMasss because this is
usually the most efficient choice. In this case the position and
velocity of frame\_a of the body will be computed by the component that
is connected to frame\_a. However, if a PointMass is moving freely in
space, variables of the PointMass have to be used as states. The
potential states are: The **position vector** frame\_a.r\_0 from the
origin of the world frame to the origin of frame\_a of the body,
resolved in the world frame and the **absolute velocity** v\_0 of the
origin of frame\_a, resolved in the world frame (= der(frame\_a.r\_0)).

Whether or not variables of the body are used as states is usually
automatically selected by the Modelica translator. If parameter
**enforceStates** is set to **true** in the "Advanced" menu, then
PointMass variables frame\_a.r\_0 and der(frame\_a.r\_0) are forced to
be used as states.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                                     |
+===========================================================================================================================+=======================+===================================+=================================================================================================+
| Boolean                                                                                                                   | animation             | true                              | = true, if animation shall be enabled (show sphere)                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                                                     | m                     |                                   | Mass of mass point [kg]                                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| Initialization                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_0.start[3]         | {0,0,0}                           | Position vector from origin of world frame to origin of frame\_a, resolved in world frame [m]   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_                                                             | v\_0.start[3]         | {0,0,0}                           | Absolute velocity of frame\_a, resolved in world frame (= der(r\_0)) [m/s]                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `Acceleration <Modelica_SIunits.html#Modelica.SIunits.Acceleration>`_                                                     | a\_0.start[3]         | {0,0,0}                           | Absolute acceleration of frame\_a resolved in world frame (= der(v\_0)) [m/s2]                  |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | sphereDiameter        | world.defaultBodyDiameter         | Diameter of sphere [m]                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | sphereColor           | Modelica.Mechanics.MultiBody...   | Color of sphere                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                 |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+
| StateSelect                                                                                                               | stateSelect           | StateSelect.avoid                 | Priority to use frame\_a.r\_0, v\_0 (= der(frame\_a.r\_0)) as states                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------+
| Type                                                                                                         | Name       | Description                                       |
+==============================================================================================================+============+===================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system fixed at center of mass point   |
+--------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PointMass 
      "Rigid body where body rotation and inertia tensor is neglected (6 potential states)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      Interfaces.Frame_a frame_a "Coordinate system fixed at center of mass point";
      parameter Boolean animation=true 
        "= true, if animation shall be enabled (show sphere)";
      parameter SI.Mass m(min=0) "Mass of mass point";
      input SI.Diameter sphereDiameter=world.defaultBodyDiameter 
        "Diameter of sphere";
      input Types.Color sphereColor=Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor 
        "Color of sphere";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      parameter StateSelect stateSelect=StateSelect.avoid 
        "Priority to use frame_a.r_0, v_0 (= der(frame_a.r_0)) as states";

      SI.Position r_0[3](start={0,0,0}, each stateSelect=stateSelect) 
        "Position vector from origin of world frame to origin of frame_a, resolved in world frame";
      SI.Velocity v_0[3](start={0,0,0}, each stateSelect=stateSelect) 
        "Absolute velocity of frame_a, resolved in world frame (= der(r_0))";
      SI.Acceleration a_0[3](start={0,0,0}) 
        "Absolute acceleration of frame_a resolved in world frame (= der(v_0))";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;

      // Declarations for animation
      Visualizers.Advanced.Shape sphere(
        shapeType="sphere",
        color=sphereColor,
        specularCoefficient=specularCoefficient,
        length=sphereDiameter,
        width=sphereDiameter,
        height=sphereDiameter,
        lengthDirection={1,0,0},
        widthDirection={0,1,0},
        r_shape= - {1,0,0}*sphereDiameter/2,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
    equation 
      // If any possible, do not use the connector as root
      Connections.potentialRoot(frame_a.R, 10000);

      if Connections.isRoot(frame_a.R) then
         assert(cardinality(frame_a)==0, "
    A Modelica.Mechanics.MultiBody.Parts.PointMass model is connected in
    a way, so that no equations are present to compute frame_a.R
    (the orientation object in the connector). Setting frame_a.R to
    an arbitrary value in the PointMass model, might lead to a wrong
    overall model, depending on how the PointMass model is used.
       You can avoid this message, by providing equations that
    compute the orientation object, e.g., by using the
    Modelica.Mechanics.MultiBody.Joints.FreeMotion joint.
       If a PointMass model is not connected at all, the
    orientation object is set to a unit rotation. But this is
    the only case where this is done.
    ");
         frame_a.R = Frames.nullRotation();
      else
         frame_a.t = zeros(3);
      end if;

      // Newton equation: f = m*(a-g)
      r_0 = frame_a.r_0;
      v_0 = der(r_0);
      a_0 = der(v_0);
      frame_a.f = m*Frames.resolve2(frame_a.R, a_0 - world.gravityAcceleration(r_0));
    end PointMass;

--------------

|image52| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.Mounting1D
---------------------------------------------------------------------------------------------------------------------------------------

**Propagate 1-dim. support torque to 3-dim. system (provided
world.driveTrainMechanics3D=true)**

.. figure:: Modelica.Mechanics.MultiBody.Parts.Mounting1DD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.Mounting1D

   Modelica.Mechanics.MultiBody.Parts.Mounting1D

Information
~~~~~~~~~~~

::

This component is used to acquire support torques from a
1-dim.-rotational mechanical system (e.g., components from
Modelica.Mechanics.Rotational) and to propagate them to a carrier body.

The 1-dim. support torque at ``flange_b`` is transformed into 3-dim.
space under consideration of the rotation axis, parameter ``n``, which
has to be given in the local coordinate system of ``frame_a``.

All components of a 1-dim.-rotational mechanical system that are
connected to **a** common **Mounting1D** element need to have the same
axis of rotation along parameter vector ``n``. This means that, e.g.,
bevel gears where the axis of rotation of ``flange_a`` and ``flange_b``
are different cannot be described properly by connecting to the
**Mounting1D** component. In this case, a combination of several
**Mounting1D** components or the component **BevelGear1D** should be
used.

**Reference**
 Schweiger, Christian ; Otter, Martin: `Modelling 3D Mechanical Effects
of 1-dim.
Powertrains <http://www.modelica.org/Conference2003/papers/h06_Schweiger_powertrains_v5.pdf>`_.
In: *Proceedings of the 3rd International Modelica Conference*.
Linköping : The Modelica Association and Linköping University, November
3-4, 2003, pp. 149-158

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+--------+-----------+------------------------------------------------------------------------+
| Type                                                                                        | Name   | Default   | Description                                                            |
+=============================================================================================+========+===========+========================================================================+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                     | phi0   | 0         | Fixed offset angle of housing [rad]                                    |
+---------------------------------------------------------------------------------------------+--------+-----------+------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_   | n      | {1,0,0}   | Axis of rotation = axis of support torque (resolved in frame\_a) [1]   |
+---------------------------------------------------------------------------------------------+--------+-----------+------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------------+
| Type                                                                                                             | Name        | Description                                                                                    |
+==================================================================================================================+=============+================================================================================================+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange\_b   | (right) flange fixed in housing                                                                |
+------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------------+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_       | frame\_a    | Frame in which housing is fixed (connector is removed, if world.driveTrainMechanics3D=false)   |
+------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Mounting1D 
      "Propagate 1-dim. support torque to 3-dim. system (provided world.driveTrainMechanics3D=true)"
      parameter Modelica.SIunits.Angle phi0=0 "Fixed offset angle of housing";
      parameter Modelica.Mechanics.MultiBody.Types.Axis n={1,0,0} 
        "Axis of rotation = axis of support torque (resolved in frame_a)";

      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b 
        "(right) flange fixed in housing";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a if world.driveTrainMechanics3D 
        "Frame in which housing is fixed (connector is removed, if world.driveTrainMechanics3D=false)";
        
    protected 
      outer Modelica.Mechanics.MultiBody.World world;

      encapsulated model Housing
        import Modelica;
        input Modelica.SIunits.Torque t[3];
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a;
      equation 
        frame_a.f=zeros(3);
        frame_a.t=t;
      end Housing;
      Housing housing(t=-n*flange_b.tau) if world.driveTrainMechanics3D;
    equation 
      flange_b.phi = phi0;
      connect(housing.frame_a, frame_a);
    end Mounting1D;

--------------

|image53| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.Rotor1D
------------------------------------------------------------------------------------------------------------------------------------

**1D inertia attachable on 3-dim. bodies (3D dynamic effects are taken
into account if world.driveTrainMechanics3D=true)**

.. figure:: Modelica.Mechanics.MultiBody.Parts.Rotor1DD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.Rotor1D

   Modelica.Mechanics.MultiBody.Parts.Rotor1D

Information
~~~~~~~~~~~

::

This component is used to model the gyroscopic torques exerted by a
1-dim. inertia (so called *rotor*) on its 3-dim. carrier body.
Gyroscopic torques appear, if the vector of the carrier body's angular
velocity is not parallel to the vector of the rotor's axis. The axis of
rotation of the rotor is defined by the parameter ``n``, which has to be
given in the local coordinate system of ``frame_a``. The default
animation of this component is shown in the figure below.

.. figure:: ../Resources/Images/MultiBody/Parts/Rotor1D.png
   :align: center
   :alt: model Parts.Rotor1D

   model Parts.Rotor1D
This component is a replacement for
`Modelica.Mechanics.Rotational.Components.Inertia <Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components.Inertia>`_
for the case, that a 1-dim.-rotational mechanical system should be
attached with a 3-dim. carrier body.

The Boolean parameter ``exact`` was introduced due to performance
reasons. If ``exact`` is set to **false**, the influence of the carrier
body motion on the angular velocity of the rotor is neglected. This
influence is usually negligible if the 1-dim.-rotational mechanical
system accelerates much faster as the base body (this is, e.g., the case
in vehicle powertrains). The essential advantage is that an algebraic
loop is removed since then there is only an action on acceleration level
from the powertrain to the base body but not vice versa.

**Reference**
 Schweiger, Christian ; Otter, Martin: `Modelling 3D Mechanical Effects
of 1-dim.
Powertrains <http://www.modelica.org/Conference2003/papers/h06_Schweiger_powertrains_v5.pdf>`_.
In: *Proceedings of the 3rd International Modelica Conference*.
Linköping : The Modelica Association and Linköping University, November
3-4, 2003, pp. 149-158

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                                                                  |
+===========================================================================================================================+=======================+===================================+==============================================================================================================================+
| Boolean                                                                                                                   | animation             | true                              | = true, if animation shall be enabled (show rotor as cylinder)                                                               |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | J                     |                                   | Moment of inertia of rotor around its axis of rotation [kg.m2]                                                               |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | n                     | {1,0,0}                           | Axis of rotation resolved in frame\_a [1]                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_center[3]          | zeros(3)                          | Position vector from origin of frame\_a to center of cylinder [m]                                                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | cylinderLength        | 2\*world.defaultJointLength       | Length of cylinder representing the rotor [m]                                                                                |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | cylinderDiameter      | 2\*world.defaultJointWidth        | Diameter of cylinder representing the rotor [m]                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | cylinderColor         | Modelica.Mechanics.MultiBody...   | Color of cylinder representing the rotor                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| StateSelect                                                                                                               | stateSelect           | StateSelect.default               | Priority to use rotor angle (phi) and rotor speed (w) as states                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | exact                 | true                              | = true, if exact calculations; false if influence of bearing on rotor acceleration is neglected to avoid an algebraic loop   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------------------+
| Type                                                                                                             | Name        | Description                                                                                          |
+==================================================================================================================+=============+======================================================================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange\_a   | (left) driving flange (flange axis directed INTO cut plane)                                          |
+------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange\_b   | (right) driven flange (flange axis directed OUT OF cut plane)                                        |
+------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------------------+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_       | frame\_a    | Frame in which rotor housing is fixed (connector is removed, if world.driveTrainMechanics3D=false)   |
+------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Rotor1D 
      "1D inertia attachable on 3-dim. bodies (3D dynamic effects are taken into account if world.driveTrainMechanics3D=true)"

      import SI = Modelica.SIunits;
      import Cv = Modelica.SIunits.Conversions;

      parameter Boolean animation=true 
        "= true, if animation shall be enabled (show rotor as cylinder)";
      parameter SI.Inertia J(min=0,start=1) 
        "Moment of inertia of rotor around its axis of rotation";
      parameter Modelica.Mechanics.MultiBody.Types.Axis n={1,0,0} 
        "Axis of rotation resolved in frame_a";
      parameter SI.Position r_center[3]=zeros(3) 
        "Position vector from origin of frame_a to center of cylinder";
      parameter SI.Distance cylinderLength=2*world.defaultJointLength 
        "Length of cylinder representing the rotor";
      parameter SI.Distance cylinderDiameter=2*world.defaultJointWidth 
        "Diameter of cylinder representing the rotor";
      input Modelica.Mechanics.MultiBody.Types.Color cylinderColor=Modelica.Mechanics.MultiBody.Types.Defaults.RodColor 
        "Color of cylinder representing the rotor";
      input Modelica.Mechanics.MultiBody.Types.SpecularCoefficient
        specularCoefficient=world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      parameter StateSelect stateSelect=StateSelect.default 
        "Priority to use rotor angle (phi) and rotor speed (w) as states";
      parameter Boolean exact=true 
        "= true, if exact calculations; false if influence of bearing on rotor acceleration is neglected to avoid an algebraic loop";

      SI.Angle phi(start=0, stateSelect=stateSelect) 
        "Rotation angle of rotor with respect to frame_a (= flange_a.phi = flange_b.phi)";
      SI.AngularVelocity w(start=0, stateSelect=stateSelect) 
        "Angular velocity of rotor with respect to frame_a";
      SI.AngularAcceleration a(start=0) 
        "Angular acceleration of rotor with respect to frame_a";

      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a 
        "(left) driving flange (flange axis directed INTO cut plane)";
      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b 
        "(right) driven flange (flange axis directed OUT OF cut plane)";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a if world.driveTrainMechanics3D 
        "Frame in which rotor housing is fixed (connector is removed, if world.driveTrainMechanics3D=false)";
        

    encapsulated model RotorWith3DEffects 
        "1D inertia attachable on 3-dim. bodies (3D dynamic effects are taken into account)"

        import Modelica;
        import Modelica.Mechanics.MultiBody.Frames;
        import Modelica.Mechanics.MultiBody.Types;
        import SI = Modelica.SIunits;
        import Cv = Modelica.SIunits.Conversions;

      parameter Boolean animation=true 
          "= true, if animation shall be enabled (show rotor as cylinder)";
      parameter SI.Inertia J(min=0)=1 
          "Moment of inertia of rotor around its axis of rotation";
      parameter Types.Axis n={1,0,0} "Axis of rotation resolved in frame_a";
      parameter SI.Position r_center[3]=zeros(3) 
          "Position vector from origin of frame_a to center of cylinder";
      parameter SI.Distance cylinderLength=2*world.defaultJointLength 
          "Length of cylinder representing the rotor";
      parameter SI.Distance cylinderDiameter=2*world.defaultJointWidth 
          "Diameter of cylinder representing the rotor";
      input Types.Color cylinderColor=Modelica.Mechanics.MultiBody.Types.Defaults.RodColor 
          "Color of cylinder representing the rotor";
      input Types.SpecularCoefficient specularCoefficient =                              world.defaultSpecularCoefficient 
          "Reflection of ambient light (= 0: light is completely absorbed)";
      parameter StateSelect stateSelect=StateSelect.default 
          "Priority to use rotor angle (phi) and rotor speed (w) as states";
      parameter Boolean exact=true 
          "= true, if exact calculations; false if influence of bearing on rotor acceleration is neglected to avoid an algebraic loop";

      SI.AngularVelocity w_a[3] "Angular velocity of frame_a, resolved in frame_a";
      SI.Angle phi(start=0, final stateSelect=stateSelect) 
          "Rotation angle of rotor with respect to frame_a (= flange_a.phi = flange_b.phi)";

      SI.AngularVelocity w(start=0, stateSelect=stateSelect) 
          "Angular velocity of rotor with respect to frame_a";
      SI.AngularAcceleration a(start=0) 
          "Angular acceleration of rotor with respect to frame_a";

      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a 
          "(left) driving flange (flange axis directed INTO cut plane)";
      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b 
          "(right) driven flange (flange axis directed OUT OF cut plane)";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
          "Frame in which rotor housing is fixed";

      protected 
      outer Modelica.Mechanics.MultiBody.World world;
      parameter Real e[3](each final unit="1")=Modelica.Math.Vectors.normalize(
                                           n,0.0) 
          "Unit vector in direction of rotor axis, resolved in frame_a";
      parameter SI.Inertia nJ[3]=J*e;
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape cylinder(
        shapeType="cylinder",
        color=cylinderColor,
        specularCoefficient=specularCoefficient,
        length=cylinderLength,
        width=cylinderDiameter,
        height=cylinderDiameter,
        lengthDirection=n,
        widthDirection={0,1,0},
        extra=1,
        r_shape=r_center - e*(cylinderLength/2),
        r=frame_a.r_0,
        R=Frames.absoluteRotation(frame_a.R, Frames.planarRotation(e, phi, 0))) if 
           world.enableAnimation and animation;
    equation 
      phi = flange_a.phi;
      phi = flange_b.phi;
      w = der(phi);
      a = der(w);

      w_a = Modelica.Mechanics.MultiBody.Frames.angularVelocity2(frame_a.R);
      if exact then
        J*a = flange_a.tau + flange_b.tau - nJ*der(w_a);
      else
        J*a = flange_a.tau + flange_b.tau;
      end if;

     /* Reaction torque:
            t = n*(J*a - flange_a.tau - flange_b.tau) + cross(w_a, nJ*w)

         Since
            J*a = flange_a.tau + flange_b.tau - nJ*der(w_a);

         the reaction torque can be simplified to
            t = n*(- nJ*der(w_a)) + cross(w_a, nJ*w)

      */
      frame_a.f = zeros(3);
      frame_a.t = cross(w_a, nJ*w)-e*(nJ*der(w_a));
    end RotorWith3DEffects;

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
      parameter Real e[3](each final unit="1")=Modelica.Math.Vectors.normalize(
                                           n,0.0) 
        "Unit vector in direction of rotor axis, resolved in frame_a";
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape cylinder(
        shapeType="cylinder",
        color=cylinderColor,
        specularCoefficient=specularCoefficient,
        length=cylinderLength,
        width=cylinderDiameter,
        height=cylinderDiameter,
        lengthDirection=n,
        widthDirection={0,1,0},
        extra=1,
        r_shape=r_center - e*(cylinderLength/2),
        r=zeros(3),
        R=Modelica.Mechanics.MultiBody.Frames.planarRotation(
            e,
            phi,
            0)) if world.enableAnimation and animation and not world.driveTrainMechanics3D;

      Modelica.Mechanics.Rotational.Components.Inertia inertia(
        J=J) if 
            not world.driveTrainMechanics3D;
      RotorWith3DEffects rotorWith3DEffects(
        animation=animation,
        J=J,
        n=n,
        r_center=r_center,
        cylinderLength=cylinderLength,
        cylinderDiameter=cylinderDiameter,
        cylinderColor=cylinderColor,
        specularCoefficient=specularCoefficient,
        exact=exact) if world.driveTrainMechanics3D;
    equation 
      phi = flange_a.phi;
      w = der(phi);
      a = der(w);

      connect(inertia.flange_a, flange_a);
      connect(inertia.flange_b, flange_b);
      connect(rotorWith3DEffects.flange_b, flange_b);
      connect(rotorWith3DEffects.flange_a, flange_a);
      connect(rotorWith3DEffects.frame_a, frame_a);
    end Rotor1D;

--------------

|image54| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.BevelGear1D
----------------------------------------------------------------------------------------------------------------------------------------

**1D gearbox with arbitrary shaft directions and 3-dim. bearing frame
(3D dynamic effects are taken into account provided
world.driveTrainMechanics3D=true)**

.. figure:: Modelica.Mechanics.MultiBody.Parts.BevelGear1DD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.BevelGear1D

   Modelica.Mechanics.MultiBody.Parts.BevelGear1D

Information
~~~~~~~~~~~

::

This component is used to model a 1-dim. gearbox with non-parallel axes
(defined by parameters ``n_a``, ``n_b``). A 3-dim. ``bearing`` frame is
necessary to reflect the correct support torque, as the axes of rotation
of ``flange_a`` and ``flange_b`` and the direction of the support torque
vector are different in general.

Note: The name BevelGear1D is kept only for simplicity. Regardless, this
component could be used to model any kind of gearbox with non-parallel
axes.

**Reference**
 Schweiger, Christian ; Otter, Martin: `Modelling 3D Mechanical Effects
of 1-dim.
Powertrains <http://www.modelica.org/Conference2003/papers/h06_Schweiger_powertrains_v5.pdf>`_.
In: *Proceedings of the 3rd International Modelica Conference*.
Linköping : The Modelica Association and Linköping University, November
3-4, 2003, pp. 149-158

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges>`_
(Partial model for a component with two rotational 1-dim. shaft
flanges).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+---------+-----------+-----------------------------------------------------------+
| Type                                                                                        | Name    | Default   | Description                                               |
+=============================================================================================+=========+===========+===========================================================+
| Real                                                                                        | ratio   |           | Gear speed ratio                                          |
+---------------------------------------------------------------------------------------------+---------+-----------+-----------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_   | n\_a    | {1,0,0}   | Axis of rotation of flange\_a, resolved in frame\_a [1]   |
+---------------------------------------------------------------------------------------------+---------+-----------+-----------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_   | n\_b    | {1,0,0}   | Axis of rotation of flange\_b, resolved in frame\_a [1]   |
+---------------------------------------------------------------------------------------------+---------+-----------+-----------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-------------+-------------------------+
| Type                                                                                                             | Name        | Description             |
+==================================================================================================================+=============+=========================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange\_a   | Flange of left shaft    |
+------------------------------------------------------------------------------------------------------------------+-------------+-------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange\_b   | Flange of right shaft   |
+------------------------------------------------------------------------------------------------------------------+-------------+-------------------------+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_       | frame\_a    | Bearing frame           |
+------------------------------------------------------------------------------------------------------------------+-------------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BevelGear1D 
      "1D gearbox with arbitrary shaft directions and 3-dim. bearing frame (3D dynamic effects are taken into account provided world.driveTrainMechanics3D=true)"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges;

      parameter Real ratio(start=1) "Gear speed ratio";
      parameter Modelica.Mechanics.MultiBody.Types.Axis n_a={1,0,0} 
        "Axis of rotation of flange_a, resolved in frame_a";
      parameter Modelica.Mechanics.MultiBody.Types.Axis n_b={1,0,0} 
        "Axis of rotation of flange_b, resolved in frame_a";

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a if world.driveTrainMechanics3D 
        "Bearing frame";

    protected 
      outer World world;
      parameter Real e_a[3](each final unit="1")=Modelica.Math.Vectors.normalize(n_a,0.0) 
        "Unit vector in direction of flange_a rotation axis";
      parameter Real e_b[3](each final unit="1")=Modelica.Math.Vectors.normalize(n_b,0.0) 
        "Unit vector in direction of flange_b rotation axis";
      encapsulated model Housing
        import Modelica;
        input Modelica.SIunits.Torque t[3];
        Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a;
      equation 
        frame_a.f=zeros(3);
        frame_a.t=t;
      end Housing;
      Housing housing(t=-flange_a.tau*e_a - flange_b.tau*e_b) if world.driveTrainMechanics3D;

    equation 
      flange_a.phi = ratio*flange_b.phi;
      0 = ratio*flange_a.tau + flange_b.tau;
      connect(housing.frame_a, frame_a);
    end BevelGear1D;

--------------

|image55| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.RollingWheel
-----------------------------------------------------------------------------------------------------------------------------------------

**Ideal rolling wheel on flat surface z=0 (5 positional, 3 velocity
degrees of freedom)**

.. figure:: Modelica.Mechanics.MultiBody.Parts.RollingWheelD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.RollingWheel

   Modelica.Mechanics.MultiBody.Parts.RollingWheel

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| Type                                                                                          | Name                   | Default              | Description                                                               |
+===============================================================================================+========================+======================+===========================================================================+
| Boolean                                                                                       | animation              | true                 | = true, if animation of wheel shall be enabled                            |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                                     | wheelRadius            |                      | Radius of wheel [m]                                                       |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                         | wheelMass              |                      | Mass of wheel [kg]                                                        |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                   | wheel\_I\_axis         |                      | Inertia along the wheel axis [kg.m2]                                      |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                   | wheel\_I\_long         |                      | Inertia perpendicular to the wheel axis [kg.m2]                           |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| StateSelect                                                                                   | stateSelect            | StateSelect.always   | Priority to use generalized coordinates as states                         |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| Initialization                                                                                |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                       | angles.start[3]        | **{0,0,0}**          | Angles to rotate world-frame in to frame\_a around z-, y-, x-axis [rad]   |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                   | der\_angles.start[3]   | **{0,0,0}**          | Derivative of angles [rad/s]                                              |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| **Animation**                                                                                 |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| if animation = true                                                                           |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                 | width                  | 0.035                | Width of wheel [m]                                                        |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| Real                                                                                          | hollowFraction         | 0.8                  | 1.0: Completely hollow, 0.0: rigid cylinder                               |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_   | wheelColor             | {30,30,30}           | Color of wheel                                                            |
+-----------------------------------------------------------------------------------------------+------------------------+----------------------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                                     |
+==============================================================================================================+============+=================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Frame fixed in wheel center point. y-axis: along wheel axis, z-Axis: upwards,   |
+--------------------------------------------------------------------------------------------------------------+------------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RollingWheel 
      "Ideal rolling wheel on flat surface z=0 (5 positional, 3 velocity degrees of freedom)"
      import SI = Modelica.SIunits;

      parameter Boolean animation=true 
        "= true, if animation of wheel shall be enabled";

      parameter SI.Radius wheelRadius "Radius of wheel";
      parameter SI.Mass wheelMass "Mass of wheel";
      parameter SI.Inertia wheel_I_axis "Inertia along the wheel axis";
      parameter SI.Inertia wheel_I_long "Inertia perpendicular to the wheel axis";
      parameter StateSelect stateSelect=StateSelect.always 
        "Priority to use generalized coordinates as states";

      SI.Position x(start=0, fixed = true, stateSelect=stateSelect) 
        "x-coordinate of wheel axis";

      SI.Position y(start=0, fixed = true, stateSelect=stateSelect) 
        "y-coordinate of wheel axis";

      SI.Angle angles[3](start={0,0,0}, fixed = true, each stateSelect=stateSelect) 
        "Angles to rotate world-frame in to frame_a around z-, y-, x-axis";

      SI.AngularVelocity der_angles[3](start={0,0,0}, fixed = true, each 
        stateSelect =                                                                stateSelect) 
        "Derivative of angles";

      parameter SI.Distance width = 0.035 "Width of wheel";
      parameter Real hollowFraction = 0.8 
        "1.0: Completely hollow, 0.0: rigid cylinder";
      parameter Modelica.Mechanics.MultiBody.Types.Color wheelColor={30,30,30} 
        "Color of wheel";

      Modelica.Mechanics.MultiBody.Parts.Body body(
        final r_CM={0,0,0},
        final m=wheelMass,
        final I_11=wheel_I_long,
        final I_22=wheel_I_axis,
        final I_33=wheel_I_long,
        final I_21=0,
        final I_31=0,
        final I_32=0,
        animation=false);

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
        "Frame fixed in wheel center point. y-axis: along wheel axis, z-Axis: upwards, ";
      Modelica.Mechanics.MultiBody.Joints.RollingWheel rollingWheel(wheelRadius=wheelRadius,
          stateSelect=StateSelect.avoid);
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(
        final animation=animation,
        final r_shape={0,-width,0},
        final lengthDirection={0,1,0},
        final widthDirection={1,0,0},
        final length=2*width,
        final width=2*wheelRadius,
        final height=2*wheelRadius,
        final color=wheelColor,
        final extra=hollowFraction,
        final shapeType="pipe") if 
                      animation;

    equation 
      rollingWheel.x = x;
      rollingWheel.y = y;
      rollingWheel.angles = angles;
      rollingWheel.der_angles = der_angles;

      connect(body.frame_a, frame_a);
      connect(rollingWheel.frame_a, frame_a);
      connect(fixedShape.frame_a, frame_a);
    end RollingWheel;

--------------

|image56| `Modelica.Mechanics.MultiBody.Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_.RollingWheelSet
--------------------------------------------------------------------------------------------------------------------------------------------

**Ideal rolling wheel set consisting of two ideal rolling wheels
connected together by an axis**

.. figure:: Modelica.Mechanics.MultiBody.Parts.RollingWheelSetD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.RollingWheelSet

   Modelica.Mechanics.MultiBody.Parts.RollingWheelSet

Information
~~~~~~~~~~~

::

Two wheels are connected by an axis and can rotate around this axis. The
wheels are rolling on the x-y plane. The coordinate system attached to
the center of the wheel axis (frameMiddle) is constrained so that it is
always parallel to the x-y plane. If all generalized coordinates are
zero, frameMiddle is parallel to the world frame.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| Type                                                                                          | Name             | Default              | Description                                             |
+===============================================================================================+==================+======================+=========================================================+
| Boolean                                                                                       | animation        | true                 | = true, if animation of wheel set shall be enabled      |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                                     | wheelRadius      |                      | Radius of one wheel [m]                                 |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                         | wheelMass        |                      | Mass of one wheel [kg]                                  |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                   | wheel\_I\_axis   |                      | Inertia along one wheel axis [kg.m2]                    |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                   | wheel\_I\_long   |                      | Inertia perpendicular to one wheel axis [kg.m2]         |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                 | wheelDistance    |                      | Distance between the two wheels [m]                     |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| StateSelect                                                                                   | stateSelect      | StateSelect.always   | Priority to use the generalized coordinates as states   |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| **Animation**                                                                                 |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| if animation = true                                                                           |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                 | wheelWidth       | 0.01                 | Width of one wheel [m]                                  |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| Real                                                                                          | hollowFraction   | 0.8                  | 1.0: Completely hollow, 0.0: rigid cylinder             |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_   | wheelColor       | {30,30,30}           | Color of wheels                                         |
+-----------------------------------------------------------------------------------------------+------------------+----------------------+---------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+---------------+----------------------------------------------------------------------------------------------------+
| Type                                                                                                             | Name          | Description                                                                                        |
+==================================================================================================================+===============+====================================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_       | frameMiddle   | Frame fixed in middle of axis connecting both wheels (y-axis: along wheel axis, z-Axis: upwards)   |
+------------------------------------------------------------------------------------------------------------------+---------------+----------------------------------------------------------------------------------------------------+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_       | frame1        | Frame fixed in center point of left wheel (y-axis: along wheel axis, z-Axis: upwards)              |
+------------------------------------------------------------------------------------------------------------------+---------------+----------------------------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_       | frame2        | Frame fixed in center point of right wheel (y-axis: along wheel axis, z-Axis: upwards)             |
+------------------------------------------------------------------------------------------------------------------+---------------+----------------------------------------------------------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | axis1         | 1-dim. rotational flange that drives the left wheel                                                |
+------------------------------------------------------------------------------------------------------------------+---------------+----------------------------------------------------------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | axis2         | 1-dim. rotational flange that drives the right wheel                                               |
+------------------------------------------------------------------------------------------------------------------+---------------+----------------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | support       | Support of 1D axes                                                                                 |
+------------------------------------------------------------------------------------------------------------------+---------------+----------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RollingWheelSet 
      "Ideal rolling wheel set consisting of two ideal rolling wheels connected together by an axis"
      import SI = Modelica.SIunits;
     Modelica.Mechanics.MultiBody.Interfaces.Frame_a frameMiddle 
        "Frame fixed in middle of axis connecting both wheels (y-axis: along wheel axis, z-Axis: upwards)";
        

      parameter Boolean animation=true 
        "= true, if animation of wheel set shall be enabled";

      parameter SI.Radius wheelRadius "Radius of one wheel";
      parameter SI.Mass wheelMass "Mass of one wheel";
      parameter SI.Inertia wheel_I_axis "Inertia along one wheel axis";
      parameter SI.Inertia wheel_I_long "Inertia perpendicular to one wheel axis";
      parameter SI.Distance wheelDistance "Distance between the two wheels";
       parameter StateSelect stateSelect = StateSelect.always 
        "Priority to use the generalized coordinates as states";

      Modelica.SIunits.Position x(start=0, fixed=true, stateSelect=stateSelect) 
        "x coordinate of center between wheels";
      Modelica.SIunits.Position y(start=0, fixed=true, stateSelect=stateSelect) 
        "y coordinate of center between wheels";
      Modelica.SIunits.Angle phi(start=0, fixed=true, stateSelect=stateSelect) 
        "Orientation angle of wheel axis along z-axis";
      Modelica.SIunits.Angle theta1(start=0, fixed=true, stateSelect=stateSelect) 
        "Angle of wheel 1";
      Modelica.SIunits.Angle theta2(start=0, fixed=true, stateSelect=stateSelect) 
        "Angle of wheel 2";
      Modelica.SIunits.AngularVelocity der_theta1(start=0, fixed=true, stateSelect=stateSelect) 
        "Derivative of theta 1";
      Modelica.SIunits.AngularVelocity der_theta2(start=0, fixed=true, stateSelect=stateSelect) 
        "Derivative of theta 2";

      parameter SI.Distance wheelWidth = 0.01 "Width of one wheel";
      parameter Real hollowFraction = 0.8 
        "1.0: Completely hollow, 0.0: rigid cylinder";
      parameter Modelica.Mechanics.MultiBody.Types.Color wheelColor={30,30,30} 
        "Color of wheels";

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame1 
        "Frame fixed in center point of left wheel (y-axis: along wheel axis, z-Axis: upwards)";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame2 
        "Frame fixed in center point of right wheel (y-axis: along wheel axis, z-Axis: upwards)";
      Modelica.Mechanics.MultiBody.Parts.Body body2(
        final r_CM={0,0,0},
        final I_21=0,
        final I_31=0,
        final I_32=0,
        animation=false,
        final m=wheelMass,
        final I_11=wheel_I_long,
        final I_22=wheel_I_axis,
        final I_33=wheel_I_long);
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape shape2(
        final animation=animation,
        final lengthDirection={0,1,0},
        final widthDirection={1,0,0},
        final color=wheelColor,
        final extra=hollowFraction,
        final shapeType="pipe",
        final r_shape={0,-wheelWidth,0},
        final length=2*wheelWidth,
        final width=2*wheelRadius,
        final height=2*wheelRadius) if 
                      animation;
      Modelica.Mechanics.MultiBody.Parts.Body body1(
        final r_CM={0,0,0},
        final I_21=0,
        final I_31=0,
        final I_32=0,
        animation=false,
        final m=wheelMass,
        final I_11=wheel_I_long,
        final I_22=wheel_I_axis,
        final I_33=wheel_I_long);
      Modelica.Mechanics.MultiBody.Visualizers.FixedShape shape1(
        final animation=animation,
        final lengthDirection={0,1,0},
        final widthDirection={1,0,0},
        final color=wheelColor,
        final extra=hollowFraction,
        final shapeType="pipe",
        final r_shape={0,-wheelWidth,0},
        final length=2*wheelWidth,
        final width=2*wheelRadius,
        final height=2*wheelRadius) if 
                      animation;
      Modelica.Mechanics.Rotational.Interfaces.Flange_a axis1 
        "1-dim. rotational flange that drives the left wheel";
      Modelica.Mechanics.Rotational.Interfaces.Flange_a axis2 
        "1-dim. rotational flange that drives the right wheel";
      Modelica.Mechanics.MultiBody.Joints.RollingWheelSet wheelSetJoint(
        animation=false,
        wheelRadius=wheelRadius,
        wheelDistance=wheelDistance,
        stateSelect=StateSelect.default,
        x(fixed=false),
        y(fixed=false),
        phi(fixed=false),
        theta1(fixed=false),
        theta2(fixed=false),
        der_theta1(fixed=false),
        der_theta2(fixed=false));
      Modelica.Mechanics.Rotational.Interfaces.Flange_b support 
        "Support of 1D axes";
    equation 
      wheelSetJoint.x      = x;
      wheelSetJoint.y      = y;
      wheelSetJoint.phi    = phi;
      wheelSetJoint.theta1 = theta1;
      wheelSetJoint.theta2 = theta2;
      der_theta1 = der(theta1);
      der_theta2 = der(theta2);

      connect(body2.frame_a,frame2);
      connect(body1.frame_a, frame1);
      connect(shape1.frame_a, frame1);
      connect(shape2.frame_a, frame2);
      connect(wheelSetJoint.frame2, frame2);
      connect(wheelSetJoint.frame1, frame1);
      connect(wheelSetJoint.axis1, axis1);
      connect(wheelSetJoint.axis2, axis2);
      connect(wheelSetJoint.support, support);
      connect(wheelSetJoint.frameMiddle, frameMiddle);
    end RollingWheelSet;

--------------

|Modelica.Mechanics.MultiBody.Parts.Mounting1D.Housing| `Modelica.Mechanics.MultiBody.Parts.Mounting1D <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Mounting1D>`_.Housing
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

.. figure:: Modelica.Mechanics.MultiBody.Parts.Mounting1D.HousingD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.Mounting1D.Housing

   Modelica.Mechanics.MultiBody.Parts.Mounting1D.Housing

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

    encapsulated model Housing
      import Modelica;
      input Modelica.SIunits.Torque t[3];
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a;
    equation 
      frame_a.f=zeros(3);
      frame_a.t=t;
    end Housing;

--------------

|Modelica.Mechanics.MultiBody.Parts.Rotor1D.RotorWith3DEffects| `Modelica.Mechanics.MultiBody.Parts.Rotor1D <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Rotor1D>`_.RotorWith3DEffects
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**1D inertia attachable on 3-dim. bodies (3D dynamic effects are taken
into account)**

.. figure:: Modelica.Mechanics.MultiBody.Parts.Rotor1D.RotorWith3DEffectsD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.Rotor1D.RotorWith3DEffects

   Modelica.Mechanics.MultiBody.Parts.Rotor1D.RotorWith3DEffects

Information
~~~~~~~~~~~

::

This component is used to model the gyroscopic torques exerted by a
1-dim. inertia (so called *rotor*) on its 3-dim. carrier body.
Gyroscopic torques appear, if the vector of the carrier body's angular
velocity is not parallel to the vector of the rotor's axis. The axis of
rotation of the rotor is defined by the parameter ``n``, which has to be
given in the local coordinate system of ``frame_a``. The default
animation of this component is shown in the figure below.

.. figure:: ../Resources/Images/MultiBody/Parts/Rotor1D.png
   :align: center
   :alt: model Parts.Rotor1D

   model Parts.Rotor1D
This component is a replacement for
`Modelica.Mechanics.Rotational.Components.Inertia <Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components.Inertia>`_
for the case, that a 1-dim.-rotational mechanical system should be
attached with a 3-dim. carrier body.

The Boolean parameter ``exact`` was introduced due to performance
reasons. If ``exact`` is set to **false**, the influence of the carrier
body motion on the angular velocity of the rotor is neglected. This
influence is usually negligible if the 1-dim.-rotational mechanical
system accelerates much faster as the base body (this is, e.g., the case
in vehicle powertrains). The essential advantage is that an algebraic
loop is removed since then there is only an action on acceleration level
from the powertrain to the base body but not vice versa.

**Reference**
 Schweiger, Christian ; Otter, Martin: `Modelling 3D Mechanical Effects
of 1-dim.
Powertrains <http://www.modelica.org/Conference2003/papers/h06_Schweiger_powertrains_v5.pdf>`_.
In: *Proceedings of the 3rd International Modelica Conference*.
Linköping : The Modelica Association and Linköping University, November
3-4, 2003, pp. 149-158

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                                                                  |
+===========================================================================================================================+=======================+===================================+==============================================================================================================================+
| Boolean                                                                                                                   | animation             | true                              | = true, if animation shall be enabled (show rotor as cylinder)                                                               |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | J                     | 1                                 | Moment of inertia of rotor around its axis of rotation [kg.m2]                                                               |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                 | n                     | {1,0,0}                           | Axis of rotation resolved in frame\_a [1]                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| Initialization                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                                                   | phi.start             | 0                                 | Rotation angle of rotor with respect to frame\_a (= flange\_a.phi = flange\_b.phi) [rad]                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                               | w.start               | 0                                 | Angular velocity of rotor with respect to frame\_a [rad/s]                                                                   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `AngularAcceleration <Modelica_SIunits.html#Modelica.SIunits.AngularAcceleration>`_                                       | a.start               | 0                                 | Angular acceleration of rotor with respect to frame\_a [rad/s2]                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| **Animation**                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_center[3]          | zeros(3)                          | Position vector from origin of frame\_a to center of cylinder [m]                                                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | cylinderLength        | 2\*world.defaultJointLength       | Length of cylinder representing the rotor [m]                                                                                |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | cylinderDiameter      | 2\*world.defaultJointWidth        | Diameter of cylinder representing the rotor [m]                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | cylinderColor         | Modelica.Mechanics.MultiBody...   | Color of cylinder representing the rotor                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| StateSelect                                                                                                               | stateSelect           | StateSelect.default               | Priority to use rotor angle (phi) and rotor speed (w) as states                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | exact                 | true                              | = true, if exact calculations; false if influence of bearing on rotor acceleration is neglected to avoid an algebraic loop   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------------+
| Type                                                                                                             | Name        | Description                                                     |
+==================================================================================================================+=============+=================================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange\_a   | (left) driving flange (flange axis directed INTO cut plane)     |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange\_b   | (right) driven flange (flange axis directed OUT OF cut plane)   |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------------+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_       | frame\_a    | Frame in which rotor housing is fixed                           |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    encapsulated model RotorWith3DEffects 
      "1D inertia attachable on 3-dim. bodies (3D dynamic effects are taken into account)"

        import Modelica;
        import Modelica.Mechanics.MultiBody.Frames;
        import Modelica.Mechanics.MultiBody.Types;
        import SI = Modelica.SIunits;
        import Cv = Modelica.SIunits.Conversions;

      parameter Boolean animation=true 
        "= true, if animation shall be enabled (show rotor as cylinder)";
      parameter SI.Inertia J(min=0)=1 
        "Moment of inertia of rotor around its axis of rotation";
      parameter Types.Axis n={1,0,0} "Axis of rotation resolved in frame_a";
      parameter SI.Position r_center[3]=zeros(3) 
        "Position vector from origin of frame_a to center of cylinder";
      parameter SI.Distance cylinderLength=2*world.defaultJointLength 
        "Length of cylinder representing the rotor";
      parameter SI.Distance cylinderDiameter=2*world.defaultJointWidth 
        "Diameter of cylinder representing the rotor";
      input Types.Color cylinderColor=Modelica.Mechanics.MultiBody.Types.Defaults.RodColor 
        "Color of cylinder representing the rotor";
      input Types.SpecularCoefficient specularCoefficient =                              world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      parameter StateSelect stateSelect=StateSelect.default 
        "Priority to use rotor angle (phi) and rotor speed (w) as states";
      parameter Boolean exact=true 
        "= true, if exact calculations; false if influence of bearing on rotor acceleration is neglected to avoid an algebraic loop";

      SI.AngularVelocity w_a[3] "Angular velocity of frame_a, resolved in frame_a";
      SI.Angle phi(start=0, final stateSelect=stateSelect) 
        "Rotation angle of rotor with respect to frame_a (= flange_a.phi = flange_b.phi)";

      SI.AngularVelocity w(start=0, stateSelect=stateSelect) 
        "Angular velocity of rotor with respect to frame_a";
      SI.AngularAcceleration a(start=0) 
        "Angular acceleration of rotor with respect to frame_a";

      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a 
        "(left) driving flange (flange axis directed INTO cut plane)";
      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b 
        "(right) driven flange (flange axis directed OUT OF cut plane)";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
        "Frame in which rotor housing is fixed";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
      parameter Real e[3](each final unit="1")=Modelica.Math.Vectors.normalize(
                                           n,0.0) 
        "Unit vector in direction of rotor axis, resolved in frame_a";
      parameter SI.Inertia nJ[3]=J*e;
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape cylinder(
        shapeType="cylinder",
        color=cylinderColor,
        specularCoefficient=specularCoefficient,
        length=cylinderLength,
        width=cylinderDiameter,
        height=cylinderDiameter,
        lengthDirection=n,
        widthDirection={0,1,0},
        extra=1,
        r_shape=r_center - e*(cylinderLength/2),
        r=frame_a.r_0,
        R=Frames.absoluteRotation(frame_a.R, Frames.planarRotation(e, phi, 0))) if 
           world.enableAnimation and animation;
    equation 
      phi = flange_a.phi;
      phi = flange_b.phi;
      w = der(phi);
      a = der(w);

      w_a = Modelica.Mechanics.MultiBody.Frames.angularVelocity2(frame_a.R);
      if exact then
        J*a = flange_a.tau + flange_b.tau - nJ*der(w_a);
      else
        J*a = flange_a.tau + flange_b.tau;
      end if;

     /* Reaction torque:
            t = n*(J*a - flange_a.tau - flange_b.tau) + cross(w_a, nJ*w)

         Since
            J*a = flange_a.tau + flange_b.tau - nJ*der(w_a);

         the reaction torque can be simplified to
            t = n*(- nJ*der(w_a)) + cross(w_a, nJ*w)

      */
      frame_a.f = zeros(3);
      frame_a.t = cross(w_a, nJ*w)-e*(nJ*der(w_a));
    end RotorWith3DEffects;

--------------

|Modelica.Mechanics.MultiBody.Parts.BevelGear1D.Housing| `Modelica.Mechanics.MultiBody.Parts.BevelGear1D <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.BevelGear1D>`_.Housing
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

.. figure:: Modelica.Mechanics.MultiBody.Parts.BevelGear1D.HousingD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Parts.BevelGear1D.Housing

   Modelica.Mechanics.MultiBody.Parts.BevelGear1D.Housing

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

    encapsulated model Housing
      import Modelica;
      input Modelica.SIunits.Torque t[3];
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a;
    equation 
      frame_a.f=zeros(3);
      frame_a.t=t;
    end Housing;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:35
2010.

.. |model Parts.Fixed| image:: ../Resources/Images/MultiBody/Fixed.png
.. |model
Parts.FixedTranslation| image:: ../Resources/Images/MultiBody/FixedTranslation.png
.. |model
Parts.FixedRotation| image:: ../Resources/Images/MultiBody/FixedRotation.png
.. |model Parts.Body| image:: ../Resources/Images/MultiBody/Body.png
.. |model
Parts.BodyShape| image:: ../Resources/Images/MultiBody/BodyShape.png
.. |model
Parts.BodyBox| image:: ../Resources/Images/MultiBody/BodyBox.png
.. |model
Parts.BodyCylinder| image:: ../Resources/Images/MultiBody/BodyCylinder.png
.. |model
Parts.PointMass| image:: ../Resources/Images/MultiBody/Parts/PointMass.png
.. |model
Parts.Rotor1D| image:: ../Resources/Images/MultiBody/Parts/Rotor1D.png
.. |image9| image:: ../Resources/Images/MultiBody/Fixed.png
.. |image10| image:: ../Resources/Images/MultiBody/FixedTranslation.png
.. |image11| image:: ../Resources/Images/MultiBody/FixedRotation.png
.. |image12| image:: ../Resources/Images/MultiBody/Body.png
.. |image13| image:: ../Resources/Images/MultiBody/BodyShape.png
.. |image14| image:: ../Resources/Images/MultiBody/BodyBox.png
.. |image15| image:: ../Resources/Images/MultiBody/BodyCylinder.png
.. |image16| image:: ../Resources/Images/MultiBody/Parts/PointMass.png
.. |image17| image:: ../Resources/Images/MultiBody/Parts/Rotor1D.png
.. |Modelica.Mechanics.MultiBody.Parts.Fixed| image:: Modelica.Mechanics.MultiBody.Parts.FixedS.png
.. |Modelica.Mechanics.MultiBody.Parts.FixedTranslation| image:: Modelica.Mechanics.MultiBody.Parts.FixedTranslationS.png
.. |Modelica.Mechanics.MultiBody.Parts.FixedRotation| image:: Modelica.Mechanics.MultiBody.Parts.FixedRotationS.png
.. |Modelica.Mechanics.MultiBody.Parts.Body| image:: Modelica.Mechanics.MultiBody.Parts.BodyS.png
.. |Modelica.Mechanics.MultiBody.Parts.BodyShape| image:: Modelica.Mechanics.MultiBody.Parts.BodyShapeS.png
.. |Modelica.Mechanics.MultiBody.Parts.BodyBox| image:: Modelica.Mechanics.MultiBody.Parts.BodyBoxS.png
.. |Modelica.Mechanics.MultiBody.Parts.BodyCylinder| image:: Modelica.Mechanics.MultiBody.Parts.BodyCylinderS.png
.. |Modelica.Mechanics.MultiBody.Parts.PointMass| image:: Modelica.Mechanics.MultiBody.Parts.PointMassS.png
.. |Modelica.Mechanics.MultiBody.Parts.Mounting1D| image:: Modelica.Mechanics.MultiBody.Parts.Mounting1DS.png
.. |Modelica.Mechanics.MultiBody.Parts.Rotor1D| image:: Modelica.Mechanics.MultiBody.Parts.Rotor1DS.png
.. |Modelica.Mechanics.MultiBody.Parts.BevelGear1D| image:: Modelica.Mechanics.MultiBody.Parts.BevelGear1DS.png
.. |Modelica.Mechanics.MultiBody.Parts.RollingWheel| image:: Modelica.Mechanics.MultiBody.Parts.RollingWheelS.png
.. |Modelica.Mechanics.MultiBody.Parts.RollingWheelSet| image:: Modelica.Mechanics.MultiBody.Parts.RollingWheelSetS.png
.. |image31| image:: Modelica.Mechanics.MultiBody.Parts.FixedS.png
.. |image32| image:: Modelica.Mechanics.MultiBody.Parts.FixedTranslationS.png
.. |image33| image:: Modelica.Mechanics.MultiBody.Parts.FixedRotationS.png
.. |image34| image:: Modelica.Mechanics.MultiBody.Parts.BodyS.png
.. |image35| image:: Modelica.Mechanics.MultiBody.Parts.BodyShapeS.png
.. |image36| image:: Modelica.Mechanics.MultiBody.Parts.BodyBoxS.png
.. |image37| image:: Modelica.Mechanics.MultiBody.Parts.BodyCylinderS.png
.. |image38| image:: Modelica.Mechanics.MultiBody.Parts.PointMassS.png
.. |image39| image:: Modelica.Mechanics.MultiBody.Parts.Mounting1DS.png
.. |image40| image:: Modelica.Mechanics.MultiBody.Parts.Rotor1DS.png
.. |image41| image:: Modelica.Mechanics.MultiBody.Parts.BevelGear1DS.png
.. |image42| image:: Modelica.Mechanics.MultiBody.Parts.RollingWheelS.png
.. |image43| image:: Modelica.Mechanics.MultiBody.Parts.RollingWheelSetS.png
.. |image44| image:: Modelica.Mechanics.MultiBody.Parts.FixedI.png
.. |image45| image:: Modelica.Mechanics.MultiBody.Parts.FixedTranslationI.png
.. |image46| image:: Modelica.Mechanics.MultiBody.Parts.FixedRotationI.png
.. |image47| image:: Modelica.Mechanics.MultiBody.Parts.BodyI.png
.. |image48| image:: Modelica.Mechanics.MultiBody.Parts.BodyShapeI.png
.. |image49| image:: Modelica.Mechanics.MultiBody.Parts.BodyBoxI.png
.. |image50| image:: Modelica.Mechanics.MultiBody.Parts.BodyCylinderI.png
.. |image51| image:: Modelica.Mechanics.MultiBody.Parts.PointMassI.png
.. |image52| image:: Modelica.Mechanics.MultiBody.Parts.Mounting1DI.png
.. |image53| image:: Modelica.Mechanics.MultiBody.Parts.Rotor1DI.png
.. |image54| image:: Modelica.Mechanics.MultiBody.Parts.BevelGear1DI.png
.. |image55| image:: Modelica.Mechanics.MultiBody.Parts.RollingWheelI.png
.. |image56| image:: Modelica.Mechanics.MultiBody.Parts.RollingWheelSetI.png
.. |Modelica.Mechanics.MultiBody.Parts.Mounting1D.Housing| image:: Modelica.Mechanics.MultiBody.Parts.Mounting1D.HousingI.png
.. |Modelica.Mechanics.MultiBody.Parts.Rotor1D.RotorWith3DEffects| image:: Modelica.Mechanics.MultiBody.Parts.Rotor1D.RotorWith3DEffectsI.png
.. |Modelica.Mechanics.MultiBody.Parts.BevelGear1D.Housing| image:: Modelica.Mechanics.MultiBody.Parts.BevelGear1D.HousingI.png
