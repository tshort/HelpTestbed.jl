% Modelica.Media.Interfaces.PartialPureSubstance
% 
% 

[Modelica.Media.Interfaces](Modelica_Media_Interfaces.html#Modelica.Media.Interfaces).PartialPureSubstance
==========================================================================================================

**base class for pure substances of one chemical substance**

Information
-----------

Extends from
[PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium)
(Partial medium properties (base package of all media packages)).

Package Content
---------------

Name

Description

![Modelica.Media.Interfaces.PartialPureSubstance.setState\_pT](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
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

![Modelica.Media.Interfaces.PartialPureSubstance.BaseProperties](Modelica.Media.Interfaces.PartialPureSubstance.BasePropertiesS.png)
[BaseProperties](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.BaseProperties)

Inherited

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

![Modelica.Media.Interfaces.PartialMedium.ThermodynamicState](Modelica.Media.Interfaces.PartialMedium.FluidConstantsS.png)
[ThermodynamicState](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState)

Minimal variable set that is available as input argument to every medium
function

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

![image58](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).setState\_pT
=============================================================================================================================================================================================================================================

**Return thermodynamic state from p and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                   Nam Defau Descript
                                                         e   lt    ion
  ------------------------------------------------------ --- ----- --------
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMe p         Pressure
  dium.html#Modelica.Media.Interfaces.PartialMedium.Abso           [Pa]
  lutePressure)                                                    

  [Temperature](Modelica_Media_Interfaces_PartialMedium. T         Temperat
  html#Modelica.Media.Interfaces.PartialMedium.Temperatu           ure
  re)                                                              [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Partial stat thermodynami
  Medium.html#Modelica.Media.Interfaces.PartialMedium.Th e    c
  ermodynamicState)                                           state record
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function setState_pT 
      "Return thermodynamic state from p and T"
       extends Modelica.Icons.Function;
       input AbsolutePressure p "Pressure";
       input Temperature T "Temperature";
       output ThermodynamicState state "thermodynamic state record";
    algorithm 
       state := setState_pTX(p,T,fill(0,0));
    end setState_pT;

* * * * *

![image59](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).setState\_ph
=============================================================================================================================================================================================================================================

**Return thermodynamic state from p and h**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Partia p        Pressure
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          [Pa]
  m.AbsolutePressure)                                          

  [SpecificEnthalpy](Modelica_Media_Interfaces_Partia h        Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          enthalpy
  m.SpecificEnthalpy)                                          [J/kg]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Partial stat thermodynami
  Medium.html#Modelica.Media.Interfaces.PartialMedium.Th e    c
  ermodynamicState)                                           state record
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function setState_ph 
      "Return thermodynamic state from p and h"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := setState_phX(p,h,fill(0, 0));
    end setState_ph;

* * * * *

![image60](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).setState\_ps
=============================================================================================================================================================================================================================================

**Return thermodynamic state from p and s**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Defa Description
                                                     e   ult  
  -------------------------------------------------- --- ---- ------------
  [AbsolutePressure](Modelica_Media_Interfaces_Parti p        Pressure
  alMedium.html#Modelica.Media.Interfaces.PartialMed          [Pa]
  ium.AbsolutePressure)                                       

  [SpecificEntropy](Modelica_Media_Interfaces_Partia s        Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMedi          entropy
  um.SpecificEntropy)                                         [J/(kg.K)]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Partial stat thermodynami
  Medium.html#Modelica.Media.Interfaces.PartialMedium.Th e    c
  ermodynamicState)                                           state record
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function setState_ps 
      "Return thermodynamic state from p and s"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := setState_psX(p,s,fill(0,0));
    end setState_ps;

* * * * *

![image61](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).setState\_dT
=============================================================================================================================================================================================================================================

**Return thermodynamic state from d and T**

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
  [Density](Modelica_Media_Interfaces_PartialMedium.htm d          density
  l#Modelica.Media.Interfaces.PartialMedium.Density)               [kg/m3]

  [Temperature](Modelica_Media_Interfaces_PartialMedium T          Temperatu
  .html#Modelica.Media.Interfaces.PartialMedium.Tempera            re
  ture)                                                            [K]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Partial stat thermodynami
  Medium.html#Modelica.Media.Interfaces.PartialMedium.Th e    c
  ermodynamicState)                                           state record
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function setState_dT 
      "Return thermodynamic state from d and T"
      extends Modelica.Icons.Function;
      input Density d "density";
      input Temperature T "Temperature";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := setState_dTX(d,T,fill(0,0));
    end setState_dT;

