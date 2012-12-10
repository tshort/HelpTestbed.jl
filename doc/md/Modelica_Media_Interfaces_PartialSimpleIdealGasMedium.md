% Modelica.Media.Interfaces.PartialSimpleIdealGasMedium
% 
% 

[Modelica.Media.Interfaces](Modelica_Media_Interfaces.html#Modelica.Media.Interfaces).PartialSimpleIdealGasMedium
=================================================================================================================

**Medium model of Ideal gas with constant cp and cv. All other
quantities, e.g., transport properties, are constant.**

Information
-----------

Extends from
[Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance)
(base class for pure substances of one chemical substance).

Package Content
---------------

Name

Description

cp\_const

Constant specific heat capacity at constant pressure

cv\_const=cp\_const - R\_gas

Constant specific heat capacity at constant volume

R\_gas

medium specific gas constant

MM\_const

Molar mass

eta\_const

Constant dynamic viscosity

lambda\_const

Constant thermal conductivity

T\_min

Minimum temperature valid for medium model

T\_max

Maximum temperature valid for medium model

T0=reference\_T

Zero enthalpy temperature

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicState](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicStateS.png)
[ThermodynamicState](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicState)

Thermodynamic state of ideal gas

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.FluidConstants](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicStateS.png)
[FluidConstants](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.FluidConstants)

fluid constants

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.BaseProperties](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.BasePropertiesS.png)
[BaseProperties](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.BaseProperties)

Base properties of ideal gas

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_pTX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[setState\_pTX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTX)

Return thermodynamic state from p, T, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_phX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[setState\_phX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_phX)

Return thermodynamic state from p, h, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_psX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[setState\_psX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_psX)

Return thermodynamic state from p, s, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_dTX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[setState\_dTX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_dTX)

Return thermodynamic state from d, T, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setSmoothState](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[setSmoothState](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.pressure](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[pressure](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.pressure)

Return pressure of ideal gas

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[temperature](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature)

Return temperature of ideal gas

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[density](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density)

Return density of ideal gas

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificEnthalpy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy)

Return specific enthalpy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificInternalEnergy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificInternalEnergy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificInternalEnergy)

Return specific internal energy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEntropy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificEntropy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEntropy)

Return specific entropy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificGibbsEnergy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificGibbsEnergy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificGibbsEnergy)

Return specific Gibbs energy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHelmholtzEnergy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificHelmholtzEnergy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHelmholtzEnergy)

Return specific Helmholtz energy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.dynamicViscosity](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[dynamicViscosity](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.dynamicViscosity)

Return dynamic viscosity

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.thermalConductivity](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[thermalConductivity](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.thermalConductivity)

Return thermal conductivity

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCp](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificHeatCapacityCp](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCp)

Return specific heat capacity at constant pressure

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCv](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificHeatCapacityCv](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCv)

Return specific heat capacity at constant volume

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicExponent](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[isentropicExponent](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicExponent)

Return isentropic exponent

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.velocityOfSound](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[velocityOfSound](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.velocityOfSound)

Return velocity of sound

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy\_pTX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificEnthalpy\_pTX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy_pTX)

Return specific enthalpy from p, T, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature\_phX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[temperature\_phX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature_phX)

Return temperature from p, h, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_phX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[density\_phX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_phX)

Return density from p, h, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicEnthalpy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[isentropicEnthalpy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicEnthalpy)

