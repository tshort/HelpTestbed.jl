==========================================
Modelica.Magnetic.FluxTubes.Shapes.Leakage
==========================================

`Modelica.Magnetic.FluxTubes.Shapes <Modelica_Magnetic_FluxTubes_Shapes.html#Modelica.Magnetic.FluxTubes.Shapes>`_.Leakage
--------------------------------------------------------------------------------------------------------------------------

**Leakage flux tubes with position-independent permeance and hence no
force generation; mu\_r=1**

Information
~~~~~~~~~~~

::

Please have a look at
`UsersGuide.ReluctanceForceCalculation <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.ReluctanceForceCalculation>`_
for an explanation of the different flux tube categories and resulting
sub-packages.

The permeances of all elements of this package are calculated from their
geometry. These flux tube elements are intended for modelling of leakage
fields through vacuum, air and other media with a relative permeability
mu\_r=1.
`Basic.LeakageWithCoefficient <Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic.LeakageWithCoefficient>`_
accounts for leakage not by the geometry of flux tubes, but by a
coupling coefficient c\_usefulFlux.

All dimensions are defined as parameters. As a result, the shape of
these elements will remain constant during dynamic simulation of
actuators and reluctance forces will not be generated in these flux tube
elements. A simple leakage flux tube with reluctance force generation is
provided with the element
`Force.LeakageAroundPoles <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force.LeakageAroundPoles>`_.
In cases where the accuracy of that element is not sufficient, the
leakage elements of this package can be adapted and extended so that
they are able to change their shape with armature motion and to generate
reluctance forces. This requires an extension of the partial model
`Interfaces.PartialForce <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialForce>`_,
a higher variability of the variables representing the flux tube's
dimensions, definition of a relationship between armature position and
these dimensions and determination of the analytic derivative dG\_m/dx
of the flux tube's permeance G\_m with respect to armature position x.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                             | Description                                                                                         |
+==================================================================================================================================================================================================================+=====================================================================================================+
| |image9| `QuarterCylinder <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinder>`_                                                                         | Leakage flux from one edge to the opposite plane through a quarter cylinder                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image10| `QuarterHollowCylinder <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterHollowCylinder>`_                                                            | Leakage flux in circumferential direction through a quarter hollow cylinder                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image11| `HalfCylinder <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage.HalfCylinder>`_                                                                              | Leakage flux through the edges of a half cylinder                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image12| `HalfHollowCylinder <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage.HalfHollowCylinder>`_                                                                  | Leakage flux in circumferential direction through a half hollow cylinder                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image13| `QuarterSphere <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterSphere>`_                                                                            | Leakage flux through the corners of a quarter sphere                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image14| `QuarterHollowSphere <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterHollowSphere>`_                                                                | Leakage flux through the edges of a qarter hollow sphere                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image15| `EighthOfSphere <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage.EighthOfSphere>`_                                                                          | Leakage flux through one edge and the opposite plane of an eighth of a sphere                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image16| `EighthOfHollowSphere <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage.EighthOfHollowSphere>`_                                                              | Leakage flux through one edge and the opposite plane of an eighth of a hollow sphere                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
| |image17| `CoaxCylindersEndFaces <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage.CoaxCylindersEndFaces>`_                                                            | Leakage flux between the end planes of a inner solid cylinder and a coaxial outer hollow cylinder   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+

--------------

|image18| `Modelica.Magnetic.FluxTubes.Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_.QuarterCylinder
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Leakage flux from one edge to the opposite plane through a quarter
cylinder**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinder

   Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinder

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage>`_
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+---------------------------------------------------------------------------------------------------------------+
| Type                                                        | Name   | Default   | Description                                                                                                   |
+=============================================================+========+===========+===============================================================================================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | l      |           | Axial length orthogonal to flux (=2\*pi\*r for cylindrical pole and r>>distance between edge and plane) [m]   |
+-------------------------------------------------------------+--------+-----------+---------------------------------------------------------------------------------------------------------------+
| |image20|                                                   |
+-------------------------------------------------------------+--------+-----------+---------------------------------------------------------------------------------------------------------------+

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

    model QuarterCylinder 
      "Leakage flux from one edge to the opposite plane through a quarter cylinder"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length l( start = 0.1) 
        "Axial length orthogonal to flux (=2*pi*r for cylindrical pole and r>>distance between edge and plane)";

    equation 
      G_m = mu_0 * 0.52 * l;

    end QuarterCylinder;

--------------

