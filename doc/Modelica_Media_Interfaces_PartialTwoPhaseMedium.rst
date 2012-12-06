===============================================
Modelica.Media.Interfaces.PartialTwoPhaseMedium
===============================================

`Modelica.Media.Interfaces <Modelica_Media_Interfaces.html#Modelica.Media.Interfaces>`_.PartialTwoPhaseMedium
-------------------------------------------------------------------------------------------------------------

**Base class for two phase medium of one substance**

Information
~~~~~~~~~~~

Extends from
`PartialPureSubstance <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance>`_
(base class for pure substances of one chemical substance).

Package Content
~~~~~~~~~~~~~~~

Name

Description

smoothModel

true if the (derived) model should not generate state events

onePhase

true if the (derived) model should never be called with two-phase inputs

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimits|
`FluidLimits <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimits>`_

validity limits for fluid model

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidConstants|
`FluidConstants <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidConstants>`_

extended fluid constants

fluidConstants

constant data for the fluid

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState|
`ThermodynamicState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState>`_

Thermodynamic state of two phase medium

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties|
`SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_

Saturation properties of two phase medium

`FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_

phase of the fluid: 1 for 1-phase, 2 for two-phase, 0 for not known,
e.g., interactive use

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.BaseProperties|
`BaseProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.BaseProperties>`_

Base properties (p, d, T, h, u, R, MM, sat) of two phase medium

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewState|
`setDewState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewState>`_

Return the thermodynamic state on the dew line

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setBubbleState|
`setBubbleState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setBubbleState>`_

Return the thermodynamic state on the bubble line

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_dTX|
`setState\_dTX <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_dTX>`_

Return thermodynamic state as function of d, T and composition X or Xi

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_phX|
`setState\_phX <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_phX>`_

Return thermodynamic state as function of p, h and composition X or Xi

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_psX|
`setState\_psX <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_psX>`_

Return thermodynamic state as function of p, s and composition X or Xi

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_pTX|
`setState\_pTX <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pTX>`_

Return thermodynamic state as function of p, T and composition X or Xi

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_T|
`setSat\_T <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_T>`_

Return saturation property record from temperature

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_p|
`setSat\_p <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_p>`_

Return saturation property record from pressure

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEnthalpy|
`bubbleEnthalpy <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEnthalpy>`_

Return bubble point specific enthalpy

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEnthalpy|
`dewEnthalpy <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEnthalpy>`_

Return dew point specific enthalpy

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEntropy|
`bubbleEntropy <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEntropy>`_

Return bubble point specific entropy

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEntropy|
`dewEntropy <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEntropy>`_

Return dew point specific entropy

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleDensity|
`bubbleDensity <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleDensity>`_

Return bubble point density

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewDensity|
`dewDensity <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewDensity>`_

Return dew point density

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure|
`saturationPressure <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure>`_

Return saturation pressure

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature|
`saturationTemperature <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature>`_

Return saturation temperature

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure\_sat|
`saturationPressure\_sat <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure_sat>`_

Return saturation temperature

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_sat|
`saturationTemperature\_sat <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_sat>`_

Return saturation temperature

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_derp|
`saturationTemperature\_derp <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_derp>`_

Return derivative of saturation temperature w.r.t. pressure

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_derp\_sat|
`saturationTemperature\_derp\_sat <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_derp_sat>`_

Return derivative of saturation temperature w.r.t. pressure

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.surfaceTension|
`surfaceTension <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.surfaceTension>`_

Return surface tension sigma in the two phase region

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.molarMass|
`molarMass <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.molarMass>`_

Return the molar mass of the medium

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleDensity\_dPressure|
`dBubbleDensity\_dPressure <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleDensity_dPressure>`_

Return bubble point density derivative

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewDensity\_dPressure|
`dDewDensity\_dPressure <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewDensity_dPressure>`_

Return dew point density derivative

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleEnthalpy\_dPressure|
`dBubbleEnthalpy\_dPressure <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleEnthalpy_dPressure>`_

Return bubble point specific enthalpy derivative

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewEnthalpy\_dPressure|
`dDewEnthalpy\_dPressure <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewEnthalpy_dPressure>`_

Return dew point specific enthalpy derivative

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_pTX|
`specificEnthalpy\_pTX <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy_pTX>`_

Return specific enthalpy from pressure, temperature and mass fraction

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_phX|
`temperature\_phX <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature_phX>`_

Return temperature from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_phX|
`density\_phX <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phX>`_

Return density from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_psX|
`temperature\_psX <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature_psX>`_

Return temperature from p, s, and X or Xi

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_psX|
`density\_psX <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_psX>`_

Return density from p, s, and X or Xi

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_psX|
`specificEnthalpy\_psX <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy_psX>`_

Return specific enthalpy from p, s, and X or Xi

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_pT|
`setState\_pT <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pT>`_

Return thermodynamic state from p and T

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_ph|
`setState\_ph <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_ph>`_

Return thermodynamic state from p and h

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_ps|
`setState\_ps <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_ps>`_

Return thermodynamic state from p and s

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_dT|
`setState\_dT <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_dT>`_

Return thermodynamic state from d and T

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_px|
`setState\_px <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_px>`_

Return thermodynamic state from pressure and vapour quality

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_Tx|
`setState\_Tx <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_Tx>`_

