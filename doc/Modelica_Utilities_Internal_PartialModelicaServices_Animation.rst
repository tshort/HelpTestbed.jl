=============================================================
Modelica.Utilities.Internal.PartialModelicaServices.Animation
=============================================================

`Modelica.Utilities.Internal.PartialModelicaServices <Modelica_Utilities_Internal_PartialModelicaServices.html#Modelica.Utilities.Internal.PartialModelicaServices>`_.Animation
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Models and functions for 3-dim. animation**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+
| Name                                                                                                                                                                  | Description                                       |
+=======================================================================================================================================================================+===================================================+
| `PartialShape <Modelica_Utilities_Internal_PartialModelicaServices_Animation.html#Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialShape>`_       | Interface for 3D animation of elementary shapes   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+
| `PartialSurface <Modelica_Utilities_Internal_PartialModelicaServices_Animation.html#Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialSurface>`_   | Interface for 3D animation of surfaces            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+

--------------

`Modelica.Utilities.Internal.PartialModelicaServices.Animation <Modelica_Utilities_Internal_PartialModelicaServices_Animation.html#Modelica.Utilities.Internal.PartialModelicaServices.Animation>`_.PartialShape
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Interface for 3D animation of elementary shapes**

Information
~~~~~~~~~~~

::

This model is documented at
`Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.Shape>`_.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                 | Description                                                                                         |
+===========================================================================================================================+=======================+=========================+=====================================================================================================+
| `ShapeType <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeType>`_                       | shapeType             | "box"                   | Type of shape (box, sphere, cylinder, pipecylinder, cone, pipe, beam, gearwheel, spring)            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_                 | R                     | Frames.nullRotation()   | Orientation object to rotate the world frame into the object frame                                  |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r[3]                  | {0,0,0}                 | Position vector from origin of world frame to origin of object frame, resolved in world frame [m]   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_shape[3]           | {0,0,0}                 | Position vector from origin of object frame to shape origin, resolved in object frame [m]           |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | lengthDirection[3]    | {1,0,0}                 | Vector in length direction, resolved in object frame [1]                                            |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | widthDirection[3]     | {0,1,0}                 | Vector in width direction, resolved in object frame [1]                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | length                | 0                       | Length of visual object [m]                                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | width                 | 0                       | Width of visual object [m]                                                                          |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                 | height                | 0                       | Height of visual object [m]                                                                         |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `ShapeExtra <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeExtra>`_                     | extra                 | 0.0                     | Additional size data for some of the shape types                                                    |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | color[3]              | {255,0,0}               | Color of shape                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | 0.7                     | Reflection of ambient light (= 0: light is completely absorbed)                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+-----------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Modelica.Utilities.Internal.PartialModelicaServices.Animation <Modelica_Utilities_Internal_PartialModelicaServices_Animation.html#Modelica.Utilities.Internal.PartialModelicaServices.Animation>`_.PartialSurface
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Interface for 3D animation of surfaces**

Information
~~~~~~~~~~~

::

This model is documented at
`Modelica.Mechanics.MultiBody.Visualizers.Advanced.Surface <Modelica_Mechanics_MultiBody_Visualizers_Advanced.html#Modelica.Mechanics.MultiBody.Visualizers.Advanced.Surface>`_.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| Type                                                                                                                      | Name                  | Default                 | Description                                                                                          |
+===========================================================================================================================+=======================+=========================+======================================================================================================+
| Surface frame                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_                 | R                     | Frames.nullRotation()   | Orientation object to rotate the world frame into the surface frame                                  |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                                                             | r\_0[3]               | {0,0,0}                 | Position vector from origin of world frame to origin of surface frame, resolved in world frame [m]   |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| Surface properties                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| Integer                                                                                                                   | nu                    | 2                       | Number of points in u-Dimension                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| Integer                                                                                                                   | nv                    | 2                       | Number of points in v-Dimension                                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| Material properties                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | wireframe             | false                   | = true: 3D model will be displayed without faces                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                   | multiColoredSurface   | false                   | = true: Color is defined for each surface point                                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | color[3]              | {255,0,0}               | Color of surface                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_   | specularCoefficient   | 0.7                     | Reflection of ambient light (= 0: light is completely absorbed)                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+
| Real                                                                                                                      | transparency          | 0                       | Transparency of shape: 0 (= opaque) ... 1 (= fully transparent)                                      |
+---------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------+------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:49
2010.
