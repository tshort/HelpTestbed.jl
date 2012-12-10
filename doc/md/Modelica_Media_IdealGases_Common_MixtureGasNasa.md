% Modelica.Media.IdealGases.Common.MixtureGasNasa
% 
% 

[Modelica.Media.IdealGases.Common](Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common).MixtureGasNasa
=========================================================================================================================

**Medium model of a mixture of ideal gases based on NASA source**

Information
-----------

::

This model calculates the medium properties for single component ideal
gases.

**Sources for model and literature:**
  ~ Original Data: Computer program for calculation of complex chemical

equilibrium compositions and applications. Part 1: Analysis Document ID:
19950013764 N (95N20180) File Series: NASA Technical Reports Report
Number: NASA-RP-1311 E-8017 NAS 1.61:1311 Authors: Gordon, Sanford (NASA
Lewis Research Center) Mcbride, Bonnie J. (NASA Lewis Research Center)
Published: Oct 01, 1994.

**Known limits of validity:** The data is valid for temperatures between
200 K and 6000 K. A few of the data sets for monatomic gases have a
discontinuous 1st derivative at 1000 K, but this never caused problems
so far.

This model has been copied from the ThermoFluid library. It has been
developed by Hubertus Tummescheit.

::

Extends from
[Modelica.Media.Interfaces.PartialMixtureMedium](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium)
(Base class for pure substances of several chemical substances).

Package Content
---------------

Name

Description

![Modelica.Media.IdealGases.Common.MixtureGasNasa.ThermodynamicState](Modelica.Media.IdealGases.Common.MixtureGasNasa.ThermodynamicStateS.png)
[ThermodynamicState](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.ThermodynamicState)

thermodynamic state variables

![Modelica.Media.IdealGases.Common.MixtureGasNasa.FluidConstants](Modelica.Media.IdealGases.Common.MixtureGasNasa.ThermodynamicStateS.png)
[FluidConstants](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.FluidConstants)

fluid constants

data

Data records of ideal gas substances

excludeEnthalpyOfFormation=true

If true, enthalpy of formation Hf is not included in specific enthalpy h

referenceChoice=ReferenceEnthalpy.ZeroAt0K

Choice of reference enthalpy

h\_offset=0.0

User defined offset for reference enthalpy, if referenceChoice =
UserDefined

MMX=data[:].MM

molar masses of components

![Modelica.Media.IdealGases.Common.MixtureGasNasa.BaseProperties](Modelica.Media.IdealGases.Common.MixtureGasNasa.BasePropertiesS.png)
[BaseProperties](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.BaseProperties)