Return thermodynamic state from temperature and vapour quality

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.vapourQuality|
`vapourQuality <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.vapourQuality>`_

Return vapour quality

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_ph|
`density\_ph <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_ph>`_

Return density from p and h

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_ph|
`temperature\_ph <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature_ph>`_

Return temperature from p and h

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.pressure\_dT|
`pressure\_dT <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.pressure_dT>`_

Return pressure from d and T

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_dT|
`specificEnthalpy\_dT <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy_dT>`_

Return specific enthalpy from d and T

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_ps|
`specificEnthalpy\_ps <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy_ps>`_

Return specific enthalpy from p and s

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_ps|
`temperature\_ps <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature_ps>`_

Return temperature from p and s

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_ps|
`density\_ps <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_ps>`_

Return density from p and s

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_pT|
`specificEnthalpy\_pT <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy_pT>`_

Return specific enthalpy from p and T

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_pT|
`density\_pT <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_pT>`_

Return density from p and T

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

|Modelica.Media.Interfaces.PartialMedium.setSmoothState|
`setSmoothState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

|Modelica.Media.Interfaces.PartialMedium.dynamicViscosity|
`dynamicViscosity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.dynamicViscosity>`_

Return dynamic viscosity

|Modelica.Media.Interfaces.PartialMedium.thermalConductivity|
`thermalConductivity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.thermalConductivity>`_

Return thermal conductivity

|Modelica.Media.Interfaces.PartialMedium.prandtlNumber|
`prandtlNumber <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.prandtlNumber>`_

Return the Prandtl number

|Modelica.Media.Interfaces.PartialMedium.pressure|
`pressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.pressure>`_

Return pressure

|Modelica.Media.Interfaces.PartialMedium.temperature|
`temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.temperature>`_

Return temperature

|Modelica.Media.Interfaces.PartialMedium.density|
`density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density>`_

Return density

|Modelica.Media.Interfaces.PartialMedium.specificEnthalpy|
`specificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEnthalpy>`_

Return specific enthalpy

|Modelica.Media.Interfaces.PartialMedium.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificInternalEnergy>`_

Return specific internal energy

|Modelica.Media.Interfaces.PartialMedium.specificEntropy|
`specificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy>`_

Return specific entropy

|Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy>`_

Return specific Gibbs energy

|Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy>`_

Return specific Helmholtz energy

|Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCp>`_

Return specific heat capacity at constant pressure

|Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp|
`heatCapacity\_cp <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cp>`_

alias for deprecated name

|Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCv>`_

Return specific heat capacity at constant volume

|Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv|
`heatCapacity\_cv <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cv>`_

alias for deprecated name

|Modelica.Media.Interfaces.PartialMedium.isentropicExponent|
`isentropicExponent <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicExponent>`_

Return isentropic exponent

|Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy|
`isentropicEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy>`_

Return isentropic enthalpy

|Modelica.Media.Interfaces.PartialMedium.velocityOfSound|
`velocityOfSound <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.velocityOfSound>`_

Return velocity of sound

|Modelica.Media.Interfaces.PartialMedium.isobaricExpansionCoefficient|
`isobaricExpansionCoefficient <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isobaricExpansionCoefficient>`_

Return overall the isobaric expansion coefficient beta

|Modelica.Media.Interfaces.PartialMedium.beta|
`beta <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.beta>`_

alias for isobaricExpansionCoefficient for user convenience

|Modelica.Media.Interfaces.PartialMedium.isothermalCompressibility|
`isothermalCompressibility <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isothermalCompressibility>`_

Return overall the isothermal compressibility factor

|Modelica.Media.Interfaces.PartialMedium.kappa|
`kappa <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.kappa>`_

alias of isothermalCompressibility for user convenience

|Modelica.Media.Interfaces.PartialMedium.density\_derp\_h|
`density\_derp\_h <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_h>`_

Return density derivative w.r.t. pressure at const specific enthalpy

|Modelica.Media.Interfaces.PartialMedium.density\_derh\_p|
`density\_derh\_p <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derh_p>`_

Return density derivative w.r.t. specific enthalpy at constant pressure

|Modelica.Media.Interfaces.PartialMedium.density\_derp\_T|
`density\_derp\_T <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_T>`_

Return density derivative w.r.t. pressure at const temperature

|Modelica.Media.Interfaces.PartialMedium.density\_derT\_p|
`density\_derT\_p <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derT_p>`_

Return density derivative w.r.t. temperature at constant pressure

|Modelica.Media.Interfaces.PartialMedium.density\_derX|
`density\_derX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derX>`_

Return density derivative w.r.t. mass fraction

|Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX|
`specificEntropy\_pTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy_pTX>`_

Return specific enthalpy from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.density\_pTX|
`density\_pTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_pTX>`_

Return density from p, T, and X or Xi

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

Types and constants
~~~~~~~~~~~~~~~~~~~

::

      constant Boolean smoothModel 
      "true if the (derived) model should not generate state events";

::

      constant Boolean onePhase 
      "true if the (derived) model should never be called with two-phase inputs";

::

    constant FluidConstants[nS] fluidConstants "constant data for the fluid";

::

      type FixedPhase = Integer(min=0,max=2) 
      "phase of the fluid: 1 for 1-phase, 2 for two-phase, 0 for not known, e.g., interactive use";

--------------

|image84| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.FluidLimits
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**validity limits for fluid model**

Information
~~~~~~~~~~~

