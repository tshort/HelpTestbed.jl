===========================
Modelica.Media.Air.MoistAir
===========================

`Modelica.Media.Air <Modelica_Media_Air.html#Modelica.Media.Air>`_.MoistAir
---------------------------------------------------------------------------

**Air: Moist air model (240 ... 400 K)**

Information
~~~~~~~~~~~

::

Thermodynamic Model
^^^^^^^^^^^^^^^^^^^

This package provides a full thermodynamic model of moist air including
the fog region and temperatures below zero degC. The governing
assumptions in this model are:

-  the perfect gas law applies
-  water volume other than that of steam is neglected

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

Range of validity
^^^^^^^^^^^^^^^^^

From the assumptions mentioned above it follows that the **pressure**
should be in the region around **atmospheric** conditions or below (a
few bars may still be fine though). Additionally a very high water
content at low temperatures would yield incorrect densities, because the
volume of the liquid or solid phase would not be negligible anymore. The
model does not provide information on limits for water drop size in the
fog region or transport information for the actual condensation or
evaporation process in combination with surfaces. All excess water which
is not in its vapour state is assumed to be still present in the air
regarding its energy but not in terms of its spatial extent.
 The thermodynamic model may be used for **temperatures** ranging from
**240 - 400 K**. This holds for all functions unless otherwise stated in
their description. However, although the model works at temperatures
above the saturation temperature it is questionable to use the term
"relative humidity" in this region. Please note, that although several
functions compute pure water properties, they are designed to be used
within the moist air medium model where properties are dominated by air
and steam in their vapor states, and not for pure liquid water
applications.

Transport Properties
^^^^^^^^^^^^^^^^^^^^

Several additional functions that are not needed to describe the
thermodynamic system, but are required to model transport processes,
like heat and mass transfer, may be called. They usually neglect the
moisture influence unless otherwise stated.

Application
^^^^^^^^^^^

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
`PsychrometricData <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.PsychrometricData>`_
may be used for this purpose in order to obtain data for figures like
those below (the plotting itself is not part of the model though).

|image0| |image1|

**Legend:** blue - constant specific enthalpy, red - constant
temperature, black - constant relative humidity

::

Extends from
`Interfaces.PartialCondensingGases <Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases>`_
(Base class for mixtures of condensing and non-condensing gases).

Package Content
~~~~~~~~~~~~~~~

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

|Modelica.Media.Air.MoistAir.ThermodynamicState|
`ThermodynamicState <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_

ThermodynamicState record for moist air

|Modelica.Media.Air.MoistAir.BaseProperties|
`BaseProperties <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.BaseProperties>`_

Moist air base properties record

|Modelica.Media.Air.MoistAir.setState\_pTX|
`setState\_pTX <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.setState_pTX>`_

Return thermodynamic state as function of pressure p, temperature T and
composition X

|Modelica.Media.Air.MoistAir.setState\_phX|
`setState\_phX <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.setState_phX>`_

Return thermodynamic state as function of pressure p, specific enthalpy
h and composition X

|Modelica.Media.Air.MoistAir.setState\_dTX|
`setState\_dTX <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.setState_dTX>`_

Return thermodynamic state as function of density d, temperature T and
composition X

|Modelica.Media.Air.MoistAir.setSmoothState|
`setSmoothState <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

|Modelica.Media.Air.MoistAir.Xsaturation|
`Xsaturation <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.Xsaturation>`_

Return absolute humitity per unit mass of moist air at saturation as a
function of the thermodynamic state record

|Modelica.Media.Air.MoistAir.xsaturation|
`xsaturation <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.xsaturation>`_

Return absolute humitity per unit mass of dry air at saturation as a
function of the thermodynamic state record

|Modelica.Media.Air.MoistAir.xsaturation\_pT|
`xsaturation\_pT <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.xsaturation_pT>`_

Return absolute humitity per unit mass of dry air at saturation as a
function of pressure p and temperature T

|Modelica.Media.Air.MoistAir.massFraction\_pTphi|
`massFraction\_pTphi <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.massFraction_pTphi>`_

Return steam mass fraction as a function of relative humidity phi and
temperature T

|Modelica.Media.Air.MoistAir.relativeHumidity\_pTX|
`relativeHumidity\_pTX <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.relativeHumidity_pTX>`_

Return relative humidity as a function of pressure p, temperature T and
composition X

|Modelica.Media.Air.MoistAir.relativeHumidity|
`relativeHumidity <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.relativeHumidity>`_

Return relative humidity as a function of the thermodynamic state record

|Modelica.Media.Air.MoistAir.gasConstant|
`gasConstant <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.gasConstant>`_

Return ideal gas constant as a function from thermodynamic state, only
valid for phi<1

|Modelica.Media.Air.MoistAir.gasConstant\_X|
`gasConstant\_X <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.gasConstant_X>`_

Return ideal gas constant as a function from composition X

|Modelica.Media.Air.MoistAir.saturationPressureLiquid|
`saturationPressureLiquid <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressureLiquid>`_

Return saturation pressure of water as a function of temperature T in
the range of 273.16 to 373.16 K

|Modelica.Media.Air.MoistAir.saturationPressureLiquid\_der|
`saturationPressureLiquid\_der <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressureLiquid_der>`_

Time derivative of saturationPressureLiquid

|Modelica.Media.Air.MoistAir.sublimationPressureIce|
`sublimationPressureIce <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.sublimationPressureIce>`_

Return sublimation pressure of water as a function of temperature T
between 223.16 and 273.16 K

|Modelica.Media.Air.MoistAir.sublimationPressureIce\_der|
`sublimationPressureIce\_der <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.sublimationPressureIce_der>`_

Derivative function for 'sublimationPressureIce'

|Modelica.Media.Air.MoistAir.saturationPressure|
`saturationPressure <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressure>`_

Return saturation pressure of water as a function of temperature T
between 223.16 and 373.16 K

|Modelica.Media.Air.MoistAir.saturationPressure\_der|
`saturationPressure\_der <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressure_der>`_

Derivative function for 'saturationPressure'

|Modelica.Media.Air.MoistAir.saturationTemperature|
`saturationTemperature <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationTemperature>`_

Return saturation temperature of water as a function of (partial)
pressure p

|Modelica.Media.Air.MoistAir.enthalpyOfVaporization|
`enthalpyOfVaporization <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfVaporization>`_

Return enthalpy of vaporization of water as a function of temperature T,
0 - 130 degC

|Modelica.Media.Air.MoistAir.HeatCapacityOfWater|
`HeatCapacityOfWater <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.HeatCapacityOfWater>`_

Return specific heat capacity of water (liquid only) as a function of
temperature T

|Modelica.Media.Air.MoistAir.enthalpyOfLiquid|
`enthalpyOfLiquid <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfLiquid>`_

Return enthalpy of liquid water as a function of temperature T(use
enthalpyOfWater instead)

|Modelica.Media.Air.MoistAir.enthalpyOfGas|
`enthalpyOfGas <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfGas>`_

Return specific enthalpy of gas (air and steam) as a function of
temperature T and composition X

|Modelica.Media.Air.MoistAir.enthalpyOfCondensingGas|
`enthalpyOfCondensingGas <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfCondensingGas>`_

Return specific enthalpy of steam as a function of temperature T

|Modelica.Media.Air.MoistAir.enthalpyOfNonCondensingGas|
`enthalpyOfNonCondensingGas <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfNonCondensingGas>`_

Return specific enthalpy of dry air as a function of temperature T

|Modelica.Media.Air.MoistAir.enthalpyOfWater|
`enthalpyOfWater <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfWater>`_

Computes specific enthalpy of water (solid/liquid) near atmospheric
pressure from temperature T

|Modelica.Media.Air.MoistAir.enthalpyOfWater\_der|
`enthalpyOfWater\_der <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfWater_der>`_

Derivative function of enthalpyOfWater

|Modelica.Media.Air.MoistAir.pressure|
`pressure <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.pressure>`_

Returns pressure of ideal gas as a function of the thermodynamic state
record

|Modelica.Media.Air.MoistAir.temperature|
`temperature <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.temperature>`_

Return temperature of ideal gas as a function of the thermodynamic state
record

|Modelica.Media.Air.MoistAir.T\_phX|
`T\_phX <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.T_phX>`_

Return temperature as a function of pressure p, specific enthalpy h and
composition X

|Modelica.Media.Air.MoistAir.density|
`density <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.density>`_

Returns density of ideal gas as a function of the thermodynamic state
record

|Modelica.Media.Air.MoistAir.specificEnthalpy|
`specificEnthalpy <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificEnthalpy>`_

Return specific enthalpy of moist air as a function of the thermodynamic
state record

|Modelica.Media.Air.MoistAir.h\_pTX|
`h\_pTX <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.h_pTX>`_

