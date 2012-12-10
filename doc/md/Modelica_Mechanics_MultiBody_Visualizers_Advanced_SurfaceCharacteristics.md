% Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristics
% 
% 

[Modelica.Mechanics.MultiBody.Visualizers.Advanced](Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced).SurfaceCharacteristics
====================================================================================================================================================================================

**Functions returning surface descriptions**

Information
-----------

::

This package contains functions that are used to define parameterized
surfaces for use with the
[Surface](Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.Surface)
model.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                              Description
  ------------------------------------------------- ----------------------
  ![image2](Modelica.Mechanics.MultiBody.Visualizer Function defining the
  s.Advanced.SurfaceCharacteristics.torusS.png)     surface characteristic
  [torus](Modelica_Mechanics_MultiBody_Visualizers_ of a torus
  Advanced_SurfaceCharacteristics.html#Modelica.Mec 
  hanics.MultiBody.Visualizers.Advanced.SurfaceChar 
  acteristics.torus)                                

  ![image3](Modelica.Mechanics.MultiBody.Visualizer Function defining the
  s.Advanced.SurfaceCharacteristics.torusS.png)     surface characteristic
  [pipeWithScalarField](Modelica_Mechanics_MultiBod of a pipe where a
  y_Visualizers_Advanced_SurfaceCharacteristics.htm scalar field value is
  l#Modelica.Mechanics.MultiBody.Visualizers.Advanc displayed with color
  ed.SurfaceCharacteristics.pipeWithScalarField)    along the pipe axis
  ------------------------------------------------------------------------

* * * * *

[Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristics](Modelica_Mechanics_MultiBody_Visualizers_Advanced_SurfaceCharacteristics.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristics).torus
========================================================================================================================================================================================================================================

**Function defining the surface characteristic of a torus**

Information
-----------

::

Function **torus** computes the X,Y,Z arrays to visualize a torus with
model
[Torus](Modelica_Mechanics_MultiBody_Visualizers.html#Modelica.Mechanics.MultiBody.Visualizers.Torus).
The left image below shows a torus with ri=0.5 m and ro = 0.2 m. The
right images below shows the torus with the additional parameter
settings:

    opening    =   45 degree
    startAngle = -135 degree
    stopAngle  =  135 degree

> ![image4](../Resources/Images/MultiBody/Visualizers/Torus.png)

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic).

