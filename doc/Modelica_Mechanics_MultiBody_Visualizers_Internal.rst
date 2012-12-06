=================================================
Modelica.Mechanics.MultiBody.Visualizers.Internal
=================================================

`Modelica.Mechanics.MultiBody.Visualizers <Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers>`_.Internal
---------------------------------------------------------------------------------------------------------------------------------------------

**Visualizers that will be replaced by improved versions in the future
(don't use them)**

Information
~~~~~~~~~~~

::

This package contains components to construct 3-dim. fonts with
"cylinder" elements for the animation window. This is just a temporary
hack until 3-dim. fonts are supported in Modelica tools. The components
are used to construct the "x", "y", "z" labels of coordinates systems in
the animation.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                 | Description                                                                                                         |
+======================================================================================================================================================================================================+=====================================================================================================================+
| |image2| `FixedLines <Modelica_Mechanics_MultiBody_Visualizers_Internal.html#Modelica.Mechanics.MultiBody.Visualizers.Internal.FixedLines>`_                                                         | Visualizing a set of lines as cylinders (e.g., used to display characters)                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+
| |image3| `Lines <Modelica_Mechanics_MultiBody_Visualizers_Internal.html#Modelica.Mechanics.MultiBody.Visualizers.Internal.Lines>`_                                                                   | Visualizing a set of lines as cylinders with variable size, e.g., used to display characters (no Frame connector)   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------+

--------------

|image4| `Modelica.Mechanics.MultiBody.Visualizers.Internal <Modelica_Mechanics_MultiBody_Visualizers_Internal.html#Modelica.Mechanics.MultiBody.Visualizers.Internal>`_.FixedLines
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Visualizing a set of lines as cylinders (e.g., used to display
characters)**

.. figure:: Modelica.Mechanics.MultiBody.Visualizers.Internal.FixedLinesD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Visualizers.Internal.FixedLines

   Modelica.Mechanics.MultiBody.Visualizers.Internal.FixedLines

Information
~~~~~~~~~~~

::

With model **FixedLines** a set of lines is defined that are located
relatively to frame\_a. Every line is represented by a cylinder. This
allows to define simple shaped 3-dimensional characters. An example is
shown in the following figure:

.. figure:: ../Resources/Images/MultiBody/FixedLines.png
   :align: center
   :alt: model Visualizers.FixedLines

   model Visualizers.FixedLines
 The two letters "x" and "y" are constructed with 4 lines by providing
the following data for parameter **lines**

::

       lines = {[0, 0; 1, 1],[0, 1; 1, 0],[1.5, -0.5; 2.5, 1],[1.5, 1; 2, 0.25]}

Via parameter vectors **n\_x** and **n\_y** a two-dimensional coordinate
system is defined. The points defined with parameter **lines** are with
respect to this coordinate system. For example "[0, 0; 1, 1]" defines a
line that starts at {0,0} and ends at {1,1}. The diameter and color of
all line cylinders are identical.

::

Extends from
`Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizer>`_
(Base model for visualizers (has a frame\_a on the left side + outer
world + assert to guarantee that the component is connected)).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                           | Description                                                                                            |
+===========================================================================================================================+=======================+===================================+========================================================================================================+
| Boolean                                                                                                                   | animation             | true                              | = true, if animation shall be enabled                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------+
| if animation = true                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | scale                 | 1                                 | The 'lines' are visualized 'scale' times bigger                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | lines[:, 2, 2]        | {[0, 0; 1, 1],[0, 1; 1, 0]}       | List of start and end points of cylinders resolved along n\_x and n\_y [m]                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------+
| `Distance <Modelica_SIunits.html#Modelica.SIunits.Distance>`_                                                             | diameter              | 0.05                              | Diameter of the cylinders defined by lines [m]                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_lines[3]           | {0,0,0}                           | Position vector from origin of frame\_a to the origin of the 'lines' frame, resolved in frame\_a [m]   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | n\_x[3]               | {1,0,0}                           | Vector in direction of x-axis of 'lines' frame, resolved in frame\_a. [1]                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | n\_y[3]               | {0,1,0}                           | Vector in direction of y-axis of 'lines' frame, resolved in frame\_a. [1]                              |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                 | {0,128,255}                       | Color of cylinders                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | world.defaultSpecularCoeffic...   | Reflection of ambient light (= 0: light is completely absorbed)                                        |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+--------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+-------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                 |
+==============================================================================================================+============+=============================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system in which visualization data is resolved   |
+--------------------------------------------------------------------------------------------------------------+------------+-------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image5| `Modelica.Mechanics.MultiBody.Visualizers.Internal <Modelica_Mechanics_MultiBody_Visualizers_Internal.html#Modelica.Mechanics.MultiBody.Visualizers.Internal>`_.Lines
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Visualizing a set of lines as cylinders with variable size, e.g., used
to display characters (no Frame connector)**

Information
~~~~~~~~~~~

::

With model **Lines** a set of dynamic lines is defined that are located
relatively to frame\_a. Every line is represented by a cylinder. This
allows, e.g., to define simple shaped 3-dimensional characters. Note, if
the lines are fixed relatively to frame\_a, it is more convenient to use
model **Visualizers.FixedLines**. An example for dynamic lines is shown
in the following figure:

.. figure:: ../Resources/Images/MultiBody/FixedLines.png
   :align: center
   :alt: model Visualizers.FixedLines

   model Visualizers.FixedLines
 The two letters "x" and "y" are constructed with 4 lines by providing
the following data for input variable **lines**

::

       lines = {[0, 0; 1, 1],[0, 1; 1, 0],[1.5, -0.5; 2.5, 1],[1.5, 1; 2, 0.25]}

Via vectors **n\_x** and **n\_y** a two-dimensional coordinate system is
defined. The points defined with variable **lines** are with respect to
this coordinate system. For example "[0, 0; 1, 1]" defines a line that
starts at {0,0} and ends at {1,1}. The diameter and color of all line
cylinders are identical and are defined by parameters.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                 | Description                                                                                                                              |
+===========================================================================================================================+=======================+=========================+==========================================================================================================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_                 | R                     | Frames.nullRotation()   | Orientation object to rotate the world frame into the object frame                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r[3]                  | {0,0,0}                 | Position vector from origin of world frame to origin of object frame, resolved in world frame [m]                                        |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_lines[3]           | {0,0,0}                 | Position vector from origin of object frame to the origin of 'lines' frame, resolved in object frame [m]                                 |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | n\_x[3]               | {1,0,0}                 | Vector in direction of x-axis of 'lines' frame, resolved in object frame [1]                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | n\_y[3]               | {0,1,0}                 | Vector in direction of y-axis of 'lines' frame, resolved in object frame [1]                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | lines[:, 2, 2]        | zeros(0, 2, 2)          | List of start and end points of cylinders resolved in an x-y frame defined by n\_x, n\_y, e.g., {[0,0;1,1], [0,1;1,0], [2,0; 3,1]} [m]   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | diameter              | 0.05                    | Diameter of the cylinders defined by lines [m]                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                               | color                 | {0,128,255}             | Color of cylinders                                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | 0.7                     | Reflection of ambient light (= 0: light is completely absorbed)                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:40
2010.

.. |Modelica.Mechanics.MultiBody.Visualizers.Internal.FixedLines| image:: Modelica.Mechanics.MultiBody.Visualizers.Internal.FixedLinesS.png
.. |Modelica.Mechanics.MultiBody.Visualizers.Internal.Lines| image:: Modelica.Mechanics.MultiBody.Visualizers.Internal.LinesS.png
.. |image2| image:: Modelica.Mechanics.MultiBody.Visualizers.Internal.FixedLinesS.png
.. |image3| image:: Modelica.Mechanics.MultiBody.Visualizers.Internal.LinesS.png
.. |image4| image:: Modelica.Mechanics.MultiBody.Visualizers.Internal.FixedLinesI.png
.. |image5| image:: Modelica.Mechanics.MultiBody.Visualizers.Internal.LinesI.png