Return specific enthalpy of moist air as a function of pressure p,
temperature T and composition X

|Modelica.Media.Air.MoistAir.h\_pTX\_der|
`h\_pTX\_der <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.h_pTX_der>`_

Derivative function of h\_pTX

|Modelica.Media.Air.MoistAir.isentropicExponent|
`isentropicExponent <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.isentropicExponent>`_

Return isentropic exponent (only for gas fraction!)

|Modelica.Media.Air.MoistAir.isentropicEnthalpyApproximation|
`isentropicEnthalpyApproximation <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.isentropicEnthalpyApproximation>`_

Approximate calculation of h\_is from upstream properties, downstream
pressure, gas part only

|Modelica.Media.Air.MoistAir.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificInternalEnergy>`_

Return specific internal energy of moist air as a function of the
thermodynamic state record

|Modelica.Media.Air.MoistAir.specificInternalEnergy\_pTX|
`specificInternalEnergy\_pTX <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificInternalEnergy_pTX>`_

Return specific internal energy of moist air as a function of pressure
p, temperature T and composition X

|Modelica.Media.Air.MoistAir.specificInternalEnergy\_pTX\_der|
`specificInternalEnergy\_pTX\_der <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificInternalEnergy_pTX_der>`_

Derivative function for specificInternalEnergy\_pTX

|Modelica.Media.Air.MoistAir.specificEntropy|
`specificEntropy <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificEntropy>`_

Return specific entropy from thermodynamic state record, only valid for
phi<1

|Modelica.Media.Air.MoistAir.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificGibbsEnergy>`_

Return specific Gibbs energy as a function of the thermodynamic state
record, only valid for phi<1

|Modelica.Media.Air.MoistAir.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificHelmholtzEnergy>`_

Return specific Helmholtz energy as a function of the thermodynamic
state record, only valid for phi<1

|Modelica.Media.Air.MoistAir.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificHeatCapacityCp>`_

Return specific heat capacity at constant pressure as a function of the
thermodynamic state record

|Modelica.Media.Air.MoistAir.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificHeatCapacityCv>`_

Return specific heat capacity at constant volume as a function of the
thermodynamic state record

|Modelica.Media.Air.MoistAir.dynamicViscosity|
`dynamicViscosity <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.dynamicViscosity>`_

Return dynamic viscosity as a function of the thermodynamic state
record, valid from 73.15 K to 373.15 K

|Modelica.Media.Air.MoistAir.thermalConductivity|
`thermalConductivity <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.thermalConductivity>`_

Return thermal conductivity as a function of the thermodynamic state
record, valid from 73.15 K to 373.15 K

|Modelica.Media.Air.MoistAir.Utilities|
`Utilities <Modelica_Media_Air_MoistAir_Utilities.html#Modelica.Media.Air.MoistAir.Utilities>`_

utility functions

|Modelica.Media.Air.MoistAir.PsychrometricData|
`PsychrometricData <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.PsychrometricData>`_

Produces plot data for psychrometric charts

Inherited

|Modelica.Media.Interfaces.PartialMixtureMedium.FluidConstants|
`FluidConstants <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.FluidConstants>`_

extended fluid constants

fluidConstants

constant data for the fluid

|Modelica.Media.Interfaces.PartialMixtureMedium.moleToMassFractions|
`moleToMassFractions <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.moleToMassFractions>`_

Return mass fractions X from mole fractions

|Modelica.Media.Interfaces.PartialMixtureMedium.massToMoleFractions|
`massToMoleFractions <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.massToMoleFractions>`_

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

|Modelica.Media.Interfaces.PartialMedium.setState\_psX|
`setState\_psX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_psX>`_

Return thermodynamic state as function of p, s and composition X or Xi

|Modelica.Media.Interfaces.PartialMedium.prandtlNumber|
`prandtlNumber <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.prandtlNumber>`_

Return the Prandtl number

|Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp|
`heatCapacity\_cp <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cp>`_

alias for deprecated name

|Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv|
`heatCapacity\_cv <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cv>`_

alias for deprecated name

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

|Modelica.Media.Interfaces.PartialMedium.molarMass|
`molarMass <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.molarMass>`_

Return the molar mass of the medium

|Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_pTX|
`specificEnthalpy\_pTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEnthalpy_pTX>`_

Return specific enthalpy from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX|
`specificEntropy\_pTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy_pTX>`_

Return specific enthalpy from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.density\_pTX|
`density\_pTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_pTX>`_

Return density from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.temperature\_phX|
`temperature\_phX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.temperature_phX>`_

Return temperature from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.density\_phX|
`density\_phX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_phX>`_

Return density from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.temperature\_psX|
`temperature\_psX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.temperature_psX>`_

Return temperature from p,s, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.density\_psX|
`density\_psX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_psX>`_

Return density from p, s, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_psX|
`specificEnthalpy\_psX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEnthalpy_psX>`_

Return specific enthalpy from p, s, and X or Xi

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

      constant Integer Water=1 
      "Index of water (in substanceNames, massFractions X, etc.)";

::

      constant Integer Air=2 
      "Index of air (in substanceNames, massFractions X, etc.)";

::

      constant Real k_mair =  steam.MM/dryair.MM "ratio of molar weights";

::

      constant IdealGases.Common.DataRecord dryair = IdealGases.Common.SingleGasesData.Air;

::

      constant IdealGases.Common.DataRecord steam = IdealGases.Common.SingleGasesData.H2O;

::

      constant SI.MolarMass[2] MMX = {steam.MM,dryair.MM} 
      "Molar masses of components";

--------------

|image80| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.ThermodynamicState
--------------------------------------------------------------------------------------------------------------------------

**ThermodynamicState record for moist air**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState>`_
(thermodynamic state variables).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare record extends ThermodynamicState 
      "ThermodynamicState record for moist air"
    end ThermodynamicState;

--------------

|image81| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.BaseProperties
----------------------------------------------------------------------------------------------------------------------

**Moist air base properties record**

Information
~~~~~~~~~~~

::

This model computes thermodynamic properties of moist air from three
independent (thermodynamic or/and numerical) state variables. Preferred
numerical states are temperature T, pressure p and the reduced
composition vector Xi, which contains the water mass fraction only. As
an EOS the **ideal gas law** is used and associated restrictions apply.
The model can also be used in the **fog region**, when moisture is
present in its liquid state. However, it is assumed that the liquid
water volume is negligible compared to that of the gas phase.
Computation of thermal properties is based on property data of `dry
air <Modelica_Media_Air_DryAirNasa.html#Modelica.Media.Air.DryAirNasa>`_
and water (source: VDI-Wärmeatlas), respectively. Besides the standard
thermodynamic variables **absolute and relative humidity**, x\_water and
phi, respectively, are given by the model. Upper case X denotes absolute
humidity with respect to mass of moist air while absolute humidity with
respect to mass of dry air only is denoted by a lower case x throughout
the model. See `package
description <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_
for further information.

::

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.BaseProperties>`_
(Base properties (p, d, T, h, u, R, MM and, if applicable, X and Xi) of
a medium).

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

--------------

|image82| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.setState\_pTX
---------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state as function of pressure p, temperature T
and composition X**

Information
~~~~~~~~~~~

::

The `thermodynamic state
record <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_
is computed from pressure p, temperature T and composition X.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+--------------------------+
| Type                                                                                                                          | Name   | Default        | Description              |
+===============================================================================================================================+========+================+==========================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |                | Pressure [Pa]            |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+--------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_             | T      |                | Temperature [K]          |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+--------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | X[:]   | reference\_X   | Mass fractions [kg/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+--------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------+---------+-----------------------+
| Type                                                                                                      | Name    | Description           |
+===========================================================================================================+=========+=======================+
| `ThermodynamicState <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_   | state   | Thermodynamic state   |
+-----------------------------------------------------------------------------------------------------------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image83| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.setState\_phX
---------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state as function of pressure p, specific
enthalpy h and composition X**

Information
~~~~~~~~~~~

::

The `thermodynamic state
record <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_
is computed from pressure p, specific enthalpy h and composition X.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+----------------------------+
| Type                                                                                                                          | Name   | Default        | Description                |
+===============================================================================================================================+========+================+============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |                | Pressure [Pa]              |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+----------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      |                | Specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+----------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | X[:]   | reference\_X   | Mass fractions [kg/kg]     |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+----------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------+---------+-----------------------+
| Type                                                                                                      | Name    | Description           |
+===========================================================================================================+=========+=======================+
| `ThermodynamicState <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_   | state   | Thermodynamic state   |
+-----------------------------------------------------------------------------------------------------------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image84| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.setState\_dTX
---------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state as function of density d, temperature T and
composition X**

Information
~~~~~~~~~~~

::

