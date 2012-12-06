=================================================
Modelica.Magnetic.FluxTubes.Material.HardMagnetic
=================================================

`Modelica.Magnetic.FluxTubes.Material <Modelica_Magnetic_FluxTubes_Material.html#Modelica.Magnetic.FluxTubes.Material>`_.HardMagnetic
-------------------------------------------------------------------------------------------------------------------------------------

**Characteristics of common permanent magnetic materials (temperature
dependence considered)**

Information
~~~~~~~~~~~

::

Typical values for remanence, coercivity and the temperature coefficient
of remanence are provided for the common permanent magnetic materials
illustrated below.

.. figure:: ../Resources/Images/Magnetic/FluxTubes/Material/HardMagnetic/HardMagneticMaterials.png
   :align: center
   :alt: Demagnetization characteristics of included permanent magnetic
   materials

   Demagnetization characteristics of included permanent magnetic
   materials
Linear demagnetization curves are modelled. The characteristic,
temperature-dependent "knee" of many permanent magnetic materials is not
considered, since proper design of permanent magnetic circuits should
avoid operation of permanent magnets "below" that point due to partial
demagnetization. As a result, the temperature coefficient of coercivity
is not considered. Only the temperature coefficient of remanence
alpha\_Br is accounted for, since it describes the dependende of the
demagnetization curve on the temperature sufficiently for the region
"above the knee-point".

Additional user-specific materials can be defined as needed.

::

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| Name                                                                                                                                                                                                                         | Description                                     |
+==============================================================================================================================================================================================================================+=================================================+
| |image8| `BaseData <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData>`_                                                                                     | Record for permanent magnetic material data     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image9| `NdFeB <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.NdFeB>`_                                                                                           | NdFeB sintered; exemplary values                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image10| `Sm2Co17 <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.Sm2Co17>`_                                                                                      | Sm2Co17 sintered, exemplary values              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image11| `SmCo5 <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.SmCo5>`_                                                                                          | SmCo5 sintered, exemplary values                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image12| `PlasticNdFeB <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.PlasticNdFeB>`_                                                                            | Plastic-bonded NdFeB, exemplary values          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image13| `PlasticSmCo <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.PlasticSmCo>`_                                                                              | Plastic-bonded Sm-Co, exemplary values          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image14| `HardFerrite <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.HardFerrite>`_                                                                              | Hard ferrite sintered, exemplary values         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image15| `PlasticHardFerrite <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.PlasticHardFerrite>`_                                                                | Plastic-bonded hard ferrite, exemplary values   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+

--------------

|image16| `Modelica.Magnetic.FluxTubes.Material.HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_.BaseData
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Record for permanent magnetic material data**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-------------+-----------+-----------------------------------------------------------------------+
| Type                                                                                                    | Name        | Default   | Description                                                           |
+=========================================================================================================+=============+===========+=======================================================================+
| `MagneticFieldStrength <Modelica_SIunits.html#Modelica.SIunits.MagneticFieldStrength>`_                 | H\_cBRef    | 1         | Coercivity at reference temperature [A/m]                             |
+---------------------------------------------------------------------------------------------------------+-------------+-----------+-----------------------------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_                     | B\_rRef     | 1         | Remanence at reference temperature [T]                                |
+---------------------------------------------------------------------------------------------------------+-------------+-----------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref      | 293.15    | Reference temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+-----------+-----------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_Br   | 0         | Temperature coefficient of remanence at reference temperature [1/K]   |
+---------------------------------------------------------------------------------------------------------+-------------+-----------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_op       | 293.15    | Operating temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+-----------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record BaseData "Record for permanent magnetic material data"
      extends Modelica.Icons.Record;

      parameter SI.MagneticFieldStrength H_cBRef = 1 
        "Coercivity at reference temperature";
      parameter SI.MagneticFluxDensity B_rRef = 1 
        "Remanence at reference temperature";
      parameter SI.Temperature T_ref = 293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_Br=
                                                            0 
        "Temperature coefficient of remanence at reference temperature";

      parameter SI.Temperature T_op = 293.15 "Operating temperature";

      final parameter SI.MagneticFluxDensity B_r = B_rRef * (1 + alpha_Br *(T_op - T_ref)) 
        "Remanence at operating temperature";
      final parameter SI.MagneticFieldStrength H_cB = H_cBRef * (1 + alpha_Br *(T_op - T_ref)) 
        "Coercivity at operating temperature";
      final parameter SI.RelativePermeability mu_r = B_r/ (mu_0 * H_cB) 
        "Relative permeability";

    end BaseData;

