===========================================
Modelica.Media.Water.WaterIF97\_fixedregion
===========================================

`Modelica.Media.Water <Modelica_Media_Water.html#Modelica.Media.Water>`_.WaterIF97\_fixedregion
-----------------------------------------------------------------------------------------------

**Water: Steam properties as defined by IAPWS/IF97 standard**

Information
~~~~~~~~~~~

::

This model calculates medium properties for water in the **liquid**,
**gas** and **two phase** regions according to the IAPWS/IF97 standard,
i.e., the accepted industrial standard and best compromise between
accuracy and computation time. For more details see
`Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.
Three variable pairs can be the independent variables of the model:

#. Pressure **p** and specific enthalpy **h** are the most natural
   choice for general applications. This is the recommended choice for
   most general purpose applications, in particular for power plants.
#. Pressure **p** and temperature **T** are the most natural choice for
   applications where water is always in the same phase, both for liquid
   water and steam.
#. Density **d** and temperature **T** are explicit variables of the
   Helmholtz function in the near-critical region and can be the best
   choice for applications with super-critical or near-critial states.

The following quantities are always computed:

+----------------+------------+----------------------------+
| **Variable**   | **Unit**   | **Description**            |
+----------------+------------+----------------------------+
| T              | K          | temperature                |
+----------------+------------+----------------------------+
| u              | J/kg       | specific internal energy   |
+----------------+------------+----------------------------+
| d              | kg/m^3     | density                    |
+----------------+------------+----------------------------+
| p              | Pa         | pressure                   |
+----------------+------------+----------------------------+
| h              | J/kg       | specific enthalpy          |
+----------------+------------+----------------------------+

In some cases additional medium properties are needed. A component that
needs these optional properties has to call one of the functions listed
in
`Modelica.Media.UsersGuide.MediumUsage.OptionalProperties <Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage.OptionalProperties>`_
and in
`Modelica.Media.UsersGuide.MediumUsage.TwoPhase <Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage.TwoPhase>`_.

Many further properties can be computed. Using the well-known Bridgman's
Tables, all first partial derivatives of the standard thermodynamic
variables can be computed easily.

::

Extends from
`Interfaces.PartialTwoPhaseMedium <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium>`_
(Base class for two phase medium of one substance).

Package Content
~~~~~~~~~~~~~~~

Name

Description

|Modelica.Media.Water.WaterIF97\_fixedregion.ThermodynamicState|
`ThermodynamicState <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.ThermodynamicState>`_

thermodynamic state

Region

region of IF97, if known

ph\_explicit

true if explicit in pressure and specific enthalpy

dT\_explicit

true if explicit in density and temperature

pT\_explicit

true if explicit in pressure and temperature

|Modelica.Media.Water.WaterIF97\_fixedregion.BaseProperties|
`BaseProperties <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.BaseProperties>`_

Base properties of water

|Modelica.Media.Water.WaterIF97\_fixedregion.density\_ph|
`density\_ph <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density_ph>`_

Computes density as a function of pressure and specific enthalpy

|Modelica.Media.Water.WaterIF97\_fixedregion.temperature\_ph|
`temperature\_ph <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.temperature_ph>`_

Computes temperature as a function of pressure and specific enthalpy

|Modelica.Media.Water.WaterIF97\_fixedregion.temperature\_ps|
`temperature\_ps <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.temperature_ps>`_

Compute temperature from pressure and specific enthalpy

|Modelica.Media.Water.WaterIF97\_fixedregion.density\_ps|
`density\_ps <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density_ps>`_

Computes density as a function of pressure and specific enthalpy

|Modelica.Media.Water.WaterIF97\_fixedregion.pressure\_dT|
`pressure\_dT <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.pressure_dT>`_

Computes pressure as a function of density and temperature

|Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy\_dT|
`specificEnthalpy\_dT <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificEnthalpy_dT>`_

Computes specific enthalpy as a function of density and temperature

|Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy\_pT|
`specificEnthalpy\_pT <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificEnthalpy_pT>`_

Computes specific enthalpy as a function of pressure and temperature

|Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy\_ps|
`specificEnthalpy\_ps <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificEnthalpy_ps>`_

Computes specific enthalpy as a function of pressure and temperature

|Modelica.Media.Water.WaterIF97\_fixedregion.density\_pT|
`density\_pT <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density_pT>`_

Computes density as a function of pressure and temperature

|Modelica.Media.Water.WaterIF97\_fixedregion.setDewState|
`setDewState <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setDewState>`_

set the thermodynamic state on the dew line

|Modelica.Media.Water.WaterIF97\_fixedregion.setBubbleState|
`setBubbleState <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setBubbleState>`_

set the thermodynamic state on the bubble line

|Modelica.Media.Water.WaterIF97\_fixedregion.dynamicViscosity|
`dynamicViscosity <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dynamicViscosity>`_

Dynamic viscosity of water

|Modelica.Media.Water.WaterIF97\_fixedregion.thermalConductivity|
`thermalConductivity <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.thermalConductivity>`_

Thermal conductivity of water

|Modelica.Media.Water.WaterIF97\_fixedregion.surfaceTension|
`surfaceTension <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.surfaceTension>`_

Surface tension in two phase region of water

|Modelica.Media.Water.WaterIF97\_fixedregion.pressure|
`pressure <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.pressure>`_

return pressure of ideal gas

|Modelica.Media.Water.WaterIF97\_fixedregion.temperature|
`temperature <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.temperature>`_

return temperature of ideal gas

|Modelica.Media.Water.WaterIF97\_fixedregion.density|
`density <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density>`_

return density of ideal gas

|Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy|
`specificEnthalpy <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificEnthalpy>`_

Return specific enthalpy

|Modelica.Media.Water.WaterIF97\_fixedregion.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificInternalEnergy>`_

