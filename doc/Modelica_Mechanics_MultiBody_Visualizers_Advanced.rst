=================================================
Modelica.Mechanics.MultiBody.Visualizers.Advanced
=================================================

`Modelica.Mechanics.MultiBody.Visualizers <Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers>`_.Advanced
---------------------------------------------------------------------------------------------------------------------------------------------

**Visualizers that require basic knowledge about Modelica in order to
use them**

Information
~~~~~~~~~~~

::

Package **Visualizers.Advanced** contains components to visualize
3-dimensional shapes with dynamical sizes. None of the components has a
frame connector. The position and orientation is set via modifiers.
Basic knowledge of Modelica is needed in order to utilize the components
of this package. These components have also to be used for models, where
the forces and torques in the frame connector are set via equations (in
this case, the models of the Visualizers package cannot be used, since
they all have frame connectors).

Content
^^^^^^^

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| `Arrow <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.Arrow>`_                               | Visualizing an arrow where all parts of the arrow can vary dynamically:                         |
|                                                                                                                                                         |  |image5|                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| `DoubleArrow <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.DoubleArrow>`_                   | Visualizing a double arrow where all parts of the arrow can vary dynamically:                   |
|                                                                                                                                                         |  |image6|                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| `Shape <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape>`_                               | Visualizing an elementary object with variable size. The following shape types are supported:   |
|                                                                                                                                                         |  |image7|                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| `Surface <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.Surface>`_                           | Visualizing a moveable parameterized surface:                                                   |
|                                                                                                                                                         |  |image8|                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| `PipeWithScalarField <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarField>`_   | Visualizing a pipe with a scalar field represented by a color coding:                           |
|                                                                                                                                                         |  |image9|                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                            | Description                                                                                                  |
+=================================================================================================================================================================================================================================================================+==============================================================================================================+
| |image16| `Arrow <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.Arrow>`_                                                                                                                             | Visualizing an arrow with variable size; all data have to be set as modifiers (see info layer)               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| |image17| `DoubleArrow <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.DoubleArrow>`_                                                                                                                 | Visualizing a double arrow with variable size; all data have to be set as modifiers (see info layer)         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| |image18| `Shape <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape>`_                                                                                                                             | Visualizing an elementary object with variable size; all data have to be set as modifiers (see info layer)   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| |image19| `Surface <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.Surface>`_                                                                                                                         | Visualizing a moveable, parameterized surface; the surface characteristic is provided by a function          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| |image20| `PipeWithScalarField <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarField>`_                                                                                                 | Visualizing a pipe with a scalar field                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
| |image21| `SurfaceCharacteristics <Modelica_Mechanics_MultiBody_Visualizers_Advanced_SurfaceCharacteristics.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristics>`_                                                                    | Functions returning surface descriptions                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+

--------------

|image22| `Modelica.Mechanics.MultiBody.Visualizers.Advanced <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced>`_.Arrow
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Visualizing an arrow with variable size; all data have to be set as
modifiers (see info layer)**

Information
~~~~~~~~~~~

::

Model **Arrow** defines an arrow that is dynamically visualized at the
defined location (see variables below).

.. figure:: ../Resources/Images/MultiBody/Visualizers/Arrow.png
   :align: center
   :alt: model Visualizers.Advanced.Arrow

   model Visualizers.Advanced.Arrow
The variables under heading **Parameters** below are declared as (time
varying) **input** variables. If the default equation is not
appropriate, a corresponding modifier equation has to be provided in the
model where an **Arrow** instance is used, e.g., in the form

::

        Visualizers.Advanced.Arrow arrow(diameter = sin(time));

