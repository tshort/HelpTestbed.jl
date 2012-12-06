% Modelica.Media.CompressibleLiquids.Common.LinearWater\_pT:
  [Modelica.Media.CompressibleLiquids.Common](Modelica_Media_CompressibleLiquids_Common.html#Modelica.Media.CompressibleLiquids.Common).LinearWater\_pT
% 
% 

**base class for liquid, linear compressibility water models**

Information
===========

Extends from
[Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid)
(Generic pure liquid model with constant cp, compressibility and thermal
expansion coefficients).

Package Content
===============

Name

Description

state=Modelica.Media.Water.StandardWater.setState\_pT(reference\_p,
reference\_T)

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

![Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicState](Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicStateS.png)
[ThermodynamicState](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicState)

a selection of variables that uniquely defines the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.BaseProperties](Modelica.Media.Interfaces.PartialLinearFluid.BasePropertiesS.png)
[BaseProperties](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.BaseProperties)

Base properties of medium

![Modelica.Media.Interfaces.PartialLinearFluid.setState\_pTX](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[setState\_pTX](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_pTX)

set the thermodynamic state record from p and T (X not needed)

![Modelica.Media.Interfaces.PartialLinearFluid.setState\_phX](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[setState\_phX](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_phX)

set the thermodynamic state record from p and h (X not needed)

![Modelica.Media.Interfaces.PartialLinearFluid.setState\_psX](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[setState\_psX](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_psX)

set the thermodynamic state record from p and s (X not needed)

![Modelica.Media.Interfaces.PartialLinearFluid.setState\_dTX](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[setState\_dTX](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_dTX)

set the thermodynamic state record from d and T (X not needed)

![Modelica.Media.Interfaces.PartialLinearFluid.setSmoothState](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[setSmoothState](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

![Modelica.Media.Interfaces.PartialLinearFluid.pressure](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[pressure](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.pressure)

Return the pressure from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.temperature](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[temperature](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.temperature)

Return the temperature from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.density](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density)

Return the density from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.specificEnthalpy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificEnthalpy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificEnthalpy)

Return the specific enthalpy from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.specificEntropy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificEntropy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificEntropy)

Return the specific entropy from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.specificInternalEnergy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificInternalEnergy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificInternalEnergy)

Return the specific internal energy from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.specificGibbsEnergy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificGibbsEnergy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificGibbsEnergy)

Return specific Gibbs energy from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.specificHelmholtzEnergy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificHelmholtzEnergy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHelmholtzEnergy)

Return specific Helmholtz energy from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.velocityOfSound](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[velocityOfSound](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.velocityOfSound)

Return velocity of sound from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.isentropicExponent](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[isentropicExponent](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isentropicExponent)

Return isentropic exponent from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.isentropicEnthalpy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[isentropicEnthalpy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isentropicEnthalpy)

Return isentropic enthalpy

![Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCp](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificHeatCapacityCp](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCp)

Return specific heat capacity at constant volume

![Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCv](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificHeatCapacityCv](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCv)

Return specific heat capacity at constant volume from the thermodynamic
state

![Modelica.Media.Interfaces.PartialLinearFluid.isothermalCompressibility](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[isothermalCompressibility](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isothermalCompressibility)

Return the iso-thermal compressibility kappa

![Modelica.Media.Interfaces.PartialLinearFluid.isobaricExpansionCoefficient](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[isobaricExpansionCoefficient](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isobaricExpansionCoefficient)

Return the iso-baric expansion coefficient

![Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_h](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density\_derp\_h](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derp_h)

Return density derivative w.r.t. pressure at const specific enthalpy

![Modelica.Media.Interfaces.PartialLinearFluid.density\_derh\_p](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density\_derh\_p](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derh_p)

Return density derivative w.r.t. specific enthalpy at constant pressure

![Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_T](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density\_derp\_T](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derp_T)

Return density derivative w.r.t. pressure at const temperature

![Modelica.Media.Interfaces.PartialLinearFluid.density\_derT\_p](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density\_derT\_p](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derT_p)

Return density derivative w.r.t. temperature at constant pressure

![Modelica.Media.Interfaces.PartialLinearFluid.density\_derX](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density\_derX](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derX)

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

![Modelica.Media.Interfaces.PartialLinearFluid.molarMass](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[molarMass](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.molarMass)

Return molar mass

![Modelica.Media.Interfaces.PartialLinearFluid.T\_ph](Modelica.Media.Interfaces.PartialLinearFluid.T_phS.png)
[T\_ph](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.T_ph)

Return temperature from pressure and specific enthalpy

![Modelica.Media.Interfaces.PartialLinearFluid.T\_ps](Modelica.Media.Interfaces.PartialLinearFluid.T_phS.png)
[T\_ps](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.T_ps)

Return temperature from pressure and specific entropy

![Modelica.Media.Interfaces.PartialPureSubstance.setState\_pT](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[setState\_pT](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_pT)

Return thermodynamic state from p and T

![Modelica.Media.Interfaces.PartialPureSubstance.setState\_ph](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[setState\_ph](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_ph)

Return thermodynamic state from p and h

![Modelica.Media.Interfaces.PartialPureSubstance.setState\_ps](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[setState\_ps](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_ps)

Return thermodynamic state from p and s

![Modelica.Media.Interfaces.PartialPureSubstance.setState\_dT](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[setState\_dT](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_dT)

Return thermodynamic state from d and T

![Modelica.Media.Interfaces.PartialPureSubstance.density\_ph](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[density\_ph](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.density_ph)

Return density from p and h

![Modelica.Media.Interfaces.PartialPureSubstance.temperature\_ph](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[temperature\_ph](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.temperature_ph)

Return temperature from p and h

![Modelica.Media.Interfaces.PartialPureSubstance.pressure\_dT](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[pressure\_dT](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.pressure_dT)

Return pressure from d and T

![Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_dT](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[specificEnthalpy\_dT](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy_dT)

Return specific enthalpy from d and T

![Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_ps](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[specificEnthalpy\_ps](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy_ps)

Return specific enthalpy from p and s

![Modelica.Media.Interfaces.PartialPureSubstance.temperature\_ps](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[temperature\_ps](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.temperature_ps)

Return temperature from p and s

![Modelica.Media.Interfaces.PartialPureSubstance.density\_ps](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[density\_ps](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.density_ps)

Return density from p and s

![Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_pT](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[specificEnthalpy\_pT](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy_pT)

Return specific enthalpy from p and T

![Modelica.Media.Interfaces.PartialPureSubstance.density\_pT](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
[density\_pT](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.density_pT)

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

![Modelica.Media.Interfaces.PartialMedium.FluidConstants](Modelica.Media.Interfaces.PartialMedium.FluidConstantsS.png)
[FluidConstants](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants)

critical, triple, molecular and other standard data of fluid

![Modelica.Media.Interfaces.PartialMedium.dynamicViscosity](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[dynamicViscosity](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.dynamicViscosity)

Return dynamic viscosity

![Modelica.Media.Interfaces.PartialMedium.thermalConductivity](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[thermalConductivity](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.thermalConductivity)

Return thermal conductivity

![Modelica.Media.Interfaces.PartialMedium.prandtlNumber](Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png)
[prandtlNumber](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.prandtlNumber)

Return the Prandtl number

![Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[heatCapacity\_cp](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cp)

alias for deprecated name

![Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[heatCapacity\_cv](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cv)

alias for deprecated name

![Modelica.Media.Interfaces.PartialMedium.beta](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[beta](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.beta)

alias for isobaricExpansionCoefficient for user convenience

![Modelica.Media.Interfaces.PartialMedium.kappa](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[kappa](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.kappa)

alias of isothermalCompressibility for user convenience

![Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_pTX](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[specificEnthalpy\_pTX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEnthalpy_pTX)

Return specific enthalpy from p, T, and X or Xi

![Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[specificEntropy\_pTX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy_pTX)

Return specific enthalpy from p, T, and X or Xi

![Modelica.Media.Interfaces.PartialMedium.density\_pTX](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[density\_pTX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_pTX)

Return density from p, T, and X or Xi

![Modelica.Media.Interfaces.PartialMedium.temperature\_phX](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[temperature\_phX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.temperature_phX)

Return temperature from p, h, and X or Xi

![Modelica.Media.Interfaces.PartialMedium.density\_phX](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[density\_phX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_phX)

Return density from p, h, and X or Xi

![Modelica.Media.Interfaces.PartialMedium.temperature\_psX](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[temperature\_psX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.temperature_psX)

Return temperature from p,s, and X or Xi

![Modelica.Media.Interfaces.PartialMedium.density\_psX](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[density\_psX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_psX)

Return density from p, s, and X or Xi

![Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_psX](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[specificEnthalpy\_psX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEnthalpy_psX)

Return specific enthalpy from p, s, and X or Xi

[AbsolutePressure](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure)

Type for absolute pressure with medium specific attributes

[Density](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density)

Type for density with medium specific attributes

[DynamicViscosity](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DynamicViscosity)

Type for dynamic viscosity with medium specific attributes

[EnthalpyFlowRate](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.EnthalpyFlowRate)

Type for enthalpy flow rate with medium specific attributes

[MassFlowRate](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate)

Type for mass flow rate with medium specific attributes

[MassFraction](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction)

Type for mass fraction with medium specific attributes

[MoleFraction](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MoleFraction)

Type for mole fraction with medium specific attributes

[MolarMass](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MolarMass)

Type for molar mass with medium specific attributes

[MolarVolume](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MolarVolume)

Type for molar volume with medium specific attributes

[IsentropicExponent](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.IsentropicExponent)

Type for isentropic exponent with medium specific attributes

[SpecificEnergy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnergy)

Type for specific energy with medium specific attributes

[SpecificInternalEnergy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificInternalEnergy)

Type for specific internal energy with medium specific attributes

[SpecificEnthalpy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy)

Type for specific enthalpy with medium specific attributes

[SpecificEntropy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy)

Type for specific entropy with medium specific attributes

[SpecificHeatCapacity](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificHeatCapacity)

Type for specific heat capacity with medium specific attributes

[SurfaceTension](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SurfaceTension)

Type for surface tension with medium specific attributes

[Temperature](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature)

Type for temperature with medium specific attributes

[ThermalConductivity](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermalConductivity)

Type for thermal conductivity with medium specific attributes

[PrandtlNumber](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.PrandtlNumber)

Type for Prandtl number with medium specific attributes

[VelocityOfSound](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.VelocityOfSound)

Type for velocity of sound with medium specific attributes

[ExtraProperty](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraProperty)

Type for unspecified, mass-specific property transported by flow

[CumulativeExtraProperty](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.CumulativeExtraProperty)

Type for conserved integral of unspecified, mass specific property

[ExtraPropertyFlowRate](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraPropertyFlowRate)

Type for flow rate of unspecified, mass-specific property

[IsobaricExpansionCoefficient](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.IsobaricExpansionCoefficient)

Type for isobaric expansion coefficient with medium specific attributes

[DipoleMoment](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DipoleMoment)

Type for dipole moment with medium specific attributes

[DerDensityByPressure](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByPressure)

Type for partial derivative of density with resect to pressure with
medium specific attributes

[DerDensityByEnthalpy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByEnthalpy)

Type for partial derivative of density with resect to enthalpy with
medium specific attributes

[DerEnthalpyByPressure](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerEnthalpyByPressure)

Type for partial derivative of enthalpy with resect to pressure with
medium specific attributes

[DerDensityByTemperature](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByTemperature)

Type for partial derivative of density with resect to temperature with
medium specific attributes

![Modelica.Media.Interfaces.PartialMedium.Choices](Modelica.Media.Interfaces.PartialMedium.ChoicesS.png)
[Choices](Modelica_Media_Interfaces_PartialMedium_Choices.html#Modelica.Media.Interfaces.PartialMedium.Choices)

Types, constants to define menu choices

Types and constants
===================

    constant Modelica.Media.Water.StandardWater.ThermodynamicState state=
        Modelica.Media.Water.StandardWater.setState_pT(reference_p, reference_T);

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:31 2010.
