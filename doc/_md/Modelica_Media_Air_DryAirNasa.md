% Modelica.Media.Air.DryAirNasa
% 
% 

[Modelica.Media.Air](Modelica_Media_Air.html#Modelica.Media.Air).DryAirNasa
===========================================================================

**Air: Detailed dry air model as ideal gas (200..6000 K)**

Information
-----------

::

::

Extends from
[IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa)
(Medium model of an ideal gas based on NASA source).

Package Content
---------------

Name

Description

![Modelica.Media.Air.DryAirNasa.dynamicViscosity](Modelica.Media.Air.DryAirNasa.dynamicViscosityS.png)
[dynamicViscosity](Modelica_Media_Air_DryAirNasa.html#Modelica.Media.Air.DryAirNasa.dynamicViscosity)

Simple polynomial for dry air (moisture influence small), valid from
73.15 K to 373.15 K

![Modelica.Media.Air.DryAirNasa.thermalConductivity](Modelica.Media.Air.DryAirNasa.dynamicViscosityS.png)
[thermalConductivity](Modelica_Media_Air_DryAirNasa.html#Modelica.Media.Air.DryAirNasa.thermalConductivity)

Simple polynomial for dry air (moisture influence small), valid from
73.15 K to 373.15 K

Inherited

![Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState](Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateS.png)
[ThermodynamicState](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState)

thermodynamic state variables for ideal gases

![Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants](Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateS.png)
[FluidConstants](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants)

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

![Modelica.Media.IdealGases.Common.SingleGasNasa.BaseProperties](Modelica.Media.IdealGases.Common.SingleGasNasa.BasePropertiesS.png)
[BaseProperties](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.BaseProperties)

Base properties of ideal gas medium

![Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_pTX](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[setState\_pTX](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTX)

Return thermodynamic state as function of p, T and composition X

![Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_phX](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[setState\_phX](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_phX)

Return thermodynamic state as function of p, h and composition X

![Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_psX](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[setState\_psX](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_psX)

Return thermodynamic state as function of p, s and composition X

![Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_dTX](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[setState\_dTX](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_dTX)

Return thermodynamic state as function of d, T and composition X

![Modelica.Media.IdealGases.Common.SingleGasNasa.setSmoothState](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[setSmoothState](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

![Modelica.Media.IdealGases.Common.SingleGasNasa.pressure](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[pressure](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.pressure)

return pressure of ideal gas

![Modelica.Media.IdealGases.Common.SingleGasNasa.temperature](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[temperature](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.temperature)

return temperature of ideal gas

![Modelica.Media.IdealGases.Common.SingleGasNasa.density](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[density](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density)

return density of ideal gas

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificEnthalpy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificEnthalpy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificEnthalpy)

Return specific enthalpy

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificInternalEnergy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificInternalEnergy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificInternalEnergy)

Return specific internal energy

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificEntropy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificEntropy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificEntropy)

Return specific entropy

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificGibbsEnergy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificGibbsEnergy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificGibbsEnergy)

Return specific Gibbs energy

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificHelmholtzEnergy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificHelmholtzEnergy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHelmholtzEnergy)

Return specific Helmholtz energy

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCp](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificHeatCapacityCp](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCp)

Return specific heat capacity at constant pressure

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCv](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificHeatCapacityCv](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCv)

Compute specific heat capacity at constant volume from temperature and
gas data

![Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicExponent](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[isentropicExponent](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicExponent)

Return isentropic exponent

![Modelica.Media.IdealGases.Common.SingleGasNasa.velocityOfSound](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[velocityOfSound](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.velocityOfSound)

Return velocity of sound

![Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpyApproximation](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[isentropicEnthalpyApproximation](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpyApproximation)

approximate method of calculating h\_is from upstream properties and
downstream pressure

![Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[isentropicEnthalpy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpy)

Return isentropic enthalpy

![Modelica.Media.IdealGases.Common.SingleGasNasa.isobaricExpansionCoefficient](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[isobaricExpansionCoefficient](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isobaricExpansionCoefficient)

Returns overall the isobaric expansion coefficient beta

![Modelica.Media.IdealGases.Common.SingleGasNasa.isothermalCompressibility](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[isothermalCompressibility](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isothermalCompressibility)

Returns overall the isothermal compressibility factor

![Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derp\_T](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[density\_derp\_T](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derp_T)

Returns the partial derivative of density with respect to pressure at
constant temperature

![Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derT\_p](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[density\_derT\_p](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derT_p)

Returns the partial derivative of density with respect to temperature at
constant pressure

![Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derX](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[density\_derX](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derX)

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

![Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_T](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[cp\_T](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_T)

Compute specific heat capacity at constant pressure from temperature and
gas data

![Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[cp\_Tlow](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_Tlow)

Compute specific heat capacity at constant pressure, low T region

![Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow\_der](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[cp\_Tlow\_der](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_Tlow_der)

Compute specific heat capacity at constant pressure, low T region

![Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[h\_T](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_T)

Compute specific enthalpy from temperature and gas data; reference is
decided by the refChoice input, or by the referenceChoice package
constant by default

![Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T\_der](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[h\_T\_der](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_T_der)

derivative function for h\_T

![Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[h\_Tlow](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow)

Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default

![Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow\_der](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[h\_Tlow\_der](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow_der)

Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default

![Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_T](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[s0\_T](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.s0_T)

Compute specific entropy from temperature and gas data

![Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_Tlow](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[s0\_Tlow](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.s0_Tlow)

Compute specific entropy, low T region

![Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosityLowPressure](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[dynamicViscosityLowPressure](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosityLowPressure)

Dynamic viscosity of low pressure gases

![Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivityEstimate](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[thermalConductivityEstimate](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivityEstimate)

Thermal conductivity of polyatomic gases(Eucken and Modified Eucken
correlation)

![Modelica.Media.IdealGases.Common.SingleGasNasa.molarMass](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[molarMass](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.molarMass)

return the molar mass of the medium

![Modelica.Media.IdealGases.Common.SingleGasNasa.T\_h](Modelica.Media.IdealGases.Common.SingleGasNasa.T_hS.png)
[T\_h](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.T_h)

Compute temperature from specific enthalpy

![Modelica.Media.IdealGases.Common.SingleGasNasa.T\_ps](Modelica.Media.IdealGases.Common.SingleGasNasa.T_hS.png)
[T\_ps](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.T_ps)

Compute temperature from pressure and specific entropy

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

![Modelica.Media.Interfaces.PartialMedium.prandtlNumber](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
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

![image72](Modelica.Media.Air.DryAirNasa.dynamicViscosityI.png) [Modelica.Media.Air.DryAirNasa](Modelica_Media_Air_DryAirNasa.html#Modelica.Media.Air.DryAirNasa).dynamicViscosity
==================================================================================================================================================================================

**Simple polynomial for dry air (moisture influence small), valid from
73.15 K to 373.15 K**

Information
-----------

::

Dynamic viscosity is computed from temperature using a second order
polynomial with a range of validity between 73 and 373 K.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                 Nam Defa Description
                                                       e   ult  
  ---------------------------------------------------- --- ---- -----------
  [ThermodynamicState](Modelica_Media_IdealGases_Commo sta      Thermodynam
  n_SingleGasNasa.html#Modelica.Media.IdealGases.Commo te       ic
  n.SingleGasNasa.ThermodynamicState)                           state
                                                                record
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

    redeclare function dynamicViscosity 
      "Simple polynomial for dry air (moisture influence small), valid from 73.15 K to 373.15 K"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "Thermodynamic state record";
      output DynamicViscosity eta "Dynamic viscosity";
    algorithm 
      eta := Incompressible.TableBased.Polynomials_Temp.evaluate({(-4.96717436974791E-011), 5.06626785714286E-008, 1.72937731092437E-005}, Cv.to_degC(state.T));
    end dynamicViscosity;

* * * * *

![image73](Modelica.Media.Air.DryAirNasa.dynamicViscosityI.png) [Modelica.Media.Air.DryAirNasa](Modelica_Media_Air_DryAirNasa.html#Modelica.Media.Air.DryAirNasa).thermalConductivity
=====================================================================================================================================================================================

**Simple polynomial for dry air (moisture influence small), valid from
73.15 K to 373.15 K**

Information
-----------

::

Thermal conductivity is computed from temperature using a second order
polynomial with a range of validity between 73 and 373 K.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_IdealGases_Comm sta      Thermodynami
  on_SingleGasNasa.html#Modelica.Media.IdealGases.Com te       c
  mon.SingleGasNasa.ThermodynamicState)                        state record

  Integer                                             met 1    Dummy for
                                                      hod      compatibilit
                                                               y
                                                               reasons
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

    redeclare function thermalConductivity 
      "Simple polynomial for dry air (moisture influence small), valid from 73.15 K to 373.15 K"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "Thermodynamic state record";
      input Integer method=1 "Dummy for compatibility reasons";
      output ThermalConductivity lambda "Thermal conductivity";
    algorithm 
      lambda := Incompressible.TableBased.Polynomials_Temp.evaluate({(-4.8737307422969E-008), 7.67803133753502E-005, 0.0241814385504202},Cv.to_degC(state.T));

    end thermalConductivity;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:31 2010.
