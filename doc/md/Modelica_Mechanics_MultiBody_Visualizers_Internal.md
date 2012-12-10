% Modelica.Mechanics.MultiBody.Visualizers.Internal
% 
% 

[Modelica.Mechanics.MultiBody.Visualizers](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers).Internal
===========================================================================================================================================

**Visualizers that will be replaced by improved versions in the future
(don't use them)**

Information
-----------

::

This package contains components to construct 3-dim. fonts with
"cylinder" elements for the animation window. This is just a temporary
hack until 3-dim. fonts are supported in Modelica tools. The components
are used to construct the "x", "y", "z" labels of coordinates systems in
the animation.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  ![image2](Modelica.Mechanics.MultiBody.Visual Visualizing a set of lines
  izers.Internal.FixedLinesS.png)               as cylinders (e.g., used
  [FixedLines](Modelica_Mechanics_MultiBody_Vis to display characters)
  ualizers_Internal.html#Modelica.Mechanics.Mul 
  tiBody.Visualizers.Internal.FixedLines)       

  ![image3](Modelica.Mechanics.MultiBody.Visual Visualizing a set of lines
  izers.Internal.LinesS.png)                    as cylinders with variable
  [Lines](Modelica_Mechanics_MultiBody_Visualiz size, e.g., used to
  ers_Internal.html#Modelica.Mechanics.MultiBod display characters (no
  y.Visualizers.Internal.Lines)                 Frame connector)
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Mechanics.MultiBody.Visualizers.Internal.FixedLinesI.png) [Modelica.Mechanics.MultiBody.Visualizers.Internal](Modelica_Mechanics_MultiBody_Visualizers_Internal.html#Modelica.Mechanics.MultiBody.Visualizers.Internal).FixedLines
=====================================================================================================================================================================================================================================================

**Visualizing a set of lines as cylinders (e.g., used to display
characters)**

Information
-----------

::

With model **FixedLines** a set of lines is defined that are located
relatively to frame\_a. Every line is represented by a cylinder. This
allows to define simple shaped 3-dimensional characters. An example is
shown in the following figure:

the following data for parameter **lines**

    lines = {[0, 0; 1, 1],[0, 1; 1, 0],[1.5, -0.5; 2.5, 1],[1.5, 1; 2, 0.25]}

Via parameter vectors **n\_x** and **n\_y** a two-dimensional coordinate
system is defined. The points defined with parameter **lines** are with
respect to this coordinate system. For example "[0, 0; 1, 1]" defines a
line that starts at {0,0} and ends at {1,1}. The diameter and color of
all line cylinders are identical.

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer)
(Base model for visualizers (has a frame\_a on the left side + outer
world + assert to guarantee that the component is connected)).

