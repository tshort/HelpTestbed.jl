================================
Modelica.Media.IdealGases.Common
================================

`Modelica.Media.IdealGases <Modelica_Media_IdealGases.html#Modelica.Media.IdealGases>`_.Common
----------------------------------------------------------------------------------------------

**Common packages and data for the ideal gas models**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| Name                                                                                                                                                                             | Description                                                                  |
+==================================================================================================================================================================================+==============================================================================+
| |image5| `DataRecord <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common.DataRecord>`_                                                                       | Coefficient data record for properties of ideal gases based on NASA source   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image6| `SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_                                                   | Medium model of an ideal gas based on NASA source                            |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image7| `MixtureGasNasa <Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa>`_                                                | Medium model of a mixture of ideal gases based on NASA source                |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image8| `FluidData <Modelica_Media_IdealGases_Common_FluidData.html#Modelica.Media.IdealGases.Common.FluidData>`_                                                               | Critical data, dipole moments and related data                               |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image9| `SingleGasesData <Modelica_Media_IdealGases_Common_SingleGasesData.html#Modelica.Media.IdealGases.Common.SingleGasesData>`_                                             | Ideal gas data based on the NASA Glenn coefficients                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+

--------------

|image10| `Modelica.Media.IdealGases.Common <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common>`_.DataRecord
---------------------------------------------------------------------------------------------------------------------------------

**Coefficient data record for properties of ideal gases based on NASA
source**

Information
~~~~~~~~~~~

::

This data record contains the coefficients for the ideal gas equations
according to:

    McBride B.J., Zehe M.J., and Gordon S. (2002): **NASA Glenn
    Coefficients for Calculating Thermodynamic Properties of Individual
    Species**. NASA report TP-2002-211556

The equations have the following structure:

.. figure:: ../Resources/Images/Media/IdealGases/singleEquations.png
   :align: center
   :alt: 

The polynomials for h(T) and s0(T) are derived via integration from the
one for cp(T) and contain the integration constants b1, b2 that define
the reference specific enthalpy and entropy. For entropy differences the
reference pressure p0 is arbitrary, but not for absolute entropies. It
is chosen as 1 standard atmosphere (101325 Pa).

For most gases, the region of validity is from 200 K to 6000 K. The
equations are splitted into two regions that are separated by Tlimit
(usually 1000 K). In both regions the gas is described by the data
above. The two branches are continuous and in most gases also
differentiable at Tlimit.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record DataRecord 
      "Coefficient data record for properties of ideal gases based on NASA source"
      extends Modelica.Icons.Record;
      String name "Name of ideal gas";
      SI.MolarMass MM "Molar mass";
      SI.SpecificEnthalpy Hf "Enthalpy of formation at 298.15K";
      SI.SpecificEnthalpy H0 "H0(298.15K) - H0(0K)";
      SI.Temperature Tlimit "Temperature limit between low and high data sets";
      Real alow[7] "Low temperature coefficients a";
      Real blow[2] "Low temperature constants b";
      Real ahigh[7] "High temperature coefficients a";
      Real bhigh[2] "High temperature constants b";
      SI.SpecificHeatCapacity R "Gas constant";
    end DataRecord;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:31
2010.

.. |Modelica.Media.IdealGases.Common.DataRecord| image:: Modelica.Media.IdealGases.Common.DataRecordS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa| image:: Modelica.Media.IdealGases.Common.SingleGasNasaS.png
.. |Modelica.Media.IdealGases.Common.MixtureGasNasa| image:: Modelica.Media.IdealGases.Common.SingleGasNasaS.png
.. |Modelica.Media.IdealGases.Common.FluidData| image:: Modelica.Media.IdealGases.Common.FluidDataS.png
.. |Modelica.Media.IdealGases.Common.SingleGasesData| image:: Modelica.Media.IdealGases.Common.FluidDataS.png
.. |image5| image:: Modelica.Media.IdealGases.Common.DataRecordS.png
.. |image6| image:: Modelica.Media.IdealGases.Common.SingleGasNasaS.png
.. |image7| image:: Modelica.Media.IdealGases.Common.SingleGasNasaS.png
.. |image8| image:: Modelica.Media.IdealGases.Common.FluidDataS.png
.. |image9| image:: Modelica.Media.IdealGases.Common.FluidDataS.png
.. |image10| image:: Modelica.Media.IdealGases.Common.DataRecordI.png