Variable **color** is an Integer vector with 3 elements, {r, g, b}, and
specifies the color of the shape. {r,g,b} are the "red", "green" and
"blue" color parts. Note, r g, b are given in the range 0 .. 255. The
predefined type **MultiBody.Types.Color** contains a menu definition of
the colors used in the MultiBody library (will be replaced by a color
editor).

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                                                   |
+===========================================================================================================================+=======================+===================================+===============================================================================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_                 | R                     | Frames.nullRotation()             | Orientation object to rotate the world frame into the arrow frame.                                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r[3]                  | {0,0,0}                           | Position vector from origin of world frame to origin of arrow frame, resolved in world frame [m]              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_tail[3]            | {0,0,0}                           | Position vector from origin of arrow frame to arrow tail, resolved in arrow frame [m]                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_head[3]            | {0,0,0}                           | Position vector from arrow tail to the head of the arrow, resolved in arrow frame [m]                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | diameter              | world.defaultArrowDiameter        | Diameter of arrow line [m]                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                 | Modelica.Mechanics.MultiBody...   | Color of arrow                                                                                                |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Material property describing the reflecting of ambient light (= 0 means, that light is completely absorbed)   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Arrow 
      "Visualizing an arrow with variable size; all data have to be set as modifiers (see info layer)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      import Modelica.Mechanics.MultiBody.Frames;
      import T = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;

      input Frames.Orientation R=Frames.nullRotation() 
        "Orientation object to rotate the world frame into the arrow frame.";
      input SI.Position r[3]={0,0,0} 
        "Position vector from origin of world frame to origin of arrow frame, resolved in world frame";
      input SI.Position r_tail[3]={0,0,0} 
        "Position vector from origin of arrow frame to arrow tail, resolved in arrow frame";
      input SI.Position r_head[3]={0,0,0} 
        "Position vector from arrow tail to the head of the arrow, resolved in arrow frame";
      input SI.Diameter diameter=world.defaultArrowDiameter 
        "Diameter of arrow line";
      input Modelica.Mechanics.MultiBody.Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.ArrowColor 
        "Color of arrow";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Material property describing the reflecting of ambient light (= 0 means, that light is completely absorbed)";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
      SI.Length length=Modelica.Math.Vectors.length(r_head) "Length of arrow";
      Real e_x[3](each final unit="1", start={1,0,0}) = noEvent(if length < 1.e-10 then {1,0,0} else r_head/length);
      Real rxvisobj[3](each final unit="1") = transpose(R.T)*e_x 
        "X-axis unit vector of shape, resolved in world frame";
      SI.Position rvisobj[3] = r + T.resolve1(R.T, r_tail) 
        "Position vector from world frame to shape frame, resolved in world frame";

      Visualizers.Advanced.Shape arrowLine(
        length=noEvent(max(0, length - diameter*Types.Defaults.
            ArrowHeadLengthFraction)),
        width=diameter,
        height=diameter,
        lengthDirection=r_head,
        widthDirection={0,1,0},
        shapeType="cylinder",
        color=color,
        specularCoefficient=specularCoefficient,
        r_shape=r_tail,
        r=r,
        R=R) if world.enableAnimation;
      Visualizers.Advanced.Shape arrowHead(
        length=noEvent(max(0, min(length, diameter*Types.Defaults.
            ArrowHeadLengthFraction))),
        width=noEvent(max(0, diameter*MultiBody.Types.Defaults.
            ArrowHeadWidthFraction)),
        height=noEvent(max(0, diameter*MultiBody.Types.Defaults.
            ArrowHeadWidthFraction)),
        lengthDirection=r_head,
        widthDirection={0,1,0},
        shapeType="cone",
        color=color,
        specularCoefficient=specularCoefficient,
        r=rvisobj + rxvisobj*arrowLine.length,
        R=R) if world.enableAnimation;

    end Arrow;

--------------

|image23| `Modelica.Mechanics.MultiBody.Visualizers.Advanced <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced>`_.DoubleArrow
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Visualizing a double arrow with variable size; all data have to be set
as modifiers (see info layer)**

Information
~~~~~~~~~~~

::

Model **DoubleArrow** defines a double arrow that is dynamically
visualized at the defined location (see variables below).

.. figure:: ../Resources/Images/MultiBody/Visualizers/DoubleArrow.png
   :align: center
   :alt: model Visualizers.Advanced.DoubleArrow

   model Visualizers.Advanced.DoubleArrow
The variables under heading **Parameters** below are declared as (time
varying) **input** variables. If the default equation is not
appropriate, a corresponding modifier equation has to be provided in the
model where an **Arrow** instance is used, e.g., in the form

::

        Visualizers.Advanced.DoubleArrow doubleArrow(diameter = sin(time));