The `thermodynamic state
record <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_
is computed from density d, temperature T and composition X.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+--------+----------------+--------------------------+
| Type                                                                                                                  | Name   | Default        | Description              |
+=======================================================================================================================+========+================+==========================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_             | d      |                | density [kg/m3]          |
+-----------------------------------------------------------------------------------------------------------------------+--------+----------------+--------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_     | T      |                | Temperature [K]          |
+-----------------------------------------------------------------------------------------------------------------------+--------+----------------+--------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_   | X[:]   | reference\_X   | Mass fractions [kg/kg]   |
+-----------------------------------------------------------------------------------------------------------------------+--------+----------------+--------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------+---------+-----------------------+
| Type                                                                                                      | Name    | Description           |
+===========================================================================================================+=========+=======================+
| `ThermodynamicState <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_   | state   | Thermodynamic state   |
+-----------------------------------------------------------------------------------------------------------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image85| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.setSmoothState
----------------------------------------------------------------------------------------------------------------------

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
    algorithm 
      state := ThermodynamicState(p=Media.Common.smoothStep(x, state_a.p, state_b.p, x_small),
                                  T=Media.Common.smoothStep(x, state_a.T, state_b.T, x_small),
                                  X=Media.Common.smoothStep(x, state_a.X, state_b.X, x_small));
    end setSmoothState;

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.Xsaturation
---------------------------------------------------------------------------------------------------------

**Return absolute humitity per unit mass of moist air at saturation as a
function of the thermodynamic state record**

Information
~~~~~~~~~~~

::

Absolute humidity per unit mass of moist air at saturation is computed
from pressure and temperature in the state record. Note, that unlike
X\_sat in the BaseProperties model this mass fraction refers to mass of
moist air at saturation.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                      | Name    | Default   | Description                  |
+===========================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_   | state   |           | Thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------+
| Type                                                                                                                  | Name     | Description                                    |
+=======================================================================================================================+==========+================================================+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_   | X\_sat   | Steam mass fraction of sat. boundary [kg/kg]   |
+-----------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function Xsaturation 
      "Return absolute humitity per unit mass of moist air at saturation as a function of the thermodynamic state record"
      input ThermodynamicState state "Thermodynamic state record";
      output MassFraction X_sat "Steam mass fraction of sat. boundary";
    algorithm 
      X_sat := k_mair/(state.p/min(saturationPressure(state.T),0.999*state.p) - 1 + k_mair);
    end Xsaturation;

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.xsaturation
---------------------------------------------------------------------------------------------------------

**Return absolute humitity per unit mass of dry air at saturation as a
function of the thermodynamic state record**

Information
~~~~~~~~~~~

::

Absolute humidity per unit mass of dry air at saturation is computed
from pressure and temperature in the thermodynamic state record.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                      | Name    | Default   | Description                  |
+===========================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_   | state   |           | Thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------+
| Type                                                                                                                  | Name     | Description                                          |
+=======================================================================================================================+==========+======================================================+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_   | x\_sat   | Absolute humidity per unit mass of dry air [kg/kg]   |
+-----------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function xsaturation 
      "Return absolute humitity per unit mass of dry air at saturation as a function of the thermodynamic state record"
      input ThermodynamicState state "Thermodynamic state record";
      output MassFraction x_sat "Absolute humidity per unit mass of dry air";
    algorithm 
      x_sat:=k_mair*saturationPressure(state.T)/max(100*Constants.eps,state.p - saturationPressure(state.T));
    end xsaturation;

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.xsaturation\_pT
-------------------------------------------------------------------------------------------------------------

**Return absolute humitity per unit mass of dry air at saturation as a
function of pressure p and temperature T**

Information
~~~~~~~~~~~

::

Absolute humidity per unit mass of dry air at saturation is computed
from pressure and temperature.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                                          | Name   | Default   | Description       |
+===============================================================================================================================+========+===========+===================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | Pressure [Pa]     |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                           | T      |           | Temperature [K]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------+
| Type                                                                                                                  | Name     | Description                                          |
+=======================================================================================================================+==========+======================================================+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_   | x\_sat   | Absolute humidity per unit mass of dry air [kg/kg]   |
+-----------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function xsaturation_pT 
      "Return absolute humitity per unit mass of dry air at saturation as a function of pressure p and temperature T"
      input AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      output MassFraction x_sat "Absolute humidity per unit mass of dry air";
    algorithm 
      x_sat:=k_mair*saturationPressure(T)/max(100*Constants.eps,p - saturationPressure(T));
    end xsaturation_pT;

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.massFraction\_pTphi
-----------------------------------------------------------------------------------------------------------------

**Return steam mass fraction as a function of relative humidity phi and
temperature T**

Information
~~~~~~~~~~~

::

Absolute humidity per unit mass of moist air is computed from
temperature, pressure and relative humidity.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------------+
| Type                                                                                                                          | Name   | Default   | Description                     |
+===============================================================================================================================+========+===========+=================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | Pressure [Pa]                   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_             | T      |           | Temperature [K]                 |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------------+
| Real                                                                                                                          | phi    |           | Relative humidity (0 ... 1.0)   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| Type                                                                                                                  | Name       | Description                                      |
+=======================================================================================================================+============+==================================================+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_   | X\_steam   | Absolute humidity, steam mass fraction [kg/kg]   |
+-----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.relativeHumidity\_pTX
-------------------------------------------------------------------------------------------------------------------

**Return relative humidity as a function of pressure p, temperature T
and composition X**

Information
~~~~~~~~~~~

::

Relative humidity is computed from pressure, temperature and composition
with 1.0 as the upper limit at saturation. Water mass fraction is the
first entry in the composition vector.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                    | Name   | Default   | Description       |
+=========================================================================+========+===========+===================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_           | p      |           | Pressure [Pa]     |
+-------------------------------------------------------------------------+--------+-----------+-------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_     | T      |           | Temperature [K]   |
+-------------------------------------------------------------------------+--------+-----------+-------------------+
| `MassFraction <Modelica_SIunits.html#Modelica.SIunits.MassFraction>`_   | X[:]   |           | Composition [1]   |
+-------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+--------+--------+---------------------+
| Type   | Name   | Description         |
+========+========+=====================+
| Real   | phi    | Relative humidity   |
+--------+--------+---------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.relativeHumidity
--------------------------------------------------------------------------------------------------------------

**Return relative humidity as a function of the thermodynamic state
record**

Information
~~~~~~~~~~~

::

Relative humidity is computed from the thermodynamic state record with
1.0 as the upper limit at saturation.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------+
| Type                                                                                                      | Name    | Default   | Description           |
+===========================================================================================================+=========+===========+=======================+
| `ThermodynamicState <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_   | state   |           | Thermodynamic state   |
+-----------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------+

Outputs
~~~~~~~

+--------+--------+---------------------+
| Type   | Name   | Description         |
+========+========+=====================+
| Real   | phi    | Relative humidity   |
+--------+--------+---------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function relativeHumidity 
      "Return relative humidity as a function of the thermodynamic state record"
      input ThermodynamicState state "Thermodynamic state";
      output Real phi "Relative humidity";
    algorithm 
      phi:=relativeHumidity_pTX(state.p, state.T, state.X);
    end relativeHumidity;

--------------

|image86| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.gasConstant
-------------------------------------------------------------------------------------------------------------------

**Return ideal gas constant as a function from thermodynamic state, only
valid for phi<1**

Information
~~~~~~~~~~~

::

The ideal gas constant for moist air is computed from `thermodynamic
state <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_
assuming that all water is in the gas phase.

::

