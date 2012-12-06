% Modelica.Media.Interfaces.PartialTwoPhaseMedium
% 
% 

[Modelica.Media.Interfaces](Modelica_Media_Interfaces.html#Modelica.Media.Interfaces).PartialTwoPhaseMedium
===========================================================================================================

**Base class for two phase medium of one substance**

Information
-----------

Extends from
[PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance)
(base class for pure substances of one chemical substance).

Package Content
---------------

Name

Description

smoothModel

true if the (derived) model should not generate state events

onePhase

true if the (derived) model should never be called with two-phase inputs

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimits](Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png)
[FluidLimits](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimits)

validity limits for fluid model

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidConstants](Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png)
[FluidConstants](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidConstants)

extended fluid constants

fluidConstants

constant data for the fluid

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState](Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png)
[ThermodynamicState](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState)

Thermodynamic state of two phase medium

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties](Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png)
[SaturationProperties](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties)

Saturation properties of two phase medium

[FixedPhase](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase)

phase of the fluid: 1 for 1-phase, 2 for two-phase, 0 for not known,
e.g., interactive use

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.BaseProperties](Modelica.Media.Interfaces.PartialTwoPhaseMedium.BasePropertiesS.png)
[BaseProperties](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.BaseProperties)

Base properties (p, d, T, h, u, R, MM, sat) of two phase medium

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewState](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[setDewState](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewState)

Return the thermodynamic state on the dew line

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setBubbleState](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[setBubbleState](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setBubbleState)

Return the thermodynamic state on the bubble line

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_dTX](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[setState\_dTX](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_dTX)

Return thermodynamic state as function of d, T and composition X or Xi

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_phX](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[setState\_phX](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_phX)

Return thermodynamic state as function of p, h and composition X or Xi

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_psX](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[setState\_psX](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_psX)

Return thermodynamic state as function of p, s and composition X or Xi

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_pTX](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[setState\_pTX](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pTX)

Return thermodynamic state as function of p, T and composition X or Xi

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_T](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[setSat\_T](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_T)

Return saturation property record from temperature

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_p](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[setSat\_p](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_p)

Return saturation property record from pressure

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEnthalpy](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[bubbleEnthalpy](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEnthalpy)

Return bubble point specific enthalpy

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEnthalpy](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[dewEnthalpy](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEnthalpy)

Return dew point specific enthalpy

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEntropy](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[bubbleEntropy](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEntropy)

Return bubble point specific entropy

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEntropy](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[dewEntropy](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEntropy)

Return dew point specific entropy

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleDensity](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[bubbleDensity](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleDensity)

Return bubble point density

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewDensity](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[dewDensity](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewDensity)

Return dew point density

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[saturationPressure](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure)

Return saturation pressure

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[saturationTemperature](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature)

Return saturation temperature

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure\_sat](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[saturationPressure\_sat](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure_sat)

Return saturation temperature

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_sat](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[saturationTemperature\_sat](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_sat)

Return saturation temperature

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_derp](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[saturationTemperature\_derp](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_derp)

Return derivative of saturation temperature w.r.t. pressure

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_derp\_sat](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[saturationTemperature\_derp\_sat](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_derp_sat)

Return derivative of saturation temperature w.r.t. pressure

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.surfaceTension](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[surfaceTension](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.surfaceTension)

Return surface tension sigma in the two phase region

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.molarMass](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[molarMass](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.molarMass)

Return the molar mass of the medium

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleDensity\_dPressure](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[dBubbleDensity\_dPressure](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleDensity_dPressure)

Return bubble point density derivative

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewDensity\_dPressure](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[dDewDensity\_dPressure](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewDensity_dPressure)

Return dew point density derivative

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleEnthalpy\_dPressure](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[dBubbleEnthalpy\_dPressure](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleEnthalpy_dPressure)

Return bubble point specific enthalpy derivative

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewEnthalpy\_dPressure](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
[dDewEnthalpy\_dPressure](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewEnthalpy_dPressure)

Return dew point specific enthalpy derivative

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_pTX](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[specificEnthalpy\_pTX](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy_pTX)

Return specific enthalpy from pressure, temperature and mass fraction

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_phX](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[temperature\_phX](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature_phX)

Return temperature from p, h, and X or Xi

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_phX](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[density\_phX](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phX)

Return density from p, h, and X or Xi

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_psX](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[temperature\_psX](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature_psX)

Return temperature from p, s, and X or Xi

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_psX](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[density\_psX](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_psX)

Return density from p, s, and X or Xi

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_psX](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[specificEnthalpy\_psX](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy_psX)

Return specific enthalpy from p, s, and X or Xi

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_pT](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[setState\_pT](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pT)

Return thermodynamic state from p and T

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_ph](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[setState\_ph](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_ph)

Return thermodynamic state from p and h

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_ps](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[setState\_ps](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_ps)

Return thermodynamic state from p and s

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_dT](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[setState\_dT](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_dT)

Return thermodynamic state from d and T

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_px](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pxS.png)
[setState\_px](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_px)

