=====================================
Modelica.Media.Examples.TwoPhaseWater
=====================================

`Modelica.Media.Examples <Modelica_Media_Examples.html#Modelica.Media.Examples>`_.TwoPhaseWater
-----------------------------------------------------------------------------------------------

**extension of the StandardWater package**

Information
~~~~~~~~~~~

::

Example: TwoPhaseWater
^^^^^^^^^^^^^^^^^^^^^^

The TwoPhaseWater package demonstrates how to extend the parsimonius
BaseProperties with a minimal set of properties from the standard water
package with most properties that are needed in two-phase situations.
The model also demonstrates how to compute additional properties for the
medium model. In this scenario, that builds a new medium model with many
more properties than the default, the standard BaseProperties is used as
a basis. For additional properties, a user has to:

#. Declare a new variable of the wanted type, e.g., "DynamicViscosity
   eta".
#. Compute that variable by calling the function form the package, e.g.,
   eta = dynamicViscosity(state). Note that the instance of
   ThermodynamicState is used as an input to the function. This instance
   "state" is declared in PartialMedium and thus available in every
   medium model. A user does not have to know what actual variables are
   required to compute the dynamic viscosity, because the state instance
   is guaranteed to contain what is needed.
#. Attention: Many properties are not well defined in the two phase
   region and the functions might return undesired values if called
   there. It is the user's responsibility to take care of such
   ituations. The example uses one of several possible models to compute
   an averaged viscosity for two-phase flows.

In two phase models, properties are often needed on the phase boundary
just outside the two phase dome, right on the border.. To compute the
thermodynamic state there, two auxiliary functions are provided:
**setDewState(sat)** and **setBubbleState(sat)**. They take an instance
of SaturationProperties as input. By default they are in one-phase, but
with the optional phase argument set to 2, the output is forced to be
just inside the phase boundary. This is only needed when derivatives
like cv are computed with are different on both sides of the boundaries.
The ususal steps to compute properties on the phase boundary are:

#. Declare an instance of ThermodynamicState, e.g., "ThermodynamicState
   dew".
#. Compute the state, using an instance of SaturationProperties, e.g.,
   dew = setDewState(sat)
#. Compute properties on the phase boundary to your full desire, e.g.,
   "cp\_d = specificHeatCapacityCp(dew)".

The sample model TestTwoPhaseStates test the extended properties

The same procedure can be used to compute properties at other state
points, e.g., when an isentropic reference state is computed.

::

Extends from Modelica.Media.Water.StandardWater (Water using the IF97
standard, explicit in p and h. Recommended for most applications).

Package Content
~~~~~~~~~~~~~~~

Name

Description

|Modelica.Media.Examples.TwoPhaseWater.BaseProperties|
`BaseProperties <Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater.BaseProperties>`_

Make StandardWater.BaseProperties non replaceable in order that
inheritance is possible in model ExtendedProperties

|Modelica.Media.Examples.TwoPhaseWater.ExtendedProperties|
`ExtendedProperties <Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater.ExtendedProperties>`_

plenty of two-phase properties

|Modelica.Media.Examples.TwoPhaseWater.TestTwoPhaseStates|
`TestTwoPhaseStates <Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater.TestTwoPhaseStates>`_

Test the above model

Inherited

|Modelica.Media.Water.WaterIF97\_base.ThermodynamicState|
`ThermodynamicState <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.ThermodynamicState>`_

thermodynamic state

ph\_explicit

true if explicit in pressure and specific enthalpy

dT\_explicit

true if explicit in density and temperature

pT\_explicit

true if explicit in pressure and temperature

|Modelica.Media.Water.WaterIF97\_base.density\_ph|
`density\_ph <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density_ph>`_

Computes density as a function of pressure and specific enthalpy

|Modelica.Media.Water.WaterIF97\_base.temperature\_ph|
`temperature\_ph <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.temperature_ph>`_

Computes temperature as a function of pressure and specific enthalpy