Extends from
` <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.gasConstant>`_
(Return the gas constant of the mixture (also for liquids)).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------+
| Type                                                                                                                                            | Name    | Default   | Description           |
+=================================================================================================================================================+=========+===========+=======================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState>`_   | state   |           | thermodynamic state   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                    | Name   | Description                       |
+=========================================================================================+========+===================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | R      | mixture gas constant [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends gasConstant 
      "Return ideal gas constant as a function from thermodynamic state, only valid for phi<1"

    algorithm 
      R := dryair.R*(1-state.X[Water]) + steam.R*state.X[Water];
    end gasConstant;

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.gasConstant\_X
------------------------------------------------------------------------------------------------------------

**Return ideal gas constant as a function from composition X**

Information
~~~~~~~~~~~

::

The ideal gas constant for moist air is computed from the gas phase
composition. The first entry in composition vector X is the steam mass
fraction of the gas phase.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------+--------+-----------+-----------------------------+
| Type                                                                    | Name   | Default   | Description                 |
+=========================================================================+========+===========+=============================+
| `MassFraction <Modelica_SIunits.html#Modelica.SIunits.MassFraction>`_   | X[:]   |           | Gas phase composition [1]   |
+-------------------------------------------------------------------------+--------+-----------+-----------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+---------------------------------+
| Type                                                                                    | Name   | Description                     |
+=========================================================================================+========+=================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | R      | Ideal gas constant [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function gasConstant_X 
      "Return ideal gas constant as a function from composition X"
      input SI.MassFraction X[:] "Gas phase composition";
      output SI.SpecificHeatCapacity R "Ideal gas constant";
    algorithm 
      R := dryair.R*(1-X[Water]) + steam.R*X[Water];
    end gasConstant_X;

--------------

|image87| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.saturationPressureLiquid
--------------------------------------------------------------------------------------------------------------------------------

**Return saturation pressure of water as a function of temperature T in
the range of 273.16 to 373.16 K**

Information
~~~~~~~~~~~

::

Saturation pressure of water above the triple point temperature is
computed from temperature. It's range of validity is between 273.16 and
373.16 K. Outside these limits a less accurate result is returned.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                  | Name   | Default   | Description                  |
+=======================================================================+========+===========+==============================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tsat   |           | saturation temperature [K]   |
+-----------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | psat   | saturation pressure [Pa]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function saturationPressureLiquid 
      "Return saturation pressure of water as a function of temperature T in the range of 273.16 to 373.16 K"
      annotation(derivative=saturationPressureLiquid_der);

      extends Modelica.Icons.Function;
      input SI.Temperature Tsat "saturation temperature";
      output SI.AbsolutePressure psat "saturation pressure";
    algorithm 
      psat := 611.657*Math.exp(17.2799 - 4102.99/(Tsat - 35.719));
    end saturationPressureLiquid;

--------------

|image88| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.saturationPressureLiquid\_der
-------------------------------------------------------------------------------------------------------------------------------------

**Time derivative of saturationPressureLiquid**

Information
~~~~~~~~~~~

::

Derivative function of
`saturationPressureLiquid <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressureLiquid>`_

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+---------+-----------+-------------------------------------------+
| Type                                                                  | Name    | Default   | Description                               |
+=======================================================================+=========+===========+===========================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tsat    |           | Saturation temperature [K]                |
+-----------------------------------------------------------------------+---------+-----------+-------------------------------------------+
| Real                                                                  | dTsat   |           | Saturation temperature derivative [K/s]   |
+-----------------------------------------------------------------------+---------+-----------+-------------------------------------------+

Outputs
~~~~~~~

+--------+-------------+------------------------------+
| Type   | Name        | Description                  |
+========+=============+==============================+
| Real   | psat\_der   | Saturation pressure [Pa/s]   |
+--------+-------------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image89| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.sublimationPressureIce
------------------------------------------------------------------------------------------------------------------------------

**Return sublimation pressure of water as a function of temperature T
between 223.16 and 273.16 K**

Information
~~~~~~~~~~~

::

Sublimation pressure of water below the triple point temperature is
computed from temperature. It's range of validity is between 223.16 and
273.16 K. Outside of these limits a less accurate result is returned.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-------------------------------+
| Type                                                                  | Name   | Default   | Description                   |
+=======================================================================+========+===========+===============================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tsat   |           | sublimation temperature [K]   |
+-----------------------------------------------------------------------+--------+-----------+-------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+-----------------------------+
| Type                                                                            | Name   | Description                 |
+=================================================================================+========+=============================+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | psat   | sublimation pressure [Pa]   |
+---------------------------------------------------------------------------------+--------+-----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function sublimationPressureIce 
      "Return sublimation pressure of water as a function of temperature T between 223.16 and 273.16 K"
      annotation(derivative=sublimationPressureIce_der);

      extends Modelica.Icons.Function;
      input SI.Temperature Tsat "sublimation temperature";
      output SI.AbsolutePressure psat "sublimation pressure";
    algorithm 
      psat := 611.657*Math.exp(22.5159*(1.0 - 273.16/Tsat));
    end sublimationPressureIce;

--------------

|image90| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.sublimationPressureIce\_der
-----------------------------------------------------------------------------------------------------------------------------------

**Derivative function for 'sublimationPressureIce'**

Information
~~~~~~~~~~~

::

Derivative function of
`saturationPressureIce <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.sublimationPressureIce>`_

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Type                                                                  | Name    | Default   | Description                                        |
+=======================================================================+=========+===========+====================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tsat    |           | Sublimation temperature [K]                        |
+-----------------------------------------------------------------------+---------+-----------+----------------------------------------------------+
| Real                                                                  | dTsat   |           | Time derivative of sublimation temperature [K/s]   |
+-----------------------------------------------------------------------+---------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+--------+-------------+-------------------------------+
| Type   | Name        | Description                   |
+========+=============+===============================+
| Real   | psat\_der   | Sublimation pressure [Pa/s]   |
+--------+-------------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image91| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.saturationPressure
--------------------------------------------------------------------------------------------------------------------------

**Return saturation pressure of water as a function of temperature T
between 223.16 and 373.16 K**

Information
~~~~~~~~~~~

::

Saturation pressure of water in the liquid and the solid region is
computed using an Antoine-type correlation. It's range of validity is
between 223.16 and 373.16 K. Outside of these limits a (less accurate)
result is returned. Functions for the
`solid <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.sublimationPressureIce>`_
and the
`liquid <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressureLiquid>`_
region, respectively, are combined using the first derivative continuous
`spliceFunction <Modelica_Media_Air_MoistAir_Utilities.html#Modelica.Media.Air.MoistAir.Utilities.spliceFunction>`_.

::

Extends from
` <Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.saturationPressure>`_
(Return saturation pressure of condensing fluid).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+
| Type                                                                                                                | Name   | Default   | Description                  |
+=====================================================================================================================+========+===========+==============================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | Tsat   |           | saturation temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                                                                          | Name   | Description                |
+===============================================================================================================================+========+============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | psat   | saturation pressure [Pa]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends saturationPressure 
      "Return saturation pressure of water as a function of temperature T between 223.16 and 373.16 K"
      annotation(derivative=saturationPressure_der);

    algorithm 
      psat := Utilities.spliceFunction(saturationPressureLiquid(Tsat),sublimationPressureIce(Tsat),Tsat-273.16,1.0);
    end saturationPressure;

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.saturationPressure\_der
---------------------------------------------------------------------------------------------------------------------

**Derivative function for 'saturationPressure'**

Information
~~~~~~~~~~~

::

Derivative function of
`saturationPressure <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressure>`_

::

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------+---------+-----------+---------------------------------------------------+
| Type                                                                                                                | Name    | Default   | Description                                       |
+=====================================================================================================================+=========+===========+===================================================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | Tsat    |           | Saturation temperature [K]                        |
+---------------------------------------------------------------------------------------------------------------------+---------+-----------+---------------------------------------------------+
| Real                                                                                                                | dTsat   |           | Time derivative of saturation temperature [K/s]   |
+---------------------------------------------------------------------------------------------------------------------+---------+-----------+---------------------------------------------------+

Outputs
~~~~~~~

+--------+-------------+------------------------------+
| Type   | Name        | Description                  |
+========+=============+==============================+
| Real   | psat\_der   | Saturation pressure [Pa/s]   |
+--------+-------------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.saturationTemperature
-------------------------------------------------------------------------------------------------------------------

**Return saturation temperature of water as a function of (partial)
pressure p**

Information
~~~~~~~~~~~

::

Computes saturation temperature from (partial) pressure via numerical
inversion of the function
`saturationPressure <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.saturationPressure>`_.
Therefore additional inputs are required (or the defaults are used) for
upper and lower temperature bounds.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+----------------------------------+
| Type                                                                  | Name     | Default   | Description                      |
+=======================================================================+==========+===========+==================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p        |           | Pressure [Pa]                    |
+-----------------------------------------------------------------------+----------+-----------+----------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T\_min   | 200       | Lower boundary of solution [K]   |
+-----------------------------------------------------------------------+----------+-----------+----------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T\_max   | 400       | Upper boundary of solution [K]   |
+-----------------------------------------------------------------------+----------+-----------+----------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+--------+------------------------------+
| Type                                                                  | Name   | Description                  |
+=======================================================================+========+==============================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      | Saturation temperature [K]   |
+-----------------------------------------------------------------------+--------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image92| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.enthalpyOfVaporization
------------------------------------------------------------------------------------------------------------------------------

**Return enthalpy of vaporization of water as a function of temperature
T, 0 - 130 degC**

Information
~~~~~~~~~~~

::

Enthalpy of vaporization of water is computed from temperature in the
region of 0 to 130 °C.

::

Extends from
` <Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfVaporization>`_
(Return vaporization enthalpy of condensing fluid).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                                | Name   | Default   | Description       |
+=====================================================================================================================+========+===========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      |           | temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------+
| Type                                                                                                                          | Name   | Description                    |
+===============================================================================================================================+========+================================+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | r0     | vaporization enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends enthalpyOfVaporization 
      "Return enthalpy of vaporization of water as a function of temperature T, 0 - 130 degC"

    algorithm 
     /*r0 := 1e3*(2501.0145 - (T - 273.15)*(2.3853 + (T - 273.15)*(0.002969 - (T
          - 273.15)*(7.5293e-5 + (T - 273.15)*4.6084e-7))));*/
    //katrin: replaced by linear correlation, simpler and more accurate in the entire region
    //source VDI-Waermeatlas, linear inter- and extrapolation between values for 0.01 &deg;C and 40 &deg;C.
    r0:=(2405900-2500500)/(40-0)*(T-273.16)+2500500;
    end enthalpyOfVaporization;

--------------

|image93| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.HeatCapacityOfWater
---------------------------------------------------------------------------------------------------------------------------

**Return specific heat capacity of water (liquid only) as a function of
temperature T**

Information
~~~~~~~~~~~

::

The specific heat capacity of water (liquid and solid) is calculated
using a polynomial approach and data from VDI-Waermeatlas 8. Edition
(Db1)

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                                | Name   | Default   | Description       |
+=====================================================================================================================+========+===========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      |           | Temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------+
| Type                                                                                                                                  | Name     | Description                                   |
+=======================================================================================================================================+==========+===============================================+
| `SpecificHeatCapacity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificHeatCapacity>`_   | cp\_fl   | Specific heat capacity of liquid [J/(kg.K)]   |
+---------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function HeatCapacityOfWater 
      "Return specific heat capacity of water (liquid only) as a function of temperature T"
      extends Modelica.Icons.Function;
      input Temperature T "Temperature";
      output SpecificHeatCapacity cp_fl "Specific heat capacity of liquid";
    algorithm 
      cp_fl := 1e3*(4.2166 - (T - 273.15)*(0.0033166 + (T - 273.15)*(0.00010295
         - (T - 273.15)*(1.3819e-6 + (T - 273.15)*7.3221e-9))));
    end HeatCapacityOfWater;

--------------

|image94| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.enthalpyOfLiquid
------------------------------------------------------------------------------------------------------------------------

**Return enthalpy of liquid water as a function of temperature T(use
enthalpyOfWater instead)**

Information
~~~~~~~~~~~

::

Specific enthalpy of liquid water is computed from temperature using a
polynomial approach. Kept for compatibility reasons, better use
`enthalpyOfWater <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfWater>`_
instead.

::

Extends from
` <Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfLiquid>`_
(Return liquid enthalpy of condensing fluid).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                                | Name   | Default   | Description       |
+=====================================================================================================================+========+===========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      |           | temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------+
| Type                                                                                                                          | Name   | Description              |
+===============================================================================================================================+========+==========================+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      | liquid enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends enthalpyOfLiquid 
      "Return enthalpy of liquid water as a function of temperature T(use enthalpyOfWater instead)"

    algorithm 
      h := (T - 273.15)*1e3*(4.2166 - 0.5*(T - 273.15)*(0.0033166 + 0.333333*(T - 273.15)*(0.00010295
         - 0.25*(T - 273.15)*(1.3819e-6 + 0.2*(T - 273.15)*7.3221e-9))));
    end enthalpyOfLiquid;

--------------

|image95| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.enthalpyOfGas
---------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy of gas (air and steam) as a function of
temperature T and composition X**

Information
~~~~~~~~~~~

::

Specific enthalpy of moist air is computed from temperature, provided
all water is in the gaseous state. The first entry in the composition
vector X must be the mass fraction of steam. For a function that also
covers the fog region please refer to
`h\_pTX <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.h_pTX>`_.

::

Extends from
` <Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfGas>`_
(Return enthalpy of non-condensing gas mixture).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------------+
| Type                                                                                                                  | Name   | Default   | Description                        |
+=======================================================================================================================+========+===========+====================================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_     | T      |           | temperature [K]                    |
+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_   | X[:]   |           | vector of mass fractions [kg/kg]   |
+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------------+

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

    redeclare function extends enthalpyOfGas 
      "Return specific enthalpy of gas (air and steam) as a function of temperature T and composition X"

    algorithm 
      h := SingleGasNasa.h_Tlow(data=steam, T=T, refChoice=3, h_off=46479.819+2501014.5)*X[Water]
           + SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684)*(1.0-X[Water]);
    end enthalpyOfGas;

