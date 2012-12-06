========================================
Modelica.Magnetic.FluxTubes.Shapes.Force
========================================

`Modelica.Magnetic.FluxTubes.Shapes <Modelica_Magnetic_FluxTubes_Shapes.html#Modelica.Magnetic.FluxTubes.Shapes>`_.Force
------------------------------------------------------------------------------------------------------------------------

**Flux tubes with reluctance force generation; constant permeability**

Information
~~~~~~~~~~~

::

Please have a look at
`UsersGuide.ReluctanceForceCalculation <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.ReluctanceForceCalculation>`_
for an explanation of the different flux tube categories and resulting
sub-packages.

Flux tube elements with generation of a reluctance force are intended
for modelling of position-dependent air gap sections and permanent
magnet sections respectively of translatory actuators. By default, the
position co-ordinate of the mechanical connector flange.s is identical
with the dimension l of the package's flux tube elements. l is the
dimension changes with armature motion. If needed, the identity
l=flange.s can be replaced by an actuator-specific equation, for
example, when a flux tube length increases with decreasing armature
position. The position co-ordinate of an element's translatory connector
flange.s in turn will be identical with the armature position x in most
cases, as the examples illustrate.

The derivative of each element's permeance with respect to armature
position ``dGmBydx`` is calculated from the derivative of the flux
tube's permeance with respect to its varying dimension dGmBydl and the
derivative of this dimension with respect to armature position
``dlBydx``:

::

        dG_m   dG_m   dl
        ---- = ---- * --
         dx     dl    dx

The parameter ``dlBydx`` must be set in each flux tube element to +1 or
-1 according to the definition of the armature co-ordinate and the
position of the element in a device's magnetic circuit. Proper match
between armature motion and resulting variation of the flux tube length
assures that the element's reluctance force acts in the right direction.

The shapes of the flux tubes defined in this package are rather simple.
Only one dimenion varies with armature motion. Flux tubes with more
complex variations of dimensions with armature motion can be defined by
extending the base class
`Interfaces.PartialForce <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialForce>`_,
if needed. Determination of the analytic derivative dGmBydl could become
more complex for those flux tubes.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                | Description                                                                                                    |
+=====================================================================================================================================================================================================================+================================================================================================================+
| |image5| `HollowCylinderAxialFlux <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFlux>`_                                                                | (Hollow) cylinder with axial flux; constant permeability                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image6| `HollowCylinderRadialFlux <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderRadialFlux>`_                                                              | Hollow cylinder with radial flux; constant permeability                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image7| `CuboidParallelFlux <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force.CuboidParallelFlux>`_                                                                          | Cuboid with flux in direction of motion, e.g., air gap with rectangular cross-section; constant permeability   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image8| `CuboidOrthogonalFlux <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force.CuboidOrthogonalFlux>`_                                                                      | Cuboid with flux orthogonal to direction of motion; constant permeability                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image9| `LeakageAroundPoles <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force.LeakageAroundPoles>`_                                                                          | Leakage flux tube around cylindrical or prismatic poles                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+

--------------