Variable **color** is an Integer vector with 3 elements, {r, g, b}, and
specifies the color of the shape. {r,g,b} are the "red", "green" and
"blue" color parts. Note, r g, b are given in the range 0 .. 255. The
predefined type **MultiBody.Types.Color** contains a menu definition of
the colors used in the MultiBody library (will be replaced by a color
editor).

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                                                   |
+===========================================================================================================================+=======================+===================================+===============================================================================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_                 | R                     | Frames.nullRotation()             | Orientation object to rotate the world frame into the arrow frame.                                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r[3]                  | {0,0,0}                           | Position vector from origin of world frame to origin of arrow frame, resolved in world frame [m]              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_tail[3]            | {0,0,0}                           | Position vector from origin of arrow frame to double arrow tail, resolved in arrow frame [m]                  |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_head[3]            | {0,0,0}                           | Position vector from double arrow tail to the head of the double arrow, resolved in arrow frame [m]           |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                             | diameter              | world.defaultArrowDiameter        | Diameter of arrow line [m]                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                 | Modelica.Mechanics.MultiBody...   | Color of double arrow                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Material property describing the reflecting of ambient light (= 0 means, that light is completely absorbed)   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DoubleArrow 
      "Visualizing a double arrow with variable size; all data have to be set as modifiers (see info layer)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      import Modelica.Mechanics.MultiBody.Frames;
      import T = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;

      input Frames.Orientation R=Frames.nullRotation() 
        "Orientation object to rotate the world frame into the arrow frame.";
      input SI.Position r[3]={0,0,0} 
        "Position vector from origin of world frame to origin of arrow frame, resolved in world frame";
      input SI.Position r_tail[3]={0,0,0} 
        "Position vector from origin of arrow frame to double arrow tail, resolved in arrow frame";
      input SI.Position r_head[3]={0,0,0} 
        "Position vector from double arrow tail to the head of the double arrow, resolved in arrow frame";
      input SI.Diameter diameter=world.defaultArrowDiameter 
        "Diameter of arrow line";
      input Modelica.Mechanics.MultiBody.Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.ArrowColor 
        "Color of double arrow";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Material property describing the reflecting of ambient light (= 0 means, that light is completely absorbed)";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
      SI.Length length=Modelica.Math.Vectors.length(r_head) "Length of arrow";
      Real e_x[3](each final unit="1", start={1,0,0}) = noEvent(if length < 1.e-10 then {1,0,0} else r_head/length);
      Real rxvisobj[3](each final unit="1") = transpose(R.T)*e_x 
        "X-axis unit vector of shape, resolved in world frame";
      SI.Position rvisobj[3] = r + T.resolve1(R.T, r_tail) 
        "Position vector from world frame to shape frame, resolved in world frame";

      SI.Length headLength=noEvent(max(0, min(length, diameter*MultiBody.Types.
          Defaults.ArrowHeadLengthFraction)));
      SI.Length headWidth=noEvent(max(0, diameter*MultiBody.Types.Defaults.
          ArrowHeadWidthFraction));
      Visualizers.Advanced.Shape arrowLine(
        length=noEvent(max(0, length - 1.5*diameter*MultiBody.Types.Defaults.
            ArrowHeadLengthFraction)),
        width=diameter,
        height=diameter,
        lengthDirection=r_head,
        widthDirection={0,1,0},
        shapeType="cylinder",
        color=color,
        specularCoefficient=specularCoefficient,
        r_shape=r_tail,
        r=r,
        R=R) if world.enableAnimation;
      Visualizers.Advanced.Shape arrowHead1(
        length=headLength,
        width=headWidth,
        height=headWidth,
        lengthDirection=r_head,
        widthDirection={0,1,0},
        shapeType="cone",
        color=color,
        specularCoefficient=specularCoefficient,
        r=rvisobj + rxvisobj*arrowLine.length,
        R=R) if world.enableAnimation;
      Visualizers.Advanced.Shape arrowHead2(
        length=headLength,
        width=headWidth,
        height=headWidth,
        lengthDirection=r_head,
        widthDirection={0,1,0},
        shapeType="cone",
        color=color,
        specularCoefficient=specularCoefficient,
        r=rvisobj + rxvisobj*(arrowLine.length + 0.5*arrowHead1.length),
        R=R) if world.enableAnimation;

    end DoubleArrow;