--------------

|image17| `Modelica.Magnetic.FluxTubes.Material.HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_.NdFeB
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**NdFeB sintered; exemplary values**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData>`_
(Record for permanent magnetic material data).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| Type                                                                                                    | Name        | Default       | Description                                                           |
+=========================================================================================================+=============+===============+=======================================================================+
| `MagneticFieldStrength <Modelica_SIunits.html#Modelica.SIunits.MagneticFieldStrength>`_                 | H\_cBRef    | 900000        | Coercivity at reference temperature [A/m]                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_                     | B\_rRef     | 1.2           | Remanence at reference temperature [T]                                |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref      | 20 + 273.15   | Reference temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_Br   | -0.001        | Temperature coefficient of remanence at reference temperature [1/K]   |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_op       | 293.15        | Operating temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record NdFeB "NdFeB sintered; exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=900000,
        B_rRef=1.2,
        T_ref=20 + 273.15,
        alpha_Br=-0.001);
    end NdFeB;

--------------

|image18| `Modelica.Magnetic.FluxTubes.Material.HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_.Sm2Co17
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Sm2Co17 sintered, exemplary values**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData>`_
(Record for permanent magnetic material data).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| Type                                                                                                    | Name        | Default       | Description                                                           |
+=========================================================================================================+=============+===============+=======================================================================+
| `MagneticFieldStrength <Modelica_SIunits.html#Modelica.SIunits.MagneticFieldStrength>`_                 | H\_cBRef    | 750000        | Coercivity at reference temperature [A/m]                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_                     | B\_rRef     | 1.02          | Remanence at reference temperature [T]                                |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref      | 20 + 273.15   | Reference temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_Br   | -0.0003       | Temperature coefficient of remanence at reference temperature [1/K]   |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_op       | 293.15        | Operating temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Sm2Co17 "Sm2Co17 sintered, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=750000,
        B_rRef=1.02,
        T_ref=20 + 273.15,
        alpha_Br=-0.0003);
    end Sm2Co17;

--------------

|image19| `Modelica.Magnetic.FluxTubes.Material.HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_.SmCo5
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**SmCo5 sintered, exemplary values**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData>`_
(Record for permanent magnetic material data).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| Type                                                                                                    | Name        | Default       | Description                                                           |
+=========================================================================================================+=============+===============+=======================================================================+
| `MagneticFieldStrength <Modelica_SIunits.html#Modelica.SIunits.MagneticFieldStrength>`_                 | H\_cBRef    | 720000        | Coercivity at reference temperature [A/m]                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_                     | B\_rRef     | 0.95          | Remanence at reference temperature [T]                                |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref      | 20 + 273.15   | Reference temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_Br   | -0.0004       | Temperature coefficient of remanence at reference temperature [1/K]   |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_op       | 293.15        | Operating temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record SmCo5 "SmCo5 sintered, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=720000,
        B_rRef=0.95,
        T_ref=20 + 273.15,
        alpha_Br=-0.0004);
    end SmCo5;

--------------

|image20| `Modelica.Magnetic.FluxTubes.Material.HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_.PlasticNdFeB
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Plastic-bonded NdFeB, exemplary values**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData>`_
(Record for permanent magnetic material data).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| Type                                                                                                    | Name        | Default       | Description                                                           |
+=========================================================================================================+=============+===============+=======================================================================+
| `MagneticFieldStrength <Modelica_SIunits.html#Modelica.SIunits.MagneticFieldStrength>`_                 | H\_cBRef    | 400000        | Coercivity at reference temperature [A/m]                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_                     | B\_rRef     | 0.58          | Remanence at reference temperature [T]                                |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref      | 20 + 273.15   | Reference temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_Br   | -0.001        | Temperature coefficient of remanence at reference temperature [1/K]   |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_op       | 293.15        | Operating temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PlasticNdFeB "Plastic-bonded NdFeB, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=400000,
        B_rRef=0.58,
        T_ref=20 + 273.15,
        alpha_Br=-0.001);
    end PlasticNdFeB;

