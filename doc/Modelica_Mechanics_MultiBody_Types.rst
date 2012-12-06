==================================
Modelica.Mechanics.MultiBody.Types
==================================

`Modelica.Mechanics.MultiBody <Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody>`_.Types
------------------------------------------------------------------------------------------------------

**Constants and types with choices, especially to build menus**

Information
~~~~~~~~~~~

::

In this package **types** and **constants** are defined that are used in
the MultiBody library. The types have additional annotation choices
definitions that define the menus to be built up in the graphical user
interface when the type is used as parameter in a declaration.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                               | Description                                                                                                          |
+====================================================================================================================================================================================+======================================================================================================================+
| |image9| `Axis <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Axis>`_                                                                                 | Axis vector with choices for menus                                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| |image10| `AxisLabel <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.AxisLabel>`_                                                                      | Label of axis with choices for menus                                                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| |image11| `RotationSequence <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationSequence>`_                                                        | Sequence of planar frame rotations with choices for menus                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| |image12| `Color <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Color>`_                                                                              | RGB representation of color (will be improved with a color editor)                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| |image13| `RealColor <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RealColor>`_                                                                      | RGB representation of color as Real type                                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| |image14| `SpecularCoefficient <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.SpecularCoefficient>`_                                                  | Reflection of ambient light (= 0: light is completely absorbed)                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| |image15| `ShapeType <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeType>`_                                                                      | Type of shape (box, sphere, cylinder, pipecylinder, cone, pipe, beam, gearwheel, spring, dxf-file)                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| |image16| `ShapeExtra <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ShapeExtra>`_                                                                    | Reflection of ambient light (= 0: light is completely absorbed)                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| `ResolveInFrameA <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameA>`_                                                                    | Enumeration to define the frame in which an absolute vector is resolved (world, frame\_a, frame\_resolve)            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| `ResolveInFrameB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameB>`_                                                                    | Enumeration to define the frame in which an absolute vector is resolved (world, frame\_b, frame\_resolve)            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| `ResolveInFrameAB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB>`_                                                                  | Enumeration to define the frame in which a relative vector is resolved (world, frame\_a, frame\_b, frame\_resolve)   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| `RotationTypes <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.RotationTypes>`_                                                                        | Enumeration defining in which way the fixed orientation of frame\_b with respect to frame\_a is specified            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| `GravityTypes <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.GravityTypes>`_                                                                          | Enumeration defining the type of the gravity field                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| `Init <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.Init>`_                                                                                          |                                                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| |image17| `Defaults <Modelica_Mechanics_MultiBody_Types_Defaults.html#Modelica.Mechanics.MultiBody.Types.Defaults>`_                                                               | Default settings of the MultiBody library via constants                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+

Types and constants
~~~~~~~~~~~~~~~~~~~

::

      type Axis = Modelica.Icons.TypeReal[3](each final unit="1") 
      "Axis vector with choices for menus";

::

      type AxisLabel = Modelica.Icons.TypeString 
      "Label of axis with choices for menus";

::

      type RotationSequence = Modelica.Icons.TypeInteger[3] (min={1,1,1}, max={3,3,3}) 
      "Sequence of planar frame rotations with choices for menus";

::

      type Color = Modelica.Icons.TypeInteger[3] (each min=0, each max=255) 
      "RGB representation of color (will be improved with a color editor)";

::

      type RealColor =
                   Modelica.Icons.TypeReal[3] (each min=0, each max=255) 
      "RGB representation of color as Real type ";

::

      type SpecularCoefficient = Modelica.Icons.TypeReal 
      "Reflection of ambient light (= 0: light is completely absorbed)";

::

      type ShapeType = Modelica.Icons.TypeString 
      "Type of shape (box, sphere, cylinder, pipecylinder, cone, pipe, beam, gearwheel, spring, dxf-file)";

::

      type ShapeExtra = Modelica.Icons.TypeReal 
      "Reflection of ambient light (= 0: light is completely absorbed)";

