% Modelica.Mechanics.MultiBody.Visualizers
% 
% 

[Modelica.Mechanics.MultiBody](Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody).Visualizers
==========================================================================================================

**3-dimensional visual objects used for animation**

Information
-----------

::

Package **Visualizers** contains components to visualize 3-dimensional
shapes. These components are the basis for the animation features of the
MultiBody library.

### Content

  ------------------------ -----------------------------------------------
  [FixedShape](Modelica_Me Visualizing an elementary shape with
  chanics_MultiBody_Visual dynamically varying shape attributes.
  izers.html#Modelica.Mech FixedShape has one connector frame\_a, whereas
  anics.MultiBody.Visualiz FixedShape2 has additionally a frame\_b for
  ers.FixedShape)          easier connection to further visual objects.
    ~ [FixedShape2](Modeli The following shape types are supported:
  ca_Mechanics_MultiBody_V   ~ ![image7](../Resources/Images/MultiBody/Fix
  isualizers.html#Modelica edShape.png)
  .Mechanics.MultiBody.Vis 
  ualizers.FixedShape2)    
                           
                           

  [FixedFrame](Modelica_Me Visualizing a coordinate system including axes
  chanics_MultiBody_Visual labels with fixed sizes:
  izers.html#Modelica.Mech   ~ ![image8](../Resources/Images/MultiBody/Fix
  anics.MultiBody.Visualiz edFrame2.png)
  ers.FixedFrame)          
                           

  [FixedArrow](Modelica_Me Visualizing an arrow. Model "FixedArrow"
  chanics_MultiBody_Visual provides a fixed sized arrow, model
  izers.html#Modelica.Mech "SignalArrow" provides an arrow with
  anics.MultiBody.Visualiz dynamically varying length that is defined by
  ers.FixedArrow),         an input signal vector:
    ~ [SignalArrow](Modeli   ~ ![image9](../Resources/Images/MultiBody/Vis
  ca_Mechanics_MultiBody_V ualizers/Arrow.png)
  isualizers.html#Modelica 
  .Mechanics.MultiBody.Vis 
  ualizers.SignalArrow)    
                           
                           

  [Ground](Modelica_Mechan Visualizing the x-y plane by a box:
  ics_MultiBody_Visualizer   ~ ![image10](../Resources/Images/MultiBody/Vi
  s.html#Modelica.Mechanic sualizers/GroundSmall.png)
  s.MultiBody.Visualizers. 
  Ground)                  

  [Torus](Modelica_Mechani Visualizing a torus:
  cs_MultiBody_Visualizers   ~ ![image11](../Resources/Images/MultiBody/Vi
  .html#Modelica.Mechanics sualizers/TorusIcon.png)
  .MultiBody.Visualizers.T 
  orus)                    

  [VoluminousWheel](Modeli Visualizing a wheel:
  ca_Mechanics_MultiBody_V   ~ ![image12](../Resources/Images/MultiBody/Vi
  isualizers.html#Modelica sualizers/VoluminousWheelIcon.png)
  .Mechanics.MultiBody.Vis 
  ualizers.VoluminousWheel 
  )                        

  [PipeWithScalarField](Mo Visualizing a pipe with a scalar field
  delica_Mechanics_MultiBo represented by a color coding:
  dy_Visualizers.html#Mode   ~ ![image13](../Resources/Images/MultiBody/Vi
  lica.Mechanics.MultiBody sualizers/PipeWithScalarFieldIcon.png)
  .Visualizers.PipeWithSca 
  larField)                

  [Advanced](Modelica_Mech **Package** that contains components to
  anics_MultiBody_Visualiz visualize 3-dimensional shapes where all parts
  ers_Advanced.html#Modeli of the shape can vary dynamically. Basic
  ca.Mechanics.MultiBody.V knowledge of Modelica is needed in order to
  isualizers.Advanced)     utilize the components of this package.
  ------------------------ -----------------------------------------------

The colors of the visualization components are declared with the
predefined type **MultiBody.Types.Color**. This is a vector with 3
elements, {r, g, b}, and specifies the color of the shape. {r,g,b} are
the "red", "green" and "blue" color parts. Note, r g, b are given as
Integer[3] in the ranges 0 .. 255, respectively.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                            Description
  ----------------------------------------------- ------------------------
  ![image26](Modelica.Mechanics.MultiBody.Visuali Visualizing an
  zers.FixedShapeS.png)                           elementary shape with
  [FixedShape](Modelica_Mechanics_MultiBody_Visua dynamically varying
  lizers.html#Modelica.Mechanics.MultiBody.Visual shape attributes (has
  izers.FixedShape)                               one frame connector)

  ![image27](Modelica.Mechanics.MultiBody.Visuali Visualizing an
  zers.FixedShape2S.png)                          elementary shape with
  [FixedShape2](Modelica_Mechanics_MultiBody_Visu dynamically varying
  alizers.html#Modelica.Mechanics.MultiBody.Visua shape attributes (has
  lizers.FixedShape2)                             two frame connectors)

  ![image28](Modelica.Mechanics.MultiBody.Visuali Visualizing a coordinate
  zers.FixedFrameS.png)                           system including axes
  [FixedFrame](Modelica_Mechanics_MultiBody_Visua labels (visualization
  lizers.html#Modelica.Mechanics.MultiBody.Visual data may vary
  izers.FixedFrame)                               dynamically)

  ![image29](Modelica.Mechanics.MultiBody.Visuali Visualizing an arrow
  zers.FixedArrowS.png)                           with dynamically varying
  [FixedArrow](Modelica_Mechanics_MultiBody_Visua size in frame\_a
  lizers.html#Modelica.Mechanics.MultiBody.Visual 
  izers.FixedArrow)                               

  ![image30](Modelica.Mechanics.MultiBody.Visuali Visualizing an arrow
  zers.SignalArrowS.png)                          with dynamically varying
  [SignalArrow](Modelica_Mechanics_MultiBody_Visu size in frame\_a based
  alizers.html#Modelica.Mechanics.MultiBody.Visua on input signal
  lizers.SignalArrow)                             

  ![image31](Modelica.Mechanics.MultiBody.Visuali Visualizing the ground
  zers.GroundS.png)                               (box in z=0)
  [Ground](Modelica_Mechanics_MultiBody_Visualize 
  rs.html#Modelica.Mechanics.MultiBody.Visualizer 
  s.Ground)                                       

  ![image32](Modelica.Mechanics.MultiBody.Visuali Visualizing a torus
  zers.TorusS.png)                                
  [Torus](Modelica_Mechanics_MultiBody_Visualizer 
  s.html#Modelica.Mechanics.MultiBody.Visualizers 
  .Torus)                                         

  ![image33](Modelica.Mechanics.MultiBody.Visuali Visualizing a voluminous
  zers.VoluminousWheelS.png)                      wheel
  [VoluminousWheel](Modelica_Mechanics_MultiBody_ 
  Visualizers.html#Modelica.Mechanics.MultiBody.V 
  isualizers.VoluminousWheel)                     

  ![image34](Modelica.Mechanics.MultiBody.Visuali Visualizing a pipe with
  zers.PipeWithScalarFieldS.png)                  scalar field quantities
  [PipeWithScalarField](Modelica_Mechanics_MultiB along the pipe axis
  ody_Visualizers.html#Modelica.Mechanics.MultiBo 
  dy.Visualizers.PipeWithScalarField)             

  ![image35](Modelica.Mechanics.MultiBody.Visuali Library of functions
  zers.ColorsS.png)                               operating on color
  [Colors](Modelica_Mechanics_MultiBody_Visualize 
  rs_Colors.html#Modelica.Mechanics.MultiBody.Vis 
  ualizers.Colors)                                

  ![image36](Modelica.Mechanics.MultiBody.Visuali Visualizers that require
  zers.ColorsS.png)                               basic knowledge about
  [Advanced](Modelica_Mechanics_MultiBody_Visuali Modelica in order to use
  zers_Advanced.html#Modelica.Mechanics.MultiBody them
  .Visualizers.Advanced)                          

  ![image37](Modelica.Mechanics.MultiBody.Visuali Visualizers that will be
  zers.ColorsS.png)                               replaced by improved
  [Internal](Modelica_Mechanics_MultiBody_Visuali versions in the future
  zers_Internal.html#Modelica.Mechanics.MultiBody (don't use them)
  .Visualizers.Internal)                          
  ------------------------------------------------------------------------