Base properties (p, d, T, h, u, R, MM, X, and Xi of NASA mixture gas

![Modelica.Media.IdealGases.Common.MixtureGasNasa.setState\_pTX](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[setState\_pTX](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTX)

Return thermodynamic state as function of p, T and composition X

![Modelica.Media.IdealGases.Common.MixtureGasNasa.setState\_phX](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[setState\_phX](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_phX)

Return thermodynamic state as function of p, h and composition X

![Modelica.Media.IdealGases.Common.MixtureGasNasa.setState\_psX](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[setState\_psX](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_psX)

Return thermodynamic state as function of p, s and composition X

![Modelica.Media.IdealGases.Common.MixtureGasNasa.setState\_dTX](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[setState\_dTX](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_dTX)

Return thermodynamic state as function of d, T and composition X

![Modelica.Media.IdealGases.Common.MixtureGasNasa.setSmoothState](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[setSmoothState](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

![Modelica.Media.IdealGases.Common.MixtureGasNasa.pressure](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[pressure](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.pressure)

Return pressure of ideal gas

![Modelica.Media.IdealGases.Common.MixtureGasNasa.temperature](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[temperature](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.temperature)

Return temperature of ideal gas

![Modelica.Media.IdealGases.Common.MixtureGasNasa.density](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[density](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.density)

Return density of ideal gas

![Modelica.Media.IdealGases.Common.MixtureGasNasa.specificEnthalpy](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[specificEnthalpy](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.specificEnthalpy)

Return specific enthalpy

![Modelica.Media.IdealGases.Common.MixtureGasNasa.specificInternalEnergy](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[specificInternalEnergy](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.specificInternalEnergy)

Return specific internal energy

![Modelica.Media.IdealGases.Common.MixtureGasNasa.specificEntropy](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[specificEntropy](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.specificEntropy)

Return specific entropy

![Modelica.Media.IdealGases.Common.MixtureGasNasa.specificGibbsEnergy](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[specificGibbsEnergy](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.specificGibbsEnergy)

Return specific Gibbs energy

![Modelica.Media.IdealGases.Common.MixtureGasNasa.specificHelmholtzEnergy](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[specificHelmholtzEnergy](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.specificHelmholtzEnergy)

Return specific Helmholtz energy

![Modelica.Media.IdealGases.Common.MixtureGasNasa.h\_TX](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[h\_TX](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.h_TX)

Return specific enthalpy

![Modelica.Media.IdealGases.Common.MixtureGasNasa.h\_TX\_der](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[h\_TX\_der](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.h_TX_der)

Return specific enthalpy derivative

![Modelica.Media.IdealGases.Common.MixtureGasNasa.gasConstant](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[gasConstant](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.gasConstant)

Return gasConstant

![Modelica.Media.IdealGases.Common.MixtureGasNasa.specificHeatCapacityCp](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[specificHeatCapacityCp](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.specificHeatCapacityCp)

Return specific heat capacity at constant pressure

![Modelica.Media.IdealGases.Common.MixtureGasNasa.specificHeatCapacityCv](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[specificHeatCapacityCv](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.specificHeatCapacityCv)

Return specific heat capacity at constant volume from temperature and
gas data

![Modelica.Media.IdealGases.Common.MixtureGasNasa.MixEntropy](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXS.png)
[MixEntropy](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.MixEntropy)

Return mixing entropy of ideal gases / R

![Modelica.Media.IdealGases.Common.MixtureGasNasa.s\_TX](Modelica.Media.IdealGases.Common.MixtureGasNasa.s_TXS.png)
[s\_TX](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.s_TX)

Return temperature dependent part of the entropy, expects full entropy
vector

![Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponent](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[isentropicExponent](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponent)

Return isentropic exponent

![Modelica.Media.IdealGases.Common.MixtureGasNasa.velocityOfSound](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[velocityOfSound](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.velocityOfSound)

Return velocity of sound

![Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicEnthalpyApproximation](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[isentropicEnthalpyApproximation](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicEnthalpyApproximation)

Approximate method of calculating h\_is from upstream properties and
downstream pressure

![Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicEnthalpy](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[isentropicEnthalpy](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicEnthalpy)

Return isentropic enthalpy

![Modelica.Media.IdealGases.Common.MixtureGasNasa.gasMixtureViscosity](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[gasMixtureViscosity](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.gasMixtureViscosity)

Return viscosities of gas mixtures at low pressures (Wilke method)

![Modelica.Media.IdealGases.Common.MixtureGasNasa.dynamicViscosity](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[dynamicViscosity](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.dynamicViscosity)

Return mixture dynamic viscosity

![Modelica.Media.IdealGases.Common.MixtureGasNasa.mixtureViscosityChung](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[mixtureViscosityChung](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.mixtureViscosityChung)

Return the viscosity of gas mixtures without access to component
viscosities (Chung, et. al. rules)

![Modelica.Media.IdealGases.Common.MixtureGasNasa.lowPressureThermalConductivity](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[lowPressureThermalConductivity](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.lowPressureThermalConductivity)

Return thermal conductivites of low-pressure gas mixtures (Mason and
Saxena Modification)

![Modelica.Media.IdealGases.Common.MixtureGasNasa.thermalConductivity](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[thermalConductivity](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.thermalConductivity)

Return thermal conductivity for low pressure gas mixtures

![Modelica.Media.IdealGases.Common.MixtureGasNasa.isobaricExpansionCoefficient](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[isobaricExpansionCoefficient](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.isobaricExpansionCoefficient)

Return isobaric expansion coefficient beta

![Modelica.Media.IdealGases.Common.MixtureGasNasa.isothermalCompressibility](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[isothermalCompressibility](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.isothermalCompressibility)

Return isothermal compressibility factor

![Modelica.Media.IdealGases.Common.MixtureGasNasa.density\_derp\_T](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[density\_derp\_T](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.density_derp_T)

Return density derivative by pressure at constant temperature

![Modelica.Media.IdealGases.Common.MixtureGasNasa.density\_derT\_p](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[density\_derT\_p](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.density_derT_p)

Return density derivative by temperature at constant pressure

![Modelica.Media.IdealGases.Common.MixtureGasNasa.density\_derX](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[density\_derX](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.density_derX)

Return density derivative by mass fraction

![Modelica.Media.IdealGases.Common.MixtureGasNasa.molarMass](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentS.png)
[molarMass](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.molarMass)

Return molar mass of mixture

![Modelica.Media.IdealGases.Common.MixtureGasNasa.T\_hX](Modelica.Media.IdealGases.Common.MixtureGasNasa.T_hXS.png)
[T\_hX](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.T_hX)

Return temperature from specific enthalpy and mass fraction

![Modelica.Media.IdealGases.Common.MixtureGasNasa.T\_psX](Modelica.Media.IdealGases.Common.MixtureGasNasa.T_hXS.png)
[T\_psX](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa.T_psX)

Return temperature from pressure, specific entropy and mass fraction

Inherited

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

Types and constants
-------------------

    constant Modelica.Media.IdealGases.Common.DataRecord[:] data 
    "Data records of ideal gas substances";

    constant Boolean excludeEnthalpyOfFormation=true 
    "If true, enthalpy of formation Hf is not included in specific enthalpy h";

    constant ReferenceEnthalpy referenceChoice=ReferenceEnthalpy.ZeroAt0K 
    "Choice of reference enthalpy";

    constant SpecificEnthalpy h_offset=0.0 
    "User defined offset for reference enthalpy, if referenceChoice = UserDefined";

    constant MolarMass[nX] MMX=data[:].MM "molar masses of components";

* * * * *

![image58](Modelica.Media.IdealGases.Common.MixtureGasNasa.ThermodynamicStateI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).ThermodynamicState
==============================================================================================================================================================================================================================================================

**thermodynamic state variables**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState)
(thermodynamic state variables).

Modelica definition
-------------------

    redeclare record extends ThermodynamicState 
      "thermodynamic state variables"
    end ThermodynamicState;

* * * * *

![image59](Modelica.Media.IdealGases.Common.MixtureGasNasa.ThermodynamicStateI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).FluidConstants
==========================================================================================================================================================================================================================================================

**fluid constants**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.FluidConstants)
(extended fluid constants).

Modelica definition
-------------------

    redeclare record extends FluidConstants "fluid constants"
    end FluidConstants;

* * * * *

![image60](Modelica.Media.IdealGases.Common.MixtureGasNasa.BasePropertiesI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).BaseProperties
======================================================================================================================================================================================================================================================

**Base properties (p, d, T, h, u, R, MM, X, and Xi of NASA mixture gas**

Information
-----------

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
      Xi(each stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
      redeclare final constant Boolean standardOrderComponents=true) 
      "Base properties (p, d, T, h, u, R, MM, X, and Xi of NASA mixture gas"

        import Modelica.Media.IdealGases.Common.SingleGasNasa;
        //    SpecificEnthalpy h_component[nX];
    equation 
      assert(T >= 200 and T <= 6000, "
    Temperature T (=" + String(T) + " K = 200 K) is not in the allowed range
    200 K <= T <= 6000 K
    required from medium model \"" + mediumName + "\".");

      MM = molarMass(state);
      h = h_TX(T, X);
      R = data.R*X;
      u = h - R*T;
      d = p/(R*T);
      // connect state with BaseProperties
      state.T = T;
      state.p = p;
      state.X = if fixedX then reference_X else X;
    end BaseProperties;

* * * * *

![image61](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).setState\_pTX
===================================================================================================================================================================================================================================================

**Return thermodynamic state as function of p, T and composition X**

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
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [ThermodynamicState](Modelica_Media_IdealGases_Common_Mixture stat 
  GasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa. e    
  ThermodynamicState)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function setState_pTX 
      "Return thermodynamic state as function of p, T and composition X"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state;
    algorithm 
      state := if size(X,1) == nX then ThermodynamicState(p=p,T=T, X=X) else 
             ThermodynamicState(p=p,T=T, X=cat(1,X,{1-sum(X)}));
    end setState_pTX;

* * * * *

![image62](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).setState\_phX
===================================================================================================================================================================================================================================================

**Return thermodynamic state as function of p, h and composition X**

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
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [ThermodynamicState](Modelica_Media_IdealGases_Common_Mixture stat 
  GasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa. e    
  ThermodynamicState)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function setState_phX 
      "Return thermodynamic state as function of p, h and composition X"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state;
    algorithm 
      state := if size(X,1) == nX then ThermodynamicState(p=p,T=T_hX(h,X),X=X) else 
             ThermodynamicState(p=p,T=T_hX(h,X), X=cat(1,X,{1-sum(X)}));
    end setState_phX;

* * * * *

![image63](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).setState\_psX
===================================================================================================================================================================================================================================================

**Return thermodynamic state as function of p, s and composition X**

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
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [ThermodynamicState](Modelica_Media_IdealGases_Common_Mixture stat 
  GasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa. e    
  ThermodynamicState)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function setState_psX 
      "Return thermodynamic state as function of p, s and composition X"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state;
    algorithm 
      state := if size(X,1) == nX then ThermodynamicState(p=p,T=T_psX(p,s,X),X=X) else 
             ThermodynamicState(p=p,T=T_psX(p,s,X), X=cat(1,X,{1-sum(X)}));
    end setState_psX;

* * * * *

![image64](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).setState\_dTX
===================================================================================================================================================================================================================================================

**Return thermodynamic state as function of d, T and composition X**

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
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [ThermodynamicState](Modelica_Media_IdealGases_Common_Mixture stat 
  GasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa. e    
  ThermodynamicState)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function setState_dTX 
      "Return thermodynamic state as function of d, T and composition X"
      extends Modelica.Icons.Function;
      input Density d "density";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state;
    algorithm 
      state := if size(X,1) == nX then ThermodynamicState(p=d*(data.R*X)*T,T=T,X=X) else 
             ThermodynamicState(p=d*(data.R*cat(1,X,{1-sum(X)}))*T,T=T, X=cat(1,X,{1-sum(X)}));
    end setState_dTX;

* * * * *

![image65](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).setSmoothState
====================================================================================================================================================================================================================================================

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

![image66](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).pressure
==============================================================================================================================================================================================================================================

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

![image67](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).temperature
=================================================================================================================================================================================================================================================

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

![image68](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).density
=============================================================================================================================================================================================================================================

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
      d := state.p/((state.X*data.R)*state.T);
    end density;

* * * * *

![image69](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).specificEnthalpy
======================================================================================================================================================================================================================================================

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
      h := h_TX(state.T,state.X);
    end specificEnthalpy;

* * * * *

![image70](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).specificInternalEnergy
============================================================================================================================================================================================================================================================

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
      u := h_TX(state.T,state.X) - gasConstant(state)*state.T;
    end specificInternalEnergy;

* * * * *

![image71](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).specificEntropy
=====================================================================================================================================================================================================================================================

**Return specific entropy**

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

    redeclare function extends specificEntropy "Return specific entropy"
    protected 
      Real[nX] Y(unit="mol/mol")=massToMoleFractions(state.X, data.MM) 
        "Molar fractions";
    algorithm 
    s :=  s_TX(state.T, state.X) - sum(state.X[i]*Modelica.Constants.R/MMX[i]*
        (if state.X[i]<Modelica.Constants.eps then Y[i] else 
        Modelica.Math.log(Y[i]*state.p/reference_p)) for i in 1:nX);
    end specificEntropy;

* * * * *

![image72](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).specificGibbsEnergy
=========================================================================================================================================================================================================================================================

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
      g := h_TX(state.T,state.X) - state.T*specificEntropy(state);
    end specificGibbsEnergy;

* * * * *

![image73](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).specificHelmholtzEnergy
=============================================================================================================================================================================================================================================================

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
      f := h_TX(state.T,state.X) - gasConstant(state)*state.T - state.T*specificEntropy(state);
    end specificHelmholtzEnergy;

* * * * *

![image74](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).h\_TX
===========================================================================================================================================================================================================================================

**Return specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                  Name Default Description
  ------------------------------------- ---- ------- ----------------------
  [Temperature](Modelica_SIunits.html#M T            Temperature [K]
  odelica.SIunits.Temperature)                       

  [MassFraction](Modelica_Media_Interfa X[:] referen Independent Mass
  ces_PartialMedium.html#Modelica.Media      ce\_X   fractions of gas
  .Interfaces.PartialMedium.MassFractio              mixture [kg/kg]
  n)                                                 

  Boolean                               excl exclude If true, enthalpy of
                                        Enth Enthalp formation Hf is not
                                        Form yOfForm included in specific
                                             ation   enthalpy h

  [ReferenceEnthalpy](Modelica_Media_In refC referen Choice of reference
  terfaces_PartialMedium_Choices.html#M hoic ceChoic enthalpy
  odelica.Media.Interfaces.PartialMediu e    e       
  m.Choices.ReferenceEnthalpy)                       

  [SpecificEnthalpy](Modelica_SIunits.h h\_o h\_offs User defined offset
  tml#Modelica.SIunits.SpecificEnthalpy ff   et      for reference
  )                                                  enthalpy, if
                                                     referenceChoice =
                                                     UserDefined [J/kg]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                        Name Description
  ------------------------------------------- ---- ------------------------
  [SpecificEnthalpy](Modelica_SIunits.html#Mo h    Specific enthalpy at
  delica.SIunits.SpecificEnthalpy)                 temperature T [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function h_TX "Return specific enthalpy"
        import Modelica.Media.Interfaces.PartialMedium.Choices;
       extends Modelica.Icons.Function;
       input SI.Temperature T "Temperature";
       input MassFraction X[:]=reference_X 
        "Independent Mass fractions of gas mixture";
       input Boolean exclEnthForm=excludeEnthalpyOfFormation 
        "If true, enthalpy of formation Hf is not included in specific enthalpy h";
       input Choices.ReferenceEnthalpy refChoice=referenceChoice 
        "Choice of reference enthalpy";
       input SI.SpecificEnthalpy h_off=h_offset 
        "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
       output SI.SpecificEnthalpy h "Specific enthalpy at temperature T";
    algorithm 
      h :=(if fixedX then reference_X else X)*
           {SingleGasNasa.h_T(data[i], T, exclEnthForm, refChoice, h_off) for i in 1:nX};
    end h_TX;

* * * * *

![image75](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).h\_TX\_der
================================================================================================================================================================================================================================================

**Return specific enthalpy derivative**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                  Name Default Description
  ------------------------------------- ---- ------- ----------------------
  [Temperature](Modelica_SIunits.html#M T            Temperature [K]
  odelica.SIunits.Temperature)                       

  [MassFraction](Modelica_Media_Interfa X[nX         Independent Mass
  ces_PartialMedium.html#Modelica.Media ]            fractions of gas
  .Interfaces.PartialMedium.MassFractio              mixture [kg/kg]
  n)                                                 

  Boolean                               excl exclude If true, enthalpy of
                                        Enth Enthalp formation Hf is not
                                        Form yOfForm included in specific
                                             ation   enthalpy h

  [ReferenceEnthalpy](Modelica_Media_In refC referen Choice of reference
  terfaces_PartialMedium_Choices.html#M hoic ceChoic enthalpy
  odelica.Media.Interfaces.PartialMediu e    e       
  m.Choices.ReferenceEnthalpy)                       

  [SpecificEnthalpy](Modelica_SIunits.h h\_o h\_offs User defined offset
  tml#Modelica.SIunits.SpecificEnthalpy ff   et      for reference
  )                                                  enthalpy, if
                                                     referenceChoice =
                                                     UserDefined [J/kg]

  Real                                  dT           Temperature derivative

  Real                                  dX[n         independent mass
                                        X]           fraction derivative
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- ---------------------------------------
  Real      h\_der      Specific enthalpy at temperature T

Modelica definition
-------------------

    function h_TX_der "Return specific enthalpy derivative"
        import Modelica.Media.Interfaces.PartialMedium.Choices;
       extends Modelica.Icons.Function;
       input SI.Temperature T "Temperature";
       input MassFraction X[nX] "Independent Mass fractions of gas mixture";
       input Boolean exclEnthForm=excludeEnthalpyOfFormation 
        "If true, enthalpy of formation Hf is not included in specific enthalpy h";
       input Choices.ReferenceEnthalpy refChoice=referenceChoice 
        "Choice of reference enthalpy";
       input SI.SpecificEnthalpy h_off=h_offset 
        "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
      input Real dT "Temperature derivative";
      input Real dX[nX] "independent mass fraction derivative";
      output Real h_der "Specific enthalpy at temperature T";
    algorithm 
      h_der := if fixedX then 
        dT*sum((SingleGasNasa.cp_T(data[i], T)*reference_X[i]) for i in 1:nX) else 
        dT*sum((SingleGasNasa.cp_T(data[i], T)*X[i]) for i in 1:nX)+
        sum((SingleGasNasa.h_T(data[i], T)*dX[i]) for i in 1:nX);
    end h_TX_der;

* * * * *

![image76](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).gasConstant
=================================================================================================================================================================================================================================================

**Return gasConstant**

Information
-----------

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

    redeclare function extends gasConstant "Return gasConstant"
    algorithm 
      R := data.R*state.X;
    end gasConstant;

* * * * *

![image77](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).specificHeatCapacityCp
============================================================================================================================================================================================================================================================

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
      cp := {SingleGasNasa.cp_T(data[i], state.T) for i in 1:nX}*state.X;
    end specificHeatCapacityCp;

* * * * *

![image78](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).specificHeatCapacityCv
============================================================================================================================================================================================================================================================

**Return specific heat capacity at constant volume from temperature and
gas data**

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
      "Return specific heat capacity at constant volume from temperature and gas data"
    algorithm 
      cv := {SingleGasNasa.cp_T(data[i], state.T) for i in 1:nX}*state.X -data.R*state.X;
    end specificHeatCapacityCv;

* * * * *

![image79](Modelica.Media.IdealGases.Common.MixtureGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).MixEntropy
================================================================================================================================================================================================================================================

**Return mixing entropy of ideal gases / R**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name  Defaul Description
                                                  t      
  ----------------------------------------- ----- ------ ------------------
  [MoleFraction](Modelica_SIunits.html#Mode x[:]         mole fraction of
  lica.SIunits.MoleFraction)                             mixture [1]
  -------------------------------------------------------------------------

Outputs
-------

  Type     Name     Description
  -------- -------- ------------------------------------------------------
  Real     smix     mixing entropy contribution, divided by gas constant

Modelica definition
-------------------

    function MixEntropy "Return mixing entropy of ideal gases / R"
      extends Modelica.Icons.Function;
      input SI.MoleFraction x[:] "mole fraction of mixture";
      output Real smix "mixing entropy contribution, divided by gas constant";
    algorithm 
      smix := sum(if x[i] > Modelica.Constants.eps then -x[i]*Modelica.Math.log(x[i]) else 
                       x[i] for i in 1:size(x,1));
    end MixEntropy;

* * * * *

[Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).s\_TX
=============================================================================================================================================================

**Return temperature dependent part of the entropy, expects full entropy
vector**

Inputs
------

  --------------------------------------------------------------------------
  Type                                                Name Defau Description
                                                           lt    
  --------------------------------------------------- ---- ----- -----------
  [Temperature](Modelica_Media_Interfaces_PartialMedi T          temperature
  um.html#Modelica.Media.Interfaces.PartialMedium.Tem            [K]
  perature)                                                      

  [MassFraction](Modelica_Media_Interfaces_PartialMed X[nX       mass
  ium.html#Modelica.Media.Interfaces.PartialMedium.Ma ]          fraction
  ssFraction)                                                    [kg/kg]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                   Nam Description
                                                         e   
  ------------------------------------------------------ --- -------------
  [SpecificEntropy](Modelica_Media_Interfaces_PartialMed s   specific
  ium.html#Modelica.Media.Interfaces.PartialMedium.Speci     entropy
  ficEntropy)                                                [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function s_TX 
      "Return temperature dependent part of the entropy, expects full entropy vector"
      input Temperature T "temperature";
      input MassFraction[nX] X "mass fraction";
      output SpecificEntropy s "specific entropy";
    algorithm 
      s := sum(SingleGasNasa.s0_T(data[i], T)*X[i] for i in 1:size(X,1));
    end s_TX;

* * * * *

![image80](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).isentropicExponent
==============================================================================================================================================================================================================================================================

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
      gamma := specificHeatCapacityCp(state)/specificHeatCapacityCv(state);
    end isentropicExponent;

* * * * *

![image81](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).velocityOfSound
===========================================================================================================================================================================================================================================================

**Return velocity of sound**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions),
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.velocityOfSound)
(Return velocity of sound).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- ------------
  [ThermodynamicState](Modelica_Media_IdealGases_Comm sta      properties
  on_MixtureGasNasa.html#Modelica.Media.IdealGases.Co te       at upstream
  mmon.MixtureGasNasa.ThermodynamicState)                      location
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

    redeclare function extends velocityOfSound "Return velocity of sound"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "properties at upstream location";
    algorithm 
      a := sqrt(max(0,gasConstant(state)*state.T*specificHeatCapacityCp(state)/specificHeatCapacityCv(state)));
    end velocityOfSound;

* * * * *

![image82](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).isentropicEnthalpyApproximation
===========================================================================================================================================================================================================================================================================

**Approximate method of calculating h\_is from upstream properties and
downstream pressure**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                              Nam Defa Description
                                                    e   ult  
  ------------------------------------------------- --- ---- ---------------
  [AbsolutePressure](Modelica_Media_Interfaces_Part p2       downstream
  ialMedium.html#Modelica.Media.Interfaces.PartialM          pressure [Pa]
  edium.AbsolutePressure)                                    

  [ThermodynamicState](Modelica_Media_IdealGases_Co sta      thermodynamic
  mmon_MixtureGasNasa.html#Modelica.Media.IdealGase te       state at
  s.Common.MixtureGasNasa.ThermodynamicState)                upstream
                                                             location
  --------------------------------------------------------------------------

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
      "Approximate method of calculating h_is from upstream properties and downstream pressure"
      extends Modelica.Icons.Function;
      input AbsolutePressure p2 "downstream pressure";
      input ThermodynamicState state "thermodynamic state at upstream location";
      output SpecificEnthalpy h_is "isentropic enthalpy";
    protected 
      SpecificEnthalpy h "specific enthalpy at upstream location";
      SpecificEnthalpy h_component[nX] "specific enthalpy at upstream location";
      IsentropicExponent gamma =  isentropicExponent(state) "Isentropic exponent";
    protected 
      MassFraction[nX] X "complete X-vector";
    algorithm 
      X := if reducedX then cat(1,state.X,{1-sum(state.X)}) else state.X;
      h_component :={SingleGasNasa.h_T(data[i], state.T, excludeEnthalpyOfFormation,
        referenceChoice, h_offset) for i in 1:nX};
      h :=h_component*X;
      h_is := h + gamma/(gamma - 1.0)*(state.T*gasConstant(state))*
        ((p2/state.p)^((gamma - 1)/gamma) - 1.0);
    end isentropicEnthalpyApproximation;

* * * * *

![image83](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).isentropicEnthalpy
==============================================================================================================================================================================================================================================================

**Return isentropic enthalpy**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy)
(Return isentropic enthalpy).

Inputs
------

  ------------------------------------------------------------------------
  Type                                       Name  Def Description
                                                   aul 
                                                   t   
  ------------------------------------------ ----- --- -------------------
  Boolean                                    exact fal flag wether exact
                                                   se  or approximate
                                                       version should be
                                                       used

  [AbsolutePressure](Modelica_Media_Interfac p\_do     downstream pressure
  es_PartialMedium.html#Modelica.Media.Inter wnstr     [Pa]
  faces.PartialMedium.AbsolutePressure)      eam       

  [ThermodynamicState](Modelica_Media_Interf refSt     reference state for
  aces_PartialMedium.html#Modelica.Media.Int ate       entropy
  erfaces.PartialMedium.ThermodynamicState)            
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
      input Boolean exact = false 
        "flag wether exact or approximate version should be used";
    algorithm 
      h_is := if exact then specificEnthalpy_psX(p_downstream,specificEntropy(refState),refState.X) else 
             isentropicEnthalpyApproximation(p_downstream,refState);
    end isentropicEnthalpy;

* * * * *

![image84](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).gasMixtureViscosity
===============================================================================================================================================================================================================================================================

**Return viscosities of gas mixtures at low pressures (Wilke method)**

Information
-----------

::

Simplification of the kinetic theory (Chapman and Enskog theory)
approach neglecting the second-order effects. This equation has been
extensively tested (Amdur and Mason, 1958; Bromley and Wilke, 1951;
Cheung, 1958; Dahler, 1959; Gandhi and Saxena, 1964; Ranz and Brodowsky,
1962; Saxena and Gambhir, 1963a; Strunk, et al., 1964; Vanderslice, et
al. 1962; Wright and Gray, 1962). In most cases, only nonpolar mixtures
were compared, and very good results obtained. For some systems
containing hidrogen as one component, less satisfactory agreement was
noted. Wilke's method predicted mixture viscosities that were larger
than experimental for the H2-N2 system, but for H2-NH3, it
underestimated the viscosities. Gururaja, et al. (1967) found that this
method also overpredicted in the H2-O2 case but was quite accurate for
the H2-CO2 system. Wilke's approximation has proved reliable even for
polar-polar gas mixtures of aliphatic alcohols (Reid and Belenyessy,
1960). The principal reservation appears to lie in those cases where
Mi\>\>Mj and etai\>\>etaj.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Name Defa Description
                                                        ult  
  ------------------------------------------------ ---- ---- --------------
  [MoleFraction](Modelica_Media_Interfaces_Partial yi[:      Mole fractions
  Medium.html#Modelica.Media.Interfaces.PartialMed ]         [mol/mol]
  ium.MoleFraction)                                          

  [MolarMass](Modelica_Media_Interfaces_PartialMed M[:]      Mole masses
  ium.html#Modelica.Media.Interfaces.PartialMedium           [kg/mol]
  .MolarMass)                                                

  [DynamicViscosity](Modelica_Media_Interfaces_Par eta[      Pure component
  tialMedium.html#Modelica.Media.Interfaces.Partia :]        viscosities
  lMedium.DynamicViscosity)                                  [Pa.s]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                  Nam Description
                                                        e   
  ----------------------------------------------------- --- --------------
  [DynamicViscosity](Modelica_Media_Interfaces_PartialM eta Viscosity of
  edium.html#Modelica.Media.Interfaces.PartialMedium.Dy m   the mixture
  namicViscosity)                                           [Pa.s]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function gasMixtureViscosity 
      "Return viscosities of gas mixtures at low pressures (Wilke method)"
      extends Modelica.Icons.Function;
      input MoleFraction[:] yi "Mole fractions";
      input MolarMass[:] M "Mole masses";
      input DynamicViscosity[:] eta "Pure component viscosities";
      output DynamicViscosity etam "Viscosity of the mixture";
    protected 
      Real fi[size(yi,1),size(yi,1)];
    algorithm 
      for i in 1:size(eta,1) loop
        assert(fluidConstants[i].hasDipoleMoment,"Dipole moment for " + fluidConstants[i].chemicalFormula +
           " not known. Can not compute viscosity.");
        assert(fluidConstants[i].hasCriticalData, "Critical data for "+ fluidConstants[i].chemicalFormula +
           " not known. Can not compute viscosity.");
        for j in 1:size(eta,1) loop
          if i==1 then
            fi[i,j] := (1 + (eta[i]/eta[j])^(1/2)*(M[j]/M[i])^(1/4))^2/(8*(1 + M[i]/M[j]))^(1/2);
          elseif j<i then
              fi[i,j] := eta[i]/eta[j]*M[j]/M[i]*fi[j,i];
            else
              fi[i,j] := (1 + (eta[i]/eta[j])^(1/2)*(M[j]/M[i])^(1/4))^2/(8*(1 + M[i]/M[j]))^(1/2);
          end if;
        end for;
      end for;
      etam := sum(yi[i]*eta[i]/sum(yi[j]*fi[i,j] for j in 1:size(eta,1)) for i in 1:size(eta,1));

    equation 

    end gasMixtureViscosity;

* * * * *

![image85](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).dynamicViscosity
============================================================================================================================================================================================================================================================

**Return mixture dynamic viscosity**

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

    redeclare replaceable function extends dynamicViscosity 
      "Return mixture dynamic viscosity"
    protected 
      DynamicViscosity[nX] etaX "component dynamic viscosities";
    algorithm 
      for i in 1:nX loop
    etaX[i] := SingleGasNasa.dynamicViscosityLowPressure(state.T,
                       fluidConstants[i].criticalTemperature,
                       fluidConstants[i].molarMass,
                       fluidConstants[i].criticalMolarVolume,
                       fluidConstants[i].acentricFactor,
                       fluidConstants[i].dipoleMoment);
      end for;
      eta := gasMixtureViscosity(massToMoleFractions(state.X,
                             fluidConstants[:].molarMass),
                 fluidConstants[:].molarMass,
                 etaX);
    end dynamicViscosity;

* * * * *

![image86](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).mixtureViscosityChung
=================================================================================================================================================================================================================================================================

**Return the viscosity of gas mixtures without access to component
viscosities (Chung, et. al. rules)**

Information
-----------

::

Equation to estimate the viscosity of gas mixtures at low pressures.
  ~ It is a simplification of an extension of the rigorous kinetic
    theory

of Chapman and Enskog to determine the viscosity of multicomponent
mixtures, at low pressures and with a factor to correct for molecule
shape and polarity.

The input argument Kappa is a special correction for highly polar
substances such as alcohols and acids. Values of kappa for a few such
materials:

  --------------- ---------- ---------------- -----------
  Compound        Kappa      Compound         Kappa
  Methanol        0.215      n-Pentanol       0.122
  Ethanol         0.175      n-Hexanol        0.114
  n-Propanol      0.143      n-Heptanol       0.109
  i-Propanol      0.143      Acetic Acid      0.0916
  n-Butanol       0.132      Water            0.076
  i-Butanol       0.132                       
  --------------- ---------- ---------------- -----------

Chung, et al. (1984) suggest that for other alcohols not shown in the
table: kappa = 0.0682 + 4.704\*[(number of -OH groups)]/[molecular
weight] S.I. units relation for the debyes: 1 debye = 3.162e-25
(J.m\^3)\^(1/2)

### References

[1] THE PROPERTIES OF GASES AND LIQUIDS, Fifth Edition,
  ~ Bruce E. Poling, John M. Prausnitz, John P. O'Connell. [2] Chung,
    T.-H., M. Ajlan, L. L. Lee, and K. E. Starling: Ind. Eng.

Chem. Res., 27: 671 (1988).
  ~ [3] Chung, T.-H., L. L. Lee, and K. E. Starling; Ing. Eng. Chem.

Fundam., 23: 3 ()1984).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name     Defau Description
                                                       lt    
  ------------------------------------------- -------- ----- --------------
  [Temperature](Modelica_Media_Interfaces_Par T              Temperature
  tialMedium.html#Modelica.Media.Interfaces.P                [K]
  artialMedium.Temperature)                                  

  [Temperature](Modelica_Media_Interfaces_Par Tc[:]          Critical
  tialMedium.html#Modelica.Media.Interfaces.P                temperatures
  artialMedium.Temperature)                                  [K]

  [MolarVolume](Modelica_Media_Interfaces_Par Vcrit[:]       Critical
  tialMedium.html#Modelica.Media.Interfaces.P                volumes
  artialMedium.MolarVolume)                                  (m3/mol)
                                                             [m3/mol]

  Real                                        w[:]           Acentric
                                                             factors

  Real                                        mu[:]          Dipole moments
                                                             (debyes)

  [MolarMass](Modelica_Media_Interfaces_Parti Molecula       Molecular
  alMedium.html#Modelica.Media.Interfaces.Par rWeights       weights
  tialMedium.MolarMass)                       [:]            (kg/mol)
                                                             [kg/mol]

  [MoleFraction](Modelica_Media_Interfaces_Pa y[:]           Molar
  rtialMedium.html#Modelica.Media.Interfaces.                Fractions
  PartialMedium.MoleFraction)                                [mol/mol]

  Real                                        kappa[:] zeros Association
                                                       (nX)  Factors
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [DynamicViscosity](Modelica_Media_Interfaces_Partia etaMix Mixture
  lMedium.html#Modelica.Media.Interfaces.PartialMediu ture   viscosity
  m.DynamicViscosity)                                        (Pa.s) [Pa.s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function mixtureViscosityChung 
      "Return the viscosity of gas mixtures without access to component viscosities (Chung, et. al. rules)"
    extends Modelica.Icons.Function;
        import SI = Modelica.SIunits;
      input Temperature T "Temperature";
      input Temperature[:] Tc "Critical temperatures";
      input MolarVolume[:] Vcrit "Critical volumes (m3/mol)";
      input Real[:] w "Acentric factors";
      input Real[:] mu "Dipole moments (debyes)";
      input MolarMass[:] MolecularWeights "Molecular weights (kg/mol)";
      input MoleFraction[:] y "Molar Fractions";
      input Real[:] kappa =  zeros(nX) "Association Factors";
      output DynamicViscosity etaMixture "Mixture viscosity (Pa.s)";
    protected 
    constant Real[size(y,1)] Vc =  Vcrit*1000000 "Critical volumes (cm3/mol)";
    constant Real[size(y,1)] M =  MolecularWeights*1000 "Molecular weights (g/mol)";
    Integer n = size(y,1) "Number of mixed elements";
    Real sigmam3 "Mixture sigma^3 in Angstrom";
    Real sigma[size(y,1),size(y,1)];
    Real edivkm;
    Real edivk[size(y,1),size(y,1)];
    Real Mm;
    Real Mij[size(y,1),size(y,1)];
    Real wm "accentric factor";
    Real wij[size(y,1),size(y,1)];
    Real kappam 
        "Correlation for highly polar substances such as alcohols and acids";
    Real kappaij[size(y,1),size(y,1)];
    Real mum;
    Real Vcm;
    Real Tcm;
    Real murm "Dimensionless dipole moment of the mixture";
    Real Fcm "Factor to correct for shape and polarity";
    Real omegav;
    Real Tmstar;
    Real etam "Mixture viscosity in microP";
    algorithm 
    //combining rules
    for i in 1:n loop
      for j in 1:n loop
        Mij[i,j] := 2*M[i]*M[j]/(M[i]+M[j]);
        if i==j then
          sigma[i,j] := 0.809*Vc[i]^(1/3);
          edivk[i,j] := Tc[i]/1.2593;
          wij[i,j] := w[i];
          kappaij[i,j] := kappa[i];
        else
          sigma[i,j] := (0.809*Vc[i]^(1/3)*0.809*Vc[j]^(1/3))^(1/2);
          edivk[i,j] := (Tc[i]/1.2593*Tc[j]/1.2593)^(1/2);
          wij[i,j] := (w[i] + w[j])/2;
          kappaij[i,j] := (kappa[i]*kappa[j])^(1/2);
        end if;
      end for;
    end for;
    //mixing rules
    sigmam3 := (sum(sum(y[i]*y[j]*sigma[i,j]^3 for j in 1:n) for i in 1:n));
    //(epsilon/k)m
    edivkm := (sum(sum(y[i]*y[j]*edivk[i,j]*sigma[i,j]^3 for j in 1:n) for i in 1:n))/sigmam3;
    Mm := ((sum(sum(y[i]*y[j]*edivk[i,j]*sigma[i,j]^2*Mij[i,j]^(1/2) for j in 1:n) for i in 1:n))/(edivkm*sigmam3^(2/3)))^2;
    wm := (sum(sum(y[i]*y[j]*wij[i,j]*sigma[i,j]^3 for j in 1:n) for i in 1:n))/sigmam3;
    mum := (sigmam3*(sum(sum(y[i]*y[j]*mu[i]^2*mu[j]^2/sigma[i,j]^3 for j in 1:n) for i in 1:n)))^(1/4);
    Vcm := sigmam3/(0.809)^3;
    Tcm := 1.2593*edivkm;
    murm := 131.3*mum/(Vcm*Tcm)^(1/2);
    kappam := (sigmam3*(sum(sum(y[i]*y[j]*kappaij[i,j] for j in 1:n) for i in 1:n)));
    Fcm := 1 - 0.275*wm + 0.059035*murm^4 + kappam;
    Tmstar := T/edivkm;
    omegav := 1.16145*(Tmstar)^(-0.14874) + 0.52487*Math.exp(-0.77320*Tmstar) + 2.16178*Math.exp(-2.43787*Tmstar);
    etam := 26.69*Fcm*(Mm*T)^(1/2)/(sigmam3^(2/3)*omegav);
    etaMixture := etam*1e7;
    equation 

    end mixtureViscosityChung;

* * * * *

![image87](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).lowPressureThermalConductivity
==========================================================================================================================================================================================================================================================================

**Return thermal conductivites of low-pressure gas mixtures (Mason and
Saxena Modification)**

Information
-----------

::

This function applies the Masson and Saxena modification of the
Wassiljewa Equation for the thermal conductivity for gas mixtures of n
elements at low pressure.

For nonpolar gas mixtures errors will generally be less than 3 to 4%.
For mixtures of nonpolar-polar and polar-polar gases, errors greater
than 5 to 8% may be expected. For mixtures in which the sizes and
polarities of the constituent molecules are not greatly different, the
thermal conductivity can be estimated satisfactorily by a mole fraction
average of the pure component conductivities.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                       Name Def Description
                                                  aul 
                                                  t   
  ------------------------------------------ ---- --- ---------------------
  [MoleFraction](Modelica_Media_Interfaces_P y[:]     Mole fraction of the
  artialMedium.html#Modelica.Media.Interface          components in the
  s.PartialMedium.MoleFraction)                       gass mixture
                                                      [mol/mol]

  [Temperature](Modelica_Media_Interfaces_Pa T        Temperature [K]
  rtialMedium.html#Modelica.Media.Interfaces          
  .PartialMedium.Temperature)                         

  [Temperature](Modelica_Media_Interfaces_Pa Tc[:     Critical temperatures
  rtialMedium.html#Modelica.Media.Interfaces ]        [K]
  .PartialMedium.Temperature)                         

  [AbsolutePressure](Modelica_Media_Interfac Pc[:     Critical pressures
  es_PartialMedium.html#Modelica.Media.Inter ]        [Pa]
  faces.PartialMedium.AbsolutePressure)               

  [MolarMass](Modelica_Media_Interfaces_Part M[:]     Molecular weights
  ialMedium.html#Modelica.Media.Interfaces.P          [kg/mol]
  artialMedium.MolarMass)                             

  [ThermalConductivity](Modelica_Media_Inter lamb     Thermal
  faces_PartialMedium.html#Modelica.Media.In da[:     conductivities of the
  terfaces.PartialMedium.ThermalConductivity ]        pure gases [W/(m.K)]
  )                                                   
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  [ThermalConductivity](Modelica_Media_Interfaces_ lamb Thermal
  PartialMedium.html#Modelica.Media.Interfaces.Par dam  conductivity of the
  tialMedium.ThermalConductivity)                       gas mixture
                                                        [W/(m.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function lowPressureThermalConductivity 
      "Return thermal conductivites of low-pressure gas mixtures (Mason and Saxena Modification)"
      extends Modelica.Icons.Function;
      input MoleFraction[:] y "Mole fraction of the components in the gass mixture";
      input Temperature T "Temperature";
      input Temperature[:] Tc "Critical temperatures";
      input AbsolutePressure[:] Pc "Critical pressures";
      input MolarMass[:] M "Molecular weights";
      input ThermalConductivity[:] lambda 
        "Thermal conductivities of the pure gases";
      output ThermalConductivity lambdam "Thermal conductivity of the gas mixture";
    protected 
      MolarMass[size(y,1)] gamma;
      Real[size(y,1)] Tr "Reduced temperature";
      Real[size(y,1),size(y,1)] A "Mason and Saxena Modification";
      constant Real epsilon =  1.0 "Numerical constant near unity";
    algorithm 
      for i in 1:size(y,1) loop
        gamma[i] := 210*(Tc[i]*M[i]^3/Pc[i]^4)^(1/6);
        Tr[i] := T/Tc[i];
      end for;
      for i in 1:size(y,1) loop
        for j in 1:size(y,1) loop
          A[i,j] := epsilon*(1 + (gamma[j]*(Math.exp(0.0464*Tr[i]) - Math.exp(-0.2412*Tr[i]))/
          (gamma[i]*(Math.exp(0.0464*Tr[j]) - Math.exp(-0.2412*Tr[j]))))^(1/2)*(M[i]/M[j])^(1/4))^2/
          (8*(1 + M[i]/M[j]))^(1/2);
        end for;
      end for;
      lambdam := sum(y[i]*lambda[i]/(sum(y[j]*A[i,j] for j in 1:size(y,1))) for i in 1:size(y,1));
    equation 

    end lowPressureThermalConductivity;

* * * * *

![image88](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).thermalConductivity
===============================================================================================================================================================================================================================================================

**Return thermal conductivity for low pressure gas mixtures**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.thermalConductivity)
(Return thermal conductivity).

Inputs
------

  --------------------------------------------------------------------------
  Type                                         Nam Defa Description
                                               e   ult  
  -------------------------------------------- --- ---- --------------------
  Integer                                      met 1    method to compute
                                               hod      single component
                                                        thermal conductivity

  [ThermodynamicState](Modelica_Media_Interfac sta      thermodynamic state
  es_PartialMedium.html#Modelica.Media.Interfa te       record
  ces.PartialMedium.ThermodynamicState)                 
  --------------------------------------------------------------------------

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

    redeclare replaceable function extends thermalConductivity 
      "Return thermal conductivity for low pressure gas mixtures"
      input Integer method=1 
        "method to compute single component thermal conductivity";
    protected 
      ThermalConductivity[nX] lambdaX "component thermal conductivities";
      DynamicViscosity[nX] eta "component thermal dynamic viscosities";
      SpecificHeatCapacity[nX] cp "component heat capacity";
    algorithm 
      for i in 1:nX loop
    assert(fluidConstants[i].hasCriticalData, "Critical data for "+ fluidConstants[i].chemicalFormula +
       " not known. Can not compute thermal conductivity.");
    eta[i] := SingleGasNasa.dynamicViscosityLowPressure(state.T,
                       fluidConstants[i].criticalTemperature,
                       fluidConstants[i].molarMass,
                       fluidConstants[i].criticalMolarVolume,
                       fluidConstants[i].acentricFactor,
                       fluidConstants[i].dipoleMoment);
    cp[i] := SingleGasNasa.cp_T(data[i],state.T);
    lambdaX[i] :=SingleGasNasa.thermalConductivityEstimate(Cp=cp[i], eta=
          eta[i], method=method);
      end for;
      lambda := lowPressureThermalConductivity(massToMoleFractions(state.X,
                                   fluidConstants[:].molarMass),
                           state.T,
                           fluidConstants[:].criticalTemperature,
                           fluidConstants[:].criticalPressure,
                           fluidConstants[:].molarMass,
                           lambdaX);
    end thermalConductivity;

* * * * *

![image89](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).isobaricExpansionCoefficient
========================================================================================================================================================================================================================================================================

**Return isobaric expansion coefficient beta**

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
      "Return isobaric expansion coefficient beta"
    algorithm 
      beta := 1/state.T;
    end isobaricExpansionCoefficient;

* * * * *

![image90](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).isothermalCompressibility
=====================================================================================================================================================================================================================================================================

**Return isothermal compressibility factor**

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
      "Return isothermal compressibility factor"
    algorithm 
      kappa := 1.0/state.p;
    end isothermalCompressibility;

* * * * *

![image91](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).density\_derp\_T
============================================================================================================================================================================================================================================================

**Return density derivative by pressure at constant temperature**

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
      "Return density derivative by pressure at constant temperature"
    algorithm 
      ddpT := 1/(state.T*gasConstant(state));
    end density_derp_T;

* * * * *

![image92](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).density\_derT\_p
============================================================================================================================================================================================================================================================

**Return density derivative by temperature at constant pressure**

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
      "Return density derivative by temperature at constant pressure"
    algorithm 
      ddTp := -state.p/(state.T*state.T*gasConstant(state));
    end density_derT_p;

* * * * *

![image93](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).density\_derX
=========================================================================================================================================================================================================================================================

**Return density derivative by mass fraction**

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
  [ThermodynamicState](Modelica_Media_IdealGases_Common sta      thermodynam
  _MixtureGasNasa.html#Modelica.Media.IdealGases.Common te       ic
  .MixtureGasNasa.ThermodynamicState)                            state
                                                                 record
  --------------------------------------------------------------------------

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

    redeclare function density_derX 
      "Return density derivative by mass fraction"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output Density[nX] dddX "Derivative of density w.r.t. mass fraction";
    algorithm 
      dddX := {-state.p/(state.T*gasConstant(state))*molarMass(state)/data[
        i].MM for i in 1:nX};
    end density_derX;

* * * * *

![image94](Modelica.Media.IdealGases.Common.MixtureGasNasa.isentropicExponentI.png) [Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).molarMass
=====================================================================================================================================================================================================================================================

**Return molar mass of mixture**

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

    redeclare function extends molarMass "Return molar mass of mixture"
    algorithm 
      MM := 1/sum(state.X[j]/data[j].MM for j in 1:size(state.X, 1));
    end molarMass;

* * * * *

[Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).T\_hX
=============================================================================================================================================================

**Return temperature from specific enthalpy and mass fraction**

Inputs
------

  -------------------------------------------------------------------------
  Type                                  Name Default Description
  ------------------------------------- ---- ------- ----------------------
  [SpecificEnthalpy](Modelica_Media_Int h            specific enthalpy
  erfaces_PartialMedium.html#Modelica.M              [J/kg]
  edia.Interfaces.PartialMedium.Specifi              
  cEnthalpy)                                         

  [MassFraction](Modelica_Media_Interfa X[:]         mass fractions of
  ces_PartialMedium.html#Modelica.Media              composition [kg/kg]
  .Interfaces.PartialMedium.MassFractio              
  n)                                                 

  Boolean                               excl exclude If true, enthalpy of
                                        Enth Enthalp formation Hf is not
                                        Form yOfForm included in specific
                                             ation   enthalpy h

  [ReferenceEnthalpy](Modelica_Media_In refC referen Choice of reference
  terfaces_PartialMedium_Choices.html#M hoic ceChoic enthalpy
  odelica.Media.Interfaces.PartialMediu e    e       
  m.Choices.ReferenceEnthalpy)                       

  [SpecificEnthalpy](Modelica_SIunits.h h\_o h\_offs User defined offset
  tml#Modelica.SIunits.SpecificEnthalpy ff   et      for reference
  )                                                  enthalpy, if
                                                     referenceChoice =
                                                     UserDefined [J/kg]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                      Name Descripti
                                                                 on
  --------------------------------------------------------- ---- ---------
  [Temperature](Modelica_Media_Interfaces_PartialMedium.htm T    temperatu
  l#Modelica.Media.Interfaces.PartialMedium.Temperature)         re
                                                                 [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function T_hX 
      "Return temperature from specific enthalpy and mass fraction"
      input SpecificEnthalpy h "specific enthalpy";
      input MassFraction[:] X "mass fractions of composition";
       input Boolean exclEnthForm=excludeEnthalpyOfFormation 
        "If true, enthalpy of formation Hf is not included in specific enthalpy h";
       input Choices.ReferenceEnthalpy refChoice=referenceChoice 
        "Choice of reference enthalpy";
       input SI.SpecificEnthalpy h_off=h_offset 
        "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
      output Temperature T "temperature";
    protected 
      MassFraction[nX] Xfull = if size(X,1) == nX then X else cat(1,X,{1-sum(X)});
    package Internal 
        "Solve h(data,T) for T with given h (use only indirectly via temperature_phX)"
      extends Modelica.Media.Common.OneNonLinearEquation;
      redeclare record extends f_nonlinear_Data 
          "Data to be passed to non-linear function"
        extends Modelica.Media.IdealGases.Common.DataRecord;
      end f_nonlinear_Data;

      redeclare function extends f_nonlinear
      algorithm 
          y := h_TX(x,X);
      end f_nonlinear;

      // Dummy definition has to be added for current Dymola
      redeclare function extends solve
      end solve;
    end Internal;

    algorithm 
      T := Internal.solve(h, 200, 6000, 1.0e5, Xfull, data[1]);
    end T_hX;

* * * * *

[Modelica.Media.IdealGases.Common.MixtureGasNasa](Modelica_Media_IdealGases_Common_MixtureGasNasa.html#Modelica.Media.IdealGases.Common.MixtureGasNasa).T\_psX
==============================================================================================================================================================

**Return temperature from pressure, specific entropy and mass fraction**

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Defa Description
                                                   e   ult  
  ------------------------------------------------ --- ---- ---------------
  [AbsolutePressure](Modelica_Media_Interfaces_Par p        pressure [Pa]
  tialMedium.html#Modelica.Media.Interfaces.Partia          
  lMedium.AbsolutePressure)                                 

  [SpecificEntropy](Modelica_Media_Interfaces_Part s        specific
  ialMedium.html#Modelica.Media.Interfaces.Partial          entropy
  Medium.SpecificEntropy)                                   [J/(kg.K)]

  [MassFraction](Modelica_Media_Interfaces_Partial X[:      mass fractions
  Medium.html#Modelica.Media.Interfaces.PartialMed ]        of composition
  ium.MassFraction)                                         [kg/kg]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                      Name Descripti
                                                                 on
  --------------------------------------------------------- ---- ---------
  [Temperature](Modelica_Media_Interfaces_PartialMedium.htm T    temperatu
  l#Modelica.Media.Interfaces.PartialMedium.Temperature)         re
                                                                 [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function T_psX 
      "Return temperature from pressure, specific entropy and mass fraction"
      input AbsolutePressure p "pressure";
      input SpecificEntropy s "specific entropy";
      input MassFraction[:] X "mass fractions of composition";
      output Temperature T "temperature";
    protected 
      MassFraction[nX] Xfull = if size(X,1) == nX then X else cat(1,X,{1-sum(X)});
    package Internal 
        "Solve h(data,T) for T with given h (use only indirectly via temperature_phX)"
      extends Modelica.Media.Common.OneNonLinearEquation;
      redeclare record extends f_nonlinear_Data 
          "Data to be passed to non-linear function"
        extends Modelica.Media.IdealGases.Common.DataRecord;
      end f_nonlinear_Data;

      redeclare function extends f_nonlinear 
          "note that this function always sees the complete mass fraction vector"
        protected 
      MassFraction[nX] Xfull = if size(X,1) == nX then X else cat(1,X,{1-sum(X)});
      Real[nX] Y(unit="mol/mol")=massToMoleFractions(if size(X,1) == nX then X else cat(1,X,{1-sum(X)}), data.MM) 
            "Molar fractions";
      algorithm 
        y := s_TX(x,Xfull) - sum(Xfull[i]*Modelica.Constants.R/MMX[i]*
        (if Xfull[i]<Modelica.Constants.eps then Y[i] else 
        Modelica.Math.log(Y[i]*p/reference_p)) for i in 1:nX);
          // s_TX(x,X)- data[:].R*X*(Modelica.Math.log(p/reference_p)
          //       + MixEntropy(massToMoleFractions(X,data[:].MM)));
      end f_nonlinear;

      // Dummy definition has to be added for current Dymola
      redeclare function extends solve
      end solve;
    end Internal;

    algorithm 
      T := Internal.solve(s, 200, 6000, p, Xfull, data[1]);
    end T_psX;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:33 2010.
