===========================================
Modelica.Mechanics.MultiBody.Types.Defaults
===========================================

`Modelica.Mechanics.MultiBody.Types <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types>`_.Defaults
---------------------------------------------------------------------------------------------------------------------------

**Default settings of the MultiBody library via constants**

Information
~~~~~~~~~~~

::

This package contains constants used as default setting in the MultiBody
library.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+----------------------------------+-----------------------------------------------------------------------------------+
| Name                             | Description                                                                       |
+==================================+===================================================================================+
| BodyColor={0,128,255}            | Default color for body shapes that have mass (light blue)                         |
+----------------------------------+-----------------------------------------------------------------------------------+
| RodColor={155,155,155}           | Default color for massless rod shapes (grey)                                      |
+----------------------------------+-----------------------------------------------------------------------------------+
| JointColor={255,0,0}             | Default color for elementary joints (red)                                         |
+----------------------------------+-----------------------------------------------------------------------------------+
| ForceColor={0,128,0}             | Default color for force arrow (dark green)                                        |
+----------------------------------+-----------------------------------------------------------------------------------+
| TorqueColor={0,128,0}            | Default color for torque arrow (dark green)                                       |
+----------------------------------+-----------------------------------------------------------------------------------+
| SpringColor={0,0,255}            | Default color for a spring (blue)                                                 |
+----------------------------------+-----------------------------------------------------------------------------------+
| SensorColor={255,255,0}          | Default color for sensors (yellow)                                                |
+----------------------------------+-----------------------------------------------------------------------------------+
| FrameColor={0,0,0}               | Default color for frame axes and labels (black)                                   |
+----------------------------------+-----------------------------------------------------------------------------------+
| ArrowColor={0,0,255}             | Default color for arrows and double arrows (blue)                                 |
+----------------------------------+-----------------------------------------------------------------------------------+
| FrameHeadLengthFraction=5.0      | Frame arrow head length / arrow diameter                                          |
+----------------------------------+-----------------------------------------------------------------------------------+
| FrameHeadWidthFraction=3.0       | Frame arrow head width / arrow diameter                                           |
+----------------------------------+-----------------------------------------------------------------------------------+
| FrameLabelHeightFraction=3.0     | Height of frame label / arrow diameter                                            |
+----------------------------------+-----------------------------------------------------------------------------------+
| ArrowHeadLengthFraction=4.0      | Arrow head length / arrow diameter                                                |
+----------------------------------+-----------------------------------------------------------------------------------+
| ArrowHeadWidthFraction=3.0       | Arrow head width / arrow diameter                                                 |
+----------------------------------+-----------------------------------------------------------------------------------+
| BodyCylinderDiameterFraction=3   | Default for body cylinder diameter as a fraction of body sphere diameter          |
+----------------------------------+-----------------------------------------------------------------------------------+
| JointRodDiameterFraction=2       | Default for rod diameter as a fraction of joint sphere diameter attached to rod   |
+----------------------------------+-----------------------------------------------------------------------------------+

Types and constants
~~~~~~~~~~~~~~~~~~~

::

      constant Types.Color BodyColor={0,128,255} 
      "Default color for body shapes that have mass (light blue)";

::

      constant Types.Color RodColor={155,155,155} 
      "Default color for massless rod shapes (grey)";

::

      constant Types.Color JointColor={255,0,0} 
      "Default color for elementary joints (red)";

::

      constant Types.Color ForceColor={0,128,0} 
      "Default color for force arrow (dark green)";

::

      constant Types.Color TorqueColor={0,128,0} 
      "Default color for torque arrow (dark green)";

::

      constant Types.Color SpringColor={0,0,255} 
      "Default color for a spring (blue)";

::

      constant Types.Color SensorColor={255,255,0} 
      "Default color for sensors (yellow)";

::

      constant Types.Color FrameColor={0,0,0} 
      "Default color for frame axes and labels (black)";

::

      constant Types.Color ArrowColor={0,0,255} 
      "Default color for arrows and double arrows (blue)";

::

      constant Real FrameHeadLengthFraction=5.0 
      "Frame arrow head length / arrow diameter";

::

      constant Real FrameHeadWidthFraction=3.0 
      "Frame arrow head width / arrow diameter";

::

      constant Real FrameLabelHeightFraction=3.0 
      "Height of frame label / arrow diameter";

::

      constant Real ArrowHeadLengthFraction=4.0 
      "Arrow head length / arrow diameter";

::

      constant Real ArrowHeadWidthFraction=3.0 "Arrow head width / arrow diameter";

::

      constant SI.Diameter BodyCylinderDiameterFraction=3 
      "Default for body cylinder diameter as a fraction of body sphere diameter";

::

      constant Real JointRodDiameterFraction=2 
      "Default for rod diameter as a fraction of joint sphere diameter attached to rod";

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:40
2010.
