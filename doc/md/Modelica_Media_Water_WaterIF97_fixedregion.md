% Modelica.Media.Water.WaterIF97\_fixedregion
% 
% 

[Modelica.Media.Water](Modelica_Media_Water.html#Modelica.Media.Water).WaterIF97\_fixedregion
=============================================================================================

**Water: Steam properties as defined by IAPWS/IF97 standard**

Information
-----------

::

This model calculates medium properties for water in the **liquid**,
**gas** and **two phase** regions according to the IAPWS/IF97 standard,
i.e., the accepted industrial standard and best compromise between
accuracy and computation time. For more details see
[Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).
Three variable pairs can be the independent variables of the model:

1.  Pressure **p** and specific enthalpy **h** are the most natural
    choice for general applications. This is the recommended choice for
    most general purpose applications, in particular for power plants.
2.  Pressure **p** and temperature **T** are the most natural choice for
    applications where water is always in the same phase, both for
    liquid water and steam.
3.  Density **d** and temperature **T** are explicit variables of the
    Helmholtz function in the near-critical region and can be the best
    choice for applications with super-critical or near-critial states.

The following quantities are always computed:

  ----------------- ------------- -----------------------------
  **Variable**      **Unit**      **Description**
  T                 K             temperature
  u                 J/kg          specific internal energy
  d                 kg/m\^3       density
  p                 Pa            pressure
  h                 J/kg          specific enthalpy
  ----------------- ------------- -----------------------------

In some cases additional medium properties are needed. A component that
needs these optional properties has to call one of the functions listed
in
[Modelica.Media.UsersGuide.MediumUsage.OptionalProperties](Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage.OptionalProperties)
and in
[Modelica.Media.UsersGuide.MediumUsage.TwoPhase](Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage.TwoPhase).

Many further properties can be computed. Using the well-known Bridgman's
Tables, all first partial derivatives of the standard thermodynamic
variables can be computed easily.

::

Extends from
[Interfaces.PartialTwoPhaseMedium](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium)
(Base class for two phase medium of one substance).

Package Content
---------------

Name

Description

![Modelica.Media.Water.WaterIF97\_fixedregion.ThermodynamicState](Modelica.Media.Water.WaterIF97_fixedregion.ThermodynamicStateS.png)
[ThermodynamicState](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.ThermodynamicState)

thermodynamic state

Region

region of IF97, if known

ph\_explicit

true if explicit in pressure and specific enthalpy

dT\_explicit

true if explicit in density and temperature

pT\_explicit

true if explicit in pressure and temperature

![Modelica.Media.Water.WaterIF97\_fixedregion.BaseProperties](Modelica.Media.Water.WaterIF97_fixedregion.BasePropertiesS.png)
[BaseProperties](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.BaseProperties)

Base properties of water

![Modelica.Media.Water.WaterIF97\_fixedregion.density\_ph](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[density\_ph](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density_ph)

Computes density as a function of pressure and specific enthalpy

![Modelica.Media.Water.WaterIF97\_fixedregion.temperature\_ph](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[temperature\_ph](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.temperature_ph)

Computes temperature as a function of pressure and specific enthalpy

![Modelica.Media.Water.WaterIF97\_fixedregion.temperature\_ps](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[temperature\_ps](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.temperature_ps)

Compute temperature from pressure and specific enthalpy

![Modelica.Media.Water.WaterIF97\_fixedregion.density\_ps](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[density\_ps](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density_ps)

Computes density as a function of pressure and specific enthalpy

![Modelica.Media.Water.WaterIF97\_fixedregion.pressure\_dT](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[pressure\_dT](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.pressure_dT)

Computes pressure as a function of density and temperature

![Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy\_dT](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[specificEnthalpy\_dT](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificEnthalpy_dT)

Computes specific enthalpy as a function of density and temperature

![Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy\_pT](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[specificEnthalpy\_pT](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificEnthalpy_pT)

Computes specific enthalpy as a function of pressure and temperature

![Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy\_ps](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[specificEnthalpy\_ps](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificEnthalpy_ps)

Computes specific enthalpy as a function of pressure and temperature

![Modelica.Media.Water.WaterIF97\_fixedregion.density\_pT](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[density\_pT](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density_pT)

Computes density as a function of pressure and temperature

![Modelica.Media.Water.WaterIF97\_fixedregion.setDewState](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[setDewState](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setDewState)

set the thermodynamic state on the dew line

![Modelica.Media.Water.WaterIF97\_fixedregion.setBubbleState](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[setBubbleState](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setBubbleState)

set the thermodynamic state on the bubble line

![Modelica.Media.Water.WaterIF97\_fixedregion.dynamicViscosity](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[dynamicViscosity](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dynamicViscosity)

Dynamic viscosity of water

![Modelica.Media.Water.WaterIF97\_fixedregion.thermalConductivity](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[thermalConductivity](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.thermalConductivity)

Thermal conductivity of water

![Modelica.Media.Water.WaterIF97\_fixedregion.surfaceTension](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[surfaceTension](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.surfaceTension)

Surface tension in two phase region of water

![Modelica.Media.Water.WaterIF97\_fixedregion.pressure](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[pressure](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.pressure)

return pressure of ideal gas

![Modelica.Media.Water.WaterIF97\_fixedregion.temperature](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[temperature](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.temperature)

return temperature of ideal gas

![Modelica.Media.Water.WaterIF97\_fixedregion.density](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[density](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density)

return density of ideal gas

![Modelica.Media.Water.WaterIF97\_fixedregion.specificEnthalpy](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[specificEnthalpy](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificEnthalpy)

Return specific enthalpy

![Modelica.Media.Water.WaterIF97\_fixedregion.specificInternalEnergy](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[specificInternalEnergy](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificInternalEnergy)

Return specific internal energy

![Modelica.Media.Water.WaterIF97\_fixedregion.specificGibbsEnergy](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[specificGibbsEnergy](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificGibbsEnergy)

Return specific Gibbs energy

![Modelica.Media.Water.WaterIF97\_fixedregion.specificHelmholtzEnergy](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[specificHelmholtzEnergy](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificHelmholtzEnergy)

Return specific Helmholtz energy

![Modelica.Media.Water.WaterIF97\_fixedregion.specificEntropy](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[specificEntropy](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificEntropy)

specific entropy of water

![Modelica.Media.Water.WaterIF97\_fixedregion.specificHeatCapacityCp](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[specificHeatCapacityCp](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificHeatCapacityCp)

specific heat capacity at constant pressure of water

![Modelica.Media.Water.WaterIF97\_fixedregion.specificHeatCapacityCv](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[specificHeatCapacityCv](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.specificHeatCapacityCv)

specific heat capacity at constant volume of water

![Modelica.Media.Water.WaterIF97\_fixedregion.isentropicExponent](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[isentropicExponent](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.isentropicExponent)

Return isentropic exponent

![Modelica.Media.Water.WaterIF97\_fixedregion.isothermalCompressibility](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[isothermalCompressibility](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.isothermalCompressibility)

Isothermal compressibility of water

![Modelica.Media.Water.WaterIF97\_fixedregion.isobaricExpansionCoefficient](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[isobaricExpansionCoefficient](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.isobaricExpansionCoefficient)

isobaric expansion coefficient of water

![Modelica.Media.Water.WaterIF97\_fixedregion.velocityOfSound](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[velocityOfSound](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.velocityOfSound)

Return velocity of sound as a function of the thermodynamic state record

![Modelica.Media.Water.WaterIF97\_fixedregion.isentropicEnthalpy](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[isentropicEnthalpy](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.isentropicEnthalpy)

compute h(s,p)

![Modelica.Media.Water.WaterIF97\_fixedregion.density\_derh\_p](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[density\_derh\_p](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density_derh_p)

density derivative by specific enthalpy

![Modelica.Media.Water.WaterIF97\_fixedregion.density\_derp\_h](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[density\_derp\_h](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.density_derp_h)

density derivative by pressure

![Modelica.Media.Water.WaterIF97\_fixedregion.bubbleEnthalpy](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[bubbleEnthalpy](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.bubbleEnthalpy)

boiling curve specific enthalpy of water

![Modelica.Media.Water.WaterIF97\_fixedregion.dewEnthalpy](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[dewEnthalpy](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dewEnthalpy)

dew curve specific enthalpy of water

![Modelica.Media.Water.WaterIF97\_fixedregion.bubbleEntropy](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[bubbleEntropy](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.bubbleEntropy)

boiling curve specific entropy of water

![Modelica.Media.Water.WaterIF97\_fixedregion.dewEntropy](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[dewEntropy](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dewEntropy)

dew curve specific entropy of water

![Modelica.Media.Water.WaterIF97\_fixedregion.bubbleDensity](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[bubbleDensity](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.bubbleDensity)

boiling curve specific density of water

![Modelica.Media.Water.WaterIF97\_fixedregion.dewDensity](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[dewDensity](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dewDensity)

dew curve specific density of water

![Modelica.Media.Water.WaterIF97\_fixedregion.saturationTemperature](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[saturationTemperature](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.saturationTemperature)

saturation temperature of water

![Modelica.Media.Water.WaterIF97\_fixedregion.saturationTemperature\_derp](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[saturationTemperature\_derp](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.saturationTemperature_derp)

derivative of saturation temperature w.r.t. pressure

![Modelica.Media.Water.WaterIF97\_fixedregion.saturationPressure](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[saturationPressure](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.saturationPressure)

saturation pressure of water

![Modelica.Media.Water.WaterIF97\_fixedregion.dBubbleDensity\_dPressure](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[dBubbleDensity\_dPressure](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dBubbleDensity_dPressure)

bubble point density derivative

![Modelica.Media.Water.WaterIF97\_fixedregion.dDewDensity\_dPressure](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[dDewDensity\_dPressure](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dDewDensity_dPressure)

dew point density derivative

![Modelica.Media.Water.WaterIF97\_fixedregion.dBubbleEnthalpy\_dPressure](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[dBubbleEnthalpy\_dPressure](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dBubbleEnthalpy_dPressure)

bubble point specific enthalpy derivative

![Modelica.Media.Water.WaterIF97\_fixedregion.dDewEnthalpy\_dPressure](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[dDewEnthalpy\_dPressure](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.dDewEnthalpy_dPressure)

dew point specific enthalpy derivative

![Modelica.Media.Water.WaterIF97\_fixedregion.setState\_dTX](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[setState\_dTX](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setState_dTX)

Return thermodynamic state of water as function of d, T, and optional
region

![Modelica.Media.Water.WaterIF97\_fixedregion.setState\_phX](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[setState\_phX](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setState_phX)

Return thermodynamic state of water as function of p, h, and optional
region

![Modelica.Media.Water.WaterIF97\_fixedregion.setState\_psX](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[setState\_psX](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setState_psX)

Return thermodynamic state of water as function of p, s, and optional
region

![Modelica.Media.Water.WaterIF97\_fixedregion.setState\_pTX](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[setState\_pTX](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setState_pTX)

Return thermodynamic state of water as function of p, T, and optional
region

![Modelica.Media.Water.WaterIF97\_fixedregion.setSmoothState](Modelica.Media.Water.WaterIF97_fixedregion.density_phS.png)
[setSmoothState](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

Inherited

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

![Modelica.Media.Interfaces.PartialTwoPhaseMedium.setSat\_T](Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewStateS.png)
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

    constant Integer Region "region of IF97, if known";

    constant Boolean ph_explicit 
    "true if explicit in pressure and specific enthalpy";

    constant Boolean dT_explicit "true if explicit in density and temperature";

    constant Boolean pT_explicit "true if explicit in pressure and temperature";

* * * * *

![image84](Modelica.Media.Water.WaterIF97_fixedregion.ThermodynamicStateI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).ThermodynamicState
===========================================================================================================================================================================================================================================

**thermodynamic state**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.ThermodynamicState)
(Thermodynamic state of two phase medium).

Modelica definition
-------------------

    redeclare record extends ThermodynamicState "thermodynamic state"
      SpecificEnthalpy h "specific enthalpy";
      Density d "density";
      Temperature T "temperature";
      AbsolutePressure p "pressure";
    end ThermodynamicState;

* * * * *

![image85](Modelica.Media.Water.WaterIF97_fixedregion.BasePropertiesI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).BaseProperties
===================================================================================================================================================================================================================================

**Base properties of water**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.BaseProperties)
(Base properties (p, d, T, h, u, R, MM, sat) of two phase medium).

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

* * * * *

![image86](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).density\_ph
============================================================================================================================================================================================================================

**Computes density as a function of pressure and specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                         Nam Defa Description
                                               e   ult  
  -------------------------------------------- --- ---- --------------------
  [AbsolutePressure](Modelica_Media_Interfaces p        Pressure [Pa]
  _PartialMedium.html#Modelica.Media.Interface          
  s.PartialMedium.AbsolutePressure)                     

  [SpecificEnthalpy](Modelica_Media_Interfaces h        Specific enthalpy
  _PartialMedium.html#Modelica.Media.Interface          [J/kg]
  s.PartialMedium.SpecificEnthalpy)                     

  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0    2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se       for one-phase, 0 if
  ces.PartialTwoPhaseMedium.FixedPhase)                 not known

  Integer                                      reg 0    if 0, region is
                                               ion      unknown, otherwise
                                                        known and this input
  --------------------------------------------------------------------------

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

* * * * *

![image87](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).temperature\_ph
================================================================================================================================================================================================================================

**Computes temperature as a function of pressure and specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                         Nam Defa Description
                                               e   ult  
  -------------------------------------------- --- ---- --------------------
  [AbsolutePressure](Modelica_Media_Interfaces p        Pressure [Pa]
  _PartialMedium.html#Modelica.Media.Interface          
  s.PartialMedium.AbsolutePressure)                     

  [SpecificEnthalpy](Modelica_Media_Interfaces h        Specific enthalpy
  _PartialMedium.html#Modelica.Media.Interface          [J/kg]
  s.PartialMedium.SpecificEnthalpy)                     

  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0    2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se       for one-phase, 0 if
  ces.PartialTwoPhaseMedium.FixedPhase)                 not known

  Integer                                      reg 0    if 0, region is
                                               ion      unknown, otherwise
                                                        known and this input
  --------------------------------------------------------------------------

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

* * * * *

![image88](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).temperature\_ps
================================================================================================================================================================================================================================

**Compute temperature from pressure and specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                         Nam Defa Description
                                               e   ult  
  -------------------------------------------- --- ---- --------------------
  [AbsolutePressure](Modelica_Media_Interfaces p        Pressure [Pa]
  _PartialMedium.html#Modelica.Media.Interface          
  s.PartialMedium.AbsolutePressure)                     

  [SpecificEntropy](Modelica_Media_Interfaces_ s        Specific entropy
  PartialMedium.html#Modelica.Media.Interfaces          [J/(kg.K)]
  .PartialMedium.SpecificEntropy)                       

  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0    2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se       for one-phase, 0 if
  ces.PartialTwoPhaseMedium.FixedPhase)                 not known

  Integer                                      reg 0    if 0, region is
                                               ion      unknown, otherwise
                                                        known and this input
  --------------------------------------------------------------------------

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

* * * * *

![image89](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).density\_ps
============================================================================================================================================================================================================================

**Computes density as a function of pressure and specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                         Nam Defa Description
                                               e   ult  
  -------------------------------------------- --- ---- --------------------
  [AbsolutePressure](Modelica_Media_Interfaces p        Pressure [Pa]
  _PartialMedium.html#Modelica.Media.Interface          
  s.PartialMedium.AbsolutePressure)                     

  [SpecificEntropy](Modelica_Media_Interfaces_ s        Specific entropy
  PartialMedium.html#Modelica.Media.Interfaces          [J/(kg.K)]
  .PartialMedium.SpecificEntropy)                       

  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0    2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se       for one-phase, 0 if
  ces.PartialTwoPhaseMedium.FixedPhase)                 not known

  Integer                                      reg 0    if 0, region is
                                               ion      unknown, otherwise
                                                        known and this input
  --------------------------------------------------------------------------

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

* * * * *

![image90](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).pressure\_dT
=============================================================================================================================================================================================================================

**Computes pressure as a function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                         Nam Defa Description
                                               e   ult  
  -------------------------------------------- --- ---- --------------------
  [Density](Modelica_Media_Interfaces_PartialM d        Density [kg/m3]
  edium.html#Modelica.Media.Interfaces.Partial          
  Medium.Density)                                       

  [Temperature](Modelica_Media_Interfaces_Part T        Temperature [K]
  ialMedium.html#Modelica.Media.Interfaces.Par          
  tialMedium.Temperature)                               

  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0    2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se       for one-phase, 0 if
  ces.PartialTwoPhaseMedium.FixedPhase)                 not known

  Integer                                      reg 0    if 0, region is
                                               ion      unknown, otherwise
                                                        known and this input
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

* * * * *

![image91](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).specificEnthalpy\_dT
=====================================================================================================================================================================================================================================

**Computes specific enthalpy as a function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                         Nam Defa Description
                                               e   ult  
  -------------------------------------------- --- ---- --------------------
  [Density](Modelica_Media_Interfaces_PartialM d        Density [kg/m3]
  edium.html#Modelica.Media.Interfaces.Partial          
  Medium.Density)                                       

  [Temperature](Modelica_Media_Interfaces_Part T        Temperature [K]
  ialMedium.html#Modelica.Media.Interfaces.Par          
  tialMedium.Temperature)                               

  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0    2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se       for one-phase, 0 if
  ces.PartialTwoPhaseMedium.FixedPhase)                 not known

  Integer                                      reg 0    if 0, region is
                                               ion      unknown, otherwise
                                                        known and this input
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

* * * * *

![image92](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).specificEnthalpy\_pT
=====================================================================================================================================================================================================================================

**Computes specific enthalpy as a function of pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                         Nam Defa Description
                                               e   ult  
  -------------------------------------------- --- ---- --------------------
  [AbsolutePressure](Modelica_Media_Interfaces p        Pressure [Pa]
  _PartialMedium.html#Modelica.Media.Interface          
  s.PartialMedium.AbsolutePressure)                     

  [Temperature](Modelica_Media_Interfaces_Part T        Temperature [K]
  ialMedium.html#Modelica.Media.Interfaces.Par          
  tialMedium.Temperature)                               

  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0    2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se       for one-phase, 0 if
  ces.PartialTwoPhaseMedium.FixedPhase)                 not known

  Integer                                      reg 0    if 0, region is
                                               ion      unknown, otherwise
                                                        known and this input
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

* * * * *

![image93](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).specificEnthalpy\_ps
=====================================================================================================================================================================================================================================

**Computes specific enthalpy as a function of pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                         Nam Defa Description
                                               e   ult  
  -------------------------------------------- --- ---- --------------------
  [AbsolutePressure](Modelica_Media_Interfaces p        Pressure [Pa]
  _PartialMedium.html#Modelica.Media.Interface          
  s.PartialMedium.AbsolutePressure)                     

  [SpecificEntropy](Modelica_Media_Interfaces_ s        Specific entropy
  PartialMedium.html#Modelica.Media.Interfaces          [J/(kg.K)]
  .PartialMedium.SpecificEntropy)                       

  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0    2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se       for one-phase, 0 if
  ces.PartialTwoPhaseMedium.FixedPhase)                 not known

  Integer                                      reg 0    if 0, region is
                                               ion      unknown, otherwise
                                                        known and this input
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

* * * * *

![image94](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).density\_pT
============================================================================================================================================================================================================================

**Computes density as a function of pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                         Nam Defa Description
                                               e   ult  
  -------------------------------------------- --- ---- --------------------
  [AbsolutePressure](Modelica_Media_Interfaces p        Pressure [Pa]
  _PartialMedium.html#Modelica.Media.Interface          
  s.PartialMedium.AbsolutePressure)                     

  [Temperature](Modelica_Media_Interfaces_Part T        Temperature [K]
  ialMedium.html#Modelica.Media.Interfaces.Par          
  tialMedium.Temperature)                               

  [FixedPhase](Modelica_Media_Interfaces_Parti pha 0    2 for two-phase, 1
  alTwoPhaseMedium.html#Modelica.Media.Interfa se       for one-phase, 0 if
  ces.PartialTwoPhaseMedium.FixedPhase)                 not known

  Integer                                      reg 0    if 0, region is
                                               ion      unknown, otherwise
                                                        known and this input
  --------------------------------------------------------------------------

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

* * * * *

![image95](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).setDewState
============================================================================================================================================================================================================================

**set the thermodynamic state on the dew line**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setDewState)
(Return the thermodynamic state on the dew line).

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

    redeclare function extends setDewState 
      "set the thermodynamic state on the dew line"
    algorithm 
      state.phase := phase;
      state.p := sat.psat;
      state.T := sat.Tsat;
      state.h := dewEnthalpy(sat);
      state.d := dewDensity(sat);
    end setDewState;

* * * * *

![image96](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).setBubbleState
===============================================================================================================================================================================================================================

**set the thermodynamic state on the bubble line**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setBubbleState)
(Return the thermodynamic state on the bubble line).

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

    redeclare function extends setBubbleState 
      "set the thermodynamic state on the bubble line"
    algorithm 
      state.phase := phase;
      state.p := sat.psat;
      state.T := sat.Tsat;
      state.h := bubbleEnthalpy(sat);
      state.d := bubbleDensity(sat);
    end setBubbleState;

* * * * *

![image97](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).dynamicViscosity
=================================================================================================================================================================================================================================

**Dynamic viscosity of water**

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
      "Dynamic viscosity of water"
    algorithm 
      eta := IF97_Utilities.dynamicViscosity(state.d, state.T, state.p, state.
        phase);
    end dynamicViscosity;

* * * * *

![image98](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).thermalConductivity
====================================================================================================================================================================================================================================

**Thermal conductivity of water**

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
      "Thermal conductivity of water"
    algorithm 
      lambda := IF97_Utilities.thermalConductivity(state.d, state.T, state.p,
        state.phase);
    end thermalConductivity;

* * * * *

![image99](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).surfaceTension
===============================================================================================================================================================================================================================

**Surface tension in two phase region of water**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.surfaceTension)
(Return surface tension sigma in the two phase region).

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

    redeclare function extends surfaceTension 
      "Surface tension in two phase region of water"
    algorithm 
      sigma := IF97_Utilities.surfaceTension(sat.Tsat);
    end surfaceTension;

* * * * *

![image100](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).pressure
==========================================================================================================================================================================================================================

**return pressure of ideal gas**

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

    redeclare function extends pressure "return pressure of ideal gas"
    algorithm 
      p := state.p;
    end pressure;

* * * * *

![image101](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).temperature
=============================================================================================================================================================================================================================

**return temperature of ideal gas**

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
      "return temperature of ideal gas"
    algorithm 
      T := state.T;
    end temperature;

* * * * *

![image102](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).density
=========================================================================================================================================================================================================================

**return density of ideal gas**

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

    redeclare function extends density "return density of ideal gas"
    algorithm 
      d := state.d;
    end density;

* * * * *

![image103](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).specificEnthalpy
==================================================================================================================================================================================================================================

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
      h := state.h;
    end specificEnthalpy;

* * * * *

![image104](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).specificInternalEnergy
========================================================================================================================================================================================================================================

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
      u := state.h  - state.p/state.d;
    end specificInternalEnergy;

* * * * *

![image105](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).specificGibbsEnergy
=====================================================================================================================================================================================================================================

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
      g := state.h - state.T*specificEntropy(state);
    end specificGibbsEnergy;

* * * * *

![image106](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).specificHelmholtzEnergy
=========================================================================================================================================================================================================================================

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
      f := state.h - state.p/state.d - state.T*specificEntropy(state);
    end specificHelmholtzEnergy;

* * * * *

![image107](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).specificEntropy
=================================================================================================================================================================================================================================

**specific entropy of water**

Information
-----------

Extends from
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

* * * * *

![image108](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).specificHeatCapacityCp
========================================================================================================================================================================================================================================

**specific heat capacity at constant pressure of water**

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

* * * * *

![image109](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).specificHeatCapacityCv
========================================================================================================================================================================================================================================

**specific heat capacity at constant volume of water**

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

* * * * *

![image110](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).isentropicExponent
====================================================================================================================================================================================================================================

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

* * * * *

![image111](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).isothermalCompressibility
===========================================================================================================================================================================================================================================

**Isothermal compressibility of water**

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

* * * * *

![image112](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).isobaricExpansionCoefficient
==============================================================================================================================================================================================================================================

**isobaric expansion coefficient of water**

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

* * * * *

![image113](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).velocityOfSound
=================================================================================================================================================================================================================================

**Return velocity of sound as a function of the thermodynamic state
record**

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

* * * * *

![image114](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).isentropicEnthalpy
====================================================================================================================================================================================================================================

**compute h(s,p)**

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

    redeclare function extends isentropicEnthalpy "compute h(s,p)"
    algorithm 
      h_is := IF97_Utilities.isentropicEnthalpy(p_downstream, specificEntropy(
        refState), 0);
    end isentropicEnthalpy;

* * * * *

![image115](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).density\_derh\_p
==================================================================================================================================================================================================================================

**density derivative by specific enthalpy**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derh_p)
(Return density derivative w.r.t. specific enthalpy at constant
pressure).

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
  [DerDensityByEnthalpy](Modelica_Media_Interfaces ddh Density derivative
  _PartialMedium.html#Modelica.Media.Interfaces.Pa p   w.r.t. specific
  rtialMedium.DerDensityByEnthalpy)                    enthalpy [kg.s2/m5]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends density_derh_p 
      "density derivative by specific enthalpy"
    algorithm 
      ddhp := IF97_Utilities.ddhp(state.p, state.h, state.phase, Region);
    end density_derh_p;

* * * * *

![image116](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).density\_derp\_h
==================================================================================================================================================================================================================================

**density derivative by pressure**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_h)
(Return density derivative w.r.t. pressure at const specific enthalpy).

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
  rtialMedium.html#Modelica.Media.Interfaces.PartialM h   derivative w.r.t.
  edium.DerDensityByPressure)                             pressure [s2/m2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends density_derp_h 
      "density derivative by pressure"
    algorithm 
      ddph := IF97_Utilities.ddph(state.p, state.h, state.phase, Region);
    end density_derp_h;

* * * * *

![image117](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).bubbleEnthalpy
================================================================================================================================================================================================================================

**boiling curve specific enthalpy of water**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEnthalpy)
(Return bubble point specific enthalpy).

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

    redeclare function extends bubbleEnthalpy 
      "boiling curve specific enthalpy of water"
    algorithm 
      hl := IF97_Utilities.BaseIF97.Regions.hl_p(sat.psat);
    end bubbleEnthalpy;

* * * * *

![image118](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).dewEnthalpy
=============================================================================================================================================================================================================================

**dew curve specific enthalpy of water**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEnthalpy)
(Return dew point specific enthalpy).

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

    redeclare function extends dewEnthalpy 
      "dew curve specific enthalpy of water"
    algorithm 
      hv := IF97_Utilities.BaseIF97.Regions.hv_p(sat.psat);
    end dewEnthalpy;

* * * * *

![image119](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).bubbleEntropy
===============================================================================================================================================================================================================================

**boiling curve specific entropy of water**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleEntropy)
(Return bubble point specific entropy).

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

    redeclare function extends bubbleEntropy 
      "boiling curve specific entropy of water"
    algorithm 
      sl := IF97_Utilities.BaseIF97.Regions.sl_p(sat.psat);
    end bubbleEntropy;

* * * * *

![image120](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).dewEntropy
============================================================================================================================================================================================================================

**dew curve specific entropy of water**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewEntropy)
(Return dew point specific entropy).

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

    redeclare function extends dewEntropy 
      "dew curve specific entropy of water"
    algorithm 
      sv := IF97_Utilities.BaseIF97.Regions.sv_p(sat.psat);
    end dewEntropy;

* * * * *

![image121](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).bubbleDensity
===============================================================================================================================================================================================================================

**boiling curve specific density of water**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.bubbleDensity)
(Return bubble point density).

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

    redeclare function extends bubbleDensity 
      "boiling curve specific density of water"
    algorithm 
      if ph_explicit or pT_explicit then
        dl := IF97_Utilities.BaseIF97.Regions.rhol_p(sat.psat);
      else
        dl := IF97_Utilities.BaseIF97.Regions.rhol_T(sat.Tsat);
      end if;
    end bubbleDensity;

* * * * *

![image122](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).dewDensity
============================================================================================================================================================================================================================

**dew curve specific density of water**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dewDensity)
(Return dew point density).

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

    redeclare function extends dewDensity 
      "dew curve specific density of water"
    algorithm 
      if ph_explicit or pT_explicit then
        dv := IF97_Utilities.BaseIF97.Regions.rhov_p(sat.psat);
      else
        dv := IF97_Utilities.BaseIF97.Regions.rhov_T(sat.Tsat);
      end if;
    end dewDensity;

* * * * *

![image123](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).saturationTemperature
=======================================================================================================================================================================================================================================

**saturation temperature of water**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature)
(Return saturation temperature).

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

    redeclare function extends saturationTemperature 
      "saturation temperature of water"
    algorithm 
      T := IF97_Utilities.BaseIF97.Basic.tsat(p);
    end saturationTemperature;

* * * * *

![image124](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).saturationTemperature\_derp
=============================================================================================================================================================================================================================================

**derivative of saturation temperature w.r.t. pressure**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationTemperature_derp)
(Return derivative of saturation temperature w.r.t. pressure).

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

    redeclare function extends saturationTemperature_derp 
      "derivative of saturation temperature w.r.t. pressure"
    algorithm 
      dTp := IF97_Utilities.BaseIF97.Basic.dtsatofp(p);
    end saturationTemperature_derp;

* * * * *

![image125](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).saturationPressure
====================================================================================================================================================================================================================================

**saturation pressure of water**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.saturationPressure)
(Return saturation pressure).

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

    redeclare function extends saturationPressure 
      "saturation pressure of water"
    algorithm 
      p := IF97_Utilities.BaseIF97.Basic.psat(T);
    end saturationPressure;

* * * * *

![image126](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).dBubbleDensity\_dPressure
===========================================================================================================================================================================================================================================

**bubble point density derivative**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleDensity_dPressure)
(Return bubble point density derivative).

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

    redeclare function extends dBubbleDensity_dPressure 
      "bubble point density derivative"
    algorithm 
      ddldp := IF97_Utilities.BaseIF97.Regions.drhol_dp(sat.psat);
    end dBubbleDensity_dPressure;

* * * * *

![image127](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).dDewDensity\_dPressure
========================================================================================================================================================================================================================================

**dew point density derivative**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewDensity_dPressure)
(Return dew point density derivative).

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

    redeclare function extends dDewDensity_dPressure 
      "dew point density derivative"
    algorithm 
      ddvdp := IF97_Utilities.BaseIF97.Regions.drhov_dp(sat.psat);
    end dDewDensity_dPressure;

* * * * *

![image128](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).dBubbleEnthalpy\_dPressure
============================================================================================================================================================================================================================================

**bubble point specific enthalpy derivative**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dBubbleEnthalpy_dPressure)
(Return bubble point specific enthalpy derivative).

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

    redeclare function extends dBubbleEnthalpy_dPressure 
      "bubble point specific enthalpy derivative"
    algorithm 
      dhldp := IF97_Utilities.BaseIF97.Regions.dhl_dp(sat.psat);
    end dBubbleEnthalpy_dPressure;

* * * * *

![image129](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).dDewEnthalpy\_dPressure
=========================================================================================================================================================================================================================================

**dew point specific enthalpy derivative**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.dDewEnthalpy_dPressure)
(Return dew point specific enthalpy derivative).

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

    redeclare function extends dDewEnthalpy_dPressure 
      "dew point specific enthalpy derivative"
    algorithm 
      dhvdp := IF97_Utilities.BaseIF97.Regions.dhv_dp(sat.psat);
    end dDewEnthalpy_dPressure;

* * * * *

![image130](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).setState\_dTX
===============================================================================================================================================================================================================================

**Return thermodynamic state of water as function of d, T, and optional
region**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_dTX)
(Return thermodynamic state as function of d, T and composition X or
Xi).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Nam Defau Description
                                              e   lt    
  ------------------------------------------- --- ----- -------------------
  Integer                                     reg 0     if 0, region is
                                              ion       unknown, otherwise
                                                        known and this
                                                        input

  [FixedPhase](Modelica_Media_Interfaces_Part pha 0     2 for two-phase, 1
  ialTwoPhaseMedium.html#Modelica.Media.Inter se        for one-phase, 0 if
  faces.PartialTwoPhaseMedium.FixedPhase)               not known

  [Density](Modelica_Media_Interfaces_Partial d         density [kg/m3]
  Medium.html#Modelica.Media.Interfaces.Parti           
  alMedium.Density)                                     

  [Temperature](Modelica_Media_Interfaces_Par T         Temperature [K]
  tialMedium.html#Modelica.Media.Interfaces.P           
  artialMedium.Temperature)                             

  [MassFraction](Modelica_Media_Interfaces_Pa X[: refer Mass fractions
  rtialMedium.html#Modelica.Media.Interfaces. ]   ence\ [kg/kg]
  PartialMedium.MassFraction)                     _X    
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

* * * * *

![image131](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).setState\_phX
===============================================================================================================================================================================================================================

**Return thermodynamic state of water as function of p, h, and optional
region**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_phX)
(Return thermodynamic state as function of p, h and composition X or
Xi).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Nam Defau Description
                                              e   lt    
  ------------------------------------------- --- ----- -------------------
  Integer                                     reg 0     if 0, region is
                                              ion       unknown, otherwise
                                                        known and this
                                                        input

  [FixedPhase](Modelica_Media_Interfaces_Part pha 0     2 for two-phase, 1
  ialTwoPhaseMedium.html#Modelica.Media.Inter se        for one-phase, 0 if
  faces.PartialTwoPhaseMedium.FixedPhase)               not known

  [AbsolutePressure](Modelica_Media_Interface p         Pressure [Pa]
  s_PartialMedium.html#Modelica.Media.Interfa           
  ces.PartialMedium.AbsolutePressure)                   

  [SpecificEnthalpy](Modelica_Media_Interface h         Specific enthalpy
  s_PartialMedium.html#Modelica.Media.Interfa           [J/kg]
  ces.PartialMedium.SpecificEnthalpy)                   

  [MassFraction](Modelica_Media_Interfaces_Pa X[: refer Mass fractions
  rtialMedium.html#Modelica.Media.Interfaces. ]   ence\ [kg/kg]
  PartialMedium.MassFraction)                     _X    
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

* * * * *

![image132](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).setState\_psX
===============================================================================================================================================================================================================================

**Return thermodynamic state of water as function of p, s, and optional
region**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_psX)
(Return thermodynamic state as function of p, s and composition X or
Xi).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Nam Defau Description
                                              e   lt    
  ------------------------------------------- --- ----- -------------------
  Integer                                     reg 0     if 0, region is
                                              ion       unknown, otherwise
                                                        known and this
                                                        input

  [FixedPhase](Modelica_Media_Interfaces_Part pha 0     2 for two-phase, 1
  ialTwoPhaseMedium.html#Modelica.Media.Inter se        for one-phase, 0 if
  faces.PartialTwoPhaseMedium.FixedPhase)               not known

  [AbsolutePressure](Modelica_Media_Interface p         Pressure [Pa]
  s_PartialMedium.html#Modelica.Media.Interfa           
  ces.PartialMedium.AbsolutePressure)                   

  [SpecificEntropy](Modelica_Media_Interfaces s         Specific entropy
  _PartialMedium.html#Modelica.Media.Interfac           [J/(kg.K)]
  es.PartialMedium.SpecificEntropy)                     

  [MassFraction](Modelica_Media_Interfaces_Pa X[: refer Mass fractions
  rtialMedium.html#Modelica.Media.Interfaces. ]   ence\ [kg/kg]
  PartialMedium.MassFraction)                     _X    
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

* * * * *

![image133](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).setState\_pTX
===============================================================================================================================================================================================================================

**Return thermodynamic state of water as function of p, T, and optional
region**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialTwoPhaseMedium.html#Modelica.Media.Interfaces.PartialTwoPhaseMedium.setState_pTX)
(Return thermodynamic state as function of p, T and composition X or
Xi).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Nam Defau Description
                                              e   lt    
  ------------------------------------------- --- ----- -------------------
  Integer                                     reg 0     if 0, region is
                                              ion       unknown, otherwise
                                                        known and this
                                                        input

  [FixedPhase](Modelica_Media_Interfaces_Part pha 0     2 for two-phase, 1
  ialTwoPhaseMedium.html#Modelica.Media.Inter se        for one-phase, 0 if
  faces.PartialTwoPhaseMedium.FixedPhase)               not known

  [AbsolutePressure](Modelica_Media_Interface p         Pressure [Pa]
  s_PartialMedium.html#Modelica.Media.Interfa           
  ces.PartialMedium.AbsolutePressure)                   

  [Temperature](Modelica_Media_Interfaces_Par T         Temperature [K]
  tialMedium.html#Modelica.Media.Interfaces.P           
  artialMedium.Temperature)                             

  [MassFraction](Modelica_Media_Interfaces_Pa X[: refer Mass fractions
  rtialMedium.html#Modelica.Media.Interfaces. ]   ence\ [kg/kg]
  PartialMedium.MassFraction)                     _X    
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

* * * * *

![image134](Modelica.Media.Water.WaterIF97_fixedregion.density_phI.png) [Modelica.Media.Water.WaterIF97\_fixedregion](Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion).setSmoothState
================================================================================================================================================================================================================================

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:35 2010.
