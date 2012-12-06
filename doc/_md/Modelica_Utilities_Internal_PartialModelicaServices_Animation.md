% Modelica.Utilities.Internal.PartialModelicaServices.Animation
% 
% 

[Modelica.Utilities.Internal.PartialModelicaServices](Modelica_Utilities_Internal_PartialModelicaServices.html#Modelica.Utilities.Internal.PartialModelicaServices).Animation
=============================================================================================================================================================================

**Models and functions for 3-dim. animation**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                   Description
  ------------------------------------------------------ -----------------
  [PartialShape](Modelica_Utilities_Internal_PartialMode Interface for 3D
  licaServices_Animation.html#Modelica.Utilities.Interna animation of
  l.PartialModelicaServices.Animation.PartialShape)      elementary shapes

  [PartialSurface](Modelica_Utilities_Internal_PartialMo Interface for 3D
  delicaServices_Animation.html#Modelica.Utilities.Inter animation of
  nal.PartialModelicaServices.Animation.PartialSurface)  surfaces
  ------------------------------------------------------------------------

* * * * *

[Modelica.Utilities.Internal.PartialModelicaServices.Animation](Modelica_Utilities_Internal_PartialModelicaServices_Animation.html#Modelica.Utilities.Internal.PartialModelicaServices.Animation).PartialShape
==============================================================================================================================================================================================================

**Interface for 3D animation of elementary shapes**

Information
-----------

::

This model is documented at
[Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape](Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape).

::

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

    partial model PartialShape 
      "Interface for 3D animation of elementary shapes"

        import SI = Modelica.SIunits;
        import Modelica.Mechanics.MultiBody.Frames;
        import Modelica.Mechanics.MultiBody.Types;

      parameter Types.ShapeType shapeType="box" 
        "Type of shape (box, sphere, cylinder, pipecylinder, cone, pipe, beam, gearwheel, spring)";
      input Frames.Orientation R=Frames.nullRotation() 
        "Orientation object to rotate the world frame into the object frame";
      input SI.Position r[3]={0,0,0} 
        "Position vector from origin of world frame to origin of object frame, resolved in world frame";
      input SI.Position r_shape[3]={0,0,0} 
        "Position vector from origin of object frame to shape origin, resolved in object frame";
      input Real lengthDirection[3](each final unit="1")={1,0,0} 
        "Vector in length direction, resolved in object frame";
      input Real widthDirection[3](each final unit="1")={0,1,0} 
        "Vector in width direction, resolved in object frame";
      input SI.Length length=0 "Length of visual object";
      input SI.Length width=0 "Width of visual object";
      input SI.Length height=0 "Height of visual object";
      input Types.ShapeExtra extra=0.0 
        "Additional size data for some of the shape types";
      input Real color[3]={255,0,0} "Color of shape";
      input Types.SpecularCoefficient specularCoefficient = 0.7 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    end PartialShape;

* * * * *

[Modelica.Utilities.Internal.PartialModelicaServices.Animation](Modelica_Utilities_Internal_PartialModelicaServices_Animation.html#Modelica.Utilities.Internal.PartialModelicaServices.Animation).PartialSurface
================================================================================================================================================================================================================

**Interface for 3D animation of surfaces**

Information
-----------

::

This model is documented at
[Modelica.Mechanics.MultiBody.Visualizers.Advanced.Surface](Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.Surface).

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name   Defaul Description
                                          t      
  -------------------------------- ------ ------ --------------------------
  Surface frame                                  

  [Orientation](Modelica_Mechanics R      Frames Orientation object to
  _MultiBody_Frames.html#Modelica.        .nullR rotate the world frame
  Mechanics.MultiBody.Frames.Orien        otatio into the surface frame
  tation)                                 n()    

  [Position](Modelica_SIunits.html r\_0[3 {0,0,0 Position vector from
  #Modelica.SIunits.Position)      ]      }      origin of world frame to
                                                 origin of surface frame,
                                                 resolved in world frame
                                                 [m]

  Surface properties                             

  Integer                          nu     2      Number of points in
                                                 u-Dimension

  Integer                          nv     2      Number of points in
                                                 v-Dimension

  Material properties                            

  Boolean                          wirefr false  = true: 3D model will be
                                   ame           displayed without faces

  Boolean                          multiC false  = true: Color is defined
                                   olored        for each surface point
                                   Surfac        
                                   e             

  Real                             color[ {255,0 Color of surface
                                   3]     ,0}    

  [SpecularCoefficient](Modelica_M specul 0.7    Reflection of ambient
  echanics_MultiBody_Types.html#Mo arCoef        light (= 0: light is
  delica.Mechanics.MultiBody.Types ficien        completely absorbed)
  .SpecularCoefficient)            t             

  Real                             transp 0      Transparency of shape: 0
                                   arency        (= opaque) ... 1 (= fully
                                                 transparent)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PartialSurface "Interface for 3D animation of surfaces"

      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types;

      input Frames.Orientation R=Frames.nullRotation() 
        "Orientation object to rotate the world frame into the surface frame";
      input Modelica.SIunits.Position r_0[3]={0,0,0} 
        "Position vector from origin of world frame to origin of surface frame, resolved in world frame";

      parameter Integer nu=2 "Number of points in u-Dimension";
      parameter Integer nv=2 "Number of points in v-Dimension";
      replaceable function surfaceCharacteristic =
         Modelica.Mechanics.MultiBody.Interfaces.partialSurfaceCharacteristic 
        "Function defining the surface characteristic";

      parameter Boolean wireframe=false 
        "= true: 3D model will be displayed without faces";
      parameter Boolean multiColoredSurface=false 
        "= true: Color is defined for each surface point";
      input Real color[3]={255,0,0} "Color of surface";
      input Types.SpecularCoefficient specularCoefficient = 0.7 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      input Real transparency=0 
        "Transparency of shape: 0 (= opaque) ... 1 (= fully transparent)";
    end PartialSurface;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