::

The minimum pressure mostly applies to the liquid state only. The
minimum density is also arbitrary, but is reasonable for techical
applications to limit iterations in non-linear systems. The limits in
enthalpy and entropy are used as safeguards in inverse iterations.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record FluidLimits "validity limits for fluid model"
      extends Modelica.Icons.Record;
      Temperature TMIN "minimum temperature";
      Temperature TMAX "maximum temperature";
      Density DMIN "minimum density";
      Density DMAX "maximum density";
      AbsolutePressure PMIN "minimum pressure";
      AbsolutePressure PMAX "maximum pressure";
      SpecificEnthalpy HMIN "minimum enthalpy";
      SpecificEnthalpy HMAX "maximum enthalpy";
      SpecificEntropy SMIN "minimum entropy";
      SpecificEntropy SMAX "maximum entropy";
    end FluidLimits;

--------------

|image85| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.FluidConstants
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**extended fluid constants**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants>`_
(critical, triple, molecular and other standard data of fluid).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable record extends FluidConstants 
      "extended fluid constants"
      Temperature criticalTemperature "critical temperature";
      AbsolutePressure criticalPressure "critical pressure";
      MolarVolume criticalMolarVolume "critical molar Volume";
      Real acentricFactor "Pitzer acentric factor";
      Temperature triplePointTemperature "triple point temperature";
      AbsolutePressure triplePointPressure "triple point pressure";
      Temperature meltingPoint "melting point at 101325 Pa";
      Temperature normalBoilingPoint "normal boiling point (at 101325 Pa)";
      DipoleMoment dipoleMoment 
        "dipole moment of molecule in Debye (1 debye = 3.33564e10-30 C.m)";
      Boolean hasIdealGasHeatCapacity=false 
        "true if ideal gas heat capacity is available";
      Boolean hasCriticalData=false "true if critical data are known";
      Boolean hasDipoleMoment=false "true if a dipole moment known";
      Boolean hasFundamentalEquation=false "true if a fundamental equation";
      Boolean hasLiquidHeatCapacity=false 
        "true if liquid heat capacity is available";
      Boolean hasSolidHeatCapacity=false "true if solid heat capacity is available";
      Boolean hasAccurateViscosityData=false 
        "true if accurate data for a viscosity function is available";
      Boolean hasAccurateConductivityData=false 
        "true if accurate data for thermal conductivity is available";
      Boolean hasVapourPressureCurve=false 
        "true if vapour pressure data, e.g., Antoine coefficents are known";
      Boolean hasAcentricFactor=false "true if Pitzer accentric factor is known";
      SpecificEnthalpy HCRIT0=0.0 
        "Critical specific enthalpy of the fundamental equation";
      SpecificEntropy SCRIT0=0.0 
        "Critical specific entropy of the fundamental equation";
      SpecificEnthalpy deltah=0.0 
        "Difference between specific enthalpy model (h_m) and f.eq. (h_f) (h_m - h_f)";
      SpecificEntropy deltas=0.0 
        "Difference between specific enthalpy model (s_m) and f.eq. (s_f) (s_m - s_f)";
    end FluidConstants;

--------------

|image86| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.ThermodynamicState
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermodynamic state of two phase medium**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_
(Minimal variable set that is available as input argument to every
medium function).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable record extends ThermodynamicState 
      "Thermodynamic state of two phase medium"
        FixedPhase phase(min=0, max=2) 
        "phase of the fluid: 1 for 1-phase, 2 for two-phase, 0 for not known, e.g., interactive use";
    end ThermodynamicState;

--------------

|image87| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.SaturationProperties
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Saturation properties of two phase medium**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable record SaturationProperties 
      "Saturation properties of two phase medium"
      extends Modelica.Icons.Record;
      AbsolutePressure psat "saturation pressure";
      Temperature Tsat "saturation temperature";
    end SaturationProperties;

--------------

|image88| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.BaseProperties
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base properties (p, d, T, h, u, R, MM, sat) of two phase medium**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.BaseProperties>`_.

Parameters
~~~~~~~~~~

+----------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+
| Type           | Name                    | Default   | Description                                                                                       |
+================+=========================+===========+===================================================================================================+
| **Advanced**   |
+----------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+
| Boolean        | preferredMediumStates   | false     | = true if StateSelect.prefer shall be used for the independent property variables of the medium   |
+----------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable partial model extends BaseProperties 
      "Base properties (p, d, T, h, u, R, MM, sat) of two phase medium"
      SaturationProperties sat "Saturation properties at the medium pressure";
    end BaseProperties;

--------------

|image89| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setDewState
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the thermodynamic state on the dew line**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-------------------------------+
| Type                                                                                                                                                  | Name    | Default   | Description                   |
+=======================================================================================================================================================+=========+===========+===============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat     |           | saturation point              |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_                       | phase   | 1         | phase: default is one phase   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+-------------------------------------+
| Type                                                                                                                                              | Name    | Description                         |
+===================================================================================================================================================+=========+=====================================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState>`_   | state   | complete thermodynamic state info   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function setDewState 
      "Return the thermodynamic state on the dew line"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation point";
      input FixedPhase phase(min = 1, max = 2) =  1 "phase: default is one phase";
      output ThermodynamicState state "complete thermodynamic state info";
    end setDewState;

--------------

|image90| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setBubbleState
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the thermodynamic state on the bubble line**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-------------------------------+
| Type                                                                                                                                                  | Name    | Default   | Description                   |
+=======================================================================================================================================================+=========+===========+===============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat     |           | saturation point              |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_                       | phase   | 1         | phase: default is one phase   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+-------------------------------------+
| Type                                                                                                                                              | Name    | Description                         |
+===================================================================================================================================================+=========+=====================================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState>`_   | state   | complete thermodynamic state info   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function setBubbleState 
      "Return the thermodynamic state on the bubble line"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation point";
      input FixedPhase phase(min = 1, max = 2) =  1 "phase: default is one phase";
      output ThermodynamicState state "complete thermodynamic state info";
    end setBubbleState;

