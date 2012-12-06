==================================================
Modelica.Media.CompressibleLiquids.LinearColdWater
==================================================

`Modelica.Media.CompressibleLiquids <Modelica_Media_CompressibleLiquids.html#Modelica.Media.CompressibleLiquids>`_.LinearColdWater
----------------------------------------------------------------------------------------------------------------------------------

**cold water model with linear compressibility**

Information
~~~~~~~~~~~

Extends from
`Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_
(Generic pure liquid model with constant cp, compressibility and thermal
expansion coefficients).

Package Content
~~~~~~~~~~~~~~~

Name

Description

|Modelica.Media.CompressibleLiquids.LinearColdWater.dynamicViscosity|
`dynamicViscosity <Modelica_Media_CompressibleLiquids_LinearColdWater.html#Modelica.Media.CompressibleLiquids.LinearColdWater.dynamicViscosity>`_

Dynamic viscosity of water

|Modelica.Media.CompressibleLiquids.LinearColdWater.thermalConductivity|
`thermalConductivity <Modelica_Media_CompressibleLiquids_LinearColdWater.html#Modelica.Media.CompressibleLiquids.LinearColdWater.thermalConductivity>`_

Thermal conductivity of water

Inherited

cp\_const

Specific heat capacity at constant pressure

beta\_const

Thermal expansion coefficient at constant pressure

kappa\_const

Isothermal compressibility

MM\_const

Molar mass

reference\_d

Density in reference conditions

reference\_h

Specific enthalpy in reference conditions

reference\_s

Specific enthalpy in reference conditions

constantJacobian

if true, entries in thermodynamic Jacobian are constant, taken at
reference conditions

|Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicState|
`ThermodynamicState <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicState>`_

a selection of variables that uniquely defines the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.BaseProperties|
`BaseProperties <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.BaseProperties>`_

Base properties of medium

|Modelica.Media.Interfaces.PartialLinearFluid.setState\_pTX|
`setState\_pTX <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_pTX>`_

set the thermodynamic state record from p and T (X not needed)

|Modelica.Media.Interfaces.PartialLinearFluid.setState\_phX|
`setState\_phX <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_phX>`_

set the thermodynamic state record from p and h (X not needed)

|Modelica.Media.Interfaces.PartialLinearFluid.setState\_psX|
`setState\_psX <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_psX>`_

set the thermodynamic state record from p and s (X not needed)

|Modelica.Media.Interfaces.PartialLinearFluid.setState\_dTX|
`setState\_dTX <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_dTX>`_

set the thermodynamic state record from d and T (X not needed)

|Modelica.Media.Interfaces.PartialLinearFluid.setSmoothState|
`setSmoothState <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

|Modelica.Media.Interfaces.PartialLinearFluid.pressure|
`pressure <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.pressure>`_

Return the pressure from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.temperature|
`temperature <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.temperature>`_

Return the temperature from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.density|
`density <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density>`_

Return the density from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.specificEnthalpy|
`specificEnthalpy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificEnthalpy>`_

Return the specific enthalpy from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.specificEntropy|
`specificEntropy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificEntropy>`_

Return the specific entropy from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificInternalEnergy>`_

Return the specific internal energy from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificGibbsEnergy>`_

Return specific Gibbs energy from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHelmholtzEnergy>`_

Return specific Helmholtz energy from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.velocityOfSound|
`velocityOfSound <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.velocityOfSound>`_

Return velocity of sound from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.isentropicExponent|
`isentropicExponent <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isentropicExponent>`_

Return isentropic exponent from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.isentropicEnthalpy|
`isentropicEnthalpy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isentropicEnthalpy>`_

Return isentropic enthalpy

|Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCp>`_

Return specific heat capacity at constant volume

|Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCv>`_

Return specific heat capacity at constant volume from the thermodynamic
state

|Modelica.Media.Interfaces.PartialLinearFluid.isothermalCompressibility|
`isothermalCompressibility <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isothermalCompressibility>`_

Return the iso-thermal compressibility kappa

|Modelica.Media.Interfaces.PartialLinearFluid.isobaricExpansionCoefficient|
`isobaricExpansionCoefficient <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isobaricExpansionCoefficient>`_

Return the iso-baric expansion coefficient

|Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_h|
`density\_derp\_h <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derp_h>`_

