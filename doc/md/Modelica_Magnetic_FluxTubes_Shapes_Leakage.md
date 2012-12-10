% Modelica.Magnetic.FluxTubes.Shapes.Leakage
% 
% 

[Modelica.Magnetic.FluxTubes.Shapes](Modelica_Magnetic_FluxTubes_Shapes.html#Modelica.Magnetic.FluxTubes.Shapes).Leakage
========================================================================================================================

**Leakage flux tubes with position-independent permeance and hence no
force generation; mu\_r=1**

Information
-----------

::

Please have a look at
[UsersGuide.ReluctanceForceCalculation](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.ReluctanceForceCalculation)
for an explanation of the different flux tube categories and resulting
sub-packages.

The permeances of all elements of this package are calculated from their
geometry. These flux tube elements are intended for modelling of leakage
fields through vacuum, air and other media with a relative permeability
mu\_r=1.
[Basic.LeakageWithCoefficient](Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic.LeakageWithCoefficient)
accounts for leakage not by the geometry of flux tubes, but by a
coupling coefficient c\_usefulFlux.

All dimensions are defined as parameters. As a result, the shape of
these elements will remain constant during dynamic simulation of
actuators and reluctance forces will not be generated in these flux tube
elements. A simple leakage flux tube with reluctance force generation is
provided with the element
[Force.LeakageAroundPoles](Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force.LeakageAroundPoles).
In cases where the accuracy of that element is not sufficient, the
leakage elements of this package can be adapted and extended so that
they are able to change their shape with armature motion and to generate
reluctance forces. This requires an extension of the partial model
[Interfaces.PartialForce](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialForce),
a higher variability of the variables representing the flux tube's
dimensions, definition of a relationship between armature position and
these dimensions and determination of the analytic derivative dG\_m/dx
of the flux tube's permeance G\_m with respect to armature position x.

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  ![image9](Modelica.Magnetic.FluxTubes.Shapes.Lea Leakage flux from one
  kage.QuarterCylinderS.png)                       edge to the opposite
  [QuarterCylinder](Modelica_Magnetic_FluxTubes_Sh plane through a quarter
  apes_Leakage.html#Modelica.Magnetic.FluxTubes.Sh cylinder
  apes.Leakage.QuarterCylinder)                    

  ![image10](Modelica.Magnetic.FluxTubes.Shapes.Le Leakage flux in
  akage.QuarterCylinderS.png)                      circumferential
  [QuarterHollowCylinder](Modelica_Magnetic_FluxTu direction through a
  bes_Shapes_Leakage.html#Modelica.Magnetic.FluxTu quarter hollow cylinder
  bes.Shapes.Leakage.QuarterHollowCylinder)        

  ![image11](Modelica.Magnetic.FluxTubes.Shapes.Le Leakage flux through
  akage.QuarterCylinderS.png)                      the edges of a half
  [HalfCylinder](Modelica_Magnetic_FluxTubes_Shape cylinder
  s_Leakage.html#Modelica.Magnetic.FluxTubes.Shape 
  s.Leakage.HalfCylinder)                          

  ![image12](Modelica.Magnetic.FluxTubes.Shapes.Le Leakage flux in
  akage.QuarterCylinderS.png)                      circumferential
  [HalfHollowCylinder](Modelica_Magnetic_FluxTubes direction through a
  _Shapes_Leakage.html#Modelica.Magnetic.FluxTubes half hollow cylinder
  .Shapes.Leakage.HalfHollowCylinder)              

  ![image13](Modelica.Magnetic.FluxTubes.Shapes.Le Leakage flux through
  akage.QuarterCylinderS.png)                      the corners of a
  [QuarterSphere](Modelica_Magnetic_FluxTubes_Shap quarter sphere
  es_Leakage.html#Modelica.Magnetic.FluxTubes.Shap 
  es.Leakage.QuarterSphere)                        

  ![image14](Modelica.Magnetic.FluxTubes.Shapes.Le Leakage flux through
  akage.QuarterCylinderS.png)                      the edges of a qarter
  [QuarterHollowSphere](Modelica_Magnetic_FluxTube hollow sphere
  s_Shapes_Leakage.html#Modelica.Magnetic.FluxTube 
  s.Shapes.Leakage.QuarterHollowSphere)            

  ![image15](Modelica.Magnetic.FluxTubes.Shapes.Le Leakage flux through
  akage.QuarterCylinderS.png)                      one edge and the
  [EighthOfSphere](Modelica_Magnetic_FluxTubes_Sha opposite plane of an
  pes_Leakage.html#Modelica.Magnetic.FluxTubes.Sha eighth of a sphere
  pes.Leakage.EighthOfSphere)                      

  ![image16](Modelica.Magnetic.FluxTubes.Shapes.Le Leakage flux through
  akage.QuarterCylinderS.png)                      one edge and the
  [EighthOfHollowSphere](Modelica_Magnetic_FluxTub opposite plane of an
  es_Shapes_Leakage.html#Modelica.Magnetic.FluxTub eighth of a hollow
  es.Shapes.Leakage.EighthOfHollowSphere)          sphere

  ![image17](Modelica.Magnetic.FluxTubes.Shapes.Le Leakage flux between
  akage.QuarterCylinderS.png)                      the end planes of a
  [CoaxCylindersEndFaces](Modelica_Magnetic_FluxTu inner solid cylinder
  bes_Shapes_Leakage.html#Modelica.Magnetic.FluxTu and a coaxial outer
  bes.Shapes.Leakage.CoaxCylindersEndFaces)        hollow cylinder
  ------------------------------------------------------------------------

* * * * *

![image18](Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png) [Modelica.Magnetic.FluxTubes.Shapes.Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage).QuarterCylinder
====================================================================================================================================================================================================================================

**Leakage flux from one edge to the opposite plane through a quarter
cylinder**

Information
-----------

::

Please refer to the enclosing sub-package
[Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage)
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
----------

  -------------------------------------------------------------------------
  Type                   Nam Defa Description
                         e   ult  
  ---------------------- --- ---- -----------------------------------------
  [Length](Modelica_SIun l        Axial length orthogonal to flux
  its.html#Modelica.SIun          (=2\*pi\*r for cylindrical pole and
  its.Length)                     r\>\>distance between edge and plane) [m]

  ![image20](../Magnetic          
  /modelica://Modelica/R          
  esources/Images/Magnet          
  ic/FluxTubes/Shapes/Le          
  akage/QuarterCylinder.          
  png)                            
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

    model QuarterCylinder 
      "Leakage flux from one edge to the opposite plane through a quarter cylinder"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length l( start = 0.1) 
        "Axial length orthogonal to flux (=2*pi*r for cylindrical pole and r>>distance between edge and plane)";

    equation 
      G_m = mu_0 * 0.52 * l;

    end QuarterCylinder;

