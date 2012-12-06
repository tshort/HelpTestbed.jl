% Modelica.Mechanics.MultiBody.Icons
% 
% 

[Modelica.Mechanics.MultiBody](Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody).Icons
====================================================================================================

**Icons for MultiBody package**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                             Descrip
                                                                   tion
  ---------------------------------------------------------------- -------
  ![image1](Modelica.Mechanics.MultiBody.Icons.SurfaceS.png)       Surface
  [Surface](Modelica_Mechanics_MultiBody_Icons.html#Modelica.Mecha icon
  nics.MultiBody.Icons.Surface)                                    
  ------------------------------------------------------------------------

* * * * *

![image2](Modelica.Mechanics.MultiBody.Icons.SurfaceI.png) [Modelica.Mechanics.MultiBody.Icons](Modelica_Mechanics_MultiBody_Icons.html#Modelica.Mechanics.MultiBody.Icons).Surface
===================================================================================================================================================================================

**Surface icon**

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
3 positional arrays and an optional color array, if every control point
shall have a different color:

    Real X[nu,nv], Y[nu,nv], Z[nu,nv], colorArray[nu,nv];

Models
[Torus](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers.Torus)
and
[VoluminousWheel](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers.VoluminousWheel)
demonstrate how new visualizer objects can be constructed with the
Surface model. The direct usage of the Surface model, as well as of the
Torus and the VoluminousWheel models, are demonstrated with example
[Examples.Elementary.Surfaces](Modelica_Mechanics_MultiBody_Examples_Elementary.html#Modelica.Mechanics.MultiBody.Examples.Elementary.Surfaces).

::

Modelica definition
-------------------

    model Surface "Surface icon"
    equation 

    end Surface;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:41 2010.