Return thermodynamic state from pressure and vapour quality

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState\_Tx](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pxS.png)
[setState\_Tx](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_Tx)

Return thermodynamic state from temperature and vapour quality

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.vapourQuality](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pxS.png)
[vapourQuality](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.vapourQuality)

Return vapour quality

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_ph](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png)
[density\_ph](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_ph)

Return density from p and h

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_ph](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png)
[temperature\_ph](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature_ph)

Return temperature from p and h

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.pressure\_dT](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png)
[pressure\_dT](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.pressure_dT)

Return pressure from d and T

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_dT](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png)
[specificEnthalpy\_dT](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy_dT)

Return specific enthalpy from d and T

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_ps](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png)
[specificEnthalpy\_ps](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy_ps)

Return specific enthalpy from p and s

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature\_ps](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png)
[temperature\_ps](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.temperature_ps)

Return temperature from p and s

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_ps](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png)
[density\_ps](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_ps)

Return density from p and s

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy\_pT](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png)
[specificEnthalpy\_pT](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.specificEnthalpy_pT)

Return specific enthalpy from p and T

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.density\_pT](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png)
[density\_pT](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_pT)

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

![Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[specificEntropy\_pTX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy_pTX)

Return specific enthalpy from p, T, and X or Xi

![Modelica.Media.Interfaces.PartialMedium.density\_pTX](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[density\_pTX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_pTX)

Return density from p, T, and X or Xi

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

    constant Boolean smoothModel 
    "true if the (derived) model should not generate state events";

    constant Boolean onePhase 
    "true if the (derived) model should never be called with two-phase inputs";

    constant FluidConstants[nS] fluidConstants "constant data for the fluid";

    type FixedPhase = Integer(min=0,max=2) 
    "phase of the fluid: 1 for 1-phase, 2 for two-phase, 0 for not known, e.g., interactive use";

* * * * *

![image84](Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).FluidLimits
================================================================================================================================================================================================================================================

**validity limits for fluid model**

Information
-----------

::

The minimum pressure mostly applies to the liquid state only. The
minimum density is also arbitrary, but is reasonable for techical
applications to limit iterations in non-linear systems. The limits in
enthalpy and entropy are used as safeguards in inverse iterations.

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Modelica definition
-------------------

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

* * * * *

![image85](Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).FluidConstants
===================================================================================================================================================================================================================================================

**extended fluid constants**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants)
(critical, triple, molecular and other standard data of fluid).

Modelica definition
-------------------

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

* * * * *

![image86](Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).ThermodynamicState
=======================================================================================================================================================================================================================================================

**Thermodynamic state of two phase medium**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState)
(Minimal variable set that is available as input argument to every
medium function).

Modelica definition
-------------------

    redeclare replaceable record extends ThermodynamicState 
      "Thermodynamic state of two phase medium"
        FixedPhase phase(min=0, max=2) 
        "phase of the fluid: 1 for 1-phase, 2 for two-phase, 0 for not known, e.g., interactive use";
    end ThermodynamicState;

* * * * *

![image87](Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).SaturationProperties
=========================================================================================================================================================================================================================================================

**Saturation properties of two phase medium**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Modelica definition
-------------------

    replaceable record SaturationProperties 
      "Saturation properties of two phase medium"
      extends Modelica.Icons.Record;
      AbsolutePressure psat "saturation pressure";
      Temperature Tsat "saturation temperature";
    end SaturationProperties;

* * * * *

![image88](Modelica.Media.Interfaces.PartialTwoPhaseMedium.BasePropertiesI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).BaseProperties
======================================================================================================================================================================================================================================================

**Base properties (p, d, T, h, u, R, MM, sat) of two phase medium**

Information
-----------

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

    redeclare replaceable partial model extends BaseProperties 
      "Base properties (p, d, T, h, u, R, MM, sat) of two phase medium"
      SaturationProperties sat "Saturation properties at the medium pressure";
    end BaseProperties;

* * * * *

![image89](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setDewState
================================================================================================================================================================================================================================================

**Return the thermodynamic state on the dew line**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                                  Nam Defa Description
                                                        e   ult  
  ----------------------------------------------------- --- ---- -----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          point
  ialTwoPhaseMedium.SaturationProperties)                        

  [FixedPhase](Modelica_Media_Interfaces_PartialTwoPhas pha 1    phase:
  eMedium.html#Modelica.Media.Interfaces.PartialTwoPhas se       default is
  eMedium.FixedPhase)                                            one phase
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                   Nam Description
                                                         e   
  ------------------------------------------------------ --- -------------
  [ThermodynamicState](Modelica_Media_Interfaces_Partial sta complete
  TwoPhaseMedium.html#Modelica.Media.Interfaces.PartialT te  thermodynamic
  woPhaseMedium.ThermodynamicState)                          state info
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function setDewState 
      "Return the thermodynamic state on the dew line"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation point";
      input FixedPhase phase(min = 1, max = 2) =  1 "phase: default is one phase";
      output ThermodynamicState state "complete thermodynamic state info";
    end setDewState;

* * * * *