--------------

|image91| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setState\_dTX
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state as function of d, T and composition X or
Xi**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_dTX>`_
(Return thermodynamic state as function of d, T and composition X or
Xi).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default        | Description                                        |
+===================================================================================================================================+=========+================+====================================================+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0              | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_                         | d       |                | density [kg/m3]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T       |                | Temperature [K]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[:]    | reference\_X   | Mass fractions [kg/kg]                             |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                              | Name    | Description                  |
+===================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable partial function extends setState_dTX 
      "Return thermodynamic state as function of d, T and composition X or Xi"
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
    end setState_dTX;

--------------

|image92| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setState\_phX
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state as function of p, h and composition X or
Xi**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_phX>`_
(Return thermodynamic state as function of p, h and composition X or
Xi).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default        | Description                                        |
+===================================================================================================================================+=========+================+====================================================+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0              | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |                | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_       | h       |                | Specific enthalpy [J/kg]                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[:]    | reference\_X   | Mass fractions [kg/kg]                             |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                              | Name    | Description                  |
+===================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable partial function extends setState_phX 
      "Return thermodynamic state as function of p, h and composition X or Xi"
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
    end setState_phX;

--------------

|image93| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setState\_psX
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state as function of p, s and composition X or
Xi**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_psX>`_
(Return thermodynamic state as function of p, s and composition X or
Xi).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default        | Description                                        |
+===================================================================================================================================+=========+================+====================================================+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0              | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |                | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s       |                | Specific entropy [J/(kg.K)]                        |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[:]    | reference\_X   | Mass fractions [kg/kg]                             |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                              | Name    | Description                  |
+===================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable partial function extends setState_psX 
      "Return thermodynamic state as function of p, s and composition X or Xi"
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
    end setState_psX;

--------------

|image94| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setState\_pTX
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state as function of p, T and composition X or
Xi**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_pTX>`_
(Return thermodynamic state as function of p, T and composition X or
Xi).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default        | Description                                        |
+===================================================================================================================================+=========+================+====================================================+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0              | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |                | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T       |                | Temperature [K]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[:]    | reference\_X   | Mass fractions [kg/kg]                             |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+----------------+----------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                              | Name    | Description                  |
+===================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable partial function extends setState_pTX 
      "Return thermodynamic state as function of p, T and composition X or Xi"
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
    end setState_pTX;

--------------

|image95| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setSat\_T
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return saturation property record from temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                                | Name   | Default   | Description       |
+=====================================================================================================================+========+===========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      |           | temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------+
| Type                                                                                                                                                  | Name   | Description                  |
+=======================================================================================================================================================+========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable function setSat_T 
      "Return saturation property record from temperature"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output SaturationProperties sat "saturation property record";
    algorithm 
      sat.Tsat := T;
      sat.psat := saturationPressure(T);
    end setSat_T;

--------------

|image96| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setSat\_p
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return saturation property record from pressure**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------+
| Type                                                                                                                          | Name   | Default   | Description     |
+===============================================================================================================================+========+===========+=================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | pressure [Pa]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------+
| Type                                                                                                                                                  | Name   | Description                  |
+=======================================================================================================================================================+========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable function setSat_p 
      "Return saturation property record from pressure"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "pressure";
      output SaturationProperties sat "saturation property record";
    algorithm 
      sat.psat := p;
      sat.Tsat := saturationTemperature(p);
    end setSat_p;

--------------

|image97| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.bubbleEnthalpy
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return bubble point specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+------------------------------------------+
| Type                                                                            | Name   | Description                              |
+=================================================================================+========+==========================================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | hl     | boiling curve specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function bubbleEnthalpy 
      "Return bubble point specific enthalpy"
        extends Modelica.Icons.Function;
        input SaturationProperties sat "saturation property record";
        output SI.SpecificEnthalpy hl "boiling curve specific enthalpy";
    end bubbleEnthalpy;

--------------

|image98| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.dewEnthalpy
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return dew point specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                            | Name   | Description                          |
+=================================================================================+========+======================================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | hv     | dew curve specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function dewEnthalpy 
      "Return dew point specific enthalpy"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output SI.SpecificEnthalpy hv "dew curve specific enthalpy";
    end dewEnthalpy;

--------------

|image99| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.bubbleEntropy
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return bubble point specific entropy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+---------------------------------------------+
| Type                                                                          | Name   | Description                                 |
+===============================================================================+========+=============================================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | sl     | boiling curve specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function bubbleEntropy 
      "Return bubble point specific entropy"
    extends Modelica.Icons.Function;
    input SaturationProperties sat "saturation property record";
    output SI.SpecificEntropy sl "boiling curve specific entropy";
    end bubbleEntropy;

--------------