Return specific internal energy

|Modelica.Media.Water.WaterIF97\_fixedregion.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificGibbsEnergy>`_

Return specific Gibbs energy

|Modelica.Media.Water.WaterIF97\_fixedregion.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificHelmholtzEnergy>`_

Return specific Helmholtz energy

|Modelica.Media.Water.WaterIF97\_fixedregion.specificEntropy|
`specificEntropy <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificEntropy>`_

specific entropy of water

|Modelica.Media.Water.WaterIF97\_fixedregion.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificHeatCapacityCp>`_

specific heat capacity at constant pressure of water

|Modelica.Media.Water.WaterIF97\_fixedregion.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificHeatCapacityCv>`_

specific heat capacity at constant volume of water

|Modelica.Media.Water.WaterIF97\_fixedregion.isentropicExponent|
`isentropicExponent <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.isentropicExponent>`_

Return isentropic exponent

|Modelica.Media.Water.WaterIF97\_fixedregion.isothermalCompressibility|
`isothermalCompressibility <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.isothermalCompressibility>`_

Isothermal compressibility of water

|Modelica.Media.Water.WaterIF97\_fixedregion.isobaricExpansionCoefficient|
`isobaricExpansionCoefficient <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.isobaricExpansionCoefficient>`_

isobaric expansion coefficient of water

|Modelica.Media.Water.WaterIF97\_fixedregion.velocityOfSound|
`velocityOfSound <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.velocityOfSound>`_

Return velocity of sound as a function of the thermodynamic state record

|Modelica.Media.Water.WaterIF97\_fixedregion.isentropicEnthalpy|
`isentropicEnthalpy <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.isentropicEnthalpy>`_

compute h(s,p)

|Modelica.Media.Water.WaterIF97\_fixedregion.density\_derh\_p|
`density\_derh\_p <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density_derh_p>`_

density derivative by specific enthalpy

|Modelica.Media.Water.WaterIF97\_fixedregion.density\_derp\_h|
`density\_derp\_h <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density_derp_h>`_

density derivative by pressure

|Modelica.Media.Water.WaterIF97\_fixedregion.bubbleEnthalpy|
`bubbleEnthalpy <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.bubbleEnthalpy>`_

boiling curve specific enthalpy of water

|Modelica.Media.Water.WaterIF97\_fixedregion.dewEnthalpy|
`dewEnthalpy <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dewEnthalpy>`_

dew curve specific enthalpy of water

|Modelica.Media.Water.WaterIF97\_fixedregion.bubbleEntropy|
`bubbleEntropy <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.bubbleEntropy>`_

boiling curve specific entropy of water

|Modelica.Media.Water.WaterIF97\_fixedregion.dewEntropy|
`dewEntropy <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dewEntropy>`_

dew curve specific entropy of water

|Modelica.Media.Water.WaterIF97\_fixedregion.bubbleDensity|
`bubbleDensity <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.bubbleDensity>`_

boiling curve specific density of water

|Modelica.Media.Water.WaterIF97\_fixedregion.dewDensity|
`dewDensity <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dewDensity>`_

dew curve specific density of water

|Modelica.Media.Water.WaterIF97\_fixedregion.saturationTemperature|
`saturationTemperature <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.saturationTemperature>`_

saturation temperature of water

|Modelica.Media.Water.WaterIF97\_fixedregion.saturationTemperature\_derp|
`saturationTemperature\_derp <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.saturationTemperature_derp>`_

derivative of saturation temperature w.r.t. pressure

|Modelica.Media.Water.WaterIF97\_fixedregion.saturationPressure|
`saturationPressure <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.saturationPressure>`_

saturation pressure of water

|Modelica.Media.Water.WaterIF97\_fixedregion.dBubbleDensity\_dPressure|
`dBubbleDensity\_dPressure <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dBubbleDensity_dPressure>`_

bubble point density derivative

|Modelica.Media.Water.WaterIF97\_fixedregion.dDewDensity\_dPressure|
`dDewDensity\_dPressure <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dDewDensity_dPressure>`_

dew point density derivative

|Modelica.Media.Water.WaterIF97\_fixedregion.dBubbleEnthalpy\_dPressure|
`dBubbleEnthalpy\_dPressure <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dBubbleEnthalpy_dPressure>`_

bubble point specific enthalpy derivative

|Modelica.Media.Water.WaterIF97\_fixedregion.dDewEnthalpy\_dPressure|
`dDewEnthalpy\_dPressure <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dDewEnthalpy_dPressure>`_

dew point specific enthalpy derivative

|Modelica.Media.Water.WaterIF97\_fixedregion.setState\_dTX|
`setState\_dTX <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setState_dTX>`_

Return thermodynamic state of water as function of d, T, and optional
region

|Modelica.Media.Water.WaterIF97\_fixedregion.setState\_phX|
`setState\_phX <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setState_phX>`_

Return thermodynamic state of water as function of p, h, and optional
region

|Modelica.Media.Water.WaterIF97\_fixedregion.setState\_psX|
`setState\_psX <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setState_psX>`_

Return thermodynamic state of water as function of p, s, and optional
region

|Modelica.Media.Water.WaterIF97\_fixedregion.setState\_pTX|
`setState\_pTX <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setState_pTX>`_

Return thermodynamic state of water as function of p, T, and optional
region

|Modelica.Media.Water.WaterIF97\_fixedregion.setSmoothState|
`setSmoothState <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

Inherited

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

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties|
`SaturationProperties <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties>`_

Saturation properties of two phase medium

`FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_

phase of the fluid: 1 for 1-phase, 2 for two-phase, 0 for not known,
e.g., interactive use

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_T|
`setSat\_T <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_T>`_

Return saturation property record from temperature

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_p|
`setSat\_p <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_p>`_