* * * * *

![image21](Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png) [Modelica.Magnetic.FluxTubes.Shapes.Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage).QuarterHollowCylinder
==========================================================================================================================================================================================================================================

**Leakage flux in circumferential direction through a quarter hollow
cylinder**

Information
-----------

::

Please refer to the enclosing sub-package
[Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage)
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
----------

  --------------------------------------------------------------------------
  Type                       Name Defau Description
                                  lt    
  -------------------------- ---- ----- ------------------------------------
  [Length](Modelica_SIunits. l          Axial length orthogonal to flux
  html#Modelica.SIunits.Leng            (=2\*pi\*r for cylindrical pole and
  th)                                   r\>\>r\_i) [m]

  Real                       rati       Constant ratio t/r\_i
                             o          

  ![image23](../Magnetic/mod            
  elica://Modelica/Resources            
  /Images/Magnetic/FluxTubes            
  /Shapes/Leakage/QuarterHol            
  lowCylinder.png)                      
  --------------------------------------------------------------------------

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

    model QuarterHollowCylinder 
      "Leakage flux in circumferential direction through a quarter hollow cylinder"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length l( start = 0.1) 
        "Axial length orthogonal to flux (=2*pi*r for cylindrical pole and r>>r_i)";
      parameter Real ratio( start = 1) "Constant ratio t/r_i";

    equation 
      G_m = 2* mu_0 * l * Modelica.Math.log(1 + ratio) /pi;

    end QuarterHollowCylinder;

* * * * *

![image24](Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png) [Modelica.Magnetic.FluxTubes.Shapes.Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage).HalfCylinder
=================================================================================================================================================================================================================================

**Leakage flux through the edges of a half cylinder**

Information
-----------

::

