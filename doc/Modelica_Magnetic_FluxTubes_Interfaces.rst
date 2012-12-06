======================================
Modelica.Magnetic.FluxTubes.Interfaces
======================================

`Modelica.Magnetic.FluxTubes <Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes>`_.Interfaces
--------------------------------------------------------------------------------------------------------

**Interfaces of magnetic network components**

Information
~~~~~~~~~~~

::

This package contains connectors for the magnetic domain and partial
models for lumped magnetic network components.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                             | Description                                                                                                                 |
+==================================================================================================================================================================================================================+=============================================================================================================================+
| |image8| `MagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort>`_                                                                                       | Generic magnetic port                                                                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| |image9| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_                                                                       | Positive magnetic port                                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| |image10| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_                                                                      | Negative magnetic port                                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| |image11| `PartialTwoPortsElementary <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary>`_                                                            | Partial component with two magnetic ports p and n for textual programming                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| |image12| `PartialTwoPorts <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts>`_                                                                                | Partial component with magnetic potential difference between two magnetic ports p and n and magnetic flux Phi from p to n   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| |image13| `PartialFixedShape <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape>`_                                                                            | Base class for flux tubes with fixed shape during simulation; linear or non-linear material characteristics                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| |image14| `PartialForce <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialForce>`_                                                                                      | Base class for flux tubes with reluctance force generation; constant permeability                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| |image15| `PartialLeakage <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage>`_                                                                                  | Base class for leakage flux tubes with position-independent permeance and hence no force generation; mu\_r=1                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Magnetic.FluxTubes.Interfaces <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces>`_.MagneticPort
-------------------------------------------------------------------------------------------------------------------------------------------

**Generic magnetic port**

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                  | Name   | Description                                |
+=======================================================================================================+========+============================================+
| `MagneticPotentialDifference <Modelica_SIunits.html#Modelica.SIunits.MagneticPotentialDifference>`_   | V\_m   | Magnetic potential at the port [A]         |
+-------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| flow `MagneticFlux <Modelica_SIunits.html#Modelica.SIunits.MagneticFlux>`_                            | Phi    | Magnetic flux flowing into the port [Wb]   |
+-------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector MagneticPort "Generic magnetic port"
      SI.MagneticPotentialDifference V_m "Magnetic potential at the port";
      flow SI.MagneticFlux Phi "Magnetic flux flowing into the port";

    end MagneticPort;

--------------

|image16| `Modelica.Magnetic.FluxTubes.Interfaces <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces>`_.PositiveMagneticPort
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Positive magnetic port**

.. figure:: Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPortD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort

   Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort

Information
~~~~~~~~~~~

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort>`_
(Generic magnetic port).

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                  | Name   | Description                                |
+=======================================================================================================+========+============================================+
| `MagneticPotentialDifference <Modelica_SIunits.html#Modelica.SIunits.MagneticPotentialDifference>`_   | V\_m   | Magnetic potential at the port [A]         |
+-------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| flow `MagneticFlux <Modelica_SIunits.html#Modelica.SIunits.MagneticFlux>`_                            | Phi    | Magnetic flux flowing into the port [Wb]   |
+-------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector PositiveMagneticPort "Positive magnetic port"
      extends Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort;


    end PositiveMagneticPort;

--------------

|image17| `Modelica.Magnetic.FluxTubes.Interfaces <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces>`_.NegativeMagneticPort
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Negative magnetic port**

.. figure:: Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPortD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort

   Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort

Information
~~~~~~~~~~~

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort>`_
(Generic magnetic port).

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                  | Name   | Description                                |
+=======================================================================================================+========+============================================+
| `MagneticPotentialDifference <Modelica_SIunits.html#Modelica.SIunits.MagneticPotentialDifference>`_   | V\_m   | Magnetic potential at the port [A]         |
+-------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| flow `MagneticFlux <Modelica_SIunits.html#Modelica.SIunits.MagneticFlux>`_                            | Phi    | Magnetic flux flowing into the port [Wb]   |
+-------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector NegativeMagneticPort "Negative magnetic port"
      extends Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort;


    end NegativeMagneticPort;

--------------

|image18| `Modelica.Magnetic.FluxTubes.Interfaces <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces>`_.PartialTwoPortsElementary
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial component with two magnetic ports p and n for textual
programming**

.. figure:: Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementaryD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary

   Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary

Information
~~~~~~~~~~~

::

Partial model of a flux tube component with two magnetic ports: the
positive port connector port\_p, and the negative port connector
port\_n.

::

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

    partial model PartialTwoPortsElementary 
      "Partial component with two magnetic ports p and n for textual programming"

      Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort port_p 
        "Positive magnetic port";
      Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort port_n 
        "Negative magnetic port";

    end PartialTwoPortsElementary;

--------------

|image19| `Modelica.Magnetic.FluxTubes.Interfaces <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces>`_.PartialTwoPorts
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial component with magnetic potential difference between two
magnetic ports p and n and magnetic flux Phi from p to n**

.. figure:: Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementaryD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts

   Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts

Information
~~~~~~~~~~~

::