Return saturation property record from pressure

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure\_sat|
`saturationPressure\_sat <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure_sat>`_

Return saturation temperature

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_sat|
`saturationTemperature\_sat <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_sat>`_

Return saturation temperature

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_derp\_sat|
`saturationTemperature\_derp\_sat <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_derp_sat>`_

Return derivative of saturation temperature w.r.t. pressure

|Modelica.Media.Interfaces.PartialTwoPhaseMedium.molarMass|
`molarMass <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.molarMass>`_

Return the molar mass of the medium

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

      constant Integer Region "region of IF97, if known";

::

      constant Boolean ph_explicit 
      "true if explicit in pressure and specific enthalpy";

::

      constant Boolean dT_explicit "true if explicit in density and temperature";

::

      constant Boolean pT_explicit "true if explicit in pressure and temperature";

--------------

|image84| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.ThermodynamicState
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**thermodynamic state**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState>`_
(Thermodynamic state of two phase medium).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare record extends ThermodynamicState "thermodynamic state"
      SpecificEnthalpy h "specific enthalpy";
      Density d "density";
      Temperature T "temperature";
      AbsolutePressure p "pressure";
    end ThermodynamicState;

--------------

|image85| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.BaseProperties
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base properties of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.BaseProperties>`_
(Base properties (p, d, T, h, u, R, MM, sat) of two phase medium).

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

    redeclare replaceable model extends BaseProperties(
      h(stateSelect=if ph_explicit then StateSelect.prefer else StateSelect.default),
      d(stateSelect=if dT_explicit then StateSelect.prefer else StateSelect.default),
      T(stateSelect=if (pT_explicit or dT_explicit) then StateSelect.prefer else StateSelect.default),
      p(stateSelect=if (pT_explicit or ph_explicit) then StateSelect.prefer else StateSelect.default)) 
      "Base properties of water"
      Integer phase(min=0, max=2) 
        "2 for two-phase, 1 for one-phase, 0 if not known";
      SaturationProperties sat(Tsat(start=300.0), psat(start=1.0e5)) 
        "saturation temperature and pressure";
    equation 
      MM = fluidConstants[1].molarMass;
      if smoothModel then
        if onePhase then
          phase = 1;
          if ph_explicit then
            assert(((h < bubbleEnthalpy(sat) or h > dewEnthalpy(sat)) or p >
              fluidConstants[1].criticalPressure),
              "With onePhase=true this model may only be called with one-phase states h < hl or h > hv!");
          else
            assert(not ((d < bubbleDensity(sat) and d > dewDensity(sat)) and T <
              fluidConstants[1].criticalTemperature),
              "With onePhase=true this model may only be called with one-phase states d > dl or d < dv!");
          end if;
        else
          phase = 0;
        end if;
      else
        if ph_explicit then
          phase = if ((h < bubbleEnthalpy(sat) or h > dewEnthalpy(sat)) or p >
            fluidConstants[1].criticalPressure) then 1 else 2;
        elseif dT_explicit then
          phase = if not ((d < bubbleDensity(sat) and d > dewDensity(sat)) and T
             < fluidConstants[1].criticalTemperature) then 1 else 2;
        else
          phase = 1;
          //this is for the one-phase only case pT
        end if;
      end if;
      if dT_explicit then
        p = pressure_dT(d, T, phase, Region);
        h = specificEnthalpy_dT(d, T, phase, Region);
        sat.Tsat = T;
        sat.psat = saturationPressure(T);
      elseif ph_explicit then
        d = density_ph(p, h, phase, Region);
        T = temperature_ph(p, h, phase, Region);
        sat.Tsat = saturationTemperature(p);
        sat.psat = p;
      else
        h = specificEnthalpy_pT(p, T, Region);
        d = density_pT(p, T, Region);
        sat.psat = p;
        sat.Tsat = saturationTemperature(p);
      end if;
      u = h - p/d;
      R = Modelica.Constants.R/fluidConstants[1].molarMass;
      h = state.h;
      p = state.p;
      T = state.T;
      d = state.d;
      phase = state.phase;
    end BaseProperties;

--------------

|image86| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.density\_ph
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Computes density as a function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default   | Description                                               |
+===================================================================================================================================+==========+===========+===========================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p        |           | Pressure [Pa]                                             |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_       | h        |           | Specific enthalpy [J/kg]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                                                                           | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

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

    redeclare function density_ph 
      "Computes density as a function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
      output Density d "Density";
    algorithm 
      d := IF97_Utilities.rho_ph(p, h, phase, region);
    end density_ph;

--------------

|image87| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.temperature\_ph
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Computes temperature as a function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default   | Description                                               |
+===================================================================================================================================+==========+===========+===========================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p        |           | Pressure [Pa]                                             |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_       | h        |           | Specific enthalpy [J/kg]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                                                                           | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

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

    redeclare function temperature_ph 
      "Computes temperature as a function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
      output Temperature T "Temperature";
    algorithm 
      T := IF97_Utilities.T_ph(p, h, phase, region);
    end temperature_ph;

--------------

|image88| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.temperature\_ps
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute temperature from pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default   | Description                                               |
+===================================================================================================================================+==========+===========+===========================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p        |           | Pressure [Pa]                                             |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s        |           | Specific entropy [J/(kg.K)]                               |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                                                                           | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

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

    redeclare function temperature_ps 
      "Compute temperature from pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
      output Temperature T "Temperature";
    algorithm 
      T := IF97_Utilities.T_ps(p, s, phase,region);
    end temperature_ps;

--------------

|image89| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.density\_ps
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Computes density as a function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default   | Description                                               |
+===================================================================================================================================+==========+===========+===========================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p        |           | Pressure [Pa]                                             |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s        |           | Specific entropy [J/(kg.K)]                               |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                                                                           | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

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

    redeclare function density_ps 
      "Computes density as a function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
      output Density d "density";
    algorithm 
      d := IF97_Utilities.rho_ps(p, s, phase, region);
    end density_ps;