|image100| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.dewEntropy
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return dew point specific entropy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-----------------------------------------+
| Type                                                                          | Name   | Description                             |
+===============================================================================+========+=========================================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | sv     | dew curve specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function dewEntropy 
      "Return dew point specific entropy"
    extends Modelica.Icons.Function;
    input SaturationProperties sat "saturation property record";
    output SI.SpecificEntropy sv "dew curve specific entropy";
    end dewEntropy;

--------------

|image101| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.bubbleDensity
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return bubble point density**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------+---------------------------------+
| Type                                                                                                        | Name   | Description                     |
+=============================================================================================================+========+=================================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_   | dl     | boiling curve density [kg/m3]   |
+-------------------------------------------------------------------------------------------------------------+--------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function bubbleDensity 
      "Return bubble point density"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output Density dl "boiling curve density";
    end bubbleDensity;

--------------

|image102| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.dewDensity
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return dew point density**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------+-----------------------------+
| Type                                                                                                        | Name   | Description                 |
+=============================================================================================================+========+=============================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_   | dv     | dew curve density [kg/m3]   |
+-------------------------------------------------------------------------------------------------------------+--------+-----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function dewDensity "Return dew point density"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output Density dv "dew curve density";
    end dewDensity;

--------------

|image103| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.saturationPressure
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return saturation pressure**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                                | Name   | Default   | Description       |
+=====================================================================================================================+========+===========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      |           | temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                                                                          | Name   | Description                |
+===============================================================================================================================+========+============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      | saturation pressure [Pa]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function saturationPressure 
      "Return saturation pressure"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output AbsolutePressure p "saturation pressure";
    end saturationPressure;

--------------

|image104| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.saturationTemperature
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return saturation temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------+
| Type                                                                                                                          | Name   | Default   | Description     |
+===============================================================================================================================+========+===========+=================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | pressure [Pa]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+------------------------------+
| Type                                                                                                                | Name   | Description                  |
+=====================================================================================================================+========+==============================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      | saturation temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function saturationTemperature 
      "Return saturation temperature"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "pressure";
      output Temperature T "saturation temperature";
    end saturationTemperature;

--------------

|image105| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.saturationPressure\_sat
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return saturation temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                                                                          | Name   | Description                |
+===============================================================================================================================+========+============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      | saturation pressure [Pa]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable function saturationPressure_sat 
      "Return saturation temperature"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output AbsolutePressure p "saturation pressure";
    algorithm 
      p := sat.psat;
    end saturationPressure_sat;

--------------

|image106| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.saturationTemperature\_sat
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return saturation temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+------------------------------+
| Type                                                                                                                | Name   | Description                  |
+=====================================================================================================================+========+==============================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      | saturation temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable function saturationTemperature_sat 
      "Return saturation temperature"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output Temperature T "saturation temperature";
    algorithm 
      T := sat.Tsat;
    end saturationTemperature_sat;

--------------

|image107| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.saturationTemperature\_derp
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return derivative of saturation temperature w.r.t. pressure**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------+
| Type                                                                                                                          | Name   | Default   | Description     |
+===============================================================================================================================+========+===========+=================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | pressure [Pa]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------+

Outputs
~~~~~~~

+--------+--------+--------------------------------------------------------+
| Type   | Name   | Description                                            |
+========+========+========================================================+
| Real   | dTp    | derivative of saturation temperature w.r.t. pressure   |
+--------+--------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function saturationTemperature_derp 
      "Return derivative of saturation temperature w.r.t. pressure"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "pressure";
      output Real dTp "derivative of saturation temperature w.r.t. pressure";
    end saturationTemperature_derp;

--------------

|image108| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.saturationTemperature\_derp\_sat
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return derivative of saturation temperature w.r.t. pressure**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+--------+--------+--------------------------------------------------------+
| Type   | Name   | Description                                            |
+========+========+========================================================+
| Real   | dTp    | derivative of saturation temperature w.r.t. pressure   |
+--------+--------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable function saturationTemperature_derp_sat 
      "Return derivative of saturation temperature w.r.t. pressure"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output Real dTp "derivative of saturation temperature w.r.t. pressure";
    algorithm 
      dTp := saturationTemperature_derp(sat.psat);
    end saturationTemperature_derp_sat;

--------------

|image109| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.surfaceTension
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return surface tension sigma in the two phase region**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+---------+-------------------------------------------------------+
| Type                                                                                                                      | Name    | Description                                           |
+===========================================================================================================================+=========+=======================================================+
| `SurfaceTension <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SurfaceTension>`_   | sigma   | Surface tension sigma in the two phase region [N/m]   |
+---------------------------------------------------------------------------------------------------------------------------+---------+-------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function surfaceTension 
      "Return surface tension sigma in the two phase region"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output SurfaceTension sigma "Surface tension sigma in the two phase region";
    end surfaceTension;

--------------