* * * * *

![image38](Modelica.Mechanics.MultiBody.Visualizers.FixedShapeI.png) [Modelica.Mechanics.MultiBody.Visualizers](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers).FixedShape
==================================================================================================================================================================================================================

**Visualizing an elementary shape with dynamically varying shape
attributes (has one frame connector)**

Information
-----------

::

Model **FixedShape** defines a visual shape that is shown at the
location of its frame\_a. All describing data such as size and color can
vary dynamically by providing appropriate expressions in the input
fields of the parameter menu. The only exception is parameter shapeType
that cannot be changed during simulation. The following shapes are
currently supported via parameter **shapeType** (e.g., shapeType="box"):

**lengthDirection**. The light blue arrows are directed along variable
**widthDirection**. The **coordinate systems** in the figure represent
frame\_a of the FixedShape component.

Additionally external shapes are specified as DXF-files (only 3-dim.Face
is supported). External shapes must be named "1", "2" etc.. The
corresponding definitions should be in files "1.dxf", "2.dxf" etc.Since
the DXF-files contain color and dimensions for the individual faces, the
corresponding information in the model is currently ignored. The
DXF-files must be found in the current directory.

The sizes of any of the above components are specified by the
**length**, **width** and **height** variables. Via variable **extra**
additional data can be defined:

  ------------------------------------------------------------------------
  **sha Meaning of parameter **extra**
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