![image90](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setBubbleState
===================================================================================================================================================================================================================================================

**Return the thermodynamic state on the bubble line**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                                  Nam Defa Description
                                                        e   ult  
  ----------------------------------------------------- --- ---- -----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          point
  ialTwoPhaseMedium.SaturationProperties)                        

  [FixedPhase](Modelica_Media_Interfaces_PartialTwoPhas pha 1    phase:
  eMedium.html#Modelica.Media.Interfaces.PartialTwoPhas se       default is
  eMedium.FixedPhase)                                            one phase
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                   Nam Description
                                                         e   
  ------------------------------------------------------ --- -------------
  [ThermodynamicState](Modelica_Media_Interfaces_Partial sta complete
  TwoPhaseMedium.html#Modelica.Media.Interfaces.PartialT te  thermodynamic
  woPhaseMedium.ThermodynamicState)                          state info
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function setBubbleState 
      "Return the thermodynamic state on the bubble line"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation point";
      input FixedPhase phase(min = 1, max = 2) =  1 "phase: default is one phase";
      output ThermodynamicState state "complete thermodynamic state info";
    end setBubbleState;

* * * * *

![image91](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setState\_dTX
==================================================================================================================================================================================================================================================

**Return thermodynamic state as function of d, T and composition X or
Xi**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_dTX)
(Return thermodynamic state as function of d, T and composition X or
Xi).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Nam Defau Description
                                               e   lt    
  -------------------------------------------- --- ----- ------------------
  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0     2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se        for one-phase, 0
  ces.PartialTwoPhaseMedium.FixedPhase)                  if not known

  [Density](Modelica_Media_Interfaces_PartialM d         density [kg/m3]
  edium.html#Modelica.Media.Interfaces.Partial           
  Medium.Density)                                        

  [Temperature](Modelica_Media_Interfaces_Part T         Temperature [K]
  ialMedium.html#Modelica.Media.Interfaces.Par           
  tialMedium.Temperature)                                

  [MassFraction](Modelica_Media_Interfaces_Par X[: refer Mass fractions
  tialMedium.html#Modelica.Media.Interfaces.Pa ]   ence\ [kg/kg]
  rtialMedium.MassFraction)                        _X    
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

    redeclare replaceable partial function extends setState_dTX 
      "Return thermodynamic state as function of d, T and composition X or Xi"
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
    end setState_dTX;

* * * * *

![image92](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setState\_phX
==================================================================================================================================================================================================================================================

**Return thermodynamic state as function of p, h and composition X or
Xi**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_phX)
(Return thermodynamic state as function of p, h and composition X or
Xi).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Nam Defau Description
                                               e   lt    
  -------------------------------------------- --- ----- ------------------
  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0     2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se        for one-phase, 0
  ces.PartialTwoPhaseMedium.FixedPhase)                  if not known

  [AbsolutePressure](Modelica_Media_Interfaces p         Pressure [Pa]
  _PartialMedium.html#Modelica.Media.Interface           
  s.PartialMedium.AbsolutePressure)                      

  [SpecificEnthalpy](Modelica_Media_Interfaces h         Specific enthalpy
  _PartialMedium.html#Modelica.Media.Interface           [J/kg]
  s.PartialMedium.SpecificEnthalpy)                      

  [MassFraction](Modelica_Media_Interfaces_Par X[: refer Mass fractions
  tialMedium.html#Modelica.Media.Interfaces.Pa ]   ence\ [kg/kg]
  rtialMedium.MassFraction)                        _X    
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

    redeclare replaceable partial function extends setState_phX 
      "Return thermodynamic state as function of p, h and composition X or Xi"
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
    end setState_phX;

* * * * *

![image93](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setState\_psX
==================================================================================================================================================================================================================================================

**Return thermodynamic state as function of p, s and composition X or
Xi**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_psX)
(Return thermodynamic state as function of p, s and composition X or
Xi).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Nam Defau Description
                                               e   lt    
  -------------------------------------------- --- ----- ------------------
  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0     2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se        for one-phase, 0
  ces.PartialTwoPhaseMedium.FixedPhase)                  if not known

  [AbsolutePressure](Modelica_Media_Interfaces p         Pressure [Pa]
  _PartialMedium.html#Modelica.Media.Interface           
  s.PartialMedium.AbsolutePressure)                      

  [SpecificEntropy](Modelica_Media_Interfaces_ s         Specific entropy
  PartialMedium.html#Modelica.Media.Interfaces           [J/(kg.K)]
  .PartialMedium.SpecificEntropy)                        

  [MassFraction](Modelica_Media_Interfaces_Par X[: refer Mass fractions
  tialMedium.html#Modelica.Media.Interfaces.Pa ]   ence\ [kg/kg]
  rtialMedium.MassFraction)                        _X    
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

    redeclare replaceable partial function extends setState_psX 
      "Return thermodynamic state as function of p, s and composition X or Xi"
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
    end setState_psX;

* * * * *

![image94](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setState\_pTX
==================================================================================================================================================================================================================================================

**Return thermodynamic state as function of p, T and composition X or
Xi**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_pTX)
(Return thermodynamic state as function of p, T and composition X or
Xi).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Nam Defau Description
                                               e   lt    
  -------------------------------------------- --- ----- ------------------
  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0     2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se        for one-phase, 0
  ces.PartialTwoPhaseMedium.FixedPhase)                  if not known

  [AbsolutePressure](Modelica_Media_Interfaces p         Pressure [Pa]
  _PartialMedium.html#Modelica.Media.Interface           
  s.PartialMedium.AbsolutePressure)                      

  [Temperature](Modelica_Media_Interfaces_Part T         Temperature [K]
  ialMedium.html#Modelica.Media.Interfaces.Par           
  tialMedium.Temperature)                                

  [MassFraction](Modelica_Media_Interfaces_Par X[: refer Mass fractions
  tialMedium.html#Modelica.Media.Interfaces.Pa ]   ence\ [kg/kg]
  rtialMedium.MassFraction)                        _X    
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

    redeclare replaceable partial function extends setState_pTX 
      "Return thermodynamic state as function of p, T and composition X or Xi"
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
    end setState_pTX;

* * * * *

![image95](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setSat\_T
==============================================================================================================================================================================================================================================

**Return saturation property record from temperature**

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

  -------------------------------------------------------------------------
  Type                                                      Nam Description
                                                            e   
  --------------------------------------------------------- --- -----------
  [SaturationProperties](Modelica_Media_Interfaces_PartialT sat saturation
  woPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPh     property
  aseMedium.SaturationProperties)                               record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function setSat_T 
      "Return saturation property record from temperature"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output SaturationProperties sat "saturation property record";
    algorithm 
      sat.Tsat := T;
      sat.psat := saturationPressure(T);
    end setSat_T;

* * * * *

![image96](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setSat\_p
==============================================================================================================================================================================================================================================

**Return saturation property record from pressure**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                    Nam Defau Descrip
                                                          e   lt    tion
  ------------------------------------------------------- --- ----- -------
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMed p         pressur
  ium.html#Modelica.Media.Interfaces.PartialMedium.Absolu           e
  tePressure)                                                       [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                      Nam Description
                                                            e   
  --------------------------------------------------------- --- -----------
  [SaturationProperties](Modelica_Media_Interfaces_PartialT sat saturation
  woPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPh     property
  aseMedium.SaturationProperties)                               record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function setSat_p 
      "Return saturation property record from pressure"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "pressure";
      output SaturationProperties sat "saturation property record";
    algorithm 
      sat.psat := p;
      sat.Tsat := saturationTemperature(p);
    end setSat_p;

* * * * *

![image97](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).bubbleEnthalpy
===================================================================================================================================================================================================================================================

**Return bubble point specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                         Name Description
  -------------------------------------------- ---- -----------------------
  [SpecificEnthalpy](Modelica_SIunits.html#Mod hl   boiling curve specific
  elica.SIunits.SpecificEnthalpy)                   enthalpy [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function bubbleEnthalpy 
      "Return bubble point specific enthalpy"
        extends Modelica.Icons.Function;
        input SaturationProperties sat "saturation property record";
        output SI.SpecificEnthalpy hl "boiling curve specific enthalpy";
    end bubbleEnthalpy;

* * * * *

![image98](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).dewEnthalpy
================================================================================================================================================================================================================================================

**Return dew point specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                          Name Description
  --------------------------------------------- ---- ---------------------
  [SpecificEnthalpy](Modelica_SIunits.html#Mode hv   dew curve specific
  lica.SIunits.SpecificEnthalpy)                     enthalpy [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function dewEnthalpy 
      "Return dew point specific enthalpy"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output SI.SpecificEnthalpy hv "dew curve specific enthalpy";
    end dewEnthalpy;

* * * * *

![image99](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).bubbleEntropy
==================================================================================================================================================================================================================================================

**Return bubble point specific entropy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                       Name Description
  ------------------------------------------ ---- ------------------------
  [SpecificEntropy](Modelica_SIunits.html#Mo sl   boiling curve specific
  delica.SIunits.SpecificEntropy)                 entropy [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function bubbleEntropy 
      "Return bubble point specific entropy"
    extends Modelica.Icons.Function;
    input SaturationProperties sat "saturation property record";
    output SI.SpecificEntropy sl "boiling curve specific entropy";
    end bubbleEntropy;

* * * * *

![image100](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).dewEntropy
================================================================================================================================================================================================================================================

**Return dew point specific entropy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                        Name Description
  ------------------------------------------- ---- -----------------------
  [SpecificEntropy](Modelica_SIunits.html#Mod sv   dew curve specific
  elica.SIunits.SpecificEntropy)                   entropy [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function dewEntropy 
      "Return dew point specific entropy"
    extends Modelica.Icons.Function;
    input SaturationProperties sat "saturation property record";
    output SI.SpecificEntropy sv "dew curve specific entropy";
    end dewEntropy;

* * * * *

![image101](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).bubbleDensity
===================================================================================================================================================================================================================================================

**Return bubble point density**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  [Density](Modelica_Media_Interfaces_PartialMedium.h dl   boiling curve
  tml#Modelica.Media.Interfaces.PartialMedium.Density      density [kg/m3]
  )                                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function bubbleDensity 
      "Return bubble point density"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output Density dl "boiling curve density";
    end bubbleDensity;

* * * * *

![image102](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).dewDensity
================================================================================================================================================================================================================================================

**Return dew point density**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- --------------
  [Density](Modelica_Media_Interfaces_PartialMedium.htm dv   dew curve
  l#Modelica.Media.Interfaces.PartialMedium.Density)         density
                                                             [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function dewDensity "Return dew point density"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output Density dv "dew curve density";
    end dewDensity;

* * * * *

![image103](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).saturationPressure
========================================================================================================================================================================================================================================================

**Return saturation pressure**

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
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMed p   saturation
  ium.html#Modelica.Media.Interfaces.PartialMedium.Absolu     pressure
  tePressure)                                                 [Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function saturationPressure 
      "Return saturation pressure"
      extends Modelica.Icons.Function;
      input Temperature T "temperature";
      output AbsolutePressure p "saturation pressure";
    end saturationPressure;

* * * * *

![image104](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).saturationTemperature
===========================================================================================================================================================================================================================================================

**Return saturation temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                    Nam Defau Descrip
                                                          e   lt    tion
  ------------------------------------------------------- --- ----- -------
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMed p         pressur
  ium.html#Modelica.Media.Interfaces.PartialMedium.Absolu           e
  tePressure)                                                       [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- --------------
  [Temperature](Modelica_Media_Interfaces_PartialMedium T    saturation
  .html#Modelica.Media.Interfaces.PartialMedium.Tempera      temperature
  ture)                                                      [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function saturationTemperature 
      "Return saturation temperature"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "pressure";
      output Temperature T "saturation temperature";
    end saturationTemperature;

* * * * *

![image105](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).saturationPressure\_sat
=============================================================================================================================================================================================================================================================

**Return saturation temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Nam Description
                                                          e   
  ------------------------------------------------------- --- ------------
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMed p   saturation
  ium.html#Modelica.Media.Interfaces.PartialMedium.Absolu     pressure
  tePressure)                                                 [Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function saturationPressure_sat 
      "Return saturation temperature"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output AbsolutePressure p "saturation pressure";
    algorithm 
      p := sat.psat;
    end saturationPressure_sat;

* * * * *

![image106](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).saturationTemperature\_sat
================================================================================================================================================================================================================================================================

**Return saturation temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- --------------
  [Temperature](Modelica_Media_Interfaces_PartialMedium T    saturation
  .html#Modelica.Media.Interfaces.PartialMedium.Tempera      temperature
  ture)                                                      [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function saturationTemperature_sat 
      "Return saturation temperature"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output Temperature T "saturation temperature";
    algorithm 
      T := sat.Tsat;
    end saturationTemperature_sat;

* * * * *

![image107](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).saturationTemperature\_derp
=================================================================================================================================================================================================================================================================

**Return derivative of saturation temperature w.r.t. pressure**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                    Nam Defau Descrip
                                                          e   lt    tion
  ------------------------------------------------------- --- ----- -------
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMed p         pressur
  ium.html#Modelica.Media.Interfaces.PartialMedium.Absolu           e
  tePressure)                                                       [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  Type     Name     Description
  -------- -------- ------------------------------------------------------
  Real     dTp      derivative of saturation temperature w.r.t. pressure

Modelica definition
-------------------

    replaceable partial function saturationTemperature_derp 
      "Return derivative of saturation temperature w.r.t. pressure"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "pressure";
      output Real dTp "derivative of saturation temperature w.r.t. pressure";
    end saturationTemperature_derp;

* * * * *

![image108](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).saturationTemperature\_derp\_sat
======================================================================================================================================================================================================================================================================

**Return derivative of saturation temperature w.r.t. pressure**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  Type     Name     Description
  -------- -------- ------------------------------------------------------
  Real     dTp      derivative of saturation temperature w.r.t. pressure

Modelica definition
-------------------

    replaceable function saturationTemperature_derp_sat 
      "Return derivative of saturation temperature w.r.t. pressure"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output Real dTp "derivative of saturation temperature w.r.t. pressure";
    algorithm 
      dTp := saturationTemperature_derp(sat.psat);
    end saturationTemperature_derp_sat;

* * * * *

![image109](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).surfaceTension
====================================================================================================================================================================================================================================================

**Return surface tension sigma in the two phase region**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                           Nam Description
                                                 e   
  ---------------------------------------------- --- ---------------------
  [SurfaceTension](Modelica_Media_Interfaces_Par sig Surface tension sigma
  tialMedium.html#Modelica.Media.Interfaces.Part ma  in the two phase
  ialMedium.SurfaceTension)                          region [N/m]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function surfaceTension 
      "Return surface tension sigma in the two phase region"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output SurfaceTension sigma "Surface tension sigma in the two phase region";
    end surfaceTension;

* * * * *

![image110](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).molarMass
===============================================================================================================================================================================================================================================

**Return the molar mass of the medium**

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

    redeclare replaceable partial function extends molarMass 
      "Return the molar mass of the medium"
    algorithm 
      MM := fluidConstants[1].molarMass;
    end molarMass;

* * * * *

![image111](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).dBubbleDensity\_dPressure
===============================================================================================================================================================================================================================================================

**Return bubble point density derivative**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- ----------------
  [DerDensityByPressure](Modelica_Media_Interfaces_Pa ddl boiling curve
  rtialMedium.html#Modelica.Media.Interfaces.PartialM dp  density
  edium.DerDensityByPressure)                             derivative
                                                          [s2/m2]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function dBubbleDensity_dPressure 
      "Return bubble point density derivative"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output DerDensityByPressure ddldp "boiling curve density derivative";
    end dBubbleDensity_dPressure;

* * * * *

![image112](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).dDewDensity\_dPressure
============================================================================================================================================================================================================================================================

**Return dew point density derivative**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  [DerDensityByPressure](Modelica_Media_Interfaces_P ddv saturated steam
  artialMedium.html#Modelica.Media.Interfaces.Partia dp  density
  lMedium.DerDensityByPressure)                          derivative
                                                         [s2/m2]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function dDewDensity_dPressure 
      "Return dew point density derivative"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output DerDensityByPressure ddvdp "saturated steam density derivative";
    end dDewDensity_dPressure;

* * * * *

![image113](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).dBubbleEnthalpy\_dPressure
================================================================================================================================================================================================================================================================

**Return bubble point specific enthalpy derivative**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Nam Description
                                                  e   
  ----------------------------------------------- --- --------------------
  [DerEnthalpyByPressure](Modelica_Media_Interfac dhl boiling curve
  es_PartialMedium.html#Modelica.Media.Interfaces dp  specific enthalpy
  .PartialMedium.DerEnthalpyByPressure)               derivative
                                                      [J.m.s2/kg2]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function dBubbleEnthalpy_dPressure 
      "Return bubble point specific enthalpy derivative"
      extends Modelica.Icons.Function;
      input SaturationProperties sat "saturation property record";
      output DerEnthalpyByPressure dhldp 
        "boiling curve specific enthalpy derivative";
    end dBubbleEnthalpy_dPressure;

* * * * *

![image114](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).dDewEnthalpy\_dPressure
=============================================================================================================================================================================================================================================================

**Return dew point specific enthalpy derivative**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Nam Defa Descriptio
                                                        e   ult  n
  ----------------------------------------------------- --- ---- ----------
  [SaturationProperties](Modelica_Media_Interfaces_Part sat      saturation
  ialTwoPhaseMedium.html#Modelica.Media.Interfaces.Part          property
  ialTwoPhaseMedium.SaturationProperties)                        record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                            Nam Description
                                                  e   
  ----------------------------------------------- --- ---------------------
  [DerEnthalpyByPressure](Modelica_Media_Interfac dhv saturated steam
  es_PartialMedium.html#Modelica.Media.Interfaces dp  specific enthalpy
  .PartialMedium.DerEnthalpyByPressure)               derivative
                                                      [J.m.s2/kg2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function dDewEnthalpy_dPressure 
      "Return dew point specific enthalpy derivative"
      extends Modelica.Icons.Function;

      input SaturationProperties sat "saturation property record";
      output DerEnthalpyByPressure dhvdp 
        "saturated steam specific enthalpy derivative";
    end dDewEnthalpy_dPressure;

* * * * *

![image115](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).specificEnthalpy\_pTX
===========================================================================================================================================================================================================================================================

**Return specific enthalpy from pressure, temperature and mass
fraction**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [Temperature](Modelica_Media_Interfaces_Parti T        Temperature [K]
  alMedium.html#Modelica.Media.Interfaces.Parti          
  alMedium.Temperature)                                  

  [MassFraction](Modelica_Media_Interfaces_Part X[n      Mass fractions
  ialMedium.html#Modelica.Media.Interfaces.Part X]       [kg/kg]
  ialMedium.MassFraction)                                

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image116](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).temperature\_phX
======================================================================================================================================================================================================================================================

**Return temperature from p, h, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEnthalpy](Modelica_Media_Interfaces_ h        Specific enthalpy
  PartialMedium.html#Modelica.Media.Interfaces.          [J/kg]
  PartialMedium.SpecificEnthalpy)                        

  [MassFraction](Modelica_Media_Interfaces_Part X[n      Mass fractions
  ialMedium.html#Modelica.Media.Interfaces.Part X]       [kg/kg]
  ialMedium.MassFraction)                                

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image117](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).density\_phX
==================================================================================================================================================================================================================================================

**Return density from p, h, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEnthalpy](Modelica_Media_Interfaces_ h        Specific enthalpy
  PartialMedium.html#Modelica.Media.Interfaces.          [J/kg]
  PartialMedium.SpecificEnthalpy)                        

  [MassFraction](Modelica_Media_Interfaces_Part X[n      Mass fractions
  ialMedium.html#Modelica.Media.Interfaces.Part X]       [kg/kg]
  ialMedium.MassFraction)                                

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image118](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).temperature\_psX
======================================================================================================================================================================================================================================================

**Return temperature from p, s, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEntropy](Modelica_Media_Interfaces_P s        Specific entropy
  artialMedium.html#Modelica.Media.Interfaces.P          [J/(kg.K)]
  artialMedium.SpecificEntropy)                          

  [MassFraction](Modelica_Media_Interfaces_Part X[n      Mass fractions
  ialMedium.html#Modelica.Media.Interfaces.Part X]       [kg/kg]
  ialMedium.MassFraction)                                

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image119](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).density\_psX
==================================================================================================================================================================================================================================================

**Return density from p, s, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEntropy](Modelica_Media_Interfaces_P s        Specific entropy
  artialMedium.html#Modelica.Media.Interfaces.P          [J/(kg.K)]
  artialMedium.SpecificEntropy)                          

  [MassFraction](Modelica_Media_Interfaces_Part X[n      Mass fractions
  ialMedium.html#Modelica.Media.Interfaces.Part X]       [kg/kg]
  ialMedium.MassFraction)                                

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image120](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).specificEnthalpy\_psX
===========================================================================================================================================================================================================================================================

**Return specific enthalpy from p, s, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEntropy](Modelica_Media_Interfaces_P s        Specific entropy
  artialMedium.html#Modelica.Media.Interfaces.P          [J/(kg.K)]
  artialMedium.SpecificEntropy)                          

  [MassFraction](Modelica_Media_Interfaces_Part X[n      Mass fractions
  ialMedium.html#Modelica.Media.Interfaces.Part X]       [kg/kg]
  ialMedium.MassFraction)                                

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image121](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setState\_pT
==================================================================================================================================================================================================================================================

**Return thermodynamic state from p and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [Temperature](Modelica_Media_Interfaces_Parti T        Temperature [K]
  alMedium.html#Modelica.Media.Interfaces.Parti          
  alMedium.Temperature)                                  

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                     Nam Description
                                                           e   
  -------------------------------------------------------- --- -----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialTw sta thermodynam
  oPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPh te  ic
  aseMedium.ThermodynamicState)                                state
                                                               record
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image122](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setState\_ph
==================================================================================================================================================================================================================================================

**Return thermodynamic state from p and h**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEnthalpy](Modelica_Media_Interfaces_ h        Specific enthalpy
  PartialMedium.html#Modelica.Media.Interfaces.          [J/kg]
  PartialMedium.SpecificEnthalpy)                        

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                     Nam Description
                                                           e   
  -------------------------------------------------------- --- -----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialTw sta thermodynam
  oPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPh te  ic
  aseMedium.ThermodynamicState)                                state
                                                               record
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image123](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setState\_ps
==================================================================================================================================================================================================================================================

**Return thermodynamic state from p and s**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEntropy](Modelica_Media_Interfaces_P s        Specific entropy
  artialMedium.html#Modelica.Media.Interfaces.P          [J/(kg.K)]
  artialMedium.SpecificEntropy)                          

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                     Nam Description
                                                           e   
  -------------------------------------------------------- --- -----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialTw sta thermodynam
  oPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPh te  ic
  aseMedium.ThermodynamicState)                                state
                                                               record
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image124](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setState\_dT
==================================================================================================================================================================================================================================================

**Return thermodynamic state from d and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [Density](Modelica_Media_Interfaces_PartialMe d        density [kg/m3]
  dium.html#Modelica.Media.Interfaces.PartialMe          
  dium.Density)                                          

  [Temperature](Modelica_Media_Interfaces_Parti T        Temperature [K]
  alMedium.html#Modelica.Media.Interfaces.Parti          
  alMedium.Temperature)                                  

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                     Nam Description
                                                           e   
  -------------------------------------------------------- --- -----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialTw sta thermodynam
  oPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPh te  ic
  aseMedium.ThermodynamicState)                                state
                                                               record
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setState\_px
====================================================================================================================================================================

**Return thermodynamic state from pressure and vapour quality**

Inputs
------

  -------------------------------------------------------------------------
  Type                                                 Nam Defa Description
                                                       e   ult  
  ---------------------------------------------------- --- ---- -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Partial p        Pressure
  Medium.html#Modelica.Media.Interfaces.PartialMedium.          [Pa]
  AbsolutePressure)                                             

  [MassFraction](Modelica_Media_Interfaces_PartialMedi x        Vapour
  um.html#Modelica.Media.Interfaces.PartialMedium.Mass          quality
  Fraction)                                                     [kg/kg]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                     Nam Description
                                                           e   
  -------------------------------------------------------- --- -----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialTw sta Thermodynam
  oPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPh te  ic
  aseMedium.ThermodynamicState)                                state
                                                               record
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).setState\_Tx
====================================================================================================================================================================