|image110| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.molarMass
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the molar mass of the medium**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.molarMass>`_
(Return the molar mass of the medium).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                                                            | Name   | Description                   |
+=================================================================================================================+========+===============================+
| `MolarMass <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MolarMass>`_   | MM     | Mixture molar mass [kg/mol]   |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable partial function extends molarMass 
      "Return the molar mass of the medium"
    algorithm 
      MM := fluidConstants[1].molarMass;
    end molarMass;

--------------

|image111| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.dBubbleDensity\_dPressure
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return bubble point density derivative**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------+---------+--------------------------------------------+
| Type                                                                                                                                  | Name    | Description                                |
+=======================================================================================================================================+=========+============================================+
| `DerDensityByPressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByPressure>`_   | ddldp   | boiling curve density derivative [s2/m2]   |
+---------------------------------------------------------------------------------------------------------------------------------------+---------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function dBubbleDensity_dPressure 
      "Return bubble point density derivative"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output DerDensityByPressure ddldp "boiling curve density derivative";
    end dBubbleDensity_dPressure;

--------------

|image112| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.dDewDensity\_dPressure
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return dew point density derivative**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------+---------+----------------------------------------------+
| Type                                                                                                                                  | Name    | Description                                  |
+=======================================================================================================================================+=========+==============================================+
| `DerDensityByPressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByPressure>`_   | ddvdp   | saturated steam density derivative [s2/m2]   |
+---------------------------------------------------------------------------------------------------------------------------------------+---------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function dDewDensity_dPressure 
      "Return dew point density derivative"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output DerDensityByPressure ddvdp "saturated steam density derivative";
    end dDewDensity_dPressure;

--------------

|image113| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.dBubbleEnthalpy\_dPressure
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return bubble point specific enthalpy derivative**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------+---------+-----------------------------------------------------------+
| Type                                                                                                                                    | Name    | Description                                               |
+=========================================================================================================================================+=========+===========================================================+
| `DerEnthalpyByPressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerEnthalpyByPressure>`_   | dhldp   | boiling curve specific enthalpy derivative [J.m.s2/kg2]   |
+-----------------------------------------------------------------------------------------------------------------------------------------+---------+-----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function dBubbleEnthalpy_dPressure 
      "Return bubble point specific enthalpy derivative"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output DerEnthalpyByPressure dhldp 
        "boiling curve specific enthalpy derivative";
    end dBubbleEnthalpy_dPressure;

--------------

|image114| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.dDewEnthalpy\_dPressure
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return dew point specific enthalpy derivative**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                                                  | Name   | Default   | Description                  |
+=======================================================================================================================================================+========+===========+==============================+
| `SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_   | sat    |           | saturation property record   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------+---------+-------------------------------------------------------------+
| Type                                                                                                                                    | Name    | Description                                                 |
+=========================================================================================================================================+=========+=============================================================+
| `DerEnthalpyByPressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerEnthalpyByPressure>`_   | dhvdp   | saturated steam specific enthalpy derivative [J.m.s2/kg2]   |
+-----------------------------------------------------------------------------------------------------------------------------------------+---------+-------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable partial function dDewEnthalpy_dPressure 
      "Return dew point specific enthalpy derivative"
      extends Modelica.Icons.Function;

      input SaturationProperties sat "saturation property record";
      output DerEnthalpyByPressure dhvdp 
        "saturated steam specific enthalpy derivative";
    end dDewEnthalpy_dPressure;

--------------

