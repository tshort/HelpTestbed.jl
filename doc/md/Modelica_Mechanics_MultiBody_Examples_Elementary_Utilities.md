% Modelica.Mechanics.MultiBody.Examples.Elementary.Utilities
% 
% 

[Modelica.Mechanics.MultiBody.Examples.Elementary](Modelica_Mechanics_MultiBody_Examples_Elementary.html#Modelica.Mechanics.MultiBody.Examples.Elementary).Utilities
====================================================================================================================================================================

**Utility models and functions used by MultiBody.Examples.Elementary**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                     Description
  -------------------------------------------------------- ---------------
  ![image2](Modelica.Mechanics.MultiBody.Examples.Elementa WGS84 normal
  ry.Utilities.theoreticalNormalGravityWGS84S.png)         gravity over
  [theoreticalNormalGravityWGS84](Modelica_Mechanics_Multi earth ellipsoid
  Body_Examples_Elementary_Utilities.html#Modelica.Mechani in negativ
  cs.MultiBody.Examples.Elementary.Utilities.theoreticalNo y-direction
  rmalGravityWGS84)                                        

  ![image3](Modelica.Mechanics.MultiBody.Examples.Elementa Function
  ry.Utilities.theoreticalNormalGravityWGS84S.png)         defining the
  [sineSurface](Modelica_Mechanics_MultiBody_Examples_Elem characteristic
  entary_Utilities.html#Modelica.Mechanics.MultiBody.Examp of a moving
  les.Elementary.Utilities.sineSurface)                    sine in three
                                                           dimensions
  ------------------------------------------------------------------------

* * * * *

[Modelica.Mechanics.MultiBody.Examples.Elementary.Utilities](Modelica_Mechanics_MultiBody_Examples_Elementary_Utilities.html#Modelica.Mechanics.MultiBody.Examples.Elementary.Utilities).theoreticalNormalGravityWGS84
======================================================================================================================================================================================================================

**WGS84 normal gravity over earth ellipsoid in negativ y-direction**

Information
-----------

::

Function that computes the theoretical gravity of the [WGS84 ellipsoid
earth
model](http://earth-info.nga.mil/GandG/publications/tr8350.2/wgs84fin.pdf)
at and close to the earth ellipsoid surface, for the given
"geodeticLatitude" and the given "height=r[2]" over the ellipsoid
surface.

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration).

Inputs
------

  ------------------------------------------------------------------------
  Type                                  Na Def Description
                                        me aul 
                                           t   
  ------------------------------------- -- --- ---------------------------
  [Position](Modelica_SIunits.html#Mode r[     Position vector from world
  lica.SIunits.Position)                3]     frame to actual point,
                                               resolved in world frame [m]

  [Angle\_deg](Modelica_SIunits_Convers ph     Geodetic latitute [deg]
  ions_NonSIunits.html#Modelica.SIunits i      
  .Conversions.NonSIunits.Angle_deg)           
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                              Name   Description
  --------------------------------- ------ -------------------------------
  [Acceleration](Modelica_SIunits.h gravit Gravity acceleration at
  tml#Modelica.SIunits.Acceleration y[3]   position r, resolved in world
  )                                        frame [m/s2]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function theoreticalNormalGravityWGS84 
      "WGS84 normal gravity over earth ellipsoid in negativ y-direction"
       extends Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration;
      input Modelica.SIunits.Conversions.NonSIunits.Angle_deg phi 
        "Geodetic latitute";
    protected 
      constant Modelica.SIunits.Position a = 6378137.0 
        "Semi-major axis of the earth ellipsoid";
      constant Modelica.SIunits.Position b = 6356752.3142 
        "Semi-minor axis of the earth ellipsoid";
      constant Modelica.SIunits.AngularAcceleration g_e = 9.7803253359 
        "Theoretical gravity acceleration at the equator";
      constant Modelica.SIunits.AngularAcceleration g_p = 9.8321849378 
        "Theoretical gravity acceleration at the poles";
      constant Real k =   (b/a)*(g_p/g_e) - 1;

      constant Real e2 = (8.1819190842622e-2)^2 
        "Square of the first ellipsoidal eccentricity";
      constant Real f = 1/298.257223563 "Ellipsoidal flattening";
      constant Modelica.SIunits.AngularVelocity w =   7292115e-11 
        "Angular velocity of earth";
      constant Real GM(unit="m3/s2")=3986004.418e8 "Earths Gravitational Constant";
      constant Real m(unit="1")=w^2*a^2*b/GM;
      Real sinphi2(unit="1");
      Modelica.SIunits.AngularAcceleration gn 
        "Normal gravity at the earth ellipsoid";
      Modelica.SIunits.AngularAcceleration gh 
        "Normal gravity at height h over the earth ellipsoid";
      Modelica.SIunits.Position h "Height over the WGS84 earth ellipsoid";
      Real ha(unit="1") "h/a";
    algorithm 
      h := r[2];
      sinphi2 :=Modelica.Math.sin(Modelica.SIunits.Conversions.from_deg(phi))^2;
      gn := g_e*(1 + k*sinphi2)/sqrt(1 - e2*sinphi2);
      ha := h/a;
      gh := gn*(1 - ha*(2*(1+f+m-2*f*sinphi2)+3*ha));
      gravity :={0,-gh,0};
    end theoreticalNormalGravityWGS84;

* * * * *

[Modelica.Mechanics.MultiBody.Examples.Elementary.Utilities](Modelica_Mechanics_MultiBody_Examples_Elementary_Utilities.html#Modelica.Mechanics.MultiBody.Examples.Elementary.Utilities).sineSurface
====================================================================================================================================================================================================

**Function defining the characteristic of a moving sine in three
dimensions**

Information
-----------

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic).

Inputs
------

  -------------------------------------------------------------------------
  Type     Name              Default  Description
  -------- ----------------- -------- -------------------------------------
  Integer  nu                         Number of points in u-Dimension

  Integer  nv                         Number of points in v-Dimension

  Boolean  multiColoredSurfa false    = true: Color is defined for each
           ce                         surface point

  Real     x\_min                     Minimum value of x

  Real     x\_max                     Maximum value of x

  Real     y\_min                     Minimum value of y

  Real     y\_max                     Maximum value of y

  Real     z\_min                     Minimum value of z

  Real     z\_max                     Maximum value of z

  Real     wz                         Factor for angular frequency
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

    function sineSurface 
      "Function defining the characteristic of a moving sine in three dimensions"
       extends Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic;
       input Real x_min "Minimum value of x";
       input Real x_max "Maximum value of x";
       input Real y_min "Minimum value of y";
       input Real y_max "Maximum value of y";
       input Real z_min "Minimum value of z";
       input Real z_max "Maximum value of z";
       input Real wz "Factor for angular frequency";
    protected 
       Real aux_y;
       Real A=(z_max-z_min)/2;
    algorithm 
       for i in 1:nu loop
          aux_y := y_min + (y_max - y_min)*(i-1)/(nu-1);
          for j in 1:nv loop
             X[i,j] := x_min + (x_max - x_min)*(j - 1)/(nv - 1);
             Y[i,j] := aux_y;
             Z[i,j] := A*sin(wz + 0.1*j + 0.1*i)+A;
          end for;
       end for;

       if multiColoredSurface then
          C := {{(Z[i,j]+1)*200,255,0} for j in 1:nv, i in 1:nu};
       end if;
    end sineSurface;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:09 2010.