**Return thermodynamic state from temperature and vapour quality**

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defau Description
                                                      e   lt    
  --------------------------------------------------- --- ----- -----------
  [Temperature](Modelica_Media_Interfaces_PartialMedi T         Temperature
  um.html#Modelica.Media.Interfaces.PartialMedium.Tem           [K]
  perature)                                                     

  [MassFraction](Modelica_Media_Interfaces_PartialMed x         Vapour
  ium.html#Modelica.Media.Interfaces.PartialMedium.Ma           quality
  ssFraction)                                                   [kg/kg]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                     Nam Description
                                                           e   
  -------------------------------------------------------- --- -----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialTw sta thermodynam
  oPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPh te  ic
  aseMedium.ThermodynamicState)                                state
                                                               record
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).vapourQuality
=====================================================================================================================================================================

**Return vapour quality**

Inputs
------

  --------------------------------------------------------------------------
  Type                                                  Nam Defa Description
                                                        e   ult  
  ----------------------------------------------------- --- ---- -----------
  [ThermodynamicState](Modelica_Media_Interfaces_Partia sta      Thermodynam
  lTwoPhaseMedium.html#Modelica.Media.Interfaces.Partia te       ic
  lTwoPhaseMedium.ThermodynamicState)                            state
                                                                 record
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- ------------
  [MassFraction](Modelica_Media_Interfaces_PartialMedium. x    Vapour
  html#Modelica.Media.Interfaces.PartialMedium.MassFracti      quality
  on)                                                          [kg/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image125](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).density\_ph