|Modelica.Media.Water.WaterIF97\_base.temperature\_ps|
`temperature\_ps <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.temperature_ps>`_

Compute temperature from pressure and specific enthalpy

|Modelica.Media.Water.WaterIF97\_base.density\_ps|
`density\_ps <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density_ps>`_

Computes density as a function of pressure and specific enthalpy

|Modelica.Media.Water.WaterIF97\_base.pressure\_dT|
`pressure\_dT <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.pressure_dT>`_

Computes pressure as a function of density and temperature

|Modelica.Media.Water.WaterIF97\_base.specificEnthalpy\_dT|
`specificEnthalpy\_dT <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificEnthalpy_dT>`_

Computes specific enthalpy as a function of density and temperature

|Modelica.Media.Water.WaterIF97\_base.specificEnthalpy\_pT|
`specificEnthalpy\_pT <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificEnthalpy_pT>`_

Computes specific enthalpy as a function of pressure and temperature

|Modelica.Media.Water.WaterIF97\_base.specificEnthalpy\_ps|
`specificEnthalpy\_ps <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificEnthalpy_ps>`_

Computes specific enthalpy as a function of pressure and temperature

|Modelica.Media.Water.WaterIF97\_base.density\_pT|
`density\_pT <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density_pT>`_

Computes density as a function of pressure and temperature

|Modelica.Media.Water.WaterIF97\_base.setDewState|
`setDewState <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setDewState>`_

set the thermodynamic state on the dew line

|Modelica.Media.Water.WaterIF97\_base.setBubbleState|
`setBubbleState <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setBubbleState>`_

set the thermodynamic state on the bubble line

|Modelica.Media.Water.WaterIF97\_base.dynamicViscosity|
`dynamicViscosity <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dynamicViscosity>`_

Dynamic viscosity of water

|Modelica.Media.Water.WaterIF97\_base.thermalConductivity|
`thermalConductivity <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.thermalConductivity>`_

Thermal conductivity of water

|Modelica.Media.Water.WaterIF97\_base.surfaceTension|
`surfaceTension <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.surfaceTension>`_

Surface tension in two phase region of water

|Modelica.Media.Water.WaterIF97\_base.pressure|
`pressure <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.pressure>`_

return pressure of ideal gas

|Modelica.Media.Water.WaterIF97\_base.temperature|
`temperature <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.temperature>`_

return temperature of ideal gas

|Modelica.Media.Water.WaterIF97\_base.density|
`density <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density>`_

return density of ideal gas

|Modelica.Media.Water.WaterIF97\_base.specificEnthalpy|
`specificEnthalpy <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificEnthalpy>`_

Return specific enthalpy

|Modelica.Media.Water.WaterIF97\_base.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificInternalEnergy>`_

Return specific internal energy

|Modelica.Media.Water.WaterIF97\_base.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificGibbsEnergy>`_

Return specific Gibbs energy

|Modelica.Media.Water.WaterIF97\_base.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificHelmholtzEnergy>`_

Return specific Helmholtz energy

|Modelica.Media.Water.WaterIF97\_base.specificEntropy|
`specificEntropy <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificEntropy>`_

specific entropy of water

|Modelica.Media.Water.WaterIF97\_base.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificHeatCapacityCp>`_

specific heat capacity at constant pressure of water

