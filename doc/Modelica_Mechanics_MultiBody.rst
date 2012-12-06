============================
Modelica.Mechanics.MultiBody
============================

`Modelica.Mechanics <Modelica_Mechanics.html#Modelica.Mechanics>`_.MultiBody
----------------------------------------------------------------------------

**Library to model 3-dimensional mechanical systems**

Information
~~~~~~~~~~~

::

Library **MultiBody** is a **free** Modelica package providing
3-dimensional mechanical components to model in a convenient way
**mechanical systems**, such as robots, mechanisms, vehicles. Typical
animations generated with this library are shown in the next figure:

.. figure:: ../Resources/Images/MultiBody/MultiBody.png
   :align: center
   :alt: 

For an introduction, have especially a look at:

-  `MultiBody.UsersGuide <Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide>`_
   discusses the most important aspects how to use this library.
-  `MultiBody.Examples <Modelica_Mechanics_MultiBody_Examples.html#Modelica.Mechanics.MultiBody.Examples>`_
   contains examples that demonstrate the usage of this library.

Copyright © 1998-2010, Modelica Association and DLR.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
`Modelica.UsersGuide.ModelicaLicense2 <Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2>`_
or visit
`http://www.modelica.org/licenses/ModelicaLicense2 <http://www.modelica.org/licenses/ModelicaLicense2>`_.*

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| Name                                                                                                                                                 | Description                                                               |
+======================================================================================================================================================+===========================================================================+
| |image12| `UsersGuide <Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide>`_                                       | User's Guide of MultiBody Library                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image13| `World <Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody.World>`_                                                            | World coordinate system + gravity field + default animation definition    |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image14| `Examples <Modelica_Mechanics_MultiBody_Examples.html#Modelica.Mechanics.MultiBody.Examples>`_                                             | Examples that demonstrate the usage of the MultiBody library              |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image15| `Forces <Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces>`_                                                   | Components that exert forces and/or torques between frames                |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image16| `Frames <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames>`_                                                   | Functions to transform rotational frame quantities                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image17| `Interfaces <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces>`_                                       | Connectors and partial models for 3-dim. mechanical components            |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image18| `Joints <Modelica_Mechanics_MultiBody_Joints.html#Modelica.Mechanics.MultiBody.Joints>`_                                                   | Components that constrain the motion between two frames                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image19| `Parts <Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts>`_                                                      | Rigid components such as bodies with mass and inertia and massless rods   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image20| `Sensors <Modelica_Mechanics_MultiBody_Sensors.html#Modelica.Mechanics.MultiBody.Sensors>`_                                                | Sensors to measure variables                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image21| `Visualizers <Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers>`_                                    | 3-dimensional visual objects used for animation                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image22| `Types <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types>`_                                                      | Constants and types with choices, especially to build menus               |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image23| `Icons <Modelica_Mechanics_MultiBody_Icons.html#Modelica.Mechanics.MultiBody.Icons>`_                                                      | Icons for MultiBody package                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+

--------------

|image24| `Modelica.Mechanics.MultiBody <Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody>`_.World
----------------------------------------------------------------------------------------------------------------

**World coordinate system + gravity field + default animation
definition**

.. figure:: Modelica.Mechanics.MultiBody.WorldD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.World

   Modelica.Mechanics.MultiBody.World

Information
~~~~~~~~~~~

::

Model **World** represents a global coordinate system fixed in ground.
This model serves several purposes:

-  It is used as **inertial system** in which the equations of all
   elements of the MultiBody library are defined.
-  It is the world frame of an **animation window** in which all
   elements of the MultiBody library are visualized.
-  It is used to define the **gravity field** in which a multi-body
   model is present. Default is a uniform gravity field where the
   gravity acceleration vector g is the same at every position.
   Additionally, a point gravity field or no gravity can be selected.
   Also, function gravityAcceleration can be redeclared to a
   user-defined function that computes the gravity acceleration, see
   example
   `Examples.Elementary.UserDefinedGravityField <Modelica_Mechanics_MultiBody_Examples_Elementary.html#Modelica.Mechanics.MultiBody.Examples.Elementary.UserDefinedGravityField>`_.