Return isentropic enthalpy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isobaricExpansionCoefficient](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[isobaricExpansionCoefficient](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isobaricExpansionCoefficient)

Returns overall the isobaric expansion coefficient beta

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isothermalCompressibility](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[isothermalCompressibility](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isothermalCompressibility)

Returns overall the isothermal compressibility factor

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derp\_T](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[density\_derp\_T](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_derp_T)

Returns the partial derivative of density with respect to pressure at
constant temperature

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derT\_p](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[density\_derT\_p](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_derT_p)

Returns the partial derivative of density with respect to temperature at
constant pressure

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[density\_derX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_derX)

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.molarMass](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[molarMass](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.molarMass)

Returns the molar mass of the medium

Inherited

![Modelica.Media.Interfaces.PartialPureSubstance.setState\_pT](Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png)
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

![Modelica.Media.Interfaces.PartialMedium.prandtlNumber](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png)
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

![Modelica.Media.Interfaces.PartialMedium.density\_derp\_h](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[density\_derp\_h](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_h)

Return density derivative w.r.t. pressure at const specific enthalpy

![Modelica.Media.Interfaces.PartialMedium.density\_derh\_p](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[density\_derh\_p](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derh_p)

Return density derivative w.r.t. specific enthalpy at constant pressure

![Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[specificEntropy\_pTX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy_pTX)

Return specific enthalpy from p, T, and X or Xi

![Modelica.Media.Interfaces.PartialMedium.density\_pTX](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[density\_pTX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_pTX)

Return density from p, T, and X or Xi

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
-------------------

    constant SpecificHeatCapacity cp_const 
    "Constant specific heat capacity at constant pressure";

    constant SpecificHeatCapacity cv_const= cp_const - R_gas 
    "Constant specific heat capacity at constant volume";

    constant SpecificHeatCapacity R_gas "medium specific gas constant";

    constant MolarMass MM_const "Molar mass";

    constant DynamicViscosity eta_const "Constant dynamic viscosity";

    constant ThermalConductivity lambda_const "Constant thermal conductivity";

    constant Temperature T_min "Minimum temperature valid for medium model";

    constant Temperature T_max "Maximum temperature valid for medium model";

    constant Temperature T0= reference_T "Zero enthalpy temperature";

* * * * *

![image58](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicStateI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).ThermodynamicState
======================================================================================================================================================================================================================================================================================

**Thermodynamic state of ideal gas**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState)
(Minimal variable set that is available as input argument to every
medium function).

Modelica definition
-------------------

    redeclare record extends ThermodynamicState 
      "Thermodynamic state of ideal gas"
      AbsolutePressure p "Absolute pressure of medium";
      Temperature T "Temperature of medium";
    end ThermodynamicState;

* * * * *

![image59](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicStateI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).FluidConstants
==================================================================================================================================================================================================================================================================================

**fluid constants**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants)
(critical, triple, molecular and other standard data of fluid).

Modelica definition
-------------------

    redeclare record extends FluidConstants "fluid constants"
    end FluidConstants;

* * * * *

![image60](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.BasePropertiesI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).BaseProperties
==============================================================================================================================================================================================================================================================================

**Base properties of ideal gas**

Information
-----------

::

This is the most simple incompressible medium model, where specific
enthalpy h and specific internal energy u are only a function of
temperature T and all other provided medium quantities are assumed to be
constant.

::

Extends from
[](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.BaseProperties).

Parameters
----------

  -------------------------------------------------------------------------
  Type    Name         Defau Description
                       lt    
  ------- ------------ ----- ----------------------------------------------
  **Advan                    
  ced**                      

  Boolean preferredMed false = true if StateSelect.prefer shall be used for
          iumStates          the independent property variables of the
                             medium
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare replaceable model extends BaseProperties(
      T(stateSelect=if preferredMediumStates then StateSelect.prefer else 
                         StateSelect.default),
      p(stateSelect=if preferredMediumStates then StateSelect.prefer else 
                         StateSelect.default)) 
      "Base properties of ideal gas"
    equation 
          assert(T >= T_min and T <= T_max, "
    Temperature T (= " + String(T) + " K) is not
    in the allowed range (" + String(T_min) + " K <= T <= " + String(T_max)
             + " K)
    required from medium model \"" + mediumName + "\".
    ");
      h = specificEnthalpy_pTX(p,T,X);
      u = h-R*T;
      R = R_gas;
      d = p/(R*T);
      MM = MM_const;
      state.T = T;
      state.p = p;
    end BaseProperties;

* * * * *

![image61](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).setState\_pTX
===========================================================================================================================================================================================================================================================================

**Return thermodynamic state from p, T, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Defaul Descriptio
                                                     e   t      n
  -------------------------------------------------- --- ------ ----------
  [AbsolutePressure](Modelica_Media_Interfaces_Parti p          Pressure
  alMedium.html#Modelica.Media.Interfaces.PartialMed            [Pa]
  ium.AbsolutePressure)                                         

  [Temperature](Modelica_Media_Interfaces_PartialMed T          Temperatur
  ium.html#Modelica.Media.Interfaces.PartialMedium.T            e
  emperature)                                                   [K]

  [MassFraction](Modelica_Media_Interfaces_PartialMe X[: refere Mass
  dium.html#Modelica.Media.Interfaces.PartialMedium. ]   nce\_X fractions
  MassFraction)                                                 [kg/kg]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                      Nam Description
                                                            e   
  --------------------------------------------------------- --- -----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialSim sta thermodynam
  pleIdealGasMedium.html#Modelica.Media.Interfaces.PartialS te  ic
  impleIdealGasMedium.ThermodynamicState)                       state
                                                                record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function setState_pTX 
      "Return thermodynamic state from p, T, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := ThermodynamicState(p=p,T=T);
    end setState_pTX;

* * * * *

![image62](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).setState\_phX
===========================================================================================================================================================================================================================================================================

**Return thermodynamic state from p, h, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                               Nam Defaul Description
                                                     e   t      
  -------------------------------------------------- --- ------ -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Parti p          Pressure
  alMedium.html#Modelica.Media.Interfaces.PartialMed            [Pa]
  ium.AbsolutePressure)                                         

  [SpecificEnthalpy](Modelica_Media_Interfaces_Parti h          Specific
  alMedium.html#Modelica.Media.Interfaces.PartialMed            enthalpy
  ium.SpecificEnthalpy)                                         [J/kg]

  [MassFraction](Modelica_Media_Interfaces_PartialMe X[: refere Mass
  dium.html#Modelica.Media.Interfaces.PartialMedium. ]   nce\_X fractions
  MassFraction)                                                 [kg/kg]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                      Nam Description
                                                            e   
  --------------------------------------------------------- --- -----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialSim sta thermodynam
  pleIdealGasMedium.html#Modelica.Media.Interfaces.PartialS te  ic
  impleIdealGasMedium.ThermodynamicState)                       state
                                                                record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function setState_phX 
      "Return thermodynamic state from p, h, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := ThermodynamicState(p=p,T=T0+h/cp_const);
    end setState_phX;

* * * * *

![image63](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).setState\_psX
===========================================================================================================================================================================================================================================================================

**Return thermodynamic state from p, s, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Nam Defaul Description
                                                    e   t      
  ------------------------------------------------- --- ------ ------------
  [AbsolutePressure](Modelica_Media_Interfaces_Part p          Pressure
  ialMedium.html#Modelica.Media.Interfaces.PartialM            [Pa]
  edium.AbsolutePressure)                                      

  [SpecificEntropy](Modelica_Media_Interfaces_Parti s          Specific
  alMedium.html#Modelica.Media.Interfaces.PartialMe            entropy
  dium.SpecificEntropy)                                        [J/(kg.K)]

  [MassFraction](Modelica_Media_Interfaces_PartialM X[: refere Mass
  edium.html#Modelica.Media.Interfaces.PartialMediu ]   nce\_X fractions
  m.MassFraction)                                              [kg/kg]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                      Nam Description
                                                            e   
  --------------------------------------------------------- --- -----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialSim sta thermodynam
  pleIdealGasMedium.html#Modelica.Media.Interfaces.PartialS te  ic
  impleIdealGasMedium.ThermodynamicState)                       state
                                                                record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare replaceable function setState_psX 
      "Return thermodynamic state from p, s, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := ThermodynamicState(p=p,T=Modelica.Math.exp(s/cp_const + Modelica.Math.log(reference_T))
                                  + R_gas*Modelica.Math.log(p/reference_p));
    end setState_psX;

* * * * *

![image64](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).setState\_dTX
===========================================================================================================================================================================================================================================================================

**Return thermodynamic state from d, T, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Nam Default Description
                                                    e           
  ------------------------------------------------- --- ------- -----------
  [Density](Modelica_Media_Interfaces_PartialMedium d           density
  .html#Modelica.Media.Interfaces.PartialMedium.Den             [kg/m3]
  sity)                                                         

  [Temperature](Modelica_Media_Interfaces_PartialMe T           Temperature
  dium.html#Modelica.Media.Interfaces.PartialMedium             [K]
  .Temperature)                                                 

  [MassFraction](Modelica_Media_Interfaces_PartialM X[: referen Mass
  edium.html#Modelica.Media.Interfaces.PartialMediu ]   ce\_X   fractions
  m.MassFraction)                                               [kg/kg]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                      Nam Description
                                                            e   
  --------------------------------------------------------- --- -----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialSim sta thermodynam
  pleIdealGasMedium.html#Modelica.Media.Interfaces.PartialS te  ic
  impleIdealGasMedium.ThermodynamicState)                       state
                                                                record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function setState_dTX 
      "Return thermodynamic state from d, T, and X or Xi"
      extends Modelica.Icons.Function;
      input Density d "density";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := ThermodynamicState(p=d*R_gas*T,T=T);
    end setState_dTX;

* * * * *

![image65](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).setSmoothState
============================================================================================================================================================================================================================================================================

**Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setSmoothState)
(Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name Def Description
                                                   aul 
                                                   t   
  ------------------------------------------- ---- --- --------------------
  Real                                        x        m\_flow or dp

  [ThermodynamicState](Modelica_Media_Interfa stat     Thermodynamic state
  ces_PartialMedium.html#Modelica.Media.Inter e\_a     if x \> 0
  faces.PartialMedium.ThermodynamicState)              

  [ThermodynamicState](Modelica_Media_Interfa stat     Thermodynamic state
  ces_PartialMedium.html#Modelica.Media.Inter e\_b     if x < 0
  faces.PartialMedium.ThermodynamicState)              

  Real                                        x\_s     Smooth transition in
                                              mall     the region -x\_small
                                                       < x < x\_small
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                         Nam Description
                                               e   
  -------------------------------------------- --- ------------------------
  [ThermodynamicState](Modelica_Media_Interfac sta Smooth thermodynamic
  es_PartialMedium.html#Modelica.Media.Interfa te  state for all x
  ces.PartialMedium.ThermodynamicState)            (continuous and
                                                   differentiable)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends setSmoothState 
      "Return thermodynamic state so that it smoothly approximates: if x > 0 then state_a else state_b"
    algorithm 
      state := ThermodynamicState(p=Media.Common.smoothStep(x, state_a.p, state_b.p, x_small),
                                  T=Media.Common.smoothStep(x, state_a.T, state_b.T, x_small));
    end setSmoothState;

* * * * *

![image66](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).pressure
======================================================================================================================================================================================================================================================================

**Return pressure of ideal gas**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.pressure)
(Return pressure).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

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

    redeclare function extends pressure "Return pressure of ideal gas"

    algorithm 
      p := state.p;
    end pressure;

* * * * *

![image67](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).temperature
=========================================================================================================================================================================================================================================================================

**Return temperature of ideal gas**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.temperature)
(Return temperature).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

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

    redeclare function extends temperature 
      "Return temperature of ideal gas"

    algorithm 
      T := state.T;
    end temperature;

* * * * *

![image68](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).density
=====================================================================================================================================================================================================================================================================

**Return density of ideal gas**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density)
(Return density).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
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

    redeclare function extends density "Return density of ideal gas"
    algorithm 
      d := state.p/(R_gas*state.T);
    end density;

