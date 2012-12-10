% Modelica.Mechanics.MultiBody.Visualizers.Advanced
% 
% 

[Modelica.Mechanics.MultiBody.Visualizers](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers).Advanced
===========================================================================================================================================

**Visualizers that require basic knowledge about Modelica in order to
use them**

Information
-----------

::

Package **Visualizers.Advanced** contains components to visualize
3-dimensional shapes with dynamical sizes. None of the components has a
frame connector. The position and orientation is set via modifiers.
Basic knowledge of Modelica is needed in order to utilize the components
of this package. These components have also to be used for models, where
the forces and torques in the frame connector are set via equations (in
this case, the models of the Visualizers package cannot be used, since
they all have frame connectors).

### Content

  -------------------------------------------- ----------------------------
  [Arrow](Modelica_Mechanics_MultiBody_Visuali Visualizing an arrow where
  zers_Advanced.html#Modelica.Mechanics.MultiB all parts of the arrow can
  ody.Visualizers.Advanced.Arrow)              vary dynamically:
                                                 ~ ![image5](../Resources/I
                                               mages/MultiBody/Visualizers/
                                               Arrow.png)
                                               
                                               

  [DoubleArrow](Modelica_Mechanics_MultiBody_V Visualizing a double arrow
  isualizers_Advanced.html#Modelica.Mechanics. where all parts of the arrow
  MultiBody.Visualizers.Advanced.DoubleArrow)  can vary dynamically:
                                                 ~ ![image6](../Resources/I
                                               mages/MultiBody/Visualizers/
                                               DoubleArrow.png)
                                               
                                               

  [Shape](Modelica_Mechanics_MultiBody_Visuali Visualizing an elementary
  zers_Advanced.html#Modelica.Mechanics.MultiB object with variable size.
  ody.Visualizers.Advanced.Shape)              The following shape types
                                               are supported:
                                                 ~ ![image7](../Resources/I
                                               mages/MultiBody/FixedShape.p
                                               ng)
                                               
                                               

  [Surface](Modelica_Mechanics_MultiBody_Visua Visualizing a moveable
  lizers_Advanced.html#Modelica.Mechanics.Mult parameterized surface:
  iBody.Visualizers.Advanced.Surface)            ~ ![image8](../Resources/I
                                               mages/MultiBody/Visualizers/
                                               Surface_small.png)
                                               
                                               

  [PipeWithScalarField](Modelica_Mechanics_Mul Visualizing a pipe with a
  tiBody_Visualizers_Advanced.html#Modelica.Me scalar field represented by
  chanics.MultiBody.Visualizers.Advanced.PipeW a color coding:
  ithScalarField)                                ~ ![image9](../Resources/I
                                               mages/MultiBody/Visualizers/
                                               PipeWithScalarFieldIcon.png)
                                               
                                               
  -------------------------------------------- ----------------------------

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                               Description
  -------------------------------------------------- ---------------------
  ![image16](Modelica.Mechanics.MultiBody.Visualizer Visualizing an arrow
  s.Advanced.ArrowS.png)                             with variable size;
  [Arrow](Modelica_Mechanics_MultiBody_Visualizers_A all data have to be
  dvanced.html#Modelica.Mechanics.MultiBody.Visualiz set as modifiers (see
  ers.Advanced.Arrow)                                info layer)

  ![image17](Modelica.Mechanics.MultiBody.Visualizer Visualizing a double
  s.Advanced.DoubleArrowS.png)                       arrow with variable
  [DoubleArrow](Modelica_Mechanics_MultiBody_Visuali size; all data have
  zers_Advanced.html#Modelica.Mechanics.MultiBody.Vi to be set as
  sualizers.Advanced.DoubleArrow)                    modifiers (see info
                                                     layer)

  ![image18](Modelica.Mechanics.MultiBody.Visualizer Visualizing an
  s.Advanced.ShapeS.png)                             elementary object
  [Shape](Modelica_Mechanics_MultiBody_Visualizers_A with variable size;
  dvanced.html#Modelica.Mechanics.MultiBody.Visualiz all data have to be
  ers.Advanced.Shape)                                set as modifiers (see
                                                     info layer)

  ![image19](Modelica.Mechanics.MultiBody.Visualizer Visualizing a
  s.Advanced.SurfaceS.png)                           moveable,
  [Surface](Modelica_Mechanics_MultiBody_Visualizers parameterized
  _Advanced.html#Modelica.Mechanics.MultiBody.Visual surface; the surface
  izers.Advanced.Surface)                            characteristic is
                                                     provided by a
                                                     function

  ![image20](Modelica.Mechanics.MultiBody.Visualizer Visualizing a pipe
  s.Advanced.PipeWithScalarFieldS.png)               with a scalar field
  [PipeWithScalarField](Modelica_Mechanics_MultiBody 
  _Visualizers_Advanced.html#Modelica.Mechanics.Mult 
  iBody.Visualizers.Advanced.PipeWithScalarField)    

  ![image21](Modelica.Mechanics.MultiBody.Visualizer Functions returning
  s.Advanced.SurfaceCharacteristicsS.png)            surface descriptions
  [SurfaceCharacteristics](Modelica_Mechanics_MultiB 
  ody_Visualizers_Advanced_SurfaceCharacteristics.ht 
  ml#Modelica.Mechanics.MultiBody.Visualizers.Advanc 
  ed.SurfaceCharacteristics)                         
  ------------------------------------------------------------------------

