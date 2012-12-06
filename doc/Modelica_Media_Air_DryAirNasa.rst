=============================
Modelica.Media.Air.DryAirNasa
=============================

`Modelica.Media.Air <Modelica_Media_Air.html#Modelica.Media.Air>`_.DryAirNasa
-----------------------------------------------------------------------------

**Air: Detailed dry air model as ideal gas (200..6000 K)**

Information
~~~~~~~~~~~

::

.. figure:: ../Resources/Images/Media/IdealGases/SingleGases/Air.png
   :align: center
   :alt: 

::

Extends from
`IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_
(Medium model of an ideal gas based on NASA source).

Package Content
~~~~~~~~~~~~~~~

Name

Description

|Modelica.Media.Air.DryAirNasa.dynamicViscosity|
`dynamicViscosity <Modelica_Media_Air_DryAirNasa.html#Modelica.Media.Air.DryAirNasa.dynamicViscosity>`_

Simple polynomial for dry air (moisture influence small), valid from
73.15 K to 373.15 K

|Modelica.Media.Air.DryAirNasa.thermalConductivity|
`thermalConductivity <Modelica_Media_Air_DryAirNasa.html#Modelica.Media.Air.DryAirNasa.thermalConductivity>`_

Simple polynomial for dry air (moisture influence small), valid from
73.15 K to 373.15 K

Inherited

|Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState|
`ThermodynamicState <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState>`_

thermodynamic state variables for ideal gases

|Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants|
`FluidConstants <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants>`_

Extended fluid constants

excludeEnthalpyOfFormation=true

If true, enthalpy of formation Hf is not included in specific enthalpy h

referenceChoice=Choices.ReferenceEnthalpy.ZeroAt0K

Choice of reference enthalpy

h\_offset=0.0

User defined offset for reference enthalpy, if referenceChoice =
UserDefined

data

Data record of ideal gas substance

fluidConstants

constant data for the fluid

|Modelica.Media.IdealGases.Common.SingleGasNasa.BaseProperties|
`BaseProperties <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.BaseProperties>`_

Base properties of ideal gas medium

|Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_pTX|
`setState\_pTX <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTX>`_

Return thermodynamic state as function of p, T and composition X

|Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_phX|
`setState\_phX <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_phX>`_

Return thermodynamic state as function of p, h and composition X

|Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_psX|
`setState\_psX <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_psX>`_

Return thermodynamic state as function of p, s and composition X

|Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_dTX|
`setState\_dTX <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_dTX>`_

Return thermodynamic state as function of d, T and composition X

|Modelica.Media.IdealGases.Common.SingleGasNasa.setSmoothState|
`setSmoothState <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

|Modelica.Media.IdealGases.Common.SingleGasNasa.pressure|
`pressure <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.pressure>`_

return pressure of ideal gas

|Modelica.Media.IdealGases.Common.SingleGasNasa.temperature|
`temperature <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.temperature>`_

return temperature of ideal gas

|Modelica.Media.IdealGases.Common.SingleGasNasa.density|
`density <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density>`_

return density of ideal gas

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificEnthalpy|
`specificEnthalpy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificEnthalpy>`_

Return specific enthalpy

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificInternalEnergy>`_

Return specific internal energy

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificEntropy|
`specificEntropy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificEntropy>`_

Return specific entropy

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificGibbsEnergy>`_

Return specific Gibbs energy

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHelmholtzEnergy>`_

Return specific Helmholtz energy

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCp>`_

Return specific heat capacity at constant pressure

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCv>`_

Compute specific heat capacity at constant volume from temperature and
gas data

|Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicExponent|
`isentropicExponent <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicExponent>`_

Return isentropic exponent

|Modelica.Media.IdealGases.Common.SingleGasNasa.velocityOfSound|
`velocityOfSound <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.velocityOfSound>`_

Return velocity of sound

|Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpyApproximation|
`isentropicEnthalpyApproximation <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpyApproximation>`_

approximate method of calculating h\_is from upstream properties and
downstream pressure

|Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpy|
`isentropicEnthalpy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpy>`_

Return isentropic enthalpy

|Modelica.Media.IdealGases.Common.SingleGasNasa.isobaricExpansionCoefficient|
`isobaricExpansionCoefficient <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isobaricExpansionCoefficient>`_

Returns overall the isobaric expansion coefficient beta

|Modelica.Media.IdealGases.Common.SingleGasNasa.isothermalCompressibility|
`isothermalCompressibility <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isothermalCompressibility>`_

Returns overall the isothermal compressibility factor

|Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derp\_T|
`density\_derp\_T <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derp_T>`_

Returns the partial derivative of density with respect to pressure at
constant temperature

|Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derT\_p|
`density\_derT\_p <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derT_p>`_

Returns the partial derivative of density with respect to temperature at
constant pressure

|Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derX|
`density\_derX <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derX>`_

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

|Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_T|
`cp\_T <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_T>`_

Compute specific heat capacity at constant pressure from temperature and
gas data

|Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow|
`cp\_Tlow <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_Tlow>`_

Compute specific heat capacity at constant pressure, low T region

|Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow\_der|
`cp\_Tlow\_der <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_Tlow_der>`_

Compute specific heat capacity at constant pressure, low T region

|Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T|
`h\_T <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_T>`_

Compute specific enthalpy from temperature and gas data; reference is
decided by the refChoice input, or by the referenceChoice package
constant by default

|Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T\_der|
`h\_T\_der <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_T_der>`_

