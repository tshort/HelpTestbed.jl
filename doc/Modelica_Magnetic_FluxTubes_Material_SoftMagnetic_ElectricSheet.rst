===============================================================
Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet
===============================================================

`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_.ElectricSheet
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Various electric sheets**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

::

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| Name                                                                                                                                                                                                                                          | Description                 |
+===============================================================================================================================================================================================================================================+=============================+
| |image5| `M330\_50A <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_ElectricSheet.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M330_50A>`_                                                                         | M330-50A (1.0809) @ 50Hz    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| |image6| `M350\_50A <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_ElectricSheet.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M350_50A>`_                                                                         | M350-50A (1.0810) @ 50Hz    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| |image7| `M530\_50A <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_ElectricSheet.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M530_50A>`_                                                                         | M530-50A (1.0813) @ 50Hz    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| |image8| `M700\_100A <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_ElectricSheet.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M700_100A>`_                                                                       | M700-100A (1.0826) @ 50Hz   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| |image9| `M940\_100A <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_ElectricSheet.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M940_100A>`_                                                                       | M940-100A @ 50Hz            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+

--------------

|image10| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_ElectricSheet.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet>`_.M330\_50A
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**M330-50A (1.0809) @ 50Hz**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

Sample: complete core after machining and packet assembling

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 500       | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 0.7       | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 24000     | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 9.38      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 9.6       | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record M330_50A "M330-50A (1.0809) @ 50Hz"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
          mu_i=500,
          B_myMax=0.7,
          c_a=24000,
          c_b=9.38,
          n=9.6);
    end M330_50A;

--------------

|image11| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_ElectricSheet.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet>`_.M350\_50A
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**M350-50A (1.0810) @ 50Hz**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

Sample: sheet strip
 Measurement: Epstein frame

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 1210      | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.16      | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 24630     | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 2.44      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 14        | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record M350_50A "M350-50A (1.0810) @ 50Hz"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
          mu_i=1210,
          B_myMax=1.16,
          c_a=24630,
          c_b=2.44,
          n=14);
    end M350_50A;

--------------

|image12| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_ElectricSheet.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet>`_.M530\_50A
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**M530-50A (1.0813) @ 50Hz**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

Sample: sheet strip
 Measurement: Epstein frame

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 2120      | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.25      | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 12400     | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 1.6       | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 13.5      | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record M530_50A "M530-50A (1.0813) @ 50Hz"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
          mu_i=2120,
          B_myMax=1.25,
          c_a=12400,
          c_b=1.6,
          n=13.5);
    end M530_50A;

--------------

|image13| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_ElectricSheet.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet>`_.M700\_100A
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**M700-100A (1.0826) @ 50Hz**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

Sample: sheet strip
 Measurement: Epstein frame

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 1120      | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.2       | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 20750     | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 3.55      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 13.15     | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record M700_100A "M700-100A (1.0826) @ 50Hz"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
          mu_i=1120,
          B_myMax=1.2,
          c_a=20750,
          c_b=3.55,
          n=13.15);
    end M700_100A;

--------------

|image14| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_ElectricSheet.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet>`_.M940\_100A
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**M940-100A @ 50Hz**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

Sample: sheet strip
 Measurement: Epstein frame

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 680       | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.26      | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 17760     | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 3.13      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 13.9      | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record M940_100A "M940-100A @ 50Hz"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
          mu_i=680,
          B_myMax=1.26,
          c_a=17760,
          c_b=3.13,
          n=13.9);
    end M940_100A;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:52
2010.

.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M330\_50A| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M350\_50A| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M530\_50A| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M700\_100A| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M940\_100A| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image5| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image6| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image7| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image8| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image9| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image10| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M330_50AI.png
.. |image11| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M330_50AI.png
.. |image12| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M330_50AI.png
.. |image13| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M330_50AI.png
.. |image14| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M330_50AI.png
