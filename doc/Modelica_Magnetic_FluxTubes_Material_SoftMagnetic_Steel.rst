=======================================================
Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel
=======================================================

`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_.Steel
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Various ferromagnetic steels**

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

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| Name                                                                                                                                                                                                                                 | Description                     |
+======================================================================================================================================================================================================================================+=================================+
| |image7| `Steel\_9SMnPb28 <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28>`_                                                                    | 9SMnPb28 (1.0718)               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image8| `Steel\_9SMn28K <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMn28K>`_                                                                      | 9SMn28k (1.0715)                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image9| `DC01 <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.DC01>`_                                                                                         | DC01 (1.0330, previously St2)   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image10| `DC03 <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.DC03>`_                                                                                        | DC03 (1.0347, previously St3)   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image11| `X6Cr17 <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.X6Cr17>`_                                                                                    | X6Cr17 (1.4016)                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image12| `AISI\_1008 <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.AISI_1008>`_                                                                             | AISI 1008 (1.0204)              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image13| `AISI\_12L14 <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.AISI_12L14>`_                                                                           | AISI 12L14 (1.0718)             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+

--------------

|image14| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel>`_.Steel\_9SMnPb28
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**9SMnPb28 (1.0718)**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 400       | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.488     | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 1200      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 3         | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 12.5      | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Steel_9SMnPb28 "9SMnPb28 (1.0718)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=400,
        B_myMax=1.488,
        c_a=1200,
        c_b=3,
        n=12.5);
    end Steel_9SMnPb28;

--------------

|image15| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel>`_.Steel\_9SMn28K
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**9SMn28k (1.0715)**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

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
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.036     | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 43414     | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 35.8      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 14        | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Steel_9SMn28K "9SMn28k (1.0715)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=500,
        B_myMax=1.036,
        c_a=43414,
        c_b=35.8,
        n=14);
    end Steel_9SMn28K;

--------------

|image16| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel>`_.DC01
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**DC01 (1.0330, previously St2)**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 5         | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.1       | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 6450      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 3.65      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 7.7       | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record DC01 "DC01 (1.0330, previously St2)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=5,
        B_myMax=1.1,
        c_a=6450,
        c_b=3.65,
        n=7.7);
    end DC01;

--------------

|image17| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel>`_.DC03
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**DC03 (1.0347, previously St3)**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 0         | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.05      | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 27790     | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 16        | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 10.4      | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record DC03 "DC03 (1.0347, previously St3)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=0,
        B_myMax=1.05,
        c_a=27790,
        c_b=16,
        n=10.4);
    end DC03;

--------------

|image18| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel>`_.X6Cr17
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**X6Cr17 (1.4016)**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 274       | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.1       | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 970       | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 1.2       | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 8.3       | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record X6Cr17 "X6Cr17 (1.4016)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=274,
        B_myMax=1.1,
        c_a=970,
        c_b=1.2,
        n=8.3);
    end X6Cr17;

--------------

|image19| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel>`_.AISI\_1008
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**AISI 1008 (1.0204)**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 200       | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 1.17      | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 8100      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 2.59      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 10        | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record AISI_1008 "AISI 1008 (1.0204)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=200,
        B_myMax=1.17,
        c_a=8100,
        c_b=2.59,
        n=10);
    end AISI_1008;

--------------

|image20| `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic_Steel.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel>`_.AISI\_12L14
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**AISI 12L14 (1.0718)**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`SoftMagnetic <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic>`_
for a description of all soft magnetic material characteristics of this
package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData>`_
(Coefficients for approximation of soft magnetic materials).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                    | Name       | Default   | Description                                         |
+=========================================================================================+============+===========+=====================================================+
| `RelativePermeability <Modelica_SIunits.html#Modelica.SIunits.RelativePermeability>`_   | mu\_i      | 10        | Initial relative permeability at B=0 [1]            |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_     | B\_myMax   | 0.94      | Flux density at maximum relative permeability [T]   |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_a       | 5900      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | c\_b       | 4.19      | Coefficient of approximation function               |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                    | n          | 6.4       | Exponent of approximation function                  |
+-----------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record AISI_12L14 "AISI 12L14 (1.0718)"
      extends Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData(
        mu_i=10,
        B_myMax=0.94,
        c_a=5900,
        c_b=4.19,
        n=6.4);
    end AISI_12L14;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:52
2010.

.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel\_9SMnPb28| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel\_9SMn28K| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.DC01| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.DC03| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.X6Cr17| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.AISI\_1008| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.AISI\_12L14| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image7| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image8| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image9| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image10| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image11| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image12| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image13| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image14| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28I.png
.. |image15| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28I.png
.. |image16| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28I.png
.. |image17| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28I.png
.. |image18| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28I.png
.. |image19| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28I.png
.. |image20| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28I.png