Parameter **color** is a vector with 3 elements, {r, g, b}, and
specifies the color of the shape. {r,g,b} are the "red", "green" and
"blue" color parts. Note, r g, b are given as Integer[3] in the ranges 0
.. 255, respectively. The predefined type **MultiBody.Types.Color**
contains a temporary menu definition of the colors used in the MultiBody
library (this will be replaced by a color editor).

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer)
(Base model for visualizers (has a frame\_a on the left side + outer
world + assert to guarantee that the component is connected)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name   Default    Description
  ----------------------------------- ------ ---------- -------------------
  Boolean                             animat true       = true, if
                                      ion               animation shall be
                                                        enabled

  if animation = true                                   

  [ShapeType](Modelica_Mechanics_Mult shapeT "box"      Type of shape
  iBody_Types.html#Modelica.Mechanics ype               
  .MultiBody.Types.ShapeType)                           

  [Position](Modelica_SIunits.html#Mo r\_sha {0,0,0}    Vector from
  delica.SIunits.Position)            pe[3]             frame\_a to shape
                                                        origin, resolved in
                                                        frame\_a [m]

  [Axis](Modelica_Mechanics_MultiBody length {1,0,0}    Vector in length
  _Types.html#Modelica.Mechanics.Mult Direct            direction of shape,
  iBody.Types.Axis)                   ion               resolved in
                                                        frame\_a [1]

  [Axis](Modelica_Mechanics_MultiBody widthD {0,1,0}    Vector in width
  _Types.html#Modelica.Mechanics.Mult irecti            direction of shape,
  iBody.Types.Axis)                   on                resolved in
                                                        frame\_a [1]

  [Distance](Modelica_SIunits.html#Mo length            Length of shape [m]
  delica.SIunits.Distance)                              

  [Distance](Modelica_SIunits.html#Mo width             Width of shape [m]
  delica.SIunits.Distance)                              

  [Distance](Modelica_SIunits.html#Mo height            Height of shape [m]
  delica.SIunits.Distance)                              

  [Color](Modelica_Mechanics_MultiBod color  {0,128,255 Color of shape
  y_Types.html#Modelica.Mechanics.Mul        }          
  tiBody.Types.Color)                                   

  [ShapeExtra](Modelica_Mechanics_Mul extra  0.0        Additional data for
  tiBody_Types.html#Modelica.Mechanic                   cylinder, cone,
  s.MultiBody.Types.ShapeExtra)                         pipe, gearwheel and
                                                        spring

  [SpecularCoefficient](Modelica_Mech specul world.defa Reflection of
  anics_MultiBody_Types.html#Modelica arCoef ultSpecula ambient light (= 0:
  .Mechanics.MultiBody.Types.Specular ficien rCoeffic.. light is completely
  Coefficient)                        t      .          absorbed)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name  Description
  ------------------------------------------ ----- ------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_In frame Coordinate system in
  terfaces.html#Modelica.Mechanics.MultiBody \_a   which visualization data
  .Interfaces.Frame_a)                             is resolved
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model FixedShape 
      "Visualizing an elementary shape with dynamically varying shape attributes (has one frame connector)"
      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer;

      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Types.ShapeType shapeType="box" "Type of shape";
      input SI.Position r_shape[3]={0,0,0} 
        "Vector from frame_a to shape origin, resolved in frame_a";
      input Types.Axis lengthDirection={1,0,0} 
        "Vector in length direction of shape, resolved in frame_a";
      input Types.Axis widthDirection={0,1,0} 
        "Vector in width direction of shape, resolved in frame_a";
      input SI.Distance length(start=1) "Length of shape";
      input SI.Distance width(start=0.1) "Width of shape";
      input SI.Distance height(start=0.1) "Height of shape";
      input Modelica.Mechanics.MultiBody.Types.Color color={0,128,255} 
        "Color of shape";
      input Types.ShapeExtra extra=0.0 
        "Additional data for cylinder, cone, pipe, gearwheel and spring";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      Advanced.Shape vis(
        shapeType=shapeType,
        r_shape=r_shape,
        lengthDirection=lengthDirection,
        widthDirection=widthDirection,
        length=length,
        width=width,
        height=height,
        color=color,
        extra=extra,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
    equation 
      // No forces and torques
      frame_a.f = zeros(3);
      frame_a.t = zeros(3);
    end FixedShape;

* * * * *

![image39](Modelica.Mechanics.MultiBody.Visualizers.FixedShape2I.png) [Modelica.Mechanics.MultiBody.Visualizers](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers).FixedShape2
====================================================================================================================================================================================================================

**Visualizing an elementary shape with dynamically varying shape
attributes (has two frame connectors)**

Information
-----------

::

Model **FixedShape2** defines a visual shape that is shown at the
location of its frame\_a. This model is identical to **FixedShape** with
the only difference that an additional frame\_b is present which is
parallel to frame\_a. This makes it more convenient to connect several
visual shapes together when building up more complex visual objects. All
describing data such as size and color can vary dynamically by providing
appropriate expressions in the input fields of the parameter menu. The
only exception is parameter shapeType that cannot be changed during
simulation. The following shapes are currently supported via parameter
**shapeType** (e.g., shapeType="box"):

**lengthDirection**. The light blue arrows are directed along variable
**widthDirection**. The **coordinate systems** in the figure represent
frame\_a of the FixedShape component.

Additionally external shapes are specified as DXF-files (only 3-dim.Face
is supported). External shapes must be named "1", "2" etc.. The
corresponding definitions should be in files "1.dxf", "2.dxf" etc.Since
the DXF-files contain color and dimensions for the individual faces, the
corresponding information in the model is currently ignored. The
DXF-files must be found in the current directory.

The sizes of any of the above components are specified by the
**length**, **width** and **height** variables. Via variable **extra**
additional data can be defined:

  ------------------------------------------------------------------------
  **sha Meaning of parameter **extra**
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

Parameter **color** is a vector with 3 elements, {r, g, b}, and
specifies the color of the shape. {r,g,b} are the "red", "green" and
"blue" color parts. Note, r g, b are given as Integer[3] in the ranges 0
.. 255, respectively. The predefined type **MultiBody.Types.Color**
contains a temporary menu definition of the colors used in the MultiBody
library (this will be replaced by a color editor).

In the following figure the relationships between frame\_a and frame\_b
are shown. The origin of frame\_b with respect to frame\_a is specified
via parameter vector **r**.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name   Default    Description
  ----------------------------------- ------ ---------- -------------------
  Boolean                             animat true       = true, if
                                      ion               animation shall be
                                                        enabled

  if animation = true                                   

  [ShapeType](Modelica_Mechanics_Mult shapeT "box"      Type of shape
  iBody_Types.html#Modelica.Mechanics ype               
  .MultiBody.Types.ShapeType)                           

  [Position](Modelica_SIunits.html#Mo r\_sha {0,0,0}    Vector from
  delica.SIunits.Position)            pe[3]             frame\_a to shape
                                                        origin, resolved in
                                                        frame\_a [m]

  [Axis](Modelica_Mechanics_MultiBody length r -        Vector in length
  _Types.html#Modelica.Mechanics.Mult Direct r\_shape   direction of shape,
  iBody.Types.Axis)                   ion               resolved in
                                                        frame\_a [1]

  [Axis](Modelica_Mechanics_MultiBody widthD {0,1,0}    Vector in width
  _Types.html#Modelica.Mechanics.Mult irecti            direction of shape,
  iBody.Types.Axis)                   on                resolved in
                                                        frame\_a [1]

  [Length](Modelica_SIunits.html#Mode length Modelica.M Length of shape [m]
  lica.SIunits.Length)                       ath.Vector 
                                             s.length.. 
                                             .          

  [Distance](Modelica_SIunits.html#Mo width  0.1        Width of shape [m]
  delica.SIunits.Distance)                              

  [Distance](Modelica_SIunits.html#Mo height width      Height of shape [m]
  delica.SIunits.Distance)                              

  [ShapeExtra](Modelica_Mechanics_Mul extra  0.0        Additional data for
  tiBody_Types.html#Modelica.Mechanic                   cylinder, cone,
  s.MultiBody.Types.ShapeExtra)                         pipe, gearwheel and
                                                        spring

  [Color](Modelica_Mechanics_MultiBod color  {0,128,255 Color of shape
  y_Types.html#Modelica.Mechanics.Mul        }          
  tiBody.Types.Color)                                   

  [SpecularCoefficient](Modelica_Mech specul world.defa Reflection of
  anics_MultiBody_Types.html#Modelica arCoef ultSpecula ambient light (= 0:
  .Mechanics.MultiBody.Types.Specular ficien rCoeffic.. light is completely
  Coefficient)                        t      .          absorbed)
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBod fram Coordinate system a (all
  y_Interfaces.html#Modelica.Mechanics.M e\_a shape definition vectors are
  ultiBody.Interfaces.Frame_a)                resolved in this frame)

  [Frame\_b](Modelica_Mechanics_MultiBod fram Coordinate system b
  y_Interfaces.html#Modelica.Mechanics.M e\_b 
  ultiBody.Interfaces.Frame_b)                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model FixedShape2 
      "Visualizing an elementary shape with dynamically varying shape attributes (has two frame connectors)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types;

      Interfaces.Frame_a frame_a 
        "Coordinate system a (all shape definition vectors are resolved in this frame)";
      Interfaces.Frame_b frame_b "Coordinate system b";

      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Types.ShapeType shapeType="box" "Type of shape";
      input SI.Position r[3]={1,0,0} 
        "Vector from frame_a to frame_b resolved in frame_a";
      input SI.Position r_shape[3]={0,0,0} 
        "Vector from frame_a to shape origin, resolved in frame_a";
      input Types.Axis lengthDirection=r - r_shape 
        "Vector in length direction of shape, resolved in frame_a";
      input Types.Axis widthDirection={0,1,0} 
        "Vector in width direction of shape, resolved in frame_a";
      input SI.Length length=Modelica.Math.Vectors.length(
                                           r - r_shape) "Length of shape";
      input SI.Distance width=0.1 "Width of shape";
      input SI.Distance height=width "Height of shape";
      input Types.ShapeExtra extra=0.0 
        "Additional data for cylinder, cone, pipe, gearwheel and spring";
      input Types.Color color={0,128,255} "Color of shape";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      outer MultiBody.World world;
      Advanced.Shape shape(
        shapeType=shapeType,
        r_shape=r_shape,
        lengthDirection=lengthDirection,
        widthDirection=widthDirection,
        length=length,
        width=width,
        height=height,
        extra=extra,
        color=color,
        specularCoefficient = specularCoefficient,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
    equation 
      Connections.branch(frame_a.R, frame_b.R);
      assert(cardinality(frame_a) > 0 or cardinality(frame_b) > 0, "Neither connector frame_a nor frame_b of
    MultiBody.Visualizers.FixedShape2 object is connected");

      frame_b.r_0 = frame_a.r_0 + Frames.resolve1(frame_a.R, r);
      frame_b.R = frame_a.R;

      /* Force and torque balance */
      zeros(3) = frame_a.f + frame_b.f;
      zeros(3) = frame_a.t + frame_b.t + cross(r, frame_b.f);
    end FixedShape2;

* * * * *

![image40](Modelica.Mechanics.MultiBody.Visualizers.FixedFrameI.png) [Modelica.Mechanics.MultiBody.Visualizers](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers).FixedFrame
==================================================================================================================================================================================================================

**Visualizing a coordinate system including axes labels (visualization
data may vary dynamically)**

Information
-----------

::

Model **FixedFrame** visualizes the three axes of its coordinate system
**frame\_a** together with appropriate axes labels. A typical example is
shown in the following figure:

The sizes of the axes, the axes colors and the specular coefficient (=
reflection factor for ambient light) can vary dynamically by providing
appropriate expressions in the input fields of the parameter menu.

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer)
(Base model for visualizers (has a frame\_a on the left side + outer
world + assert to guarantee that the component is connected)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name   Default    Description
  ----------------------------------- ------ ---------- -------------------
  Boolean                             animat true       = true, if
                                      ion               animation shall be
                                                        enabled

  if animation = true                                   

  Boolean                             showLa true       = true, if labels
                                      bels              shall be shown

  [Distance](Modelica_SIunits.html#Mo length 0.5        Length of axes
  delica.SIunits.Distance)                              arrows [m]

  [Distance](Modelica_SIunits.html#Mo diamet length/wor Diameter of axes
  delica.SIunits.Distance)            er     ld.default arrows [m]
                                             FrameDia.. 
                                             .          

  [Color](Modelica_Mechanics_MultiBod color\ Modelica.M Color of x-arrow
  y_Types.html#Modelica.Mechanics.Mul _x     echanics.M 
  tiBody.Types.Color)                        ultiBody.. 
                                             .          

  [Color](Modelica_Mechanics_MultiBod color\ color\_x   Color of y-arrow
  y_Types.html#Modelica.Mechanics.Mul _y                
  tiBody.Types.Color)                                   

  [Color](Modelica_Mechanics_MultiBod color\ color\_x   Color of z-arrow
  y_Types.html#Modelica.Mechanics.Mul _z                
  tiBody.Types.Color)                                   

  [SpecularCoefficient](Modelica_Mech specul world.defa Reflection of
  anics_MultiBody_Types.html#Modelica arCoef ultSpecula ambient light (= 0:
  .Mechanics.MultiBody.Types.Specular ficien rCoeffic.. light is completely
  Coefficient)                        t      .          absorbed)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name  Description
  ------------------------------------------ ----- ------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_In frame Coordinate system in
  terfaces.html#Modelica.Mechanics.MultiBody \_a   which visualization data
  .Interfaces.Frame_a)                             is resolved
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model FixedFrame 
      "Visualizing a coordinate system including axes labels (visualization data may vary dynamically)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer;
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Boolean showLabels=true "= true, if labels shall be shown";
      input SI.Distance length=0.5 "Length of axes arrows";
      input SI.Distance diameter=length/world.defaultFrameDiameterFraction 
        "Diameter of axes arrows";
      input Types.Color color_x=Modelica.Mechanics.MultiBody.Types.Defaults.
          FrameColor "Color of x-arrow";
      input Types.Color color_y=color_x "Color of y-arrow";
      input Types.Color color_z=color_x "Color of z-arrow";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
    protected 
      parameter Boolean animation2 = world.enableAnimation and animation;
      parameter Boolean showLabels2= world.enableAnimation and animation and showLabels;

      // Parameters to define axes
      SI.Length headLength=min(length, diameter*Types.Defaults.FrameHeadLengthFraction);
      SI.Length headWidth=diameter*Types.Defaults.FrameHeadWidthFraction;
      SI.Length lineLength=max(0, length - headLength);
      SI.Length lineWidth=diameter;

      // Parameters to define axes labels
      SI.Length scaledLabel=Modelica.Mechanics.MultiBody.Types.Defaults.FrameLabelHeightFraction*diameter;
      SI.Length labelStart=1.05*length;

      // x-axis
      Visualizers.Advanced.Shape x_arrowLine(
        shapeType="cylinder",
        length=lineLength,
        width=lineWidth,
        height=lineWidth,
        lengthDirection={1,0,0},
        widthDirection={0,1,0},
        color=color_x,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0,
        R=frame_a.R) if animation2;
      Visualizers.Advanced.Shape x_arrowHead(
        shapeType="cone",
        length=headLength,
        width=headWidth,
        height=headWidth,
        lengthDirection={1,0,0},
        widthDirection={0,1,0},
        color=color_x,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0 + Frames.resolve1(frame_a.R, {lineLength,0,0}),
        R=frame_a.R) if animation2;
      Visualizers.Internal.Lines x_label(
        lines=scaledLabel*{[0, 0; 1, 1],[0, 1; 1, 0]},
        diameter=diameter,
        color=color_x,
        specularCoefficient=specularCoefficient,
        r_lines={labelStart,0,0},
        n_x={1,0,0},
        n_y={0,1,0},
        r=frame_a.r_0,
        R=frame_a.R) if showLabels2;

      // y-axis
      Visualizers.Advanced.Shape y_arrowLine(
        shapeType="cylinder",
        length=lineLength,
        width=lineWidth,
        height=lineWidth,
        lengthDirection={0,1,0},
        widthDirection={1,0,0},
        color=color_y,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0,
        R=frame_a.R) if animation2;
      Visualizers.Advanced.Shape y_arrowHead(
        shapeType="cone",
        length=headLength,
        width=headWidth,
        height=headWidth,
        lengthDirection={0,1,0},
        widthDirection={1,0,0},
        color=color_y,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0 + Frames.resolve1(frame_a.R, {0,lineLength,0}),
        R=frame_a.R) if animation2;
      Visualizers.Internal.Lines y_label(
        lines=scaledLabel*{[0, 0; 1, 1.5],[0, 1.5; 0.5, 0.75]},
        diameter=diameter,
        color=color_y,
        specularCoefficient=specularCoefficient,
        r_lines={0,labelStart,0},
        n_x={0,1,0},
        n_y={-1,0,0},
        r=frame_a.r_0,
        R=frame_a.R) if showLabels2;

      // z-axis
      Visualizers.Advanced.Shape z_arrowLine(
        shapeType="cylinder",
        length=lineLength,
        width=lineWidth,
        height=lineWidth,
        lengthDirection={0,0,1},
        widthDirection={0,1,0},
        color=color_z,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0,
        R=frame_a.R) if animation2;
      Visualizers.Advanced.Shape z_arrowHead(
        shapeType="cone",
        length=headLength,
        width=headWidth,
        height=headWidth,
        lengthDirection={0,0,1},
        widthDirection={0,1,0},
        color=color_z,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0 + Frames.resolve1(frame_a.R, {0,0,lineLength}),
        R=frame_a.R) if animation2;
      Visualizers.Internal.Lines z_label(
        lines=scaledLabel*{[0, 0; 1, 0],[0, 1; 1, 1],[0, 1; 1, 0]},
        diameter=diameter,
        color=color_z,
        specularCoefficient=specularCoefficient,
        r_lines={0,0,labelStart},
        n_x={0,0,1},
        n_y={0,1,0},
        r=frame_a.r_0,
        R=frame_a.R) if showLabels2;
    equation 
      frame_a.f = zeros(3);
      frame_a.t = zeros(3);
    end FixedFrame;