|Modelica.Media.Water.WaterIF97\_base.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificHeatCapacityCv>`_

specific heat capacity at constant volume of water

|Modelica.Media.Water.WaterIF97\_base.isentropicExponent|
`isentropicExponent <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.isentropicExponent>`_

Return isentropic exponent

|Modelica.Media.Water.WaterIF97\_base.isothermalCompressibility|
`isothermalCompressibility <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.isothermalCompressibility>`_

Isothermal compressibility of water

|Modelica.Media.Water.WaterIF97\_base.isobaricExpansionCoefficient|
`isobaricExpansionCoefficient <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.isobaricExpansionCoefficient>`_

isobaric expansion coefficient of water

|Modelica.Media.Water.WaterIF97\_base.velocityOfSound|
`velocityOfSound <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.velocityOfSound>`_

Return velocity of sound as a function of the thermodynamic state record

|Modelica.Media.Water.WaterIF97\_base.isentropicEnthalpy|
`isentropicEnthalpy <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.isentropicEnthalpy>`_

compute h(p,s)

|Modelica.Media.Water.WaterIF97\_base.density\_derh\_p|
`density\_derh\_p <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density_derh_p>`_

density derivative by specific enthalpy

|Modelica.Media.Water.WaterIF97\_base.density\_derp\_h|
`density\_derp\_h <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density_derp_h>`_

density derivative by pressure

|Modelica.Media.Water.WaterIF97\_base.bubbleEnthalpy|
`bubbleEnthalpy <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.bubbleEnthalpy>`_

boiling curve specific enthalpy of water

|Modelica.Media.Water.WaterIF97\_base.dewEnthalpy|
`dewEnthalpy <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dewEnthalpy>`_

dew curve specific enthalpy of water

|Modelica.Media.Water.WaterIF97\_base.bubbleEntropy|
`bubbleEntropy <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.bubbleEntropy>`_

boiling curve specific entropy of water

|Modelica.Media.Water.WaterIF97\_base.dewEntropy|
`dewEntropy <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dewEntropy>`_

dew curve specific entropy of water

|Modelica.Media.Water.WaterIF97\_base.bubbleDensity|
`bubbleDensity <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.bubbleDensity>`_

boiling curve specific density of water

|Modelica.Media.Water.WaterIF97\_base.dewDensity|
`dewDensity <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dewDensity>`_

dew curve specific density of water

|Modelica.Media.Water.WaterIF97\_base.saturationTemperature|
`saturationTemperature <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.saturationTemperature>`_

saturation temperature of water

|Modelica.Media.Water.WaterIF97\_base.saturationTemperature\_derp|
`saturationTemperature\_derp <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.saturationTemperature_derp>`_

derivative of saturation temperature w.r.t. pressure

|Modelica.Media.Water.WaterIF97\_base.saturationPressure|
`saturationPressure <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.saturationPressure>`_

saturation pressure of water

|Modelica.Media.Water.WaterIF97\_base.dBubbleDensity\_dPressure|
`dBubbleDensity\_dPressure <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dBubbleDensity_dPressure>`_

bubble point density derivative

|Modelica.Media.Water.WaterIF97\_base.dDewDensity\_dPressure|
`dDewDensity\_dPressure <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dDewDensity_dPressure>`_

dew point density derivative

|Modelica.Media.Water.WaterIF97\_base.dBubbleEnthalpy\_dPressure|
`dBubbleEnthalpy\_dPressure <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dBubbleEnthalpy_dPressure>`_

bubble point specific enthalpy derivative

|Modelica.Media.Water.WaterIF97\_base.dDewEnthalpy\_dPressure|
`dDewEnthalpy\_dPressure <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dDewEnthalpy_dPressure>`_

dew point specific enthalpy derivative

|Modelica.Media.Water.WaterIF97\_base.setState\_dTX|
`setState\_dTX <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setState_dTX>`_

Return thermodynamic state of water as function of d and T

|Modelica.Media.Water.WaterIF97\_base.setState\_phX|
`setState\_phX <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setState_phX>`_

Return thermodynamic state of water as function of p and h

|Modelica.Media.Water.WaterIF97\_base.setState\_psX|
`setState\_psX <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setState_psX>`_

Return thermodynamic state of water as function of p and s

|Modelica.Media.Water.WaterIF97\_base.setState\_pTX|
`setState\_pTX <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setState_pTX>`_

Return thermodynamic state of water as function of p and T

|Modelica.Media.Water.WaterIF97\_base.setSmoothState|
`setSmoothState <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

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

--------------

|image86| `Modelica.Media.Examples.TwoPhaseWater <Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater>`_.BaseProperties
----------------------------------------------------------------------------------------------------------------------------------------------------