--------------

|image90| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.pressure\_dT
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Computes pressure as a function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default   | Description                                               |
+===================================================================================================================================+==========+===========+===========================================================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_                         | d        |           | Density [kg/m3]                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T        |           | Temperature [K]                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                                                                           | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

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

    redeclare function pressure_dT 
      "Computes pressure as a function of density and temperature"
      extends Modelica.Icons.Function;
      input Density d "Density";
      input Temperature T "Temperature";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
      output AbsolutePressure p "Pressure";
    algorithm 
      p := IF97_Utilities.p_dT(d, T, phase, region);
    end pressure_dT;

--------------

|image91| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.specificEnthalpy\_dT
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Computes specific enthalpy as a function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default   | Description                                               |
+===================================================================================================================================+==========+===========+===========================================================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_                         | d        |           | Density [kg/m3]                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T        |           | Temperature [K]                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                                                                           | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

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

    redeclare function specificEnthalpy_dT 
      "Computes specific enthalpy as a function of density and temperature"
      extends Modelica.Icons.Function;
      input Density d "Density";
      input Temperature T "Temperature";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
      output SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := IF97_Utilities.h_dT(d, T, phase, region);
    end specificEnthalpy_dT;

--------------

|image92| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.specificEnthalpy\_pT
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Computes specific enthalpy as a function of pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default   | Description                                               |
+===================================================================================================================================+==========+===========+===========================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p        |           | Pressure [Pa]                                             |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T        |           | Temperature [K]                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                                                                           | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

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

    redeclare function specificEnthalpy_pT 
      "Computes specific enthalpy as a function of pressure and temperature"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
      output SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := IF97_Utilities.h_pT(p, T, region);
    end specificEnthalpy_pT;

--------------

|image93| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.specificEnthalpy\_ps
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Computes specific enthalpy as a function of pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default   | Description                                               |
+===================================================================================================================================+==========+===========+===========================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p        |           | Pressure [Pa]                                             |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s        |           | Specific entropy [J/(kg.K)]                               |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                                                                           | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

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

    redeclare function specificEnthalpy_ps 
      "Computes specific enthalpy as a function of pressure and temperature"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
      output SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := IF97_Utilities.h_ps(p, s, phase, region);
    end specificEnthalpy_ps;

--------------

|image94| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.density\_pT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Computes density as a function of pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default   | Description                                               |
+===================================================================================================================================+==========+===========+===========================================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p        |           | Pressure [Pa]                                             |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T        |           | Temperature [K]                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                                                                           | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

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

    redeclare function density_pT 
      "Computes density as a function of pressure and temperature"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input FixedPhase phase=0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
      output Density d "Density";
    algorithm 
      d := IF97_Utilities.rho_pT(p, T, region);
    end density_pT;

--------------

|image95| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.setDewState
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**set the thermodynamic state on the dew line**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewState>`_
(Return the thermodynamic state on the dew line).

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

    redeclare function extends setDewState 
      "set the thermodynamic state on the dew line"
    algorithm 
      state.phase := phase;
      state.p := sat.psat;
      state.T := sat.Tsat;
      state.h := dewEnthalpy(sat);
      state.d := dewDensity(sat);
    end setDewState;

--------------

|image96| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.setBubbleState
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**set the thermodynamic state on the bubble line**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setBubbleState>`_
(Return the thermodynamic state on the bubble line).

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

    redeclare function extends setBubbleState 
      "set the thermodynamic state on the bubble line"
    algorithm 
      state.phase := phase;
      state.p := sat.psat;
      state.T := sat.Tsat;
      state.h := bubbleEnthalpy(sat);
      state.d := bubbleDensity(sat);
    end setBubbleState;

--------------

|image97| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.dynamicViscosity
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      eta := IF97_Utilities.dynamicViscosity(state.d, state.T, state.p, state.
        phase);
    end dynamicViscosity;

--------------

|image98| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.thermalConductivity
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      lambda := IF97_Utilities.thermalConductivity(state.d, state.T, state.p,
        state.phase);
    end thermalConductivity;

--------------

|image99| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.surfaceTension
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Surface tension in two phase region of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.surfaceTension>`_
(Return surface tension sigma in the two phase region).

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

    redeclare function extends surfaceTension 
      "Surface tension in two phase region of water"
    algorithm 
      sigma := IF97_Utilities.surfaceTension(sat.Tsat);
    end surfaceTension;

--------------

|image100| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.pressure
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**return pressure of ideal gas**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.pressure>`_
(Return pressure).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

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

    redeclare function extends pressure "return pressure of ideal gas"
    algorithm 
      p := state.p;
    end pressure;

--------------

|image101| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.temperature
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**return temperature of ideal gas**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.temperature>`_
(Return temperature).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

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

    redeclare function extends temperature 
      "return temperature of ideal gas"
    algorithm 
      T := state.T;
    end temperature;

--------------

|image102| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.density
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**return density of ideal gas**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density>`_
(Return density).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

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

    redeclare function extends density "return density of ideal gas"
    algorithm 
      d := state.d;
    end density;

--------------

|image103| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.specificEnthalpy
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions),
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEnthalpy>`_
(Return specific enthalpy).

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
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      | Specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends specificEnthalpy 
      "Return specific enthalpy"
      extends Modelica.Icons.Function;
    algorithm 
      h := state.h;
    end specificEnthalpy;

--------------

|image104| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.specificInternalEnergy
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific internal energy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions),
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificInternalEnergy>`_
(Return specific internal energy).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                                                      | Name   | Description                       |
+===========================================================================================================================+========+===================================+
| `SpecificEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnergy>`_   | u      | Specific internal energy [J/kg]   |
+---------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends specificInternalEnergy 
      "Return specific internal energy"
      extends Modelica.Icons.Function;
    algorithm 
      u := state.h  - state.p/state.d;
    end specificInternalEnergy;

