% Modelica.Mechanics.MultiBody.Parts
% 
% 

[Modelica.Mechanics.MultiBody](Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody).Parts
====================================================================================================

**Rigid components such as bodies with mass and inertia and massless
rods**

Information
-----------

::

Package **Parts** contains **rigid components** of a multi-body system.
These components may be used to build up more complicated structures.
For example, a part may be built up of a "Body" and of several
"FixedTranslation" components.

### Content

  ------------------------------------------------------------------------
  ***Model***                 ***Description***
  --------------------------- --------------------------------------------
  [Fixed](Modelica_Mechanics_ Frame fixed in world frame at a given
  MultiBody_Parts.html#Modeli position. It is visualized with a shape, see
  ca.Mechanics.MultiBody.Part **shapeType** below (the frames on the two
  s.Fixed)                    sides do not belong to the component):
                                ~ ![image9](../Resources/Images/MultiBody/
                              Fixed.png)
                              
                              

  [FixedTranslation](Modelica Fixed translation of frame\_b with respect
  _Mechanics_MultiBody_Parts. to frame\_a. It is visualized with a shape,
  html#Modelica.Mechanics.Mul see **shapeType** below (the frames on the
  tiBody.Parts.FixedTranslati two sides do not belong to the component):
  on)                           ~ ![image10](../Resources/Images/MultiBody
                              /FixedTranslation.png)
                              
                              

  [FixedRotation](Modelica_Me Fixed translation and fixed rotation of
  chanics_MultiBody_Parts.htm frame\_b with respect to frame\_a It is
  l#Modelica.Mechanics.MultiB visualized with a shape, see **shapeType**
  ody.Parts.FixedRotation)    below (the frames on the two sides do not
                              belong to the component):
                                ~ ![image11](../Resources/Images/MultiBody
                              /FixedRotation.png)
                              
                              

  [Body](Modelica_Mechanics_M Rigid body with mass, inertia tensor and one
  ultiBody_Parts.html#Modelic frame connector. It is visualized with a
  a.Mechanics.MultiBody.Parts cylinder and a sphere at the center of mass:
  .Body)                        ~ ![image12](../Resources/Images/MultiBody
                              /Body.png)
                              
                              

  [BodyShape](Modelica_Mechan Rigid body with mass, inertia tensor,
  ics_MultiBody_Parts.html#Mo different shapes (see **shapeType** below)
  delica.Mechanics.MultiBody. for animation, and two frame connectors:
  Parts.BodyShape)              ~ ![image13](../Resources/Images/MultiBody
                              /BodyShape.png)
                              
                              

  [Fixed                      Rigid body with box shape (mass and
  BodyBox](Modelica_Mechanics animation properties are computed from box
  _MultiBody_Parts.html#Model data and from density):
  ica.Mechanics.MultiBody.Par   ~ ![image14](../Resources/Images/MultiBody
  ts.Fixed)                   /BodyBox.png)
                              
                              

  [BodyCylinder](Modelica_Mec Rigid body with cylinder shape (mass and
  hanics_MultiBody_Parts.html animation properties are computed from
  #Modelica.Mechanics.MultiBo cylinder data and from density):
  dy.Parts.BodyCylinder)        ~ ![image15](../Resources/Images/MultiBody
                              /BodyCylinder.png)
                              
                              

  [PointMass](Modelica_Mechan Rigid body where inertia tensor and rotation
  ics_MultiBody_Parts.html#Mo is neglected:
  delica.Mechanics.MultiBody.   ~ ![image16](../Resources/Images/MultiBody
  Parts.PointMass)            /Parts/PointMass.png)
                              
                              

  [Mounting1D](Modelica_Mecha Propagate 1-dim. support torque to 3-dim.
  nics_MultiBody_Parts.html#M system
  odelica.Mechanics.MultiBody 
  .Parts.Mounting1D)          

  [Rotor1D](Modelica_Mechanic 1D inertia attachable on 3-dim. bodies
  s_MultiBody_Parts.html#Mode (without neglecting dynamic effects)
  lica.Mechanics.MultiBody.Pa   ~ ![image17](../Resources/Images/MultiBody
  rts.Rotor1D)                /Parts/Rotor1D.png)
                              
                              

  [BevelGear1D](Modelica_Mech 1D gearbox with arbitrary shaft directions
  anics_MultiBody_Parts.html# (3D bearing frame)
  Modelica.Mechanics.MultiBod 
  y.Parts.BevelGear1D)        
  ------------------------------------------------------------------------

Components **Fixed**, **FixedTranslation**, **FixedRotation** and
**BodyShape** are visualized according to parameter **shapeType**, that
may have the following values (e.g., shapeType = "box"):

All the details of the visualization shape parameters are given in
[Visualizers.FixedShape](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers.FixedShape)

Colors in all animation parts are defined via parameter **color**. This
is an Integer vector with 3 elements, {r, g, b}, and specifies the color
of the shape. {r,g,b} are the "red", "green" and "blue" color parts,
given in the ranges 0 .. 255, respectively. The predefined type
**MultiBody.Types.Color** contains a menu definition of the colors used
in the MultiBody library (this will be replaced by a color editor).

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                  Description
  ------------------------------------- ----------------------------------
  ![image31](Modelica.Mechanics.MultiBo Frame fixed in the world frame at
  dy.Parts.FixedS.png)                  a given position
  [Fixed](Modelica_Mechanics_MultiBody_ 
  Parts.html#Modelica.Mechanics.MultiBo 
  dy.Parts.Fixed)                       

  ![image32](Modelica.Mechanics.MultiBo Fixed translation of frame\_b with
  dy.Parts.FixedTranslationS.png)       respect to frame\_a
  [FixedTranslation](Modelica_Mechanics 
  _MultiBody_Parts.html#Modelica.Mechan 
  ics.MultiBody.Parts.FixedTranslation) 

  ![image33](Modelica.Mechanics.MultiBo Fixed translation followed by a
  dy.Parts.FixedRotationS.png)          fixed rotation of frame\_b with
  [FixedRotation](Modelica_Mechanics_Mu respect to frame\_a
  ltiBody_Parts.html#Modelica.Mechanics 
  .MultiBody.Parts.FixedRotation)       

  ![image34](Modelica.Mechanics.MultiBo Rigid body with mass, inertia
  dy.Parts.BodyS.png)                   tensor and one frame connector (12
  [Body](Modelica_Mechanics_MultiBody_P potential states)
  arts.html#Modelica.Mechanics.MultiBod 
  y.Parts.Body)                         

  ![image35](Modelica.Mechanics.MultiBo Rigid body with mass, inertia
  dy.Parts.BodyShapeS.png)              tensor, different shapes for
  [BodyShape](Modelica_Mechanics_MultiB animation, and two frame
  ody_Parts.html#Modelica.Mechanics.Mul connectors (12 potential states)
  tiBody.Parts.BodyShape)               

  ![image36](Modelica.Mechanics.MultiBo Rigid body with box shape. Mass
  dy.Parts.BodyBoxS.png)                and animation properties are
  [BodyBox](Modelica_Mechanics_MultiBod computed from box data and density
  y_Parts.html#Modelica.Mechanics.Multi (12 potential states)
  Body.Parts.BodyBox)                   

  ![image37](Modelica.Mechanics.MultiBo Rigid body with cylinder shape.
  dy.Parts.BodyCylinderS.png)           Mass and animation properties are
  [BodyCylinder](Modelica_Mechanics_Mul computed from cylinder data and
  tiBody_Parts.html#Modelica.Mechanics. density (12 potential states)
  MultiBody.Parts.BodyCylinder)         

  ![image38](Modelica.Mechanics.MultiBo Rigid body where body rotation and
  dy.Parts.PointMassS.png)              inertia tensor is neglected (6
  [PointMass](Modelica_Mechanics_MultiB potential states)
  ody_Parts.html#Modelica.Mechanics.Mul 
  tiBody.Parts.PointMass)               

  ![image39](Modelica.Mechanics.MultiBo Propagate 1-dim. support torque to
  dy.Parts.Mounting1DS.png)             3-dim. system (provided
  [Mounting1D](Modelica_Mechanics_Multi world.driveTrainMechanics3D=true)
  Body_Parts.html#Modelica.Mechanics.Mu 
  ltiBody.Parts.Mounting1D)             

  ![image40](Modelica.Mechanics.MultiBo 1D inertia attachable on 3-dim.
  dy.Parts.Rotor1DS.png)                bodies (3D dynamic effects are
  [Rotor1D](Modelica_Mechanics_MultiBod taken into account if
  y_Parts.html#Modelica.Mechanics.Multi world.driveTrainMechanics3D=true)
  Body.Parts.Rotor1D)                   

  ![image41](Modelica.Mechanics.MultiBo 1D gearbox with arbitrary shaft
  dy.Parts.BevelGear1DS.png)            directions and 3-dim. bearing
  [BevelGear1D](Modelica_Mechanics_Mult frame (3D dynamic effects are
  iBody_Parts.html#Modelica.Mechanics.M taken into account provided
  ultiBody.Parts.BevelGear1D)           world.driveTrainMechanics3D=true)

  ![image42](Modelica.Mechanics.MultiBo Ideal rolling wheel on flat
  dy.Parts.RollingWheelS.png)           surface z=0 (5 positional, 3
  [RollingWheel](Modelica_Mechanics_Mul velocity degrees of freedom)
  tiBody_Parts.html#Modelica.Mechanics. 
  MultiBody.Parts.RollingWheel)         

  ![image43](Modelica.Mechanics.MultiBo Ideal rolling wheel set consisting
  dy.Parts.RollingWheelSetS.png)        of two ideal rolling wheels
  [RollingWheelSet](Modelica_Mechanics_ connected together by an axis
  MultiBody_Parts.html#Modelica.Mechani 
  cs.MultiBody.Parts.RollingWheelSet)   
  ------------------------------------------------------------------------

* * * * *

![image44](Modelica.Mechanics.MultiBody.Parts.FixedI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).Fixed
================================================================================================================================================================================

**Frame fixed in the world frame at a given position**

Information
-----------

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

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name   Default   Description
  --------------------------------- ------ --------- ----------------------
  Boolean                           animat true      = true, if animation
                                    ion              shall be enabled

  [Position](Modelica_SIunits.html# r[3]   {0,0,0}   Position vector from
  Modelica.SIunits.Position)                         world frame to
                                                     frame\_b, resolved in
                                                     world frame [m]

  **Animation**                                      

  if animation = true                                

  [ShapeType](Modelica_Mechanics_Mu shapeT "cylinder Type of shape
  ltiBody_Types.html#Modelica.Mecha ype    "         
  nics.MultiBody.Types.ShapeType)                    

  [Position](Modelica_SIunits.html# r\_sha {0,0,0}   Vector from world
  Modelica.SIunits.Position)        pe[3]            frame to shape origin,
                                                     resolved in world
                                                     frame [m]

  [Position](Modelica_SIunits.html# length r -       Vector in length
  Modelica.SIunits.Position)        Direct r\_shape  direction of shape,
                                    ion[3]           resolved in world
                                                     frame [m]

  [Position](Modelica_SIunits.html# widthD {0,1,0}   Vector in width
  Modelica.SIunits.Position)        irecti           direction of shape,
                                    on[3]            resolved in world
                                                     frame [m]

  [Length](Modelica_SIunits.html#Mo length Modelica. Length of shape [m]
  delica.SIunits.Length)                   Math.Vect 
                                           ors.lengt 
                                           h...      

  [Distance](Modelica_SIunits.html# width  length/wo Width of shape [m]
  Modelica.SIunits.Distance)               rld.defau 
                                           ltWidthFr 
                                           a...      

  [Distance](Modelica_SIunits.html# height width     Height of shape [m]
  Modelica.SIunits.Distance)                         

  [ShapeExtra](Modelica_Mechanics_M extra  0.0       Additional parameter
  ultiBody_Types.html#Modelica.Mech                  for cone, pipe etc.
  anics.MultiBody.Types.ShapeExtra)                  (see docu of
                                                     Visualizers.Advanced.S
                                                     hape)

  [Color](Modelica_Mechanics_MultiB color  Modelica. Color of shape
  ody_Types.html#Modelica.Mechanics        Mechanics 
  .MultiBody.Types.Color)                  .MultiBod 
                                           y...      

  [SpecularCoefficient](Modelica_Me specul world.def Reflection of ambient
  chanics_MultiBody_Types.html#Mode arCoef aultSpecu light (= 0: light is
  lica.Mechanics.MultiBody.Types.Sp ficien larCoeffi completely absorbed)
  ecularCoefficient)                t      c...      
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Name  Description
  ---------------------------------------------- ----- -------------------
  [Frame\_b](Modelica_Mechanics_MultiBody_Interf frame Coordinate system
  aces.html#Modelica.Mechanics.MultiBody.Interfa \_b   fixed in the world
  ces.Frame_b)                                         frame
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image45](Modelica.Mechanics.MultiBody.Parts.FixedTranslationI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).FixedTranslation
======================================================================================================================================================================================================

**Fixed translation of frame\_b with respect to frame\_a**

Information
-----------

::

Component for a **fixed translation** of frame\_b with respect to
frame\_a, i.e., the relationship between connectors frame\_a and
frame\_b remains constant and frame\_a is always **parallel** to
frame\_b.

By default, this component is visualized by a cylinder connecting
frame\_a and frame\_b, as shown in the figure below. Note, that the two
visualized frames are not part of the component animation and that the
animation may be switched off via parameter animation = **false**.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name   Default   Description
  -------------------------------- ------ --------- -----------------------
  Boolean                          animat true      = true, if animation
                                   ion              shall be enabled

  [Position](Modelica_SIunits.html r[3]             Vector from frame\_a to
  #Modelica.SIunits.Position)                       frame\_b resolved in
                                                    frame\_a [m]

  **Animation**                                     

  if animation = true                               

  [ShapeType](Modelica_Mechanics_M shapeT "cylinder Type of shape
  ultiBody_Types.html#Modelica.Mec ype    "         
  hanics.MultiBody.Types.ShapeType                  
  )                                                 

  [Position](Modelica_SIunits.html r\_sha {0,0,0}   Vector from frame\_a to
  #Modelica.SIunits.Position)      pe[3]            shape origin, resolved
                                                    in frame\_a [m]

  [Axis](Modelica_Mechanics_MultiB length r -       Vector in length
  ody_Types.html#Modelica.Mechanic Direct r\_shape  direction of shape,
  s.MultiBody.Types.Axis)          ion              resolved in frame\_a
                                                    [1]

  [Axis](Modelica_Mechanics_MultiB widthD {0,1,0}   Vector in width
  ody_Types.html#Modelica.Mechanic irecti           direction of shape,
  s.MultiBody.Types.Axis)          on               resolved in frame\_a
                                                    [1]

  [Length](Modelica_SIunits.html#M length Modelica. Length of shape [m]
  odelica.SIunits.Length)                 Math.Vect 
                                          ors.lengt 
                                          h...      

  [Distance](Modelica_SIunits.html width  length/wo Width of shape [m]
  #Modelica.SIunits.Distance)             rld.defau 
                                          ltWidthFr 
                                          a...      

  [Distance](Modelica_SIunits.html height width     Height of shape. [m]
  #Modelica.SIunits.Distance)                       

  [ShapeExtra](Modelica_Mechanics_ extra  0.0       Additional parameter
  MultiBody_Types.html#Modelica.Me                  depending on shapeType
  chanics.MultiBody.Types.ShapeExt                  (see docu of
  ra)                                               Visualizers.Advanced.Sh
                                                    ape).

  [Color](Modelica_Mechanics_Multi color  Modelica. Color of shape
  Body_Types.html#Modelica.Mechani        Mechanics 
  cs.MultiBody.Types.Color)               .MultiBod 
                                          y...      

  [SpecularCoefficient](Modelica_M specul world.def Reflection of ambient
  echanics_MultiBody_Types.html#Mo arCoef aultSpecu light (= 0: light is
  delica.Mechanics.MultiBody.Types ficien larCoeffi completely absorbed)
  .SpecularCoefficient)            t      c...      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_a the component with one
  tiBody.Interfaces.Frame_a)                   cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_b the component with one
  tiBody.Interfaces.Frame_b)                   cut-force and cut-torque
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image46](Modelica.Mechanics.MultiBody.Parts.FixedRotationI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).FixedRotation
================================================================================================================================================================================================

**Fixed translation followed by a fixed rotation of frame\_b with
respect to frame\_a**

Information
-----------

::

Component for a **fixed translation** and **fixed rotation** of frame\_b
with respect to frame\_a, i.e., the relationship between connectors
frame\_a and frame\_b remains constant. There are several possibilities
to define the orientation of frame\_b with respect to frame\_a:

-   **Planar rotation** along axis 'n' (that is fixed and resolved in
    frame\_a) with a fixed angle 'angle'.
-   **Vectors n\_x** and **n\_y** that are directed along the
    corresponding axes direction of frame\_b and are resolved in
    frame\_a (if n\_y is not orthogonal to n\_x, the y-axis of frame\_b
    is selected such that it is orthogonal to n\_x and in the plane of
    n\_x and n\_y).
-   **Sequence** of **three planar axes rotations**. For example,
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

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name   Default   Description
  -------------------------------- ------ --------- -----------------------
  Boolean                          animat true      = true, if animation
                                   ion              shall be enabled

  [Position](Modelica_SIunits.html r[3]   {0,0,0}   Vector from frame\_a to
  #Modelica.SIunits.Position)                       frame\_b resolved in
                                                    frame\_a [m]

  [RotationTypes](Modelica_Mechani rotati Modelica. Type of rotation
  cs_MultiBody_Types.html#Modelica onType Mechanics description
  .Mechanics.MultiBody.Types.Rotat        .MultiBod 
  ionTypes)                               y...      

  if rotationType = RotationAxis                    

  [Axis](Modelica_Mechanics_MultiB n      {1,0,0}   Axis of rotation in
  ody_Types.html#Modelica.Mechanic                  frame\_a (= same as in
  s.MultiBody.Types.Axis)                           frame\_b) [1]

  [Angle\_deg](Modelica_SIunits_Co angle  0         Angle to rotate
  nversions_NonSIunits.html#Modeli                  frame\_a around axis n
  ca.SIunits.Conversions.NonSIunit                  into frame\_b [deg]
  s.Angle_deg)                                      

  if rotationType = TwoAxesVectors                  

  [Axis](Modelica_Mechanics_MultiB n\_x   {1,0,0}   Vector along x-axis of
  ody_Types.html#Modelica.Mechanic                  frame\_b resolved in
  s.MultiBody.Types.Axis)                           frame\_a [1]

  [Axis](Modelica_Mechanics_MultiB n\_y   {0,1,0}   Vector along y-axis of
  ody_Types.html#Modelica.Mechanic                  frame\_b resolved in
  s.MultiBody.Types.Axis)                           frame\_a [1]

  if rotationType =                                 
  PlanarRotationSequence                            

  [RotationSequence](Modelica_Mech sequen {1,2,3}   Sequence of rotations
  anics_MultiBody_Types.html#Model ce               
  ica.Mechanics.MultiBody.Types.Ro                  
  tationSequence)                                   

  [Angle\_deg](Modelica_SIunits_Co angles {0,0,0}   Rotation angles around
  nversions_NonSIunits.html#Modeli [3]              the axes defined in
  ca.SIunits.Conversions.NonSIunit                  'sequence' [deg]
  s.Angle_deg)                                      

  **Animation**                                     

  if animation = true                               

  [ShapeType](Modelica_Mechanics_M shapeT "cylinder Type of shape
  ultiBody_Types.html#Modelica.Mec ype    "         
  hanics.MultiBody.Types.ShapeType                  
  )                                                 

  [Position](Modelica_SIunits.html r\_sha {0,0,0}   Vector from frame\_a to
  #Modelica.SIunits.Position)      pe[3]            shape origin, resolved
                                                    in frame\_a [m]

  [Axis](Modelica_Mechanics_MultiB length r -       Vector in length
  ody_Types.html#Modelica.Mechanic Direct r\_shape  direction of shape,
  s.MultiBody.Types.Axis)          ion              resolved in frame\_a
                                                    [1]

  [Axis](Modelica_Mechanics_MultiB widthD {0,1,0}   Vector in width
  ody_Types.html#Modelica.Mechanic irecti           direction of shape,
  s.MultiBody.Types.Axis)          on               resolved in frame\_a
                                                    [1]

  [Length](Modelica_SIunits.html#M length Modelica. Length of shape [m]
  odelica.SIunits.Length)                 Math.Vect 
                                          ors.lengt 
                                          h...      

  [Distance](Modelica_SIunits.html width  length/wo Width of shape [m]
  #Modelica.SIunits.Distance)             rld.defau 
                                          ltWidthFr 
                                          a...      

  [Distance](Modelica_SIunits.html height width     Height of shape. [m]
  #Modelica.SIunits.Distance)                       

  [ShapeExtra](Modelica_Mechanics_ extra  0.0       Additional parameter
  MultiBody_Types.html#Modelica.Me                  depending on shapeType
  chanics.MultiBody.Types.ShapeExt                  (see docu of
  ra)                                               Visualizers.Advanced.Sh
                                                    ape).

  [Color](Modelica_Mechanics_Multi color  Modelica. Color of shape
  Body_Types.html#Modelica.Mechani        Mechanics 
  cs.MultiBody.Types.Color)               .MultiBod 
                                          y...      

  [SpecularCoefficient](Modelica_M specul world.def Reflection of ambient
  echanics_MultiBody_Types.html#Mo arCoef aultSpecu light (= 0: light is
  delica.Mechanics.MultiBody.Types ficien larCoeffi completely absorbed)
  .SpecularCoefficient)            t      c...      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_a the component with one
  tiBody.Interfaces.Frame_a)                   cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_b the component with one
  tiBody.Interfaces.Frame_b)                   cut-force and cut-torque
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image47](Modelica.Mechanics.MultiBody.Parts.BodyI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).Body
==============================================================================================================================================================================

