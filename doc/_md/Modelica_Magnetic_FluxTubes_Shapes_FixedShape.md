% Modelica.Magnetic.FluxTubes.Shapes.FixedShape
% 
% 

[Modelica.Magnetic.FluxTubes.Shapes](Modelica_Magnetic_FluxTubes_Shapes.html#Modelica.Magnetic.FluxTubes.Shapes).FixedShape
===========================================================================================================================

**Flux tubes with fixed shape during simulation and linear or non-linear
material characteristics**

Information
-----------

::

Please have a look at
[UsersGuide.ReluctanceForceCalculation](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.ReluctanceForceCalculation)
for an explanation of the different flux tube categories and resulting
sub-packages.

Due to the restrictions on reluctance force calculation outlined there,
flux tube elements with a possibly non-linear material characteristic
mu\_r(B) must have a fixed shape during simulation of converter motion.
Hence, the dimensions of these flux tubes are defined as parameters in
the model components that extend the base class
[Interfaces.PartialFixedShape](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape).

For initial design of magnetic circuits, the relative permeability of
possibly non-linear flux tube elements can easily be set to a constant
value mu\_rConst (non-linearPermeability set to false). In some cases,
this can simplify the rough geometric design of a device's magnetic
circuit. Once an initial geometry is found, the magnetic subsystem can
be simulated and fine-tuned with more realistic non-linear
characteristics of ferromagnetic materials. Doing so requires setting of
the parameter non-linearPermeability to true and selection of one of the
soft magnetic materials of
[Material.SoftMagnetic](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic).

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                              Description
  ------------------------------------------------- ----------------------
  ![image3](Modelica.Magnetic.FluxTubes.Shapes.Fixe (Hollow) cylinder with
  dShape.HollowCylinderAxialFluxS.png)              axial flux; fixed
  [HollowCylinderAxialFlux](Modelica_Magnetic_FluxT shape; linear or
  ubes_Shapes_FixedShape.html#Modelica.Magnetic.Flu non-linear material
  xTubes.Shapes.FixedShape.HollowCylinderAxialFlux) characteristics

  ![image4](Modelica.Magnetic.FluxTubes.Shapes.Fixe Hollow cylinder with
  dShape.HollowCylinderAxialFluxS.png)              radial flux; fixed
  [HollowCylinderRadialFlux](Modelica_Magnetic_Flux shape; linear or
  Tubes_Shapes_FixedShape.html#Modelica.Magnetic.Fl non-linear material
  uxTubes.Shapes.FixedShape.HollowCylinderRadialFlu characteristics
  x)                                                

  ![image5](Modelica.Magnetic.FluxTubes.Shapes.Fixe Flux tube with
  dShape.HollowCylinderAxialFluxS.png)              rectangular
  [Cuboid](Modelica_Magnetic_FluxTubes_Shapes_Fixed cross-section; fixed
  Shape.html#Modelica.Magnetic.FluxTubes.Shapes.Fix shape; linear or
  edShape.Cuboid)                                   non-linear material
                                                    characteristics
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxI.png) [Modelica.Magnetic.FluxTubes.Shapes.FixedShape](Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape).HollowCylinderAxialFlux
===============================================================================================================================================================================================================================================================

**(Hollow) cylinder with axial flux; fixed shape; linear or non-linear
material characteristics**

Information
-----------

::

Please refer to the enclosing sub-package
[FixedShape](Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
for derivation and/or coefficients of the equation for permeance G\_m.

Set the inner radius r\_i=0 for modelling of a solid cylindric flux
tube.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape)
(Base class for flux tubes with fixed shape during simulation; linear or
non-linear material characteristics).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name   Default   Description
  --------------------------------- ------ --------- ----------------------
  Material                                           

  Boolean                           nonLin true      = true, if non-linear
                                    earPer           rel. permeability is
                                    meabil           used, otherwise
                                    ity              constant rel.
                                                     permeability

  [RelativePermeability](Modelica_S mu\_rC 1         Constant relative
  Iunits.html#Modelica.SIunits.Rela onst             permeability; used if
  tivePermeability)                                  nonLinearPermeability
                                                     = false [1]

  [BaseData](Modelica_Magnetic_Flux materi Modelica. Ferromagnetic material
  Tubes_Material_SoftMagnetic.html# al     Magnetic. characteristics; used
  Modelica.Magnetic.FluxTubes.Mater        FluxTubes if
  ial.SoftMagnetic.BaseData)               ....      nonLinearPermeability
                                                     = true

  Fixed geometry                                     

  [Length](Modelica_SIunits.html#Mo l                Axial length (in
  delica.SIunits.Length)                             direction of flux) [m]

  [Radius](Modelica_SIunits.html#Mo r\_i             Inner radius of hollow
  delica.SIunits.Radius)                             cylinder (zero for
                                                     cylinder) [m]

  [Radius](Modelica_SIunits.html#Mo r\_o             Outer radius of
  delica.SIunits.Radius)                             (hollow) cylinder [m]

  ![image8](../Magnetic/modelica://                  
  Modelica/Resources/Images/Magneti                  
  c/FluxTubes/Shapes/HollowCylinder                  
  AxialFlux.png)                                     
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- -----------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Positive
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Posi \_p  magnetic
  tiveMagneticPort)                                            port

  [NegativeMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Negative
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Nega \_n  magnetic
  tiveMagneticPort)                                            port
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image9](Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxI.png) [Modelica.Magnetic.FluxTubes.Shapes.FixedShape](Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape).HollowCylinderRadialFlux
================================================================================================================================================================================================================================================================