::

      type ResolveInFrameA = enumeration(
        world "Resolve in world frame",
        frame_a "Resolve in frame_a",
        frame_resolve "Resolve in frame_resolve (frame_resolve must be connected)")
      "Enumeration to define the frame in which an absolute vector is resolved (world, frame_a, frame_resolve)";

::

      type ResolveInFrameB = enumeration(
        world "Resolve in world frame",
        frame_b "Resolve in frame_b",
        frame_resolve "Resolve in frame_resolve (frame_resolve must be connected)")
      "Enumeration to define the frame in which an absolute vector is resolved (world, frame_b, frame_resolve)";

::

      type ResolveInFrameAB = enumeration(
        world "Resolve in world frame",
        frame_a "Resolve in frame_a",
        frame_b "Resolve in frame_b",
        frame_resolve "Resolve in frame_resolve (frame_resolve must be connected)")
      "Enumeration to define the frame in which a relative vector is resolved (world, frame_a, frame_b, frame_resolve)";

::

      type RotationTypes = enumeration(
        RotationAxis "Rotating frame_a around an angle with a fixed axis",
        TwoAxesVectors "Resolve two vectors of frame_b in frame_a",
        PlanarRotationSequence "Planar rotation sequence") 
      "Enumeration defining in which way the fixed orientation of frame_b with respect to frame_a is specified";

::

      type GravityTypes = enumeration(
        NoGravity "No gravity field",
        UniformGravity "Uniform gravity field",
        PointGravity "Point gravity field") 
      "Enumeration defining the type of the gravity field";

::

    type Init = enumeration(
        Free,
        PositionVelocity,
        SteadyState,
        Position,
        Velocity,
        VelocityAcceleration,
        PositionVelocityAcceleration);

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:40
2010.

.. |Modelica.Mechanics.MultiBody.Types.Axis| image:: Modelica.Mechanics.MultiBody.Types.AxisS.png
.. |Modelica.Mechanics.MultiBody.Types.AxisLabel| image:: Modelica.Mechanics.MultiBody.Types.AxisLabelS.png
.. |Modelica.Mechanics.MultiBody.Types.RotationSequence| image:: Modelica.Mechanics.MultiBody.Types.RotationSequenceS.png
.. |Modelica.Mechanics.MultiBody.Types.Color| image:: Modelica.Mechanics.MultiBody.Types.RotationSequenceS.png
.. |Modelica.Mechanics.MultiBody.Types.RealColor| image:: Modelica.Mechanics.MultiBody.Types.RealColorS.png
.. |Modelica.Mechanics.MultiBody.Types.SpecularCoefficient| image:: Modelica.Mechanics.MultiBody.Types.RealColorS.png
.. |Modelica.Mechanics.MultiBody.Types.ShapeType| image:: Modelica.Mechanics.MultiBody.Types.ShapeTypeS.png
.. |Modelica.Mechanics.MultiBody.Types.ShapeExtra| image:: Modelica.Mechanics.MultiBody.Types.ShapeExtraS.png
.. |Modelica.Mechanics.MultiBody.Types.Defaults| image:: Modelica.Mechanics.MultiBody.Types.DefaultsS.png
.. |image9| image:: Modelica.Mechanics.MultiBody.Types.AxisS.png
.. |image10| image:: Modelica.Mechanics.MultiBody.Types.AxisLabelS.png
.. |image11| image:: Modelica.Mechanics.MultiBody.Types.RotationSequenceS.png
.. |image12| image:: Modelica.Mechanics.MultiBody.Types.RotationSequenceS.png
.. |image13| image:: Modelica.Mechanics.MultiBody.Types.RealColorS.png
.. |image14| image:: Modelica.Mechanics.MultiBody.Types.RealColorS.png
.. |image15| image:: Modelica.Mechanics.MultiBody.Types.ShapeTypeS.png
.. |image16| image:: Modelica.Mechanics.MultiBody.Types.ShapeExtraS.png
.. |image17| image:: Modelica.Mechanics.MultiBody.Types.DefaultsS.png