**Rigid body with mass, inertia tensor and one frame connector (12
potential states)**

Information
-----------

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

**States of Body Components**

Every body has potential states. If possible a tool will select the
states of joints and not the states of bodies because this is usually
the most efficient choice. In this case the position, orientation,
velocity and angular velocity of frame\_a of the body will be computed
by the component that is connected to frame\_a. However, if a body is
moving freely in space, variables of the body have to be used as states.
The potential states of the body are:

-   The **position vector** frame\_a.r\_0 from the origin of the world
    frame to the origin of frame\_a of the body, resolved in the world
    frame and the **absolute velocity** v\_0 of the origin of frame\_a,
    resolved in the world frame (= der(frame\_a.r\_0)).
-   If parameter **useQuaternions** in the "Advanced" menu is **true**
    (this is the default), then **4 quaternions** are potential states.
    Additionally, the coordinates of the absolute angular velocity
    vector of the body are 3 potential states. If **useQuaternions** in
    the "Advanced" menu is **false**, then **3 angles** and the
    derivatives of these angles are potential states. The orientation of
    frame\_a is computed by rotating the world frame along the axes
    defined in parameter vector "sequence\_angleStates" (default =
    {1,2,3}, i.e., the Cardan angle sequence) around the angles used as
    potential states. For example, the default is to rotate the x-axis
    of the world frame around angles[1], the new y-axis around angles[2]
    and the new z-axis around angles[3], arriving at frame\_a.

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
----------

  -------------------------------------------------------------------------
  Type                           Name   Default  Description
  ------------------------------ ------ -------- --------------------------
  Boolean                        animat true     = true, if animation shall
                                 ion             be enabled (show cylinder
                                                 and sphere)

  [Position](Modelica_SIunits.ht r\_CM[          Vector from frame\_a to
  ml#Modelica.SIunits.Position)  3]              center of mass, resolved
                                                 in frame\_a [m]

  [Mass](Modelica_SIunits.html#M m               Mass of rigid body [kg]
  odelica.SIunits.Mass)                          

  Inertia tensor (resolved in                    
  center of mass, parallel to                    
  frame\_a)                                      

  [Inertia](Modelica_SIunits.htm I\_11  0.001    (1,1) element of inertia
  l#Modelica.SIunits.Inertia)                    tensor [kg.m2]

  [Inertia](Modelica_SIunits.htm I\_22  0.001    (2,2) element of inertia
  l#Modelica.SIunits.Inertia)                    tensor [kg.m2]

  [Inertia](Modelica_SIunits.htm I\_33  0.001    (3,3) element of inertia
  l#Modelica.SIunits.Inertia)                    tensor [kg.m2]

  [Inertia](Modelica_SIunits.htm I\_21  0        (2,1) element of inertia
  l#Modelica.SIunits.Inertia)                    tensor [kg.m2]

  [Inertia](Modelica_SIunits.htm I\_31  0        (3,1) element of inertia
  l#Modelica.SIunits.Inertia)                    tensor [kg.m2]

  [Inertia](Modelica_SIunits.htm I\_32  0        (3,2) element of inertia
  l#Modelica.SIunits.Inertia)                    tensor [kg.m2]

  **Initialization**                             

  [Position](Modelica_SIunits.ht r\_0.s {0,0,0}  Position vector from
  ml#Modelica.SIunits.Position)  tart[3          origin of world frame to
                                 ]               origin of frame\_a [m]

  [Velocity](Modelica_SIunits.ht v\_0.s {0,0,0}  Absolute velocity of
  ml#Modelica.SIunits.Velocity)  tart[3          frame\_a, resolved in
                                 ]               world frame (= der(r\_0))
                                                 [m/s]

  [Acceleration](Modelica_SIunit a\_0.s {0,0,0}  Absolute acceleration of
  s.html#Modelica.SIunits.Accele tart[3          frame\_a resolved in world
  ration)                        ]               frame (= der(v\_0)) [m/s2]

  Boolean                        angles false    = true, if angles\_start
                                 \_fixe          are used as initial
                                 d               values, else as guess
                                                 values

  [Angle](Modelica_SIunits.html# angles {0,0,0}  Initial values of angles
  Modelica.SIunits.Angle)        \_star          to rotate frame\_a around
                                 t[3]            'sequence\_start' axes
                                                 into frame\_b [rad]

  [RotationSequence](Modelica_Me sequen {1,2,3}  Sequence of rotations to
  chanics_MultiBody_Types.html#M ce\_st          rotate frame\_a into
  odelica.Mechanics.MultiBody.Ty art             frame\_b at initial time
  pes.RotationSequence)                          

  Boolean                        w\_0\_ false    = true, if w\_0\_start are
                                 fixed           used as initial values,
                                                 else as guess values

  [AngularVelocity](Modelica_SIu w\_0\_ {0,0,0}  Initial or guess values of
  nits.html#Modelica.SIunits.Ang start[          angular velocity of
  ularVelocity)                  3]              frame\_a resolved in world
                                                 frame [rad/s]

  Boolean                        z\_0\_ false    = true, if z\_0\_start are
                                 fixed           used as initial values,
                                                 else as guess values

  [AngularAcceleration](Modelica z\_0\_ {0,0,0}  Initial values of angular
  _SIunits.html#Modelica.SIunits start[          acceleration z\_0 =
  .AngularAcceleration)          3]              der(w\_0) [rad/s2]

  **Animation**                                  

  if animation = true                            

  [Diameter](Modelica_SIunits.ht sphere world.de Diameter of sphere [m]
  ml#Modelica.SIunits.Diameter)  Diamet faultBod 
                                 er     yDiamete 
                                        r        

  [Color](Modelica_Mechanics_Mul sphere Modelica Color of sphere
  tiBody_Types.html#Modelica.Mec Color  .Mechani 
  hanics.MultiBody.Types.Color)         cs.Multi 
                                        Body...  

  [Diameter](Modelica_SIunits.ht cylind sphereDi Diameter of cylinder [m]
  ml#Modelica.SIunits.Diameter)  erDiam ameter/T 
                                 eter   ypes.Def 
                                        ault...  

  [Color](Modelica_Mechanics_Mul cylind sphereCo Color of cylinder
  tiBody_Types.html#Modelica.Mec erColo lor      
  hanics.MultiBody.Types.Color)  r               

  [SpecularCoefficient](Modelica specul world.de Reflection of ambient
  _Mechanics_MultiBody_Types.htm arCoef faultSpe light (= 0: light is
  l#Modelica.Mechanics.MultiBody ficien cularCoe completely absorbed)
  .Types.SpecularCoefficient)    t      ffic...  

  **Advanced**                                   

  Boolean                        enforc false    = true, if absolute
                                 eState          variables of body object
                                 s               shall be used as states
                                                 (StateSelect.always)

  Boolean                        useQua true     = true, if quaternions
                                 ternio          shall be used as potential
                                 ns              states otherwise use 3
                                                 angles as potential states

  [RotationSequence](Modelica_Me sequen {1,2,3}  Sequence of rotations to
  chanics_MultiBody_Types.html#M ce\_an          rotate world frame into
  odelica.Mechanics.MultiBody.Ty gleSta          frame\_a around the 3
  pes.RotationSequence)          tes             angles used as potential
                                                 states
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- ----------------
  [Frame\_a](Modelica_Mechanics_MultiBody_Interface frame Coordinate
  s.html#Modelica.Mechanics.MultiBody.Interfaces.Fr \_a   system fixed at
  ame_a)                                                  body
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image48](Modelica.Mechanics.MultiBody.Parts.BodyShapeI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).BodyShape
========================================================================================================================================================================================

**Rigid body with mass, inertia tensor, different shapes for animation,
and two frame connectors (12 potential states)**

Information
-----------

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

The following shapes can be defined via parameter **shapeType**, e.g.,
shapeType="cone":

A BodyShape component has potential states. For details of these states
and of the "Advanced" menu parameters, see model
[MultiBody.Parts.Body](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Body).

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name  Default  Description
  ---------------------------- ----- -------- -----------------------------
  Boolean                      anima true     = true, if animation shall be
                               tion           enabled (show shape between
                                              frame\_a and frame\_b and
                                              optionally a sphere at the
                                              center of mass)

  Boolean                      anima true     = true, if mass shall be
                               teSph          animated as sphere provided
                               ere            animation=true

  [Position](Modelica_SIunits. r[3]           Vector from frame\_a to
  html#Modelica.SIunits.Positi                frame\_b resolved in frame\_a
  on)                                         [m]

  [Position](Modelica_SIunits. r\_CM          Vector from frame\_a to
  html#Modelica.SIunits.Positi [3]            center of mass, resolved in
  on)                                         frame\_a [m]

  [Mass](Modelica_SIunits.html m              Mass of rigid body [kg]
  #Modelica.SIunits.Mass)                     

  Inertia tensor (resolved in                 
  center of mass, parallel to                 
  frame\_a)                                   

  [Inertia](Modelica_SIunits.h I\_11 0.001    (1,1) element of inertia
  tml#Modelica.SIunits.Inertia                tensor [kg.m2]
  )                                           

  [Inertia](Modelica_SIunits.h I\_22 0.001    (2,2) element of inertia
  tml#Modelica.SIunits.Inertia                tensor [kg.m2]
  )                                           

  [Inertia](Modelica_SIunits.h I\_33 0.001    (3,3) element of inertia
  tml#Modelica.SIunits.Inertia                tensor [kg.m2]
  )                                           

  [Inertia](Modelica_SIunits.h I\_21 0        (2,1) element of inertia
  tml#Modelica.SIunits.Inertia                tensor [kg.m2]
  )                                           

  [Inertia](Modelica_SIunits.h I\_31 0        (3,1) element of inertia
  tml#Modelica.SIunits.Inertia                tensor [kg.m2]
  )                                           

  [Inertia](Modelica_SIunits.h I\_32 0        (3,2) element of inertia
  tml#Modelica.SIunits.Inertia                tensor [kg.m2]
  )                                           

  **Initialization**                          

  [Position](Modelica_SIunits. r\_0. {0,0,0}  Position vector from origin
  html#Modelica.SIunits.Positi start          of world frame to origin of
  on)                          [3]            frame\_a [m]

  [Velocity](Modelica_SIunits. v\_0. {0,0,0}  Absolute velocity of
  html#Modelica.SIunits.Veloci start          frame\_a, resolved in world
  ty)                          [3]            frame (= der(r\_0)) [m/s]

  [Acceleration](Modelica_SIun a\_0. {0,0,0}  Absolute acceleration of
  its.html#Modelica.SIunits.Ac start          frame\_a resolved in world
  celeration)                  [3]            frame (= der(v\_0)) [m/s2]

  Boolean                      angle false    = true, if angles\_start are
                               s\_fi          used as initial values, else
                               xed            as guess values

  [Angle](Modelica_SIunits.htm angle {0,0,0}  Initial values of angles to
  l#Modelica.SIunits.Angle)    s\_st          rotate frame\_a around
                               art[3          'sequence\_start' axes into
                               ]              frame\_b [rad]

  [RotationSequence](Modelica_ seque {1,2,3}  Sequence of rotations to
  Mechanics_MultiBody_Types.ht nce\_          rotate frame\_a into frame\_b
  ml#Modelica.Mechanics.MultiB start          at initial time
  ody.Types.RotationSequence)                 

  Boolean                      w\_0\ false    = true, if w\_0\_start are
                               _fixe          used as initial values, else
                               d              as guess values

  [AngularVelocity](Modelica_S w\_0\ {0,0,0}  Initial or guess values of
  Iunits.html#Modelica.SIunits _star          angular velocity of frame\_a
  .AngularVelocity)            t[3]           resolved in world frame
                                              [rad/s]

  Boolean                      z\_0\ false    = true, if z\_0\_start are
                               _fixe          used as initial values, else
                               d              as guess values

  [AngularAcceleration](Modeli z\_0\ {0,0,0}  Initial values of angular
  ca_SIunits.html#Modelica.SIu _star          acceleration z\_0 = der(w\_0)
  nits.AngularAcceleration)    t[3]           [rad/s2]

  **Animation**                               

  if animation = true                         

  [ShapeType](Modelica_Mechani shape "cylinde Type of shape
  cs_MultiBody_Types.html#Mode Type  r"       
  lica.Mechanics.MultiBody.Typ                
  es.ShapeType)                               

  [Position](Modelica_SIunits. r\_sh {0,0,0}  Vector from frame\_a to shape
  html#Modelica.SIunits.Positi ape[3          origin, resolved in frame\_a
  on)                          ]              [m]

  [Axis](Modelica_Mechanics_Mu lengt r -      Vector in length direction of
  ltiBody_Types.html#Modelica. hDire r\_shape shape, resolved in frame\_a
  Mechanics.MultiBody.Types.Ax ction          [1]
  is)                                         

  [Axis](Modelica_Mechanics_Mu width {0,1,0}  Vector in width direction of
  ltiBody_Types.html#Modelica. Direc          shape, resolved in frame\_a
  Mechanics.MultiBody.Types.Ax tion           [1]
  is)                                         

  [Length](Modelica_SIunits.ht lengt Modelica Length of shape [m]
  ml#Modelica.SIunits.Length)  h     .Math.Ve 
                                     ctors.le 
                                     ngth...  

  [Distance](Modelica_SIunits. width length/w Width of shape [m]
  html#Modelica.SIunits.Distan       orld.def 
  ce)                                aultWidt 
                                     hFra...  

  [Distance](Modelica_SIunits. heigh width    Height of shape. [m]
  html#Modelica.SIunits.Distan t              
  ce)                                         

  [ShapeExtra](Modelica_Mechan extra 0.0      Additional parameter
  ics_MultiBody_Types.html#Mod                depending on shapeType (see
  elica.Mechanics.MultiBody.Ty                docu of
  pes.ShapeExtra)                             Visualizers.Advanced.Shape).

  [Color](Modelica_Mechanics_M color Modelica Color of shape
  ultiBody_Types.html#Modelica       .Mechani 
  .Mechanics.MultiBody.Types.C       cs.Multi 
  olor)                              Body...  

  [SpecularCoefficient](Modeli specu world.de Reflection of ambient light
  ca_Mechanics_MultiBody_Types larCo faultSpe (= 0: light is completely
  .html#Modelica.Mechanics.Mul effic cularCoe absorbed)
  tiBody.Types.SpecularCoeffic ient  ffic...  
  ient)                                       

  if animation = true and                     
  animateSphere = true                        

  [Diameter](Modelica_SIunits. spher 2\*width Diameter of sphere [m]
  html#Modelica.SIunits.Diamet eDiam          
  er)                          eter           

  [Color](Modelica_Mechanics_M spher color    Color of sphere of mass
  ultiBody_Types.html#Modelica eColo          
  .Mechanics.MultiBody.Types.C r              
  olor)                                       

  **Advanced**                                

  Boolean                      enfor false    = true, if absolute variables
                               ceSta          of body object shall be used
                               tes            as states
                                              (StateSelect.always)

  Boolean                      useQu true     = true, if quaternions shall
                               atern          be used as potential states
                               ions           otherwise use 3 angles as
                                              potential states

  [RotationSequence](Modelica_ seque {1,2,3}  Sequence of rotations to
  Mechanics_MultiBody_Types.ht nce\_          rotate world frame into
  ml#Modelica.Mechanics.MultiB angle          frame\_a around the 3 angles
  ody.Types.RotationSequence)  State          used as potential states
                               s              
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_a the component with one
  tiBody.Interfaces.Frame_a)                   cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_b the component with one
  tiBody.Interfaces.Frame_b)                   cut-force and cut-torque
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image49](Modelica.Mechanics.MultiBody.Parts.BodyBoxI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).BodyBox
====================================================================================================================================================================================

**Rigid body with box shape. Mass and animation properties are computed
from box data and density (12 potential states)**

Information
-----------

::

**Rigid body** with **box** shape. The mass properties of the body
(mass, center of mass, inertia tensor) are computed from the box data.
Optionally, the box may be hollow. The (outer) box shape is by default
used in the animation. The hollow part is not shown in the animation.
The two connector frames **frame\_a** and **frame\_b** are always
parallel to each other. Example of component animation (note, that the
animation may be switched off via parameter animation = **false**):

A BodyBox component has potential states. For details of these states
and of the "Advanced" menu parameters, see model
[MultiBody.Parts.Body](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Body).

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name   Default  Description
  ------------------------------ ------ -------- --------------------------
  Boolean                        animat true     = true, if animation shall
                                 ion             be enabled (show box
                                                 between frame\_a and
                                                 frame\_b)

  [Position](Modelica_SIunits.ht r[3]            Vector from frame\_a to
  ml#Modelica.SIunits.Position)                  frame\_b resolved in
                                                 frame\_a [m]

  [Position](Modelica_SIunits.ht r\_sha {0,0,0}  Vector from frame\_a to
  ml#Modelica.SIunits.Position)  pe[3]           box origin, resolved in
                                                 frame\_a [m]

  [Axis](Modelica_Mechanics_Mult length r -      Vector in length direction
  iBody_Types.html#Modelica.Mech Direct r\_shape of box, resolved in
  anics.MultiBody.Types.Axis)    ion             frame\_a [1]

  [Axis](Modelica_Mechanics_Mult widthD {0,1,0}  Vector in width direction
  iBody_Types.html#Modelica.Mech irecti          of box, resolved in
  anics.MultiBody.Types.Axis)    on              frame\_a [1]

  [Length](Modelica_SIunits.html length Modelica Length of box [m]
  #Modelica.SIunits.Length)             .Math.Ve 
                                        ctors.le 
                                        ngth...  

  [Distance](Modelica_SIunits.ht width  length/w Width of box [m]
  ml#Modelica.SIunits.Distance)         orld.def 
                                        aultWidt 
                                        hFra...  

  [Distance](Modelica_SIunits.ht height width    Height of box [m]
  ml#Modelica.SIunits.Distance)                  

  [Distance](Modelica_SIunits.ht innerW 0        Width of inner box surface
  ml#Modelica.SIunits.Distance)  idth            (0 <= innerWidth <= width)
                                                 [m]

  [Distance](Modelica_SIunits.ht innerH innerWid Height of inner box
  ml#Modelica.SIunits.Distance)  eight  th       surface (0 <= innerHeight
                                                 <= height) [m]

  [Density](Modelica_SIunits.htm densit 7700     Density of cylinder (e.g.,
  l#Modelica.SIunits.Density)    y               steel: 7700 .. 7900, wood
                                                 : 400 .. 800) [kg/m3]

  [Color](Modelica_Mechanics_Mul color  Modelica Color of box
  tiBody_Types.html#Modelica.Mec        .Mechani 
  hanics.MultiBody.Types.Color)         cs.Multi 
                                        Body...  

  [SpecularCoefficient](Modelica specul world.de Reflection of ambient
  _Mechanics_MultiBody_Types.htm arCoef faultSpe light (= 0: light is
  l#Modelica.Mechanics.MultiBody ficien cularCoe completely absorbed)
  .Types.SpecularCoefficient)    t      ffic...  

  **Initialization**                             

  [Position](Modelica_SIunits.ht r\_0.s {0,0,0}  Position vector from
  ml#Modelica.SIunits.Position)  tart[3          origin of world frame to
                                 ]               origin of frame\_a [m]

  [Velocity](Modelica_SIunits.ht v\_0.s {0,0,0}  Absolute velocity of
  ml#Modelica.SIunits.Velocity)  tart[3          frame\_a, resolved in
                                 ]               world frame (= der(r\_0))
                                                 [m/s]

  [Acceleration](Modelica_SIunit a\_0.s {0,0,0}  Absolute acceleration of
  s.html#Modelica.SIunits.Accele tart[3          frame\_a resolved in world
  ration)                        ]               frame (= der(v\_0)) [m/s2]

  Boolean                        angles false    = true, if angles\_start
                                 \_fixe          are used as initial
                                 d               values, else as guess
                                                 values

  [Angle](Modelica_SIunits.html# angles {0,0,0}  Initial values of angles
  Modelica.SIunits.Angle)        \_star          to rotate frame\_a around
                                 t[3]            'sequence\_start' axes
                                                 into frame\_b [rad]

  [RotationSequence](Modelica_Me sequen {1,2,3}  Sequence of rotations to
  chanics_MultiBody_Types.html#M ce\_st          rotate frame\_a into
  odelica.Mechanics.MultiBody.Ty art             frame\_b at initial time
  pes.RotationSequence)                          

  Boolean                        w\_0\_ false    = true, if w\_0\_start are
                                 fixed           used as initial values,
                                                 else as guess values

  [AngularVelocity](Modelica_SIu w\_0\_ {0,0,0}  Initial or guess values of
  nits.html#Modelica.SIunits.Ang start[          angular velocity of
  ularVelocity)                  3]              frame\_a resolved in world
                                                 frame [rad/s]

  Boolean                        z\_0\_ false    = true, if z\_0\_start are
                                 fixed           used as initial values,
                                                 else as guess values

  [AngularAcceleration](Modelica z\_0\_ {0,0,0}  Initial values of angular
  _SIunits.html#Modelica.SIunits start[          acceleration z\_0 =
  .AngularAcceleration)          3]              der(w\_0) [rad/s2]

  **Advanced**                                   

  Boolean                        enforc false    = true, if absolute
                                 eState          variables of body object
                                 s               shall be used as states
                                                 (StateSelect.always)

  Boolean                        useQua true     = true, if quaternions
                                 ternio          shall be used as potential
                                 ns              states otherwise use 3
                                                 angles as potential states

  [RotationSequence](Modelica_Me sequen {1,2,3}  Sequence of rotations to
  chanics_MultiBody_Types.html#M ce\_an          rotate world frame into
  odelica.Mechanics.MultiBody.Ty gleSta          frame\_a around the 3
  pes.RotationSequence)          tes             angles used as potential
                                                 states
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_a the component with one
  tiBody.Interfaces.Frame_a)                   cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_b the component with one
  tiBody.Interfaces.Frame_b)                   cut-force and cut-torque
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image50](Modelica.Mechanics.MultiBody.Parts.BodyCylinderI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).BodyCylinder
==============================================================================================================================================================================================

**Rigid body with cylinder shape. Mass and animation properties are
computed from cylinder data and density (12 potential states)**

Information
-----------

::

**Rigid body** with **cylinder** shape. The mass properties of the body
(mass, center of mass, inertia tensor) are computed from the cylinder
data. Optionally, the cylinder may be hollow. The cylinder shape is by
default used in the animation. The two connector frames **frame\_a** and
**frame\_b** are always parallel to each other. Example of component
animation (note, that the animation may be switched off via parameter
animation = **false**):

A BodyCylinder component has potential states. For details of these
states and of the "Advanced" menu parameters, see model
[MultiBody.Parts.Body](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Body).

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name   Default  Description
  ------------------------------ ------ -------- --------------------------
  Boolean                        animat true     = true, if animation shall
                                 ion             be enabled (show cylinder
                                                 between frame\_a and
                                                 frame\_b)

  [Position](Modelica_SIunits.ht r[3]            Vector from frame\_a to
  ml#Modelica.SIunits.Position)                  frame\_b, resolved in
                                                 frame\_a [m]

  [Position](Modelica_SIunits.ht r\_sha {0,0,0}  Vector from frame\_a to
  ml#Modelica.SIunits.Position)  pe[3]           cylinder origin, resolved
                                                 in frame\_a [m]

  [Axis](Modelica_Mechanics_Mult length r -      Vector in length direction
  iBody_Types.html#Modelica.Mech Direct r\_shape of cylinder, resolved in
  anics.MultiBody.Types.Axis)    ion             frame\_a [1]

  [Length](Modelica_SIunits.html length Modelica Length of cylinder [m]
  #Modelica.SIunits.Length)             .Math.Ve 
                                        ctors.le 
                                        ngth...  

  [Distance](Modelica_SIunits.ht diamet length/w Diameter of cylinder [m]
  ml#Modelica.SIunits.Distance)  er     orld.def 
                                        aultWidt 
                                        hFra...  

  [Distance](Modelica_SIunits.ht innerD 0        Inner diameter of cylinder
  ml#Modelica.SIunits.Distance)  iamete          (0 <= innerDiameter <=
                                 r               Diameter) [m]

  [Density](Modelica_SIunits.htm densit 7700     Density of cylinder (e.g.,
  l#Modelica.SIunits.Density)    y               steel: 7700 .. 7900, wood
                                                 : 400 .. 800) [kg/m3]

  [Color](Modelica_Mechanics_Mul color  Modelica Color of cylinder
  tiBody_Types.html#Modelica.Mec        .Mechani 
  hanics.MultiBody.Types.Color)         cs.Multi 
                                        Body...  

  [SpecularCoefficient](Modelica specul world.de Reflection of ambient
  _Mechanics_MultiBody_Types.htm arCoef faultSpe light (= 0: light is
  l#Modelica.Mechanics.MultiBody ficien cularCoe completely absorbed)
  .Types.SpecularCoefficient)    t      ffic...  

  **Initialization**                             

  [Position](Modelica_SIunits.ht r\_0.s {0,0,0}  Position vector from
  ml#Modelica.SIunits.Position)  tart[3          origin of world frame to
                                 ]               origin of frame\_a [m]

  [Velocity](Modelica_SIunits.ht v\_0.s {0,0,0}  Absolute velocity of
  ml#Modelica.SIunits.Velocity)  tart[3          frame\_a, resolved in
                                 ]               world frame (= der(r\_0))
                                                 [m/s]

  [Acceleration](Modelica_SIunit a\_0.s {0,0,0}  Absolute acceleration of
  s.html#Modelica.SIunits.Accele tart[3          frame\_a resolved in world
  ration)                        ]               frame (= der(v\_0)) [m/s2]

  Boolean                        angles false    = true, if angles\_start
                                 \_fixe          are used as initial
                                 d               values, else as guess
                                                 values

  [Angle](Modelica_SIunits.html# angles {0,0,0}  Initial values of angles
  Modelica.SIunits.Angle)        \_star          to rotate frame\_a around
                                 t[3]            'sequence\_start' axes
                                                 into frame\_b [rad]

  [RotationSequence](Modelica_Me sequen {1,2,3}  Sequence of rotations to
  chanics_MultiBody_Types.html#M ce\_st          rotate frame\_a into
  odelica.Mechanics.MultiBody.Ty art             frame\_b at initial time
  pes.RotationSequence)                          

  Boolean                        w\_0\_ false    = true, if w\_0\_start are
                                 fixed           used as initial values,
                                                 else as guess values

  [AngularVelocity](Modelica_SIu w\_0\_ {0,0,0}  Initial or guess values of
  nits.html#Modelica.SIunits.Ang start[          angular velocity of
  ularVelocity)                  3]              frame\_a resolved in world
                                                 frame [rad/s]

  Boolean                        z\_0\_ false    = true, if z\_0\_start are
                                 fixed           used as initial values,
                                                 else as guess values

  [AngularAcceleration](Modelica z\_0\_ {0,0,0}  Initial values of angular
  _SIunits.html#Modelica.SIunits start[          acceleration z\_0 =
  .AngularAcceleration)          3]              der(w\_0) [rad/s2]

  **Advanced**                                   

  Boolean                        enforc false    = true, if absolute
                                 eState          variables of body object
                                 s               shall be used as states
                                                 (StateSelect.always)

  Boolean                        useQua true     = true, if quaternions
                                 ternio          shall be used as potential
                                 ns              states otherwise use 3
                                                 angles as potential states

  [RotationSequence](Modelica_Me sequen {1,2,3}  Sequence of rotations to
  chanics_MultiBody_Types.html#M ce\_an          rotate world frame into
  odelica.Mechanics.MultiBody.Ty gleSta          frame\_a around the 3
  pes.RotationSequence)          tes             angles used as potential
                                                 states
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_a the component with one
  tiBody.Interfaces.Frame_a)                   cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_b the component with one
  tiBody.Interfaces.Frame_b)                   cut-force and cut-torque
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image51](Modelica.Mechanics.MultiBody.Parts.PointMassI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).PointMass
========================================================================================================================================================================================

**Rigid body where body rotation and inertia tensor is neglected (6
potential states)**

Information
-----------

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
----------

  --------------------------------------------------------------------------
  Type                            Name   Default   Description
  ------------------------------- ------ --------- -------------------------
  Boolean                         animat true      = true, if animation
                                  ion              shall be enabled (show
                                                   sphere)

  [Mass](Modelica_SIunits.html#Mo m                Mass of mass point [kg]
  delica.SIunits.Mass)                             

  Initialization                                   

  [Position](Modelica_SIunits.htm r\_0.s {0,0,0}   Position vector from
  l#Modelica.SIunits.Position)    tart[3           origin of world frame to
                                  ]                origin of frame\_a,
                                                   resolved in world frame
                                                   [m]

  [Velocity](Modelica_SIunits.htm v\_0.s {0,0,0}   Absolute velocity of
  l#Modelica.SIunits.Velocity)    tart[3           frame\_a, resolved in
                                  ]                world frame (= der(r\_0))
                                                   [m/s]

  [Acceleration](Modelica_SIunits a\_0.s {0,0,0}   Absolute acceleration of
  .html#Modelica.SIunits.Accelera tart[3           frame\_a resolved in
  tion)                           ]                world frame (= der(v\_0))
                                                   [m/s2]

  **Animation**                                    

  if animation = true                              

  [Diameter](Modelica_SIunits.htm sphere world.def Diameter of sphere [m]
  l#Modelica.SIunits.Diameter)    Diamet aultBodyD 
                                  er     iameter   

  [Color](Modelica_Mechanics_Mult sphere Modelica. Color of sphere
  iBody_Types.html#Modelica.Mecha Color  Mechanics 
  nics.MultiBody.Types.Color)            .MultiBod 
                                         y...      

  [SpecularCoefficient](Modelica_ specul world.def Reflection of ambient
  Mechanics_MultiBody_Types.html# arCoef aultSpecu light (= 0: light is
  Modelica.Mechanics.MultiBody.Ty ficien larCoeffi completely absorbed)
  pes.SpecularCoefficient)        t      c...      

  **Advanced**                                     

  StateSelect                     stateS StateSele Priority to use
                                  elect  ct.avoid  frame\_a.r\_0, v\_0 (=
                                                   der(frame\_a.r\_0)) as
                                                   states
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name  Description
  --------------------------------------------- ----- ---------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_Inter frame Coordinate system
  faces.html#Modelica.Mechanics.MultiBody.Inter \_a   fixed at center of
  faces.Frame_a)                                      mass point
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image52](Modelica.Mechanics.MultiBody.Parts.Mounting1DI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).Mounting1D
==========================================================================================================================================================================================

**Propagate 1-dim. support torque to 3-dim. system (provided
world.driveTrainMechanics3D=true)**

Information
-----------

::

This component is used to acquire support torques from a
1-dim.-rotational mechanical system (e.g., components from
Modelica.Mechanics.Rotational) and to propagate them to a carrier body.

The 1-dim. support torque at `flange_b` is transformed into 3-dim. space
under consideration of the rotation axis, parameter `n`, which has to be
given in the local coordinate system of `frame_a`.

All components of a 1-dim.-rotational mechanical system that are
connected to **a** common **Mounting1D** element need to have the same
axis of rotation along parameter vector `n`. This means that, e.g.,
bevel gears where the axis of rotation of `flange_a` and `flange_b` are
different cannot be described properly by connecting to the
**Mounting1D** component. In this case, a combination of several
**Mounting1D** components or the component **BevelGear1D** should be
used.

**Reference**
  ~ Schweiger, Christian ; Otter, Martin: \`Modelling 3D Mechanical
    Effects

of 1-dim. Powertrains
<[http://www.modelica.org/Conference2003/papers/h06\_Schweiger\_powertrains\_v5.pdf](http://www.modelica.org/Conference2003/papers/h06_Schweiger_powertrains_v5.pdf)\>\`\_.
In: *Proceedings of the 3rd International Modelica Conference*.
Linköping : The Modelica Association and Linköping University, November
3-4, 2003, pp. 149-158

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                 Nam Defa Description
                                       e   ult  
  ------------------------------------ --- ---- ---------------------------
  [Angle](Modelica_SIunits.html#Modeli phi 0    Fixed offset angle of
  ca.SIunits.Angle)                    0        housing [rad]

  [Axis](Modelica_Mechanics_MultiBody_ n   {1,0 Axis of rotation = axis of
  Types.html#Modelica.Mechanics.MultiB     ,0}  support torque (resolved in
  ody.Types.Axis)                               frame\_a) [1]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                 Name Description
  ------------------------------------ ---- ------------------------------
  [Flange\_b](Modelica_Mechanics_Rotat flan (right) flange fixed in
  ional_Interfaces.html#Modelica.Mecha ge\_ housing
  nics.Rotational.Interfaces.Flange_b) b    

  [Frame\_a](Modelica_Mechanics_MultiB fram Frame in which housing is
  ody_Interfaces.html#Modelica.Mechani e\_a fixed (connector is removed,
  cs.MultiBody.Interfaces.Frame_a)          if
                                            world.driveTrainMechanics3D=fa
                                            lse)
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image53](Modelica.Mechanics.MultiBody.Parts.Rotor1DI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).Rotor1D
====================================================================================================================================================================================

**1D inertia attachable on 3-dim. bodies (3D dynamic effects are taken
into account if world.driveTrainMechanics3D=true)**

Information
-----------

::

This component is used to model the gyroscopic torques exerted by a
1-dim. inertia (so called *rotor*) on its 3-dim. carrier body.
Gyroscopic torques appear, if the vector of the carrier body's angular
velocity is not parallel to the vector of the rotor's axis. The axis of
rotation of the rotor is defined by the parameter `n`, which has to be
given in the local coordinate system of `frame_a`. The default animation
of this component is shown in the figure below.

This component is a replacement for
[Modelica.Mechanics.Rotational.Components.Inertia](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components.Inertia)
for the case, that a 1-dim.-rotational mechanical system should be
attached with a 3-dim. carrier body.

The Boolean parameter `exact` was introduced due to performance reasons.
If `exact` is set to **false**, the influence of the carrier body motion
on the angular velocity of the rotor is neglected. This influence is
usually negligible if the 1-dim.-rotational mechanical system
accelerates much faster as the base body (this is, e.g., the case in
vehicle powertrains). The essential advantage is that an algebraic loop
is removed since then there is only an action on acceleration level from
the powertrain to the base body but not vice versa.

**Reference**
  ~ Schweiger, Christian ; Otter, Martin: \`Modelling 3D Mechanical
    Effects

of 1-dim. Powertrains
<[http://www.modelica.org/Conference2003/papers/h06\_Schweiger\_powertrains\_v5.pdf](http://www.modelica.org/Conference2003/papers/h06_Schweiger_powertrains_v5.pdf)\>\`\_.
In: *Proceedings of the 3rd International Modelica Conference*.
Linköping : The Modelica Association and Linköping University, November
3-4, 2003, pp. 149-158

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name  Default  Description
  ---------------------------- ----- -------- -----------------------------
  Boolean                      anima true     = true, if animation shall be
                               tion           enabled (show rotor as
                                              cylinder)

  [Inertia](Modelica_SIunits.h J              Moment of inertia of rotor
  tml#Modelica.SIunits.Inertia                around its axis of rotation
  )                                           [kg.m2]

  [Axis](Modelica_Mechanics_Mu n     {1,0,0}  Axis of rotation resolved in
  ltiBody_Types.html#Modelica.                frame\_a [1]
  Mechanics.MultiBody.Types.Ax                
  is)                                         

  **Animation**                               

  if animation = true                         

  [Position](Modelica_SIunits. r\_ce zeros(3) Position vector from origin
  html#Modelica.SIunits.Positi nter[          of frame\_a to center of
  on)                          3]             cylinder [m]

  [Distance](Modelica_SIunits. cylin 2\*world Length of cylinder
  html#Modelica.SIunits.Distan derLe .default representing the rotor [m]
  ce)                          ngth  JointLen 
                                     gth      

  [Distance](Modelica_SIunits. cylin 2\*world Diameter of cylinder
  html#Modelica.SIunits.Distan derDi .default representing the rotor [m]
  ce)                          amete JointWid 
                               r     th       

  [Color](Modelica_Mechanics_M cylin Modelica Color of cylinder
  ultiBody_Types.html#Modelica derCo .Mechani representing the rotor
  .Mechanics.MultiBody.Types.C lor   cs.Multi 
  olor)                              Body...  

  [SpecularCoefficient](Modeli specu world.de Reflection of ambient light
  ca_Mechanics_MultiBody_Types larCo faultSpe (= 0: light is completely
  .html#Modelica.Mechanics.Mul effic cularCoe absorbed)
  tiBody.Types.SpecularCoeffic ient  ffic...  
  ient)                                       

  **Advanced**                                

  StateSelect                  state StateSel Priority to use rotor angle
                               Selec ect.defa (phi) and rotor speed (w) as
                               t     ult      states

  Boolean                      exact true     = true, if exact
                                              calculations; false if
                                              influence of bearing on rotor
                                              acceleration is neglected to
                                              avoid an algebraic loop
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                Name Description
  ----------------------------------- ---- -------------------------------
  [Flange\_a](Modelica_Mechanics_Rota flan (left) driving flange (flange
  tional_Interfaces.html#Modelica.Mec ge\_ axis directed INTO cut plane)
  hanics.Rotational.Interfaces.Flange a    
  _a)                                      

  [Flange\_b](Modelica_Mechanics_Rota flan (right) driven flange (flange
  tional_Interfaces.html#Modelica.Mec ge\_ axis directed OUT OF cut plane)
  hanics.Rotational.Interfaces.Flange b    
  _b)                                      

  [Frame\_a](Modelica_Mechanics_Multi fram Frame in which rotor housing is
  Body_Interfaces.html#Modelica.Mecha e\_a fixed (connector is removed, if
  nics.MultiBody.Interfaces.Frame_a)       world.driveTrainMechanics3D=fal
                                           se)
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image54](Modelica.Mechanics.MultiBody.Parts.BevelGear1DI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).BevelGear1D
============================================================================================================================================================================================

**1D gearbox with arbitrary shaft directions and 3-dim. bearing frame
(3D dynamic effects are taken into account provided
world.driveTrainMechanics3D=true)**

Information
-----------

::

This component is used to model a 1-dim. gearbox with non-parallel axes
(defined by parameters `n_a`, `n_b`). A 3-dim. `bearing` frame is
necessary to reflect the correct support torque, as the axes of rotation
of `flange_a` and `flange_b` and the direction of the support torque
vector are different in general.

Note: The name BevelGear1D is kept only for simplicity. Regardless, this
component could be used to model any kind of gearbox with non-parallel
axes.

**Reference**
  ~ Schweiger, Christian ; Otter, Martin: \`Modelling 3D Mechanical
    Effects

of 1-dim. Powertrains
<[http://www.modelica.org/Conference2003/papers/h06\_Schweiger\_powertrains\_v5.pdf](http://www.modelica.org/Conference2003/papers/h06_Schweiger_powertrains_v5.pdf)\>\`\_.
In: *Proceedings of the 3rd International Modelica Conference*.
Linköping : The Modelica Association and Linköping University, November
3-4, 2003, pp. 149-158

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges)
(Partial model for a component with two rotational 1-dim. shaft
flanges).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name Defa Description
                                              ult  
  -------------------------------------- ---- ---- ------------------------
  Real                                   rati      Gear speed ratio
                                         o         

  [Axis](Modelica_Mechanics_MultiBody_Ty n\_a {1,0 Axis of rotation of
  pes.html#Modelica.Mechanics.MultiBody.      ,0}  flange\_a, resolved in
  Types.Axis)                                      frame\_a [1]

  [Axis](Modelica_Mechanics_MultiBody_Ty n\_b {1,0 Axis of rotation of
  pes.html#Modelica.Mechanics.MultiBody.      ,0}  flange\_b, resolved in
  Types.Axis)                                      frame\_a [1]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                  Name   Description
  ----------------------------------------------------- ------ ------------
  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces. flange Flange of
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_ \_a    left shaft
  a)                                                           

  [Flange\_b](Modelica_Mechanics_Rotational_Interfaces. flange Flange of
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_ \_b    right shaft
  b)                                                           

  [Frame\_a](Modelica_Mechanics_MultiBody_Interfaces.ht frame\ Bearing
  ml#Modelica.Mechanics.MultiBody.Interfaces.Frame_a)   _a     frame
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image55](Modelica.Mechanics.MultiBody.Parts.RollingWheelI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).RollingWheel
==============================================================================================================================================================================================

**Ideal rolling wheel on flat surface z=0 (5 positional, 3 velocity
degrees of freedom)**

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name     Default Description
  ------------------------------- -------- ------- ------------------------
  Boolean                         animatio true    = true, if animation of
                                  n                wheel shall be enabled

  [Radius](Modelica_SIunits.html# wheelRad         Radius of wheel [m]
  Modelica.SIunits.Radius)        ius              

  [Mass](Modelica_SIunits.html#Mo wheelMas         Mass of wheel [kg]
  delica.SIunits.Mass)            s                

  [Inertia](Modelica_SIunits.html wheel\_I         Inertia along the wheel
  #Modelica.SIunits.Inertia)      \_axis           axis [kg.m2]

  [Inertia](Modelica_SIunits.html wheel\_I         Inertia perpendicular to
  #Modelica.SIunits.Inertia)      \_long           the wheel axis [kg.m2]

  StateSelect                     stateSel StateSe Priority to use
                                  ect      lect.al generalized coordinates
                                           ways    as states

  Initialization                                   

  [Angle](Modelica_SIunits.html#M angles.s **{0,0, Angles to rotate
  odelica.SIunits.Angle)          tart[3]  0}**    world-frame in to
                                                   frame\_a around z-, y-,
                                                   x-axis [rad]

  [AngularVelocity](Modelica_SIun der\_ang **{0,0, Derivative of angles
  its.html#Modelica.SIunits.Angul les.star 0}**    [rad/s]
  arVelocity)                     t[3]             

  **Animation**                                    

  if animation = true                              

  [Distance](Modelica_SIunits.htm width    0.035   Width of wheel [m]
  l#Modelica.SIunits.Distance)                     

  Real                            hollowFr 0.8     1.0: Completely hollow,
                                  action           0.0: rigid cylinder

  [Color](Modelica_Mechanics_Mult wheelCol {30,30, Color of wheel
  iBody_Types.html#Modelica.Mecha or       30}     
  nics.MultiBody.Types.Color)                      
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBod fram Frame fixed in wheel center
  y_Interfaces.html#Modelica.Mechanics.M e\_a point. y-axis: along wheel
  ultiBody.Interfaces.Frame_a)                axis, z-Axis: upwards,
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image56](Modelica.Mechanics.MultiBody.Parts.RollingWheelSetI.png) [Modelica.Mechanics.MultiBody.Parts](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts).RollingWheelSet
====================================================================================================================================================================================================

**Ideal rolling wheel set consisting of two ideal rolling wheels
connected together by an axis**

Information
-----------

::

Two wheels are connected by an axis and can rotate around this axis. The
wheels are rolling on the x-y plane. The coordinate system attached to
the center of the wheel axis (frameMiddle) is constrained so that it is
always parallel to the x-y plane. If all generalized coordinates are
zero, frameMiddle is parallel to the world frame.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name   Default  Description
  ----------------------------------- ------ -------- ---------------------
  Boolean                             animat true     = true, if animation
                                      ion             of wheel set shall be
                                                      enabled

  [Radius](Modelica_SIunits.html#Mode wheelR          Radius of one wheel
  lica.SIunits.Radius)                adius           [m]

  [Mass](Modelica_SIunits.html#Modeli wheelM          Mass of one wheel
  ca.SIunits.Mass)                    ass             [kg]

  [Inertia](Modelica_SIunits.html#Mod wheel\          Inertia along one
  elica.SIunits.Inertia)              _I\_ax          wheel axis [kg.m2]
                                      is              

  [Inertia](Modelica_SIunits.html#Mod wheel\          Inertia perpendicular
  elica.SIunits.Inertia)              _I\_lo          to one wheel axis
                                      ng              [kg.m2]

  [Distance](Modelica_SIunits.html#Mo wheelD          Distance between the
  delica.SIunits.Distance)            istanc          two wheels [m]
                                      e               

  StateSelect                         stateS StateSel Priority to use the
                                      elect  ect.alwa generalized
                                             ys       coordinates as states

  **Animation**                                       

  if animation = true                                 

  [Distance](Modelica_SIunits.html#Mo wheelW 0.01     Width of one wheel
  delica.SIunits.Distance)            idth            [m]

  Real                                hollow 0.8      1.0: Completely
                                      Fracti          hollow, 0.0: rigid
                                      on              cylinder

  [Color](Modelica_Mechanics_MultiBod wheelC {30,30,3 Color of wheels
  y_Types.html#Modelica.Mechanics.Mul olor   0}       
  tiBody.Types.Color)                                 
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                Name Description
  ----------------------------------- ---- -------------------------------
  [Frame\_a](Modelica_Mechanics_Multi fram Frame fixed in middle of axis
  Body_Interfaces.html#Modelica.Mecha eMid connecting both wheels (y-axis:
  nics.MultiBody.Interfaces.Frame_a)  dle  along wheel axis, z-Axis:
                                           upwards)

  [Frame\_a](Modelica_Mechanics_Multi fram Frame fixed in center point of
  Body_Interfaces.html#Modelica.Mecha e1   left wheel (y-axis: along wheel
  nics.MultiBody.Interfaces.Frame_a)       axis, z-Axis: upwards)

  [Frame\_b](Modelica_Mechanics_Multi fram Frame fixed in center point of
  Body_Interfaces.html#Modelica.Mecha e2   right wheel (y-axis: along
  nics.MultiBody.Interfaces.Frame_b)       wheel axis, z-Axis: upwards)

  [Flange\_a](Modelica_Mechanics_Rota axis 1-dim. rotational flange that
  tional_Interfaces.html#Modelica.Mec 1    drives the left wheel
  hanics.Rotational.Interfaces.Flange      
  _a)                                      

  [Flange\_a](Modelica_Mechanics_Rota axis 1-dim. rotational flange that
  tional_Interfaces.html#Modelica.Mec 2    drives the right wheel
  hanics.Rotational.Interfaces.Flange      
  _a)                                      

  [Flange\_b](Modelica_Mechanics_Rota supp Support of 1D axes
  tional_Interfaces.html#Modelica.Mec ort  
  hanics.Rotational.Interfaces.Flange      
  _b)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![Modelica.Mechanics.MultiBody.Parts.Mounting1D.Housing](Modelica.Mechanics.MultiBody.Parts.Mounting1D.HousingI.png) [Modelica.Mechanics.MultiBody.Parts.Mounting1D](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Mounting1D).Housing
===================================================================================================================================================================================================================================================================

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name   Descript
                                                                   ion
  --------------------------------------------------------- ------ --------
  [Frame\_a](Modelica_Mechanics_MultiBody_Interfaces.html#M frame\ 
  odelica.Mechanics.MultiBody.Interfaces.Frame_a)           _a     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    encapsulated model Housing
      import Modelica;
      input Modelica.SIunits.Torque t[3];
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a;
    equation 
      frame_a.f=zeros(3);
      frame_a.t=t;
    end Housing;

* * * * *

![Modelica.Mechanics.MultiBody.Parts.Rotor1D.RotorWith3DEffects](Modelica.Mechanics.MultiBody.Parts.Rotor1D.RotorWith3DEffectsI.png) [Modelica.Mechanics.MultiBody.Parts.Rotor1D](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.Rotor1D).RotorWith3DEffects
========================================================================================================================================================================================================================================================================================

**1D inertia attachable on 3-dim. bodies (3D dynamic effects are taken
into account)**

Information
-----------

::

This component is used to model the gyroscopic torques exerted by a
1-dim. inertia (so called *rotor*) on its 3-dim. carrier body.
Gyroscopic torques appear, if the vector of the carrier body's angular
velocity is not parallel to the vector of the rotor's axis. The axis of
rotation of the rotor is defined by the parameter `n`, which has to be
given in the local coordinate system of `frame_a`. The default animation
of this component is shown in the figure below.

This component is a replacement for
[Modelica.Mechanics.Rotational.Components.Inertia](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components.Inertia)
for the case, that a 1-dim.-rotational mechanical system should be
attached with a 3-dim. carrier body.

The Boolean parameter `exact` was introduced due to performance reasons.
If `exact` is set to **false**, the influence of the carrier body motion
on the angular velocity of the rotor is neglected. This influence is
usually negligible if the 1-dim.-rotational mechanical system
accelerates much faster as the base body (this is, e.g., the case in
vehicle powertrains). The essential advantage is that an algebraic loop
is removed since then there is only an action on acceleration level from
the powertrain to the base body but not vice versa.

**Reference**
  ~ Schweiger, Christian ; Otter, Martin: \`Modelling 3D Mechanical
    Effects

of 1-dim. Powertrains
<[http://www.modelica.org/Conference2003/papers/h06\_Schweiger\_powertrains\_v5.pdf](http://www.modelica.org/Conference2003/papers/h06_Schweiger_powertrains_v5.pdf)\>\`\_.
In: *Proceedings of the 3rd International Modelica Conference*.
Linköping : The Modelica Association and Linköping University, November
3-4, 2003, pp. 149-158

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name  Default  Description
  ---------------------------- ----- -------- -----------------------------
  Boolean                      anima true     = true, if animation shall be
                               tion           enabled (show rotor as
                                              cylinder)

  [Inertia](Modelica_SIunits.h J     1        Moment of inertia of rotor
  tml#Modelica.SIunits.Inertia                around its axis of rotation
  )                                           [kg.m2]

  [Axis](Modelica_Mechanics_Mu n     {1,0,0}  Axis of rotation resolved in
  ltiBody_Types.html#Modelica.                frame\_a [1]
  Mechanics.MultiBody.Types.Ax                
  is)                                         

  Initialization                              

  [Angle](Modelica_SIunits.htm phi.s 0        Rotation angle of rotor with
  l#Modelica.SIunits.Angle)    tart           respect to frame\_a (=
                                              flange\_a.phi =
                                              flange\_b.phi) [rad]

  [AngularVelocity](Modelica_S w.sta 0        Angular velocity of rotor
  Iunits.html#Modelica.SIunits rt             with respect to frame\_a
  .AngularVelocity)                           [rad/s]

  [AngularAcceleration](Modeli a.sta 0        Angular acceleration of rotor
  ca_SIunits.html#Modelica.SIu rt             with respect to frame\_a
  nits.AngularAcceleration)                   [rad/s2]

  **Animation**                               

  if animation = true                         

  [Position](Modelica_SIunits. r\_ce zeros(3) Position vector from origin
  html#Modelica.SIunits.Positi nter[          of frame\_a to center of
  on)                          3]             cylinder [m]

  [Distance](Modelica_SIunits. cylin 2\*world Length of cylinder
  html#Modelica.SIunits.Distan derLe .default representing the rotor [m]
  ce)                          ngth  JointLen 
                                     gth      

  [Distance](Modelica_SIunits. cylin 2\*world Diameter of cylinder
  html#Modelica.SIunits.Distan derDi .default representing the rotor [m]
  ce)                          amete JointWid 
                               r     th       

  [Color](Modelica_Mechanics_M cylin Modelica Color of cylinder
  ultiBody_Types.html#Modelica derCo .Mechani representing the rotor
  .Mechanics.MultiBody.Types.C lor   cs.Multi 
  olor)                              Body...  

  [SpecularCoefficient](Modeli specu world.de Reflection of ambient light
  ca_Mechanics_MultiBody_Types larCo faultSpe (= 0: light is completely
  .html#Modelica.Mechanics.Mul effic cularCoe absorbed)
  tiBody.Types.SpecularCoeffic ient  ffic...  
  ient)                                       

  **Advanced**                                

  StateSelect                  state StateSel Priority to use rotor angle
                               Selec ect.defa (phi) and rotor speed (w) as
                               t     ult      states

  Boolean                      exact true     = true, if exact
                                              calculations; false if
                                              influence of bearing on rotor
                                              acceleration is neglected to
                                              avoid an algebraic loop
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name  Description
  ------------------------------------------ ----- ------------------------
  [Flange\_a](Modelica_Mechanics_Rotational_ flang (left) driving flange
  Interfaces.html#Modelica.Mechanics.Rotatio e\_a  (flange axis directed
  nal.Interfaces.Flange_a)                         INTO cut plane)

  [Flange\_b](Modelica_Mechanics_Rotational_ flang (right) driven flange
  Interfaces.html#Modelica.Mechanics.Rotatio e\_b  (flange axis directed
  nal.Interfaces.Flange_b)                         OUT OF cut plane)

  [Frame\_a](Modelica_Mechanics_MultiBody_In frame Frame in which rotor
  terfaces.html#Modelica.Mechanics.MultiBody \_a   housing is fixed
  .Interfaces.Frame_a)                             
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![Modelica.Mechanics.MultiBody.Parts.BevelGear1D.Housing](Modelica.Mechanics.MultiBody.Parts.BevelGear1D.HousingI.png) [Modelica.Mechanics.MultiBody.Parts.BevelGear1D](Modelica_Mechanics_MultiBody_Parts.html#Modelica.Mechanics.MultiBody.Parts.BevelGear1D).Housing
=======================================================================================================================================================================================================================================================================

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name   Descript
                                                                   ion
  --------------------------------------------------------- ------ --------
  [Frame\_a](Modelica_Mechanics_MultiBody_Interfaces.html#M frame\ 
  odelica.Mechanics.MultiBody.Interfaces.Frame_a)           _a     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    encapsulated model Housing
      import Modelica;
      input Modelica.SIunits.Torque t[3];
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a;
    equation 
      frame_a.f=zeros(3);
      frame_a.t=t;
    end Housing;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:35 2010.