Inputs
------

  -------------------------------------------------------------------------
  Type                        Name       Default     Description
  --------------------------- ---------- ----------- ----------------------
  Integer                     nu                     Number of points in
                                                     u-Dimension

  Integer                     nv                     Number of points in
                                                     v-Dimension

  Boolean                     multiColor false       = true: Color is
                              edSurface              defined for each
                                                     surface point

  [Radius](Modelica_SIunits.h ri         1           Inner radius of torus
  tml#Modelica.SIunits.Radius                        [m]
  )                                                  

  [Radius](Modelica_SIunits.h ro         0.2         Outer radius of torus
  tml#Modelica.SIunits.Radius                        (=width/2) [m]
  )                                                  

  [Angle](Modelica_SIunits.ht opening    0           Opening angle of torus
  ml#Modelica.SIunits.Angle)                         [rad]

  [Angle](Modelica_SIunits.ht startAngle -Modelica.C Start angle of torus
  ml#Modelica.SIunits.Angle)             onstants.pi slice [rad]

  [Angle](Modelica_SIunits.ht stopAngle  Modelica.Co End angle of torus
  ml#Modelica.SIunits.Angle)             nstants.pi  slice [rad]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                 Name                        Description
  -------------------- --------------------------- ------------------------
  [Position](Modelica_ X[nu, nv]                   [nu,nv] positions of
  SIunits.html#Modelic                             points in x-Direction
  a.SIunits.Position)                              resolved in surface
                                                   frame [m]

  [Position](Modelica_ Y[nu, nv]                   [nu,nv] positions of
  SIunits.html#Modelic                             points in y-Direction
  a.SIunits.Position)                              resolved in surface
                                                   frame [m]

  [Position](Modelica_ Z[nu, nv]                   [nu,nv] positions of
  SIunits.html#Modelic                             points in z-Direction
  a.SIunits.Position)                              resolved in surface
                                                   frame [m]

  Real                 C[if multiColoredSurface    [nu,nv,3] Color array,
                       then nu else 0, if          defining the color for
                       multiColoredSurface then nv each surface point
                       else 0, 3]                  
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function torus 
      "Function defining the surface characteristic of a torus"
      extends Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic(
                final multiColoredSurface=false);
      input Modelica.SIunits.Radius ri=1 "Inner radius of torus";
      input Modelica.SIunits.Radius ro=0.2 "Outer radius of torus (=width/2)";
      input Modelica.SIunits.Angle opening=0 "Opening angle of torus";
      input Modelica.SIunits.Angle startAngle= -Modelica.Constants.pi 
        "Start angle of torus slice";
      input Modelica.SIunits.Angle stopAngle= Modelica.Constants.pi 
        "End angle of torus slice";
    protected 
      Modelica.SIunits.Angle alpha;
      Modelica.SIunits.Angle beta;
      Modelica.SIunits.Angle phi_start;
      Modelica.SIunits.Angle phi_stop;
    algorithm 
      phi_start :=-Modelica.Constants.pi + opening;
      phi_stop  :=Modelica.Constants.pi - opening;
      for i in 1:nu loop
          alpha := startAngle + (stopAngle-startAngle)*(i-1)/(nu-1);
          for j in 1:nv loop
              beta := phi_start + (phi_stop-phi_start)*(j-1)/(nv-1);
              X[i,j] := (ri + ro*cos(beta))*sin(alpha);
              Y[i,j] := ro*sin(beta);
              Z[i,j] := (ri + ro*cos(beta))*cos(alpha);
          end for;
      end for;
    end torus;

* * * * *

[Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristics](Modelica_Mechanics_MultiBody_Visualizers_Advanced_SurfaceCharacteristics.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.SurfaceCharacteristics).pipeWithScalarField
======================================================================================================================================================================================================================================================

**Function defining the surface characteristic of a pipe where a scalar
field value is displayed with color along the pipe axis**

Information
-----------

::

Function **pipeWithScalarField** computes the X,Y,Z,C arrays in order to
visualize a pipe and a scalar field along the pipe axis with model
[PipeWithScalarField](Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.PipeWithScalarField).
The latter is shown by mapping scalar field to color values with a color
map and utilizing this color at the perimeter associated with the
corresponding axis location. Typically the scalar field value is a
temperature, but might be also another quantity. Predefined color maps
are available from
[MultiBody.Visualizers.Colors.ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps)
and can be selected via input argument "colorMap". A color map with the
corresponding scalar field values can be exported as vector-graphics in
svg-format with function
[MultiBody.Visualizers.Colors.colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg).
An example is shown in the next figure:

> ![image5](../Resources/Images/MultiBody/Visualizers/PipeWithScalarField.png)

The color coding is shown in the next figure. It was generated with
[Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg](Modelica_Mechanics_MultiBody_Visualizers_Colors.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg)
using the following call:

>     colorMapToSvg(Modelica.Mechanics.MultiBody.Visualizer.Colors.ColorMap.jet(),
>                   height=50, nScalars=6, T_max=100, heading="Temperature in C");
>
> ![image6](../Resources/Images/MultiBody/Visualizers/PipeWithScalarField-ColorMap.png)

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic).

Inputs
------

  --------------------------------------------------------------------------
  Type                         Name       Defau Description
                                          lt    
  ---------------------------- ---------- ----- ----------------------------
  Integer                      nu               Number of points in
                                                u-Dimension

  Integer                      nv               Number of points in
                                                v-Dimension

  Boolean                      multiColor true  = true: Color is defined for
                               edSurface        each surface point

  [Radius](Modelica_SIunits.ht rOuter           Outer radius of cylinder [m]
  ml#Modelica.SIunits.Radius)                   

  [Length](Modelica_SIunits.ht length           Length of cylinder [m]
  ml#Modelica.SIunits.Length)                   

  [Position](Modelica_SIunits. xsi[:]           Relative position along the
  html#Modelica.SIunits.Positi                  pipe with x[1] = 0, x[end] =
  on)                                           1 [m]

  Real                         T[size(xsi       Scalar field value at
                               ,                position xsi\*length
                               1)]              

  Real                         T\_min           T <= T\_min is mapped to
                                                colorMap[1,:]

  Real                         T\_max           T \>= T\_max is mapped to
                                                colorMap[end,:]

  Real                         colorMap[:       Color map to map scalar T to
                               ,                a corresponding color
                               3]               
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                 Name                        Description
  -------------------- --------------------------- ------------------------
  [Position](Modelica_ X[nu, nv]                   [nu,nv] positions of
  SIunits.html#Modelic                             points in x-Direction
  a.SIunits.Position)                              resolved in surface
                                                   frame [m]

  [Position](Modelica_ Y[nu, nv]                   [nu,nv] positions of
  SIunits.html#Modelic                             points in y-Direction
  a.SIunits.Position)                              resolved in surface
                                                   frame [m]

  [Position](Modelica_ Z[nu, nv]                   [nu,nv] positions of
  SIunits.html#Modelic                             points in z-Direction
  a.SIunits.Position)                              resolved in surface
                                                   frame [m]

  Real                 C[if multiColoredSurface    [nu,nv,3] Color array,
                       then nu else 0, if          defining the color for
                       multiColoredSurface then nv each surface point
                       else 0, 3]                  
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function pipeWithScalarField 
      "Function defining the surface characteristic of a pipe where a scalar field value is displayed with color along the pipe axis"
      import C = Modelica.Constants;
      extends Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic(
                final multiColoredSurface=true);
      input Modelica.SIunits.Radius rOuter "Outer radius of cylinder";
      input Modelica.SIunits.Length length "Length of cylinder";
      input Modelica.SIunits.Position xsi[:] 
        "Relative position along the pipe with x[1] = 0, x[end] = 1";
      input Real T[size(xsi,1)] "Scalar field value at position xsi*length";
      input Real T_min "T <= T_min is mapped to colorMap[1,:]";
      input Real T_max "T >= T_max is mapped to colorMap[end,:]";
      input Real colorMap[:,3] "Color map to map scalar T to a corresponding color";
    protected 
      Real beta;
      Real xsi_i;
      Real Ti;
      Real Ci[3];
      Integer k;
    algorithm 
      k:=1;
      for i in 1:nu loop
         // Compute actual xsi-position along cylinder axis
         xsi_i := (i-1)/(nu-1);

         // Interpolate in xsi and T to determine the corresponding value of Ti(xsi_i)
         (Ti,k) := Modelica.Math.Vectors.interpolate(xsi, T, xsi_i, k);

         // Map the scalar field value Ti to a color value
         Ci := Modelica.Mechanics.MultiBody.Visualizers.Colors.scalarToColor(
                                                  Ti, T_min, T_max, colorMap);

         // Determine outputs
         for j in 1:nv loop
            beta := 2*Modelica.Constants.pi*(j-1)/(nv-1);
            X[i,j] := length*xsi_i;
            Y[i,j] := rOuter*sin(beta);
            Z[i,j] := rOuter*cos(beta);
            C[i,j,:] := Ci;
         end for;
      end for;
    end pipeWithScalarField;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:40 2010.