* * * * *

![image41](Modelica.Mechanics.MultiBody.Visualizers.FixedArrowI.png) [Modelica.Mechanics.MultiBody.Visualizers](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers).FixedArrow
==================================================================================================================================================================================================================

**Visualizing an arrow with dynamically varying size in frame\_a**

Information
-----------

::

Model **FixedArrow** defines an arrow that is shown at the location of
its frame\_a.

The direction of the arrow specified with vector **n** is with respect
to frame\_a, i.e., the local frame to which the arrow component is
attached. The direction and length of the arrow, its diameter and color
can vary dynamically by providing appropriate expressions in the input
fields of the parameter menu.

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer)
(Base model for visualizers (has a frame\_a on the left side + outer
world + assert to guarantee that the component is connected)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name   Default    Description
  ----------------------------------- ------ ---------- -------------------
  Boolean                             animat true       = true, if
                                      ion               animation shall be
                                                        enabled

  if animation = true                                   

  [Position](Modelica_SIunits.html#Mo r\_tai {0,0,0}    Vector from
  delica.SIunits.Position)            l[3]              frame\_a to arrow
                                                        tail, resolved in
                                                        frame\_a [m]

  [Axis](Modelica_Mechanics_MultiBody n      {1,0,0}    Vector in arrow
  _Types.html#Modelica.Mechanics.Mult                   direction, resolved
  iBody.Types.Axis)                                     in frame\_a [1]

  [Length](Modelica_SIunits.html#Mode length 0.1        Length of complete
  lica.SIunits.Length)                                  arrow [m]

  [Diameter](Modelica_SIunits.html#Mo diamet world.defa Diameter of arrow
  delica.SIunits.Diameter)            er     ultArrowDi line [m]
                                             ameter     

  [Color](Modelica_Mechanics_MultiBod color  {0,0,255}  Color of arrow
  y_Types.html#Modelica.Mechanics.Mul                   
  tiBody.Types.Color)                                   

  [SpecularCoefficient](Modelica_Mech specul world.defa Reflection of
  anics_MultiBody_Types.html#Modelica arCoef ultSpecula ambient light (= 0:
  .Mechanics.MultiBody.Types.Specular ficien rCoeffic.. light is completely
  Coefficient)                        t      .          absorbed)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name  Description
  ------------------------------------------ ----- ------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_In frame Coordinate system in
  terfaces.html#Modelica.Mechanics.MultiBody \_a   which visualization data
  .Interfaces.Frame_a)                             is resolved
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model FixedArrow 
      "Visualizing an arrow with dynamically varying size in frame_a"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer;
      parameter Boolean animation=true "= true, if animation shall be enabled";
      input SI.Position r_tail[3]={0,0,0} 
        " Vector from frame_a to arrow tail, resolved in frame_a";
      input Types.Axis n={1,0,0} " Vector in arrow direction, resolved in frame_a";
      input SI.Length length=0.1 " Length of complete arrow";
      input SI.Diameter diameter=world.defaultArrowDiameter 
        " Diameter of arrow line";
      input Types.Color color={0,0,255} " Color of arrow";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
    protected 
      SI.Length headLength=min(length, diameter*Types.Defaults.
          ArrowHeadLengthFraction);
      SI.Length headWidth=diameter*Types.Defaults.
          ArrowHeadWidthFraction;
      SI.Length lineLength=max(0, length - headLength);
      Visualizers.Advanced.Shape arrowLine(
        shapeType="cylinder",
        length=lineLength,
        width=diameter,
        height=diameter,
        lengthDirection=n,
        widthDirection={0,1,0},
        color=color,
        specularCoefficient=specularCoefficient,
        r_shape=r_tail,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
      Visualizers.Advanced.Shape arrowHead(
        shapeType="cone",
        length=headLength,
        width=headWidth,
        height=headWidth,
        lengthDirection=n,
        widthDirection={0,1,0},
        color=color,
        specularCoefficient=specularCoefficient,
        r_shape=r_tail + Modelica.Math.Vectors.normalize(
                                          n)*lineLength,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;

    equation 
      frame_a.f = zeros(3);
      frame_a.t = zeros(3);

    end FixedArrow;

* * * * *

![image42](Modelica.Mechanics.MultiBody.Visualizers.SignalArrowI.png) [Modelica.Mechanics.MultiBody.Visualizers](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers).SignalArrow
====================================================================================================================================================================================================================

**Visualizing an arrow with dynamically varying size in frame\_a based
on input signal**

Information
-----------

::

Model **SignalArrow** defines an arrow that is dynamically visualized at
the location where its frame\_a is attached. The position vector from
the tail to the head of the arrow, resolved in frame\_a, is defined via
the signal vector of the connector **r\_head** (Real r\_head[3]):

The tail of the arrow is defined with parameter **r\_tail** with respect
to frame\_a (vector from the origin of frame\_a to the arrow tail).

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer)
(Base model for visualizers (has a frame\_a on the left side + outer
world + assert to guarantee that the component is connected)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name   Default    Description
  ----------------------------------- ------ ---------- -------------------
  Boolean                             animat true       = true, if
                                      ion               animation shall be
                                                        enabled

  if animation = true                                   

  [Position](Modelica_SIunits.html#Mo r\_tai {0,0,0}    Vector from
  delica.SIunits.Position)            l[3]              frame\_a to arrow
                                                        tail, resolved in
                                                        frame\_a [m]

  [Diameter](Modelica_SIunits.html#Mo diamet world.defa Diameter of arrow
  delica.SIunits.Diameter)            er     ultArrowDi line [m]
                                             ameter     

  [Color](Modelica_Mechanics_MultiBod color  {0,0,255}  Color of arrow
  y_Types.html#Modelica.Mechanics.Mul                   
  tiBody.Types.Color)                                   

  [SpecularCoefficient](Modelica_Mech specul world.defa Reflection of
  anics_MultiBody_Types.html#Modelica arCoef ultSpecula ambient light (= 0:
  .Mechanics.MultiBody.Types.Specular ficien rCoeffic.. light is completely
  Coefficient)                        t      .          absorbed)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- -----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBo frame Coordinate system in which
  dy_Interfaces.html#Modelica.Mechanics \_a   visualization data is
  .MultiBody.Interfaces.Frame_a)              resolved

  input                                 r\_he Position vector from origin
  [RealInput](Modelica_Blocks_Interface ad[3] of frame\_a to head of arrow,
  s.html#Modelica.Blocks.Interfaces.Rea       resolved in frame\_a [m]
  lInput)                                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SignalArrow 
      "Visualizing an arrow with dynamically varying size in frame_a based on input signal"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;

      extends Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer;
      parameter Boolean animation=true "= true, if animation shall be enabled";
      input SI.Position r_tail[3]={0,0,0} 
        "Vector from frame_a to arrow tail, resolved in frame_a";
      input SI.Diameter diameter=world.defaultArrowDiameter 
        "Diameter of arrow line";
      input Modelica.Mechanics.MultiBody.Types.Color color={0,0,255} 
        "Color of arrow";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

      Modelica.Blocks.Interfaces.RealInput r_head[3](each final quantity="Position", each final 
                unit =                                                                               "m") 
        "Position vector from origin of frame_a to head of arrow, resolved in frame_a";

    protected 
      Visualizers.Advanced.Arrow arrow(
        R=frame_a.R,
        r=frame_a.r_0,
        r_tail=r_tail,
        r_head=r_head,
        diameter=diameter,
        color=color,
        specularCoefficient=specularCoefficient) if world.enableAnimation and animation;
    equation 
      frame_a.f = zeros(3);
      frame_a.t = zeros(3);

    end SignalArrow;