================================================================================================================================================================================================================================================

**Return density from p and h**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEnthalpy](Modelica_Media_Interfaces_ h        Specific enthalpy
  PartialMedium.html#Modelica.Media.Interfaces.          [J/kg]
  PartialMedium.SpecificEnthalpy)                        

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image126](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).temperature\_ph
====================================================================================================================================================================================================================================================

**Return temperature from p and h**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEnthalpy](Modelica_Media_Interfaces_ h        Specific enthalpy
  PartialMedium.html#Modelica.Media.Interfaces.          [J/kg]
  PartialMedium.SpecificEnthalpy)                        

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image127](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).pressure\_dT
=================================================================================================================================================================================================================================================

**Return pressure from d and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [Density](Modelica_Media_Interfaces_PartialMe d        Density [kg/m3]
  dium.html#Modelica.Media.Interfaces.PartialMe          
  dium.Density)                                          

  [Temperature](Modelica_Media_Interfaces_Parti T        Temperature [K]
  alMedium.html#Modelica.Media.Interfaces.Parti          
  alMedium.Temperature)                                  

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image128](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).specificEnthalpy\_dT
=========================================================================================================================================================================================================================================================

**Return specific enthalpy from d and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [Density](Modelica_Media_Interfaces_PartialMe d        Density [kg/m3]
  dium.html#Modelica.Media.Interfaces.PartialMe          
  dium.Density)                                          

  [Temperature](Modelica_Media_Interfaces_Parti T        Temperature [K]
  alMedium.html#Modelica.Media.Interfaces.Parti          
  alMedium.Temperature)                                  

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image129](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).specificEnthalpy\_ps
=========================================================================================================================================================================================================================================================