It is assumed that the magnetic flux flowing into port\_p is identical
to the flux flowing out of port\_n. This magnetic flux is provided
explicitly as flux Phi.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary>`_
(Partial component with two magnetic ports p and n for textual
programming).

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

    partial model PartialTwoPorts 
      "Partial component with magnetic potential difference between two magnetic ports p and n and magnetic flux Phi from p to n"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      SI.MagneticPotentialDifference V_m 
        "Magnetic potential difference between both ports";
      SI.MagneticFlux Phi "Magnetic flux from port_p to port_n";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;

    end PartialTwoPorts;

--------------

|image20| `Modelica.Magnetic.FluxTubes.Interfaces <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces>`_.PartialFixedShape
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Base class for flux tubes with fixed shape during simulation; linear
or non-linear material characteristics**

.. figure:: Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementaryD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape

   Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape

Information
~~~~~~~~~~~

::

Please refer to the description of the sub-package
`Shapes.FixedShape <Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape>`_
for utilisation of this partial model.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts>`_
(Partial component with magnetic potential difference between two
magnetic ports p and n and magnetic flux Phi from p to n).

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

    partial model PartialFixedShape 
      "Base class for flux tubes with fixed shape during simulation; linear or non-linear material characteristics"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts;

      parameter Boolean nonLinearPermeability = true 
        "= true, if non-linear rel. permeability is used, otherwise constant rel. permeability";
      parameter SI.RelativePermeability mu_rConst = 1 
        "Constant relative permeability; used if nonLinearPermeability = false";

      parameter Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData
        material=
        Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData() 
        "Ferromagnetic material characteristics; used if nonLinearPermeability = true";

      SI.Reluctance R_m "Magnetic reluctance";
      SI.Permeance G_m "Magnetic permeance";
      SI.MagneticFluxDensity B "Magnetic flux density";
      SI.CrossSection A "Cross-sectional area penetrated by magnetic flux";
      SI.MagneticFieldStrength H "Magnetic field strength";

        SI.RelativePermeability mu_r "Relative magnetic permeability";

    equation 
      mu_r = if nonLinearPermeability then 
        Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApprox(
            B,
            material.mu_i,
            material.B_myMax,
            material.c_a,
            material.c_b,
            material.n) else mu_rConst;
      R_m = 1/G_m;
      V_m = Phi * R_m;
      B = Phi/A;
      H = B / (mu_0 * mu_r);

    end PartialFixedShape;

--------------

|image21| `Modelica.Magnetic.FluxTubes.Interfaces <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces>`_.PartialForce
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Base class for flux tubes with reluctance force generation; constant
permeability**

.. figure:: Modelica.Magnetic.FluxTubes.Interfaces.PartialForceD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Interfaces.PartialForce

   Modelica.Magnetic.FluxTubes.Interfaces.PartialForce

Information
~~~~~~~~~~~

::

Please refer to the description of the sub-package
`Shapes.Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_
for utilisation of this partial model.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts>`_
(Partial component with magnetic potential difference between two
magnetic ports p and n and magnetic flux Phi from p to n).

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

    partial model PartialForce 
      "Base class for flux tubes with reluctance force generation; constant permeability"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts;

      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";

      parameter SI.RelativePermeability mu_r(start = 1) 
        "Relative magnetic permeability";

      SI.Force F_m "Reluctance force";
      Modelica.SIunits.Length s = flange.s - s_support 
        "Distance between flange and support";

      SI.Reluctance R_m "Magnetic reluctance";
      SI.Permeance G_m "Magnetic permeance";
      SI.Permeability dGmBydx 
        "Derivative of permeance with respect to armature position";
      parameter Integer dlBydx = 1 
        "Derivative of flux tube's varying dimension with respect to armature position; set to +1 or -1";

     Modelica.Mechanics.Translational.Interfaces.Flange_b flange 
        "Generated reluctance force at armature position";
     Modelica.Mechanics.Translational.Interfaces.Support support(
                 s=s_support, f=-flange.f) if 
        useSupport "Support/housing of component";

    protected 
      Modelica.SIunits.Length s_support "Absolute position of support flange";

    equation 
      V_m = Phi * R_m;
      R_m = 1/G_m;
      F_m = 0.5 * V_m^2 * dGmBydx;

      if not useSupport then
         s_support = 0;
      end if;
      flange.f = -F_m;

    end PartialForce;

--------------

|image22| `Modelica.Magnetic.FluxTubes.Interfaces <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces>`_.PartialLeakage
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1**

.. figure:: Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakageD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage

   Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage

Information
~~~~~~~~~~~

::

Please refer to the description of the sub-package
`Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
for utilisation of this partial model.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts>`_
(Partial component with magnetic potential difference between two
magnetic ports p and n and magnetic flux Phi from p to n).

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

    partial model PartialLeakage 
      "Base class for leakage flux tubes with position-independent permeance and hence no force generation; mu_r=1"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts;

      SI.Reluctance R_m "Magnetic reluctance";
      SI.Permeance G_m "Magnetic permeance";

    equation 
      V_m = Phi * R_m;
      R_m = 1/G_m;

    end PartialLeakage;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:53
2010.

.. |Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort| image:: Modelica.Magnetic.FluxTubes.Interfaces.MagneticPortS.png
.. |Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort| image:: Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPortS.png
.. |Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort| image:: Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPortS.png
.. |Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementaryS.png
.. |Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementaryS.png
.. |Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShape| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShapeS.png
.. |Modelica.Magnetic.FluxTubes.Interfaces.PartialForce| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialForceS.png
.. |Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakage| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakageS.png
.. |image8| image:: Modelica.Magnetic.FluxTubes.Interfaces.MagneticPortS.png
.. |image9| image:: Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPortS.png
.. |image10| image:: Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPortS.png
.. |image11| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementaryS.png
.. |image12| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementaryS.png
.. |image13| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShapeS.png
.. |image14| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialForceS.png
.. |image15| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakageS.png
.. |image16| image:: Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPortI.png
.. |image17| image:: Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPortI.png
.. |image18| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementaryI.png
.. |image19| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementaryI.png
.. |image20| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShapeI.png
.. |image21| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialForceI.png
.. |image22| image:: Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakageI.png