-  It is used to define **default settings** of animation properties
   (e.g., the diameter of a sphere representing by default the center of
   mass of a body, or the diameters of the cylinders representing a
   revolute joint).
-  It is used to define a **visual representation** of the world model
   (= 3 coordinate axes with labels) and of the defined gravity field.
    |MultiBodys.World|

Since the gravity field function is required from all bodies with mass
and the default settings of animation properties are required from
nearly every component, exactly one instance of model World needs to be
present in every model on the top level. The basic declaration needs to
be:

::

        inner Modelica.Mechanics.MultiBody.World world

Note, it must be an **inner** declaration with instance name **world**
in order that this world object can be accessed from all objects in the
model. When dragging the "World" object from the package browser into
the diagram layer, this declaration is automatically generated (this is
defined via annotations in model World).

All vectors and tensors of a mechanical system are resolved in a frame
that is local to the corresponding component. Usually, if all relative
joint coordinates vanish, the local frames of all components are
parallel to each other, as well as to the world frame (this holds as
long as a Parts.FixedRotation, component is **not** used). In this
"reference configuration" it is therefore alternatively possible to
resolve all vectors in the world frame, since all frames are parallel to
each other. This is often very convenient. In order to give some visual
support in such a situation, in the icon of a World instance two axes of
the world frame are shown and the labels of these axes can be set via
parameters.

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| Type                                                                                                        | Name                           | Default                           | Description                                                                                                |
+=============================================================================================================+================================+===================================+============================================================================================================+
| Boolean                                                                                                     | enableAnimation                | true                              | = true, if animation of all components is enabled                                                          |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                     | animateWorld                   | true                              | = true, if world coordinate system shall be visualized                                                     |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                     | animateGravity                 | true                              | = true, if gravity field shall be visualized (acceleration vector or field center)                         |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `AxisLabel <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.AxisLabel>`_         | label1                         | "x"                               | Label of horizontal axis in icon                                                                           |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `AxisLabel <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.AxisLabel>`_         | label2                         | "y"                               | Label of vertical axis in icon                                                                             |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `GravityTypes <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.GravityTypes>`_   | gravityType                    | GravityTypes.UniformGravity       | Type of gravity field                                                                                      |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Acceleration <Modelica_SIunits.html#Modelica.SIunits.Acceleration>`_                                       | g                              | 9.81                              | Constant gravity acceleration [m/s2]                                                                       |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                   | n                              | {0,-1,0}                          | Direction of gravity resolved in world frame (gravity = g\*n/length(n)) [1]                                |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| Real                                                                                                        | mue                            | 3.986e14                          | Gravity field constant (default = field constant of earth) [m3/s2]                                         |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                     | driveTrainMechanics3D          | true                              | = true, if 3-dim. mechanical effects of Parts.Mounting1D/Rotor1D/BevelGear1D shall be taken into account   |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| **Animation**                                                                                               |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| if animateWorld = true                                                                                      |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                               | axisLength                     | nominalLength/2                   | Length of world axes arrows [m]                                                                            |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                               | axisDiameter                   | axisLength/defaultFrameDiame...   | Diameter of world axes arrows [m]                                                                          |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                     | axisShowLabels                 | true                              | = true, if labels shall be shown                                                                           |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                 | axisColor\_x                   | Modelica.Mechanics.MultiBody...   | Color of x-arrow                                                                                           |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                 | axisColor\_y                   | axisColor\_x                      |                                                                                                            |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                 | axisColor\_z                   | axisColor\_x                      | Color of z-arrow                                                                                           |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| if animateGravity = true and gravityType = UniformGravity                                                   |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                               | gravityArrowTail[3]            | {0,0,0}                           | Position vector from origin of world frame to arrow tail, resolved in world frame [m]                      |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                   | gravityArrowLength             | axisLength/2                      | Length of gravity arrow [m]                                                                                |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                               | gravityArrowDiameter           | gravityArrowLength/defaultWi...   | Diameter of gravity arrow [m]                                                                              |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                 | gravityArrowColor              | {0,230,0}                         | Color of gravity arrow                                                                                     |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| if animateGravity = true and gravityType = PointGravity                                                     |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                               | gravitySphereDiameter          | 12742000                          | Diameter of sphere representing gravity center (default = mean diameter of earth) [m]                      |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                 | gravitySphereColor             | {0,230,0}                         | Color of gravity sphere                                                                                    |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| **Defaults**                                                                                                |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                   | nominalLength                  | 1                                 | "Nominal" length of multi-body system [m]                                                                  |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                   | defaultAxisLength              | nominalLength/5                   | Default for length of a frame axis (but not world frame) [m]                                               |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                   | defaultJointLength             | nominalLength/10                  | Default for the fixed length of a shape representing a joint [m]                                           |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                   | defaultJointWidth              | nominalLength/20                  | Default for the fixed width of a shape representing a joint [m]                                            |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                   | defaultForceLength             | nominalLength/10                  | Default for the fixed length of a shape representing a force (e.g., damper) [m]                            |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                   | defaultForceWidth              | nominalLength/20                  | Default for the fixed width of a shape represening a force (e.g., spring, bushing) [m]                     |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                   | defaultBodyDiameter            | nominalLength/9                   | Default for diameter of sphere representing the center of mass of a body [m]                               |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| Real                                                                                                        | defaultWidthFraction           | 20                                | Default for shape width as a fraction of shape length (e.g., for Parts.FixedTranslation)                   |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                   | defaultArrowDiameter           | nominalLength/40                  | Default for arrow diameter (e.g., of forces, torques, sensors) [m]                                         |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| Real                                                                                                        | defaultFrameDiameterFraction   | 40                                | Default for arrow diameter of a coordinate system as a fraction of axis length                             |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| Real                                                                                                        | defaultSpecularCoefficient     | 0.7                               | Default reflection of ambient light (= 0: light is completely absorbed)                                    |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| Real                                                                                                        | defaultN\_to\_m                | 1000                              | Default scaling of force arrows (length = force/defaultN\_to\_m) [N/m]                                     |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+
| Real                                                                                                        | defaultNm\_to\_m               | 1000                              | Default scaling of torque arrows (length = torque/defaultNm\_to\_m) [N.m/m]                                |
+-------------------------------------------------------------------------------------------------------------+--------------------------------+-----------------------------------+------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                |
+==============================================================================================================+============+============================================================+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_   | frame\_b   | Coordinate system fixed in the origin of the world frame   |
+--------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model World 
      "World coordinate system + gravity field + default animation definition"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types.GravityTypes;
      import Modelica.Mechanics.MultiBody.Types;

        Interfaces.Frame_b frame_b 
        "Coordinate system fixed in the origin of the world frame";

      parameter Boolean enableAnimation=true 
        "= true, if animation of all components is enabled";
      parameter Boolean animateWorld=true 
        "= true, if world coordinate system shall be visualized";
      parameter Boolean animateGravity=true 
        "= true, if gravity field shall be visualized (acceleration vector or field center)";
      parameter Types.AxisLabel label1="x" "Label of horizontal axis in icon";
      parameter Types.AxisLabel label2="y" "Label of vertical axis in icon";
      parameter Types.GravityTypes gravityType=GravityTypes.UniformGravity 
        "Type of gravity field";
      parameter SI.Acceleration g=9.81 "Constant gravity acceleration";
      parameter Types.Axis n={0,-1,0} 
        "Direction of gravity resolved in world frame (gravity = g*n/length(n))";
      parameter Real mue(
        unit="m3/s2",
        min=0) = 3.986e14 
        "Gravity field constant (default = field constant of earth)";
      parameter Boolean driveTrainMechanics3D=true 
        "= true, if 3-dim. mechanical effects of Parts.Mounting1D/Rotor1D/BevelGear1D shall be taken into account";

      parameter SI.Distance axisLength=nominalLength/2 
        "Length of world axes arrows";
      parameter SI.Distance axisDiameter=axisLength/defaultFrameDiameterFraction 
        "Diameter of world axes arrows";
      parameter Boolean axisShowLabels=true "= true, if labels shall be shown";
      input Types.Color axisColor_x=Modelica.Mechanics.MultiBody.Types.Defaults.FrameColor 
        "Color of x-arrow";
      input Types.Color axisColor_y=axisColor_x;
      input Types.Color axisColor_z=axisColor_x "Color of z-arrow";

      parameter SI.Position gravityArrowTail[3]={0,0,0} 
        "Position vector from origin of world frame to arrow tail, resolved in world frame";
      parameter SI.Length gravityArrowLength=axisLength/2 "Length of gravity arrow";
      parameter SI.Diameter gravityArrowDiameter=gravityArrowLength/
          defaultWidthFraction "Diameter of gravity arrow";
      input Types.Color gravityArrowColor={0,230,0} "Color of gravity arrow";
      parameter SI.Diameter gravitySphereDiameter=12742000 
        "Diameter of sphere representing gravity center (default = mean diameter of earth)";
      input Types.Color gravitySphereColor={0,230,0} "Color of gravity sphere";

      parameter SI.Length nominalLength=1 "\"Nominal\" length of multi-body system";
      parameter SI.Length defaultAxisLength=nominalLength/5 
        "Default for length of a frame axis (but not world frame)";
      parameter SI.Length defaultJointLength=nominalLength/10 
        "Default for the fixed length of a shape representing a joint";
      parameter SI.Length defaultJointWidth=nominalLength/20 
        "Default for the fixed width of a shape representing a joint";
      parameter SI.Length defaultForceLength=nominalLength/10 
        "Default for the fixed length of a shape representing a force (e.g., damper)";
      parameter SI.Length defaultForceWidth=nominalLength/20 
        "Default for the fixed width of a shape represening a force (e.g., spring, bushing)";
      parameter SI.Length defaultBodyDiameter=nominalLength/9 
        "Default for diameter of sphere representing the center of mass of a body";
      parameter Real defaultWidthFraction=20 
        "Default for shape width as a fraction of shape length (e.g., for Parts.FixedTranslation)";
      parameter SI.Length defaultArrowDiameter=nominalLength/40 
        "Default for arrow diameter (e.g., of forces, torques, sensors)";
      parameter Real defaultFrameDiameterFraction=40 
        "Default for arrow diameter of a coordinate system as a fraction of axis length";
      parameter Real defaultSpecularCoefficient(min=0) = 0.7 
        "Default reflection of ambient light (= 0: light is completely absorbed)";
      parameter Real defaultN_to_m(unit="N/m", min=0) = 1000 
        "Default scaling of force arrows (length = force/defaultN_to_m)";
      parameter Real defaultNm_to_m(unit="N.m/m", min=0) = 1000 
        "Default scaling of torque arrows (length = torque/defaultNm_to_m)";

      replaceable function gravityAcceleration =
           Modelica.Mechanics.MultiBody.Forces.Internal.standardGravityAcceleration
          (    gravityType=gravityType, g=g*Modelica.Math.Vectors.normalize(n,0.0), mue=mue)
           constrainedby 
        Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration 
        "Function to compute the gravity acceleration, resolved in world frame";

      /* The World object can only use the Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape model, but no
         other models in package Modelica.Mechanics.MultiBody.Visualizers, since the other models access
         data of the "outer Modelica.Mechanics.MultiBody.World world" object, i.e., there are
         mutually dependent classes. For this reason, the higher level visualization
         objects cannot be used.
      */
    protected 
      parameter Integer ndim=if enableAnimation and animateWorld then 1 else 0;
      parameter Integer ndim2=if enableAnimation and animateWorld and 
          axisShowLabels then 1 else 0;

      // Parameters to define axes
      parameter SI.Length headLength=min(axisLength, axisDiameter*Types.Defaults.
          FrameHeadLengthFraction);
      parameter SI.Length headWidth=axisDiameter*Types.Defaults.
          FrameHeadWidthFraction;
      parameter SI.Length lineLength=max(0, axisLength - headLength);
      parameter SI.Length lineWidth=axisDiameter;

      // Parameters to define axes labels
      parameter SI.Length scaledLabel=Modelica.Mechanics.MultiBody.Types.Defaults.FrameLabelHeightFraction*
          axisDiameter;
      parameter SI.Length labelStart=1.05*axisLength;

      // x-axis
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape x_arrowLine(
        shapeType="cylinder",
        length=lineLength,
        width=lineWidth,
        height=lineWidth,
        lengthDirection={1,0,0},
        widthDirection={0,1,0},
        color=axisColor_x,
        specularCoefficient=0) if enableAnimation and animateWorld;
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape x_arrowHead(
        shapeType="cone",
        length=headLength,
        width=headWidth,
        height=headWidth,
        lengthDirection={1,0,0},
        widthDirection={0,1,0},
        color=axisColor_x,
        r={lineLength,0,0},
        specularCoefficient=0) if enableAnimation and animateWorld;
      Modelica.Mechanics.MultiBody.Visualizers.Internal.Lines x_label(
        lines=scaledLabel*{[0, 0; 1, 1],[0, 1; 1, 0]},
        diameter=axisDiameter,
        color=axisColor_x,
        r_lines={labelStart,0,0},
        n_x={1,0,0},
        n_y={0,1,0},
        specularCoefficient=0) if enableAnimation and animateWorld and axisShowLabels;

      // y-axis
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape y_arrowLine(
        shapeType="cylinder",
        length=lineLength,
        width=lineWidth,
        height=lineWidth,
        lengthDirection={0,1,0},
        widthDirection={1,0,0},
        color=axisColor_y,
        specularCoefficient=0) if enableAnimation and animateWorld;
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape y_arrowHead(
        shapeType="cone",
        length=headLength,
        width=headWidth,
        height=headWidth,
        lengthDirection={0,1,0},
        widthDirection={1,0,0},
        color=axisColor_y,
        r={0,lineLength,0},
        specularCoefficient=0) if enableAnimation and animateWorld;
      Modelica.Mechanics.MultiBody.Visualizers.Internal.Lines y_label(
        lines=scaledLabel*{[0, 0; 1, 1.5],[0, 1.5; 0.5, 0.75]},
        diameter=axisDiameter,
        color=axisColor_y,
        r_lines={0,labelStart,0},
        n_x={0,1,0},
        n_y={-1,0,0},
        specularCoefficient=0) if enableAnimation and animateWorld and axisShowLabels;

      // z-axis
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape z_arrowLine(
        shapeType="cylinder",
        length=lineLength,
        width=lineWidth,
        height=lineWidth,
        lengthDirection={0,0,1},
        widthDirection={0,1,0},
        color=axisColor_z,
        specularCoefficient=0) if enableAnimation and animateWorld;
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape z_arrowHead(
        shapeType="cone",
        length=headLength,
        width=headWidth,
        height=headWidth,
        lengthDirection={0,0,1},
        widthDirection={0,1,0},
        color=axisColor_z,
        r={0,0,lineLength},
        specularCoefficient=0) if enableAnimation and animateWorld;
      Modelica.Mechanics.MultiBody.Visualizers.Internal.Lines z_label(
        lines=scaledLabel*{[0, 0; 1, 0],[0, 1; 1, 1],[0, 1; 1, 0]},
        diameter=axisDiameter,
        color=axisColor_z,
        r_lines={0,0,labelStart},
        n_x={0,0,1},
        n_y={0,1,0},
        specularCoefficient=0) if enableAnimation and animateWorld and axisShowLabels;

      // Uniform gravity visualization
      parameter SI.Length gravityHeadLength=min(gravityArrowLength,
          gravityArrowDiameter*Types.Defaults.ArrowHeadLengthFraction);
      parameter SI.Length gravityHeadWidth=gravityArrowDiameter*Types.Defaults.ArrowHeadWidthFraction;
      parameter SI.Length gravityLineLength=max(0, gravityArrowLength - gravityHeadLength);
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape gravityArrowLine(
        shapeType="cylinder",
        length=gravityLineLength,
        width=gravityArrowDiameter,
        height=gravityArrowDiameter,
        lengthDirection=n,
        widthDirection={0,1,0},
        color=gravityArrowColor,
        r_shape=gravityArrowTail,
        specularCoefficient=0) if enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity;
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape gravityArrowHead(
        shapeType="cone",
        length=gravityHeadLength,
        width=gravityHeadWidth,
        height=gravityHeadWidth,
        lengthDirection=n,
        widthDirection={0,1,0},
        color=gravityArrowColor,
        r_shape=gravityArrowTail + Modelica.Math.Vectors.normalize(
                                                    n)*gravityLineLength,
        specularCoefficient=0) if enableAnimation and animateGravity and gravityType == GravityTypes.UniformGravity;

      // Point gravity visualization
      parameter Integer ndim_pointGravity=if enableAnimation and animateGravity
           and gravityType == 2 then 1 else 0;
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape gravitySphere(
        shapeType="sphere",
        r_shape={-gravitySphereDiameter/2,0,0},
        lengthDirection={1,0,0},
        length=gravitySphereDiameter,
        width=gravitySphereDiameter,
        height=gravitySphereDiameter,
        color=gravitySphereColor,
        specularCoefficient=0) if enableAnimation and animateGravity and gravityType == GravityTypes.PointGravity;

    /*
      function gravityAcceleration = gravityAccelerationTypes (
          gravityType=gravityType,
          g=g*Modelica.Math.Vectors.normalize(
                                         n),
          mue=mue);
    */

    equation 
      Connections.root(frame_b.R);

      assert(Modelica.Math.Vectors.length(
                           n) > 1.e-10,
        "Parameter n of World object is wrong (lenght(n) > 0 required)");
      frame_b.r_0 = zeros(3);
      frame_b.R = Frames.nullRotation();
    end World;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:03