|image115| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.specificEnthalpy\_pTX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy from pressure, temperature and mass
fraction**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T       |           | Temperature [K]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[nX]   |           | Mass fractions [kg/kg]                             |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------+
| Type                                                                                                                          | Name   | Description                           |
+===============================================================================================================================+========+=======================================+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      | Specific enthalpy at p, T, X [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function specificEnthalpy_pTX 
      "Return specific enthalpy from pressure, temperature and mass fraction"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[nX] "Mass fractions";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output SpecificEnthalpy h "Specific enthalpy at p, T, X";
    algorithm 
      h := specificEnthalpy(setState_pTX(p,T,X,phase));
    end specificEnthalpy_pTX;

--------------

|image116| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.temperature\_phX
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return temperature from p, h, and X or Xi**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_       | h       |           | Specific enthalpy [J/kg]                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[nX]   |           | Mass fractions [kg/kg]                             |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                                | Name   | Description       |
+=====================================================================================================================+========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      | Temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function temperature_phX 
      "Return temperature from p, h, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[nX] "Mass fractions";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output Temperature T "Temperature";
    algorithm 
      T := temperature(setState_phX(p,h,X,phase));
    end temperature_phX;

--------------

|image117| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.density\_phX
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density from p, h, and X or Xi**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_       | h       |           | Specific enthalpy [J/kg]                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[nX]   |           | Mass fractions [kg/kg]                             |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                        | Name   | Description       |
+=============================================================================================================+========+===================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_   | d      | density [kg/m3]   |
+-------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function density_phX 
      "Return density from p, h, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[nX] "Mass fractions";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output Density d "density";
    algorithm 
      d := density(setState_phX(p,h,X,phase));
    end density_phX;

--------------

|image118| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.temperature\_psX
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return temperature from p, s, and X or Xi**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s       |           | Specific entropy [J/(kg.K)]                        |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[nX]   |           | Mass fractions [kg/kg]                             |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                                | Name   | Description       |
+=====================================================================================================================+========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      | Temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function temperature_psX 
      "Return temperature from p, s, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input MassFraction X[nX] "Mass fractions";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output Temperature T "Temperature";
    algorithm 
      T := temperature(setState_psX(p,s,X,phase));
    end temperature_psX;

--------------

|image119| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.density\_psX
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density from p, s, and X or Xi**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s       |           | Specific entropy [J/(kg.K)]                        |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[nX]   |           | Mass fractions [kg/kg]                             |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                        | Name   | Description       |
+=============================================================================================================+========+===================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_   | d      | Density [kg/m3]   |
+-------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function density_psX 
      "Return density from p, s, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input MassFraction X[nX] "Mass fractions";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output Density d "Density";
    algorithm 
      d := density(setState_psX(p,s,X,phase));
    end density_psX;

--------------

|image120| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.specificEnthalpy\_psX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy from p, s, and X or Xi**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s       |           | Specific entropy [J/(kg.K)]                        |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[nX]   |           | Mass fractions [kg/kg]                             |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                                                                          | Name   | Description                |
+===============================================================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function specificEnthalpy_psX 
      "Return specific enthalpy from p, s, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input MassFraction X[nX] "Mass fractions";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := specificEnthalpy(setState_psX(p,s,X,phase));
    end specificEnthalpy_psX;

--------------

|image121| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setState\_pT
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state from p and T**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T       |           | Temperature [K]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                                              | Name    | Description                  |
+===================================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function setState_pT 
      "Return thermodynamic state from p and T"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := setState_pTX(p,T,fill(0,0),phase);
    end setState_pT;

--------------

|image122| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setState\_ph
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state from p and h**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_       | h       |           | Specific enthalpy [J/kg]                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                                              | Name    | Description                  |
+===================================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function setState_ph 
      "Return thermodynamic state from p and h"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := setState_phX(p,h,fill(0, 0),phase);
    end setState_ph;

--------------

|image123| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setState\_ps
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state from p and s**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s       |           | Specific entropy [J/(kg.K)]                        |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                                              | Name    | Description                  |
+===================================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function setState_ps 
      "Return thermodynamic state from p and s"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := setState_psX(p,s,fill(0,0),phase);
    end setState_ps;

--------------

|image124| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setState\_dT
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state from d and T**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_                         | d       |           | density [kg/m3]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T       |           | Temperature [K]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                                              | Name    | Description                  |
+===================================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function setState_dT 
      "Return thermodynamic state from d and T"
      extends Modelica.Icons.Function;
      input Density d "density";
      input Temperature T "Temperature";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := setState_dTX(d,T,fill(0,0),phase);
    end setState_dT;

--------------

`Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setState\_px
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state from pressure and vapour quality**

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------+
| Type                                                                                                                          | Name   | Default   | Description              |
+===============================================================================================================================+========+===========+==========================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | Pressure [Pa]            |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | x      |           | Vapour quality [kg/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                                              | Name    | Description                  |
+===================================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState>`_   | state   | Thermodynamic state record   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable function setState_px 
      "Return thermodynamic state from pressure and vapour quality"
      input AbsolutePressure p "Pressure";
      input MassFraction x "Vapour quality";
      output ThermodynamicState state "Thermodynamic state record";
    algorithm 
      state := setState_ph(
        p,
        (1-x)*bubbleEnthalpy(setSat_p(p)) + x*dewEnthalpy(setSat_p(p)),
        2);
    end setState_px;

--------------

`Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.setState\_Tx
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state from temperature and vapour quality**

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------+
| Type                                                                                                                  | Name   | Default   | Description              |
+=======================================================================================================================+========+===========+==========================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_     | T      |           | Temperature [K]          |
+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_   | x      |           | Vapour quality [kg/kg]   |
+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                                              | Name    | Description                  |
+===================================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable function setState_Tx 
      "Return thermodynamic state from temperature and vapour quality"
      input Temperature T "Temperature";
      input MassFraction x "Vapour quality";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := setState_ph(
        saturationPressure_sat(setSat_T(T)),
        (1-x)*bubbleEnthalpy(setSat_T(T)) + x*dewEnthalpy(setSat_T(T)),
        2);
    end setState_Tx;

--------------

`Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.vapourQuality
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return vapour quality**

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState>`_   | state   |           | Thermodynamic state record   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+--------+--------------------------+
| Type                                                                                                                  | Name   | Description              |
+=======================================================================================================================+========+==========================+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_   | x      | Vapour quality [kg/kg]   |
+-----------------------------------------------------------------------------------------------------------------------+--------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable function vapourQuality "Return vapour quality"
      input ThermodynamicState state "Thermodynamic state record";
      output MassFraction x "Vapour quality";
    protected 
      constant SpecificEnthalpy eps = 1e-8;
    algorithm 
      x := min(max(
        (specificEnthalpy(state)-bubbleEnthalpy(setSat_p(pressure(state)))) /
        (dewEnthalpy(setSat_p(pressure(state))) - bubbleEnthalpy(setSat_p(pressure(state))) + eps),
        0),1);
    end vapourQuality;

--------------

|image125| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.density\_ph
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density from p and h**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_       | h       |           | Specific enthalpy [J/kg]                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                        | Name   | Description       |
+=============================================================================================================+========+===================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_   | d      | Density [kg/m3]   |
+-------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function density_ph 
      "Return density from p and h"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output Density d "Density";
    algorithm 
      d := density_phX(p, h, fill(0,0), phase);
    end density_ph;

--------------

|image126| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.temperature\_ph
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return temperature from p and h**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_       | h       |           | Specific enthalpy [J/kg]                           |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                                | Name   | Description       |
+=====================================================================================================================+========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      | Temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function temperature_ph 
      "Return temperature from p and h"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output Temperature T "Temperature";
    algorithm 
      T := temperature_phX(p, h, fill(0,0),phase);
    end temperature_ph;

--------------

|image127| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.pressure\_dT
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure from d and T**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_                         | d       |           | Density [kg/m3]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T       |           | Temperature [K]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------------+
| Type                                                                                                                          | Name   | Description     |
+===============================================================================================================================+========+=================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      | Pressure [Pa]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function pressure_dT 
      "Return pressure from d and T"
      extends Modelica.Icons.Function;
      input Density d "Density";
      input Temperature T "Temperature";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output AbsolutePressure p "Pressure";
    algorithm 
      p := pressure(setState_dTX(d, T, fill(0,0),phase));
    end pressure_dT;

--------------

|image128| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.specificEnthalpy\_dT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy from d and T**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_                         | d       |           | Density [kg/m3]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T       |           | Temperature [K]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                                                                          | Name   | Description                |
+===============================================================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function specificEnthalpy_dT 
      "Return specific enthalpy from d and T"
      extends Modelica.Icons.Function;
      input Density d "Density";
      input Temperature T "Temperature";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := specificEnthalpy(setState_dTX(d, T, fill(0,0),phase));
    end specificEnthalpy_dT;

--------------

|image129| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.specificEnthalpy\_ps
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy from p and s**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s       |           | Specific entropy [J/(kg.K)]                        |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                                                                          | Name   | Description                |
+===============================================================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function specificEnthalpy_ps 
      "Return specific enthalpy from p and s"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := specificEnthalpy_psX(p,s,fill(0,0));
    end specificEnthalpy_ps;

--------------

|image130| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.temperature\_ps
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return temperature from p and s**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s       |           | Specific entropy [J/(kg.K)]                        |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                                | Name   | Description       |
+=====================================================================================================================+========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      | Temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function temperature_ps 
      "Return temperature from p and s"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output Temperature T "Temperature";
    algorithm 
      T := temperature_psX(p,s,fill(0,0),phase);
    end temperature_ps;

--------------

|image131| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.density\_ps
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density from p and s**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s       |           | Specific entropy [J/(kg.K)]                        |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                        | Name   | Description       |
+=============================================================================================================+========+===================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_   | d      | Density [kg/m3]   |
+-------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function density_ps 
      "Return density from p and s"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output Density d "Density";
    algorithm 
      d := density_psX(p, s, fill(0,0), phase);
    end density_ps;

--------------

|image132| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.specificEnthalpy\_pT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy from p and T**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T       |           | Temperature [K]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                                                                          | Name   | Description                |
+===============================================================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function specificEnthalpy_pT 
      "Return specific enthalpy from p and T"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := specificEnthalpy_pTX(p, T, fill(0,0),phase);
    end specificEnthalpy_pT;

--------------

|image133| `Modelica.Media.Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_.density\_pT
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density from p and T**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                                        |
+===================================================================================================================================+=========+===========+====================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p       |           | Pressure [Pa]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T       |           | Temperature [K]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                        | Name   | Description       |
+=============================================================================================================+========+===================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_   | d      | Density [kg/m3]   |
+-------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function density_pT 
      "Return density from p and T"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output Density d "Density";
    algorithm 
      d := density(setState_pTX(p, T, fill(0,0),phase));
    end density_pT;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:30
2010.

.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimits| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidConstants| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.BaseProperties| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.BasePropertiesS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewState| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setBubbleState| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_dTX| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_phX| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_psX| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_pTX| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_T| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_p| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEnthalpy| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEnthalpy| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEntropy| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEntropy| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleDensity| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewDensity| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure\_sat| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_sat| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_derp| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_derp\_sat| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.surfaceTension| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.molarMass| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleDensity\_dPressure| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewDensity\_dPressure| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleEnthalpy\_dPressure| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewEnthalpy\_dPressure| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_pTX| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_phX| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_phX| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_psX| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_psX| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_psX| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_pT| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_ph| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_ps| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_dT| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_px| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pxS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_Tx| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pxS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.vapourQuality| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pxS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_ph| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_ph| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.pressure\_dT| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_dT| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_ps| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_ps| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_ps| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_pT| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_pT| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png
.. |Modelica.Media.Interfaces.PartialMedium.setSmoothState| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.dynamicViscosity| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.thermalConductivity| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.pressure| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificInternalEnergy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEntropy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCp| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCv| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.isentropicExponent| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.velocityOfSound| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.isobaricExpansionCoefficient| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.beta| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.isothermalCompressibility| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.kappa| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derp\_h| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derh\_p| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derp\_T| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derT\_p| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.Choices| image:: Modelica.Media.Interfaces.PartialMedium.ChoicesS.png
.. |image84| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsI.png
.. |image85| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsI.png
.. |image86| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsI.png
.. |image87| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsI.png
.. |image88| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.BasePropertiesI.png
.. |image89| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image90| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image91| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image92| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image93| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image94| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image95| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image96| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image97| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image98| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image99| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image100| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image101| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image102| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image103| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image104| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image105| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image106| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image107| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image108| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image109| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image110| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image111| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image112| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image113| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image114| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image115| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image116| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image117| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image118| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image119| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image120| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image121| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image122| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image123| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image124| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png
.. |image125| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png
.. |image126| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png
.. |image127| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png
.. |image128| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png
.. |image129| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png
.. |image130| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png
.. |image131| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png
.. |image132| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png
.. |image133| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png