Return density derivative w.r.t. pressure at const specific enthalpy

|Modelica.Media.Interfaces.PartialLinearFluid.density\_derh\_p|
`density\_derh\_p <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derh_p>`_

Return density derivative w.r.t. specific enthalpy at constant pressure

|Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_T|
`density\_derp\_T <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derp_T>`_

Return density derivative w.r.t. pressure at const temperature

|Modelica.Media.Interfaces.PartialLinearFluid.density\_derT\_p|
`density\_derT\_p <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derT_p>`_

Return density derivative w.r.t. temperature at constant pressure

|Modelica.Media.Interfaces.PartialLinearFluid.density\_derX|
`density\_derX <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derX>`_

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

|Modelica.Media.Interfaces.PartialLinearFluid.molarMass|
`molarMass <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.molarMass>`_

Return molar mass

|Modelica.Media.Interfaces.PartialLinearFluid.T\_ph|
`T\_ph <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.T_ph>`_

Return temperature from pressure and specific enthalpy

|Modelica.Media.Interfaces.PartialLinearFluid.T\_ps|
`T\_ps <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.T_ps>`_

Return temperature from pressure and specific entropy

|Modelica.Media.Interfaces.PartialPureSubstance.setState\_pT|
`setState\_pT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_pT>`_

Return thermodynamic state from p and T

|Modelica.Media.Interfaces.PartialPureSubstance.setState\_ph|
`setState\_ph <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_ph>`_

Return thermodynamic state from p and h

|Modelica.Media.Interfaces.PartialPureSubstance.setState\_ps|
`setState\_ps <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_ps>`_

Return thermodynamic state from p and s

|Modelica.Media.Interfaces.PartialPureSubstance.setState\_dT|
`setState\_dT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_dT>`_

Return thermodynamic state from d and T

|Modelica.Media.Interfaces.PartialPureSubstance.density\_ph|
`density\_ph <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.density_ph>`_

Return density from p and h

|Modelica.Media.Interfaces.PartialPureSubstance.temperature\_ph|
`temperature\_ph <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.temperature_ph>`_

Return temperature from p and h

|Modelica.Media.Interfaces.PartialPureSubstance.pressure\_dT|
`pressure\_dT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.pressure_dT>`_

Return pressure from d and T

|Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_dT|
`specificEnthalpy\_dT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy_dT>`_

Return specific enthalpy from d and T

|Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_ps|
`specificEnthalpy\_ps <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy_ps>`_

Return specific enthalpy from p and s

|Modelica.Media.Interfaces.PartialPureSubstance.temperature\_ps|
`temperature\_ps <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.temperature_ps>`_

Return temperature from p and s

|Modelica.Media.Interfaces.PartialPureSubstance.density\_ps|
`density\_ps <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.density_ps>`_

Return density from p and s

|Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_pT|
`specificEnthalpy\_pT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy_pT>`_

Return specific enthalpy from p and T

|Modelica.Media.Interfaces.PartialPureSubstance.density\_pT|
`density\_pT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.density_pT>`_

Return density from p and T

ThermoStates

Enumeration type for independent variables

mediumName="unusablePartialMedium"

Name of the medium

substanceNames={mediumName}

Names of the mixture substances. Set substanceNames={mediumName} if only
one substance.

extraPropertiesNames=fill("", 0)

Names of the additional (extra) transported properties. Set
extraPropertiesNames=fill("",0) if unused

singleState

= true, if u and d are not a function of pressure

reducedX=true

= true if medium contains the equation sum(X) = 1.0; set reducedX=true
if only one substance (see docu for details)

fixedX=false

= true if medium contains the equation X = reference\_X

reference\_p=101325

Reference pressure of Medium: default 1 atmosphere

reference\_T=298.15

Reference temperature of Medium: default 25 deg Celsius

reference\_X=fill(1/nX, nX)

Default mass fractions of medium

p\_default=101325

Default value for pressure of medium (for initialization)

T\_default=Modelica.SIunits.Conversions.from\_degC(20)

Default value for temperature of medium (for initialization)

h\_default=specificEnthalpy\_pTX(p\_default, T\_default, X\_default)

Default value for specific enthalpy of medium (for initialization)

X\_default=reference\_X

Default value for mass fractions of medium (for initialization)

