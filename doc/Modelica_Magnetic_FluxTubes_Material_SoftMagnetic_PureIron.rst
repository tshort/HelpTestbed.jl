==========================================================
Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron
==========================================================

`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_.PureIron
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pure iron**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| Name                                                                                                                                                                                                                         | Description              |
+==============================================================================================================================================================================================================================+==========================+
| |image2| `RFe80 <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_PureIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron.RFe80>`_                                                                         | Hyperm 0 (RFe80)         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| |image3| `VacoferS2 <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_PureIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron.VacoferS2>`_                                                                 | VACOFER S2 (99.95% Fe)   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+

--------------

|image4| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_PureIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron>`_.RFe80
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Hyperm 0 (RFe80)**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

Source of B(H) characteristics: Product catalogue *Magnequench*, 2000

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 123       | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.27      | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 44410     | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 6.4       | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 10        | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record RFe80 "Hyperm 0 (RFe80)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=123,
        B_myMax=1.27,
        c_a=44410,
        c_b=6.4,
        n=10);
    end RFe80;

--------------

|image5| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_PureIron.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron>`_.VacoferS2
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**VACOFER S2 (99.95% Fe)**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

Source of B(H) characteristics:
    *Boll, R.*: Weichmagnetische Werkstoffe: Einführung in den
    Magnetismus, VAC-Werkstoffe und ihre Anwendungen. 4th ed. Berlin,
    München: Siemens Aktiengesellschaft 1990

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 2666      | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.15      | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 187000    | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 4.24      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 19        | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record VacoferS2 "VACOFER S2 (99.95% Fe)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=2666,
        B_myMax=1.15,
        c_a=187000,
        c_b=4.24,
        n=19);
    end VacoferS2;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:52
2010.

.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron.RFe80| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron.VacoferS2| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image2| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image3| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image4| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron.RFe80I.png
.. |image5| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron.RFe80I.png