--------------

|image105| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.specificGibbsEnergy
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific Gibbs energy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions),
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy>`_
(Return specific Gibbs energy).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------+
| Type                                                                                                                      | Name   | Description                    |
+===========================================================================================================================+========+================================+
| `SpecificEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnergy>`_   | g      | Specific Gibbs energy [J/kg]   |
+---------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends specificGibbsEnergy 
      "Return specific Gibbs energy"
      extends Modelica.Icons.Function;
    algorithm 
      g := state.h - state.T*specificEntropy(state);
    end specificGibbsEnergy;

--------------

|image106| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.specificHelmholtzEnergy
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific Helmholtz energy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions),
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy>`_
(Return specific Helmholtz energy).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                                                      | Name   | Description                        |
+===========================================================================================================================+========+====================================+
| `SpecificEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnergy>`_   | f      | Specific Helmholtz energy [J/kg]   |
+---------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends specificHelmholtzEnergy 
      "Return specific Helmholtz energy"
      extends Modelica.Icons.Function;
    algorithm 
      f := state.h - state.p/state.d - state.T*specificEntropy(state);
    end specificHelmholtzEnergy;

--------------

|image107| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.specificEntropy
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**specific entropy of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy>`_
(Return specific entropy).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                                                                        | Name   | Description                   |
+=============================================================================================================================+========+===============================+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_   | s      | Specific entropy [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends specificEntropy 
      "specific entropy of water"
    algorithm 
      if dT_explicit then
        s := IF97_Utilities.s_dT(state.d, state.T, state.phase, Region);
      elseif pT_explicit then
        s := IF97_Utilities.s_pT(state.p, state.T, Region);
      else
        s := IF97_Utilities.s_ph(state.p, state.h, state.phase, Region);
      end if;
    end specificEntropy;

--------------

|image108| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.specificHeatCapacityCp
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant pressure of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCp>`_
(Return specific heat capacity at constant pressure).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------------------------+
| Type                                                                                                                                  | Name   | Description                                              |
+=======================================================================================================================================+========+==========================================================+
| `SpecificHeatCapacity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificHeatCapacity>`_   | cp     | Specific heat capacity at constant pressure [J/(kg.K)]   |
+---------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends specificHeatCapacityCp 
      "specific heat capacity at constant pressure of water"
    algorithm 
      if dT_explicit then
        cp := IF97_Utilities.cp_dT(state.d, state.T, Region);
      elseif pT_explicit then
        cp := IF97_Utilities.cp_pT(state.p, state.T, Region);
      else
        cp := IF97_Utilities.cp_ph(state.p, state.h, Region);
      end if;
    end specificHeatCapacityCp;

--------------

|image109| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.specificHeatCapacityCv
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant volume of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCv>`_
(Return specific heat capacity at constant volume).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------------------+
| Type                                                                                                                                  | Name   | Description                                            |
+=======================================================================================================================================+========+========================================================+
| `SpecificHeatCapacity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificHeatCapacity>`_   | cv     | Specific heat capacity at constant volume [J/(kg.K)]   |
+---------------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends specificHeatCapacityCv 
      "specific heat capacity at constant volume of water"
    algorithm 
      if dT_explicit then
        cv := IF97_Utilities.cv_dT(state.d, state.T, state.phase, Region);
      elseif pT_explicit then
        cv := IF97_Utilities.cv_pT(state.p, state.T, Region);
      else
        cv := IF97_Utilities.cv_ph(state.p, state.h, state.phase, Region);
      end if;
    end specificHeatCapacityCv;

--------------

|image110| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.isentropicExponent
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return isentropic exponent**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicExponent>`_
(Return isentropic exponent).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+---------------------------+
| Type                                                                                                                              | Name    | Description               |
+===================================================================================================================================+=========+===========================+
| `IsentropicExponent <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.IsentropicExponent>`_   | gamma   | Isentropic exponent [1]   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends isentropicExponent 
      "Return isentropic exponent"
    algorithm 
      if dT_explicit then
        gamma := IF97_Utilities.isentropicExponent_dT(state.d, state.T,
            state.phase, Region);
      elseif pT_explicit then
        gamma := IF97_Utilities.isentropicExponent_pT(state.p, state.T, Region);
      else
        gamma := IF97_Utilities.isentropicExponent_ph(state.p, state.h,
            state.phase, Region);
      end if;
    end isentropicExponent;

--------------

|image111| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.isothermalCompressibility
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Isothermal compressibility of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isothermalCompressibility>`_
(Return overall the isothermal compressibility factor).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+---------+-------------------------------------+
| Type                                                                                              | Name    | Description                         |
+===================================================================================================+=========+=====================================+
| `IsothermalCompressibility <Modelica_SIunits.html#Modelica.SIunits.IsothermalCompressibility>`_   | kappa   | Isothermal compressibility [1/Pa]   |
+---------------------------------------------------------------------------------------------------+---------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends isothermalCompressibility 
      "Isothermal compressibility of water"
    algorithm 
      //    assert(state.phase <> 2, "isothermal compressibility can not be computed with 2-phase inputs!");
      if dT_explicit then
        kappa := IF97_Utilities.kappa_dT(state.d, state.T, state.phase, Region);
      elseif pT_explicit then
        kappa := IF97_Utilities.kappa_pT(state.p, state.T, Region);
      else
        kappa := IF97_Utilities.kappa_ph(state.p, state.h, state.phase, Region);
      end if;
    end isothermalCompressibility;