* * * * *

![image22](Modelica.Mechanics.MultiBody.Visualizers.Advanced.ArrowI.png) [Modelica.Mechanics.MultiBody.Visualizers.Advanced](Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced).Arrow
============================================================================================================================================================================================================================================

**Visualizing an arrow with variable size; all data have to be set as
modifiers (see info layer)**

Information
-----------

::

Model **Arrow** defines an arrow that is dynamically visualized at the
defined location (see variables below).

The variables under heading **Parameters** below are declared as (time
varying) **input** variables. If the default equation is not
appropriate, a corresponding modifier equation has to be provided in the
model where an **Arrow** instance is used, e.g., in the form

    Visualizers.Advanced.Arrow arrow(diameter = sin(time));

Variable **color** is an Integer vector with 3 elements, {r, g, b}, and
specifies the color of the shape. {r,g,b} are the "red", "green" and
"blue" color parts. Note, r g, b are given in the range 0 .. 255. The
predefined type **MultiBody.Types.Color** contains a menu definition of
the colors used in the MultiBody library (will be replaced by a color
editor).

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name  Default  Description
  ------------------------------ ----- -------- ---------------------------
  [Orientation](Modelica_Mechani R     Frames.n Orientation object to
  cs_MultiBody_Frames.html#Model       ullRotat rotate the world frame into
  ica.Mechanics.MultiBody.Frames       ion()    the arrow frame.
  .Orientation)                                 

  [Position](Modelica_SIunits.ht r[3]  {0,0,0}  Position vector from origin
  ml#Modelica.SIunits.Position)                 of world frame to origin of
                                                arrow frame, resolved in
                                                world frame [m]

  [Position](Modelica_SIunits.ht r\_ta {0,0,0}  Position vector from origin
  ml#Modelica.SIunits.Position)  il[3]          of arrow frame to arrow
                                                tail, resolved in arrow
                                                frame [m]

  [Position](Modelica_SIunits.ht r\_he {0,0,0}  Position vector from arrow
  ml#Modelica.SIunits.Position)  ad[3]          tail to the head of the
                                                arrow, resolved in arrow
                                                frame [m]

  [Diameter](Modelica_SIunits.ht diame world.de Diameter of arrow line [m]
  ml#Modelica.SIunits.Diameter)  ter   faultArr 
                                       owDiamet 
                                       er       

  [Color](Modelica_Mechanics_Mul color Modelica Color of arrow
  tiBody_Types.html#Modelica.Mec       .Mechani 
  hanics.MultiBody.Types.Color)        cs.Multi 
                                       Body...  

  [SpecularCoefficient](Modelica specu world.de Material property
  _Mechanics_MultiBody_Types.htm larCo faultSpe describing the reflecting
  l#Modelica.Mechanics.MultiBody effic cularCoe of ambient light (= 0
  .Types.SpecularCoefficient)    ient  ffic...  means, that light is
                                                completely absorbed)
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image23](Modelica.Mechanics.MultiBody.Visualizers.Advanced.DoubleArrowI.png) [Modelica.Mechanics.MultiBody.Visualizers.Advanced](Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced).DoubleArrow
========================================================================================================================================================================================================================================================

**Visualizing a double arrow with variable size; all data have to be set
as modifiers (see info layer)**

Information
-----------

::

Model **DoubleArrow** defines a double arrow that is dynamically
visualized at the defined location (see variables below).

The variables under heading **Parameters** below are declared as (time
varying) **input** variables. If the default equation is not
appropriate, a corresponding modifier equation has to be provided in the
model where an **Arrow** instance is used, e.g., in the form

    Visualizers.Advanced.DoubleArrow doubleArrow(diameter = sin(time));

Variable **color** is an Integer vector with 3 elements, {r, g, b}, and
specifies the color of the shape. {r,g,b} are the "red", "green" and
"blue" color parts. Note, r g, b are given in the range 0 .. 255. The
predefined type **MultiBody.Types.Color** contains a menu definition of
the colors used in the MultiBody library (will be replaced by a color
editor).

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name  Default  Description
  ------------------------------ ----- -------- ---------------------------
  [Orientation](Modelica_Mechani R     Frames.n Orientation object to
  cs_MultiBody_Frames.html#Model       ullRotat rotate the world frame into
  ica.Mechanics.MultiBody.Frames       ion()    the arrow frame.
  .Orientation)                                 

  [Position](Modelica_SIunits.ht r[3]  {0,0,0}  Position vector from origin
  ml#Modelica.SIunits.Position)                 of world frame to origin of
                                                arrow frame, resolved in
                                                world frame [m]

  [Position](Modelica_SIunits.ht r\_ta {0,0,0}  Position vector from origin
  ml#Modelica.SIunits.Position)  il[3]          of arrow frame to double
                                                arrow tail, resolved in
                                                arrow frame [m]

  [Position](Modelica_SIunits.ht r\_he {0,0,0}  Position vector from double
  ml#Modelica.SIunits.Position)  ad[3]          arrow tail to the head of
                                                the double arrow, resolved
                                                in arrow frame [m]

  [Diameter](Modelica_SIunits.ht diame world.de Diameter of arrow line [m]
  ml#Modelica.SIunits.Diameter)  ter   faultArr 
                                       owDiamet 
                                       er       

  [Color](Modelica_Mechanics_Mul color Modelica Color of double arrow
  tiBody_Types.html#Modelica.Mec       .Mechani 
  hanics.MultiBody.Types.Color)        cs.Multi 
                                       Body...  

  [SpecularCoefficient](Modelica specu world.de Material property
  _Mechanics_MultiBody_Types.htm larCo faultSpe describing the reflecting
  l#Modelica.Mechanics.MultiBody effic cularCoe of ambient light (= 0
  .Types.SpecularCoefficient)    ient  ffic...  means, that light is
                                                completely absorbed)
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image24](Modelica.Mechanics.MultiBody.Visualizers.Advanced.ShapeI.png) [Modelica.Mechanics.MultiBody.Visualizers.Advanced](Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced).Shape
============================================================================================================================================================================================================================================

**Visualizing an elementary object with variable size; all data have to
be set as modifiers (see info layer)**

Information
-----------

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

  ------------------------------------------------------------------------
  **sha Meaning of variable **extra**
  peTyp 
  e**   
  ----- ------------------------------------------------------------------
  "cyli if extra \> 0, a black line is included in the cylinder to show
  nder" the rotation of it.

  "cone extra = diameter-left-side / diameter-right-side, i.e.,
  "       ~ extra = 1: cylinder extra = 0: "real" cone.
        
        

  "pipe extra = outer-diameter / inner-diameter, i.e,
  "       ~ extra = 1: cylinder that is completely hollow extra = 0:
            cylinder without a hole.
        
        

  "gear extra is the number of teeth of the (external) gear. If extra < 0,
  wheel an internal gear is visualized with |extra| teeth. The axis of the
  "     gearwheel is along "lengthDirection", and usually: width = height
        = 2\*radiusOfGearWheel.

  "spri extra is the number of windings of the spring. Additionally,
  ng"   "height" is **not** the "height" but 2\*coil-width.
  ------------------------------------------------------------------------

Parameter **color** is a Real vector with 3 elements, {r, g, b}, and
specifies the color of the shape. {r,g,b} are the "red", "green" and
"blue" color parts. Note, r g, b are given in the range 0 .. 255. The
predefined type **MultiBody.Types.Color** contains a menu definition of
the colors used in the MultiBody library.

The variables under heading **Parameters** below are declared as (time
varying) **input** variables. If the default equation is not
appropriate, a corresponding modifier equation has to be provided in the
model where a **Shape** instance is used, e.g., in the form

    Visualizers.Advanced.Shape shape(length = sin(time));

::

Extends from
[ModelicaServices.Animation.Shape](../../ModelicaServices%201.1/help/ModelicaServices_Animation.html#ModelicaServices.Animation.Shape)
(Different visual shapes with variable size; all data have to be set as
modifiers (see info layer)),
[Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialShape](Modelica_Utilities_Internal_PartialModelicaServices_Animation.html#Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialShape)
(Interface for 3D animation of elementary shapes).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name   Defaul Description
                                          t      
  -------------------------------- ------ ------ --------------------------
  [ShapeType](Modelica_Mechanics_M shapeT "box"  Type of shape (box,
  ultiBody_Types.html#Modelica.Mec ype           sphere, cylinder,
  hanics.MultiBody.Types.ShapeType               pipecylinder, cone, pipe,
  )                                              beam, gearwheel, spring)

  [Orientation](Modelica_Mechanics R      Frames Orientation object to
  _MultiBody_Frames.html#Modelica.        .nullR rotate the world frame
  Mechanics.MultiBody.Frames.Orien        otatio into the object frame
  tation)                                 n()    

  [Position](Modelica_SIunits.html r[3]   {0,0,0 Position vector from
  #Modelica.SIunits.Position)             }      origin of world frame to
                                                 origin of object frame,
                                                 resolved in world frame
                                                 [m]

  [Position](Modelica_SIunits.html r\_sha {0,0,0 Position vector from
  #Modelica.SIunits.Position)      pe[3]  }      origin of object frame to
                                                 shape origin, resolved in
                                                 object frame [m]

  Real                             length {1,0,0 Vector in length
                                   Direct }      direction, resolved in
                                   ion[3]        object frame [1]

  Real                             widthD {0,1,0 Vector in width direction,
                                   irecti }      resolved in object frame
                                   on[3]         [1]

  [Length](Modelica_SIunits.html#M length 0      Length of visual object
  odelica.SIunits.Length)                        [m]

  [Length](Modelica_SIunits.html#M width  0      Width of visual object [m]
  odelica.SIunits.Length)                        

  [Length](Modelica_SIunits.html#M height 0      Height of visual object
  odelica.SIunits.Length)                        [m]

  [ShapeExtra](Modelica_Mechanics_ extra  0.0    Additional size data for
  MultiBody_Types.html#Modelica.Me               some of the shape types
  chanics.MultiBody.Types.ShapeExt               
  ra)                                            

  Real                             color[ {255,0 Color of shape
                                   3]     ,0}    

  [SpecularCoefficient](Modelica_M specul 0.7    Reflection of ambient
  echanics_MultiBody_Types.html#Mo arCoef        light (= 0: light is
  delica.Mechanics.MultiBody.Types ficien        completely absorbed)
  .SpecularCoefficient)            t             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Shape 
      "Visualizing an elementary object with variable size; all data have to be set as modifiers (see info layer)"

       extends ModelicaServices.Animation.Shape;
       extends Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialShape;

    end Shape;

* * * * *

![image25](Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceI.png) [Modelica.Mechanics.MultiBody.Visualizers.Advanced](Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced).Surface
================================================================================================================================================================================================================================================

**Visualizing a moveable, parameterized surface; the surface
characteristic is provided by a function**

Information
-----------

::

Model **Surface** defines a moveable, parametrized surface in 3-dim.
space that is used for animation. This object is specified by:

-   The surface frame (orientation object "R" and origin "r\_0") in
    which the data is specified.
-   A set of two parameters, one in u- and one in v-direction, that
    defines the control points.
-   A time-varying position of each control point with respect to the
    surface frame.

The parameter values (u,v) are given by the ordinal numbers of the
corresponding control point in u- or in v-direction, respectively. The
surface is then defined by the replaceable function
"surfaceCharacteristic" with the interface
[partialSurfaceCharacteristic](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic)
that returns the x-, y-, z- coordinate of every control point in form of
3 arrays X, Y, Z, and an optional color array C, if every control point
shall have a different color:

    Real X[nu,nv], Y[nu,nv], Z[nu,nv], C[nu,nv,3];

An example of a parameterized surface with color coding is shown in the
next figure:

> ![image26](../Resources/Images/MultiBody/Visualizers/Surface.png)

Models
[Torus](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers.Torus),
[VoluminousWheel](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers.VoluminousWheel),
[PipeWithScalarField](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers.PipeWithScalarField),
demonstrate how new visualizer objects can be constructed with the
Surface model. The direct usage of the Surface model, as well as of the
Torus and the VoluminousWheel models, are demonstrated with example
[Examples.Elementary.Surfaces](Modelica_Mechanics_MultiBody_Examples_Elementary.html#Modelica.Mechanics.MultiBody.Examples.Elementary.Surfaces).

::

Extends from
[Modelica.Mechanics.MultiBody.Icons.Surface](Modelica_Mechanics_MultiBody_Icons.html#Modelica.Mechanics.MultiBody.Icons.Surface)
(Surface icon),
[Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialSurface](Modelica_Utilities_Internal_PartialModelicaServices_Animation.html#Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialSurface)
(Interface for 3D animation of surfaces),
[ModelicaServices.Animation.Surface](../../ModelicaServices%201.1/help/ModelicaServices_Animation.html#ModelicaServices.Animation.Surface)
(Animation of a moveable, parameterized surface; the surface
characteristic is provided by a function).

Parameters
----------

  -------------------------------------------------------------------------
  Type                 Name                      Default  Description
  -------------------- ------------------------- -------- -----------------
  Surface frame                                           

  [Orientation](Modeli R                         Frames.n Orientation
  ca_Mechanics_MultiBo                           ullRotat object to rotate
  dy_Frames.html#Model                           ion()    the world frame
  ica.Mechanics.MultiB                                    into the surface
  ody.Frames.Orientati                                    frame
  on)                                                     

  [Position](Modelica_ r\_0[3]                   {0,0,0}  Position vector
  SIunits.html#Modelic                                    from origin of
  a.SIunits.Position)                                     world frame to
                                                          origin of surface
                                                          frame, resolved
                                                          in world frame
                                                          [m]

  Surface properties                                      

  Integer              nu                        2        Number of points
                                                          in u-Dimension

  Integer              nv                        2        Number of points
                                                          in v-Dimension

  replaceable function [partialSurfaceCharacteri Function 
  surfaceCharacteristi stic](Modelica_Mechanics_ defining 
  c                    MultiBody_Interfaces.html the      
                       #Modelica.Mechanics.Multi surface  
                       Body.Interfaces.partialSu characte 
                       rfaceCharacteristic)      ristic   

  Material properties                                     

  Boolean              wireframe                 false    = true: 3D model
                                                          will be displayed
                                                          without faces

  Boolean              multiColoredSurface       false    = true: Color is
                                                          defined for each
                                                          surface point

  Real                 color[3]                  {255,0,0 Color of surface
                                                 }        

  [SpecularCoefficient specularCoefficient       0.7      Reflection of
  ](Modelica_Mechanics                                    ambient light (=
  _MultiBody_Types.htm                                    0: light is
  l#Modelica.Mechanics                                    completely
  .MultiBody.Types.Spe                                    absorbed)
  cularCoefficient)                                       

  Real                 transparency              0        Transparency of
                                                          shape: 0 (=
                                                          opaque) ... 1 (=
                                                          fully
                                                          transparent)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Surface 
      "Visualizing a moveable, parameterized surface; the surface characteristic is provided by a function"
      extends Modelica.Mechanics.MultiBody.Icons.Surface;
      extends Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialSurface;
      extends ModelicaServices.Animation.Surface;
    equation 

    end Surface;

* * * * *

![image27](Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarFieldI.png) [Modelica.Mechanics.MultiBody.Visualizers.Advanced](Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced).PipeWithScalarField
========================================================================================================================================================================================================================================================================

**Visualizing a pipe with a scalar field**

Information
-----------

::

Model **PipeWithScalarField** visualizes a pipe and a scalar field along
the pipe axis. The latter is shown by mapping scalar field to color
values with a color map and utilizing this color at the perimeter
associated with the corresponding axis location. Typically the scalar
field value is a temperature, but might be also another quantity.
Predefined color maps are available from
[MultiBody.Visualizers.Colors.ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps)
and can be selected via parameter "colorMap". A color map with the
corresponding scalar field values can be exported as vector-graphics in
svg-format with function
[MultiBody.Visualizers.Colors.colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg).
The position and orientation of the center of the circle at the left end
of the pipe is defined via parameters "r\_0" and "R", respectively. The
pipe axis is oriented along the x-axis of the local coordinate system
described by "R", see figure below:

> ![image28](../Resources/Images/MultiBody/Visualizers/PipeWithScalarField.png)

The color coding is shown in the next figure. It was generated with
[MultiBody.Visualizers.Colors.colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg)
using the following call:

>     colorMapToSvg(Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMap.jet(),
>                   height=50, nScalars=6, T_max=100, caption="Temperature in C");
>
> ![image29](../Resources/Images/MultiBody/Visualizers/PipeWithScalarField-ColorMap.png)

::

Parameters
----------

  --------------------------------------------------------------------------
  Type                            Name   Default   Description
  ------------------------------- ------ --------- -------------------------
  Surface frame                                    

  [Orientation](Modelica_Mechanic R      Frames.nu Orientation object to
  s_MultiBody_Frames.html#Modelic        llRotatio rotate the world frame
  a.Mechanics.MultiBody.Frames.Or        n()       into the surface frame
  ientation)                                       

  [Position](Modelica_SIunits.htm r\_0[3 {0,0,0}   Position vector from
  l#Modelica.SIunits.Position)    ]                origin of world frame to
                                                   origin of surface frame,
                                                   resolved in world frame
                                                   [m]

  Surface properties                               

  [Radius](Modelica_SIunits.html# rOuter           Outer radius of pipe [m]
  Modelica.SIunits.Radius)                         

  [Length](Modelica_SIunits.html# length           Length of pipe [m]
  Modelica.SIunits.Length)                         

  Integer                         n\_rOu 30        Number of points along
                                  ter              outer radius

  Integer                         n\_len 10        Number of points along
                                  gth              length

  [SpecularCoefficient](Modelica_ specul 0.7       Reflection of ambient
  Mechanics_MultiBody_Types.html# arCoef           light (= 0: light is
  Modelica.Mechanics.MultiBody.Ty ficien           completely absorbed)
  pes.SpecularCoefficient)        t                

  Real                            transp 0         Transparency of shape: 0
                                  arency           (= opaque) ... 1 (= fully
                                                   transparent)

  Color coding                                     

  Real                            xsi[:] Modelica. [:] Relative position
                                         Math.Vect along the pipe with x[1]
                                         ors.relNo = 0, x[end] = 1
                                         d...      

  Real                            T[size           [:] Scalar values at
                                  (xsi,            position xsi\*length
                                  1)]              (will be visualized by
                                                   color)

  Real                            T\_min           Minimum value of T that
                                                   corresponds to
                                                   colorMap[1,:]

  Real                            T\_max           Maximum value of T that
                                                   corresponds to
                                                   colorMap[end,:]

  Integer                         n\_col 64        Number of colors in the
                                  ors              colorMap
  --------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:40 2010.
