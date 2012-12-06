% Modelica.Mechanics.MultiBody
% 
% 

[Modelica.Mechanics](Modelica_Mechanics.html#Modelica.Mechanics).MultiBody
==========================================================================

**Library to model 3-dimensional mechanical systems**

Information
-----------

::

Library **MultiBody** is a **free** Modelica package providing
3-dimensional mechanical components to model in a convenient way
**mechanical systems**, such as robots, mechanisms, vehicles. Typical
animations generated with this library are shown in the next figure:

For an introduction, have especially a look at:

-   [MultiBody.UsersGuide](Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide)
    discusses the most important aspects how to use this library.
-   [MultiBody.Examples](Modelica_Mechanics_MultiBody_Examples.html#Modelica.Mechanics.MultiBody.Examples)
    contains examples that demonstrate the usage of this library.

Copyright © 1998-2010, Modelica Association and DLR.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
[Modelica.UsersGuide.ModelicaLicense2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2)
or visit
[[http://www.modelica.org/licenses/ModelicaLicense2](http://www.modelica.org/licenses/ModelicaLicense2)](http://www.modelica.org/licenses/ModelicaLicense2).*

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                            Description
  ----------------------------------------------- ------------------------
  ![image12](Modelica.Mechanics.MultiBody.UsersGu User's Guide of
  ideS.png)                                       MultiBody Library
  [UsersGuide](Modelica_Mechanics_MultiBody_Users 
  Guide.html#Modelica.Mechanics.MultiBody.UsersGu 
  ide)                                            

  ![image13](Modelica.Mechanics.MultiBody.WorldS. World coordinate system
  png)                                            + gravity field +
  [World](Modelica_Mechanics_MultiBody.html#Model default animation
  ica.Mechanics.MultiBody.World)                  definition

  ![image14](Modelica.Mechanics.MultiBody.Example Examples that
  sS.png)                                         demonstrate the usage of
  [Examples](Modelica_Mechanics_MultiBody_Example the MultiBody library
  s.html#Modelica.Mechanics.MultiBody.Examples)   

  ![image15](Modelica.Mechanics.MultiBody.ForcesS Components that exert
  .png)                                           forces and/or torques
  [Forces](Modelica_Mechanics_MultiBody_Forces.ht between frames
  ml#Modelica.Mechanics.MultiBody.Forces)         

  ![image16](Modelica.Mechanics.MultiBody.FramesS Functions to transform
  .png)                                           rotational frame
  [Frames](Modelica_Mechanics_MultiBody_Frames.ht quantities
  ml#Modelica.Mechanics.MultiBody.Frames)         

  ![image17](Modelica.Mechanics.MultiBody.Interfa Connectors and partial
  cesS.png)                                       models for 3-dim.
  [Interfaces](Modelica_Mechanics_MultiBody_Inter mechanical components
  faces.html#Modelica.Mechanics.MultiBody.Interfa 
  ces)                                            

  ![image18](Modelica.Mechanics.MultiBody.JointsS Components that
  .png)                                           constrain the motion
  [Joints](Modelica_Mechanics_MultiBody_Joints.ht between two frames
  ml#Modelica.Mechanics.MultiBody.Joints)         

  ![image19](Modelica.Mechanics.MultiBody.JointsS Rigid components such as
  .png)                                           bodies with mass and
  [Parts](Modelica_Mechanics_MultiBody_Parts.html inertia and massless
  #Modelica.Mechanics.MultiBody.Parts)            rods

  ![image20](Modelica.Mechanics.MultiBody.Sensors Sensors to measure
  S.png)                                          variables
  [Sensors](Modelica_Mechanics_MultiBody_Sensors. 
  html#Modelica.Mechanics.MultiBody.Sensors)      

  ![image21](Modelica.Mechanics.MultiBody.Visuali 3-dimensional visual
  zersS.png)                                      objects used for
  [Visualizers](Modelica_Mechanics_MultiBody_Visu animation
  alizers.html#Modelica.Mechanics.MultiBody.Visua 
  lizers)                                         

  ![image22](Modelica.Mechanics.MultiBody.Visuali Constants and types with
  zersS.png)                                      choices, especially to
  [Types](Modelica_Mechanics_MultiBody_Types.html build menus
  #Modelica.Mechanics.MultiBody.Types)            

  ![image23](Modelica.Mechanics.MultiBody.Visuali Icons for MultiBody
  zersS.png)                                      package
  [Icons](Modelica_Mechanics_MultiBody_Icons.html 
  #Modelica.Mechanics.MultiBody.Icons)            
  ------------------------------------------------------------------------

* * * * *

![image24](Modelica.Mechanics.MultiBody.WorldI.png) [Modelica.Mechanics.MultiBody](Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody).World
========================================================================================================================================================

**World coordinate system + gravity field + default animation
definition**

Information
-----------

::

Model **World** represents a global coordinate system fixed in ground.
This model serves several purposes:

-   It is used as **inertial system** in which the equations of all
    elements of the MultiBody library are defined.
-   It is the world frame of an **animation window** in which all
    elements of the MultiBody library are visualized.
-   It is used to define the **gravity field** in which a multi-body
    model is present. Default is a uniform gravity field where the
    gravity acceleration vector g is the same at every position.
    Additionally, a point gravity field or no gravity can be selected.
    Also, function gravityAcceleration can be redeclared to a
    user-defined function that computes the gravity acceleration, see
    example
    [Examples.Elementary.UserDefinedGravityField](Modelica_Mechanics_MultiBody_Examples_Elementary.html#Modelica.Mechanics.MultiBody.Examples.Elementary.UserDefinedGravityField).
-   It is used to define **default settings** of animation properties
    (e.g., the diameter of a sphere representing by default the center
    of mass of a body, or the diameters of the cylinders representing a
    revolute joint).
-   It is used to define a **visual representation** of the world model
    (= 3 coordinate axes with labels) and of the defined gravity field.
    ![MultiBodys.World](../Resources/Images/MultiBody/world.png)

Since the gravity field function is required from all bodies with mass
and the default settings of animation properties are required from
nearly every component, exactly one instance of model World needs to be
present in every model on the top level. The basic declaration needs to
be:

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
----------

  --------------------------------------------------------------------------
  Type                        Name     Default   Description
  --------------------------- -------- --------- ---------------------------
  Boolean                     enableAn true      = true, if animation of all
                              imation            components is enabled

  Boolean                     animateW true      = true, if world coordinate
                              orld               system shall be visualized

  Boolean                     animateG true      = true, if gravity field
                              ravity             shall be visualized
                                                 (acceleration vector or
                                                 field center)

  [AxisLabel](Modelica_Mechan label1   "x"       Label of horizontal axis in
  ics_MultiBody_Types.html#Mo                    icon
  delica.Mechanics.MultiBody.                    
  Types.AxisLabel)                               

  [AxisLabel](Modelica_Mechan label2   "y"       Label of vertical axis in
  ics_MultiBody_Types.html#Mo                    icon
  delica.Mechanics.MultiBody.                    
  Types.AxisLabel)                               

  [GravityTypes](Modelica_Mec gravityT GravityTy Type of gravity field
  hanics_MultiBody_Types.html ype      pes.Unifo 
  #Modelica.Mechanics.MultiBo          rmGravity 
  dy.Types.GravityTypes)                         

  [Acceleration](Modelica_SIu g        9.81      Constant gravity
  nits.html#Modelica.SIunits.                    acceleration [m/s2]
  Acceleration)                                  

  [Axis](Modelica_Mechanics_M n        {0,-1,0}  Direction of gravity
  ultiBody_Types.html#Modelic                    resolved in world frame
  a.Mechanics.MultiBody.Types                    (gravity = g\*n/length(n))
  .Axis)                                         [1]

  Real                        mue      3.986e14  Gravity field constant
                                                 (default = field constant
                                                 of earth) [m3/s2]

  Boolean                     driveTra true      = true, if 3-dim.
                              inMechan           mechanical effects of
                              ics3D              Parts.Mounting1D/Rotor1D/Be
                                                 velGear1D
                                                 shall be taken into account

  **Animation**                                  

  if animateWorld = true                         

  [Distance](Modelica_SIunits axisLeng nominalLe Length of world axes arrows
  .html#Modelica.SIunits.Dist th       ngth/2    [m]
  ance)                                          

  [Distance](Modelica_SIunits axisDiam axisLengt Diameter of world axes
  .html#Modelica.SIunits.Dist eter     h/default arrows [m]
  ance)                                FrameDiam 
                                       e...      

  Boolean                     axisShow true      = true, if labels shall be
                              Labels             shown

  [Color](Modelica_Mechanics_ axisColo Modelica. Color of x-arrow
  MultiBody_Types.html#Modeli r\_x     Mechanics 
  ca.Mechanics.MultiBody.Type          .MultiBod 
  s.Color)                             y...      

  [Color](Modelica_Mechanics_ axisColo axisColor 
  MultiBody_Types.html#Modeli r\_y     \_x       
  ca.Mechanics.MultiBody.Type                    
  s.Color)                                       

  [Color](Modelica_Mechanics_ axisColo axisColor Color of z-arrow
  MultiBody_Types.html#Modeli r\_z     \_x       
  ca.Mechanics.MultiBody.Type                    
  s.Color)                                       

  if animateGravity = true                       
  and gravityType =                              
  UniformGravity                                 

  [Position](Modelica_SIunits gravityA {0,0,0}   Position vector from origin
  .html#Modelica.SIunits.Posi rrowTail           of world frame to arrow
  tion)                       [3]                tail, resolved in world
                                                 frame [m]

  [Length](Modelica_SIunits.h gravityA axisLengt Length of gravity arrow [m]
  tml#Modelica.SIunits.Length rrowLeng h/2       
  )                           th                 

  [Diameter](Modelica_SIunits gravityA gravityAr Diameter of gravity arrow
  .html#Modelica.SIunits.Diam rrowDiam rowLength [m]
  eter)                       eter     /defaultW 
                                       i...      

  [Color](Modelica_Mechanics_ gravityA {0,230,0} Color of gravity arrow
  MultiBody_Types.html#Modeli rrowColo           
  ca.Mechanics.MultiBody.Type r                  
  s.Color)                                       

  if animateGravity = true                       
  and gravityType =                              
  PointGravity                                   

  [Diameter](Modelica_SIunits gravityS 12742000  Diameter of sphere
  .html#Modelica.SIunits.Diam phereDia           representing gravity center
  eter)                       meter              (default = mean diameter of
                                                 earth) [m]

  [Color](Modelica_Mechanics_ gravityS {0,230,0} Color of gravity sphere
  MultiBody_Types.html#Modeli phereCol           
  ca.Mechanics.MultiBody.Type or                 
  s.Color)                                       

  **Defaults**                                   

  [Length](Modelica_SIunits.h nominalL 1         "Nominal" length of
  tml#Modelica.SIunits.Length ength              multi-body system [m]
  )                                              

  [Length](Modelica_SIunits.h defaultA nominalLe Default for length of a
  tml#Modelica.SIunits.Length xisLengt ngth/5    frame axis (but not world
  )                           h                  frame) [m]

  [Length](Modelica_SIunits.h defaultJ nominalLe Default for the fixed
  tml#Modelica.SIunits.Length ointLeng ngth/10   length of a shape
  )                           th                 representing a joint [m]

  [Length](Modelica_SIunits.h defaultJ nominalLe Default for the fixed width
  tml#Modelica.SIunits.Length ointWidt ngth/20   of a shape representing a
  )                           h                  joint [m]

  [Length](Modelica_SIunits.h defaultF nominalLe Default for the fixed
  tml#Modelica.SIunits.Length orceLeng ngth/10   length of a shape
  )                           th                 representing a force (e.g.,
                                                 damper) [m]

  [Length](Modelica_SIunits.h defaultF nominalLe Default for the fixed width
  tml#Modelica.SIunits.Length orceWidt ngth/20   of a shape represening a
  )                           h                  force (e.g., spring,
                                                 bushing) [m]

  [Length](Modelica_SIunits.h defaultB nominalLe Default for diameter of
  tml#Modelica.SIunits.Length odyDiame ngth/9    sphere representing the
  )                           ter                center of mass of a body
                                                 [m]

  Real                        defaultW 20        Default for shape width as
                              idthFrac           a fraction of shape length
                              tion               (e.g., for
                                                 Parts.FixedTranslation)

  [Length](Modelica_SIunits.h defaultA nominalLe Default for arrow diameter
  tml#Modelica.SIunits.Length rrowDiam ngth/40   (e.g., of forces, torques,
  )                           eter               sensors) [m]

  Real                        defaultF 40        Default for arrow diameter
                              rameDiam           of a coordinate system as a
                              eterFrac           fraction of axis length
                              tion               

  Real                        defaultS 0.7       Default reflection of
                              pecularC           ambient light (= 0: light
                              oefficie           is completely absorbed)
                              nt                 

  Real                        defaultN 1000      Default scaling of force
                              \_to\_m            arrows (length =
                                                 force/defaultN\_to\_m)
                                                 [N/m]

  Real                        defaultN 1000      Default scaling of torque
                              m\_to\_m           arrows (length =
                                                 torque/defaultNm\_to\_m)
                                                 [N.m/m]
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Name  Description
  ------------------------------------------- ----- -----------------------
  [Frame\_b](Modelica_Mechanics_MultiBody_Int frame Coordinate system fixed
  erfaces.html#Modelica.Mechanics.MultiBody.I \_b   in the origin of the
  nterfaces.Frame_b)                                world frame
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:03 2010.