Please refer to the enclosing sub-package
[Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage)
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
----------

  -------------------------------------------------------------------------
  Type                     Nam Defa Description
                           e   ult  
  ------------------------ --- ---- ---------------------------------------
  [Length](Modelica_SIunit l        Axial length orthogonal to flux
  s.html#Modelica.SIunits.          (=2\*pi\*r for cylindrical pole and
  Length)                           r\>\>distance between edges) [m]

  ![image26](../Magnetic/m          
  odelica://Modelica/Resou          
  rces/Images/Magnetic/Flu          
  xTubes/Shapes/Leakage/Ha          
  lfCylinder.png)                   
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

    model HalfCylinder 
      "Leakage flux through the edges of a half cylinder"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length l( start = 0.1) 
        "Axial length orthogonal to flux (=2*pi*r for cylindrical pole and r>>distance between edges)";

    equation 
      G_m = mu_0 * 0.26 * l;

    end HalfCylinder;

* * * * *

![image27](Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png) [Modelica.Magnetic.FluxTubes.Shapes.Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage).HalfHollowCylinder
=======================================================================================================================================================================================================================================

**Leakage flux in circumferential direction through a half hollow
cylinder**

Information
-----------

::

Please refer to the enclosing sub-package
[Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage)
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
----------

  --------------------------------------------------------------------------
  Type                       Name Defau Description
                                  lt    
  -------------------------- ---- ----- ------------------------------------
  [Length](Modelica_SIunits. l          Axial length orthogonal to flux
  html#Modelica.SIunits.Leng            (=2\*pi\*r for cylindrical pole and
  th)                                   r\>\>r\_i) [m]

  Real                       rati       Constant ratio t/r\_i
                             o          

  ![image29](../Magnetic/mod            
  elica://Modelica/Resources            
  /Images/Magnetic/FluxTubes            
  /Shapes/Leakage/HalfHollow            
  Cylinder.png)                         
  --------------------------------------------------------------------------

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

    model HalfHollowCylinder 
      "Leakage flux in circumferential direction through a half hollow cylinder"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length l( start = 0.1) 
        "Axial length orthogonal to flux (=2*pi*r for cylindrical pole and r>>r_i)";
      parameter Real ratio( start = 1) "Constant ratio t/r_i";

    equation 
      G_m = mu_0 * l * Modelica.Math.log(1 + ratio) /pi;

    end HalfHollowCylinder;

* * * * *

![image30](Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png) [Modelica.Magnetic.FluxTubes.Shapes.Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage).QuarterSphere
==================================================================================================================================================================================================================================

**Leakage flux through the corners of a quarter sphere**

Information
-----------

::

Please refer to the enclosing sub-package
[Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage)
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name  Default Description
  -------------------------------------- ----- ------- --------------------
  [Radius](Modelica_SIunits.html#Modelic r             Radius of quarter
  a.SIunits.Radius)                                    sphere [m]

  ![image32](../Magnetic/modelica://Mode               
  lica/Resources/Images/Magnetic/FluxTub               
  es/Shapes/Leakage/QuarterSphere.png)                 
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

    model QuarterSphere 
      "Leakage flux through the corners of a quarter sphere"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Radius r( start = 0.005) "Radius of quarter sphere";

    equation 
      G_m = mu_0 * 0.077 * 2*r;

    end QuarterSphere;

* * * * *

![image33](Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png) [Modelica.Magnetic.FluxTubes.Shapes.Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage).QuarterHollowSphere
========================================================================================================================================================================================================================================

**Leakage flux through the edges of a qarter hollow sphere**

Information
-----------

::

Please refer to the enclosing sub-package
[Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage)
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name  Default Description
  ------------------------------------- ----- ------- ---------------------
  [Length](Modelica_SIunits.html#Modeli t             Thickness of sperical
  ca.SIunits.Length)                                  shell [m]

  ![image35](../Magnetic/modelica://Mod               
  elica/Resources/Images/Magnetic/FluxT               
  ubes/Shapes/Leakage/QuarterHollowSphe               
  re.png)                                             
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

    model QuarterHollowSphere 
      "Leakage flux through the edges of a qarter hollow sphere"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length t( start = 0.01) "Thickness of sperical shell";

    equation 
      G_m = mu_0 * 0.25 * t;

    end QuarterHollowSphere;

