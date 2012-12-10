% Modelica.Media.Air.SimpleAir:
  [Modelica.Media.Air](Modelica_Media_Air.html#Modelica.Media.Air).SimpleAir
% 
% 

**Air: Simple dry air model (0..100 degC)**

Information
===========

::

Simple Ideal gas air model for low temperatures
-----------------------------------------------

This model demonstrats how to use the PartialSimpleIdealGas base class
to build a simple ideal gas model with a limited temperature validity
range.

::

Extends from
[Interfaces.PartialSimpleIdealGasMedium](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium)
(Medium model of Ideal gas with constant cp and cv. All other
quantities, e.g., transport properties, are constant.).

Package Content
===============

Name

Description

fluidConstants=FluidConstants(iupacName={"simple air"},
casRegistryNumber={"not a real substance"}, chemicalFormula={"N2, O2"},
structureFormula={"N2, O2"},
molarMass=Modelica.Media.IdealGases.Common.SingleGasesData.N2.MM)

constant data for the fluid

Inherited

cp\_const

Constant specific heat capacity at constant pressure

cv\_const=cp\_const - R\_gas

Constant specific heat capacity at constant volume

R\_gas

medium specific gas constant

MM\_const

Molar mass

eta\_const

Constant dynamic viscosity

lambda\_const

Constant thermal conductivity

T\_min

Minimum temperature valid for medium model

T\_max

Maximum temperature valid for medium model

T0=reference\_T

Zero enthalpy temperature

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicState](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicStateS.png)
[ThermodynamicState](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicState)

Thermodynamic state of ideal gas

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.FluidConstants](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicStateS.png)
[FluidConstants](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.FluidConstants)

fluid constants

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.BaseProperties](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.BasePropertiesS.png)
[BaseProperties](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.BaseProperties)

Base properties of ideal gas

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_pTX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[setState\_pTX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTX)

Return thermodynamic state from p, T, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_phX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[setState\_phX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_phX)

Return thermodynamic state from p, h, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_psX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[setState\_psX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_psX)

Return thermodynamic state from p, s, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_dTX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[setState\_dTX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_dTX)

Return thermodynamic state from d, T, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setSmoothState](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[setSmoothState](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.pressure](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[pressure](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.pressure)

Return pressure of ideal gas

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[temperature](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature)

Return temperature of ideal gas

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[density](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density)

Return density of ideal gas

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificEnthalpy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy)

Return specific enthalpy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificInternalEnergy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificInternalEnergy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificInternalEnergy)

Return specific internal energy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEntropy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificEntropy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEntropy)

Return specific entropy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificGibbsEnergy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificGibbsEnergy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificGibbsEnergy)

Return specific Gibbs energy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHelmholtzEnergy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificHelmholtzEnergy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHelmholtzEnergy)

Return specific Helmholtz energy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.dynamicViscosity](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[dynamicViscosity](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.dynamicViscosity)

Return dynamic viscosity

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.thermalConductivity](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[thermalConductivity](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.thermalConductivity)

Return thermal conductivity

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCp](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificHeatCapacityCp](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCp)

Return specific heat capacity at constant pressure

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCv](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificHeatCapacityCv](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCv)

Return specific heat capacity at constant volume

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicExponent](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[isentropicExponent](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicExponent)

Return isentropic exponent

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.velocityOfSound](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[velocityOfSound](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.velocityOfSound)

Return velocity of sound

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy\_pTX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[specificEnthalpy\_pTX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy_pTX)

Return specific enthalpy from p, T, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature\_phX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[temperature\_phX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature_phX)

Return temperature from p, h, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_phX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[density\_phX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_phX)

Return density from p, h, and X or Xi

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicEnthalpy](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[isentropicEnthalpy](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicEnthalpy)

Return isentropic enthalpy

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isobaricExpansionCoefficient](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[isobaricExpansionCoefficient](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isobaricExpansionCoefficient)

Returns overall the isobaric expansion coefficient beta

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isothermalCompressibility](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[isothermalCompressibility](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isothermalCompressibility)

Returns overall the isothermal compressibility factor

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derp\_T](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[density\_derp\_T](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_derp_T)

Returns the partial derivative of density with respect to pressure at
constant temperature

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derT\_p](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[density\_derT\_p](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_derT_p)

Returns the partial derivative of density with respect to temperature at
constant pressure

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derX](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[density\_derX](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_derX)

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

![Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.molarMass](Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png)
[molarMass](Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.molarMass)

Returns the molar mass of the medium

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

![Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[specificEntropy\_pTX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy_pTX)

Return specific enthalpy from p, T, and X or Xi

![Modelica.Media.Interfaces.PartialMedium.density\_pTX](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[density\_pTX](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_pTX)

Return density from p, T, and X or Xi

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
===================

    constant FluidConstants[nS] fluidConstants=
      FluidConstants(iupacName={"simple air"},
                     casRegistryNumber={"not a real substance"},
                     chemicalFormula={"N2, O2"},
                     structureFormula={"N2, O2"},
                     molarMass=Modelica.Media.IdealGases.Common.SingleGasesData.N2.MM) 
    "constant data for the fluid";

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:31 2010.