--------------

|image21| `Modelica.Magnetic.FluxTubes.Material.HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_.PlasticSmCo
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Plastic-bonded Sm-Co, exemplary values**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData>`_
(Record for permanent magnetic material data).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| Type                                                                                                    | Name        | Default       | Description                                                           |
+=========================================================================================================+=============+===============+=======================================================================+
| `MagneticFieldStrength <Modelica_SIunits.html#Modelica.SIunits.MagneticFieldStrength>`_                 | H\_cBRef    | 385000        | Coercivity at reference temperature [A/m]                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_                     | B\_rRef     | 0.57          | Remanence at reference temperature [T]                                |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref      | 20 + 273.15   | Reference temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_Br   | -0.0004       | Temperature coefficient of remanence at reference temperature [1/K]   |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_op       | 293.15        | Operating temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PlasticSmCo "Plastic-bonded Sm-Co, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=385000,
        B_rRef=0.57,
        T_ref=20 + 273.15,
        alpha_Br=-0.0004);
    end PlasticSmCo;

--------------

|image22| `Modelica.Magnetic.FluxTubes.Material.HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_.HardFerrite
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Hard ferrite sintered, exemplary values**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData>`_
(Record for permanent magnetic material data).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| Type                                                                                                    | Name        | Default       | Description                                                           |
+=========================================================================================================+=============+===============+=======================================================================+
| `MagneticFieldStrength <Modelica_SIunits.html#Modelica.SIunits.MagneticFieldStrength>`_                 | H\_cBRef    | 170000        | Coercivity at reference temperature [A/m]                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_                     | B\_rRef     | 0.38          | Remanence at reference temperature [T]                                |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref      | 20 + 273.15   | Reference temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_Br   | -0.002        | Temperature coefficient of remanence at reference temperature [1/K]   |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_op       | 293.15        | Operating temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record HardFerrite "Hard ferrite sintered, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=170000,
        B_rRef=0.38,
        T_ref=20 + 273.15,
        alpha_Br=-0.002);
    end HardFerrite;

--------------

|image23| `Modelica.Magnetic.FluxTubes.Material.HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_.PlasticHardFerrite
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Plastic-bonded hard ferrite, exemplary values**

Information
~~~~~~~~~~~

::

Please refer to the description of the enclosing package
`HardMagnetic <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic>`_
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
`Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData <Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData>`_
(Record for permanent magnetic material data).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| Type                                                                                                    | Name        | Default       | Description                                                           |
+=========================================================================================================+=============+===============+=======================================================================+
| `MagneticFieldStrength <Modelica_SIunits.html#Modelica.SIunits.MagneticFieldStrength>`_                 | H\_cBRef    | 130000        | Coercivity at reference temperature [A/m]                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `MagneticFluxDensity <Modelica_SIunits.html#Modelica.SIunits.MagneticFluxDensity>`_                     | B\_rRef     | 0.21          | Remanence at reference temperature [T]                                |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref      | 20 + 273.15   | Reference temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_Br   | -0.002        | Temperature coefficient of remanence at reference temperature [1/K]   |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_op       | 293.15        | Operating temperature [K]                                             |
+---------------------------------------------------------------------------------------------------------+-------------+---------------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PlasticHardFerrite 
      "Plastic-bonded hard ferrite, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=130000,
        B_rRef=0.21,
        T_ref=20 + 273.15,
        alpha_Br=-0.002);
    end PlasticHardFerrite;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:52
2010.

.. |Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.HardMagnetic.NdFeB| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.HardMagnetic.Sm2Co17| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.HardMagnetic.SmCo5| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.HardMagnetic.PlasticNdFeB| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.HardMagnetic.PlasticSmCo| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.HardMagnetic.HardFerrite| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |Modelica.Magnetic.FluxTubes.Material.HardMagnetic.PlasticHardFerrite| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image8| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image9| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image10| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image11| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image12| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image13| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image14| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image15| image:: Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28S.png
.. |image16| image:: Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png
.. |image17| image:: Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png
.. |image18| image:: Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png
.. |image19| image:: Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png
.. |image20| image:: Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png
.. |image21| image:: Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png
.. |image22| image:: Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png
.. |image23| image:: Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png