--------------

|image96| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.enthalpyOfCondensingGas
-------------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy of steam as a function of temperature T**

Information
~~~~~~~~~~~

::

Specific enthalpy of steam is computed from temperature.

::

Extends from
` <Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfCondensingGas>`_
(Return enthalpy of condensing gas (most often steam)).

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
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends enthalpyOfCondensingGas 
      "Return specific enthalpy of steam as a function of temperature T"

    algorithm 
      h := SingleGasNasa.h_Tlow(data=steam, T=T, refChoice=3, h_off=46479.819+2501014.5);
    end enthalpyOfCondensingGas;

--------------

|image97| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.enthalpyOfNonCondensingGas
----------------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy of dry air as a function of temperature T**

Information
~~~~~~~~~~~

::

Specific enthalpy of dry air is computed from temperature.

::

Extends from
` <Modelica_Media_Interfaces_PartialCondensingGases.html#Modelica.Media.Interfaces.PartialCondensingGases.enthalpyOfNonCondensingGas>`_
(Return enthalpy of the non-condensing species).

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
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends enthalpyOfNonCondensingGas 
      "Return specific enthalpy of dry air as a function of temperature T"

    algorithm 
      h := SingleGasNasa.h_Tlow(data=dryair, T=T, refChoice=3, h_off=25104.684);
    end enthalpyOfNonCondensingGas;

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.enthalpyOfWater
-------------------------------------------------------------------------------------------------------------

**Computes specific enthalpy of water (solid/liquid) near atmospheric
pressure from temperature T**

Information
~~~~~~~~~~~

::

Specific enthalpy of water (liquid and solid) is computed from
temperature using constant properties as follows:

-  heat capacity of liquid water:4200 J/kg
-  heat capacity of solid water: 2050 J/kg
-  enthalpy of fusion (liquid=>solid): 333000 J/kg

Pressure is assumed to be around 1 bar. This function is usually used to
determine the specific enthalpy of the liquid or solid fraction of moist
air.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                  | Name   | Default   | Description       |
+=======================================================================+========+===========+===================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | Temperature [K]   |
+-----------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                            | Name   | Description                         |
+=================================================================================+========+=====================================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | Specific enthalpy of water [J/kg]   |
+---------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.enthalpyOfWater\_der
------------------------------------------------------------------------------------------------------------------

**Derivative function of enthalpyOfWater**

Information
~~~~~~~~~~~

::

Derivative function for
`enthalpyOfWater <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.enthalpyOfWater>`_.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+----------------------------------------+
| Type                                                                  | Name   | Default   | Description                            |
+=======================================================================+========+===========+========================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | Temperature [K]                        |
+-----------------------------------------------------------------------+--------+-----------+----------------------------------------+
| Real                                                                  | dT     |           | Time derivative of temperature [K/s]   |
+-----------------------------------------------------------------------+--------+-----------+----------------------------------------+

Outputs
~~~~~~~

+--------+--------+---------------------------------------------------+
| Type   | Name   | Description                                       |
+========+========+===================================================+
| Real   | dh     | Time derivative of specific enthalpy [J/(kg.s)]   |
+--------+--------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image98| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.pressure
----------------------------------------------------------------------------------------------------------------

**Returns pressure of ideal gas as a function of the thermodynamic state
record**

Information
~~~~~~~~~~~

::

Pressure is returned from the thermodynamic state record input as a
simple assignment.

::

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

    redeclare function extends pressure 
      "Returns pressure of ideal gas as a function of the thermodynamic state record"

    algorithm 
     p := state.p;
    end pressure;

--------------

|image99| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.temperature
-------------------------------------------------------------------------------------------------------------------

**Return temperature of ideal gas as a function of the thermodynamic
state record**

Information
~~~~~~~~~~~

::

Temperature is returned from the thermodynamic state record input as a
simple assignment.

::

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
      "Return temperature of ideal gas as a function of the thermodynamic state record"

    algorithm 
      T := state.T;
    end temperature;

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.T\_phX
----------------------------------------------------------------------------------------------------

**Return temperature as a function of pressure p, specific enthalpy h
and composition X**

Information
~~~~~~~~~~~

::