2010.

.. |Modelica.Mechanics.MultiBody.UsersGuide| image:: Modelica.Mechanics.MultiBody.UsersGuideS.png
.. |Modelica.Mechanics.MultiBody.World| image:: Modelica.Mechanics.MultiBody.WorldS.png
.. |Modelica.Mechanics.MultiBody.Examples| image:: Modelica.Mechanics.MultiBody.ExamplesS.png
.. |Modelica.Mechanics.MultiBody.Forces| image:: Modelica.Mechanics.MultiBody.ForcesS.png
.. |Modelica.Mechanics.MultiBody.Frames| image:: Modelica.Mechanics.MultiBody.FramesS.png
.. |Modelica.Mechanics.MultiBody.Interfaces| image:: Modelica.Mechanics.MultiBody.InterfacesS.png
.. |Modelica.Mechanics.MultiBody.Joints| image:: Modelica.Mechanics.MultiBody.JointsS.png
.. |Modelica.Mechanics.MultiBody.Parts| image:: Modelica.Mechanics.MultiBody.JointsS.png
.. |Modelica.Mechanics.MultiBody.Sensors| image:: Modelica.Mechanics.MultiBody.SensorsS.png
.. |Modelica.Mechanics.MultiBody.Visualizers| image:: Modelica.Mechanics.MultiBody.VisualizersS.png
.. |Modelica.Mechanics.MultiBody.Types| image:: Modelica.Mechanics.MultiBody.VisualizersS.png
.. |Modelica.Mechanics.MultiBody.Icons| image:: Modelica.Mechanics.MultiBody.VisualizersS.png
.. |image12| image:: Modelica.Mechanics.MultiBody.UsersGuideS.png
.. |image13| image:: Modelica.Mechanics.MultiBody.WorldS.png
.. |image14| image:: Modelica.Mechanics.MultiBody.ExamplesS.png
.. |image15| image:: Modelica.Mechanics.MultiBody.ForcesS.png
.. |image16| image:: Modelica.Mechanics.MultiBody.FramesS.png
.. |image17| image:: Modelica.Mechanics.MultiBody.InterfacesS.png
.. |image18| image:: Modelica.Mechanics.MultiBody.JointsS.png
.. |image19| image:: Modelica.Mechanics.MultiBody.JointsS.png
.. |image20| image:: Modelica.Mechanics.MultiBody.SensorsS.png
.. |image21| image:: Modelica.Mechanics.MultiBody.VisualizersS.png
.. |image22| image:: Modelica.Mechanics.MultiBody.VisualizersS.png
.. |image23| image:: Modelica.Mechanics.MultiBody.VisualizersS.png
.. |image24| image:: Modelica.Mechanics.MultiBody.WorldI.png
.. |MultiBodys.World| image:: ../Resources/Images/MultiBody/world.png
