============================================================
Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron
============================================================

`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_.CobaltIron
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Cobalt iron**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| Name                                                                                                                                                                                                                                  | Description              |
+=======================================================================================================================================================================================================================================+==========================+
| |image1| `Vacoflux50 <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_CobaltIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron.Vacoflux50>`_                                                                    | Vacoflux 50 (50% CoFe)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+

--------------

|image2| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_CobaltIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron>`_.Vacoflux50
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Vacoflux 50 (50% CoFe)**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

Source of B(H) characteristics: VACUUMSCHMELZE GmbH & Co. KG, Germany

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 3850      | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.75      | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 11790     | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 2.63      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 15.02     | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Vacoflux50 "Vacoflux 50 (50% CoFe)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=3850,
        B_myMax=1.75,
        c_a=11790,
        c_b=2.63,
        n=15.02);
    end Vacoflux50;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:52
2010.

.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron.Vacoflux50| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image1| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image2| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron.Vacoflux50I.png