--------------

|image112| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.isobaricExpansionCoefficient
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**isobaric expansion coefficient of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isobaricExpansionCoefficient>`_
(Return overall the isobaric expansion coefficient beta).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                                                                  | Name   | Description                            |
+=======================================================================================================================================================+========+========================================+
| `IsobaricExpansionCoefficient <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.IsobaricExpansionCoefficient>`_   | beta   | Isobaric expansion coefficient [1/K]   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends isobaricExpansionCoefficient 
      "isobaric expansion coefficient of water"
    algorithm 
      //    assert(state.phase <> 2, "the isobaric expansion coefficient can not be computed with 2-phase inputs!");
      if dT_explicit then
        beta := IF97_Utilities.beta_dT(state.d, state.T, state.phase, Region);
      elseif pT_explicit then
        beta := IF97_Utilities.beta_pT(state.p, state.T, Region);
      else
        beta := IF97_Utilities.beta_ph(state.p, state.h, state.phase, Region);
      end if;
    end isobaricExpansionCoefficient;

--------------

|image113| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.velocityOfSound
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return velocity of sound as a function of the thermodynamic state
record**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.velocityOfSound>`_
(Return velocity of sound).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+--------+---------------------------+
| Type                                                                                                                        | Name   | Description               |
+=============================================================================================================================+========+===========================+
| `VelocityOfSound <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.VelocityOfSound>`_   | a      | Velocity of sound [m/s]   |
+-----------------------------------------------------------------------------------------------------------------------------+--------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends velocityOfSound 
      "Return velocity of sound as a function of the thermodynamic state record"
    algorithm 
      if dT_explicit then
        a := IF97_Utilities.velocityOfSound_dT(state.d, state.T, state.phase,
          Region);
      elseif pT_explicit then
        a := IF97_Utilities.velocityOfSound_pT(state.p, state.T, Region);
      else
        a := IF97_Utilities.velocityOfSound_ph(state.p, state.h, state.phase,
          Region);
      end if;
    end velocityOfSound;

--------------

|image114| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.isentropicEnthalpy
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**compute h(s,p)**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy>`_
(Return isentropic enthalpy).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------+
| Type                                                                                                                              | Name            | Default   | Description                   |
+===================================================================================================================================+=================+===========+===============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p\_downstream   |           | downstream pressure [Pa]      |
+-----------------------------------------------------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | refState        |           | reference state for entropy   |
+-----------------------------------------------------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                          | Name    | Description                  |
+===============================================================================================================================+=========+==============================+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h\_is   | Isentropic enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends isentropicEnthalpy "compute h(s,p)"
    algorithm 
      h_is := IF97_Utilities.isentropicEnthalpy(p_downstream, specificEntropy(
        refState), 0);
    end isentropicEnthalpy;

--------------

|image115| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.density\_derh\_p
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**density derivative by specific enthalpy**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derh_p>`_
(Return density derivative w.r.t. specific enthalpy at constant
pressure).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------------------------+
| Type                                                                                                                                  | Name   | Description                                              |
+=======================================================================================================================================+========+==========================================================+
| `DerDensityByEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByEnthalpy>`_   | ddhp   | Density derivative w.r.t. specific enthalpy [kg.s2/m5]   |
+---------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends density_derh_p 
      "density derivative by specific enthalpy"
    algorithm 
      ddhp := IF97_Utilities.ddhp(state.p, state.h, state.phase, Region);
    end density_derh_p;

--------------

|image116| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.density\_derp\_h
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**density derivative by pressure**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_h>`_
(Return density derivative w.r.t. pressure at const specific enthalpy).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------------+
| Type                                                                                                                                  | Name   | Description                                  |
+=======================================================================================================================================+========+==============================================+
| `DerDensityByPressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByPressure>`_   | ddph   | Density derivative w.r.t. pressure [s2/m2]   |
+---------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends density_derp_h 
      "density derivative by pressure"
    algorithm 
      ddph := IF97_Utilities.ddph(state.p, state.h, state.phase, Region);
    end density_derp_h;

--------------

|image117| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.bubbleEnthalpy
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**boiling curve specific enthalpy of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEnthalpy>`_
(Return bubble point specific enthalpy).

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

    redeclare function extends bubbleEnthalpy 
      "boiling curve specific enthalpy of water"
    algorithm 
      hl := IF97_Utilities.BaseIF97.Regions.hl_p(sat.psat);
    end bubbleEnthalpy;

--------------

|image118| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.dewEnthalpy
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**dew curve specific enthalpy of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEnthalpy>`_
(Return dew point specific enthalpy).

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

    redeclare function extends dewEnthalpy 
      "dew curve specific enthalpy of water"
    algorithm 
      hv := IF97_Utilities.BaseIF97.Regions.hv_p(sat.psat);
    end dewEnthalpy;

--------------

|image119| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.bubbleEntropy
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**boiling curve specific entropy of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEntropy>`_
(Return bubble point specific entropy).

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

    redeclare function extends bubbleEntropy 
      "boiling curve specific entropy of water"
    algorithm 
      sl := IF97_Utilities.BaseIF97.Regions.sl_p(sat.psat);
    end bubbleEntropy;

--------------

|image120| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.dewEntropy
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**dew curve specific entropy of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEntropy>`_
(Return dew point specific entropy).

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

    redeclare function extends dewEntropy 
      "dew curve specific entropy of water"
    algorithm 
      sv := IF97_Utilities.BaseIF97.Regions.sv_p(sat.psat);
    end dewEntropy;

--------------

|image121| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.bubbleDensity
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**boiling curve specific density of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleDensity>`_
(Return bubble point density).

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

    redeclare function extends bubbleDensity 
      "boiling curve specific density of water"
    algorithm 
      if ph_explicit or pT_explicit then
        dl := IF97_Utilities.BaseIF97.Regions.rhol_p(sat.psat);
      else
        dl := IF97_Utilities.BaseIF97.Regions.rhol_T(sat.Tsat);
      end if;
    end bubbleDensity;