* * * * *

![image69](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).specificEnthalpy
==============================================================================================================================================================================================================================================================================

**Return specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions),
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEnthalpy)
(Return specific enthalpy).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Nam Description
                                                          e   
  ------------------------------------------------------- --- ------------
  [SpecificEnthalpy](Modelica_Media_Interfaces_PartialMed h   Specific
  ium.html#Modelica.Media.Interfaces.PartialMedium.Specif     enthalpy
  icEnthalpy)                                                 [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends specificEnthalpy 
      "Return specific enthalpy"
        extends Modelica.Icons.Function;
    algorithm 
      h := cp_const*(state.T-T0);
    end specificEnthalpy;

* * * * *

![image70](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).specificInternalEnergy
====================================================================================================================================================================================================================================================================================

**Return specific internal energy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions),
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificInternalEnergy)
(Return specific internal energy).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Nam Description
                                                       e   
  ---------------------------------------------------- --- ---------------
  [SpecificEnergy](Modelica_Media_Interfaces_PartialMe u   Specific
  dium.html#Modelica.Media.Interfaces.PartialMedium.Sp     internal energy
  ecificEnergy)                                            [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends specificInternalEnergy 
      "Return specific internal energy"
      extends Modelica.Icons.Function;
    algorithm 
      // u := (cp_const-R_gas)*(state.T-T0);
      u := cp_const*(state.T-T0) - R_gas*state.T;
    end specificInternalEnergy;

* * * * *

![image71](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).specificEntropy
=============================================================================================================================================================================================================================================================================

**Return specific entropy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions),
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy)
(Return specific entropy).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                   Nam Description
                                                         e   
  ------------------------------------------------------ --- -------------
  [SpecificEntropy](Modelica_Media_Interfaces_PartialMed s   Specific
  ium.html#Modelica.Media.Interfaces.PartialMedium.Speci     entropy
  ficEntropy)                                                [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends specificEntropy "Return specific entropy"
        extends Modelica.Icons.Function;
    algorithm 
      s := cp_const*Modelica.Math.log(state.T/T0) - R_gas*Modelica.Math.log(state.p/reference_p);
    end specificEntropy;

* * * * *

![image72](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).specificGibbsEnergy
=================================================================================================================================================================================================================================================================================

**Return specific Gibbs energy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions),
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy)
(Return specific Gibbs energy).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                  Nam Description
                                                        e   
  ----------------------------------------------------- --- --------------
  [SpecificEnergy](Modelica_Media_Interfaces_PartialMed g   Specific Gibbs
  ium.html#Modelica.Media.Interfaces.PartialMedium.Spec     energy [J/kg]
  ificEnergy)                                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends specificGibbsEnergy 
      "Return specific Gibbs energy"
      extends Modelica.Icons.Function;
    algorithm 
      g := cp_const*(state.T-T0) - state.T*specificEntropy(state);
    end specificGibbsEnergy;