Parameters
----------

  ------------------------------------------------------------------------
  Type                           Name  Default  Description
  ------------------------------ ----- -------- --------------------------
  Boolean                        anima true     = true, if animation shall
                                 tion           be enabled

  if animation = true                           

  Real                           scale 1        The 'lines' are visualized
                                                'scale' times bigger

  [Position](Modelica_SIunits.ht lines {[0, 0;  List of start and end
  ml#Modelica.SIunits.Position)  [:,   1,       points of cylinders
                                 2, 2] 1],[0,   resolved along n\_x and
                                       1; 1,    n\_y [m]
                                       0]}      

  [Distance](Modelica_SIunits.ht diame 0.05     Diameter of the cylinders
  ml#Modelica.SIunits.Distance)  ter            defined by lines [m]

  [Position](Modelica_SIunits.ht r\_li {0,0,0}  Position vector from
  ml#Modelica.SIunits.Position)  nes[3          origin of frame\_a to the
                                 ]              origin of the 'lines'
                                                frame, resolved in
                                                frame\_a [m]

  Real                           n\_x[ {1,0,0}  Vector in direction of
                                 3]             x-axis of 'lines' frame,
                                                resolved in frame\_a. [1]

  Real                           n\_y[ {0,1,0}  Vector in direction of
                                 3]             y-axis of 'lines' frame,
                                                resolved in frame\_a. [1]

  [Color](Modelica_Mechanics_Mul color {0,128,2 Color of cylinders
  tiBody_Types.html#Modelica.Mec       55}      
  hanics.MultiBody.Types.Color)                 

  [SpecularCoefficient](Modelica specu world.de Reflection of ambient
  _Mechanics_MultiBody_Types.htm larCo faultSpe light (= 0: light is
  l#Modelica.Mechanics.MultiBody effic cularCoe completely absorbed)
  .Types.SpecularCoefficient)    ient  ffic...  
  ------------------------------------------------------------------------

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

    model FixedLines 
      "Visualizing a set of lines as cylinders (e.g., used to display characters)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody;
      import Modelica.Mechanics.MultiBody.Types;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer;

      parameter Boolean animation=true "= true, if animation shall be enabled";
      input Real scale(min=0) = 1 "The 'lines' are visualized 'scale' times bigger";
      input SI.Position lines[:,2,2]={[0,0; 1,1],[0,1; 1,0]} 
        "List of start and end points of cylinders resolved along n_x and n_y";
      input SI.Distance diameter(min=0) = 0.05 
        "Diameter of the cylinders defined by lines";
      input SI.Position r_lines[3]={0,0,0} 
        "Position vector from origin of frame_a to the origin of the 'lines' frame, resolved in frame_a";
      input Real n_x[3](each final unit="1")={1,0,0} 
        "Vector in direction of x-axis of 'lines' frame, resolved in frame_a.";
      input Real n_y[3](each final unit="1")={0,1,0} 
        "Vector in direction of y-axis of 'lines' frame, resolved in frame_a.";
      input MultiBody.Types.Color color={0,128,255} " Color of cylinders";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      Lines x_label(
        lines=scale*lines,
        diameter=scale*diameter,
        color=color,
        specularCoefficient = specularCoefficient,
        r_lines=r_lines,
        n_x=n_x,
        n_y=n_y,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
    equation 
      frame_a.f = zeros(3);
      frame_a.t = zeros(3);
    end FixedLines;

* * * * *

![image5](Modelica.Mechanics.MultiBody.Visualizers.Internal.LinesI.png) [Modelica.Mechanics.MultiBody.Visualizers.Internal](Modelica_Mechanics_MultiBody_Visualizers_Internal.html#Modelica.Mechanics.MultiBody.Visualizers.Internal).Lines
===========================================================================================================================================================================================================================================

**Visualizing a set of lines as cylinders with variable size, e.g., used
to display characters (no Frame connector)**

Information
-----------

::

With model **Lines** a set of dynamic lines is defined that are located
relatively to frame\_a. Every line is represented by a cylinder. This
allows, e.g., to define simple shaped 3-dimensional characters. Note, if
the lines are fixed relatively to frame\_a, it is more convenient to use
model **Visualizers.FixedLines**. An example for dynamic lines is shown
in the following figure:

the following data for input variable **lines**

    lines = {[0, 0; 1, 1],[0, 1; 1, 0],[1.5, -0.5; 2.5, 1],[1.5, 1; 2, 0.25]}

Via vectors **n\_x** and **n\_y** a two-dimensional coordinate system is
defined. The points defined with variable **lines** are with respect to
this coordinate system. For example "[0, 0; 1, 1]" defines a line that
starts at {0,0} and ends at {1,1}. The diameter and color of all line
cylinders are identical and are defined by parameters.

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                         Name  Defau Description
                                     lt    
  ---------------------------- ----- ----- -------------------------------
  [Orientation](Modelica_Mecha R     Frame Orientation object to rotate
  nics_MultiBody_Frames.html#M       s.nul the world frame into the object
  odelica.Mechanics.MultiBody.       lRota frame
  Frames.Orientation)                tion( 
                                     )     

  [Position](Modelica_SIunits. r[3]  {0,0, Position vector from origin of
  html#Modelica.SIunits.Positi       0}    world frame to origin of object
  on)                                      frame, resolved in world frame
                                           [m]

  [Position](Modelica_SIunits. r\_li {0,0, Position vector from origin of
  html#Modelica.SIunits.Positi nes[3 0}    object frame to the origin of
  on)                          ]           'lines' frame, resolved in
                                           object frame [m]

  Real                         n\_x[ {1,0, Vector in direction of x-axis
                               3]    0}    of 'lines' frame, resolved in
                                           object frame [1]

  Real                         n\_y[ {0,1, Vector in direction of y-axis
                               3]    0}    of 'lines' frame, resolved in
                                           object frame [1]

  [Position](Modelica_SIunits. lines zeros List of start and end points of
  html#Modelica.SIunits.Positi [:,   (0,   cylinders resolved in an x-y
  on)                          2, 2] 2, 2) frame defined by n\_x, n\_y,
                                           e.g., {[0,0;1,1], [0,1;1,0],
                                           [2,0; 3,1]} [m]

  [Length](Modelica_SIunits.ht diame 0.05  Diameter of the cylinders
  ml#Modelica.SIunits.Length)  ter         defined by lines [m]

  [Color](Modelica_Mechanics_M color {0,12 Color of cylinders
  ultiBody_Types.html#Modelica       8,255 
  .Mechanics.MultiBody.Types.C       }     
  olor)                                    

  [SpecularCoefficient](Modeli specu 0.7   Reflection of ambient light (=
  ca_Mechanics_MultiBody_Types larCo       0: light is completely
  .html#Modelica.Mechanics.Mul effic       absorbed)
  tiBody.Types.SpecularCoeffic ient        
  ient)                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Lines 
      "Visualizing a set of lines as cylinders with variable size, e.g., used to display characters (no Frame connector)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody;
      import Modelica.Mechanics.MultiBody.Types;
      import Modelica.Mechanics.MultiBody.Frames;
      import T = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
      input Modelica.Mechanics.MultiBody.Frames.Orientation R=Frames.nullRotation() 
        "Orientation object to rotate the world frame into the object frame";
      input SI.Position r[3]={0,0,0} 
        "Position vector from origin of world frame to origin of object frame, resolved in world frame";
      input SI.Position r_lines[3]={0,0,0} 
        "Position vector from origin of object frame to the origin of 'lines' frame, resolved in object frame";
      input Real n_x[3](each final unit="1")={1,0,0} 
        "Vector in direction of x-axis of 'lines' frame, resolved in object frame";
      input Real n_y[3](each final unit="1")={0,1,0} 
        "Vector in direction of y-axis of 'lines' frame, resolved in object frame";
      input SI.Position lines[:, 2, 2]=zeros(0, 2, 2) 
        "List of start and end points of cylinders resolved in an x-y frame defined by n_x, n_y, e.g., {[0,0;1,1], [0,1;1,0], [2,0; 3,1]}";
      input SI.Length diameter(min=0) = 0.05 
        "Diameter of the cylinders defined by lines";
      input Modelica.Mechanics.MultiBody.Types.Color color={0,128,255} 
        "Color of cylinders";
      input Types.SpecularCoefficient specularCoefficient = 0.7 
        "Reflection of ambient light (= 0: light is completely absorbed)";
    protected 
      parameter Integer n=size(lines, 1) "Number of cylinders";
      T.Orientation R_rel=T.from_nxy(n_x, n_y);
      T.Orientation R_lines=T.absoluteRotation(R.T, R_rel);
      Modelica.SIunits.Position r_abs[3]=r + T.resolve1(R.T, r_lines);
      Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape cylinders[n](
        each shapeType="cylinder",
        lengthDirection={T.resolve1(R_rel, vector([lines[i, 2, :] - lines[i, 1,
             :]; 0])) for i in 1:n},
        length={Modelica.Math.Vectors.length(
                                        lines[i, 2, :] - lines[i, 1, :]) for i in 
                1:n},
        r={r_abs + T.resolve1(R_lines, vector([lines[i, 1, :]; 0])) for i in 1:
            n},
        each width=diameter,
        each height=diameter,
        each widthDirection={0,1,0},
        each color=color,
        each R=R,
        each specularCoefficient=specularCoefficient);

    end Lines;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:40 2010.