nS=size(substanceNames, 1)

Number of substances

nX=nS

Number of mass fractions

nXi=if fixedX then 0 else if reducedX then nS - 1 else nS

Number of structurally independent mass fractions (see docu for details)

nC=size(extraPropertiesNames, 1)

Number of extra (outside of standard mass-balance) transported
properties

C\_nominal=1.0e-6\*ones(nC)

Default for the nominal values for the extra properties

|Modelica.Media.Interfaces.PartialMedium.FluidConstants|
`FluidConstants <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants>`_

critical, triple, molecular and other standard data of fluid

|Modelica.Media.Interfaces.PartialMedium.prandtlNumber|
`prandtlNumber <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.prandtlNumber>`_

Return the Prandtl number

|Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp|
`heatCapacity\_cp <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cp>`_

alias for deprecated name

|Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv|
`heatCapacity\_cv <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cv>`_

alias for deprecated name

|Modelica.Media.Interfaces.PartialMedium.beta|
`beta <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.beta>`_

alias for isobaricExpansionCoefficient for user convenience

|Modelica.Media.Interfaces.PartialMedium.kappa|
`kappa <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.kappa>`_

alias of isothermalCompressibility for user convenience

|Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_pTX|
`specificEnthalpy\_pTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEnthalpy_pTX>`_

Return specific enthalpy from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX|
`specificEntropy\_pTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy_pTX>`_

Return specific enthalpy from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.density\_pTX|
`density\_pTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_pTX>`_

Return density from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.temperature\_phX|
`temperature\_phX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.temperature_phX>`_

Return temperature from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.density\_phX|
`density\_phX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_phX>`_

Return density from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.temperature\_psX|
`temperature\_psX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.temperature_psX>`_

Return temperature from p,s, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.density\_psX|
`density\_psX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_psX>`_

Return density from p, s, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_psX|
`specificEnthalpy\_psX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEnthalpy_psX>`_

Return specific enthalpy from p, s, and X or Xi

`AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_

Type for absolute pressure with medium specific attributes

`Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_

Type for density with medium specific attributes

`DynamicViscosity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DynamicViscosity>`_

Type for dynamic viscosity with medium specific attributes

`EnthalpyFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.EnthalpyFlowRate>`_

Type for enthalpy flow rate with medium specific attributes

`MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_

Type for mass flow rate with medium specific attributes

`MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_

Type for mass fraction with medium specific attributes

`MoleFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MoleFraction>`_

Type for mole fraction with medium specific attributes

`MolarMass <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MolarMass>`_

Type for molar mass with medium specific attributes

`MolarVolume <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MolarVolume>`_

Type for molar volume with medium specific attributes

`IsentropicExponent <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.IsentropicExponent>`_

Type for isentropic exponent with medium specific attributes

`SpecificEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnergy>`_

Type for specific energy with medium specific attributes

`SpecificInternalEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificInternalEnergy>`_

Type for specific internal energy with medium specific attributes

`SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_

Type for specific enthalpy with medium specific attributes

`SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_

Type for specific entropy with medium specific attributes

`SpecificHeatCapacity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificHeatCapacity>`_

Type for specific heat capacity with medium specific attributes

`SurfaceTension <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SurfaceTension>`_

Type for surface tension with medium specific attributes

`Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_

Type for temperature with medium specific attributes

`ThermalConductivity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermalConductivity>`_

Type for thermal conductivity with medium specific attributes

`PrandtlNumber <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.PrandtlNumber>`_

Type for Prandtl number with medium specific attributes

`VelocityOfSound <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.VelocityOfSound>`_

Type for velocity of sound with medium specific attributes

`ExtraProperty <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraProperty>`_

Type for unspecified, mass-specific property transported by flow

`CumulativeExtraProperty <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.CumulativeExtraProperty>`_

Type for conserved integral of unspecified, mass specific property

`ExtraPropertyFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraPropertyFlowRate>`_

Type for flow rate of unspecified, mass-specific property

`IsobaricExpansionCoefficient <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.IsobaricExpansionCoefficient>`_

Type for isobaric expansion coefficient with medium specific attributes

`DipoleMoment <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DipoleMoment>`_

Type for dipole moment with medium specific attributes

`DerDensityByPressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByPressure>`_

Type for partial derivative of density with resect to pressure with
medium specific attributes

`DerDensityByEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByEnthalpy>`_

Type for partial derivative of density with resect to enthalpy with
medium specific attributes

`DerEnthalpyByPressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerEnthalpyByPressure>`_

Type for partial derivative of enthalpy with resect to pressure with
medium specific attributes

`DerDensityByTemperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByTemperature>`_

Type for partial derivative of density with resect to temperature with
medium specific attributes

|Modelica.Media.Interfaces.PartialMedium.Choices|
`Choices <Modelica_Media_Interfaces_PartialMedium_Choices.html#Modelica.Media.Interfaces.PartialMedium.Choices>`_