--------------

|image24| `Modelica.Mechanics.MultiBody.Visualizers.Advanced <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced>`_.Shape
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Visualizing an elementary object with variable size; all data have to
be set as modifiers (see info layer)**

Information
~~~~~~~~~~~

::

Model **Shape** defines a visual shape that is shown at the location of
its reference coordinate system, called 'object frame' below. All
describing variables such as size and color can vary dynamically (with
the only exception of parameter shapeType). The default equations in the
declarations should be modified by providing appropriate modifier
quations. Model **Shape** is usually used as a basic building block to
implement simpler to use graphical components.

The following shapes are supported via parameter **shapeType** (e.g.,
shapeType="box"):

.. figure:: ../Resources/Images/MultiBody/Shape.png
   :align: center
   :alt: model Visualizers.FixedShape

   model Visualizers.FixedShape
 The dark blue arrows in the figure above are directed along variable
**lengthDirection**. The light blue arrows are directed along variable
**widthDirection**. The **coordinate systems** in the figure represent
frame\_a of the Shape component.

Additionally, external shapes are specified as DXF-files (only 3-dim.
Face is supported). External shapes must be named "1", "2", ... "N". The
corresponding definitions should be in files "1.dxf", "2.dxf" etc. Since
the DXF-files contain color and dimensions for the individual faces, the
corresponding information in the model is currently ignored. The
DXF-files must be found either in the current directory or in the
directory where the Shape instance is stored that references the DXF
file.

Via input variable **extra** additional sizing data is defined according
to:

+-----------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **shapeType**   | Meaning of variable **extra**                                                                                                                                                                                                       |
+=================+=====================================================================================================================================================================================================================================+
| "cylinder"      | if extra > 0, a black line is included in the cylinder to show the rotation of it.                                                                                                                                                  |
+-----------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| "cone"          | extra = diameter-left-side / diameter-right-side, i.e.,                                                                                                                                                                             |
|                 |  extra = 1: cylinder                                                                                                                                                                                                                |
|                 |  extra = 0: "real" cone.                                                                                                                                                                                                            |
+-----------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| "pipe"          | extra = outer-diameter / inner-diameter, i.e,                                                                                                                                                                                       |
|                 |  extra = 1: cylinder that is completely hollow                                                                                                                                                                                      |
|                 |  extra = 0: cylinder without a hole.                                                                                                                                                                                                |
+-----------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| "gearwheel"     | extra is the number of teeth of the (external) gear. If extra < 0, an internal gear is visualized with \|extra\| teeth. The axis of the gearwheel is along "lengthDirection", and usually: width = height = 2\*radiusOfGearWheel.   |
+-----------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| "spring"        | extra is the number of windings of the spring. Additionally, "height" is **not** the "height" but 2\*coil-width.                                                                                                                    |
+-----------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Parameter **color** is a Real vector with 3 elements, {r, g, b}, and
specifies the color of the shape. {r,g,b} are the "red", "green" and
"blue" color parts. Note, r g, b are given in the range 0 .. 255. The
predefined type **MultiBody.Types.Color** contains a menu definition of
the colors used in the MultiBody library.

The variables under heading **Parameters** below are declared as (time
varying) **input** variables. If the default equation is not
appropriate, a corresponding modifier equation has to be provided in the
model where a **Shape** instance is used, e.g., in the form

::

        Visualizers.Advanced.Shape shape(length = sin(time));

::