* * * * *

![image62](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).density\_ph
============================================================================================================================================================================================================================================

**Return density from p and h**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Partia p        Pressure
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          [Pa]
  m.AbsolutePressure)                                          

  [SpecificEnthalpy](Modelica_Media_Interfaces_Partia h        Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          enthalpy
  m.SpecificEnthalpy)                                          [J/kg]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                     Name Descriptio
                                                                n
  -------------------------------------------------------- ---- ----------
  [Density](Modelica_Media_Interfaces_PartialMedium.html#M d    Density
  odelica.Media.Interfaces.PartialMedium.Density)               [kg/m3]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function density_ph "Return density from p and h"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      output Density d "Density";
    algorithm 
      d := density_phX(p, h, fill(0,0));
    end density_ph;

* * * * *

![image63](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).temperature\_ph
================================================================================================================================================================================================================================================

**Return temperature from p and h**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Partia p        Pressure
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          [Pa]
  m.AbsolutePressure)                                          

  [SpecificEnthalpy](Modelica_Media_Interfaces_Partia h        Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          enthalpy
  m.SpecificEnthalpy)                                          [J/kg]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                      Name Descripti
                                                                 on
  --------------------------------------------------------- ---- ---------
  [Temperature](Modelica_Media_Interfaces_PartialMedium.htm T    Temperatu
  l#Modelica.Media.Interfaces.PartialMedium.Temperature)         re
                                                                 [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function temperature_ph "Return temperature from p and h"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      output Temperature T "Temperature";
    algorithm 
      T := temperature_phX(p, h, fill(0,0));
    end temperature_ph;

* * * * *

![image64](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).pressure\_dT
=============================================================================================================================================================================================================================================

**Return pressure from d and T**

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
  [Density](Modelica_Media_Interfaces_PartialMedium.htm d          Density
  l#Modelica.Media.Interfaces.PartialMedium.Density)               [kg/m3]

  [Temperature](Modelica_Media_Interfaces_PartialMedium T          Temperatu
  .html#Modelica.Media.Interfaces.PartialMedium.Tempera            re
  ture)                                                            [K]
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMedium. p    Pressure
  html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressu      [Pa]
  re)                                                              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function pressure_dT "Return pressure from d and T"
      extends Modelica.Icons.Function;
      input Density d "Density";
      input Temperature T "Temperature";
      output AbsolutePressure p "Pressure";
    algorithm 
      p := pressure(setState_dTX(d, T, fill(0,0)));
    end pressure_dT;

* * * * *

![image65](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).specificEnthalpy\_dT
=====================================================================================================================================================================================================================================================

**Return specific enthalpy from d and T**

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
  [Density](Modelica_Media_Interfaces_PartialMedium.htm d          Density
  l#Modelica.Media.Interfaces.PartialMedium.Density)               [kg/m3]

  [Temperature](Modelica_Media_Interfaces_PartialMedium T          Temperatu
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

    replaceable function specificEnthalpy_dT 
      "Return specific enthalpy from d and T"
      extends Modelica.Icons.Function;
      input Density d "Density";
      input Temperature T "Temperature";
      output SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := specificEnthalpy(setState_dTX(d, T, fill(0,0)));
    end specificEnthalpy_dT;

* * * * *

![image66](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).specificEnthalpy\_ps
=====================================================================================================================================================================================================================================================

**Return specific enthalpy from p and s**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Defa Description
                                                     e   ult  
  -------------------------------------------------- --- ---- ------------
  [AbsolutePressure](Modelica_Media_Interfaces_Parti p        Pressure
  alMedium.html#Modelica.Media.Interfaces.PartialMed          [Pa]
  ium.AbsolutePressure)                                       

  [SpecificEntropy](Modelica_Media_Interfaces_Partia s        Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMedi          entropy
  um.SpecificEntropy)                                         [J/(kg.K)]
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

    replaceable function specificEnthalpy_ps 
      "Return specific enthalpy from p and s"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      output SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := specificEnthalpy_psX(p,s,fill(0,0));
    end specificEnthalpy_ps;

* * * * *

![image67](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).temperature\_ps
================================================================================================================================================================================================================================================

**Return temperature from p and s**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Defa Description
                                                     e   ult  
  -------------------------------------------------- --- ---- ------------
  [AbsolutePressure](Modelica_Media_Interfaces_Parti p        Pressure
  alMedium.html#Modelica.Media.Interfaces.PartialMed          [Pa]
  ium.AbsolutePressure)                                       

  [SpecificEntropy](Modelica_Media_Interfaces_Partia s        Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMedi          entropy
  um.SpecificEntropy)                                         [J/(kg.K)]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                      Name Descripti
                                                                 on
  --------------------------------------------------------- ---- ---------
  [Temperature](Modelica_Media_Interfaces_PartialMedium.htm T    Temperatu
  l#Modelica.Media.Interfaces.PartialMedium.Temperature)         re
                                                                 [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function temperature_ps "Return temperature from p and s"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      output Temperature T "Temperature";
    algorithm 
      T := temperature_psX(p,s,fill(0,0));
    end temperature_ps;

* * * * *

![image68](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).density\_ps
============================================================================================================================================================================================================================================

**Return density from p and s**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Defa Description
                                                     e   ult  
  -------------------------------------------------- --- ---- ------------
  [AbsolutePressure](Modelica_Media_Interfaces_Parti p        Pressure
  alMedium.html#Modelica.Media.Interfaces.PartialMed          [Pa]
  ium.AbsolutePressure)                                       

  [SpecificEntropy](Modelica_Media_Interfaces_Partia s        Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMedi          entropy
  um.SpecificEntropy)                                         [J/(kg.K)]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                     Name Descriptio
                                                                n
  -------------------------------------------------------- ---- ----------
  [Density](Modelica_Media_Interfaces_PartialMedium.html#M d    Density
  odelica.Media.Interfaces.PartialMedium.Density)               [kg/m3]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function density_ps "Return density from p and s"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      output Density d "Density";
    algorithm 
      d := density_psX(p, s, fill(0,0));
    end density_ps;

* * * * *

![image69](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).specificEnthalpy\_pT
=====================================================================================================================================================================================================================================================

**Return specific enthalpy from p and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                   Nam Defau Descript
                                                         e   lt    ion
  ------------------------------------------------------ --- ----- --------
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMe p         Pressure
  dium.html#Modelica.Media.Interfaces.PartialMedium.Abso           [Pa]
  lutePressure)                                                    

  [Temperature](Modelica_Media_Interfaces_PartialMedium. T         Temperat
  html#Modelica.Media.Interfaces.PartialMedium.Temperatu           ure
  re)                                                              [K]
  -------------------------------------------------------------------------

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

    replaceable function specificEnthalpy_pT 
      "Return specific enthalpy from p and T"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      output SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := specificEnthalpy_pTX(p, T, fill(0,0));
    end specificEnthalpy_pT;

* * * * *

![image70](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).density\_pT
============================================================================================================================================================================================================================================

**Return density from p and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                   Nam Defau Descript
                                                         e   lt    ion
  ------------------------------------------------------ --- ----- --------
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMe p         Pressure
  dium.html#Modelica.Media.Interfaces.PartialMedium.Abso           [Pa]
  lutePressure)                                                    

  [Temperature](Modelica_Media_Interfaces_PartialMedium. T         Temperat
  html#Modelica.Media.Interfaces.PartialMedium.Temperatu           ure
  re)                                                              [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                     Name Descriptio
                                                                n
  -------------------------------------------------------- ---- ----------
  [Density](Modelica_Media_Interfaces_PartialMedium.html#M d    Density
  odelica.Media.Interfaces.PartialMedium.Density)               [kg/m3]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function density_pT "Return density from p and T"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      output Density d "Density";
    algorithm 
      d := density(setState_pTX(p, T, fill(0,0)));
    end density_pT;

* * * * *

![image71](Modelica.Media.Interfaces.PartialPureSubstance.BasePropertiesI.png) [Modelica.Media.Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance).BaseProperties
==================================================================================================================================================================================================================================================

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.BaseProperties)
(Base properties (p, d, T, h, u, R, MM and, if applicable, X and Xi) of
a medium).

Parameters
----------

  ------------------------------------------------------------------------
  Type    Name         Defau Description
                       lt    
  ------- ------------ ----- ---------------------------------------------
  Boolean standardOrde true  if true, and reducedX = true, the last
          rComponents        element of X will be computed from the other
                             ones

  **Advan                    
  ced**                      

  Boolean preferredMed false = true if StateSelect.prefer shall be used
          iumStates          for the independent property variables of the
                             medium
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare replaceable partial model extends BaseProperties(
      final standardOrderComponents=true)
    end BaseProperties;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:29 2010.
