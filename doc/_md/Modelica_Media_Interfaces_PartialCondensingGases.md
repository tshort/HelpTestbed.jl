% Modelica.Media.Interfaces.PartialCondensingGases
% 
% 

[Modelica.Media.Interfaces](Modelica_Media_Interfaces.html#Modelica.Media.Interfaces).PartialCondensingGases
============================================================================================================

**Base class for mixtures of condensing and non-condensing gases**

Information
-----------

Extends from
[PartialMixtureMedium](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium)
(Base class for pure substances of several chemical substances).

Package Content
---------------

Name

Description

![Modelica.Media.Interfaces.PartialCondensingGases.saturationPressure](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureS.png)
[saturationPressure](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.saturationPressure)

Return saturation pressure of condensing fluid

![Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfVaporization](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureS.png)
[enthalpyOfVaporization](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfVaporization)

Return vaporization enthalpy of condensing fluid

![Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfLiquid](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureS.png)
[enthalpyOfLiquid](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfLiquid)

Return liquid enthalpy of condensing fluid

![Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfGas](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureS.png)
[enthalpyOfGas](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfGas)

Return enthalpy of non-condensing gas mixture

![Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfCondensingGas](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureS.png)
[enthalpyOfCondensingGas](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfCondensingGas)

Return enthalpy of condensing gas (most often steam)

![Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfNonCondensingGas](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureS.png)
[enthalpyOfNonCondensingGas](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfNonCondensingGas)

Return enthalpy of the non-condensing species

Inherited

![Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState](Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicStateS.png)
[ThermodynamicState](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState)

thermodynamic state variables

![Modelica.Media.Interfaces.PartialMixtureMedium.FluidConstants](Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicStateS.png)
[FluidConstants](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.FluidConstants)

extended fluid constants

fluidConstants

constant data for the fluid

![Modelica.Media.Interfaces.PartialMixtureMedium.gasConstant](Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png)
[gasConstant](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.gasConstant)

Return the gas constant of the mixture (also for liquids)

![Modelica.Media.Interfaces.PartialMixtureMedium.moleToMassFractions](Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png)
[moleToMassFractions](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.moleToMassFractions)

Return mass fractions X from mole fractions

![Modelica.Media.Interfaces.PartialMixtureMedium.massToMoleFractions](Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png)
[massToMoleFractions](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.massToMoleFractions)

Return mole fractions from mass fractions X

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

![Modelica.Media.Interfaces.PartialMedium.BaseProperties](Modelica.Media.Interfaces.PartialMedium.BasePropertiesS.png)
[BaseProperties](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.BaseProperties)

Base properties (p, d, T, h, u, R, MM and, if applicable, X and Xi) of a
medium

![Modelica.Media.Interfaces.PartialMedium.setState\_pTX](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[setState\_pTX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_pTX)

Return thermodynamic state as function of p, T and composition X or Xi

![Modelica.Media.Interfaces.PartialMedium.setState\_phX](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[setState\_phX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_phX)

Return thermodynamic state as function of p, h and composition X or Xi

![Modelica.Media.Interfaces.PartialMedium.setState\_psX](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[setState\_psX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_psX)

Return thermodynamic state as function of p, s and composition X or Xi

![Modelica.Media.Interfaces.PartialMedium.setState\_dTX](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[setState\_dTX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_dTX)

Return thermodynamic state as function of d, T and composition X or Xi

![Modelica.Media.Interfaces.PartialMedium.setSmoothState](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[setSmoothState](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

![Modelica.Media.Interfaces.PartialMedium.dynamicViscosity](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[dynamicViscosity](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.dynamicViscosity)

Return dynamic viscosity

![Modelica.Media.Interfaces.PartialMedium.thermalConductivity](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[thermalConductivity](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.thermalConductivity)

Return thermal conductivity

![Modelica.Media.Interfaces.PartialMedium.prandtlNumber](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[prandtlNumber](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.prandtlNumber)

Return the Prandtl number

![Modelica.Media.Interfaces.PartialMedium.pressure](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[pressure](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.pressure)

Return pressure

![Modelica.Media.Interfaces.PartialMedium.temperature](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[temperature](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.temperature)

Return temperature

![Modelica.Media.Interfaces.PartialMedium.density](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[density](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density)

Return density

![Modelica.Media.Interfaces.PartialMedium.specificEnthalpy](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[specificEnthalpy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEnthalpy)

Return specific enthalpy

![Modelica.Media.Interfaces.PartialMedium.specificInternalEnergy](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[specificInternalEnergy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificInternalEnergy)

Return specific internal energy

![Modelica.Media.Interfaces.PartialMedium.specificEntropy](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[specificEntropy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy)

Return specific entropy

![Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[specificGibbsEnergy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy)

Return specific Gibbs energy

![Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[specificHelmholtzEnergy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy)

Return specific Helmholtz energy

![Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCp](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[specificHeatCapacityCp](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCp)

Return specific heat capacity at constant pressure

![Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[heatCapacity\_cp](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cp)

alias for deprecated name

![Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCv](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[specificHeatCapacityCv](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCv)

Return specific heat capacity at constant volume

![Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[heatCapacity\_cv](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cv)

alias for deprecated name

![Modelica.Media.Interfaces.PartialMedium.isentropicExponent](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[isentropicExponent](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicExponent)

Return isentropic exponent

![Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[isentropicEnthalpy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy)

Return isentropic enthalpy

![Modelica.Media.Interfaces.PartialMedium.velocityOfSound](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[velocityOfSound](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.velocityOfSound)

Return velocity of sound

![Modelica.Media.Interfaces.PartialMedium.isobaricExpansionCoefficient](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[isobaricExpansionCoefficient](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isobaricExpansionCoefficient)

Return overall the isobaric expansion coefficient beta

![Modelica.Media.Interfaces.PartialMedium.beta](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[beta](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.beta)

alias for isobaricExpansionCoefficient for user convenience

![Modelica.Media.Interfaces.PartialMedium.isothermalCompressibility](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[isothermalCompressibility](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isothermalCompressibility)

Return overall the isothermal compressibility factor

![Modelica.Media.Interfaces.PartialMedium.kappa](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[kappa](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.kappa)

alias of isothermalCompressibility for user convenience

![Modelica.Media.Interfaces.PartialMedium.density\_derp\_h](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[density\_derp\_h](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_h)

Return density derivative w.r.t. pressure at const specific enthalpy

![Modelica.Media.Interfaces.PartialMedium.density\_derh\_p](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[density\_derh\_p](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derh_p)

Return density derivative w.r.t. specific enthalpy at constant pressure

![Modelica.Media.Interfaces.PartialMedium.density\_derp\_T](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[density\_derp\_T](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_T)

Return density derivative w.r.t. pressure at const temperature

![Modelica.Media.Interfaces.PartialMedium.density\_derT\_p](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[density\_derT\_p](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derT_p)

Return density derivative w.r.t. temperature at constant pressure

![Modelica.Media.Interfaces.PartialMedium.density\_derX](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[density\_derX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derX)

Return density derivative w.r.t. mass fraction

![Modelica.Media.Interfaces.PartialMedium.molarMass](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[molarMass](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.molarMass)

Return the molar mass of the medium

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

* * * * *

![image54](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureI.png) [Modelica.Media.Interfaces.PartialCondensingGases](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases).saturationPressure
==================================================================================================================================================================================================================================================================

**Return saturation pressure of condensing fluid**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Nam Defau Description
                                                    e   lt    
  ------------------------------------------------- --- ----- -------------
  [Temperature](Modelica_Media_Interfaces_PartialMe Tsa       saturation
  dium.html#Modelica.Media.Interfaces.PartialMedium t         temperature
  .Temperature)                                               [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Nam Description
                                                          e   
  ------------------------------------------------------- --- ------------
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMed psa saturation
  ium.html#Modelica.Media.Interfaces.PartialMedium.Absolu t   pressure
  tePressure)                                                 [Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function saturationPressure 
      "Return saturation pressure of condensing fluid"
      extends Modelica.Icons.Function;
      input Temperature Tsat "saturation temperature";
      output AbsolutePressure psat "saturation pressure";
    end saturationPressure;

* * * * *

![image55](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureI.png) [Modelica.Media.Interfaces.PartialCondensingGases](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases).enthalpyOfVaporization
======================================================================================================================================================================================================================================================================

**Return vaporization enthalpy of condensing fluid**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                                  Name Defau Descripti
                                                             lt    on
  ----------------------------------------------------- ---- ----- ---------
  [Temperature](Modelica_Media_Interfaces_PartialMedium T          temperatu
  .html#Modelica.Media.Interfaces.PartialMedium.Tempera            re
  ture)                                                            [K]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                   Nam Description
                                                         e   
  ------------------------------------------------------ --- -------------
  [SpecificEnthalpy](Modelica_Media_Interfaces_PartialMe r0  vaporization
  dium.html#Modelica.Media.Interfaces.PartialMedium.Spec     enthalpy
  ificEnthalpy)                                              [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function enthalpyOfVaporization 
      "Return vaporization enthalpy of condensing fluid"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output SpecificEnthalpy r0 "vaporization enthalpy";
    end enthalpyOfVaporization;

* * * * *

![image56](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureI.png) [Modelica.Media.Interfaces.PartialCondensingGases](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases).enthalpyOfLiquid
================================================================================================================================================================================================================================================================

**Return liquid enthalpy of condensing fluid**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                                  Name Defau Descripti
                                                             lt    on
  ----------------------------------------------------- ---- ----- ---------
  [Temperature](Modelica_Media_Interfaces_PartialMedium T          temperatu
  .html#Modelica.Media.Interfaces.PartialMedium.Tempera            re
  ture)                                                            [K]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                     Nam Description
                                                           e   
  -------------------------------------------------------- --- -----------
  [SpecificEnthalpy](Modelica_Media_Interfaces_PartialMedi h   liquid
  um.html#Modelica.Media.Interfaces.PartialMedium.Specific     enthalpy
  Enthalpy)                                                    [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function enthalpyOfLiquid 
      "Return liquid enthalpy of condensing fluid"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output SpecificEnthalpy h "liquid enthalpy";
    end enthalpyOfLiquid;

* * * * *

![image57](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureI.png) [Modelica.Media.Interfaces.PartialCondensingGases](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases).enthalpyOfGas
=============================================================================================================================================================================================================================================================

**Return enthalpy of non-condensing gas mixture**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                             Nam Defa Description
                                                   e   ult  
  ------------------------------------------------ --- ---- --------------
  [Temperature](Modelica_Media_Interfaces_PartialM T        temperature
  edium.html#Modelica.Media.Interfaces.PartialMedi          [K]
  um.Temperature)                                           

  [MassFraction](Modelica_Media_Interfaces_Partial X[:      vector of mass
  Medium.html#Modelica.Media.Interfaces.PartialMed ]        fractions
  ium.MassFraction)                                         [kg/kg]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Nam Description
                                                          e   
  ------------------------------------------------------- --- ------------
  [SpecificEnthalpy](Modelica_Media_Interfaces_PartialMed h   specific
  ium.html#Modelica.Media.Interfaces.PartialMedium.Specif     enthalpy
  icEnthalpy)                                                 [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function enthalpyOfGas 
      "Return enthalpy of non-condensing gas mixture"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      input MassFraction[:] X "vector of mass fractions";
      output SpecificEnthalpy h "specific enthalpy";
    end enthalpyOfGas;

* * * * *

![image58](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureI.png) [Modelica.Media.Interfaces.PartialCondensingGases](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases).enthalpyOfCondensingGas
=======================================================================================================================================================================================================================================================================

**Return enthalpy of condensing gas (most often steam)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                                  Name Defau Descripti
                                                             lt    on
  ----------------------------------------------------- ---- ----- ---------
  [Temperature](Modelica_Media_Interfaces_PartialMedium T          temperatu
  .html#Modelica.Media.Interfaces.PartialMedium.Tempera            re
  ture)                                                            [K]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Nam Description
                                                          e   
  ------------------------------------------------------- --- ------------
  [SpecificEnthalpy](Modelica_Media_Interfaces_PartialMed h   specific
  ium.html#Modelica.Media.Interfaces.PartialMedium.Specif     enthalpy
  icEnthalpy)                                                 [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function enthalpyOfCondensingGas 
      "Return enthalpy of condensing gas (most often steam)"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output SpecificEnthalpy h "specific enthalpy";
    end enthalpyOfCondensingGas;

* * * * *

![image59](Modelica.Media.Interfaces.PartialCondensingGases.saturationPressureI.png) [Modelica.Media.Interfaces.PartialCondensingGases](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases).enthalpyOfNonCondensingGas
==========================================================================================================================================================================================================================================================================

**Return enthalpy of the non-condensing species**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                                  Name Defau Descripti
                                                             lt    on
  ----------------------------------------------------- ---- ----- ---------
  [Temperature](Modelica_Media_Interfaces_PartialMedium T          temperatu
  .html#Modelica.Media.Interfaces.PartialMedium.Tempera            re
  ture)                                                            [K]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Nam Description
                                                          e   
  ------------------------------------------------------- --- ------------
  [SpecificEnthalpy](Modelica_Media_Interfaces_PartialMed h   specific
  ium.html#Modelica.Media.Interfaces.PartialMedium.Specif     enthalpy
  icEnthalpy)                                                 [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function enthalpyOfNonCondensingGas 
      "Return enthalpy of the non-condensing species"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output SpecificEnthalpy h "specific enthalpy";
    end enthalpyOfNonCondensingGas;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:29 2010.