Temperature is computed from pressure, specific enthalpy and composition
via numerical inversion of function
`h\_pTX <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.h_pTX>`_.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------+
| Type                                                                                                                          | Name   | Default   | Description                             |
+===============================================================================================================================+========+===========+=========================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | Pressure [Pa]                           |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      |           | Specific enthalpy [J/kg]                |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | X[:]   |           | Mass fractions of composition [kg/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------+

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

--------------

|image100| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.density
----------------------------------------------------------------------------------------------------------------

**Returns density of ideal gas as a function of the thermodynamic state
record**

Information
~~~~~~~~~~~

::

Density is computed from pressure, temperature and composition in the
thermodynamic state record applying the ideal gas law.

::

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

    redeclare function extends density 
      "Returns density of ideal gas as a function of the thermodynamic state record"

    algorithm 
      d := state.p/(gasConstant(state)*state.T);
    end density;

--------------

|image101| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.specificEnthalpy
-------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy of moist air as a function of the
thermodynamic state record**

Information
~~~~~~~~~~~

::

Specific enthalpy of moist air is computed from the thermodynamic state
record. The fog region is included for both, ice and liquid fog.

::

Extends from
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
      "Return specific enthalpy of moist air as a function of the thermodynamic state record"

    algorithm 
      h := h_pTX(state.p, state.T, state.X);
    end specificEnthalpy;

--------------

|image102| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.h\_pTX
---------------------------------------------------------------------------------------------------------------

**Return specific enthalpy of moist air as a function of pressure p,
temperature T and composition X**

Information
~~~~~~~~~~~

::

Specific enthalpy of moist air is computed from pressure, temperature
and composition with X[1] as the total water mass fraction. The fog
region is included for both, ice and liquid fog.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------+--------+-----------+-----------------------------------+
| Type                                                                    | Name   | Default   | Description                       |
+=========================================================================+========+===========+===================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_           | p      |           | Pressure [Pa]                     |
+-------------------------------------------------------------------------+--------+-----------+-----------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_     | T      |           | Temperature [K]                   |
+-------------------------------------------------------------------------+--------+-----------+-----------------------------------+
| `MassFraction <Modelica_SIunits.html#Modelica.SIunits.MassFraction>`_   | X[:]   |           | Mass fractions of moist air [1]   |
+-------------------------------------------------------------------------+--------+-----------+-----------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+---------------------------------------+
| Type                                                                            | Name   | Description                           |
+=================================================================================+========+=======================================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | Specific enthalpy at p, T, X [J/kg]   |
+---------------------------------------------------------------------------------+--------+---------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image103| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.h\_pTX\_der
--------------------------------------------------------------------------------------------------------------------

**Derivative function of h\_pTX**

Information
~~~~~~~~~~~

::

Derivative function for
`h\_pTX <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.h_pTX>`_.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| Type                                                                    | Name    | Default   | Description                       |
+=========================================================================+=========+===========+===================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_           | p       |           | Pressure [Pa]                     |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_     | T       |           | Temperature [K]                   |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| `MassFraction <Modelica_SIunits.html#Modelica.SIunits.MassFraction>`_   | X[:]    |           | Mass fractions of moist air [1]   |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| Real                                                                    | dp      |           | Pressure derivative [Pa/s]        |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| Real                                                                    | dT      |           | Temperature derivative [K/s]      |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| Real                                                                    | dX[:]   |           | Composition derivative [1/s]      |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+

Outputs
~~~~~~~

+--------+----------+---------------------------------------------------+
| Type   | Name     | Description                                       |
+========+==========+===================================================+
| Real   | h\_der   | Time derivative of specific enthalpy [J/(kg.s)]   |
+--------+----------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image104| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.isentropicExponent
---------------------------------------------------------------------------------------------------------------------------

**Return isentropic exponent (only for gas fraction!)**

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
      "Return isentropic exponent (only for gas fraction!)"
    algorithm 
      gamma := specificHeatCapacityCp(state)/specificHeatCapacityCv(state);
    end isentropicExponent;

--------------

|image105| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.isentropicEnthalpyApproximation
----------------------------------------------------------------------------------------------------------------------------------------

**Approximate calculation of h\_is from upstream properties, downstream
pressure, gas part only**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+--------------------------------------------+
| Type                                                                                                                          | Name    | Default   | Description                                |
+===============================================================================================================================+=========+===========+============================================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p2      |           | downstream pressure [Pa]                   |
+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+--------------------------------------------+
| `ThermodynamicState <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.ThermodynamicState>`_                       | state   |           | thermodynamic state at upstream location   |
+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+--------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                          | Name    | Description                  |
+===============================================================================================================================+=========+==============================+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h\_is   | isentropic enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image106| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.specificInternalEnergy
-------------------------------------------------------------------------------------------------------------------------------

**Return specific internal energy of moist air as a function of the
thermodynamic state record**

Information
~~~~~~~~~~~

::

Specific internal energy is determined from the thermodynamic state
record, assuming that the liquid or solid water volume is negligible.

::

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

+---------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                        | Name   | Description                       |
+=============================================================================================+========+===================================+
| `SpecificInternalEnergy <Modelica_SIunits.html#Modelica.SIunits.SpecificInternalEnergy>`_   | u      | Specific internal energy [J/kg]   |
+---------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends specificInternalEnergy 
      "Return specific internal energy of moist air as a function of the thermodynamic state record"
      extends Modelica.Icons.Function;
      output SI.SpecificInternalEnergy u "Specific internal energy";
    algorithm 
       u := specificInternalEnergy_pTX(state.p,state.T,state.X);

    end specificInternalEnergy;

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.specificInternalEnergy\_pTX
-------------------------------------------------------------------------------------------------------------------------

**Return specific internal energy of moist air as a function of pressure
p, temperature T and composition X**

Information
~~~~~~~~~~~

::

Specific internal energy is determined from pressure p, temperature T
and composition X, assuming that the liquid or solid water volume is
negligible.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------+--------+-----------+-----------------------------------+
| Type                                                                    | Name   | Default   | Description                       |
+=========================================================================+========+===========+===================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_           | p      |           | Pressure [Pa]                     |
+-------------------------------------------------------------------------+--------+-----------+-----------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_     | T      |           | Temperature [K]                   |
+-------------------------------------------------------------------------+--------+-----------+-----------------------------------+
| `MassFraction <Modelica_SIunits.html#Modelica.SIunits.MassFraction>`_   | X[:]   |           | Mass fractions of moist air [1]   |
+-------------------------------------------------------------------------+--------+-----------+-----------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                        | Name   | Description                       |
+=============================================================================================+========+===================================+
| `SpecificInternalEnergy <Modelica_SIunits.html#Modelica.SIunits.SpecificInternalEnergy>`_   | u      | Specific internal energy [J/kg]   |
+---------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.specificInternalEnergy\_pTX\_der
------------------------------------------------------------------------------------------------------------------------------

**Derivative function for specificInternalEnergy\_pTX**

Information
~~~~~~~~~~~

::

Derivative function for
`specificInternalEnergy\_pTX <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir.specificInternalEnergy_pTX>`_.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| Type                                                                    | Name    | Default   | Description                       |
+=========================================================================+=========+===========+===================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_           | p       |           | Pressure [Pa]                     |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_     | T       |           | Temperature [K]                   |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| `MassFraction <Modelica_SIunits.html#Modelica.SIunits.MassFraction>`_   | X[:]    |           | Mass fractions of moist air [1]   |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| Real                                                                    | dp      |           | Pressure derivative [Pa/s]        |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| Real                                                                    | dT      |           | Temperature derivative [K/s]      |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+
| Real                                                                    | dX[:]   |           | Mass fraction derivatives [1/s]   |
+-------------------------------------------------------------------------+---------+-----------+-----------------------------------+

Outputs
~~~~~~~

+--------+----------+--------------------------------------------------+
| Type   | Name     | Description                                      |
+========+==========+==================================================+
| Real   | u\_der   | Specific internal energy derivative [J/(kg.s)]   |
+--------+----------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image107| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.specificEntropy
------------------------------------------------------------------------------------------------------------------------

**Return specific entropy from thermodynamic state record, only valid
for phi<1**

Information
~~~~~~~~~~~

::

Specific entropy is calculated from the thermodynamic state record,
assuming ideal gas behavior and including entropy of mixing. Liquid or
solid water is not taken into account, the entire water content X[1] is
assumed to be in the vapor state (relative humidity below 1.0).

::

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

--------------

|image108| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.specificGibbsEnergy
----------------------------------------------------------------------------------------------------------------------------

**Return specific Gibbs energy as a function of the thermodynamic state
record, only valid for phi<1**

Information
~~~~~~~~~~~

::

The Gibbs Energy is computed from the thermodynamic state record for
moist air with a water content below saturation.

::

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
      "Return specific Gibbs energy as a function of the thermodynamic state record, only valid for phi<1"
      extends Modelica.Icons.Function;
    algorithm 
      g := h_pTX(state.p,state.T,state.X) - state.T*specificEntropy(state);
    end specificGibbsEnergy;

--------------

|image109| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.specificHelmholtzEnergy
--------------------------------------------------------------------------------------------------------------------------------

**Return specific Helmholtz energy as a function of the thermodynamic
state record, only valid for phi<1**

Information
~~~~~~~~~~~

::

The Specific Helmholtz Energy is computed from the thermodynamic state
record for moist air with a water content below saturation.

::

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
      "Return specific Helmholtz energy as a function of the thermodynamic state record, only valid for phi<1"
      extends Modelica.Icons.Function;
    algorithm 
      f := h_pTX(state.p,state.T,state.X) - gasConstant(state)*state.T - state.T*specificEntropy(state);
    end specificHelmholtzEnergy;

--------------

|image110| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.specificHeatCapacityCp
-------------------------------------------------------------------------------------------------------------------------------

**Return specific heat capacity at constant pressure as a function of
the thermodynamic state record**

Information
~~~~~~~~~~~

::

The specific heat capacity at constant pressure **cp** is computed from
temperature and composition for a mixture of steam (X[1]) and dry air.
All water is assumed to be in the vapor state.

::

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
      "Return specific heat capacity at constant pressure as a function of the thermodynamic state record"

    protected 
      Real dT(unit="s/K") = 1.0;
    algorithm 
      cp := h_pTX_der(state.p,state.T,state.X, 0.0, 1.0, zeros(size(state.X,1)))*dT 
        "Definition of cp: dh/dT @ constant p";
      //      cp:= SingleGasNasa.cp_Tlow(dryair, state.T)*(1-state.X[Water])
      //        + SingleGasNasa.cp_Tlow(steam, state.T)*state.X[Water];
    end specificHeatCapacityCp;

--------------

|image111| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.specificHeatCapacityCv
-------------------------------------------------------------------------------------------------------------------------------

**Return specific heat capacity at constant volume as a function of the
thermodynamic state record**

Information
~~~~~~~~~~~

::

The specific heat capacity at constant density **cv** is computed from
temperature and composition for a mixture of steam (X[1]) and dry air.
All water is assumed to be in the vapor state.

::

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
      "Return specific heat capacity at constant volume as a function of the thermodynamic state record"

    algorithm 
      cv:= SingleGasNasa.cp_Tlow(dryair, state.T)*(1-state.X[Water]) +
        SingleGasNasa.cp_Tlow(steam, state.T)*state.X[Water]
        - gasConstant(state);
    end specificHeatCapacityCv;

--------------

|image112| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.dynamicViscosity
-------------------------------------------------------------------------------------------------------------------------

**Return dynamic viscosity as a function of the thermodynamic state
record, valid from 73.15 K to 373.15 K**

Information
~~~~~~~~~~~

::

Dynamic viscosity is computed from temperature using a simple polynomial
for dry air, assuming that moisture influence is small. Range of
validity is from 73.15 K to 373.15 K.

::

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
      "Return dynamic viscosity as a function of the thermodynamic state record, valid from 73.15 K to 373.15 K"

        import Modelica.Media.Incompressible.TableBased.Polynomials_Temp;
    algorithm 
      eta := Polynomials_Temp.evaluate({(-4.96717436974791E-011), 5.06626785714286E-008, 1.72937731092437E-005},
           Cv.to_degC(state.T));
    end dynamicViscosity;

--------------

|image113| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.thermalConductivity
----------------------------------------------------------------------------------------------------------------------------

**Return thermal conductivity as a function of the thermodynamic state
record, valid from 73.15 K to 373.15 K**

Information
~~~~~~~~~~~

::

Thermal conductivity is computed from temperature using a simple
polynomial for dry air, assuming that moisture influence is small. Range
of validity is from 73.15 K to 373.15 K.

::

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
      "Return thermal conductivity as a function of the thermodynamic state record, valid from 73.15 K to 373.15 K"

        import Modelica.Media.Incompressible.TableBased.Polynomials_Temp;
    algorithm 
      lambda := Polynomials_Temp.evaluate({(-4.8737307422969E-008), 7.67803133753502E-005, 0.0241814385504202},
       Cv.to_degC(state.T));
    end thermalConductivity;

--------------

|image114| `Modelica.Media.Air.MoistAir <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.PsychrometricData
--------------------------------------------------------------------------------------------------------------------------

**Produces plot data for psychrometric charts**

Information
~~~~~~~~~~~

::

This model produces psychrometric data from the moist air model in this
library to be plotted in charts. The two most common chart varieties are
the Mollier Diagram and the Psycrometric Chart. The first is widely used
in some European countries while the second is more common in the
Anglo-American world. Specific enthalpy is plotted over absolute
humidity in the Mollier Diagram, it is the other way round in the
Psychrometric Chart.
 It must be noted that the relationship of both axis variables is not
right-angled, the absolute humidity follows a slope which equals the
enthalpy of vaporization at 0 °C. For better reading and in oder to
reduce the fog region the humidity axis is rotated to obtain a
right-angled plot. Both charts usually contain additional information as
isochores or auxiliary scales for e.g., heat ratios. Those information
are omitted in this model and the charts below. Other important features
of psychrometric chart data are that all mass specific variables (like
absolute humidity, specific enthalpy etc.) are expressed in terms of kg
dry air and that their baseline of 0 enthalpy is found at 0 °C and zero
humidity.

|image115| |image116|

**Legend:** blue - constant specific enthalpy, red - constant
temperature, black - constant relative humidity

The model provides data for lines of constant specific enthalpy,
temperature and relative humidity in a Mollier Diagram or Psychrometric
Chart as they were used for the figures above. For limitations and
ranges of validity please refer to the `MoistAir package
description <Modelica_Media_Air_MoistAir.html#Modelica.Media.Air.MoistAir>`_.
Absolute humidity **x** is increased with time in this model. The
specific enthalpies adjusted for plotting are then obtained from:

-  **y\_h**: constant specific enthalpy
-  **y\_T**: constant temperature
-  **y\_phi**: constant relative humidity

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| Type                                                                            | Name        | Default   | Description                                                   |
+=================================================================================+=============+===========+===============================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p\_const    | 1e5       | Pressure [Pa]                                                 |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| Integer                                                                         | n\_T        | 11        | Number of isotherms                                           |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T\_min      | 253.15    | Lowest isotherm [K]                                           |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T\_step     | 10        | Temperature step between two isotherms [K]                    |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| Integer                                                                         | n\_h        | 16        | Number of lines with constant specific enthalpy               |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h\_min      | -20e3     | Lowest line of constant enthalpy [J/kg]                       |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h\_step     | 1e4       | Enthalpy step between two lines of constant enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| Integer                                                                         | n\_phi      | 10        | Number of lines with constant relative humidity               |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| Real                                                                            | phi\_min    | 0.1       | Lowest line of constant humidity                              |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| Real                                                                            | phi\_step   | 0.1       | Step between two lines of constant humidity                   |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| `MassFraction <Modelica_SIunits.html#Modelica.SIunits.MassFraction>`_           | x\_min      | 0.00      | Minimum diagram absolute humidity [1]                         |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| `MassFraction <Modelica_SIunits.html#Modelica.SIunits.MassFraction>`_           | x\_max      | 0.03      | Maximum diagram absolute humidity [1]                         |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                           | t           | 1         | Simulation time [s]                                           |
+---------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:31
2010.

.. |image0| image:: ../Resources/Images/Media/Air/Mollier.png
.. |image1| image:: ../Resources/Images/Media/Air/PsycroChart.png
.. |Modelica.Media.Air.MoistAir.ThermodynamicState| image:: Modelica.Media.Air.MoistAir.ThermodynamicStateS.png
.. |Modelica.Media.Air.MoistAir.BaseProperties| image:: Modelica.Media.Air.MoistAir.BasePropertiesS.png
.. |Modelica.Media.Air.MoistAir.setState\_pTX| image:: Modelica.Media.Air.MoistAir.setState_pTXS.png
.. |Modelica.Media.Air.MoistAir.setState\_phX| image:: Modelica.Media.Air.MoistAir.setState_pTXS.png
.. |Modelica.Media.Air.MoistAir.setState\_dTX| image:: Modelica.Media.Air.MoistAir.setState_pTXS.png
.. |Modelica.Media.Air.MoistAir.setSmoothState| image:: Modelica.Media.Air.MoistAir.setState_pTXS.png
.. |Modelica.Media.Air.MoistAir.Xsaturation| image:: Modelica.Media.Air.MoistAir.XsaturationS.png
.. |Modelica.Media.Air.MoistAir.xsaturation| image:: Modelica.Media.Air.MoistAir.XsaturationS.png
.. |Modelica.Media.Air.MoistAir.xsaturation\_pT| image:: Modelica.Media.Air.MoistAir.XsaturationS.png
.. |Modelica.Media.Air.MoistAir.massFraction\_pTphi| image:: Modelica.Media.Air.MoistAir.XsaturationS.png
.. |Modelica.Media.Air.MoistAir.relativeHumidity\_pTX| image:: Modelica.Media.Air.MoistAir.XsaturationS.png
.. |Modelica.Media.Air.MoistAir.relativeHumidity| image:: Modelica.Media.Air.MoistAir.XsaturationS.png
.. |Modelica.Media.Air.MoistAir.gasConstant| image:: Modelica.Media.Air.MoistAir.gasConstantS.png
.. |Modelica.Media.Air.MoistAir.gasConstant\_X| image:: Modelica.Media.Air.MoistAir.gasConstant_XS.png
.. |Modelica.Media.Air.MoistAir.saturationPressureLiquid| image:: Modelica.Media.Air.MoistAir.saturationPressureLiquidS.png
.. |Modelica.Media.Air.MoistAir.saturationPressureLiquid\_der| image:: Modelica.Media.Air.MoistAir.saturationPressureLiquidS.png
.. |Modelica.Media.Air.MoistAir.sublimationPressureIce| image:: Modelica.Media.Air.MoistAir.saturationPressureLiquidS.png
.. |Modelica.Media.Air.MoistAir.sublimationPressureIce\_der| image:: Modelica.Media.Air.MoistAir.saturationPressureLiquidS.png
.. |Modelica.Media.Air.MoistAir.saturationPressure| image:: Modelica.Media.Air.MoistAir.saturationPressureLiquidS.png
.. |Modelica.Media.Air.MoistAir.saturationPressure\_der| image:: Modelica.Media.Air.MoistAir.saturationPressure_derS.png
.. |Modelica.Media.Air.MoistAir.saturationTemperature| image:: Modelica.Media.Air.MoistAir.saturationPressure_derS.png
.. |Modelica.Media.Air.MoistAir.enthalpyOfVaporization| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png
.. |Modelica.Media.Air.MoistAir.HeatCapacityOfWater| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png
.. |Modelica.Media.Air.MoistAir.enthalpyOfLiquid| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png
.. |Modelica.Media.Air.MoistAir.enthalpyOfGas| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png
.. |Modelica.Media.Air.MoistAir.enthalpyOfCondensingGas| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png
.. |Modelica.Media.Air.MoistAir.enthalpyOfNonCondensingGas| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationS.png
.. |Modelica.Media.Air.MoistAir.enthalpyOfWater| image:: Modelica.Media.Air.MoistAir.enthalpyOfWaterS.png
.. |Modelica.Media.Air.MoistAir.enthalpyOfWater\_der| image:: Modelica.Media.Air.MoistAir.enthalpyOfWaterS.png
.. |Modelica.Media.Air.MoistAir.pressure| image:: Modelica.Media.Air.MoistAir.pressureS.png
.. |Modelica.Media.Air.MoistAir.temperature| image:: Modelica.Media.Air.MoistAir.pressureS.png
.. |Modelica.Media.Air.MoistAir.T\_phX| image:: Modelica.Media.Air.MoistAir.T_phXS.png
.. |Modelica.Media.Air.MoistAir.density| image:: Modelica.Media.Air.MoistAir.densityS.png
.. |Modelica.Media.Air.MoistAir.specificEnthalpy| image:: Modelica.Media.Air.MoistAir.densityS.png
.. |Modelica.Media.Air.MoistAir.h\_pTX| image:: Modelica.Media.Air.MoistAir.densityS.png
.. |Modelica.Media.Air.MoistAir.h\_pTX\_der| image:: Modelica.Media.Air.MoistAir.densityS.png
.. |Modelica.Media.Air.MoistAir.isentropicExponent| image:: Modelica.Media.Air.MoistAir.densityS.png
.. |Modelica.Media.Air.MoistAir.isentropicEnthalpyApproximation| image:: Modelica.Media.Air.MoistAir.densityS.png
.. |Modelica.Media.Air.MoistAir.specificInternalEnergy| image:: Modelica.Media.Air.MoistAir.densityS.png
.. |Modelica.Media.Air.MoistAir.specificInternalEnergy\_pTX| image:: Modelica.Media.Air.MoistAir.specificInternalEnergy_pTXS.png
.. |Modelica.Media.Air.MoistAir.specificInternalEnergy\_pTX\_der| image:: Modelica.Media.Air.MoistAir.specificInternalEnergy_pTXS.png
.. |Modelica.Media.Air.MoistAir.specificEntropy| image:: Modelica.Media.Air.MoistAir.specificEntropyS.png
.. |Modelica.Media.Air.MoistAir.specificGibbsEnergy| image:: Modelica.Media.Air.MoistAir.specificEntropyS.png
.. |Modelica.Media.Air.MoistAir.specificHelmholtzEnergy| image:: Modelica.Media.Air.MoistAir.specificEntropyS.png
.. |Modelica.Media.Air.MoistAir.specificHeatCapacityCp| image:: Modelica.Media.Air.MoistAir.specificEntropyS.png
.. |Modelica.Media.Air.MoistAir.specificHeatCapacityCv| image:: Modelica.Media.Air.MoistAir.specificEntropyS.png
.. |Modelica.Media.Air.MoistAir.dynamicViscosity| image:: Modelica.Media.Air.MoistAir.specificEntropyS.png
.. |Modelica.Media.Air.MoistAir.thermalConductivity| image:: Modelica.Media.Air.MoistAir.specificEntropyS.png
.. |Modelica.Media.Air.MoistAir.Utilities| image:: Modelica.Media.Air.MoistAir.UtilitiesS.png
.. |Modelica.Media.Air.MoistAir.PsychrometricData| image:: Modelica.Media.Air.MoistAir.PsychrometricDataS.png
.. |Modelica.Media.Interfaces.PartialMixtureMedium.FluidConstants| image:: Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicStateS.png
.. |Modelica.Media.Interfaces.PartialMixtureMedium.moleToMassFractions| image:: Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png
.. |Modelica.Media.Interfaces.PartialMixtureMedium.massToMoleFractions| image:: Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png
.. |Modelica.Media.Interfaces.PartialMedium.setState\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
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
.. |Modelica.Media.Interfaces.PartialMedium.molarMass| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature\_phX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_phX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.Choices| image:: Modelica.Media.Interfaces.PartialMedium.ChoicesS.png
.. |image80| image:: Modelica.Media.Air.MoistAir.ThermodynamicStateI.png
.. |image81| image:: Modelica.Media.Air.MoistAir.BasePropertiesI.png
.. |image82| image:: Modelica.Media.Air.MoistAir.setState_pTXI.png
.. |image83| image:: Modelica.Media.Air.MoistAir.setState_pTXI.png
.. |image84| image:: Modelica.Media.Air.MoistAir.setState_pTXI.png
.. |image85| image:: Modelica.Media.Air.MoistAir.setState_pTXI.png
.. |image86| image:: Modelica.Media.Air.MoistAir.gasConstantI.png
.. |image87| image:: Modelica.Media.Air.MoistAir.saturationPressureLiquidI.png
.. |image88| image:: Modelica.Media.Air.MoistAir.saturationPressureLiquidI.png
.. |image89| image:: Modelica.Media.Air.MoistAir.saturationPressureLiquidI.png
.. |image90| image:: Modelica.Media.Air.MoistAir.saturationPressureLiquidI.png
.. |image91| image:: Modelica.Media.Air.MoistAir.saturationPressureLiquidI.png
.. |image92| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png
.. |image93| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png
.. |image94| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png
.. |image95| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png
.. |image96| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png
.. |image97| image:: Modelica.Media.Air.MoistAir.enthalpyOfVaporizationI.png
.. |image98| image:: Modelica.Media.Air.MoistAir.pressureI.png
.. |image99| image:: Modelica.Media.Air.MoistAir.pressureI.png
.. |image100| image:: Modelica.Media.Air.MoistAir.densityI.png
.. |image101| image:: Modelica.Media.Air.MoistAir.densityI.png
.. |image102| image:: Modelica.Media.Air.MoistAir.densityI.png
.. |image103| image:: Modelica.Media.Air.MoistAir.densityI.png
.. |image104| image:: Modelica.Media.Air.MoistAir.densityI.png
.. |image105| image:: Modelica.Media.Air.MoistAir.densityI.png
.. |image106| image:: Modelica.Media.Air.MoistAir.densityI.png
.. |image107| image:: Modelica.Media.Air.MoistAir.specificEntropyI.png
.. |image108| image:: Modelica.Media.Air.MoistAir.specificEntropyI.png
.. |image109| image:: Modelica.Media.Air.MoistAir.specificEntropyI.png
.. |image110| image:: Modelica.Media.Air.MoistAir.specificEntropyI.png
.. |image111| image:: Modelica.Media.Air.MoistAir.specificEntropyI.png
.. |image112| image:: Modelica.Media.Air.MoistAir.specificEntropyI.png
.. |image113| image:: Modelica.Media.Air.MoistAir.specificEntropyI.png
.. |image114| image:: Modelica.Media.Air.MoistAir.PsychrometricDataI.png
.. |image115| image:: ../Resources/Images/Media/Air/Mollier.png
.. |image116| image:: ../Resources/Images/Media/Air/PsycroChart.png