--------------

|image122| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.dewDensity
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**dew curve specific density of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewDensity>`_
(Return dew point density).

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

    redeclare function extends dewDensity 
      "dew curve specific density of water"
    algorithm 
      if ph_explicit or pT_explicit then
        dv := IF97_Utilities.BaseIF97.Regions.rhov_p(sat.psat);
      else
        dv := IF97_Utilities.BaseIF97.Regions.rhov_T(sat.Tsat);
      end if;
    end dewDensity;

--------------

|image123| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.saturationTemperature
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**saturation temperature of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature>`_
(Return saturation temperature).

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

    redeclare function extends saturationTemperature 
      "saturation temperature of water"
    algorithm 
      T := IF97_Utilities.BaseIF97.Basic.tsat(p);
    end saturationTemperature;

--------------

|image124| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.saturationTemperature\_derp
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**derivative of saturation temperature w.r.t. pressure**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_derp>`_
(Return derivative of saturation temperature w.r.t. pressure).

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

    redeclare function extends saturationTemperature_derp 
      "derivative of saturation temperature w.r.t. pressure"
    algorithm 
      dTp := IF97_Utilities.BaseIF97.Basic.dtsatofp(p);
    end saturationTemperature_derp;

--------------

|image125| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.saturationPressure
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**saturation pressure of water**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure>`_
(Return saturation pressure).

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

    redeclare function extends saturationPressure 
      "saturation pressure of water"
    algorithm 
      p := IF97_Utilities.BaseIF97.Basic.psat(T);
    end saturationPressure;

--------------

|image126| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.dBubbleDensity\_dPressure
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**bubble point density derivative**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleDensity_dPressure>`_
(Return bubble point density derivative).

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

    redeclare function extends dBubbleDensity_dPressure 
      "bubble point density derivative"
    algorithm 
      ddldp := IF97_Utilities.BaseIF97.Regions.drhol_dp(sat.psat);
    end dBubbleDensity_dPressure;

--------------

|image127| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.dDewDensity\_dPressure
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**dew point density derivative**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewDensity_dPressure>`_
(Return dew point density derivative).

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

    redeclare function extends dDewDensity_dPressure 
      "dew point density derivative"
    algorithm 
      ddvdp := IF97_Utilities.BaseIF97.Regions.drhov_dp(sat.psat);
    end dDewDensity_dPressure;

--------------

|image128| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.dBubbleEnthalpy\_dPressure
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**bubble point specific enthalpy derivative**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleEnthalpy_dPressure>`_
(Return bubble point specific enthalpy derivative).

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

    redeclare function extends dBubbleEnthalpy_dPressure 
      "bubble point specific enthalpy derivative"
    algorithm 
      dhldp := IF97_Utilities.BaseIF97.Regions.dhl_dp(sat.psat);
    end dBubbleEnthalpy_dPressure;

--------------

|image129| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.dDewEnthalpy\_dPressure
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**dew point specific enthalpy derivative**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewEnthalpy_dPressure>`_
(Return dew point specific enthalpy derivative).

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

    redeclare function extends dDewEnthalpy_dPressure 
      "dew point specific enthalpy derivative"
    algorithm 
      dhvdp := IF97_Utilities.BaseIF97.Regions.dhv_dp(sat.psat);
    end dDewEnthalpy_dPressure;

--------------

|image130| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.setState\_dTX
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state of water as function of d, T, and optional
region**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_dTX>`_
(Return thermodynamic state as function of d, T and composition X or
Xi).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default        | Description                                               |
+===================================================================================================================================+==========+================+===========================================================+
| Integer                                                                                                                           | region   | 0              | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0              | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_                         | d        |                | density [kg/m3]                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T        |                | Temperature [K]                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[:]     | reference\_X   | Mass fractions [kg/kg]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+

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

    redeclare function extends setState_dTX 
      "Return thermodynamic state of water as function of d, T, and optional region"
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
    algorithm 
      state := ThermodynamicState(
        d=d,
        T=T,
        phase= if region == 0 then IF97_Utilities.phase_dT(d,T) else if region == 4 then 2 else 1,
        h=specificEnthalpy_dT(d,T,region=region),
        p=pressure_dT(d,T,region=region));
    end setState_dTX;

--------------

|image131| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.setState\_phX
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state of water as function of p, h, and optional
region**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_phX>`_
(Return thermodynamic state as function of p, h and composition X or
Xi).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default        | Description                                               |
+===================================================================================================================================+==========+================+===========================================================+
| Integer                                                                                                                           | region   | 0              | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0              | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p        |                | Pressure [Pa]                                             |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_       | h        |                | Specific enthalpy [J/kg]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[:]     | reference\_X   | Mass fractions [kg/kg]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+

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

    redeclare function extends setState_phX 
      "Return thermodynamic state of water as function of p, h, and optional region"
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
    algorithm 
      state := ThermodynamicState(
        d=density_ph(p,h,region=region),
        T=temperature_ph(p,h,region=region),
        phase=if region == 0 then IF97_Utilities.phase_ph(p,h) else if region == 4 then 2 else 1,
        h=h,
        p=p);
    end setState_phX;

--------------