* * * * *

![image73](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).specificHelmholtzEnergy
=====================================================================================================================================================================================================================================================================================

**Return specific Helmholtz energy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions),
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy)
(Return specific Helmholtz energy).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Nam Description
                                                       e   
  ---------------------------------------------------- --- ---------------
  [SpecificEnergy](Modelica_Media_Interfaces_PartialMe f   Specific
  dium.html#Modelica.Media.Interfaces.PartialMedium.Sp     Helmholtz
  ecificEnergy)                                            energy [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends specificHelmholtzEnergy 
      "Return specific Helmholtz energy"
      extends Modelica.Icons.Function;
    algorithm 
      f := (cp_const-R_gas)*(state.T-T0) - state.T*specificEntropy(state);
    end specificHelmholtzEnergy;

* * * * *

![image74](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).dynamicViscosity
==============================================================================================================================================================================================================================================================================

**Return dynamic viscosity**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.dynamicViscosity)
(Return dynamic viscosity).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Nam Description
                                                          e   
  ------------------------------------------------------- --- ------------
  [DynamicViscosity](Modelica_Media_Interfaces_PartialMed eta Dynamic
  ium.html#Modelica.Media.Interfaces.PartialMedium.Dynami     viscosity
  cViscosity)                                                 [Pa.s]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends dynamicViscosity 
      "Return dynamic viscosity"

    algorithm 
      eta := eta_const;
    end dynamicViscosity;