**Return specific enthalpy from p and s**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEntropy](Modelica_Media_Interfaces_P s        Specific entropy
  artialMedium.html#Modelica.Media.Interfaces.P          [J/(kg.K)]
  artialMedium.SpecificEntropy)                          

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image130](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).temperature\_ps
====================================================================================================================================================================================================================================================

**Return temperature from p and s**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEntropy](Modelica_Media_Interfaces_P s        Specific entropy
  artialMedium.html#Modelica.Media.Interfaces.P          [J/(kg.K)]
  artialMedium.SpecificEntropy)                          

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image131](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).density\_ps
================================================================================================================================================================================================================================================

**Return density from p and s**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [SpecificEntropy](Modelica_Media_Interfaces_P s        Specific entropy
  artialMedium.html#Modelica.Media.Interfaces.P          [J/(kg.K)]
  artialMedium.SpecificEntropy)                          

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image132](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).specificEnthalpy\_pT
=========================================================================================================================================================================================================================================================

**Return specific enthalpy from p and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [Temperature](Modelica_Media_Interfaces_Parti T        Temperature [K]
  alMedium.html#Modelica.Media.Interfaces.Parti          
  alMedium.Temperature)                                  

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

![image133](Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phI.png) [Modelica.Media.Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium).density\_pT
================================================================================================================================================================================================================================================

**Return density from p and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- ------------------
  [AbsolutePressure](Modelica_Media_Interfaces_ p        Pressure [Pa]
  PartialMedium.html#Modelica.Media.Interfaces.          
  PartialMedium.AbsolutePressure)                        

  [Temperature](Modelica_Media_Interfaces_Parti T        Temperature [K]
  alMedium.html#Modelica.Media.Interfaces.Parti          
  alMedium.Temperature)                                  

  [FixedPhase](Modelica_Media_Interfaces_Partia pha 0    2 for two-phase, 1
  lTwoPhaseMedium.html#Modelica.Media.Interface se       for one-phase, 0
  s.PartialTwoPhaseMedium.FixedPhase)                    if not known
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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:30 2010.