Types, constants to define menu choices

--------------

|image60| `Modelica.Media.CompressibleLiquids.LinearColdWater <Modelica_Media_CompressibleLiquids_LinearColdWater.html#Modelica.Media.CompressibleLiquids.LinearColdWater>`_.dynamicViscosity
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Dynamic viscosity of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.dynamicViscosity>`_
(Return dynamic viscosity).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                                                                          | Name   | Description                |
+===============================================================================================================================+========+============================+
| `DynamicViscosity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DynamicViscosity>`_   | eta    | Dynamic viscosity [Pa.s]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends dynamicViscosity 
      "Dynamic viscosity of water"
    algorithm 
      eta := 1.5e-3;
    end dynamicViscosity;

--------------

|image61| `Modelica.Media.CompressibleLiquids.LinearColdWater <Modelica_Media_CompressibleLiquids_LinearColdWater.html#Modelica.Media.CompressibleLiquids.LinearColdWater>`_.thermalConductivity
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal conductivity of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.thermalConductivity>`_
(Return thermal conductivity).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+----------+----------------------------------+
| Type                                                                                                                                | Name     | Description                      |
+=====================================================================================================================================+==========+==================================+
| `ThermalConductivity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermalConductivity>`_   | lambda   | Thermal conductivity [W/(m.K)]   |
+-------------------------------------------------------------------------------------------------------------------------------------+----------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends thermalConductivity 
      "Thermal conductivity of water"
    algorithm 
      lambda := 0.572;
    end thermalConductivity;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:31
2010.

.. |Modelica.Media.CompressibleLiquids.LinearColdWater.dynamicViscosity| image:: Modelica.Media.CompressibleLiquids.LinearColdWater.dynamicViscosityS.png
.. |Modelica.Media.CompressibleLiquids.LinearColdWater.thermalConductivity| image:: Modelica.Media.CompressibleLiquids.LinearColdWater.dynamicViscosityS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicState| image:: Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicStateS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.BaseProperties| image:: Modelica.Media.Interfaces.PartialLinearFluid.BasePropertiesS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.setState\_pTX| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.setState\_phX| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.setState\_psX| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.setState\_dTX| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.setSmoothState| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.pressure| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.temperature| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificEnthalpy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificEntropy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificInternalEnergy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificGibbsEnergy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificHelmholtzEnergy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.velocityOfSound| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.isentropicExponent| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.isentropicEnthalpy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCp| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCv| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.isothermalCompressibility| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.isobaricExpansionCoefficient| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_h| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density\_derh\_p| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_T| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density\_derT\_p| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density\_derX| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.molarMass| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.T\_ph| image:: Modelica.Media.Interfaces.PartialLinearFluid.T_phS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.T\_ps| image:: Modelica.Media.Interfaces.PartialLinearFluid.T_phS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.setState\_pT| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.setState\_ph| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.setState\_ps| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.setState\_dT| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.density\_ph| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.temperature\_ph| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.pressure\_dT| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_dT| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_ps| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.temperature\_ps| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.density\_ps| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_pT| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.density\_pT| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialMedium.FluidConstants| image:: Modelica.Media.Interfaces.PartialMedium.FluidConstantsS.png
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.beta| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.kappa| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature\_phX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_phX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.Choices| image:: Modelica.Media.Interfaces.PartialMedium.ChoicesS.png
.. |image60| image:: Modelica.Media.CompressibleLiquids.LinearColdWater.dynamicViscosityI.png
.. |image61| image:: Modelica.Media.CompressibleLiquids.LinearColdWater.dynamicViscosityI.png
