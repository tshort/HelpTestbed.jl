% Modelica.Media.Examples.TwoPhaseWater
% 
% 

[Modelica.Media.Examples](Modelica_Media_Examples.html#Modelica.Media.Examples).TwoPhaseWater
=============================================================================================

**extension of the StandardWater package**

Information
-----------

::

### Example: TwoPhaseWater

The TwoPhaseWater package demonstrates how to extend the parsimonius
BaseProperties with a minimal set of properties from the standard water
package with most properties that are needed in two-phase situations.
The model also demonstrates how to compute additional properties for the
medium model. In this scenario, that builds a new medium model with many
more properties than the default, the standard BaseProperties is used as
a basis. For additional properties, a user has to:

1.  Declare a new variable of the wanted type, e.g., "DynamicViscosity
    eta".
2.  Compute that variable by calling the function form the package,
    e.g., eta = dynamicViscosity(state). Note that the instance of
    ThermodynamicState is used as an input to the function. This
    instance "state" is declared in PartialMedium and thus available in
    every medium model. A user does not have to know what actual
    variables are required to compute the dynamic viscosity, because the
    state instance is guaranteed to contain what is needed.
3.  Attention: Many properties are not well defined in the two phase
    region and the functions might return undesired values if called
    there. It is the user's responsibility to take care of such
    ituations. The example uses one of several possible models to
    compute an averaged viscosity for two-phase flows.

In two phase models, properties are often needed on the phase boundary
just outside the two phase dome, right on the border.. To compute the
thermodynamic state there, two auxiliary functions are provided:
**setDewState(sat)** and **setBubbleState(sat)**. They take an instance
of SaturationProperties as input. By default they are in one-phase, but
with the optional phase argument set to 2, the output is forced to be
just inside the phase boundary. This is only needed when derivatives
like cv are computed with are different on both sides of the boundaries.
The ususal steps to compute properties on the phase boundary are:

1.  Declare an instance of ThermodynamicState, e.g., "ThermodynamicState
    dew".
2.  Compute the state, using an instance of SaturationProperties, e.g.,
    dew = setDewState(sat)
3.  Compute properties on the phase boundary to your full desire, e.g.,
    "cp\_d = specificHeatCapacityCp(dew)".

The sample model TestTwoPhaseStates test the extended properties

The same procedure can be used to compute properties at other state
points, e.g., when an isentropic reference state is computed.

::

Extends from Modelica.Media.Water.StandardWater (Water using the IF97
standard, explicit in p and h. Recommended for most applications).

Package Content
---------------

Name

Description

![Modelica.Media.Examples.TwoPhaseWater.BaseProperties](Modelica.Media.Examples.TwoPhaseWater.BasePropertiesS.png)
[BaseProperties](Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater.BaseProperties)

Make StandardWater.BaseProperties non replaceable in order that
inheritance is possible in model ExtendedProperties

![Modelica.Media.Examples.TwoPhaseWater.ExtendedProperties](Modelica.Media.Examples.TwoPhaseWater.BasePropertiesS.png)
[ExtendedProperties](Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater.ExtendedProperties)

plenty of two-phase properties

![Modelica.Media.Examples.TwoPhaseWater.TestTwoPhaseStates](Modelica.Media.Examples.TwoPhaseWater.TestTwoPhaseStatesS.png)
[TestTwoPhaseStates](Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater.TestTwoPhaseStates)

Test the above model

Inherited

![Modelica.Media.Water.WaterIF97\_base.ThermodynamicState](Modelica.Media.Water.WaterIF97_base.ThermodynamicStateS.png)
[ThermodynamicState](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.ThermodynamicState)

thermodynamic state

ph\_explicit

true if explicit in pressure and specific enthalpy

dT\_explicit

true if explicit in density and temperature

pT\_explicit

true if explicit in pressure and temperature

![Modelica.Media.Water.WaterIF97\_base.density\_ph](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[density\_ph](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density_ph)

Computes density as a function of pressure and specific enthalpy

![Modelica.Media.Water.WaterIF97\_base.temperature\_ph](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[temperature\_ph](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.temperature_ph)

Computes temperature as a function of pressure and specific enthalpy

![Modelica.Media.Water.WaterIF97\_base.temperature\_ps](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[temperature\_ps](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.temperature_ps)

Compute temperature from pressure and specific enthalpy

![Modelica.Media.Water.WaterIF97\_base.density\_ps](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[density\_ps](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density_ps)

Computes density as a function of pressure and specific enthalpy

![Modelica.Media.Water.WaterIF97\_base.pressure\_dT](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[pressure\_dT](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.pressure_dT)

Computes pressure as a function of density and temperature

![Modelica.Media.Water.WaterIF97\_base.specificEnthalpy\_dT](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[specificEnthalpy\_dT](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificEnthalpy_dT)

Computes specific enthalpy as a function of density and temperature

![Modelica.Media.Water.WaterIF97\_base.specificEnthalpy\_pT](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[specificEnthalpy\_pT](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificEnthalpy_pT)

Computes specific enthalpy as a function of pressure and temperature

![Modelica.Media.Water.WaterIF97\_base.specificEnthalpy\_ps](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[specificEnthalpy\_ps](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificEnthalpy_ps)

Computes specific enthalpy as a function of pressure and temperature

![Modelica.Media.Water.WaterIF97\_base.density\_pT](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[density\_pT](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density_pT)

Computes density as a function of pressure and temperature

![Modelica.Media.Water.WaterIF97\_base.setDewState](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[setDewState](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setDewState)

set the thermodynamic state on the dew line

![Modelica.Media.Water.WaterIF97\_base.setBubbleState](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[setBubbleState](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setBubbleState)

set the thermodynamic state on the bubble line

![Modelica.Media.Water.WaterIF97\_base.dynamicViscosity](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[dynamicViscosity](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dynamicViscosity)

Dynamic viscosity of water

![Modelica.Media.Water.WaterIF97\_base.thermalConductivity](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[thermalConductivity](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.thermalConductivity)

Thermal conductivity of water

![Modelica.Media.Water.WaterIF97\_base.surfaceTension](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[surfaceTension](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.surfaceTension)

Surface tension in two phase region of water

![Modelica.Media.Water.WaterIF97\_base.pressure](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[pressure](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.pressure)

return pressure of ideal gas

![Modelica.Media.Water.WaterIF97\_base.temperature](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[temperature](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.temperature)

return temperature of ideal gas

![Modelica.Media.Water.WaterIF97\_base.density](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[density](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density)

return density of ideal gas

![Modelica.Media.Water.WaterIF97\_base.specificEnthalpy](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[specificEnthalpy](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificEnthalpy)

Return specific enthalpy

![Modelica.Media.Water.WaterIF97\_base.specificInternalEnergy](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[specificInternalEnergy](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificInternalEnergy)

Return specific internal energy

![Modelica.Media.Water.WaterIF97\_base.specificGibbsEnergy](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[specificGibbsEnergy](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificGibbsEnergy)

Return specific Gibbs energy

![Modelica.Media.Water.WaterIF97\_base.specificHelmholtzEnergy](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[specificHelmholtzEnergy](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificHelmholtzEnergy)

Return specific Helmholtz energy

![Modelica.Media.Water.WaterIF97\_base.specificEntropy](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[specificEntropy](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificEntropy)

specific entropy of water

![Modelica.Media.Water.WaterIF97\_base.specificHeatCapacityCp](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[specificHeatCapacityCp](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificHeatCapacityCp)

specific heat capacity at constant pressure of water

![Modelica.Media.Water.WaterIF97\_base.specificHeatCapacityCv](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[specificHeatCapacityCv](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.specificHeatCapacityCv)

specific heat capacity at constant volume of water

![Modelica.Media.Water.WaterIF97\_base.isentropicExponent](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[isentropicExponent](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.isentropicExponent)

Return isentropic exponent

![Modelica.Media.Water.WaterIF97\_base.isothermalCompressibility](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[isothermalCompressibility](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.isothermalCompressibility)

Isothermal compressibility of water

![Modelica.Media.Water.WaterIF97\_base.isobaricExpansionCoefficient](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[isobaricExpansionCoefficient](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.isobaricExpansionCoefficient)

isobaric expansion coefficient of water

![Modelica.Media.Water.WaterIF97\_base.velocityOfSound](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[velocityOfSound](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.velocityOfSound)

Return velocity of sound as a function of the thermodynamic state record

![Modelica.Media.Water.WaterIF97\_base.isentropicEnthalpy](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[isentropicEnthalpy](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.isentropicEnthalpy)

compute h(p,s)

![Modelica.Media.Water.WaterIF97\_base.density\_derh\_p](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[density\_derh\_p](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density_derh_p)

density derivative by specific enthalpy

![Modelica.Media.Water.WaterIF97\_base.density\_derp\_h](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[density\_derp\_h](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.density_derp_h)

density derivative by pressure

![Modelica.Media.Water.WaterIF97\_base.bubbleEnthalpy](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[bubbleEnthalpy](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.bubbleEnthalpy)

boiling curve specific enthalpy of water

![Modelica.Media.Water.WaterIF97\_base.dewEnthalpy](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[dewEnthalpy](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dewEnthalpy)

dew curve specific enthalpy of water

![Modelica.Media.Water.WaterIF97\_base.bubbleEntropy](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[bubbleEntropy](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.bubbleEntropy)

boiling curve specific entropy of water

![Modelica.Media.Water.WaterIF97\_base.dewEntropy](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[dewEntropy](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dewEntropy)

dew curve specific entropy of water

![Modelica.Media.Water.WaterIF97\_base.bubbleDensity](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[bubbleDensity](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.bubbleDensity)

boiling curve specific density of water

![Modelica.Media.Water.WaterIF97\_base.dewDensity](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[dewDensity](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dewDensity)

dew curve specific density of water

![Modelica.Media.Water.WaterIF97\_base.saturationTemperature](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[saturationTemperature](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.saturationTemperature)

saturation temperature of water

![Modelica.Media.Water.WaterIF97\_base.saturationTemperature\_derp](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[saturationTemperature\_derp](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.saturationTemperature_derp)

derivative of saturation temperature w.r.t. pressure

![Modelica.Media.Water.WaterIF97\_base.saturationPressure](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[saturationPressure](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.saturationPressure)

saturation pressure of water

![Modelica.Media.Water.WaterIF97\_base.dBubbleDensity\_dPressure](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[dBubbleDensity\_dPressure](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dBubbleDensity_dPressure)

bubble point density derivative

![Modelica.Media.Water.WaterIF97\_base.dDewDensity\_dPressure](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[dDewDensity\_dPressure](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dDewDensity_dPressure)

dew point density derivative

![Modelica.Media.Water.WaterIF97\_base.dBubbleEnthalpy\_dPressure](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[dBubbleEnthalpy\_dPressure](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dBubbleEnthalpy_dPressure)

bubble point specific enthalpy derivative

![Modelica.Media.Water.WaterIF97\_base.dDewEnthalpy\_dPressure](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[dDewEnthalpy\_dPressure](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.dDewEnthalpy_dPressure)

dew point specific enthalpy derivative

![Modelica.Media.Water.WaterIF97\_base.setState\_dTX](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[setState\_dTX](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setState_dTX)

Return thermodynamic state of water as function of d and T

![Modelica.Media.Water.WaterIF97\_base.setState\_phX](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[setState\_phX](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setState_phX)

Return thermodynamic state of water as function of p and h

![Modelica.Media.Water.WaterIF97\_base.setState\_psX](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[setState\_psX](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setState_psX)

Return thermodynamic state of water as function of p and s

![Modelica.Media.Water.WaterIF97\_base.setState\_pTX](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[setState\_pTX](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setState_pTX)

Return thermodynamic state of water as function of p and T

![Modelica.Media.Water.WaterIF97\_base.setSmoothState](Modelica.Media.Water.WaterIF97_base.density_phS.png)
[setSmoothState](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

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

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties](Modelica.Media.Interfaces.PartialTwoPhaseMedium.FluidLimitsS.png)
[SaturationProperties](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.SaturationProperties)

Saturation properties of two phase medium

[FixedPhase](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.FixedPhase)

phase of the fluid: 1 for 1-phase, 2 for two-phase, 0 for not known,
e.g., interactive use

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_T](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[setSat\_T](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_T)

Return saturation property record from temperature

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_p](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[setSat\_p](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_p)

Return saturation property record from pressure

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure\_sat](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[saturationPressure\_sat](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure_sat)

Return saturation temperature

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_sat](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[saturationTemperature\_sat](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_sat)

Return saturation temperature

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature\_derp\_sat](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[saturationTemperature\_derp\_sat](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_derp_sat)

Return derivative of saturation temperature w.r.t. pressure

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.molarMass](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat_TS.png)
[molarMass](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.molarMass)

Return the molar mass of the medium

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

![Modelica.Media.Interfaces.PartialMedium.prandtlNumber](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
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

* * * * *

![image86](Modelica.Media.Examples.TwoPhaseWater.BasePropertiesI.png) [Modelica.Media.Examples.TwoPhaseWater](Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater).BaseProperties
==============================================================================================================================================================================================================

**Make StandardWater.BaseProperties non replaceable in order that
inheritance is possible in model ExtendedProperties**

Information
-----------

Extends from
[](Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base.BaseProperties)
(Base properties of water).

Parameters
----------

  ------------------------------------------------------------------------
  Type     Name        Defau Description
                       lt    
  -------- ----------- ----- ---------------------------------------------
  Initiali                   
  zation                     

  Integer  phase.start 1     2 for two-phase, 1 for one-phase, 0 if not
                             known

  **Advanc                   
  ed**                       

  Boolean  preferredMe false = true if StateSelect.prefer shall be used
           diumStates        for the independent property variables of the
                             medium
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare model extends BaseProperties 
      "Make StandardWater.BaseProperties non replaceable in order that inheritance is possible in model ExtendedProperties"
    end BaseProperties;

* * * * *

![image87](Modelica.Media.Examples.TwoPhaseWater.BasePropertiesI.png) [Modelica.Media.Examples.TwoPhaseWater](Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater).ExtendedProperties
==================================================================================================================================================================================================================

**plenty of two-phase properties**

Information
-----------

Extends from
[BaseProperties](Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater.BaseProperties)
(Make StandardWater.BaseProperties non replaceable in order that
inheritance is possible in model ExtendedProperties).

Parameters
----------

  ------------------------------------------------------------------------
  Type     Name        Defau Description
                       lt    
  -------- ----------- ----- ---------------------------------------------
  Initiali                   
  zation                     

  Integer  phase.start 1     2 for two-phase, 1 for one-phase, 0 if not
                             known

  **Advanc                   
  ed**                       

  Boolean  preferredMe false = true if StateSelect.prefer shall be used
           diumStates        for the independent property variables of the
                             medium
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image88](Modelica.Media.Examples.TwoPhaseWater.TestTwoPhaseStatesI.png) [Modelica.Media.Examples.TwoPhaseWater](Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater).TestTwoPhaseStates
======================================================================================================================================================================================================================

**Test the above model**

Information
-----------

::

For details see the documentation of the example package TwoPhaseWater

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  Type      Name      Default      Description
  --------- --------- ------------ -----------------------
  Real      dh        80000.0      80 kJ/second
  Real      dp        1.0e6        10 bars per second

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:26 2010.