**Make StandardWater.BaseProperties non replaceable in order that
inheritance is possible in model ExtendedProperties**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.BaseProperties>`_
(Base properties of water).

Parameters
~~~~~~~~~~

+------------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+
| Type             | Name                    | Default   | Description                                                                                       |
+==================+=========================+===========+===================================================================================================+
| Initialization   |
+------------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+
| Integer          | phase.start             | 1         | 2 for two-phase, 1 for one-phase, 0 if not known                                                  |
+------------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+
| **Advanced**     |
+------------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+
| Boolean          | preferredMediumStates   | false     | = true if StateSelect.prefer shall be used for the independent property variables of the medium   |
+------------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare model extends BaseProperties 
      "Make StandardWater.BaseProperties non replaceable in order that inheritance is possible in model ExtendedProperties"
    end BaseProperties;

--------------

|image87| `Modelica.Media.Examples.TwoPhaseWater <Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater>`_.ExtendedProperties
--------------------------------------------------------------------------------------------------------------------------------------------------------

**plenty of two-phase properties**

Information
~~~~~~~~~~~

Extends from
`BaseProperties <Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater.BaseProperties>`_
(Make StandardWater.BaseProperties non replaceable in order that
inheritance is possible in model ExtendedProperties).

Parameters
~~~~~~~~~~

+------------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+
| Type             | Name                    | Default   | Description                                                                                       |
+==================+=========================+===========+===================================================================================================+
| Initialization   |
+------------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+
| Integer          | phase.start             | 1         | 2 for two-phase, 1 for one-phase, 0 if not known                                                  |
+------------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+
| **Advanced**     |
+------------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+
| Boolean          | preferredMediumStates   | false     | = true if StateSelect.prefer shall be used for the independent property variables of the medium   |
+------------------+-------------------------+-----------+---------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ExtendedProperties "plenty of two-phase properties"
      extends BaseProperties;
      ThermodynamicState dew "dew line Properties";
      ThermodynamicState bubble "bubble line Properties";
      ThermodynamicState bubble2 "bubble line Properties, on the 2-phase side";
      DynamicViscosity eta "viscosity (McAdams mixture rules if in 2-phase)";
      DynamicViscosity eta_d "dew line viscosity";
      DynamicViscosity eta_b "bubble line viscosity";
      ThermalConductivity lambda_d "dew line thermal conductivity";
      ThermalConductivity lambda_b "bubble line thermal conductivity";
      SpecificHeatCapacity cp_d "dew line Specific heat capacity";
      SpecificHeatCapacity cp_b "bubble line Specific heat capacity";
      Real ddhp;
      Real ddhp_d;
      Real ddhp_b "derivatives";
      Real ddph;
      Real ddph_d;
      Real ddph_b "derivatives";
      Real ddhp_b2;
      Real ddph_b2 "derivatives";
      // no derivatives yet, ... sat should be temporary
      MassFraction x "steam mass fraction";
      Real dTp;
      Real dTp2;
      SpecificEntropy s_b;
      SpecificEntropy s_d;
    equation 
      eta = if phase == 1 then dynamicViscosity(state) else 1/(x/eta_d + (1 - x)
        /eta_b);
      dew =  setDewState(sat);
      bubble =  setBubbleState(sat);
      bubble2 =  setBubbleState(sat,2);
      x = (h - bubble.h)/max(dew.h - bubble.h,1e-6);
      eta_d = dynamicViscosity(dew);
      eta_b = dynamicViscosity(bubble);
      lambda_d = thermalConductivity(dew);
      lambda_b = thermalConductivity(bubble);
      cp_d = specificHeatCapacityCp(dew);
      cp_b = specificHeatCapacityCp(bubble);
      s_d = specificEntropy(dew);
      s_b = specificEntropy(bubble);
      ddph = density_derp_h(state);
      ddph_d = density_derp_h(dew);
      ddph_b = density_derp_h(bubble);
      ddhp = density_derh_p(state);
      ddhp_d = density_derh_p(dew);
      ddhp_b = density_derh_p(bubble);
      ddhp_b2 = density_derh_p(bubble2);
      ddph_b2 = density_derp_h(bubble2);
      dTp = saturationTemperature_derp(p);
      dTp2 = (1/dew.d - 1/bubble.d)/max(s_d - s_b,1e-6);
    end ExtendedProperties;

--------------

|image88| `Modelica.Media.Examples.TwoPhaseWater <Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater>`_.TestTwoPhaseStates
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Test the above model**

Information
~~~~~~~~~~~

::

For details see the documentation of the example package TwoPhaseWater

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+--------+--------+-----------+----------------------+
| Type   | Name   | Default   | Description          |
+========+========+===========+======================+
| Real   | dh     | 80000.0   | 80 kJ/second         |
+--------+--------+-----------+----------------------+
| Real   | dp     | 1.0e6     | 10 bars per second   |
+--------+--------+-----------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TestTwoPhaseStates "Test the above model"
      extends Modelica.Icons.Example;
      ExtendedProperties medium(p(start = 700.0),
       h(start = 8.0e5));
      parameter Real dh = 80000.0 "80 kJ/second";
      parameter Real dp = 1.0e6 "10 bars per second";
    equation 
      der(medium.p) = dp;
      der(medium.h) = dh;
    end TestTwoPhaseStates;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:26
2010.

.. |Modelica.Media.Examples.TwoPhaseWater.BaseProperties| image:: Modelica.Media.Examples.TwoPhaseWater.BasePropertiesS.png
.. |Modelica.Media.Examples.TwoPhaseWater.ExtendedProperties| image:: Modelica.Media.Examples.TwoPhaseWater.BasePropertiesS.png
.. |Modelica.Media.Examples.TwoPhaseWater.TestTwoPhaseStates| image:: Modelica.Media.Examples.TwoPhaseWater.TestTwoPhaseStatesS.png
.. |Modelica.Media.Water.WaterIF97\_base.ThermodynamicState| image:: Modelica.Media.Water.WaterIF97_base.ThermodynamicStateS.png
.. |Modelica.Media.Water.WaterIF97\_base.density\_ph| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.temperature\_ph| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.temperature\_ps| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.density\_ps| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.pressure\_dT| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.specificEnthalpy\_dT| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.specificEnthalpy\_pT| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.specificEnthalpy\_ps| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.density\_pT| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.setDewState| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.setBubbleState| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.dynamicViscosity| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.thermalConductivity| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.surfaceTension| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.pressure| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.temperature| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.density| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.specificEnthalpy| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.specificInternalEnergy| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.specificGibbsEnergy| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.specificHelmholtzEnergy| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.specificEntropy| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.specificHeatCapacityCp| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.specificHeatCapacityCv| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.isentropicExponent| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.isothermalCompressibility| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.isobaricExpansionCoefficient| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.velocityOfSound| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.isentropicEnthalpy| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.density\_derh\_p| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.density\_derp\_h| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.bubbleEnthalpy| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.dewEnthalpy| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.bubbleEntropy| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.dewEntropy| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.bubbleDensity| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.dewDensity| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.saturationTemperature| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.saturationTemperature\_derp| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.saturationPressure| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.dBubbleDensity\_dPressure| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.dDewDensity\_dPressure| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.dBubbleEnthalpy\_dPressure| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.dDewEnthalpy\_dPressure| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.setState\_dTX| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.setState\_phX| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.setState\_psX| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.setState\_pTX| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Water.WaterIF97\_base.setSmoothState| image:: Modelica.Media.Water.WaterIF97_base.density_phS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimits| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidConstants| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png
.. |Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_T| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png
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
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
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
.. |image86| image:: Modelica.Media.Examples.TwoPhaseWater.BasePropertiesI.png
.. |image87| image:: Modelica.Media.Examples.TwoPhaseWater.BasePropertiesI.png
.. |image88| image:: Modelica.Media.Examples.TwoPhaseWater.TestTwoPhaseStatesI.png