* * * * *

![image43](Modelica.Mechanics.MultiBody.Visualizers.GroundI.png) [Modelica.Mechanics.MultiBody.Visualizers](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers).Ground
==========================================================================================================================================================================================================

**Visualizing the ground (box in z=0)**

Information
-----------

::

This shape visualizes the x-y plane by a box

> ![image44](../Resources/Images/MultiBody/Visualizers/Ground.png)

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                              Name  Defa Description
                                          ult  
  --------------------------------- ----- ---- ---------------------------
  Boolean                           anima true = true, if animation of
                                    tion       ground shall be enabled

  [Position](Modelica_SIunits.html# lengt 10   Length and width of box
  Modelica.SIunits.Position)        h          (center is at x=y=0) [m]

  [Position](Modelica_SIunits.html# heigh 0.02 Height of box (upper
  Modelica.SIunits.Position)        t          surface is at z=0, lower
                                               surface is at z=-height)
                                               [m]

  [Color](Modelica_Mechanics_MultiB groun {0,2 Color of box
  ody_Types.html#Modelica.Mechanics dColo 55,0 
  .MultiBody.Types.Color)           r     }    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Ground "Visualizing the ground (box in z=0)"
       parameter Boolean animation=true 
        "= true, if animation of ground shall be enabled";
       parameter Modelica.SIunits.Position length = 10 
        "Length and width of box (center is at x=y=0)";
       parameter Modelica.SIunits.Position height = 0.02 
        "Height of box (upper surface is at z=0, lower surface is at z=-height)";
       parameter Modelica.Mechanics.MultiBody.Types.Color groundColor={0,255,0} 
        "Color of box";

       Modelica.Mechanics.MultiBody.Visualizers.FixedShape ground(
         lengthDirection={1,0,0},
         widthDirection={0,1,0},
         animation=animation,
         r_shape={-length/2,0,-height},
         length=length,
         height=height,
         color=groundColor,
         width=length);
       Modelica.Mechanics.MultiBody.Parts.Fixed fixed;
    equation 

       connect(fixed.frame_b, ground.frame_a);
    end Ground;