|image21| `Modelica.Magnetic.FluxTubes.Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_.QuarterHollowCylinder
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Leakage flux in circumferential direction through a quarter hollow
cylinder**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterHollowCylinder

   Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterHollowCylinder

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage>`_
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+---------+-----------+------------------------------------------------------------------------------------+
| Type                                                        | Name    | Default   | Description                                                                        |
+=============================================================+=========+===========+====================================================================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | l       |           | Axial length orthogonal to flux (=2\*pi\*r for cylindrical pole and r>>r\_i) [m]   |
+-------------------------------------------------------------+---------+-----------+------------------------------------------------------------------------------------+
| Real                                                        | ratio   |           | Constant ratio t/r\_i                                                              |
+-------------------------------------------------------------+---------+-----------+------------------------------------------------------------------------------------+
| |image23|                                                   |
+-------------------------------------------------------------+---------+-----------+------------------------------------------------------------------------------------+

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

    model QuarterHollowCylinder 
      "Leakage flux in circumferential direction through a quarter hollow cylinder"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length l( start = 0.1) 
        "Axial length orthogonal to flux (=2*pi*r for cylindrical pole and r>>r_i)";
      parameter Real ratio( start = 1) "Constant ratio t/r_i";

    equation 
      G_m = 2* mu_0 * l * Modelica.Math.log(1 + ratio) /pi;

    end QuarterHollowCylinder;

--------------

|image24| `Modelica.Magnetic.FluxTubes.Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_.HalfCylinder
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Leakage flux through the edges of a half cylinder**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Leakage.HalfCylinder

   Modelica.Magnetic.FluxTubes.Shapes.Leakage.HalfCylinder

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage>`_
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+------------------------------------------------------------------------------------------------------+
| Type                                                        | Name   | Default   | Description                                                                                          |
+=============================================================+========+===========+======================================================================================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | l      |           | Axial length orthogonal to flux (=2\*pi\*r for cylindrical pole and r>>distance between edges) [m]   |
+-------------------------------------------------------------+--------+-----------+------------------------------------------------------------------------------------------------------+
| |image26|                                                   |
+-------------------------------------------------------------+--------+-----------+------------------------------------------------------------------------------------------------------+

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

    model HalfCylinder 
      "Leakage flux through the edges of a half cylinder"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length l( start = 0.1) 
        "Axial length orthogonal to flux (=2*pi*r for cylindrical pole and r>>distance between edges)";

    equation 
      G_m = mu_0 * 0.26 * l;

    end HalfCylinder;

--------------

|image27| `Modelica.Magnetic.FluxTubes.Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_.HalfHollowCylinder
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Leakage flux in circumferential direction through a half hollow
cylinder**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Leakage.HalfHollowCylinder

   Modelica.Magnetic.FluxTubes.Shapes.Leakage.HalfHollowCylinder

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage>`_
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+---------+-----------+------------------------------------------------------------------------------------+
| Type                                                        | Name    | Default   | Description                                                                        |
+=============================================================+=========+===========+====================================================================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | l       |           | Axial length orthogonal to flux (=2\*pi\*r for cylindrical pole and r>>r\_i) [m]   |
+-------------------------------------------------------------+---------+-----------+------------------------------------------------------------------------------------+
| Real                                                        | ratio   |           | Constant ratio t/r\_i                                                              |
+-------------------------------------------------------------+---------+-----------+------------------------------------------------------------------------------------+
| |image29|                                                   |
+-------------------------------------------------------------+---------+-----------+------------------------------------------------------------------------------------+

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

    model HalfHollowCylinder 
      "Leakage flux in circumferential direction through a half hollow cylinder"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length l( start = 0.1) 
        "Axial length orthogonal to flux (=2*pi*r for cylindrical pole and r>>r_i)";
      parameter Real ratio( start = 1) "Constant ratio t/r_i";

    equation 
      G_m = mu_0 * l * Modelica.Math.log(1 + ratio) /pi;

    end HalfHollowCylinder;

--------------

|image30| `Modelica.Magnetic.FluxTubes.Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_.QuarterSphere
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Leakage flux through the corners of a quarter sphere**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterSphere

   Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterSphere

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage>`_
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+--------------------------------+
| Type                                                        | Name   | Default   | Description                    |
+=============================================================+========+===========+================================+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_   | r      |           | Radius of quarter sphere [m]   |
+-------------------------------------------------------------+--------+-----------+--------------------------------+
| |image32|                                                   |
+-------------------------------------------------------------+--------+-----------+--------------------------------+

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

    model QuarterSphere 
      "Leakage flux through the corners of a quarter sphere"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Radius r( start = 0.005) "Radius of quarter sphere";

    equation 
      G_m = mu_0 * 0.077 * 2*r;

    end QuarterSphere;

--------------

|image33| `Modelica.Magnetic.FluxTubes.Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_.QuarterHollowSphere
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Leakage flux through the edges of a qarter hollow sphere**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterHollowSphere

   Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterHollowSphere

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage>`_
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+-----------------------------------+
| Type                                                        | Name   | Default   | Description                       |
+=============================================================+========+===========+===================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | t      |           | Thickness of sperical shell [m]   |
+-------------------------------------------------------------+--------+-----------+-----------------------------------+
| |image35|                                                   |
+-------------------------------------------------------------+--------+-----------+-----------------------------------+

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

    model QuarterHollowSphere 
      "Leakage flux through the edges of a qarter hollow sphere"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length t( start = 0.01) "Thickness of sperical shell";

    equation 
      G_m = mu_0 * 0.25 * t;

    end QuarterHollowSphere;

--------------