derivative function for h\_T

|Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow|
`h\_Tlow <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow>`_

Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default

|Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow\_der|
`h\_Tlow\_der <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow_der>`_

Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default

|Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_T|
`s0\_T <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.s0_T>`_

Compute specific entropy from temperature and gas data

|Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_Tlow|
`s0\_Tlow <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.s0_Tlow>`_

Compute specific entropy, low T region

|Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosityLowPressure|
`dynamicViscosityLowPressure <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosityLowPressure>`_

Dynamic viscosity of low pressure gases

|Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivityEstimate|
`thermalConductivityEstimate <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivityEstimate>`_

Thermal conductivity of polyatomic gases(Eucken and Modified Eucken
correlation)

|Modelica.Media.IdealGases.Common.SingleGasNasa.molarMass|
`molarMass <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.molarMass>`_

return the molar mass of the medium

|Modelica.Media.IdealGases.Common.SingleGasNasa.T\_h|
`T\_h <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.T_h>`_

Compute temperature from specific enthalpy

|Modelica.Media.IdealGases.Common.SingleGasNasa.T\_ps|
`T\_ps <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.T_ps>`_

Compute temperature from pressure and specific entropy

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

|Modelica.Media.Interfaces.PartialMedium.density\_derp\_h|
`density\_derp\_h <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_h>`_

Return density derivative w.r.t. pressure at const specific enthalpy

|Modelica.Media.Interfaces.PartialMedium.density\_derh\_p|
`density\_derh\_p <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derh_p>`_

Return density derivative w.r.t. specific enthalpy at constant pressure

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

|image72| `Modelica.Media.Air.DryAirNasa <Modelica_Media_Air_DryAirNasa.html#Modelica.Media.Air.DryAirNasa>`_.dynamicViscosity
------------------------------------------------------------------------------------------------------------------------------

**Simple polynomial for dry air (moisture influence small), valid from
73.15 K to 373.15 K**

Information
~~~~~~~~~~~

::

Dynamic viscosity is computed from temperature using a second order
polynomial with a range of validity between 73 and 373 K.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                                            | Name    | Default   | Description                  |
+=================================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState>`_   | state   |           | Thermodynamic state record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

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

    redeclare function dynamicViscosity 
      "Simple polynomial for dry air (moisture influence small), valid from 73.15 K to 373.15 K"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "Thermodynamic state record";
      output DynamicViscosity eta "Dynamic viscosity";
    algorithm 
      eta := Incompressible.TableBased.Polynomials_Temp.evaluate({(-4.96717436974791E-011), 5.06626785714286E-008, 1.72937731092437E-005}, Cv.to_degC(state.T));
    end dynamicViscosity;

--------------

|image73| `Modelica.Media.Air.DryAirNasa <Modelica_Media_Air_DryAirNasa.html#Modelica.Media.Air.DryAirNasa>`_.thermalConductivity
---------------------------------------------------------------------------------------------------------------------------------

**Simple polynomial for dry air (moisture influence small), valid from
73.15 K to 373.15 K**

Information
~~~~~~~~~~~

::

Thermal conductivity is computed from temperature using a second order
polynomial with a range of validity between 73 and 373 K.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| Type                                                                                                                                            | Name     | Default   | Description                       |
+=================================================================================================================================================+==========+===========+===================================+
| `ThermodynamicState <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState>`_   | state    |           | Thermodynamic state record        |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| Integer                                                                                                                                         | method   | 1         | Dummy for compatibility reasons   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+

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

    redeclare function thermalConductivity 
      "Simple polynomial for dry air (moisture influence small), valid from 73.15 K to 373.15 K"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "Thermodynamic state record";
      input Integer method=1 "Dummy for compatibility reasons";
      output ThermalConductivity lambda "Thermal conductivity";
    algorithm 
      lambda := Incompressible.TableBased.Polynomials_Temp.evaluate({(-4.8737307422969E-008), 7.67803133753502E-005, 0.0241814385504202},Cv.to_degC(state.T));

    end thermalConductivity;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:31
2010.

.. |Modelica.Media.Air.DryAirNasa.dynamicViscosity| image:: Modelica.Media.Air.DryAirNasa.dynamicViscosityS.png
.. |Modelica.Media.Air.DryAirNasa.thermalConductivity| image:: Modelica.Media.Air.DryAirNasa.dynamicViscosityS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.BaseProperties| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.BasePropertiesS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_pTX| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_phX| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_psX| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_dTX| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.setSmoothState| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.pressure| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.temperature| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.density| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificEnthalpy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificInternalEnergy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificEntropy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificGibbsEnergy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificHelmholtzEnergy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCp| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCv| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicExponent| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.velocityOfSound| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpyApproximation| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.isobaricExpansionCoefficient| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.isothermalCompressibility| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derp\_T| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derT\_p| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derX| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_T| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow\_der| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T\_der| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow\_der| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_T| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_Tlow| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosityLowPressure| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivityEstimate| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.molarMass| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.T\_h| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.T_hS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.T\_ps| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.T_hS.png
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
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.beta| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.kappa| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derp\_h| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derh\_p| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature\_phX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_phX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.Choices| image:: Modelica.Media.Interfaces.PartialMedium.ChoicesS.png
.. |image72| image:: Modelica.Media.Air.DryAirNasa.dynamicViscosityI.png
.. |image73| image:: Modelica.Media.Air.DryAirNasa.dynamicViscosityI.png