|image10| `Modelica.Magnetic.FluxTubes.Shapes.Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_.HollowCylinderAxialFlux
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**(Hollow) cylinder with axial flux; constant permeability**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFlux

   Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFlux

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialForce <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialForce>`_
(Base class for flux tubes with reluctance force generation; constant
permeability).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Type                                                                                    | Name         | Default   | Description                                                                                      |
+=========================================================================================+==============+===========+==================================================================================================+
| Boolean                                                                                 | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded                                 |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_r        |           | Relative magnetic permeability [1]                                                               |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Integer                                                                                 | dlBydx       | 1         | Derivative of flux tube's varying dimension with respect to armature position; set to +1 or -1   |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                               | r\_i         |           | Inner radius of (hollow) cylinder [m]                                                            |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                               | r\_o         |           | Outer radius of (hollow) cylinder [m]                                                            |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Variable geometry                                                                       |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                               | l            | s         | Axial length (in direction of flux) [m]                                                          |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| |image12|                                                                               |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| Type                                                                                                                                | Name      | Description                                       |
+=====================================================================================================================================+===========+===================================================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port                            |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port                            |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_                | flange    | Generated reluctance force at armature position   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_                   | support   | Support/housing of component                      |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HollowCylinderAxialFlux 
      "(Hollow) cylinder with axial flux; constant permeability"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialForce;

      SI.Length l = s "Axial length (in direction of flux)";
      parameter SI.Radius r_i( start = 0) "Inner radius of (hollow) cylinder";
      parameter SI.Radius r_o( start = 0.01) "Outer radius of (hollow) cylinder";

      SI.MagneticFluxDensity B "Homogeneous flux density";

    protected 
      parameter SI.Area A = pi*(r_o^2 - r_i^2) 
        "Cross-sectional area orthogonal to direction of flux";

    equation 
      G_m = mu_0*mu_r * A /l;

      dGmBydx = -1 * mu_0*mu_r * A /l^2 * dlBydx;

      B = Phi/A;

    end HollowCylinderAxialFlux;

--------------

|image13| `Modelica.Magnetic.FluxTubes.Shapes.Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_.HollowCylinderRadialFlux
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Hollow cylinder with radial flux; constant permeability**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderRadialFlux

   Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderRadialFlux

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialForce <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialForce>`_
(Base class for flux tubes with reluctance force generation; constant
permeability).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Type                                                                                    | Name         | Default   | Description                                                                                      |
+=========================================================================================+==============+===========+==================================================================================================+
| Boolean                                                                                 | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded                                 |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_r        |           | Relative magnetic permeability [1]                                                               |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Integer                                                                                 | dlBydx       | 1         | Derivative of flux tube's varying dimension with respect to armature position; set to +1 or -1   |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                               | r\_i         |           | Inner radius of hollow cylinder [m]                                                              |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                               | r\_o         |           | Outer radius of hollow cylinder [m]                                                              |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Variable geometry                                                                       |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                               | l            | s         | Axial length (orthogonal to direction of flux) [m]                                               |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| |image15|                                                                               |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| Type                                                                                                                                | Name      | Description                                       |
+=====================================================================================================================================+===========+===================================================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port                            |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port                            |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_                | flange    | Generated reluctance force at armature position   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_                   | support   | Support/housing of component                      |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HollowCylinderRadialFlux 
      "Hollow cylinder with radial flux; constant permeability"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialForce;

      SI.Length l = s "Axial length (orthogonal to direction of flux)";
      parameter SI.Radius r_i( start = 0.01) "Inner radius of hollow cylinder";
      parameter SI.Radius r_o( start = 0.015) "Outer radius of hollow cylinder";

      SI.MagneticFluxDensity B_avg 
        "Average flux density (at arithmetic mean radius)";

    protected 
      SI.Area A_avg 
        "Average cross-sectional area orthogonal to direction of flux (at arithmetic mean radius)";

    equation 
      G_m = mu_0*mu_r * 2 * pi * l /Modelica.Math.log(r_o/r_i);

      dGmBydx = mu_0*mu_r * 2 * pi/Modelica.Math.log(r_o/r_i) * dlBydx;

      A_avg = pi*(r_i + r_o) * l;
      B_avg = Phi/A_avg;

    end HollowCylinderRadialFlux;

--------------