|image36| `Modelica.Magnetic.FluxTubes.Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_.EighthOfSphere
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Leakage flux through one edge and the opposite plane of an eighth of a
sphere**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Leakage.EighthOfSphere

   Modelica.Magnetic.FluxTubes.Shapes.Leakage.EighthOfSphere

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage>`_
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+----------------------------------+
| Type                                                        | Name   | Default   | Description                      |
+=============================================================+========+===========+==================================+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_   | r      |           | Radius of eighth of sphere [m]   |
+-------------------------------------------------------------+--------+-----------+----------------------------------+
| |image38|                                                   |
+-------------------------------------------------------------+--------+-----------+----------------------------------+

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

    model EighthOfSphere 
      "Leakage flux through one edge and the opposite plane of an eighth of a sphere"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Radius r( start = 0.01) "Radius of eighth of sphere";

    equation 
      G_m = mu_0 * 0.308 * r;

    end EighthOfSphere;

--------------

|image39| `Modelica.Magnetic.FluxTubes.Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_.EighthOfHollowSphere
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Leakage flux through one edge and the opposite plane of an eighth of a
hollow sphere**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Leakage.EighthOfHollowSphere

   Modelica.Magnetic.FluxTubes.Shapes.Leakage.EighthOfHollowSphere

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage>`_
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+-----------------------------------+
| Type                                                        | Name   | Default   | Description                       |
+=============================================================+========+===========+===================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | t      |           | Thickness of sperical shell [m]   |
+-------------------------------------------------------------+--------+-----------+-----------------------------------+
| |image41|                                                   |
+-------------------------------------------------------------+--------+-----------+-----------------------------------+

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

    model EighthOfHollowSphere 
      "Leakage flux through one edge and the opposite plane of an eighth of a hollow sphere"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage;

      parameter SI.Length t( start = 0.01) "Thickness of sperical shell";

    equation 
      G_m = mu_0 * 0.5 * t;

    end EighthOfHollowSphere;

--------------

|image42| `Modelica.Magnetic.FluxTubes.Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_.CoaxCylindersEndFaces
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Leakage flux between the end planes of a inner solid cylinder and a
coaxial outer hollow cylinder**

.. figure:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Shapes.Leakage.CoaxCylindersEndFaces

   Modelica.Magnetic.FluxTubes.Shapes.Leakage.CoaxCylindersEndFaces

Information
~~~~~~~~~~~

::

Please refer to the enclosing sub-package
`Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
for a description of all elements of this package and to
`[Ro41] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for derivation and/or coefficients of the equation for permeance G\_m.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage>`_
(Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+---------------------------------------------+
| Type                                                        | Name   | Default   | Description                                 |
+=============================================================+========+===========+=============================================+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_   | r\_0   |           | Radius of inner solid cylinder [m]          |
+-------------------------------------------------------------+--------+-----------+---------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_   | r\_1   |           | Inner radius of outer hollow cylinder [m]   |
+-------------------------------------------------------------+--------+-----------+---------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_   | r\_2   |           | Outer radius of outer hollow cylinder [m]   |
+-------------------------------------------------------------+--------+-----------+---------------------------------------------+
| |image44|                                                   |
+-------------------------------------------------------------+--------+-----------+---------------------------------------------+

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:52
2010.

.. |Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinder| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterHollowCylinder| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Leakage.HalfCylinder| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Leakage.HalfHollowCylinder| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterSphere| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterHollowSphere| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Leakage.EighthOfSphere| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Leakage.EighthOfHollowSphere| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |Modelica.Magnetic.FluxTubes.Shapes.Leakage.CoaxCylindersEndFaces| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |image9| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |image10| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |image11| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |image12| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |image13| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |image14| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |image15| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |image16| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |image17| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderS.png
.. |image18| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png
.. |image19| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/QuarterCylinder.png
.. |image20| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/QuarterCylinder.png
.. |image21| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png
.. |image22| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/QuarterHollowCylinder.png
.. |image23| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/QuarterHollowCylinder.png
.. |image24| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png
.. |image25| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/HalfCylinder.png
.. |image26| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/HalfCylinder.png
.. |image27| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png
.. |image28| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/HalfHollowCylinder.png
.. |image29| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/HalfHollowCylinder.png
.. |image30| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png
.. |image31| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/QuarterSphere.png
.. |image32| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/QuarterSphere.png
.. |image33| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png
.. |image34| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/QuarterHollowSphere.png
.. |image35| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/QuarterHollowSphere.png
.. |image36| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png
.. |image37| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/EighthOfSphere.png
.. |image38| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/EighthOfSphere.png
.. |image39| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png
.. |image40| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/EighthOfHollowSphere.png
.. |image41| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/EighthOfHollowSphere.png
.. |image42| image:: Modelica.Magnetic.FluxTubes.Shapes.Leakage.QuarterCylinderI.png
.. |image43| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/CoaxCylindersEndFaces.png
.. |image44| image:: ../Magnetic/modelica://Modelica/Resources/Images/Magnetic/FluxTubes/Shapes/Leakage/CoaxCylindersEndFaces.png