* * * * *

![image75](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).thermalConductivity
=================================================================================================================================================================================================================================================================================

**Return thermal conductivity**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.thermalConductivity)
(Return thermal conductivity).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- --------------
  [ThermalConductivity](Modelica_Media_Interfaces_Parti lamb Thermal
  alMedium.html#Modelica.Media.Interfaces.PartialMedium da   conductivity
  .ThermalConductivity)                                      [W/(m.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends thermalConductivity 
      "Return thermal conductivity"

    algorithm 
      lambda := lambda_const;
    end thermalConductivity;

* * * * *

![image76](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).specificHeatCapacityCp
====================================================================================================================================================================================================================================================================================

**Return specific heat capacity at constant pressure**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCp)
(Return specific heat capacity at constant pressure).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Nam Description
                                                   e   
  ------------------------------------------------ --- --------------------
  [SpecificHeatCapacity](Modelica_Media_Interfaces cp  Specific heat
  _PartialMedium.html#Modelica.Media.Interfaces.Pa     capacity at constant
  rtialMedium.SpecificHeatCapacity)                    pressure [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends specificHeatCapacityCp 
      "Return specific heat capacity at constant pressure"

    algorithm 
      cp := cp_const;
    end specificHeatCapacityCp;

* * * * *

![image77](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).specificHeatCapacityCv
====================================================================================================================================================================================================================================================================================

**Return specific heat capacity at constant volume**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCv)
(Return specific heat capacity at constant volume).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Nam Description
                                                   e   
  ------------------------------------------------ --- --------------------
  [SpecificHeatCapacity](Modelica_Media_Interfaces cv  Specific heat
  _PartialMedium.html#Modelica.Media.Interfaces.Pa     capacity at constant
  rtialMedium.SpecificHeatCapacity)                    volume [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends specificHeatCapacityCv 
      "Return specific heat capacity at constant volume"

    algorithm 
      cv := cv_const;
    end specificHeatCapacityCv;

* * * * *

![image78](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).isentropicExponent
================================================================================================================================================================================================================================================================================

**Return isentropic exponent**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicExponent)
(Return isentropic exponent).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- -----------
  [IsentropicExponent](Modelica_Media_Interfaces_PartialM gamm Isentropic
  edium.html#Modelica.Media.Interfaces.PartialMedium.Isen a    exponent
  tropicExponent)                                              [1]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends isentropicExponent 
      "Return isentropic exponent"

    algorithm 
      gamma := cp_const/cv_const;
    end isentropicExponent;

* * * * *

![image79](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).velocityOfSound
=============================================================================================================================================================================================================================================================================

**Return velocity of sound**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.velocityOfSound)
(Return velocity of sound).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Nam Description
                                                          e   
  ------------------------------------------------------- --- ------------
  [VelocityOfSound](Modelica_Media_Interfaces_PartialMedi a   Velocity of
  um.html#Modelica.Media.Interfaces.PartialMedium.Velocit     sound [m/s]
  yOfSound)                                                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends velocityOfSound 
      "Return velocity of sound "

    algorithm 
      a := sqrt(cp_const/cv_const*R_gas*state.T);
    end velocityOfSound;

