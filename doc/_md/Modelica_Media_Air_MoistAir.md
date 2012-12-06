% Modelica.Media.Air.MoistAir
% 
% 

[Modelica.Media.Air](Modelica_Media_Air.html#Modelica.Media.Air).MoistAir
=========================================================================

**Air: Moist air model (240 ... 400 K)**

Information
-----------

::

### Thermodynamic Model

This package provides a full thermodynamic model of moist air including
the fog region and temperatures below zero degC. The governing
assumptions in this model are:

-   the perfect gas law applies
-   water volume other than that of steam is neglected

All extensive properties are expressed in terms of the total mass in
order to comply with other media in this libary. However, for moist air
it is rather common to express the absolute humidity in terms of mass of
dry air only, which has advantages when working with charts. In
addition, care must be taken, when working with mass fractions with
respect to total mass, that all properties refer to the same water
content when being used in mathematical operations (which is always the
case if based on dry air only). Therefore two absolute humidities are
computed in the **BaseProperties** model: **X** denotes the absolute
humidity in terms of the total mass while **x** denotes the absolute
humitity per unit mass of dry air. In addition, the relative humidity
**phi** is also computed.

At the triple point temperature of water of 0.01 °C or 273.16 K and a
relative humidity greater than 1 fog may be present as liquid and as ice
resulting in a specific enthalpy somewhere between those of the two
isotherms for solid and liquid fog, respectively. For numerical reasons
a coexisting mixture of 50% solid and 50% liquid fog is assumed in the
fog region at the triple point in this model.

### Range of validity

From the assumptions mentioned above it follows that the **pressure**
should be in the region around **atmospheric** conditions or below (a
few bars may still be fine though). Additionally a very high water
content at low temperatures would yield incorrect densities, because the
volume of the liquid or solid phase would not be negligible anymore. The
model does not provide information on limits for water drop size in the
fog region or transport information for the actual condensation or
evaporation process in combination with surfaces. All excess water which
is not in its vapour state is assumed to be still present in the air
regarding its energy but not in terms of its spatial extent. The
thermodynamic model may be used for **temperatures** ranging from **240
- 400 K**. This holds for all functions unless otherwise stated in their
description. However, although the model works at temperatures above the
saturation temperature it is questionable to use the term "relative
humidity" in this region. Please note, that although several functions
compute pure water properties, they are designed to be used within the
moist air medium model where properties are dominated by air and steam
in their vapor states, and not for pure liquid water applications.

### Transport Properties

Several additional functions that are not needed to describe the
thermodynamic system, but are required to model transport processes,
like heat and mass transfer, may be called. They usually neglect the
moisture influence unless otherwise stated.

### Application

The model's main area of application is all processes that involve moist
air cooling under near atmospheric pressure with possible moisture
condensation. This is the case in all domestic and industrial air
conditioning applications. Another large domain of moist air
applications covers all processes that deal with dehydration of bulk
material using air as a transport medium. Engineering tasks involving
moist air are often performed (or at least visualized) by using charts
that contain all relevant thermodynamic data for a moist air system.
These so called psychrometric charts can be generated from the medium
properties in this package. The model
[PsychrometricData](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.PsychrometricData)
may be used for this purpose in order to obtain data for figures like
those below (the plotting itself is not part of the model though).

![image0](../Resources/Images/Media/Air/Mollier.png)
![image1](../Resources/Images/Media/Air/PsycroChart.png)

**Legend:** blue - constant specific enthalpy, red - constant
temperature, black - constant relative humidity

::

Extends from
[Interfaces.PartialCondensingGases](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases)
(Base class for mixtures of condensing and non-condensing gases).

Package Content
---------------

Name

Description

Water=1

Index of water (in substanceNames, massFractions X, etc.)

Air=2

Index of air (in substanceNames, massFractions X, etc.)

k\_mair=steam.MM/dryair.MM

ratio of molar weights

dryair=IdealGases.Common.SingleGasesData.Air

steam=IdealGases.Common.SingleGasesData.H2O

MMX={steam.MM,dryair.MM}

Molar masses of components

![Modelica.Media.Air.MoistAir.ThermodynamicState](Modelica.Media.Air.MoistAir.ThermodynamicStateS.png)
[ThermodynamicState](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState)

ThermodynamicState record for moist air

![Modelica.Media.Air.MoistAir.BaseProperties](Modelica.Media.Air.MoistAir.BasePropertiesS.png)
[BaseProperties](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.BaseProperties)

Moist air base properties record

![Modelica.Media.Air.MoistAir.setState\_pTX](Modelica.Media.Air.MoistAir.setState_pTXS.png)
[setState\_pTX](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.setState_pTX)

Return thermodynamic state as function of pressure p, temperature T and
composition X

![Modelica.Media.Air.MoistAir.setState\_phX](Modelica.Media.Air.MoistAir.setState_pTXS.png)
[setState\_phX](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.setState_phX)

Return thermodynamic state as function of pressure p, specific enthalpy
h and composition X

![Modelica.Media.Air.MoistAir.setState\_dTX](Modelica.Media.Air.MoistAir.setState_pTXS.png)
[setState\_dTX](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.setState_dTX)

Return thermodynamic state as function of density d, temperature T and
composition X

![Modelica.Media.Air.MoistAir.setSmoothState](Modelica.Media.Air.MoistAir.setState_pTXS.png)
[setSmoothState](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

![Modelica.Media.Air.MoistAir.Xsaturation](Modelica.Media.Air.MoistAir.XsaturationS.png)
[Xsaturation](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.Xsaturation)

Return absolute humitity per unit mass of moist air at saturation as a
function of the thermodynamic state record

![Modelica.Media.Air.MoistAir.xsaturation](Modelica.Media.Air.MoistAir.XsaturationS.png)
[xsaturation](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.xsaturation)

Return absolute humitity per unit mass of dry air at saturation as a
function of the thermodynamic state record

![Modelica.Media.Air.MoistAir.xsaturation\_pT](Modelica.Media.Air.MoistAir.XsaturationS.png)
[xsaturation\_pT](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.xsaturation_pT)

Return absolute humitity per unit mass of dry air at saturation as a
function of pressure p and temperature T

![Modelica.Media.Air.MoistAir.massFraction\_pTphi](Modelica.Media.Air.MoistAir.XsaturationS.png)
[massFraction\_pTphi](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.massFraction_pTphi)

Return steam mass fraction as a function of relative humidity phi and
temperature T

![Modelica.Media.Air.MoistAir.relativeHumidity\_pTX](Modelica.Media.Air.MoistAir.XsaturationS.png)
[relativeHumidity\_pTX](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.relativeHumidity_pTX)

Return relative humidity as a function of pressure p, temperature T and
composition X

![Modelica.Media.Air.MoistAir.relativeHumidity](Modelica.Media.Air.MoistAir.XsaturationS.png)
[relativeHumidity](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.relativeHumidity)

Return relative humidity as a function of the thermodynamic state record

![Modelica.Media.Air.MoistAir.gasConstant](Modelica.Media.Air.MoistAir.gasConstantS.png)
[gasConstant](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.gasConstant)

Return ideal gas constant as a function from thermodynamic state, only
valid for phi<1

![Modelica.Media.Air.MoistAir.gasConstant\_X](Modelica.Media.Air.MoistAir.gasConstant_XS.png)
[gasConstant\_X](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.gasConstant_X)

Return ideal gas constant as a function from composition X

![Modelica.Media.Air.MoistAir.saturationPressureLiquid](Modelica.Media.Air.MoistAir.saturationPressureLiquidS.png)
[saturationPressureLiquid](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressureLiquid)

Return saturation pressure of water as a function of temperature T in
the range of 273.16 to 373.16 K

![Modelica.Media.Air.MoistAir.saturationPressureLiquid\_der](Modelica.Media.Air.MoistAir.saturationPressureLiquidS.png)
[saturationPressureLiquid\_der](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressureLiquid_der)

Time derivative of saturationPressureLiquid

![Modelica.Media.Air.MoistAir.sublimationPressureIce](Modelica.Media.Air.MoistAir.saturationPressureLiquidS.png)
[sublimationPressureIce](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.sublimationPressureIce)

Return sublimation pressure of water as a function of temperature T
between 223.16 and 273.16 K

![Modelica.Media.Air.MoistAir.sublimationPressureIce\_der](Modelica.Media.Air.MoistAir.saturationPressureLiquidS.png)
[sublimationPressureIce\_der](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.sublimationPressureIce_der)

Derivative function for 'sublimationPressureIce'

![Modelica.Media.Air.MoistAir.saturationPressure](Modelica.Media.Air.MoistAir.saturationPressureLiquidS.png)
[saturationPressure](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressure)

Return saturation pressure of water as a function of temperature T
between 223.16 and 373.16 K

![Modelica.Media.Air.MoistAir.saturationPressure\_der](Modelica.Media.Air.MoistAir.saturationPressure_derS.png)
[saturationPressure\_der](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressure_der)

Derivative function for 'saturationPressure'

![Modelica.Media.Air.MoistAir.saturationTemperature](Modelica.Media.Air.MoistAir.saturationPressure_derS.png)
[saturationTemperature](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationTemperature)

Return saturation temperature of water as a function of (partial)
pressure p

![Modelica.Media.Air.MoistAir.enthalpyOfVaporization](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png)
[enthalpyOfVaporization](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfVaporization)

Return enthalpy of vaporization of water as a function of temperature T,
0 - 130 degC

![Modelica.Media.Air.MoistAir.HeatCapacityOfWater](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png)
[HeatCapacityOfWater](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.HeatCapacityOfWater)

Return specific heat capacity of water (liquid only) as a function of
temperature T

![Modelica.Media.Air.MoistAir.enthalpyOfLiquid](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png)
[enthalpyOfLiquid](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfLiquid)

Return enthalpy of liquid water as a function of temperature T(use
enthalpyOfWater instead)

![Modelica.Media.Air.MoistAir.enthalpyOfGas](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png)
[enthalpyOfGas](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfGas)

Return specific enthalpy of gas (air and steam) as a function of
temperature T and composition X

![Modelica.Media.Air.MoistAir.enthalpyOfCondensingGas](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png)
[enthalpyOfCondensingGas](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfCondensingGas)

Return specific enthalpy of steam as a function of temperature T

![Modelica.Media.Air.MoistAir.enthalpyOfNonCondensingGas](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png)
[enthalpyOfNonCondensingGas](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfNonCondensingGas)

Return specific enthalpy of dry air as a function of temperature T

![Modelica.Media.Air.MoistAir.enthalpyOfWater](Modelica.Media.Air.MoistAir.enthalpyOfWaterS.png)
[enthalpyOfWater](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfWater)

Computes specific enthalpy of water (solid/liquid) near atmospheric
pressure from temperature T

![Modelica.Media.Air.MoistAir.enthalpyOfWater\_der](Modelica.Media.Air.MoistAir.enthalpyOfWaterS.png)
[enthalpyOfWater\_der](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfWater_der)

Derivative function of enthalpyOfWater

![Modelica.Media.Air.MoistAir.pressure](Modelica.Media.Air.MoistAir.pressureS.png)
[pressure](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.pressure)

Returns pressure of ideal gas as a function of the thermodynamic state
record

![Modelica.Media.Air.MoistAir.temperature](Modelica.Media.Air.MoistAir.pressureS.png)
[temperature](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.temperature)

Return temperature of ideal gas as a function of the thermodynamic state
record

![Modelica.Media.Air.MoistAir.T\_phX](Modelica.Media.Air.MoistAir.T_phXS.png)
[T\_phX](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.T_phX)

Return temperature as a function of pressure p, specific enthalpy h and
composition X

![Modelica.Media.Air.MoistAir.density](Modelica.Media.Air.MoistAir.densityS.png)
[density](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.density)

Returns density of ideal gas as a function of the thermodynamic state
record

![Modelica.Media.Air.MoistAir.specificEnthalpy](Modelica.Media.Air.MoistAir.densityS.png)
[specificEnthalpy](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificEnthalpy)

Return specific enthalpy of moist air as a function of the thermodynamic
state record

![Modelica.Media.Air.MoistAir.h\_pTX](Modelica.Media.Air.MoistAir.densityS.png)
[h\_pTX](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.h_pTX)

Return specific enthalpy of moist air as a function of pressure p,
temperature T and composition X

![Modelica.Media.Air.MoistAir.h\_pTX\_der](Modelica.Media.Air.MoistAir.densityS.png)
[h\_pTX\_der](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.h_pTX_der)

Derivative function of h\_pTX

![Modelica.Media.Air.MoistAir.isentropicExponent](Modelica.Media.Air.MoistAir.densityS.png)
[isentropicExponent](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.isentropicExponent)

Return isentropic exponent (only for gas fraction!)

![Modelica.Media.Air.MoistAir.isentropicEnthalpyApproximation](Modelica.Media.Air.MoistAir.densityS.png)
[isentropicEnthalpyApproximation](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.isentropicEnthalpyApproximation)

Approximate calculation of h\_is from upstream properties, downstream
pressure, gas part only

![Modelica.Media.Air.MoistAir.specificInternalEnergy](Modelica.Media.Air.MoistAir.densityS.png)
[specificInternalEnergy](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificInternalEnergy)

Return specific internal energy of moist air as a function of the
thermodynamic state record

![Modelica.Media.Air.MoistAir.specificInternalEnergy\_pTX](Modelica.Media.Air.MoistAir.specificInternalEnergy_pTXS.png)
[specificInternalEnergy\_pTX](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificInternalEnergy_pTX)

Return specific internal energy of moist air as a function of pressure
p, temperature T and composition X

![Modelica.Media.Air.MoistAir.specificInternalEnergy\_pTX\_der](Modelica.Media.Air.MoistAir.specificInternalEnergy_pTXS.png)
[specificInternalEnergy\_pTX\_der](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificInternalEnergy_pTX_der)

Derivative function for specificInternalEnergy\_pTX

![Modelica.Media.Air.MoistAir.specificEntropy](Modelica.Media.Air.MoistAir.specificEntropyS.png)
[specificEntropy](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificEntropy)

Return specific entropy from thermodynamic state record, only valid for
phi<1

![Modelica.Media.Air.MoistAir.specificGibbsEnergy](Modelica.Media.Air.MoistAir.specificEntropyS.png)
[specificGibbsEnergy](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificGibbsEnergy)

Return specific Gibbs energy as a function of the thermodynamic state
record, only valid for phi<1

![Modelica.Media.Air.MoistAir.specificHelmholtzEnergy](Modelica.Media.Air.MoistAir.specificEntropyS.png)
[specificHelmholtzEnergy](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificHelmholtzEnergy)

Return specific Helmholtz energy as a function of the thermodynamic
state record, only valid for phi<1

![Modelica.Media.Air.MoistAir.specificHeatCapacityCp](Modelica.Media.Air.MoistAir.specificEntropyS.png)
[specificHeatCapacityCp](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificHeatCapacityCp)

Return specific heat capacity at constant pressure as a function of the
thermodynamic state record

![Modelica.Media.Air.MoistAir.specificHeatCapacityCv](Modelica.Media.Air.MoistAir.specificEntropyS.png)
[specificHeatCapacityCv](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificHeatCapacityCv)

Return specific heat capacity at constant volume as a function of the
thermodynamic state record

![Modelica.Media.Air.MoistAir.dynamicViscosity](Modelica.Media.Air.MoistAir.specificEntropyS.png)
[dynamicViscosity](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.dynamicViscosity)

Return dynamic viscosity as a function of the thermodynamic state
record, valid from 73.15 K to 373.15 K

![Modelica.Media.Air.MoistAir.thermalConductivity](Modelica.Media.Air.MoistAir.specificEntropyS.png)
[thermalConductivity](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.thermalConductivity)

Return thermal conductivity as a function of the thermodynamic state
record, valid from 73.15 K to 373.15 K

![Modelica.Media.Air.MoistAir.Utilities](Modelica.Media.Air.MoistAir.UtilitiesS.png)
[Utilities](Modelica_Media_Air_MoistAir_Utilities.html#Modelica.Media.Air.MoistAir.Utilities)

utility functions

![Modelica.Media.Air.MoistAir.PsychrometricData](Modelica.Media.Air.MoistAir.PsychrometricDataS.png)
[PsychrometricData](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.PsychrometricData)

Produces plot data for psychrometric charts

Inherited

![Modelica.Media.Interfaces.PartialMixtureMedium.FluidConstants](Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicStateS.png)
[FluidConstants](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.FluidConstants)

extended fluid constants

fluidConstants

constant data for the fluid

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

![Modelica.Media.Interfaces.PartialMedium.setState\_psX](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[setState\_psX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_psX)

Return thermodynamic state as function of p, s and composition X or Xi

![Modelica.Media.Interfaces.PartialMedium.prandtlNumber](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[prandtlNumber](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.prandtlNumber)

Return the Prandtl number

![Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[heatCapacity\_cp](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cp)

alias for deprecated name

![Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[heatCapacity\_cv](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cv)

alias for deprecated name

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

Types and constants
-------------------

    constant Integer Water=1 
    "Index of water (in substanceNames, massFractions X, etc.)";

    constant Integer Air=2 
    "Index of air (in substanceNames, massFractions X, etc.)";

    constant Real k_mair =  steam.MM/dryair.MM "ratio of molar weights";

    constant IdealGases.Common.DataRecord dryair = IdealGases.Common.SingleGasesData.Air;

    constant IdealGases.Common.DataRecord steam = IdealGases.Common.SingleGasesData.H2O;

    constant SI.MolarMass[2] MMX = {steam.MM,dryair.MM} 
    "Molar masses of components";

* * * * *

![image80](Modelica.Media.Air.MoistAir.ThermodynamicStateI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).ThermodynamicState
==============================================================================================================================================================================

**ThermodynamicState record for moist air**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState)
(thermodynamic state variables).

Modelica definition
-------------------

    redeclare record extends ThermodynamicState 
      "ThermodynamicState record for moist air"
    end ThermodynamicState;

* * * * *

![image81](Modelica.Media.Air.MoistAir.BasePropertiesI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).BaseProperties
======================================================================================================================================================================

**Moist air base properties record**

Information
-----------

::

This model computes thermodynamic properties of moist air from three
independent (thermodynamic or/and numerical) state variables. Preferred
numerical states are temperature T, pressure p and the reduced
composition vector Xi, which contains the water mass fraction only. As
an EOS the **ideal gas law** is used and associated restrictions apply.
The model can also be used in the **fog region**, when moisture is
present in its liquid state. However, it is assumed that the liquid
water volume is negligible compared to that of the gas phase.
Computation of thermal properties is based on property data of [dry
air](Modelica_Media_Air_DryAirNasa.html#Modelica.Media.Air.DryAirNasa)
and water (source: VDI-Wärmeatlas), respectively. Besides the standard
thermodynamic variables **absolute and relative humidity**, x\_water and
phi, respectively, are given by the model. Upper case X denotes absolute
humidity with respect to mass of moist air while absolute humidity with
respect to mass of dry air only is denoted by a lower case x throughout
the model. See [package
description](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir)
for further information.

::

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.BaseProperties)
(Base properties (p, d, T, h, u, R, MM and, if applicable, X and Xi) of
a medium).

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
      T(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
      p(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
      Xi(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
      redeclare final constant Boolean standardOrderComponents=true) 
      "Moist air base properties record"

      /* p, T, X = X[Water] are used as preferred states, since only then all
         other quantities can be computed in a recursive sequence.
         If other variables are selected as states, static state selection
         is no longer possible and non-linear algebraic equations occur.
          */
      MassFraction x_water "Mass of total water/mass of dry air";
      Real phi "Relative humidity";

    protected 
      MassFraction X_liquid "Mass fraction of liquid or solid water";
      MassFraction X_steam "Mass fraction of steam water";
      MassFraction X_air "Mass fraction of air";
      MassFraction X_sat 
        "Steam water mass fraction of saturation boundary in kg_water/kg_moistair";
      MassFraction x_sat 
        "Steam water mass content of saturation boundary in kg_water/kg_dryair";
      AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
    equation 
      assert(T >= 200.0 and T <= 423.15, "
    Temperature T is not in the allowed range
    200.0 K <= (T ="
                 + String(T) + " K) <= 423.15 K
    required from medium model \""   + mediumName + "\".");
      MM = 1/(Xi[Water]/MMX[Water]+(1.0-Xi[Water])/MMX[Air]);

      p_steam_sat = min(saturationPressure(T),0.999*p);
      X_sat = min(p_steam_sat * k_mair/max(100*Constants.eps, p - p_steam_sat)*(1 - Xi[Water]), 1.0) 
        "Water content at saturation with respect to actual water content";
      X_liquid = max(Xi[Water] - X_sat, 0.0);
      X_steam  = Xi[Water]-X_liquid;
      X_air    = 1-Xi[Water];

      h = specificEnthalpy_pTX(p,T,Xi);
      R = dryair.R*(X_air/(1 - X_liquid)) + steam.R*X_steam/(1 - X_liquid);
      //
      u = h - R*T;
      d = p/(R*T);
      /* Note, u and d are computed under the assumption that the volume of the liquid
             water is neglible with respect to the volume of air and of steam
          */
      state.p = p;
      state.T = T;
      state.X = X;

      // these x are per unit mass of DRY air!
      x_sat    = k_mair*p_steam_sat/max(100*Constants.eps,p - p_steam_sat);
      x_water = Xi[Water]/max(X_air,100*Constants.eps);
      phi = p/p_steam_sat*Xi[Water]/(Xi[Water] + k_mair*X_air);
    end BaseProperties;

* * * * *

![image82](Modelica.Media.Air.MoistAir.setState_pTXI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).setState\_pTX
===================================================================================================================================================================

**Return thermodynamic state as function of pressure p, temperature T
and composition X**

Information
-----------

::

The [thermodynamic state
record](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState)
is computed from pressure p, temperature T and composition X.

::

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
  Type                                                   Name  Description
  ------------------------------------------------------ ----- ------------
  [ThermodynamicState](Modelica_Media_Air_MoistAir.html# state Thermodynami
  Modelica.Media.Air.MoistAir.ThermodynamicState)              c
                                                               state
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function setState_pTX 
      "Return thermodynamic state as function of pressure p, temperature T and composition X"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "Thermodynamic state";
    algorithm 
      state := if size(X,1) == nX then ThermodynamicState(p=p,T=T, X=X) else 
             ThermodynamicState(p=p,T=T, X=cat(1,X,{1-sum(X)}));
    end setState_pTX;

* * * * *

![image83](Modelica.Media.Air.MoistAir.setState_pTXI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).setState\_phX
===================================================================================================================================================================

**Return thermodynamic state as function of pressure p, specific
enthalpy h and composition X**

Information
-----------

::

The [thermodynamic state
record](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState)
is computed from pressure p, specific enthalpy h and composition X.

::

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
  Type                                                   Name  Description
  ------------------------------------------------------ ----- ------------
  [ThermodynamicState](Modelica_Media_Air_MoistAir.html# state Thermodynami
  Modelica.Media.Air.MoistAir.ThermodynamicState)              c
                                                               state
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function setState_phX 
      "Return thermodynamic state as function of pressure p, specific enthalpy h and composition X"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "Thermodynamic state";
    algorithm 
      state := if size(X,1) == nX then ThermodynamicState(p=p,T=T_phX(p,h,X),X=X) else 
             ThermodynamicState(p=p,T=T_phX(p,h,X), X=cat(1,X,{1-sum(X)}));
    end setState_phX;

* * * * *

![image84](Modelica.Media.Air.MoistAir.setState_pTXI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).setState\_dTX
===================================================================================================================================================================

**Return thermodynamic state as function of density d, temperature T and
composition X**

Information
-----------

::

The [thermodynamic state
record](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState)
is computed from density d, temperature T and composition X.

::

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
  Type                                                   Name  Description
  ------------------------------------------------------ ----- ------------
  [ThermodynamicState](Modelica_Media_Air_MoistAir.html# state Thermodynami
  Modelica.Media.Air.MoistAir.ThermodynamicState)              c
                                                               state
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function setState_dTX 
      "Return thermodynamic state as function of density d, temperature T and composition X"
      extends Modelica.Icons.Function;
      input Density d "density";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "Thermodynamic state";
    algorithm 
      state := if size(X,1) == nX then ThermodynamicState(p=d*({steam.R,dryair.R}*X)*T,T=T,X=X) else 
             ThermodynamicState(p=d*({steam.R,dryair.R}*cat(1,X,{1-sum(X)}))*T,T=T, X=cat(1,X,{1-sum(X)}));
    end setState_dTX;

* * * * *

![image85](Modelica.Media.Air.MoistAir.setState_pTXI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).setSmoothState
====================================================================================================================================================================

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
                                  T=Media.Common.smoothStep(x, state_a.T, state_b.T, x_small),
                                  X=Media.Common.smoothStep(x, state_a.X, state_b.X, x_small));
    end setSmoothState;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).Xsaturation
=======================================================================================================

**Return absolute humitity per unit mass of moist air at saturation as a
function of the thermodynamic state record**

Information
-----------

::

Absolute humidity per unit mass of moist air at saturation is computed
from pressure and temperature in the state record. Note, that unlike
X\_sat in the BaseProperties model this mass fraction refers to mass of
moist air at saturation.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Name Defau Description
                                                        lt    
  ------------------------------------------------ ---- ----- -------------
  [ThermodynamicState](Modelica_Media_Air_MoistAir stat       Thermodynamic
  .html#Modelica.Media.Air.MoistAir.ThermodynamicS e          state record
  tate)                                                       
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  [MassFraction](Modelica_Media_Interfaces_Partial X\_s Steam mass fraction
  Medium.html#Modelica.Media.Interfaces.PartialMed at   of sat. boundary
  ium.MassFraction)                                     [kg/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function Xsaturation 
      "Return absolute humitity per unit mass of moist air at saturation as a function of the thermodynamic state record"
      input ThermodynamicState state "Thermodynamic state record";
      output MassFraction X_sat "Steam mass fraction of sat. boundary";
    algorithm 
      X_sat := k_mair/(state.p/min(saturationPressure(state.T),0.999*state.p) - 1 + k_mair);
    end Xsaturation;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).xsaturation
=======================================================================================================

**Return absolute humitity per unit mass of dry air at saturation as a
function of the thermodynamic state record**

Information
-----------

::

Absolute humidity per unit mass of dry air at saturation is computed
from pressure and temperature in the thermodynamic state record.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Name Defau Description
                                                        lt    
  ------------------------------------------------ ---- ----- -------------
  [ThermodynamicState](Modelica_Media_Air_MoistAir stat       Thermodynamic
  .html#Modelica.Media.Air.MoistAir.ThermodynamicS e          state record
  tate)                                                       
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- ---------------------
  [MassFraction](Modelica_Media_Interfaces_Parti x\_s Absolute humidity per
  alMedium.html#Modelica.Media.Interfaces.Partia at   unit mass of dry air
  lMedium.MassFraction)                               [kg/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function xsaturation 
      "Return absolute humitity per unit mass of dry air at saturation as a function of the thermodynamic state record"
      input ThermodynamicState state "Thermodynamic state record";
      output MassFraction x_sat "Absolute humidity per unit mass of dry air";
    algorithm 
      x_sat:=k_mair*saturationPressure(state.T)/max(100*Constants.eps,state.p - saturationPressure(state.T));
    end xsaturation;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).xsaturation\_pT
===========================================================================================================

**Return absolute humitity per unit mass of dry air at saturation as a
function of pressure p and temperature T**

Information
-----------

::

Absolute humidity per unit mass of dry air at saturation is computed
from pressure and temperature.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                                   Nam Defau Descript
                                                         e   lt    ion
  ------------------------------------------------------ --- ----- --------
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMe p         Pressure
  dium.html#Modelica.Media.Interfaces.PartialMedium.Abso           [Pa]
  lutePressure)                                                    

  [Temperature](Modelica_SIunits.html#Modelica.SIunits.T T         Temperat
  emperature)                                                      ure
                                                                   [K]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- ---------------------
  [MassFraction](Modelica_Media_Interfaces_Parti x\_s Absolute humidity per
  alMedium.html#Modelica.Media.Interfaces.Partia at   unit mass of dry air
  lMedium.MassFraction)                               [kg/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function xsaturation_pT 
      "Return absolute humitity per unit mass of dry air at saturation as a function of pressure p and temperature T"
      input AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      output MassFraction x_sat "Absolute humidity per unit mass of dry air";
    algorithm 
      x_sat:=k_mair*saturationPressure(T)/max(100*Constants.eps,p - saturationPressure(T));
    end xsaturation_pT;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).massFraction\_pTphi
===============================================================================================================

**Return steam mass fraction as a function of relative humidity phi and
temperature T**

Information
-----------

::

Absolute humidity per unit mass of moist air is computed from
temperature, pressure and relative humidity.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                               Nam Defa Description
                                                     e   ult  
  -------------------------------------------------- --- ---- -------------
  [AbsolutePressure](Modelica_Media_Interfaces_Parti p        Pressure [Pa]
  alMedium.html#Modelica.Media.Interfaces.PartialMed          
  ium.AbsolutePressure)                                       

  [Temperature](Modelica_Media_Interfaces_PartialMed T        Temperature
  ium.html#Modelica.Media.Interfaces.PartialMedium.T          [K]
  emperature)                                                 

  Real                                               phi      Relative
                                                              humidity (0
                                                              ... 1.0)
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                           Name  Description
  ---------------------------------------------- ----- -------------------
  [MassFraction](Modelica_Media_Interfaces_Parti X\_st Absolute humidity,
  alMedium.html#Modelica.Media.Interfaces.Partia eam   steam mass fraction
  lMedium.MassFraction)                                [kg/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function massFraction_pTphi 
      "Return steam mass fraction as a function of relative humidity phi and temperature T"
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input Real phi "Relative humidity (0 ... 1.0)";
      output MassFraction X_steam "Absolute humidity, steam mass fraction";
    protected 
      constant Real k = 0.621964713077499 "Ratio of molar masses";
      AbsolutePressure psat = saturationPressure(T) "Saturation pressure";
    algorithm 
      X_steam := phi*k/(k*phi+p/psat-phi);
    end massFraction_pTphi;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).relativeHumidity\_pTX
=================================================================================================================

**Return relative humidity as a function of pressure p, temperature T
and composition X**

Information
-----------

::

Relative humidity is computed from pressure, temperature and composition
with 1.0 as the upper limit at saturation. Water mass fraction is the
first entry in the composition vector.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Name  Default Description
  ---------------------------------------------- ----- ------- ------------
  [Pressure](Modelica_SIunits.html#Modelica.SIun p             Pressure
  its.Pressure)                                                [Pa]

  [Temperature](Modelica_SIunits.html#Modelica.S T             Temperature
  Iunits.Temperature)                                          [K]

  [MassFraction](Modelica_SIunits.html#Modelica. X[:]          Composition
  SIunits.MassFraction)                                        [1]
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------------
  Real      phi       Relative humidity

Modelica definition
-------------------

    function relativeHumidity_pTX 
      "Return relative humidity as a function of pressure p, temperature T and composition X"
      input SI.Pressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] X "Composition";
      output Real phi "Relative humidity";
    protected 
      SI.Pressure p_steam_sat "Saturation pressure";
      SI.MassFraction X_air "Dry air mass fraction";
    algorithm 
      p_steam_sat :=min(saturationPressure(T), 0.999*p);
      X_air    :=1 - X[Water];
      phi :=max(0.0,min(1.0, p/p_steam_sat*X[Water]/(X[Water] + k_mair*X_air)));
    end relativeHumidity_pTX;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).relativeHumidity
============================================================================================================

**Return relative humidity as a function of the thermodynamic state
record**

Information
-----------

::

Relative humidity is computed from the thermodynamic state record with
1.0 as the upper limit at saturation.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                               Name Defau Description
                                                          lt    
  -------------------------------------------------- ---- ----- -----------
  [ThermodynamicState](Modelica_Media_Air_MoistAir.h stat       Thermodynam
  tml#Modelica.Media.Air.MoistAir.ThermodynamicState e          ic
  )                                                             state
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------------
  Real      phi       Relative humidity

Modelica definition
-------------------

    function relativeHumidity 
      "Return relative humidity as a function of the thermodynamic state record"
      input ThermodynamicState state "Thermodynamic state";
      output Real phi "Relative humidity";
    algorithm 
      phi:=relativeHumidity_pTX(state.p, state.T, state.X);
    end relativeHumidity;

* * * * *

![image86](Modelica.Media.Air.MoistAir.gasConstantI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).gasConstant
================================================================================================================================================================

**Return ideal gas constant as a function from thermodynamic state, only
valid for phi<1**

Information
-----------

::

The ideal gas constant for moist air is computed from [thermodynamic
state](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState)
assuming that all water is in the gas phase.

::

Extends from
[](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.gasConstant)
(Return the gas constant of the mixture (also for liquids)).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                   Nam Defa Descripti
                                                         e   ult  on
  ------------------------------------------------------ --- ---- ---------
  [ThermodynamicState](Modelica_Media_Interfaces_Partial sta      thermodyn
  MixtureMedium.html#Modelica.Media.Interfaces.PartialMi te       amic
  xtureMedium.ThermodynamicState)                                 state
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mod R    mixture gas
  elica.SIunits.SpecificHeatCapacity)                   constant [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends gasConstant 
      "Return ideal gas constant as a function from thermodynamic state, only valid for phi<1"

    algorithm 
      R := dryair.R*(1-state.X[Water]) + steam.R*state.X[Water];
    end gasConstant;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).gasConstant\_X
==========================================================================================================

**Return ideal gas constant as a function from composition X**

Information
-----------

::

The ideal gas constant for moist air is computed from the gas phase
composition. The first entry in composition vector X is the steam mass
fraction of the gas phase.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                       Name  Defaul Description
                                                   t      
  ------------------------------------------ ----- ------ -----------------
  [MassFraction](Modelica_SIunits.html#Model X[:]         Gas phase
  ica.SIunits.MassFraction)                               composition [1]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mod R    Ideal gas constant
  elica.SIunits.SpecificHeatCapacity)                   [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function gasConstant_X 
      "Return ideal gas constant as a function from composition X"
      input SI.MassFraction X[:] "Gas phase composition";
      output SI.SpecificHeatCapacity R "Ideal gas constant";
    algorithm 
      R := dryair.R*(1-X[Water]) + steam.R*X[Water];
    end gasConstant_X;

* * * * *

![image87](Modelica.Media.Air.MoistAir.saturationPressureLiquidI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).saturationPressureLiquid
==========================================================================================================================================================================================

**Return saturation pressure of water as a function of temperature T in
the range of 273.16 to 373.16 K**

Information
-----------

::

Saturation pressure of water above the triple point temperature is
computed from temperature. It's range of validity is between 273.16 and
373.16 K. Outside these limits a less accurate result is returned.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name  Defaul Description
                                                  t      
  ----------------------------------------- ----- ------ ------------------
  [Temperature](Modelica_SIunits.html#Model Tsat         saturation
  ica.SIunits.Temperature)                               temperature [K]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [AbsolutePressure](Modelica_SIunits.html#Modelica psat  saturation
  .SIunits.AbsolutePressure)                              pressure [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function saturationPressureLiquid 
      "Return saturation pressure of water as a function of temperature T in the range of 273.16 to 373.16 K"
      annotation(derivative=saturationPressureLiquid_der);

      extends Modelica.Icons.Function;
      input SI.Temperature Tsat "saturation temperature";
      output SI.AbsolutePressure psat "saturation pressure";
    algorithm 
      psat := 611.657*Math.exp(17.2799 - 4102.99/(Tsat - 35.719));
    end saturationPressureLiquid;

* * * * *

![image88](Modelica.Media.Air.MoistAir.saturationPressureLiquidI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).saturationPressureLiquid\_der
===============================================================================================================================================================================================

**Time derivative of saturationPressureLiquid**

Information
-----------

::

Derivative function of
[saturationPressureLiquid](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressureLiquid)

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                  Name  Defaul Description
                                              t      
  ------------------------------------- ----- ------ ----------------------
  [Temperature](Modelica_SIunits.html#M Tsat         Saturation temperature
  odelica.SIunits.Temperature)                       [K]

  Real                                  dTsat        Saturation temperature
                                                     derivative [K/s]
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name           Description
  --------- -------------- -------------------------------
  Real      psat\_der      Saturation pressure [Pa/s]

Modelica definition
-------------------

    function saturationPressureLiquid_der 
      "Time derivative of saturationPressureLiquid"

      extends Modelica.Icons.Function;
      input SI.Temperature Tsat "Saturation temperature";
      input Real dTsat(unit="K/s") "Saturation temperature derivative";
      output Real psat_der(unit="Pa/s") "Saturation pressure";
    algorithm 
    /*psat := 611.657*Math.exp(17.2799 - 4102.99/(Tsat - 35.719));*/
      psat_der:=611.657*Math.exp(17.2799 - 4102.99/(Tsat - 35.719))*4102.99*dTsat/(Tsat - 35.719)/(Tsat - 35.719);

    end saturationPressureLiquid_der;

* * * * *

![image89](Modelica.Media.Air.MoistAir.saturationPressureLiquidI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).sublimationPressureIce
========================================================================================================================================================================================

**Return sublimation pressure of water as a function of temperature T
between 223.16 and 273.16 K**

Information
-----------

::

Sublimation pressure of water below the triple point temperature is
computed from temperature. It's range of validity is between 223.16 and
273.16 K. Outside of these limits a less accurate result is returned.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name  Defaul Description
                                                  t      
  ----------------------------------------- ----- ------ ------------------
  [Temperature](Modelica_SIunits.html#Model Tsat         sublimation
  ica.SIunits.Temperature)                               temperature [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- -----------------
  [AbsolutePressure](Modelica_SIunits.html#Modelic psat  sublimation
  a.SIunits.AbsolutePressure)                            pressure [Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function sublimationPressureIce 
      "Return sublimation pressure of water as a function of temperature T between 223.16 and 273.16 K"
      annotation(derivative=sublimationPressureIce_der);

      extends Modelica.Icons.Function;
      input SI.Temperature Tsat "sublimation temperature";
      output SI.AbsolutePressure psat "sublimation pressure";
    algorithm 
      psat := 611.657*Math.exp(22.5159*(1.0 - 273.16/Tsat));
    end sublimationPressureIce;

* * * * *

![image90](Modelica.Media.Air.MoistAir.saturationPressureLiquidI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).sublimationPressureIce\_der
=============================================================================================================================================================================================

**Derivative function for 'sublimationPressureIce'**

Information
-----------

::

Derivative function of
[saturationPressureIce](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.sublimationPressureIce)

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                Name Defau Description
                                           lt    
  ----------------------------------- ---- ----- -------------------------
  [Temperature](Modelica_SIunits.html Tsat       Sublimation temperature
  #Modelica.SIunits.Temperature)                 [K]

  Real                                dTsa       Time derivative of
                                      t          sublimation temperature
                                                 [K/s]
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name           Description
  --------- -------------- --------------------------------
  Real      psat\_der      Sublimation pressure [Pa/s]

Modelica definition
-------------------

    function sublimationPressureIce_der 
      "Derivative function for 'sublimationPressureIce'"

      extends Modelica.Icons.Function;
      input SI.Temperature Tsat "Sublimation temperature";
      input Real dTsat(unit="K/s") "Time derivative of sublimation temperature";
      output Real psat_der(unit="Pa/s") "Sublimation pressure";
    algorithm 
      /*psat := 611.657*Math.exp(22.5159*(1.0 - 273.16/Tsat));*/
      psat_der:=611.657*Math.exp(22.5159*(1.0 - 273.16/Tsat))*22.5159*273.16*dTsat/Tsat/Tsat;
    end sublimationPressureIce_der;

* * * * *

![image91](Modelica.Media.Air.MoistAir.saturationPressureLiquidI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).saturationPressure
====================================================================================================================================================================================

**Return saturation pressure of water as a function of temperature T
between 223.16 and 373.16 K**

Information
-----------

::

Saturation pressure of water in the liquid and the solid region is
computed using an Antoine-type correlation. It's range of validity is
between 223.16 and 373.16 K. Outside of these limits a (less accurate)
result is returned. Functions for the
[solid](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.sublimationPressureIce)
and the
[liquid](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressureLiquid)
region, respectively, are combined using the first derivative continuous
[spliceFunction](Modelica_Media_Air_MoistAir_Utilities.html#Modelica.Media.Air.MoistAir.Utilities.spliceFunction).

::

Extends from
[](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.saturationPressure)
(Return saturation pressure of condensing fluid).

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

    redeclare function extends saturationPressure 
      "Return saturation pressure of water as a function of temperature T between 223.16 and 373.16 K"
      annotation(derivative=saturationPressure_der);

    algorithm 
      psat := Utilities.spliceFunction(saturationPressureLiquid(Tsat),sublimationPressureIce(Tsat),Tsat-273.16,1.0);
    end saturationPressure;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).saturationPressure\_der
===================================================================================================================

**Derivative function for 'saturationPressure'**

Information
-----------

::

Derivative function of
[saturationPressure](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressure)

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Nam Defa Description
                                               e   ult  
  -------------------------------------------- --- ---- -------------------
  [Temperature](Modelica_Media_Interfaces_Part Tsa      Saturation
  ialMedium.html#Modelica.Media.Interfaces.Par t        temperature [K]
  tialMedium.Temperature)                               

  Real                                         dTs      Time derivative of
                                               at       saturation
                                                        temperature [K/s]
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name           Description
  --------- -------------- -------------------------------
  Real      psat\_der      Saturation pressure [Pa/s]

Modelica definition
-------------------

    function saturationPressure_der 
      "Derivative function for 'saturationPressure'"
      input Temperature Tsat "Saturation temperature";
      input Real dTsat(unit="K/s") "Time derivative of saturation temperature";
      output Real psat_der(unit="Pa/s") "Saturation pressure";

    algorithm 
      /*psat := Utilities.spliceFunction(saturationPressureLiquid(Tsat),sublimationPressureIce(Tsat),Tsat-273.16,1.0);*/
      psat_der := Utilities.spliceFunction_der(
        saturationPressureLiquid(Tsat),
        sublimationPressureIce(Tsat),
        Tsat - 273.16,
        1.0,
        saturationPressureLiquid_der(Tsat=Tsat, dTsat=dTsat),
        sublimationPressureIce_der(Tsat=Tsat, dTsat=dTsat),
        dTsat,
        0);
    end saturationPressure_der;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).saturationTemperature
=================================================================================================================

**Return saturation temperature of water as a function of (partial)
pressure p**

Information
-----------

::

Computes saturation temperature from (partial) pressure via numerical
inversion of the function
[saturationPressure](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressure).
Therefore additional inputs are required (or the defaults are used) for
upper and lower temperature bounds.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                    Name   Defaul Description
                                                 t      
  --------------------------------------- ------ ------ -------------------
  [Pressure](Modelica_SIunits.html#Modeli p             Pressure [Pa]
  ca.SIunits.Pressure)                                  

  [Temperature](Modelica_SIunits.html#Mod T\_min 200    Lower boundary of
  elica.SIunits.Temperature)                            solution [K]

  [Temperature](Modelica_SIunits.html#Mod T\_max 400    Upper boundary of
  elica.SIunits.Temperature)                            solution [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                           Name  Description
  ---------------------------------------------- ----- -------------------
  [Temperature](Modelica_SIunits.html#Modelica.S T     Saturation
  Iunits.Temperature)                                  temperature [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function saturationTemperature 
      "Return saturation temperature of water as a function of (partial) pressure p"

      input SI.Pressure p "Pressure";
      input SI.Temperature T_min=200 "Lower boundary of solution";
      input SI.Temperature T_max=400 "Upper boundary of solution";
      output SI.Temperature T "Saturation temperature";

    protected 
    package Internal
       extends Modelica.Media.Common.OneNonLinearEquation;

     redeclare record extends f_nonlinear_Data
       // Define data to be passed to user function
     end f_nonlinear_Data;

     redeclare function extends f_nonlinear
     algorithm 
        y:=saturationPressure(x);
      // Compute the non-linear equation: y = f(x, Data)
     end f_nonlinear;

     // Dummy definition
     redeclare function extends solve
     end solve;
    end Internal;
    algorithm 
      T:=Internal.solve(p, T_min, T_max);
    end saturationTemperature;

* * * * *

![image92](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).enthalpyOfVaporization
======================================================================================================================================================================================

**Return enthalpy of vaporization of water as a function of temperature
T, 0 - 130 degC**

Information
-----------

::

Enthalpy of vaporization of water is computed from temperature in the
region of 0 to 130 °C.

::

Extends from
[](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfVaporization)
(Return vaporization enthalpy of condensing fluid).

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

    redeclare function extends enthalpyOfVaporization 
      "Return enthalpy of vaporization of water as a function of temperature T, 0 - 130 degC"

    algorithm 
     /*r0 := 1e3*(2501.0145 - (T - 273.15)*(2.3853 + (T - 273.15)*(0.002969 - (T
          - 273.15)*(7.5293e-5 + (T - 273.15)*4.6084e-7))));*/
    //katrin: replaced by linear correlation, simpler and more accurate in the entire region
    //source VDI-Waermeatlas, linear inter- and extrapolation between values for 0.01 &deg;C and 40 &deg;C.
    r0:=(2405900-2500500)/(40-0)*(T-273.16)+2500500;
    end enthalpyOfVaporization;

* * * * *

![image93](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).HeatCapacityOfWater
===================================================================================================================================================================================

**Return specific heat capacity of water (liquid only) as a function of
temperature T**

Information
-----------

::

The specific heat capacity of water (liquid and solid) is calculated
using a polynomial approach and data from VDI-Waermeatlas 8. Edition
(Db1)

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                                  Name Defau Descripti
                                                             lt    on
  ----------------------------------------------------- ---- ----- ---------
  [Temperature](Modelica_Media_Interfaces_PartialMedium T          Temperatu
  .html#Modelica.Media.Interfaces.PartialMedium.Tempera            re
  ture)                                                            [K]
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                               Name Description
  -------------------------------------------------- ---- -----------------
  [SpecificHeatCapacity](Modelica_Media_Interfaces_P cp\_ Specific heat
  artialMedium.html#Modelica.Media.Interfaces.Partia fl   capacity of
  lMedium.SpecificHeatCapacity)                           liquid [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function HeatCapacityOfWater 
      "Return specific heat capacity of water (liquid only) as a function of temperature T"
      extends Modelica.Icons.Function;
      input Temperature T "Temperature";
      output SpecificHeatCapacity cp_fl "Specific heat capacity of liquid";
    algorithm 
      cp_fl := 1e3*(4.2166 - (T - 273.15)*(0.0033166 + (T - 273.15)*(0.00010295
         - (T - 273.15)*(1.3819e-6 + (T - 273.15)*7.3221e-9))));
    end HeatCapacityOfWater;

* * * * *

![image94](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).enthalpyOfLiquid
================================================================================================================================================================================

**Return enthalpy of liquid water as a function of temperature T(use
enthalpyOfWater instead)**

Information
-----------

::

Specific enthalpy of liquid water is computed from temperature using a
polynomial approach. Kept for compatibility reasons, better use
[enthalpyOfWater](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfWater)
instead.

::

Extends from
[](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfLiquid)
(Return liquid enthalpy of condensing fluid).

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

    redeclare function extends enthalpyOfLiquid 
      "Return enthalpy of liquid water as a function of temperature T(use enthalpyOfWater instead)"

    algorithm 
      h := (T - 273.15)*1e3*(4.2166 - 0.5*(T - 273.15)*(0.0033166 + 0.333333*(T - 273.15)*(0.00010295
         - 0.25*(T - 273.15)*(1.3819e-6 + 0.2*(T - 273.15)*7.3221e-9))));
    end enthalpyOfLiquid;

* * * * *

![image95](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).enthalpyOfGas
=============================================================================================================================================================================

**Return specific enthalpy of gas (air and steam) as a function of
temperature T and composition X**

Information
-----------

::

Specific enthalpy of moist air is computed from temperature, provided
all water is in the gaseous state. The first entry in the composition
vector X must be the mass fraction of steam. For a function that also
covers the fog region please refer to
[h\_pTX](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.h_pTX).

::

Extends from
[](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfGas)
(Return enthalpy of non-condensing gas mixture).

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

    redeclare function extends enthalpyOfGas 
      "Return specific enthalpy of gas (air and steam) as a function of temperature T and composition X"

    algorithm 
      h := SingleGasNasa.h_Tlow(data=steam, T=T, refChoice=3, h_off=46479.819+2501014.5)*X[Water]
           + SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684)*(1.0-X[Water]);
    end enthalpyOfGas;

* * * * *

![image96](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).enthalpyOfCondensingGas
=======================================================================================================================================================================================

**Return specific enthalpy of steam as a function of temperature T**

Information
-----------

::

Specific enthalpy of steam is computed from temperature.

::

Extends from
[](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfCondensingGas)
(Return enthalpy of condensing gas (most often steam)).

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

    redeclare function extends enthalpyOfCondensingGas 
      "Return specific enthalpy of steam as a function of temperature T"

    algorithm 
      h := SingleGasNasa.h_Tlow(data=steam, T=T, refChoice=3, h_off=46479.819+2501014.5);
    end enthalpyOfCondensingGas;

* * * * *

![image97](Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).enthalpyOfNonCondensingGas
==========================================================================================================================================================================================

**Return specific enthalpy of dry air as a function of temperature T**

Information
-----------

::

Specific enthalpy of dry air is computed from temperature.

::

Extends from
[](Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfNonCondensingGas)
(Return enthalpy of the non-condensing species).

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

    redeclare function extends enthalpyOfNonCondensingGas 
      "Return specific enthalpy of dry air as a function of temperature T"

    algorithm 
      h := SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684);
    end enthalpyOfNonCondensingGas;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).enthalpyOfWater
===========================================================================================================

**Computes specific enthalpy of water (solid/liquid) near atmospheric
pressure from temperature T**

Information
-----------

::

Specific enthalpy of water (liquid and solid) is computed from
temperature using constant properties as follows:

-   heat capacity of liquid water:4200 J/kg
-   heat capacity of solid water: 2050 J/kg
-   enthalpy of fusion (liquid=\>solid): 333000 J/kg

Pressure is assumed to be around 1 bar. This function is usually used to
determine the specific enthalpy of the liquid or solid fraction of moist
air.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Temperature](Modelica_SIunits.html#Modelica. T             Temperature
  SIunits.Temperature)                                        [K]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                          Name  Description
  --------------------------------------------- ----- ---------------------
  [SpecificEnthalpy](Modelica_SIunits.html#Mode h     Specific enthalpy of
  lica.SIunits.SpecificEnthalpy)                      water [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function enthalpyOfWater 
      "Computes specific enthalpy of water (solid/liquid) near atmospheric pressure from temperature T"
      annotation(derivative=enthalpyOfWater_der);
      input SIunits.Temperature T "Temperature";
      output SIunits.SpecificEnthalpy h "Specific enthalpy of water";
    algorithm 
    /*simple model assuming constant properties:
      heat capacity of liquid water:4200 J/kg
      heat capacity of solid water: 2050 J/kg
      enthalpy of fusion (liquid=>solid): 333000 J/kg*/

      h:=Utilities.spliceFunction(4200*(T-273.15),2050*(T-273.15)-333000,T-273.16,0.1);
    end enthalpyOfWater;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).enthalpyOfWater\_der
================================================================================================================

**Derivative function of enthalpyOfWater**

Information
-----------

::

Derivative function for
[enthalpyOfWater](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfWater).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                   Name Defaul Description
                                              t      
  -------------------------------------- ---- ------ ----------------------
  [Temperature](Modelica_SIunits.html#Mo T           Temperature [K]
  delica.SIunits.Temperature)                        

  Real                                   dT          Time derivative of
                                                     temperature [K/s]
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------------------------------------------
  Real      dh        Time derivative of specific enthalpy [J/(kg.s)]

Modelica definition
-------------------

    function enthalpyOfWater_der "Derivative function of enthalpyOfWater"
      input SIunits.Temperature T "Temperature";
      input Real dT(unit="K/s") "Time derivative of temperature";
      output Real dh(unit="J/(kg.s)") "Time derivative of specific enthalpy";
    algorithm 
    /*simple model assuming constant properties:
      heat capacity of liquid water:4200 J/kg
      heat capacity of solid water: 2050 J/kg
      enthalpy of fusion (liquid=>solid): 333000 J/kg*/

      //h:=Utilities.spliceFunction(4200*(T-273.15),2050*(T-273.15)-333000,T-273.16,0.1);
      dh:=Utilities.spliceFunction_der(4200*(T-273.15),2050*(T-273.15)-333000,T-273.16,0.1,4200*dT,2050*dT,dT,0);
    end enthalpyOfWater_der;

* * * * *

![image98](Modelica.Media.Air.MoistAir.pressureI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).pressure
==========================================================================================================================================================

**Returns pressure of ideal gas as a function of the thermodynamic state
record**

Information
-----------

::

Pressure is returned from the thermodynamic state record input as a
simple assignment.

::

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

    redeclare function extends pressure 
      "Returns pressure of ideal gas as a function of the thermodynamic state record"

    algorithm 
     p := state.p;
    end pressure;

* * * * *

![image99](Modelica.Media.Air.MoistAir.pressureI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).temperature
=============================================================================================================================================================

**Return temperature of ideal gas as a function of the thermodynamic
state record**

Information
-----------

::

Temperature is returned from the thermodynamic state record input as a
simple assignment.

::

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
      "Return temperature of ideal gas as a function of the thermodynamic state record"

    algorithm 
      T := state.T;
    end temperature;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).T\_phX
==================================================================================================

**Return temperature as a function of pressure p, specific enthalpy h
and composition X**

Information
-----------

::

Temperature is computed from pressure, specific enthalpy and composition
via numerical inversion of function
[h\_pTX](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.h_pTX).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Defa Description
                                                   e   ult  
  ------------------------------------------------ --- ---- ---------------
  [AbsolutePressure](Modelica_Media_Interfaces_Par p        Pressure [Pa]
  tialMedium.html#Modelica.Media.Interfaces.Partia          
  lMedium.AbsolutePressure)                                 

  [SpecificEnthalpy](Modelica_Media_Interfaces_Par h        Specific
  tialMedium.html#Modelica.Media.Interfaces.Partia          enthalpy [J/kg]
  lMedium.SpecificEnthalpy)                                 

  [MassFraction](Modelica_Media_Interfaces_Partial X[:      Mass fractions
  Medium.html#Modelica.Media.Interfaces.PartialMed ]        of composition
  ium.MassFraction)                                         [kg/kg]
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

    function T_phX 
      "Return temperature as a function of pressure p, specific enthalpy h and composition X"
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction[:] X "Mass fractions of composition";
      output Temperature T "Temperature";

    protected 
    package Internal 
        "Solve h(data,T) for T with given h (use only indirectly via temperature_phX)"
      extends Modelica.Media.Common.OneNonLinearEquation;
      redeclare record extends f_nonlinear_Data 
          "Data to be passed to non-linear function"
        extends Modelica.Media.IdealGases.Common.DataRecord;
      end f_nonlinear_Data;

      redeclare function extends f_nonlinear
      algorithm 
          y := h_pTX(p,x,X);
      end f_nonlinear;

      // Dummy definition has to be added for current Dymola
      redeclare function extends solve
      end solve;
    end Internal;

    algorithm 
      T := Internal.solve(h, 240, 400, p, X[1:nXi], steam);
    end T_phX;

* * * * *

![image100](Modelica.Media.Air.MoistAir.densityI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).density
=========================================================================================================================================================

**Returns density of ideal gas as a function of the thermodynamic state
record**

Information
-----------

::

Density is computed from pressure, temperature and composition in the
thermodynamic state record applying the ideal gas law.

::

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

    redeclare function extends density 
      "Returns density of ideal gas as a function of the thermodynamic state record"

    algorithm 
      d := state.p/(gasConstant(state)*state.T);
    end density;

* * * * *

![image101](Modelica.Media.Air.MoistAir.densityI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).specificEnthalpy
==================================================================================================================================================================

**Return specific enthalpy of moist air as a function of the
thermodynamic state record**

Information
-----------

::

Specific enthalpy of moist air is computed from the thermodynamic state
record. The fog region is included for both, ice and liquid fog.

::

Extends from
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
      "Return specific enthalpy of moist air as a function of the thermodynamic state record"

    algorithm 
      h := h_pTX(state.p, state.T, state.X);
    end specificEnthalpy;

* * * * *

![image102](Modelica.Media.Air.MoistAir.densityI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).h\_pTX
========================================================================================================================================================

**Return specific enthalpy of moist air as a function of pressure p,
temperature T and composition X**

Information
-----------

::

Specific enthalpy of moist air is computed from pressure, temperature
and composition with X[1] as the total water mass fraction. The fog
region is included for both, ice and liquid fog.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                     Name Defaul Description
                                                t      
  ---------------------------------------- ---- ------ -------------------
  [Pressure](Modelica_SIunits.html#Modelic p           Pressure [Pa]
  a.SIunits.Pressure)                                  

  [Temperature](Modelica_SIunits.html#Mode T           Temperature [K]
  lica.SIunits.Temperature)                            

  [MassFraction](Modelica_SIunits.html#Mod X[:]        Mass fractions of
  elica.SIunits.MassFraction)                          moist air [1]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                          Name Description
  --------------------------------------------- ---- ---------------------
  [SpecificEnthalpy](Modelica_SIunits.html#Mode h    Specific enthalpy at
  lica.SIunits.SpecificEnthalpy)                     p, T, X [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function h_pTX 
      "Return specific enthalpy of moist air as a function of pressure p, temperature T and composition X"
      annotation(derivative=h_pTX_der);
      extends Modelica.Icons.Function;
      input SI.Pressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction X[:] "Mass fractions of moist air";
      output SI.SpecificEnthalpy h "Specific enthalpy at p, T, X";
    protected 
      SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
      SI.MassFraction X_sat "Absolute humidity per unit mass of moist air";
      SI.MassFraction X_liquid "mass fraction of liquid water";
      SI.MassFraction X_steam "mass fraction of steam water";
      SI.MassFraction X_air "mass fraction of air";
    algorithm 
      p_steam_sat :=saturationPressure(T);
      //p_steam_sat :=min(saturationPressure(T), 0.999*p);
      X_sat:=min(p_steam_sat*k_mair/max(100*Constants.eps, p - p_steam_sat)*(1 - X[
        Water]), 1.0);
      X_liquid :=max(X[Water] - X_sat, 0.0);
      X_steam  :=X[Water] - X_liquid;
      X_air    :=1 - X[Water];
     /* h        := {SingleGasNasa.h_Tlow(data=steam,  T=T, refChoice=3, h_off=46479.819+2501014.5),
                   SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684)}*
        {X_steam, X_air} + enthalpyOfLiquid(T)*X_liquid;*/
       h        := {SingleGasNasa.h_Tlow(data=steam,  T=T, refChoice=3, h_off=46479.819+2501014.5),
                   SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684)}*
        {X_steam, X_air} + enthalpyOfWater(T)*X_liquid;
    end h_pTX;

* * * * *

![image103](Modelica.Media.Air.MoistAir.densityI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).h\_pTX\_der
=============================================================================================================================================================

**Derivative function of h\_pTX**

Information
-----------

::

Derivative function for
[h\_pTX](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.h_pTX).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                     Name  Defaul Description
                                                 t      
  ---------------------------------------- ----- ------ -------------------
  [Pressure](Modelica_SIunits.html#Modelic p            Pressure [Pa]
  a.SIunits.Pressure)                                   

  [Temperature](Modelica_SIunits.html#Mode T            Temperature [K]
  lica.SIunits.Temperature)                             

  [MassFraction](Modelica_SIunits.html#Mod X[:]         Mass fractions of
  elica.SIunits.MassFraction)                           moist air [1]

  Real                                     dp           Pressure derivative
                                                        [Pa/s]

  Real                                     dT           Temperature
                                                        derivative [K/s]

  Real                                     dX[:]        Composition
                                                        derivative [1/s]
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- ----------------------------------------------------
  Real      h\_der      Time derivative of specific enthalpy [J/(kg.s)]

Modelica definition
-------------------

    function h_pTX_der "Derivative function of h_pTX"
      extends Modelica.Icons.Function;
      input SI.Pressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction X[:] "Mass fractions of moist air";
      input Real dp(unit="Pa/s") "Pressure derivative";
      input Real dT(unit="K/s") "Temperature derivative";
      input Real dX[:](each unit="1/s") "Composition derivative";
      output Real h_der(unit="J/(kg.s)") "Time derivative of specific enthalpy";
    protected 
      SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
      SI.MassFraction X_sat "Absolute humidity per unit mass of moist air";
      SI.MassFraction X_liquid "Mass fraction of liquid water";
      SI.MassFraction X_steam "Mass fraction of steam water";
      SI.MassFraction X_air "Mass fraction of air";
      SI.MassFraction x_sat 
        "Absolute humidity per unit mass of dry air at saturation";
      Real dX_steam(unit="1/s") "Time deriveative of steam mass fraction";
      Real dX_air(unit="1/s") "Time derivative of dry air mass fraction";
      Real dX_liq(unit="1/s") "Time derivative of liquid/solid water mass fraction";
      Real dps(unit="Pa/s") "Time derivative of saturation pressure";
      Real dx_sat(unit="1/s") 
        "Time derivative of abolute humidity per unit mass of dry air";
    algorithm 
      p_steam_sat :=saturationPressure(T);
      x_sat:=p_steam_sat*k_mair/max(100*Modelica.Constants.eps, p - p_steam_sat);
      X_sat:=min(x_sat*(1 - X[Water]), 1.0);
      X_liquid :=Utilities.spliceFunction(X[Water] - X_sat, 0.0, X[Water] - X_sat,1e-6);
      X_steam  :=X[Water] - X_liquid;
      X_air    :=1 - X[Water];

      dX_air:=-dX[Water];
      dps:=saturationPressure_der(Tsat=T, dTsat=dT);
      dx_sat:=k_mair*(dps*(p-p_steam_sat)-p_steam_sat*(dp-dps))/(p-p_steam_sat)/(p-p_steam_sat);
      dX_liq:=Utilities.spliceFunction_der(X[Water] - X_sat, 0.0, X[Water] - X_sat,1e-6,(1+x_sat)*dX[Water]-(1-X[Water])*dx_sat,0.0,(1+x_sat)*dX[Water]-(1-X[Water])*dx_sat,0.0);
      //dX_liq:=if X[Water]>=X_sat then (1+x_sat)*dX[Water]-(1-X[Water])*dx_sat else 0;
      dX_steam:=dX[Water]-dX_liq;

      h_der:= X_steam*Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow_der(data=steam, T=T, refChoice=3, h_off=46479.819+2501014.5, dT=dT)+
              dX_steam*Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow(data=steam,  T=T, refChoice=3, h_off=46479.819+2501014.5) +
              X_air*Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow_der(data=dryair, T=T, refChoice=3, h_off=25104.684, dT=dT) +
              dX_air*Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684) +
              X_liquid*enthalpyOfWater_der(T=T, dT=dT) +
              dX_liq*enthalpyOfWater(T);

    end h_pTX_der;

* * * * *

![image104](Modelica.Media.Air.MoistAir.densityI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).isentropicExponent
====================================================================================================================================================================

**Return isentropic exponent (only for gas fraction!)**

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
      "Return isentropic exponent (only for gas fraction!)"
    algorithm 
      gamma := specificHeatCapacityCp(state)/specificHeatCapacityCv(state);
    end isentropicExponent;

* * * * *

![image105](Modelica.Media.Air.MoistAir.densityI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).isentropicEnthalpyApproximation
=================================================================================================================================================================================

**Approximate calculation of h\_is from upstream properties, downstream
pressure, gas part only**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                            Nam Defa Description
                                                  e   ult  
  ----------------------------------------------- --- ---- ----------------
  [AbsolutePressure](Modelica_Media_Interfaces_Pa p2       downstream
  rtialMedium.html#Modelica.Media.Interfaces.Part          pressure [Pa]
  ialMedium.AbsolutePressure)                              

  [ThermodynamicState](Modelica_Media_Air_MoistAi sta      thermodynamic
  r.html#Modelica.Media.Air.MoistAir.Thermodynami te       state at
  cState)                                                  upstream
                                                           location
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  [SpecificEnthalpy](Modelica_Media_Interfaces_PartialMe h\_i isentropic
  dium.html#Modelica.Media.Interfaces.PartialMedium.Spec s    enthalpy
  ificEnthalpy)                                               [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function isentropicEnthalpyApproximation 
      "Approximate calculation of h_is from upstream properties, downstream pressure, gas part only"
      extends Modelica.Icons.Function;
      input AbsolutePressure p2 "downstream pressure";
      input ThermodynamicState state "thermodynamic state at upstream location";
      output SpecificEnthalpy h_is "isentropic enthalpy";
    protected 
      SpecificEnthalpy h "specific enthalpy at upstream location";
      IsentropicExponent gamma =  isentropicExponent(state) "Isentropic exponent";
    protected 
      MassFraction[nX] X "complete X-vector";
    algorithm 
      X := if reducedX then cat(1,state.X,{1-sum(state.X)}) else state.X;
      h := {SingleGasNasa.h_Tlow(data=steam,  T=state.T, refChoice=3, h_off=46479.819+2501014.5),
          SingleGasNasa.h_Tlow(data=dryair, T=state.T, refChoice=3, h_off=25104.684)}*X;

      h_is := h + gamma/(gamma - 1.0)*(state.T*gasConstant(state))*
        ((p2/state.p)^((gamma - 1)/gamma) - 1.0);
    end isentropicEnthalpyApproximation;

* * * * *

![image106](Modelica.Media.Air.MoistAir.densityI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).specificInternalEnergy
========================================================================================================================================================================

**Return specific internal energy of moist air as a function of the
thermodynamic state record**

Information
-----------

::

Specific internal energy is determined from the thermodynamic state
record, assuming that the liquid or solid water volume is negligible.

::

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
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  [SpecificInternalEnergy](Modelica_SIunits.html#M u    Specific internal
  odelica.SIunits.SpecificInternalEnergy)               energy [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends specificInternalEnergy 
      "Return specific internal energy of moist air as a function of the thermodynamic state record"
      extends Modelica.Icons.Function;
      output SI.SpecificInternalEnergy u "Specific internal energy";
    algorithm 
       u := specificInternalEnergy_pTX(state.p,state.T,state.X);

    end specificInternalEnergy;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).specificInternalEnergy\_pTX
=======================================================================================================================

**Return specific internal energy of moist air as a function of pressure
p, temperature T and composition X**

Information
-----------

::

Specific internal energy is determined from pressure p, temperature T
and composition X, assuming that the liquid or solid water volume is
negligible.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                     Name Defaul Description
                                                t      
  ---------------------------------------- ---- ------ -------------------
  [Pressure](Modelica_SIunits.html#Modelic p           Pressure [Pa]
  a.SIunits.Pressure)                                  

  [Temperature](Modelica_SIunits.html#Mode T           Temperature [K]
  lica.SIunits.Temperature)                            

  [MassFraction](Modelica_SIunits.html#Mod X[:]        Mass fractions of
  elica.SIunits.MassFraction)                          moist air [1]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  [SpecificInternalEnergy](Modelica_SIunits.html#M u    Specific internal
  odelica.SIunits.SpecificInternalEnergy)               energy [J/kg]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function specificInternalEnergy_pTX 
      "Return specific internal energy of moist air as a function of pressure p, temperature T and composition X"
      annotation(derivative=specificInternalEnergy_pTX_der);
      input SI.Pressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction X[:] "Mass fractions of moist air";
      output SI.SpecificInternalEnergy u "Specific internal energy";
    protected 
      SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
      SI.MassFraction X_liquid "Mass fraction of liquid water";
      SI.MassFraction X_steam "Mass fraction of steam water";
      SI.MassFraction X_air "Mass fraction of air";
      SI.MassFraction X_sat "Absolute humidity per unit mass of moist air";
      Real R_gas "Ideal gas constant";
    algorithm 
      p_steam_sat :=saturationPressure(T);
      X_sat:=min(p_steam_sat*k_mair/max(100*Constants.eps, p - p_steam_sat)*(1 - X[
        Water]), 1.0);
      X_liquid :=max(X[Water] - X_sat, 0.0);
      X_steam  :=X[Water] - X_liquid;
      X_air    :=1 - X[Water];
      R_gas:= dryair.R*X_air/(1-X_liquid)+steam.R* X_steam/(1-X_liquid);
      u       := X_steam*SingleGasNasa.h_Tlow(data=steam,  T=T, refChoice=3, h_off=46479.819+2501014.5)+
                 X_air*SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684)
                 + enthalpyOfWater(T)*X_liquid-R_gas*T;

    end specificInternalEnergy_pTX;

* * * * *

[Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).specificInternalEnergy\_pTX\_der
============================================================================================================================

**Derivative function for specificInternalEnergy\_pTX**

Information
-----------

::

Derivative function for
[specificInternalEnergy\_pTX](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificInternalEnergy_pTX).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                     Name  Defaul Description
                                                 t      
  ---------------------------------------- ----- ------ -------------------
  [Pressure](Modelica_SIunits.html#Modelic p            Pressure [Pa]
  a.SIunits.Pressure)                                   

  [Temperature](Modelica_SIunits.html#Mode T            Temperature [K]
  lica.SIunits.Temperature)                             

  [MassFraction](Modelica_SIunits.html#Mod X[:]         Mass fractions of
  elica.SIunits.MassFraction)                           moist air [1]

  Real                                     dp           Pressure derivative
                                                        [Pa/s]

  Real                                     dT           Temperature
                                                        derivative [K/s]

  Real                                     dX[:]        Mass fraction
                                                        derivatives [1/s]
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- ---------------------------------------------------
  Real      u\_der      Specific internal energy derivative [J/(kg.s)]

Modelica definition
-------------------

    function specificInternalEnergy_pTX_der 
      "Derivative function for specificInternalEnergy_pTX"
      input SI.Pressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction X[:] "Mass fractions of moist air";
      input Real dp(unit="Pa/s") "Pressure derivative";
      input Real dT(unit="K/s") "Temperature derivative";
      input Real dX[:](each unit="1/s") "Mass fraction derivatives";
      output Real u_der(unit="J/(kg.s)") "Specific internal energy derivative";
    protected 
      SI.AbsolutePressure p_steam_sat "Partial saturation pressure of steam";
      SI.MassFraction X_liquid "Mass fraction of liquid water";
      SI.MassFraction X_steam "Mass fraction of steam water";
      SI.MassFraction X_air "Mass fraction of air";
      SI.MassFraction X_sat "Absolute humidity per unit mass of moist air";
      SI.SpecificHeatCapacity R_gas "Ideal gas constant";

      SI.MassFraction x_sat 
        "Absolute humidity per unit mass of dry air at saturation";
      Real dX_steam(unit="1/s") "Time deriveative of steam mass fraction";
      Real dX_air(unit="1/s") "Time derivative of dry air mass fraction";
      Real dX_liq(unit="1/s") "Time derivative of liquid/solid water mass fraction";
      Real dps(unit="Pa/s") "Time derivative of saturation pressure";
      Real dx_sat(unit="1/s") 
        "Time derivative of abolute humidity per unit mass of dry air";
      Real dR_gas(unit="J/(kg.K.s)") "Time derivative of ideal gas constant";
    algorithm 
      p_steam_sat :=saturationPressure(T);
      x_sat:=p_steam_sat*k_mair/max(100*Modelica.Constants.eps, p - p_steam_sat);
      X_sat:=min(x_sat*(1 - X[Water]), 1.0);
      X_liquid :=Utilities.spliceFunction(X[Water] - X_sat, 0.0, X[Water] - X_sat,1e-6);
      X_steam  :=X[Water] - X_liquid;
      X_air    :=1 - X[Water];
      R_gas:= steam.R*X_steam/(1-X_liquid)+dryair.R* X_air/(1-X_liquid);

      dX_air:=-dX[Water];
      dps:=saturationPressure_der(Tsat=T, dTsat=dT);
      dx_sat:=k_mair*(dps*(p-p_steam_sat)-p_steam_sat*(dp-dps))/(p-p_steam_sat)/(p-p_steam_sat);
      dX_liq:=Utilities.spliceFunction_der(X[Water] - X_sat, 0.0, X[Water] - X_sat,1e-6,(1+x_sat)*dX[Water]-(1-X[Water])*dx_sat,0.0,(1+x_sat)*dX[Water]-(1-X[Water])*dx_sat,0.0);
      dX_steam:=dX[Water]-dX_liq;
      dR_gas:=(steam.R*(dX_steam*(1-X_liquid)+dX_liq*X_steam)+dryair.R*(dX_air*(1-X_liquid)+dX_liq*X_air))/(1-X_liquid)/(1-X_liquid);

      u_der:=X_steam*SingleGasNasa.h_Tlow_der(data=steam, T=T, refChoice=3, h_off=46479.819+2501014.5, dT=dT)+
             dX_steam*SingleGasNasa.h_Tlow(data=steam,  T=T, refChoice=3, h_off=46479.819+2501014.5) +
             X_air*SingleGasNasa.h_Tlow_der(data=dryair, T=T, refChoice=3, h_off=25104.684, dT=dT) +
             dX_air*SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684) +
             X_liquid*enthalpyOfWater_der(T=T, dT=dT) +
             dX_liq*enthalpyOfWater(T) - dR_gas*T-R_gas*dT;
    end specificInternalEnergy_pTX_der;

* * * * *

![image107](Modelica.Media.Air.MoistAir.specificEntropyI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).specificEntropy
=========================================================================================================================================================================

**Return specific entropy from thermodynamic state record, only valid
for phi<1**

Information
-----------

::

Specific entropy is calculated from the thermodynamic state record,
assuming ideal gas behavior and including entropy of mixing. Liquid or
solid water is not taken into account, the entire water content X[1] is
assumed to be in the vapor state (relative humidity below 1.0).

::

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
      "Return specific entropy from thermodynamic state record, only valid for phi<1"

    protected 
       MoleFraction[2] Y = massToMoleFractions(state.X,{steam.MM,dryair.MM}) 
        "molar fraction";
    algorithm 
      s:=SingleGasNasa.s0_Tlow(dryair, state.T)*(1-state.X[Water])
        + SingleGasNasa.s0_Tlow(steam, state.T)*state.X[Water]
        - (state.X[Water]*Modelica.Constants.R/MMX[Water]*(if state.X[Water]<Modelica.Constants.eps then state.X[Water] else Modelica.Math.log(Y[Water]*state.p/reference_p))
          + (1-state.X[Water])*Modelica.Constants.R/MMX[Air]*(if (1-state.X[Water])<Modelica.Constants.eps then (1-state.X[Water]) else Modelica.Math.log(Y[Air]*state.p/reference_p)));
    end specificEntropy;

* * * * *

![image108](Modelica.Media.Air.MoistAir.specificEntropyI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).specificGibbsEnergy
=============================================================================================================================================================================

**Return specific Gibbs energy as a function of the thermodynamic state
record, only valid for phi<1**

Information
-----------

::

The Gibbs Energy is computed from the thermodynamic state record for
moist air with a water content below saturation.

::

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
      "Return specific Gibbs energy as a function of the thermodynamic state record, only valid for phi<1"
      extends Modelica.Icons.Function;
    algorithm 
      g := h_pTX(state.p,state.T,state.X) - state.T*specificEntropy(state);
    end specificGibbsEnergy;

* * * * *

![image109](Modelica.Media.Air.MoistAir.specificEntropyI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).specificHelmholtzEnergy
=================================================================================================================================================================================

**Return specific Helmholtz energy as a function of the thermodynamic
state record, only valid for phi<1**

Information
-----------

::

The Specific Helmholtz Energy is computed from the thermodynamic state
record for moist air with a water content below saturation.

::

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
      "Return specific Helmholtz energy as a function of the thermodynamic state record, only valid for phi<1"
      extends Modelica.Icons.Function;
    algorithm 
      f := h_pTX(state.p,state.T,state.X) - gasConstant(state)*state.T - state.T*specificEntropy(state);
    end specificHelmholtzEnergy;

* * * * *

![image110](Modelica.Media.Air.MoistAir.specificEntropyI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).specificHeatCapacityCp
================================================================================================================================================================================

**Return specific heat capacity at constant pressure as a function of
the thermodynamic state record**

Information
-----------

::

The specific heat capacity at constant pressure **cp** is computed from
temperature and composition for a mixture of steam (X[1]) and dry air.
All water is assumed to be in the vapor state.

::

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
      "Return specific heat capacity at constant pressure as a function of the thermodynamic state record"

    protected 
      Real dT(unit="s/K") = 1.0;
    algorithm 
      cp := h_pTX_der(state.p,state.T,state.X, 0.0, 1.0, zeros(size(state.X,1)))*dT 
        "Definition of cp: dh/dT @ constant p";
      //      cp:= SingleGasNasa.cp_Tlow(dryair, state.T)*(1-state.X[Water])
      //        + SingleGasNasa.cp_Tlow(steam, state.T)*state.X[Water];
    end specificHeatCapacityCp;

* * * * *

![image111](Modelica.Media.Air.MoistAir.specificEntropyI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).specificHeatCapacityCv
================================================================================================================================================================================

**Return specific heat capacity at constant volume as a function of the
thermodynamic state record**

Information
-----------

::

The specific heat capacity at constant density **cv** is computed from
temperature and composition for a mixture of steam (X[1]) and dry air.
All water is assumed to be in the vapor state.

::

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
      "Return specific heat capacity at constant volume as a function of the thermodynamic state record"

    algorithm 
      cv:= SingleGasNasa.cp_Tlow(dryair, state.T)*(1-state.X[Water]) +
        SingleGasNasa.cp_Tlow(steam, state.T)*state.X[Water]
        - gasConstant(state);
    end specificHeatCapacityCv;

* * * * *

![image112](Modelica.Media.Air.MoistAir.specificEntropyI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).dynamicViscosity
==========================================================================================================================================================================

**Return dynamic viscosity as a function of the thermodynamic state
record, valid from 73.15 K to 373.15 K**

Information
-----------

::

Dynamic viscosity is computed from temperature using a simple polynomial
for dry air, assuming that moisture influence is small. Range of
validity is from 73.15 K to 373.15 K.

::

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
      "Return dynamic viscosity as a function of the thermodynamic state record, valid from 73.15 K to 373.15 K"

        import Modelica.Media.Incompressible.TableBased.Polynomials_Temp;
    algorithm 
      eta := Polynomials_Temp.evaluate({(-4.96717436974791E-011), 5.06626785714286E-008, 1.72937731092437E-005},
           Cv.to_degC(state.T));
    end dynamicViscosity;

* * * * *

![image113](Modelica.Media.Air.MoistAir.specificEntropyI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).thermalConductivity
=============================================================================================================================================================================

**Return thermal conductivity as a function of the thermodynamic state
record, valid from 73.15 K to 373.15 K**

Information
-----------

::

Thermal conductivity is computed from temperature using a simple
polynomial for dry air, assuming that moisture influence is small. Range
of validity is from 73.15 K to 373.15 K.

::

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
      "Return thermal conductivity as a function of the thermodynamic state record, valid from 73.15 K to 373.15 K"

        import Modelica.Media.Incompressible.TableBased.Polynomials_Temp;
    algorithm 
      lambda := Polynomials_Temp.evaluate({(-4.8737307422969E-008), 7.67803133753502E-005, 0.0241814385504202},
       Cv.to_degC(state.T));
    end thermalConductivity;

* * * * *

![image114](Modelica.Media.Air.MoistAir.PsychrometricDataI.png) [Modelica.Media.Air.MoistAir](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).PsychrometricData
=============================================================================================================================================================================

**Produces plot data for psychrometric charts**

Information
-----------

::

This model produces psychrometric data from the moist air model in this
library to be plotted in charts. The two most common chart varieties are
the Mollier Diagram and the Psycrometric Chart. The first is widely used
in some European countries while the second is more common in the
Anglo-American world. Specific enthalpy is plotted over absolute
humidity in the Mollier Diagram, it is the other way round in the
Psychrometric Chart. It must be noted that the relationship of both axis
variables is not right-angled, the absolute humidity follows a slope
which equals the enthalpy of vaporization at 0 °C. For better reading
and in oder to reduce the fog region the humidity axis is rotated to
obtain a right-angled plot. Both charts usually contain additional
information as isochores or auxiliary scales for e.g., heat ratios.
Those information are omitted in this model and the charts below. Other
important features of psychrometric chart data are that all mass
specific variables (like absolute humidity, specific enthalpy etc.) are
expressed in terms of kg dry air and that their baseline of 0 enthalpy
is found at 0 °C and zero humidity.

![image115](../Resources/Images/Media/Air/Mollier.png)
![image116](../Resources/Images/Media/Air/PsycroChart.png)

**Legend:** blue - constant specific enthalpy, red - constant
temperature, black - constant relative humidity

The model provides data for lines of constant specific enthalpy,
temperature and relative humidity in a Mollier Diagram or Psychrometric
Chart as they were used for the figures above. For limitations and
ranges of validity please refer to the [MoistAir package
description](Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir).
Absolute humidity **x** is increased with time in this model. The
specific enthalpies adjusted for plotting are then obtained from:

-   **y\_h**: constant specific enthalpy
-   **y\_T**: constant temperature
-   **y\_phi**: constant relative humidity

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name  Defau Description
                                           lt    
  ---------------------------------- ----- ----- --------------------------
  [Pressure](Modelica_SIunits.html#M p\_co 1e5   Pressure [Pa]
  odelica.SIunits.Pressure)          nst         

  Integer                            n\_T  11    Number of isotherms

  [Temperature](Modelica_SIunits.htm T\_mi 253.1 Lowest isotherm [K]
  l#Modelica.SIunits.Temperature)    n     5     

  [Temperature](Modelica_SIunits.htm T\_st 10    Temperature step between
  l#Modelica.SIunits.Temperature)    ep          two isotherms [K]

  Integer                            n\_h  16    Number of lines with
                                                 constant specific enthalpy

  [SpecificEnthalpy](Modelica_SIunit h\_mi -20e3 Lowest line of constant
  s.html#Modelica.SIunits.SpecificEn n           enthalpy [J/kg]
  thalpy)                                        

  [SpecificEnthalpy](Modelica_SIunit h\_st 1e4   Enthalpy step between two
  s.html#Modelica.SIunits.SpecificEn ep          lines of constant enthalpy
  thalpy)                                        [J/kg]

  Integer                            n\_ph 10    Number of lines with
                                     i           constant relative humidity

  Real                               phi\_ 0.1   Lowest line of constant
                                     min         humidity

  Real                               phi\_ 0.1   Step between two lines of
                                     step        constant humidity

  [MassFraction](Modelica_SIunits.ht x\_mi 0.00  Minimum diagram absolute
  ml#Modelica.SIunits.MassFraction)  n           humidity [1]

  [MassFraction](Modelica_SIunits.ht x\_ma 0.03  Maximum diagram absolute
  ml#Modelica.SIunits.MassFraction)  x           humidity [1]

  [Time](Modelica_SIunits.html#Model t     1     Simulation time [s]
  ica.SIunits.Time)                              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PsychrometricData "Produces plot data for psychrometric charts"
      extends Modelica.Icons.Example;
      package Medium = Modelica.Media.Air.MoistAir "Used medium package";
      parameter SIunits.Pressure p_const=1e5 "Pressure";
      parameter Integer n_T=11 "Number of isotherms";
      parameter SIunits.Temperature T_min=253.15 "Lowest isotherm";
      parameter SIunits.Temperature T_step=10 
        "Temperature step between two isotherms";
      parameter Integer n_h=16 "Number of lines with constant specific enthalpy";
      parameter SIunits.SpecificEnthalpy h_min=-20e3 
        "Lowest line of constant enthalpy";
      parameter SIunits.SpecificEnthalpy h_step=1e4 
        "Enthalpy step between two lines of constant enthalpy";
      parameter Integer n_phi=10 "Number of lines with constant relative humidity";
      parameter Real phi_min=0.1 "Lowest line of constant humidity";
      parameter Real phi_step=0.1 "Step between two lines of constant humidity";
      parameter SIunits.MassFraction x_min=0.00 "Minimum diagram absolute humidity";
      parameter SIunits.MassFraction x_max=0.03 "Maximum diagram absolute humidity";
      parameter SIunits.Time t=1 "Simulation time";

      final parameter SIunits.Temperature[n_T] T_const={T_min - T_step + i*T_step for i in 
              1:n_T} "Constant temperatures";
      final parameter SIunits.SpecificEnthalpy[n_h] h_const={(i-1)*h_step+h_min for i in 1:n_h} 
        "Constant enthalpies";
      final parameter Real[n_phi] phi_const={(i-1)*phi_step+phi_min for i in 1:n_phi} 
        "Constant relative humidities";
      final parameter Real diagSlope=Medium.enthalpyOfVaporization(273.15) 
        "Rotation of diagram that zero degrees isotherm becomes horizontal outside the fog region";
      final parameter SIunits.MassFraction x_start=x_min 
        "Initial absolute humidity in kg water/kg dry air";

      SIunits.MassFraction x(start=x_start) 
        "Absolute humidity in kg water/kg dry air";
      SIunits.SpecificEnthalpy[n_T] hx_T "h_1+x for const T";
      SIunits.SpecificEnthalpy[n_h] hx_h(start=h_const) "Const h_1+x";
      SIunits.SpecificEnthalpy[n_phi] hx_phi "h_1+x for const phi";
      SIunits.SpecificEnthalpy[n_T] y_T "Chart enthalpy for const T";
      SIunits.SpecificEnthalpy[n_h] y_h "Chart enthalpy for const h";
      SIunits.SpecificEnthalpy[n_phi] y_phi "Chart enthalpy for const phi";
      Medium.BaseProperties[n_T] medium_T "Medium properties for const T";
      Medium.BaseProperties[n_phi] medium_phi "Medium properties for const phi";

    protected 
      SIunits.Pressure[n_phi] ps_phi "Saturation pressure for constant-phi-lines";
      SIunits.Temperature[n_phi] T_phi(each start=290);
      Boolean[n_T] fog(start=fill(false, n_T)) 
        "Triggers events at intersection of isotherms with phi=1";
      SIunits.Pressure[n_T] pd "Steam partial pressure along isotherms";
    initial equation 
      x = x_min;
    equation 

      der(x) = (x_max - x_min)/t;

      for i in 1:n_T loop
        medium_T[i].T=T_const[i];
        medium_T[i].p=p_const;
        medium_T[i].Xi = {x/(1 + x)};
        hx_T[i] = medium_T[i].h*(medium_T[i].x_water + 1);
        y_T[i] = hx_T[i] - diagSlope*x;

        //trigger events
        pd[i] = medium_T[i].Xi[1]*medium_T[i].MM/MMX[1]*p_const;
        fog[i] = pd[i] >= Medium.saturationPressure(T_const[i]);
      end for;
      for i in 1:n_h loop
        der(hx_h[i]) = 0.0;
        y_h[i] = hx_h[i] - diagSlope*x;
      end for;
      for i in 1:n_phi loop
        medium_phi[i].p=p_const;
        ps_phi[i] = p_const*x/phi_const[i]/(Medium.k_mair + x);
        T_phi[i] = if x < 5e-6 then 200 else Medium.saturationTemperature(
          ps_phi[i]);
        medium_phi[i].T = T_phi[i];
        medium_phi[i].Xi = {x/(1 + x)};
        hx_phi[i] = medium_phi[i].h*(medium_phi[i].x_water + 1);
        y_phi[i] = hx_phi[i] - diagSlope*x;
      end for;

    end PsychrometricData;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:31 2010.