* * * * *

![image45](Modelica.Mechanics.MultiBody.Visualizers.TorusI.png) [Modelica.Mechanics.MultiBody.Visualizers](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers).Torus
========================================================================================================================================================================================================

**Visualizing a torus**

Information
-----------

::

Model **Torus** visualizes a torus. The center of the torus is located
at connector frame\_a (visualized by the red coordinate system in the
figure below). The left image below shows a torus with ri=0.5 m and ro =
0.2 m. The right images below shows the torus with the additional
parameter settings:

    opening    =   45 degree
    startAngle = -135 degree
    stopAngle  =  135 degree

> ![image46](../Resources/Images/MultiBody/Visualizers/Torus.png)

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer)
(Base model for visualizers (has a frame\_a on the left side + outer
world + assert to guarantee that the component is connected)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name    Defaul Description
                                                t      
  ------------------------------------- ------- ------ --------------------
  Boolean                               animati true   = true, if animation
                                        on             shall be enabled

  [Radius](Modelica_SIunits.html#Modeli ri      0.5    Inner radius of
  ca.SIunits.Radius)                                   torus [m]

  [Radius](Modelica_SIunits.html#Modeli ro      0.1    Outer radius of
  ca.SIunits.Radius)                                   torus (=width/2) [m]

  [Angle](Modelica_SIunits.html#Modelic opening 0      Opening angle of
  a.SIunits.Angle)                                     torus [rad]

  [Angle](Modelica_SIunits.html#Modelic startAn -3.141 Start angle of torus
  a.SIunits.Angle)                      gle     592653 slice [rad]
                                                5898   

  [Angle](Modelica_SIunits.html#Modelic stopAng 3.1415 End angle of torus
  a.SIunits.Angle)                      le      926535 slice [rad]
                                                898    

  Material properties                                  

  Boolean                               wirefra false  = true: 3D model
                                        me             will be displayed
                                                       without faces

  [RealColor](Modelica_Mechanics_MultiB color   {0,128 Color of surface
  ody_Types.html#Modelica.Mechanics.Mul         ,255}  
  tiBody.Types.RealColor)                              

  [SpecularCoefficient](Modelica_Mechan specula 0.7    Reflection of
  ics_MultiBody_Types.html#Modelica.Mec rCoeffi        ambient light (= 0:
  hanics.MultiBody.Types.SpecularCoeffi cient          light is completely
  cient)                                               absorbed)

  Real                                  transpa 0      Transparency of
                                        rency          shape: 0 (= opaque)
                                                       ... 1 (= fully
                                                       transparent)

  **Discretization**                                   

  Integer                               n\_ri   40     Number of points
                                                       along ri

  Integer                               n\_ro   20     Number of points
                                                       along ro
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name  Description
  ------------------------------------------ ----- ------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_In frame Coordinate system in
  terfaces.html#Modelica.Mechanics.MultiBody \_a   which visualization data
  .Interfaces.Frame_a)                             is resolved
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Torus "Visualizing a torus"
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer;

      parameter Boolean animation=true "= true, if animation shall be enabled";

      parameter Modelica.SIunits.Radius ri=0.5 "Inner radius of torus";
      parameter Modelica.SIunits.Radius ro=0.1 "Outer radius of torus (=width/2)";
      parameter Modelica.SIunits.Angle opening=0 "Opening angle of torus";
      parameter Modelica.SIunits.Angle startAngle=-3.1415926535898 
        "Start angle of torus slice";
      parameter Modelica.SIunits.Angle stopAngle=3.1415926535898 
        "End angle of torus slice";
      parameter Boolean wireframe=false 
        "= true: 3D model will be displayed without faces";
      input Modelica.Mechanics.MultiBody.Types.RealColor color={0,128,255} 
        "Color of surface";
      input Types.SpecularCoefficient specularCoefficient = 0.7 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      input Real transparency=0 
        "Transparency of shape: 0 (= opaque) ... 1 (= fully transparent)";
      parameter Integer n_ri=40 "Number of points along ri";
      parameter Integer n_ro=20 "Number of points along ro";

    protected 
      Advanced.Surface surface( redeclare function surfaceCharacteristic =
            Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristics.torus
            (   ri=ri, ro=ro, opening=opening, startAngle=startAngle, stopAngle=stopAngle),
              nu=n_ri,
              nv=n_ro,
              multiColoredSurface=false,
              wireframe=wireframe,
              color=color,
              specularCoefficient=specularCoefficient,
              transparency=transparency,
        R=frame_a.R,
        r_0=frame_a.r_0) if world.enableAnimation and animation;
    equation 
      // No forces and torques
      frame_a.f = zeros(3);
      frame_a.t = zeros(3);
    end Torus;