|image16| `Modelica.Magnetic.FluxTubes.Shapes.Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_.CuboidParallelFlux
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Cuboid with flux in direction of motion, e.g., air gap with
rectangular cross-section; constant permeability**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Force.CuboidParallelFlux

   Modelica.Magnetic.FluxTubes.Shapes.Force.CuboidParallelFlux

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialForce <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialForce>`_
(Base class for flux tubes with reluctance force generation; constant
permeability).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Type                                                                                    | Name         | Default   | Description                                                                                      |
+=========================================================================================+==============+===========+==================================================================================================+
| Boolean                                                                                 | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded                                 |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_r        |           | Relative magnetic permeability [1]                                                               |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Integer                                                                                 | dlBydx       | 1         | Derivative of flux tube's varying dimension with respect to armature position; set to +1 or -1   |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                               | a            |           | Width of rectangular cross-section [m]                                                           |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                               | b            |           | Height of rectangular cross-section [m]                                                          |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Variable geometry                                                                       |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                               | l            | s         | Axial length (in direction of flux) [m]                                                          |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| |image18|                                                                               |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| Type                                                                                                                                | Name      | Description                                       |
+=====================================================================================================================================+===========+===================================================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port                            |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port                            |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_                | flange    | Generated reluctance force at armature position   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_                   | support   | Support/housing of component                      |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CuboidParallelFlux 
      "Cuboid with flux in direction of motion, e.g., air gap with rectangular cross-section; constant permeability"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialForce;

      SI.Length l = s "Axial length (in direction of flux)";
      parameter SI.Length a( start = 0.01) "Width of rectangular cross-section";
      parameter SI.Length b( start = 0.01) "Height of rectangular cross-section";

      SI.MagneticFluxDensity B "Homogeneous flux density";

    protected 
      parameter SI.Area A = a*b 
        "Cross-sectional area orthogonal to direction of flux";

    equation 
      G_m = mu_0*mu_r * A /l;

      dGmBydx = -1 * mu_0*mu_r * A /l^2 * dlBydx;

      B = Phi/A;

    end CuboidParallelFlux;

--------------

|image19| `Modelica.Magnetic.FluxTubes.Shapes.Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_.CuboidOrthogonalFlux
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Cuboid with flux orthogonal to direction of motion; constant
permeability**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Force.CuboidOrthogonalFlux

   Modelica.Magnetic.FluxTubes.Shapes.Force.CuboidOrthogonalFlux

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialForce <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialForce>`_
(Base class for flux tubes with reluctance force generation; constant
permeability).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Type                                                                                    | Name         | Default   | Description                                                                                      |
+=========================================================================================+==============+===========+==================================================================================================+
| Boolean                                                                                 | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded                                 |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_r        |           | Relative magnetic permeability [1]                                                               |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Integer                                                                                 | dlBydx       | 1         | Derivative of flux tube's varying dimension with respect to armature position; set to +1 or -1   |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                               | a            |           | Width of rectangular cross-section [m]                                                           |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                               | b            |           | Height of rectangular cross-section (in flux direction) [m]                                      |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Variable geometry                                                                       |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                               | l            | s         | Length in direction of motion (orthogonal to flux) [m]                                           |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| |image21|                                                                               |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| Type                                                                                                                                | Name      | Description                                       |
+=====================================================================================================================================+===========+===================================================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port                            |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port                            |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_                | flange    | Generated reluctance force at armature position   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_                   | support   | Support/housing of component                      |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CuboidOrthogonalFlux 
      "Cuboid with flux orthogonal to direction of motion; constant permeability"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialForce;

      SI.Length l = s "Length in direction of motion (orthogonal to flux)";
      parameter SI.Length a( start = 0.01) "Width of rectangular cross-section";
      parameter SI.Length b( start = 0.01) 
        "Height of rectangular cross-section (in flux direction)";

      SI.MagneticFluxDensity B "Homogeneous flux density";

    protected 
      SI.Area A "Cross-sectional area orthogonal to direction of flux";

    equation 
      A = a*l;
      G_m = mu_0*mu_r * A /b;

      dGmBydx = mu_0*mu_r * a /b * dlBydx;

      B = Phi/A;

    end CuboidOrthogonalFlux;

--------------