|image132| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.setState\_psX
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state of water as function of p, s, and optional
region**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_psX>`_
(Return thermodynamic state as function of p, s and composition X or
Xi).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default        | Description                                               |
+===================================================================================================================================+==========+================+===========================================================+
| Integer                                                                                                                           | region   | 0              | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0              | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p        |                | Pressure [Pa]                                             |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_         | s        |                | Specific entropy [J/(kg.K)]                               |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[:]     | reference\_X   | Mass fractions [kg/kg]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+

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

    redeclare function extends setState_psX 
      "Return thermodynamic state of water as function of p, s, and optional region"
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
    algorithm 
      state := ThermodynamicState(
        d=density_ps(p,s,region=region),
        T=temperature_ps(p,s,region=region),
        phase=IF97_Utilities.phase_ps(p,s),
        h=specificEnthalpy_ps(p,s,region=region),
        p=p);
    end setState_psX;

--------------

|image133| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.setState\_pTX
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state of water as function of p, T, and optional
region**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pTX>`_
(Return thermodynamic state as function of p, T and composition X or
Xi).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| Type                                                                                                                              | Name     | Default        | Description                                               |
+===================================================================================================================================+==========+================+===========================================================+
| Integer                                                                                                                           | region   | 0              | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `FixedPhase <Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase>`_   | phase    | 0              | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p        |                | Pressure [Pa]                                             |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_                 | T        |                | Temperature [K]                                           |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_               | X[:]     | reference\_X   | Mass fractions [kg/kg]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+----------------+-----------------------------------------------------------+

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

    redeclare function extends setState_pTX 
      "Return thermodynamic state of water as function of p, T, and optional region"
      input Integer region=0 
        "if 0, region is unknown, otherwise known and this input";
    algorithm 
      state := ThermodynamicState(
        d=density_pT(p,T,region=region),
        T=T,
        phase=1,
        h=specificEnthalpy_pT(p,T,region=region),
        p=p);
    end setState_pTX;

--------------

|image134| `Modelica.Media.Water.WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_.setSmoothState
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setSmoothState>`_
(Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------+
| Type                                                                                                                              | Name       | Default   | Description                                                |
+===================================================================================================================================+============+===========+============================================================+
| Real                                                                                                                              | x          |           | m\_flow or dp                                              |
+-----------------------------------------------------------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state\_a   |           | Thermodynamic state if x > 0                               |
+-----------------------------------------------------------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state\_b   |           | Thermodynamic state if x < 0                               |
+-----------------------------------------------------------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------+
| Real                                                                                                                              | x\_small   |           | Smooth transition in the region -x\_small < x < x\_small   |
+-----------------------------------------------------------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------------------------------------------------+
| Type                                                                                                                              | Name    | Description                                                            |
+===================================================================================================================================+=========+========================================================================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | Smooth thermodynamic state for all x (continuous and differentiable)   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends setSmoothState 
      "Return thermodynamic state so that it smoothly approximates: if x > 0 then state_a else state_b"
    import Modelica.Media.Common.smoothStep;
    algorithm 
      state :=ThermodynamicState(
        p=smoothStep(x, state_a.p, state_b.p, x_small),
        h=smoothStep(x, state_a.h, state_b.h, x_small),
        d=density_ph(smoothStep(x, state_a.p, state_b.p, x_small),
                     smoothStep(x, state_a.h, state_b.h, x_small)),
        T=temperature_ph(smoothStep(x, state_a.p, state_b.p, x_small),
                         smoothStep(x, state_a.h, state_b.h, x_small)),
        phase=0);
    end setSmoothState;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:35
2010.

.. |Modelica.Media.Water.WaterIF97\_fixedregion.ThermodynamicState| image:: Modelica.Media.Water.WaterIF97_fixedregion.ThermodynamicStateS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.BaseProperties| image:: Modelica.Media.Water.WaterIF97_fixedregion.BasePropertiesS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.density\_ph| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.temperature\_ph| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.temperature\_ps| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.density\_ps| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.pressure\_dT| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy\_dT| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy\_pT| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy\_ps| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.density\_pT| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.setDewState| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.setBubbleState| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.dynamicViscosity| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.thermalConductivity| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.surfaceTension| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.pressure| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.temperature| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.density| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.specificInternalEnergy| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.specificGibbsEnergy| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.specificHelmholtzEnergy| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.specificEntropy| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.specificHeatCapacityCp| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.specificHeatCapacityCv| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.isentropicExponent| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.isothermalCompressibility| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.isobaricExpansionCoefficient| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.velocityOfSound| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.isentropicEnthalpy| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.density\_derh\_p| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.density\_derp\_h| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.bubbleEnthalpy| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.dewEnthalpy| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.bubbleEntropy| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.dewEntropy| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.bubbleDensity| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.dewDensity| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.saturationTemperature| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.saturationTemperature\_derp| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.saturationPressure| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.dBubbleDensity\_dPressure| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.dDewDensity\_dPressure| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.dBubbleEnthalpy\_dPressure| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.dDewEnthalpy\_dPressure| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.setState\_dTX| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.setState\_phX| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.setState\_psX| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.setState\_pTX| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion.setSmoothState| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimits| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidConstants| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_T| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_p| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure\_sat| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_sat| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_derp\_sat| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.molarMass| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
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
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.beta| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.kappa| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derp\_T| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derT\_p| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.Choices| image:: Modelica.Media.Interfaces.PartialMedium.ChoicesS.png
.. |image84| image:: Modelica.Media.Water.WaterIF97_fixedregion.ThermodynamicStateI.png
.. |image85| image:: Modelica.Media.Water.WaterIF97_fixedregion.BasePropertiesI.png
.. |image86| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image87| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image88| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image89| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image90| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image91| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image92| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image93| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image94| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image95| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image96| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image97| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image98| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image99| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image100| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image101| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image102| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image103| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image104| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image105| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image106| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image107| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image108| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image109| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image110| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image111| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image112| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image113| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image114| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image115| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image116| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image117| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image118| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image119| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image120| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image121| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image122| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image123| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image124| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image125| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image126| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image127| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image128| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image129| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image130| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image131| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image132| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image133| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
.. |image134| image:: Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png