* * * * *

![image47](Modelica.Mechanics.MultiBody.Visualizers.VoluminousWheelI.png) [Modelica.Mechanics.MultiBody.Visualizers](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers).VoluminousWheel
============================================================================================================================================================================================================================

**Visualizing a voluminous wheel**

Information
-----------

::

Model **VoluminousWheel** provides a simple visualization of a tire
using a torus and a pipe shape object. The center of the wheel is
located at connector frame\_a (visualized by the red coordinate system
in the figure below).

> ![image48](../Resources/Images/MultiBody/Visualizers/VoluminousWheel.png)

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer)
(Base model for visualizers (has a frame\_a on the left side + outer
world + assert to guarantee that the component is connected)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name    Defa Description
                                                 ult  
  -------------------------------------- ------- ---- ---------------------
  Boolean                                animati true = true, if animation
                                         on           shall be enabled

  [Radius](Modelica_SIunits.html#Modelic rTire   0.25 Radius of the tire
  a.SIunits.Radius)                                   [m]

  [Radius](Modelica_SIunits.html#Modelic rRim    0.14 Radius of the rim [m]
  a.SIunits.Radius)                                   

  [Radius](Modelica_SIunits.html#Modelic width   0.25 Width of the tire [m]
  a.SIunits.Radius)                                   

  [Radius](Modelica_SIunits.html#Modelic rCurvat 0.30 Radius of the
  a.SIunits.Radius)                      ure          curvature of the tire
                                                      [m]

  Material properties                                 

  [RealColor](Modelica_Mechanics_MultiBo color   {64, Color of tire
  dy_Types.html#Modelica.Mechanics.Multi         64,6 
  Body.Types.RealColor)                          4}   

  [SpecularCoefficient](Modelica_Mechani specula 0.5  Reflection of ambient
  cs_MultiBody_Types.html#Modelica.Mecha rCoeffi      light (= 0: light is
  nics.MultiBody.Types.SpecularCoefficie cient        completely absorbed)
  nt)                                                 

  **Discretization**                                  

  Integer                                n\_rTir 40   Number of points
                                         e            along rTire

  Integer                                n\_rCur 20   Number of points
                                         vature       along rCurvature
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name  Description
  ------------------------------------------ ----- ------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_In frame Coordinate system in
  terfaces.html#Modelica.Mechanics.MultiBody \_a   which visualization data
  .Interfaces.Frame_a)                             is resolved
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VoluminousWheel "Visualizing a voluminous wheel"
      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer;

      parameter Boolean animation=true "= true, if animation shall be enabled";

      parameter SI.Radius rTire=0.25 "Radius of the tire";
      parameter SI.Radius rRim= 0.14 "Radius of the rim";
      parameter SI.Radius width=0.25 "Width of the tire";
      parameter SI.Radius rCurvature=0.30 "Radius of the curvature of the tire";

      parameter Modelica.Mechanics.MultiBody.Types.RealColor color={64,64,64} 
        "Color of tire";
      parameter Types.SpecularCoefficient specularCoefficient = 0.5 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      parameter Integer n_rTire=40 "Number of points along rTire";
      parameter Integer n_rCurvature=20 "Number of points along rCurvature";

    protected 
      parameter SI.Radius rw = (width/2);
      parameter SI.Radius rCurvature2 = if rCurvature > rw then rCurvature else rw;
      parameter SI.Radius h =     sqrt(1-(rw/rCurvature2)*(rw/rCurvature2))*rCurvature2;
      parameter SI.Radius ri =    rTire-rCurvature2;
      parameter SI.Radius rRim2 = if rRim < 0 then 0 else if rRim > ri+h then ri+h else rRim;

        Visualizers.Advanced.Shape pipe(
          shapeType="pipe",
          color=color,
          length= width,
          width=2*(ri+h),
          height=2*(ri+h),
          lengthDirection={0,1,0},
          widthDirection={0,0,1},
          extra=(rRim2)/(ri+h),
          r=frame_a.r_0,
          r_shape= -{0,1,0}*(width/2),
          R= frame_a.R,
          specularCoefficient = specularCoefficient) if world.enableAnimation and animation;

        Visualizers.Advanced.Surface torus(redeclare function surfaceCharacteristic
          = Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristics.torus
            (     ri=ri,
                  ro=rCurvature2,
                  opening=Modelica.Constants.pi - Modelica.Math.asin(rw/rCurvature2)),
              nu=n_rTire,
              nv=n_rCurvature,
              multiColoredSurface=false,
              wireframe=false,
              color=color,
              specularCoefficient=specularCoefficient,
              transparency=0,
              R=frame_a.R,
              r_0=frame_a.r_0) if world.enableAnimation and animation;

    equation 
      // No forces and torques
      frame_a.f = zeros(3);
      frame_a.t = zeros(3);
    end VoluminousWheel;

