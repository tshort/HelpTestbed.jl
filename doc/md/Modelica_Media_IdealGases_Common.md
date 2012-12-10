% Modelica.Media.IdealGases.Common
% 
% 

[Modelica.Media.IdealGases](Modelica_Media_IdealGases.html#Modelica.Media.IdealGases).Common
============================================================================================

**Common packages and data for the ideal gas models**

Information
-----------

::

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                              Description
  ------------------------------------------------- ----------------------
  ![image5](Modelica.Media.IdealGases.Common.DataRe Coefficient data
  cordS.png)                                        record for properties
  [DataRecord](Modelica_Media_IdealGases_Common.htm of ideal gases based
  l#Modelica.Media.IdealGases.Common.DataRecord)    on NASA source

  ![image6](Modelica.Media.IdealGases.Common.Single Medium model of an
  GasNasaS.png)                                     ideal gas based on
  [SingleGasNasa](Modelica_Media_IdealGases_Common_ NASA source
  SingleGasNasa.html#Modelica.Media.IdealGases.Comm 
  on.SingleGasNasa)                                 

  ![image7](Modelica.Media.IdealGases.Common.Single Medium model of a
  GasNasaS.png)                                     mixture of ideal gases
  [MixtureGasNasa](Modelica_Media_IdealGases_Common based on NASA source
  _MixtureGasNasa.html#Modelica.Media.IdealGases.Co 
  mmon.MixtureGasNasa)                              

  ![image8](Modelica.Media.IdealGases.Common.FluidD Critical data, dipole
  ataS.png)                                         moments and related
  [FluidData](Modelica_Media_IdealGases_Common_Flui data
  dData.html#Modelica.Media.IdealGases.Common.Fluid 
  Data)                                             

  ![image9](Modelica.Media.IdealGases.Common.FluidD Ideal gas data based
  ataS.png)                                         on the NASA Glenn
  [SingleGasesData](Modelica_Media_IdealGases_Commo coefficients
  n_SingleGasesData.html#Modelica.Media.IdealGases. 
  Common.SingleGasesData)                           
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Media.IdealGases.Common.DataRecordI.png) [Modelica.Media.IdealGases.Common](Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common).DataRecord
==================================================================================================================================================================================

**Coefficient data record for properties of ideal gases based on NASA
source**

Information
-----------

::

This data record contains the coefficients for the ideal gas equations
according to:

> McBride B.J., Zehe M.J., and Gordon S. (2002): **NASA Glenn
> Coefficients for Calculating Thermodynamic Properties of Individual
> Species**. NASA report TP-2002-211556

The equations have the following structure:

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
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:31 2010.
