=============================================
Modelica.Magnetic.FluxTubes.Shapes.FixedShape
=============================================

`Modelica.Magnetic.FluxTubes.Shapes <Modelica_Magnetic_FluxTubes_Shapes.html#Modelica.Magnetic.FluxTubes.Shapes>`_.FixedShape
-----------------------------------------------------------------------------------------------------------------------------

**Flux tubes with fixed shape during simulation and linear or non-linear
material characteristics**

Information
~~~~~~~~~~~

::

Please have a look at
`UsersGuide.ReluctanceForceCalculation <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.ReluctanceForceCalculation>`_
for an explanation of the different flux tube categories and resulting
sub-packages.

Due to the restrictions on reluctance force calculation outlined there,
flux tube elements with a possibly non-linear material characteristic
mu\_r(B) must have a fixed shape during simulation of converter motion.
Hence, the dimensions of these flux tubes are defined as parameters in
the model components that extend the base class
`Interfaces.PartialFixedShape <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape>`_.

For initial design of magnetic circuits, the relative permeability of
possibly non-linear flux tube elements can easily be set to a constant
value mu\_rConst (non-linearPermeability set to false). In some cases,
this can simplify the rough geometric design of a device's magnetic
circuit. Once an initial geometry is found, the magnetic subsystem can
be simulated and fine-tuned with more realistic non-linear
characteristics of ferromagnetic materials. Doing so requires setting of
the parameter non-linearPermeability to true and selection of one of the
soft magnetic materials of
`Material.SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                               | Description                                                                                            |
+====================================================================================================================================================================================================================================+========================================================================================================+
| |image3| `HollowCylinderAxialFlux <Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFlux>`_                                                                     | (Hollow) cylinder with axial flux; fixed shape; linear or non-linear material characteristics          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| |image4| `HollowCylinderRadialFlux <Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderRadialFlux>`_                                                                   | Hollow cylinder with radial flux; fixed shape; linear or non-linear material characteristics           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+
| |image5| `Cuboid <Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape.Cuboid>`_                                                                                                       | Flux tube with rectangular cross-section; fixed shape; linear or non-linear material characteristics   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------+

--------------

|image6| `Modelica.Magnetic.FluxTubes.Shapes.FixedShape <Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape>`_.HollowCylinderAxialFlux
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**(Hollow) cylinder with axial flux; fixed shape; linear or non-linear
material characteristics**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFlux

   Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFlux

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`FixedShape <Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

Set the inner radius r\_i=0 for modelling of a solid cylindric flux
tube.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape>`_
(Base class for flux tubes with fixed shape during simulation; linear or
non-linear material characteristics).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Type                                                                                                                              | Name                    | Default                           | Description                                                                             |
+===================================================================================================================================+=========================+===================================+=========================================================================================+
| Material                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Boolean                                                                                                                           | nonLinearPermeability   | true                              | = true, if non-linear rel. permeability is used, otherwise constant rel. permeability   |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_                                             | mu\_rConst              | 1                                 | Constant relative permeability; used if nonLinearPermeability = false [1]               |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_   | material                | Modelica.Magnetic.FluxTubes....   | Ferromagnetic material characteristics; used if nonLinearPermeability = true            |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Fixed geometry                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                         | l                       |                                   | Axial length (in direction of flux) [m]                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                                                                         | r\_i                    |                                   | Inner radius of hollow cylinder (zero for cylinder) [m]                                 |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                                                                         | r\_o                    |                                   | Outer radius of (hollow) cylinder [m]                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| |image8|                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| Type                                                                                                                                | Name      | Description              |
+=====================================================================================================================================+===========+==========================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HollowCylinderAxialFlux 
      "(Hollow) cylinder with axial flux; fixed shape; linear or non-linear material characteristics"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape;

      parameter SI.Length l( start = 0.01) "Axial length (in direction of flux)";
      parameter SI.Radius r_i( start = 0) 
        "Inner radius of hollow cylinder (zero for cylinder)";
      parameter SI.Radius r_o( start = 0.01) "Outer radius of (hollow) cylinder";

    equation 
      A = pi*(r_o^2 - r_i^2);
      G_m = (mu_0 * mu_r * A)/ l;

    end HollowCylinderAxialFlux;

--------------

|image9| `Modelica.Magnetic.FluxTubes.Shapes.FixedShape <Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape>`_.HollowCylinderRadialFlux
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Hollow cylinder with radial flux; fixed shape; linear or non-linear
material characteristics**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderRadialFlux

   Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderRadialFlux

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`FixedShape <Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

For hollow cylindric flux tubes with a radial magnetic flux, the flux
density is a function of the radius. For that reason, the characteristic
mu\_r(B) is evaluated for the flux density at the flux tube's mean
radius.