Extends from
`ModelicaServices.Animation.Shape <../../ModelicaServices%201.1/help/ModelicaServices_Animation.html#ModelicaServices.Animation.Shape>`_
(Different visual shapes with variable size; all data have to be set as
modifiers (see info layer)),
`Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialShape <Modelica_Utilities_Internal_PartialModelicaServices_Animation.html#Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialShape>`_
(Interface for 3D animation of elementary shapes).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                 | Description                                                                                         |
+===========================================================================================================================+=======================+=========================+=====================================================================================================+
| `ShapeType <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeType>`_                       | shapeType             | "box"                   | Type of shape (box, sphere, cylinder, pipecylinder, cone, pipe, beam, gearwheel, spring)            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_                 | R                     | Frames.nullRotation()   | Orientation object to rotate the world frame into the object frame                                  |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r[3]                  | {0,0,0}                 | Position vector from origin of world frame to origin of object frame, resolved in world frame [m]   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_shape[3]           | {0,0,0}                 | Position vector from origin of object frame to shape origin, resolved in object frame [m]           |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | lengthDirection[3]    | {1,0,0}                 | Vector in length direction, resolved in object frame [1]                                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | widthDirection[3]     | {0,1,0}                 | Vector in width direction, resolved in object frame [1]                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | length                | 0                       | Length of visual object [m]                                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | width                 | 0                       | Width of visual object [m]                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | height                | 0                       | Height of visual object [m]                                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `ShapeExtra <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeExtra>`_                     | extra                 | 0.0                     | Additional size data for some of the shape types                                                    |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | color[3]              | {255,0,0}               | Color of shape                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | 0.7                     | Reflection of ambient light (= 0: light is completely absorbed)                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Shape 
      "Visualizing an elementary object with variable size; all data have to be set as modifiers (see info layer)"

       extends ModelicaServices.Animation.Shape;
       extends Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialShape;

    end Shape;

--------------

|image25| `Modelica.Mechanics.MultiBody.Visualizers.Advanced <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced>`_.Surface
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Visualizing a moveable, parameterized surface; the surface
characteristic is provided by a function**

Information
~~~~~~~~~~~

::

Model **Surface** defines a moveable, parametrized surface in 3-dim.
space that is used for animation. This object is specified by:

-  The surface frame (orientation object "R" and origin "r\_0") in which
   the data is specified.
-  A set of two parameters, one in u- and one in v-direction, that
   defines the control points.
-  A time-varying position of each control point with respect to the
   surface frame.

The parameter values (u,v) are given by the ordinal numbers of the
corresponding control point in u- or in v-direction, respectively. The
surface is then defined by the replaceable function
"surfaceCharacteristic" with the interface
`partialSurfaceCharacteristic <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic>`_
that returns the x-, y-, z- coordinate of every control point in form of
3 arrays X, Y, Z, and an optional color array C, if every control point
shall have a different color:

::

      Real X[nu,nv], Y[nu,nv], Z[nu,nv], C[nu,nv,3];

An example of a parameterized surface with color coding is shown in the
next figure:

    |image26|

Models
`Torus <Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers.Torus>`_,
`VoluminousWheel <Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers.VoluminousWheel>`_,
`PipeWithScalarField <Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers.PipeWithScalarField>`_,
demonstrate how new visualizer objects can be constructed with the
Surface model.
 The direct usage of the Surface model, as well as of the Torus and the
VoluminousWheel models, are demonstrated with example
`Examples.Elementary.Surfaces <Modelica_Mechanics_MultiBody_Examples_Elementary.html#Modelica.Mechanics.MultiBody.Examples.Elementary.Surfaces>`_.

::

Extends from
`Modelica.Mechanics.MultiBody.Icons.Surface <Modelica_Mechanics_MultiBody_Icons.html#Modelica.Mechanics.MultiBody.Icons.Surface>`_
(Surface icon),
`Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialSurface <Modelica_Utilities_Internal_PartialModelicaServices_Animation.html#Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialSurface>`_
(Interface for 3D animation of surfaces),
`ModelicaServices.Animation.Surface <../../ModelicaServices%201.1/help/ModelicaServices_Animation.html#ModelicaServices.Animation.Surface>`_
(Animation of a moveable, parameterized surface; the surface
characteristic is provided by a function).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                                                                                                                                                  | Default                                        | Description                                                                                          |
+===========================================================================================================================+=======================================================================================================================================================+================================================+======================================================================================================+
| Surface frame                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_                 | R                                                                                                                                                     | Frames.nullRotation()                          | Orientation object to rotate the world frame into the surface frame                                  |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_0[3]                                                                                                                                               | {0,0,0}                                        | Position vector from origin of world frame to origin of surface frame, resolved in world frame [m]   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Surface properties                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Integer                                                                                                                   | nu                                                                                                                                                    | 2                                              | Number of points in u-Dimension                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Integer                                                                                                                   | nv                                                                                                                                                    | 2                                              | Number of points in v-Dimension                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| replaceable function surfaceCharacteristic                                                                                | `partialSurfaceCharacteristic <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic>`_   | Function defining the surface characteristic   |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Material properties                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | wireframe                                                                                                                                             | false                                          | = true: 3D model will be displayed without faces                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | multiColoredSurface                                                                                                                                   | false                                          | = true: Color is defined for each surface point                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | color[3]                                                                                                                                              | {255,0,0}                                      | Color of surface                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient                                                                                                                                   | 0.7                                            | Reflection of ambient light (= 0: light is completely absorbed)                                      |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | transparency                                                                                                                                          | 0                                              | Transparency of shape: 0 (= opaque) ... 1 (= fully transparent)                                      |
+---------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Surface 
      "Visualizing a moveable, parameterized surface; the surface characteristic is provided by a function"
      extends Modelica.Mechanics.MultiBody.Icons.Surface;
      extends Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialSurface;
      extends ModelicaServices.Animation.Surface;
    equation 

    end Surface;