**Hollow cylinder with radial flux; fixed shape; linear or non-linear
material characteristics**

Information
-----------

::

Please refer to the enclosing sub-package
[FixedShape](Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
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
[Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape)
(Base class for flux tubes with fixed shape during simulation; linear or
non-linear material characteristics).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name   Default   Description
  --------------------------------- ------ --------- ----------------------
  Material                                           

  Boolean                           nonLin true      = true, if non-linear
                                    earPer           rel. permeability is
                                    meabil           used, otherwise
                                    ity              constant rel.
                                                     permeability

  [RelativePermeability](Modelica_S mu\_rC 1         Constant relative
  Iunits.html#Modelica.SIunits.Rela onst             permeability; used if
  tivePermeability)                                  nonLinearPermeability
                                                     = false [1]

  [BaseData](Modelica_Magnetic_Flux materi Modelica. Ferromagnetic material
  Tubes_Material_SoftMagnetic.html# al     Magnetic. characteristics; used
  Modelica.Magnetic.FluxTubes.Mater        FluxTubes if
  ial.SoftMagnetic.BaseData)               ....      nonLinearPermeability
                                                     = true

  Fixed geometry                                     

  [Length](Modelica_SIunits.html#Mo l                Width (orthogonal to
  delica.SIunits.Length)                             flux direction) [m]

  [Radius](Modelica_SIunits.html#Mo r\_i             Inner radius of hollow
  delica.SIunits.Radius)                             cylinder [m]

  [Radius](Modelica_SIunits.html#Mo r\_o             Outer radius of hollow
  delica.SIunits.Radius)                             cylinder [m]

  ![image11](../Magnetic/modelica:/                  
  /Modelica/Resources/Images/Magnet                  
  ic/FluxTubes/Shapes/HollowCylinde                  
  rRadialFlux.png)                                   
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- -----------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Positive
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Posi \_p  magnetic
  tiveMagneticPort)                                            port

  [NegativeMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Negative
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Nega \_n  magnetic
  tiveMagneticPort)                                            port
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image12](Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFluxI.png) [Modelica.Magnetic.FluxTubes.Shapes.FixedShape](Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape).Cuboid
===============================================================================================================================================================================================================================================

**Flux tube with rectangular cross-section; fixed shape; linear or
non-linear material characteristics**

Information
-----------

::

Please refer to the enclosing sub-package
[FixedShape](Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape)
(Base class for flux tubes with fixed shape during simulation; linear or
non-linear material characteristics).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name   Default   Description
  --------------------------------- ------ --------- ----------------------
  Material                                           

  Boolean                           nonLin true      = true, if non-linear
                                    earPer           rel. permeability is
                                    meabil           used, otherwise
                                    ity              constant rel.
                                                     permeability

  [RelativePermeability](Modelica_S mu\_rC 1         Constant relative
  Iunits.html#Modelica.SIunits.Rela onst             permeability; used if
  tivePermeability)                                  nonLinearPermeability
                                                     = false [1]

  [BaseData](Modelica_Magnetic_Flux materi Modelica. Ferromagnetic material
  Tubes_Material_SoftMagnetic.html# al     Magnetic. characteristics; used
  Modelica.Magnetic.FluxTubes.Mater        FluxTubes if
  ial.SoftMagnetic.BaseData)               ....      nonLinearPermeability
                                                     = true

  Fixed geometry                                     

  [Length](Modelica_SIunits.html#Mo l      0.01      Length in direction of
  delica.SIunits.Length)                             flux [m]

  [Length](Modelica_SIunits.html#Mo a      0.01      Width of rectangular
  delica.SIunits.Length)                             cross-section [m]

  [Length](Modelica_SIunits.html#Mo b      0.01      Height of rectangular
  delica.SIunits.Length)                             cross-section [m]

  ![image14](../Magnetic/modelica:/                  
  /Modelica/Resources/Images/Magnet                  
  ic/FluxTubes/Shapes/CuboidParalle                  
  lFlux.png)                                         
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- -----------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Positive
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Posi \_p  magnetic
  tiveMagneticPort)                                            port

  [NegativeMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Negative
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Nega \_n  magnetic
  tiveMagneticPort)                                            port
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:51 2010.