* * * * *

![image49](Modelica.Mechanics.MultiBody.Visualizers.PipeWithScalarFieldI.png) [Modelica.Mechanics.MultiBody.Visualizers](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers).PipeWithScalarField
====================================================================================================================================================================================================================================

**Visualizing a pipe with scalar field quantities along the pipe axis**

Information
-----------

::

Model **PipeWithScalarField** visualizes a pipe and a scalar field along
the pipe axis. The latter is shown by mapping the scalar field to color
values with a color map and utilizing this color at the perimeter
associated with the corresponding axis location. Typically the scalar
field value is a temperature, but might be also another quantity.
Predefined color maps are available from
[MultiBody.Visualizers.Colors.ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps)
and can be selected via parameter "colorMap". A color map with the
corresponding scalar field values can be exported as vector-graphics in
svg-format with function
[MultiBody.Visualizers.Colors.colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg).
Connecter frame\_a of this component is located in the center of the
circle at the left side of the pipe and the pipe axis is oriented along
the x-axis of frame\_a, see figure below in which frame\_a is visualized
with a coordinate system:

> ![image50](../Resources/Images/MultiBody/Visualizers/PipeWithScalarField.png)

The color coding is shown in the next figure. It was generated with
[MultiBody.Visualizers.Colors.colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg)
using the following call:

>     colorMapToSvg(Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMap.jet(),
>                   height=50, nScalars=6, T_max=100, caption="Temperature in C");
>
> ![image51](../Resources/Images/MultiBody/Visualizers/PipeWithScalarField-ColorMap.png)

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer)
(Base model for visualizers (has a frame\_a on the left side + outer
world + assert to guarantee that the component is connected)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name   Default   Description
  ---------------------------------- ------ --------- ---------------------
  Boolean                            animat true      = true, if animation
                                     ion              shall be enabled

  [Radius](Modelica_SIunits.html#Mod rOuter           Outer radius of pipe
  elica.SIunits.Radius)                               [m]

  [Length](Modelica_SIunits.html#Mod length           Length of pipe [m]
  elica.SIunits.Length)                               

  Real                               xsi[:] Modelica. [:] Relative position
                                            Math.Vect along the pipe with
                                            ors.relNo x[1] = 0, x[end] = 1
                                            d...      

  Real                               T[size           [:] Scalar values at
                                     (xsi,            position xsi\*length
                                     1)]              (will be visualized
                                                      by color)

  Real                               T\_min           Minimum value of T
                                                      that corresponds to
                                                      colorMap[1,:]

  Real                               T\_max           Maximum value of T
                                                      that corresponds to
                                                      colorMap[end,:]

  Color coding                                        

  Integer                            n\_col 64        Number of colors in
                                     ors              the colorMap

  [SpecularCoefficient](Modelica_Mec specul 0.7       Reflection of ambient
  hanics_MultiBody_Types.html#Modeli arCoef           light (= 0: light is
  ca.Mechanics.MultiBody.Types.Specu ficien           completely absorbed)
  larCoefficient)                    t                

  Real                               transp 0         Transparency of
                                     arency           shape: 0 (= opaque)
                                                      ... 1 (= fully
                                                      transparent)

  **Discretization**                                  

  Integer                            n\_rOu 30        Number of points
                                     ter              along outer radius

  Integer                            n\_len 20        Number of points
                                     gth              along length
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name  Description
  ------------------------------------------ ----- ------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_In frame Coordinate system in
  terfaces.html#Modelica.Mechanics.MultiBody \_a   which visualization data
  .Interfaces.Frame_a)                             is resolved
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PipeWithScalarField 
      "Visualizing a pipe with scalar field quantities along the pipe axis"
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer;

      parameter Boolean animation=true "= true, if animation shall be enabled";

      parameter Modelica.SIunits.Radius rOuter "Outer radius of pipe";
      parameter Modelica.SIunits.Length length "Length of pipe";

      parameter Real xsi[:](min=0,max=1)= Modelica.Math.Vectors.relNodePositions(12) 
        "[:] Relative position along the pipe with x[1] = 0, x[end] = 1";
      input Real T[size(xsi,1)] 
        "[:] Scalar values at position xsi*length (will be visualized by color)";
      parameter Real T_min "Minimum value of T that corresponds to colorMap[1,:]";
      parameter Real T_max "Maximum value of T that corresponds to colorMap[end,:]";
      replaceable function colorMap =
          Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps.jet
            constrainedby Modelica.Mechanics.MultiBody.Interfaces.partialColorMap 
        "Function defining the color map";

      parameter Integer n_colors=64 "Number of colors in the colorMap";
      parameter Types.SpecularCoefficient specularCoefficient = 0.7 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      parameter Real transparency=0 
        "Transparency of shape: 0 (= opaque) ... 1 (= fully transparent)";

      parameter Integer n_rOuter=30 "Number of points along outer radius";
      parameter Integer n_length=20 "Number of points along length";

    protected 
      Advanced.PipeWithScalarField pipe(redeclare function colorMap = colorMap,
             rOuter=rOuter,
             length=length,
             xsi=xsi,
             T=T,
             T_min=T_min,
             T_max=T_max,
             n_colors=n_colors,
             n_rOuter=n_rOuter,
             n_length=n_length,
             specularCoefficient=specularCoefficient,
             transparency=transparency,
             R=frame_a.R,
             r_0=frame_a.r_0) if world.enableAnimation and animation;
    equation 
      // No forces and torques
      frame_a.f = zeros(3);
      frame_a.t = zeros(3);

    end PipeWithScalarField;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:40 2010.