--------------

|image27| `Modelica.Mechanics.MultiBody.Visualizers.Advanced <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced>`_.PipeWithScalarField
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Visualizing a pipe with a scalar field**

.. figure:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarFieldD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarField

   Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarField

Information
~~~~~~~~~~~

::

Model **PipeWithScalarField** visualizes a pipe and a scalar field along
the pipe axis. The latter is shown by mapping scalar field to color
values with a color map and utilizing this color at the perimeter
associated with the corresponding axis location. Typically the scalar
field value is a temperature, but might be also another quantity.
Predefined color maps are available from
`MultiBody.Visualizers.Colors.ColorMaps <Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps>`_
and can be selected via parameter "colorMap". A color map with the
corresponding scalar field values can be exported as vector-graphics in
svg-format with function
`MultiBody.Visualizers.Colors.colorMapToSvg <Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg>`_.
The position and orientation of the center of the circle at the left end
of the pipe is defined via parameters "r\_0" and "R", respectively. The
pipe axis is oriented along the x-axis of the local coordinate system
described by "R", see figure below:

    |image28|

The color coding is shown in the next figure. It was generated with
`MultiBody.Visualizers.Colors.colorMapToSvg <Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg>`_
using the following call:

    ::

        colorMapToSvg(Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMap.jet(),
                      height=50, nScalars=6, T_max=100, caption="Temperature in C");

    |image29|

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                                          |
+===========================================================================================================================+=======================+===================================+======================================================================================================+
| Surface frame                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_                 | R                     | Frames.nullRotation()             | Orientation object to rotate the world frame into the surface frame                                  |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_0[3]               | {0,0,0}                           | Position vector from origin of world frame to origin of surface frame, resolved in world frame [m]   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| Surface properties                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                                                                 | rOuter                |                                   | Outer radius of pipe [m]                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | length                |                                   | Length of pipe [m]                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| Integer                                                                                                                   | n\_rOuter             | 30                                | Number of points along outer radius                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| Integer                                                                                                                   | n\_length             | 10                                | Number of points along length                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | 0.7                               | Reflection of ambient light (= 0: light is completely absorbed)                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | transparency          | 0                                 | Transparency of shape: 0 (= opaque) ... 1 (= fully transparent)                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| Color coding                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | xsi[:]                | Modelica.Math.Vectors.relNod...   | [:] Relative position along the pipe with x[1] = 0, x[end] = 1                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | T[size(xsi, 1)]       |                                   | [:] Scalar values at position xsi\*length (will be visualized by color)                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | T\_min                |                                   | Minimum value of T that corresponds to colorMap[1,:]                                                 |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | T\_max                |                                   | Maximum value of T that corresponds to colorMap[end,:]                                               |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+
| Integer                                                                                                                   | n\_colors             | 64                                | Number of colors in the colorMap                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PipeWithScalarField "Visualizing a pipe with a scalar field"
      input Frames.Orientation R=Frames.nullRotation() 
        "Orientation object to rotate the world frame into the surface frame";
      input Modelica.SIunits.Position r_0[3]={0,0,0} 
        "Position vector from origin of world frame to origin of surface frame, resolved in world frame";

      parameter Modelica.SIunits.Radius rOuter "Outer radius of pipe";
      parameter Modelica.SIunits.Length length "Length of pipe";
      parameter Integer n_rOuter=30 "Number of points along outer radius";
      parameter Integer n_length=10 "Number of points along length";
      parameter Types.SpecularCoefficient specularCoefficient = 0.7 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      parameter Real transparency=0 
        "Transparency of shape: 0 (= opaque) ... 1 (= fully transparent)";

      parameter Real xsi[:](min=0,max=1)= Modelica.Math.Vectors.relNodePositions(12) 
        "[:] Relative position along the pipe with x[1] = 0, x[end] = 1";
      input Real T[size(xsi,1)] 
        "[:] Scalar values at position xsi*length (will be visualized by color)";
      parameter Real T_min "Minimum value of T that corresponds to colorMap[1,:]";
      parameter Real T_max "Maximum value of T that corresponds to colorMap[end,:]";
      parameter Integer n_colors=64 "Number of colors in the colorMap";
      replaceable function colorMap =
          Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps.jet
            constrainedby Modelica.Mechanics.MultiBody.Interfaces.partialColorMap 
        "Function defining the color map";
    protected 
      parameter Real colorMapData[n_colors,3] = colorMap(n_colors);
      Surface surface(
        R=R,
        r_0=r_0,
        nu=n_length,
        nv=n_rOuter,
        wireframe=false,
        multiColoredSurface=true,
        specularCoefficient=specularCoefficient,
        transparency=transparency,
        redeclare function surfaceCharacteristic =
            Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristics.pipeWithScalarField
            (rOuter=rOuter,
             length=length,
             xsi=xsi,
             T=T,
             T_min=T_min,
             T_max=T_max,
             colorMap=colorMapData));
    end PipeWithScalarField;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:40