|image22| `Modelica.Magnetic.FluxTubes.Shapes.Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_.LeakageAroundPoles
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Leakage flux tube around cylindrical or prismatic poles**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Force.LeakageAroundPoles

   Modelica.Magnetic.FluxTubes.Shapes.Force.LeakageAroundPoles

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing sub-package
`Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_
for a description of all elements of this package.

Leakage flux around a prismatic or cylindric air gap between to poles
can be described with this model. Due to its constant radius of the
leakage field r, the model is rather simple. Whereas in reality the
leakage radius is approximately constant for air gap lengths l greater
than this radius, it decreases with air gap lengths less than the
leakage radius. This decrease for small air gaps is neglected here,
since the influence of the leakage flux tube compared to that of the
enclosed main air gap (connected in parallel) decreases for decreasing
air gap length l.

Note that in
`[Ka08] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
the equation for G\_m is accidentally swapped with that of a similar
element.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialForce <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialForce>`_
(Base class for flux tubes with reluctance force generation; constant
permeability).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Type                                                                                    | Name         | Default   | Description                                                                                      |
+=========================================================================================+==============+===========+==================================================================================================+
| Boolean                                                                                 | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded                                 |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_r        |           | Relative magnetic permeability [1]                                                               |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Integer                                                                                 | dlBydx       | 1         | Derivative of flux tube's varying dimension with respect to armature position; set to +1 or -1   |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                               | w            |           | Width orthogonal to flux; mean circumference of flux tube in case of cylindrical poles [m]       |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                               | r            |           | Radius of leakage field [m]                                                                      |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| Variable geometry                                                                       |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                               | l            | s         | Axial length (in direction of flux) [m]                                                          |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+
| |image24|                                                                               |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| Type                                                                                                                                | Name      | Description                                       |
+=====================================================================================================================================+===========+===================================================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port                            |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port                            |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_                | flange    | Generated reluctance force at armature position   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_                   | support   | Support/housing of component                      |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model LeakageAroundPoles 
      "Leakage flux tube around cylindrical or prismatic poles"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialForce;
      SI.Length l = s "Axial length (in direction of flux)";

      parameter SI.Length w( start = 0.1) 
        "Width orthogonal to flux; mean circumference of flux tube in case of cylindrical poles";
      parameter SI.Radius r( start = 0.01) "Radius of leakage field";

    equation 
      //adapted from [Ka08], but corrected
      //(in [Ka08] equation accidentally swapped with that of a similar element)
      G_m = mu_0 * w /pi * Modelica.Math.log(1 + pi * r/l);

      //derivative at full length:
      //  dGmBydx = mu_0 * w /pi * 1/(1 + pi * r/l) * (-1)*pi*r/l^2  * dlBydx;
      //simplified:
      dGmBydx = - mu_0 * w * r * dlBydx / (l^2 *(1 + pi * r/l));

    end LeakageAroundPoles;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:51
2010.

.. |Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFlux| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderRadialFlux| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Force.CuboidParallelFlux| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Force.CuboidOrthogonalFlux| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Force.LeakageAroundPoles| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxS.png
.. |image5| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxS.png
.. |image6| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxS.png
.. |image7| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxS.png
.. |image8| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxS.png
.. |image9| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxS.png
.. |image10| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxI.png
.. |image11| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/HollowCylinderAxialFlux.png
.. |image12| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/HollowCylinderAxialFlux.png
.. |image13| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxI.png
.. |image14| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/HollowCylinderRadialFlux.png
.. |image15| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/HollowCylinderRadialFlux.png
.. |image16| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxI.png
.. |image17| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/CuboidParallelFlux.png
.. |image18| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/CuboidParallelFlux.png
.. |image19| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxI.png
.. |image20| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/CuboidOrthogonalFlux.png
.. |image21| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/CuboidOrthogonalFlux.png
.. |image22| image:: Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderAxialFluxI.png
.. |image23| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/LeakageAroundPoles.png
.. |image24| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/LeakageAroundPoles.png