* * * * *

![image36](Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png) [Modelica.Magnetic.FluxTubes.Shapes.Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage).EighthOfSphere
===================================================================================================================================================================================================================================

**Leakage flux through one edge and the opposite plane of an eighth of a
sphere**

Information
-----------

::

Please refer to the enclosing sub-package
[Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage)
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name  Default Description
  ------------------------------------- ----- ------- ---------------------
  [Radius](Modelica_SIunits.html#Modeli r             Radius of eighth of
  ca.SIunits.Radius)                                  sphere [m]

  ![image38](../Magnetic/modelica://Mod               
  elica/Resources/Images/Magnetic/FluxT               
  ubes/Shapes/Leakage/EighthOfSphere.pn               
  g)                                                  
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

    model EighthOfSphere 
      "Leakage flux through one edge and the opposite plane of an eighth of a sphere"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Radius r( start = 0.01) "Radius of eighth of sphere";

    equation 
      G_m = mu_0 * 0.308 * r;

    end EighthOfSphere;

* * * * *

![image39](Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png) [Modelica.Magnetic.FluxTubes.Shapes.Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage).EighthOfHollowSphere
=========================================================================================================================================================================================================================================

**Leakage flux through one edge and the opposite plane of an eighth of a
hollow sphere**

Information
-----------

::

Please refer to the enclosing sub-package
[Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage)
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name  Default Description
  ------------------------------------- ----- ------- ---------------------
  [Length](Modelica_SIunits.html#Modeli t             Thickness of sperical
  ca.SIunits.Length)                                  shell [m]

  ![image41](../Magnetic/modelica://Mod               
  elica/Resources/Images/Magnetic/FluxT               
  ubes/Shapes/Leakage/EighthOfHollowSph               
  ere.png)                                            
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

    model EighthOfHollowSphere 
      "Leakage flux through one edge and the opposite plane of an eighth of a hollow sphere"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length t( start = 0.01) "Thickness of sperical shell";

    equation 
      G_m = mu_0 * 0.5 * t;

    end EighthOfHollowSphere;

* * * * *

![image42](Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png) [Modelica.Magnetic.FluxTubes.Shapes.Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage).CoaxCylindersEndFaces
==========================================================================================================================================================================================================================================

**Leakage flux between the end planes of a inner solid cylinder and a
coaxial outer hollow cylinder**

Information
-----------

::

Please refer to the enclosing sub-package
[Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage)
for a description of all elements of this package and to
[[Ro41]](Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature)
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage)
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name  Defaul Description
                                           t      
  ---------------------------------- ----- ------ -------------------------
  [Radius](Modelica_SIunits.html#Mod r\_0         Radius of inner solid
  elica.SIunits.Radius)                           cylinder [m]

  [Radius](Modelica_SIunits.html#Mod r\_1         Inner radius of outer
  elica.SIunits.Radius)                           hollow cylinder [m]

  [Radius](Modelica_SIunits.html#Mod r\_2         Outer radius of outer
  elica.SIunits.Radius)                           hollow cylinder [m]

  ![image44](../Magnetic/modelica://              
  Modelica/Resources/Images/Magnetic              
  /FluxTubes/Shapes/Leakage/CoaxCyli              
  ndersEndFaces.png)                              
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

    model CoaxCylindersEndFaces 
      "Leakage flux between the end planes of a inner solid cylinder and a coaxial outer hollow cylinder"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Radius r_0( start = 10e-3) "Radius of inner solid cylinder";
      parameter SI.Radius r_1( start = 17e-3) 
        "Inner radius of outer hollow cylinder";
      parameter SI.Radius r_2( start = 20e-3) 
        "Outer radius of outer hollow cylinder";

      final parameter SI.Distance l_g = r_1 - r_0 
        "Radial gap length between both cylinders";
      final parameter SI.Length t = r_2 - r_1 
        "Radial thickness of outer hollow cylinder";

    equation 
      // [Ro41], p. 139, Eq. (22)
      G_m = if t <= r_0 then 
            2 * mu_0 * (r_0 + l_g/2) * Modelica.Math.log(1 + 2*t/l_g) else 
            2 * mu_0 * (r_0 + l_g/2) * Modelica.Math.log(1 + 2*r_0/l_g);

    end CoaxCylindersEndFaces;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:52 2010.