2010.

.. |model
Visualizers.Advanced.Arrow| image:: ../Resources/Images/MultiBody/Visualizers/Arrow.png
.. |model
Visualizers.Advanced.DoubleArrow| image:: ../Resources/Images/MultiBody/Visualizers/DoubleArrow.png
.. |model
Visualizers.Advanced.Shape| image:: ../Resources/Images/MultiBody/FixedShape.png
.. |image3| image:: ../Resources/Images/MultiBody/Visualizers/Surface_small.png
.. |image4| image:: ../Resources/Images/MultiBody/Visualizers/PipeWithScalarFieldIcon.png
.. |image5| image:: ../Resources/Images/MultiBody/Visualizers/Arrow.png
.. |image6| image:: ../Resources/Images/MultiBody/Visualizers/DoubleArrow.png
.. |image7| image:: ../Resources/Images/MultiBody/FixedShape.png
.. |image8| image:: ../Resources/Images/MultiBody/Visualizers/Surface_small.png
.. |image9| image:: ../Resources/Images/MultiBody/Visualizers/PipeWithScalarFieldIcon.png
.. |Modelica.Mechanics.MultiBody.Visualizers.Advanced.Arrow| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.ArrowS.png
.. |Modelica.Mechanics.MultiBody.Visualizers.Advanced.DoubleArrow| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.DoubleArrowS.png
.. |Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.ShapeS.png
.. |Modelica.Mechanics.MultiBody.Visualizers.Advanced.Surface| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceS.png
.. |Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarField| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarFieldS.png
.. |Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristics| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristicsS.png
.. |image16| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.ArrowS.png
.. |image17| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.DoubleArrowS.png
.. |image18| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.ShapeS.png
.. |image19| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceS.png
.. |image20| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarFieldS.png
.. |image21| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristicsS.png
.. |image22| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.ArrowI.png
.. |image23| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.DoubleArrowI.png
.. |image24| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.ShapeI.png
.. |image25| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceI.png
.. |image26| image:: ../Resources/Images/MultiBody/Visualizers/Surface.png
.. |image27| image:: Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarFieldI.png
.. |image28| image:: ../Resources/Images/MultiBody/Visualizers/PipeWithScalarField.png
.. |image29| image:: ../Resources/Images/MultiBody/Visualizers/PipeWithScalarField-ColorMap.png