For those flux tube sections of a magnetic device that have a nonlinear
material characteristic mu\_r(B) and a large aspect ratio of outer to
inner radius r\_o/r\_i, the section can be split up in a series
connection of several hollow cylindric flux tubes with radial flux. This
allows for more realistic modelling of the dependence of flux density on
the radius compared to modelling with just one flux tube element.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape>`_
(Base class for flux tubes with fixed shape during simulation; linear or
non-linear material characteristics).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Type                                                                                                                              | Name                    | Default                           | Description                                                                             |
+===================================================================================================================================+=========================+===================================+=========================================================================================+
| Material                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Boolean                                                                                                                           | nonLinearPermeability   | true                              | = true, if non-linear rel. permeability is used, otherwise constant rel. permeability   |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_                                             | mu\_rConst              | 1                                 | Constant relative permeability; used if nonLinearPermeability = false [1]               |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_   | material                | Modelica.Magnetic.FluxTubes....   | Ferromagnetic material characteristics; used if nonLinearPermeability = true            |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Fixed geometry                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                         | l                       |                                   | Width (orthogonal to flux direction) [m]                                                |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                                                                         | r\_i                    |                                   | Inner radius of hollow cylinder [m]                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                                                                         | r\_o                    |                                   | Outer radius of hollow cylinder [m]                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| |image11|                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| Type                                                                                                                                | Name      | Description              |
+=====================================================================================================================================+===========+==========================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HollowCylinderRadialFlux 
      "Hollow cylinder with radial flux; fixed shape; linear or non-linear material characteristics"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape;

      parameter SI.Length l( start = 0.01) "Width (orthogonal to flux direction)";
      parameter SI.Radius r_i( start = 0.01) "Inner radius of hollow cylinder";
      parameter SI.Radius r_o( start = 0.02) "Outer radius of hollow cylinder";

    equation 
      A = l * pi*(r_o + r_i); // Area at arithmetic mean radius for calculation of average flux density
      G_m = 2* pi* mu_0* mu_r* l/ Modelica.Math.log(r_o/r_i);

    end HollowCylinderRadialFlux;

--------------

|image12| `Modelica.Magnetic.FluxTubes.Shapes.FixedShape <Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape>`_.Cuboid
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Flux tube with rectangular cross-section; fixed shape; linear or
non-linear material characteristics**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.Cuboid

   Modelica.Magnetic.FluxTubes.Shapes.FixedShape.Cuboid

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`FixedShape <Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape>`_
(Base class for flux tubes with fixed shape during simulation; linear or
non-linear material characteristics).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Type                                                                                                                              | Name                    | Default                           | Description                                                                             |
+===================================================================================================================================+=========================+===================================+=========================================================================================+
| Material                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Boolean                                                                                                                           | nonLinearPermeability   | true                              | = true, if non-linear rel. permeability is used, otherwise constant rel. permeability   |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_                                             | mu\_rConst              | 1                                 | Constant relative permeability; used if nonLinearPermeability = false [1]               |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_   | material                | Modelica.Magnetic.FluxTubes....   | Ferromagnetic material characteristics; used if nonLinearPermeability = true            |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Fixed geometry                                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                         | l                       | 0.01                              | Length in direction of flux [m]                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                         | a                       | 0.01                              | Width of rectangular cross-section [m]                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                         | b                       | 0.01                              | Height of rectangular cross-section [m]                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| |image14|                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------+-------------------------+-----------------------------------+-----------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| Type                                                                                                                                | Name      | Description              |
+=====================================================================================================================================+===========+==========================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Cuboid 
      "Flux tube with rectangular cross-section; fixed shape; linear or non-linear material characteristics"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape;

      parameter SI.Length l = 0.01 "Length in direction of flux";
      parameter SI.Length a = 0.01 "Width of rectangular cross-section";
      parameter SI.Length b = 0.01 "Height of rectangular cross-section";

    equation 
      A = a * b;
      G_m = (mu_0 * mu_r * A)/ l;

    end Cuboid;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:51
2010.

.. |Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFlux| image:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderRadialFlux| image:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.FixedShape.Cuboid| image:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxS.png
.. |image3| image:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxS.png
.. |image4| image:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxS.png
.. |image5| image:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxS.png
.. |image6| image:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxI.png
.. |image7| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/HollowCylinderAxialFlux.png
.. |image8| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/HollowCylinderAxialFlux.png
.. |image9| image:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxI.png
.. |image10| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/HollowCylinderRadialFlux.png
.. |image11| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/HollowCylinderRadialFlux.png
.. |image12| image:: Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxI.png
.. |image13| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/CuboidParallelFlux.png
.. |image14| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/CuboidParallelFlux.png