* * * * *

![image80](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).specificEnthalpy\_pTX
===================================================================================================================================================================================================================================================================================

**Return specific enthalpy from p, T, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                 Name Defa Descriptio
                                                            ult  n
  ---------------------------------------------------- ---- ---- ----------
  [AbsolutePressure](Modelica_Media_Interfaces_Partial p         Pressure
  Medium.html#Modelica.Media.Interfaces.PartialMedium.           [Pa]
  AbsolutePressure)                                              

  [Temperature](Modelica_Media_Interfaces_PartialMediu T         Temperatur
  m.html#Modelica.Media.Interfaces.PartialMedium.Tempe           e
  rature)                                                        [K]

  [MassFraction](Modelica_Media_Interfaces_PartialMedi X[nX      Mass
  um.html#Modelica.Media.Interfaces.PartialMedium.Mass ]         fractions
  Fraction)                                                      [kg/kg]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                 Nam Description
                                                       e   
  ---------------------------------------------------- --- ----------------
  [SpecificEnthalpy](Modelica_Media_Interfaces_Partial h   Specific
  Medium.html#Modelica.Media.Interfaces.PartialMedium.     enthalpy at p,
  SpecificEnthalpy)                                        T, X [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function specificEnthalpy_pTX 
      "Return specific enthalpy from p, T, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[nX] "Mass fractions";
      output SpecificEnthalpy h "Specific enthalpy at p, T, X";
    algorithm 
      h := cp_const*(T-T0);
    end specificEnthalpy_pTX;

* * * * *

![image81](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).temperature\_phX
==============================================================================================================================================================================================================================================================================

**Return temperature from p, h, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Name Defa Description
                                                           ult  
  --------------------------------------------------- ---- ---- -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Partia p         Pressure
  lMedium.html#Modelica.Media.Interfaces.PartialMediu           [Pa]
  m.AbsolutePressure)                                           

  [SpecificEnthalpy](Modelica_Media_Interfaces_Partia h         Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMediu           enthalpy
  m.SpecificEnthalpy)                                           [J/kg]

  [MassFraction](Modelica_Media_Interfaces_PartialMed X[nX      Mass
  ium.html#Modelica.Media.Interfaces.PartialMedium.Ma ]         fractions
  ssFraction)                                                   [kg/kg]
  -------------------------------------------------------------------------

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

    redeclare function temperature_phX 
      "Return temperature from p, h, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[nX] "Mass fractions";
      output Temperature T "Temperature";
    algorithm 
      T := h/cp_const + T0;
    end temperature_phX;

* * * * *

![image82](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).density\_phX
==========================================================================================================================================================================================================================================================================

**Return density from p, h, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Name Defa Description
                                                           ult  
  --------------------------------------------------- ---- ---- -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Partia p         Pressure
  lMedium.html#Modelica.Media.Interfaces.PartialMediu           [Pa]
  m.AbsolutePressure)                                           

  [SpecificEnthalpy](Modelica_Media_Interfaces_Partia h         Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMediu           enthalpy
  m.SpecificEnthalpy)                                           [J/kg]

  [MassFraction](Modelica_Media_Interfaces_PartialMed X[nX      Mass
  ium.html#Modelica.Media.Interfaces.PartialMedium.Ma ]         fractions
  ssFraction)                                                   [kg/kg]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                     Name Descriptio
                                                                n
  -------------------------------------------------------- ---- ----------
  [Density](Modelica_Media_Interfaces_PartialMedium.html#M d    density
  odelica.Media.Interfaces.PartialMedium.Density)               [kg/m3]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function density_phX 
      "Return density from p, h, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[nX] "Mass fractions";
      output Density d "density";
    algorithm 
      d := density(setState_phX(p,h,X));
    end density_phX;

* * * * *

![image83](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).isentropicEnthalpy
================================================================================================================================================================================================================================================================================

**Return isentropic enthalpy**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy)
(Return isentropic enthalpy).

Inputs
------

  ------------------------------------------------------------------------
  Type                                             Name   Defa Description
                                                          ult  
  ------------------------------------------------ ------ ---- -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Par p\_dow      downstream
  tialMedium.html#Modelica.Media.Interfaces.Partia nstrea      pressure
  lMedium.AbsolutePressure)                        m           [Pa]

  [ThermodynamicState](Modelica_Media_Interfaces_P refSta      reference
  artialMedium.html#Modelica.Media.Interfaces.Part te          state for
  ialMedium.ThermodynamicState)                                entropy
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  [SpecificEnthalpy](Modelica_Media_Interfaces_PartialMe h\_i Isentropic
  dium.html#Modelica.Media.Interfaces.PartialMedium.Spec s    enthalpy
  ificEnthalpy)                                               [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends isentropicEnthalpy 
      "Return isentropic enthalpy"
    algorithm 
      /*  s = cp_const*log(refState.T/T0) - R_gas*log(refState.p/reference_p)
              = cp_const*log(state.T/T0) - R_gas*log(p_downstream/reference_p)

            log(state.T) = log(refState.T) +
                           (R_gas/cp_const)*(log(p_downstream/reference_p) - log(refState.p/reference_p))
                         = log(refState.T) + (R_gas/cp_const)*log(p_downstream/refState.p)
                         = log(refState.T) + log( (p_downstream/refState.p)^(R_gas/cp_const) )
                         = log( refState.T*(p_downstream/refState.p)^(R_gas/cp_const) )
            state.T = refstate.T*(p_downstream/refstate.p)^(R_gas/cp_const)
        */
      h_is := cp_const*(refState.T*(p_downstream/refState.p)^(R_gas/cp_const) - T0);
    end isentropicEnthalpy;

* * * * *

![image84](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).isobaricExpansionCoefficient
==========================================================================================================================================================================================================================================================================================

**Returns overall the isobaric expansion coefficient beta**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isobaricExpansionCoefficient)
(Return overall the isobaric expansion coefficient beta).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                   Nam Description
                                                         e   
  ------------------------------------------------------ --- --------------
  [IsobaricExpansionCoefficient](Modelica_Media_Interfac bet Isobaric
  es_PartialMedium.html#Modelica.Media.Interfaces.Partia a   expansion
  lMedium.IsobaricExpansionCoefficient)                      coefficient
                                                             [1/K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends isobaricExpansionCoefficient 
      "Returns overall the isobaric expansion coefficient beta"
    algorithm 
      /* beta = 1/v * der(v,T), with v = 1/d, at constant pressure p:
           v = R*T/p
           der(v,T) = R/p
           beta = p/(R*T)*R/p
                = 1/T
        */

      beta := 1/state.T;
    end isobaricExpansionCoefficient;

* * * * *

![image85](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).isothermalCompressibility
=======================================================================================================================================================================================================================================================================================

**Returns overall the isothermal compressibility factor**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isothermalCompressibility)
(Return overall the isothermal compressibility factor).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  [IsothermalCompressibility](Modelica_SIunits.htm kapp Isothermal
  l#Modelica.SIunits.IsothermalCompressibility)    a    compressibility
                                                        [1/Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends isothermalCompressibility 
      "Returns overall the isothermal compressibility factor"
    algorithm 
      /* kappa = - 1/v * der(v,p), with v = 1/d at constant temperature T.
           v = R*T/p
           der(v,T) = -R*T/p^2
           kappa = p/(R*T)*R*T/p^2
                 = 1/p
        */
      kappa := 1/state.p;
    end isothermalCompressibility;

* * * * *

![image86](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).density\_derp\_T
==============================================================================================================================================================================================================================================================================

**Returns the partial derivative of density with respect to pressure at
constant temperature**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_T)
(Return density derivative w.r.t. pressure at const temperature).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  [DerDensityByPressure](Modelica_Media_Interfaces_Pa ddp Density
  rtialMedium.html#Modelica.Media.Interfaces.PartialM T   derivative w.r.t.
  edium.DerDensityByPressure)                             pressure [s2/m2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends density_derp_T 
      "Returns the partial derivative of density with respect to pressure at constant temperature"
    algorithm 
      /*  d = p/(R*T)
            ddpT = 1/(R*T)
        */
      ddpT := 1/(R_gas*state.T);
    end density_derp_T;

* * * * *

![image87](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).density\_derT\_p
==============================================================================================================================================================================================================================================================================

**Returns the partial derivative of density with respect to temperature
at constant pressure**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derT_p)
(Return density derivative w.r.t. temperature at constant pressure).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                              Nam Description
                                                    e   
  ------------------------------------------------- --- ------------------
  [DerDensityByTemperature](Modelica_Media_Interfac ddT Density derivative
  es_PartialMedium.html#Modelica.Media.Interfaces.P p   w.r.t. temperature
  artialMedium.DerDensityByTemperature)                 [kg/(m3.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends density_derT_p 
      "Returns the partial derivative of density with respect to temperature at constant pressure"
    algorithm 
      /*  d = p/(R*T)
            ddpT = -p/(R*T^2)
        */
      ddTp := -state.p/(R_gas*state.T*state.T);
    end density_derT_p;

* * * * *

![image88](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).density\_derX
===========================================================================================================================================================================================================================================================================

**Returns the partial derivative of density with respect to mass
fractions at constant pressure and temperature**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derX)
(Return density derivative w.r.t. mass fraction).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                         Name  Description
  -------------------------------------------- ----- ----------------------
  [Density](Modelica_Media_Interfaces_PartialM dddX[ Derivative of density
  edium.html#Modelica.Media.Interfaces.Partial nX]   w.r.t. mass fraction
  Medium.Density)                                    [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends density_derX 
      "Returns the partial derivative of density with respect to mass fractions at constant pressure and temperature"
    algorithm 
      dddX := fill(0,nX);
    end density_derX;

* * * * *

![image89](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium).molarMass
=======================================================================================================================================================================================================================================================================

**Returns the molar mass of the medium**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.molarMass)
(Return the molar mass of the medium).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Part sta      thermodynami
  ialMedium.html#Modelica.Media.Interfaces.PartialMed te       c
  ium.ThermodynamicState)                                      state record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- --------------
  [MolarMass](Modelica_Media_Interfaces_PartialMedium. MM   Mixture molar
  html#Modelica.Media.Interfaces.PartialMedium.MolarMa      mass [kg/mol]
  ss)                                                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends molarMass 
      "Returns the molar mass of the medium"
    algorithm 
      MM := MM_const;
    end molarMass;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:30 2010.
