% Modelica.Mechanics.MultiBody.Types:
  [Modelica.Mechanics.MultiBody](Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody).Types
% 
% 

**Constants and types with choices, especially to build menus**

Information
===========

::

In this package **types** and **constants** are defined that are used in
the MultiBody library. The types have additional annotation choices
definitions that define the menus to be built up in the graphical user
interface when the type is used as parameter in a declaration.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                        Description
  ------------------------------------------- ----------------------------
  ![image9](Modelica.Mechanics.MultiBody.Type Axis vector with choices for
  s.AxisS.png)                                menus
  [Axis](Modelica_Mechanics_MultiBody_Types.h 
  tml#Modelica.Mechanics.MultiBody.Types.Axis 
  )                                           

  ![image10](Modelica.Mechanics.MultiBody.Typ Label of axis with choices
  es.AxisLabelS.png)                          for menus
  [AxisLabel](Modelica_Mechanics_MultiBody_Ty 
  pes.html#Modelica.Mechanics.MultiBody.Types 
  .AxisLabel)                                 

  ![image11](Modelica.Mechanics.MultiBody.Typ Sequence of planar frame
  es.RotationSequenceS.png)                   rotations with choices for
  [RotationSequence](Modelica_Mechanics_Multi menus
  Body_Types.html#Modelica.Mechanics.MultiBod 
  y.Types.RotationSequence)                   

  ![image12](Modelica.Mechanics.MultiBody.Typ RGB representation of color
  es.RotationSequenceS.png)                   (will be improved with a
  [Color](Modelica_Mechanics_MultiBody_Types. color editor)
  html#Modelica.Mechanics.MultiBody.Types.Col 
  or)                                         

  ![image13](Modelica.Mechanics.MultiBody.Typ RGB representation of color
  es.RealColorS.png)                          as Real type
  [RealColor](Modelica_Mechanics_MultiBody_Ty 
  pes.html#Modelica.Mechanics.MultiBody.Types 
  .RealColor)                                 

  ![image14](Modelica.Mechanics.MultiBody.Typ Reflection of ambient light
  es.RealColorS.png)                          (= 0: light is completely
  [SpecularCoefficient](Modelica_Mechanics_Mu absorbed)
  ltiBody_Types.html#Modelica.Mechanics.Multi 
  Body.Types.SpecularCoefficient)             

  ![image15](Modelica.Mechanics.MultiBody.Typ Type of shape (box, sphere,
  es.ShapeTypeS.png)                          cylinder, pipecylinder,
  [ShapeType](Modelica_Mechanics_MultiBody_Ty cone, pipe, beam, gearwheel,
  pes.html#Modelica.Mechanics.MultiBody.Types spring, dxf-file)
  .ShapeType)                                 

  ![image16](Modelica.Mechanics.MultiBody.Typ Reflection of ambient light
  es.ShapeExtraS.png)                         (= 0: light is completely
  [ShapeExtra](Modelica_Mechanics_MultiBody_T absorbed)
  ypes.html#Modelica.Mechanics.MultiBody.Type 
  s.ShapeExtra)                               

  [ResolveInFrameA](Modelica_Mechanics_MultiB Enumeration to define the
  ody_Types.html#Modelica.Mechanics.MultiBody frame in which an absolute
  .Types.ResolveInFrameA)                     vector is resolved (world,
                                              frame\_a, frame\_resolve)

  [ResolveInFrameB](Modelica_Mechanics_MultiB Enumeration to define the
  ody_Types.html#Modelica.Mechanics.MultiBody frame in which an absolute
  .Types.ResolveInFrameB)                     vector is resolved (world,
                                              frame\_b, frame\_resolve)

  [ResolveInFrameAB](Modelica_Mechanics_Multi Enumeration to define the
  Body_Types.html#Modelica.Mechanics.MultiBod frame in which a relative
  y.Types.ResolveInFrameAB)                   vector is resolved (world,
                                              frame\_a, frame\_b,
                                              frame\_resolve)

  [RotationTypes](Modelica_Mechanics_MultiBod Enumeration defining in
  y_Types.html#Modelica.Mechanics.MultiBody.T which way the fixed
  ypes.RotationTypes)                         orientation of frame\_b with
                                              respect to frame\_a is
                                              specified

  [GravityTypes](Modelica_Mechanics_MultiBody Enumeration defining the
  _Types.html#Modelica.Mechanics.MultiBody.Ty type of the gravity field
  pes.GravityTypes)                           

  [Init](Modelica_Mechanics_MultiBody_Types.h 
  tml#Modelica.Mechanics.MultiBody.Types.Init 
  )                                           

  ![image17](Modelica.Mechanics.MultiBody.Typ Default settings of the
  es.DefaultsS.png)                           MultiBody library via
  [Defaults](Modelica_Mechanics_MultiBody_Typ constants
  es_Defaults.html#Modelica.Mechanics.MultiBo 
  dy.Types.Defaults)                          
  ------------------------------------------------------------------------

Types and constants
===================

    type Axis = Modelica.Icons.TypeReal[3](each final unit="1") 
    "Axis vector with choices for menus";

    type AxisLabel = Modelica.Icons.TypeString 
    "Label of axis with choices for menus";

    type RotationSequence = Modelica.Icons.TypeInteger[3] (min={1,1,1}, max={3,3,3}) 
    "Sequence of planar frame rotations with choices for menus";

    type Color = Modelica.Icons.TypeInteger[3] (each min=0, each max=255) 
    "RGB representation of color (will be improved with a color editor)";

    type RealColor =
                 Modelica.Icons.TypeReal[3] (each min=0, each max=255) 
    "RGB representation of color as Real type ";

    type SpecularCoefficient = Modelica.Icons.TypeReal 
    "Reflection of ambient light (= 0: light is completely absorbed)";

    type ShapeType = Modelica.Icons.TypeString 
    "Type of shape (box, sphere, cylinder, pipecylinder, cone, pipe, beam, gearwheel, spring, dxf-file)";

    type ShapeExtra = Modelica.Icons.TypeReal 
    "Reflection of ambient light (= 0: light is completely absorbed)";

    type ResolveInFrameA = enumeration(
      world "Resolve in world frame",
      frame_a "Resolve in frame_a",
      frame_resolve "Resolve in frame_resolve (frame_resolve must be connected)")
    "Enumeration to define the frame in which an absolute vector is resolved (world, frame_a, frame_resolve)";

    type ResolveInFrameB = enumeration(
      world "Resolve in world frame",
      frame_b "Resolve in frame_b",
      frame_resolve "Resolve in frame_resolve (frame_resolve must be connected)")
    "Enumeration to define the frame in which an absolute vector is resolved (world, frame_b, frame_resolve)";

    type ResolveInFrameAB = enumeration(
      world "Resolve in world frame",
      frame_a "Resolve in frame_a",
      frame_b "Resolve in frame_b",
      frame_resolve "Resolve in frame_resolve (frame_resolve must be connected)")
    "Enumeration to define the frame in which a relative vector is resolved (world, frame_a, frame_b, frame_resolve)";

    type RotationTypes = enumeration(
      RotationAxis "Rotating frame_a around an angle with a fixed axis",
      TwoAxesVectors "Resolve two vectors of frame_b in frame_a",
      PlanarRotationSequence "Planar rotation sequence") 
    "Enumeration defining in which way the fixed orientation of frame_b with respect to frame_a is specified";

    type GravityTypes = enumeration(
      NoGravity "No gravity field",
      UniformGravity "Uniform gravity field",
      PointGravity "Point gravity field") 
    "Enumeration defining the type of the gravity field";

    type Init = enumeration(
        Free,
        PositionVelocity,
        SteadyState,
        Position,
        Velocity,
        VelocityAcceleration,
        PositionVelocityAcceleration);

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:40 2010.
