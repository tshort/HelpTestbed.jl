============================
Modelica.Media.Air.SimpleAir
============================

`Modelica.Media.Air <Modelica_Media_Air.html#Modelica.Media.Air>`_.SimpleAir
----------------------------------------------------------------------------

**Air: Simple dry air model (0..100 degC)**

Information
~~~~~~~~~~~

::

Simple Ideal gas air model for low temperatures
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This model demonstrats how to use the PartialSimpleIdealGas base class
to build a simple ideal gas model with a limited temperature validity
range.

::

Extends from
`Interfaces.PartialSimpleIdealGasMedium <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium>`_
(Medium model of Ideal gas with constant cp and cv. All other
quantities, e.g., transport properties, are constant.).

Package Content
~~~~~~~~~~~~~~~

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

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicState|
`ThermodynamicState <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicState>`_

Thermodynamic state of ideal gas

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.FluidConstants|
`FluidConstants <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.FluidConstants>`_

fluid constants

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.BaseProperties|
`BaseProperties <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.BaseProperties>`_

Base properties of ideal gas

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_pTX|
`setState\_pTX <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTX>`_

Return thermodynamic state from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_phX|
`setState\_phX <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_phX>`_

Return thermodynamic state from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_psX|
`setState\_psX <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_psX>`_

Return thermodynamic state from p, s, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_dTX|
`setState\_dTX <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_dTX>`_

Return thermodynamic state from d, T, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setSmoothState|
`setSmoothState <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.pressure|
`pressure <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.pressure>`_

Return pressure of ideal gas

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature|
`temperature <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature>`_

Return temperature of ideal gas

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density|
`density <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density>`_

Return density of ideal gas

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy|
`specificEnthalpy <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy>`_

Return specific enthalpy

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificInternalEnergy>`_

Return specific internal energy

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEntropy|
`specificEntropy <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEntropy>`_

Return specific entropy

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificGibbsEnergy>`_

Return specific Gibbs energy

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHelmholtzEnergy>`_

Return specific Helmholtz energy

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.dynamicViscosity|
`dynamicViscosity <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.dynamicViscosity>`_

Return dynamic viscosity

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.thermalConductivity|
`thermalConductivity <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.thermalConductivity>`_

Return thermal conductivity

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCp>`_

Return specific heat capacity at constant pressure

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCv>`_

Return specific heat capacity at constant volume

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicExponent|
`isentropicExponent <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicExponent>`_

Return isentropic exponent

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.velocityOfSound|
`velocityOfSound <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.velocityOfSound>`_

Return velocity of sound

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy\_pTX|
`specificEnthalpy\_pTX <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy_pTX>`_

Return specific enthalpy from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature\_phX|
`temperature\_phX <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature_phX>`_

Return temperature from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_phX|
`density\_phX <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_phX>`_

Return density from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicEnthalpy|
`isentropicEnthalpy <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicEnthalpy>`_

Return isentropic enthalpy

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isobaricExpansionCoefficient|
`isobaricExpansionCoefficient <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isobaricExpansionCoefficient>`_

Returns overall the isobaric expansion coefficient beta

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isothermalCompressibility|
`isothermalCompressibility <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isothermalCompressibility>`_

Returns overall the isothermal compressibility factor

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derp\_T|
`density\_derp\_T <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_derp_T>`_

Returns the partial derivative of density with respect to pressure at
constant temperature

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derT\_p|
`density\_derT\_p <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_derT_p>`_

Returns the partial derivative of density with respect to temperature at
constant pressure

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derX|
`density\_derX <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density_derX>`_

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

|Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.molarMass|
`molarMass <Modelica_Media_Interfaces_PartialSimpleIdealGasMedium.html#Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.molarMass>`_

Returns the molar mass of the medium

|Modelica.Media.Interfaces.PartialPureSubstance.setState\_pT|
`setState\_pT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_pT>`_

Return thermodynamic state from p and T

|Modelica.Media.Interfaces.PartialPureSubstance.setState\_ph|
`setState\_ph <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_ph>`_

Return thermodynamic state from p and h

|Modelica.Media.Interfaces.PartialPureSubstance.setState\_ps|
`setState\_ps <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_ps>`_

Return thermodynamic state from p and s

|Modelica.Media.Interfaces.PartialPureSubstance.setState\_dT|
`setState\_dT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.setState_dT>`_

Return thermodynamic state from d and T

|Modelica.Media.Interfaces.PartialPureSubstance.density\_ph|
`density\_ph <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.density_ph>`_

Return density from p and h

|Modelica.Media.Interfaces.PartialPureSubstance.temperature\_ph|
`temperature\_ph <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.temperature_ph>`_

Return temperature from p and h

|Modelica.Media.Interfaces.PartialPureSubstance.pressure\_dT|
`pressure\_dT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.pressure_dT>`_

Return pressure from d and T

|Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_dT|
`specificEnthalpy\_dT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy_dT>`_

Return specific enthalpy from d and T

|Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_ps|
`specificEnthalpy\_ps <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy_ps>`_

Return specific enthalpy from p and s

|Modelica.Media.Interfaces.PartialPureSubstance.temperature\_ps|
`temperature\_ps <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.temperature_ps>`_

Return temperature from p and s

|Modelica.Media.Interfaces.PartialPureSubstance.density\_ps|
`density\_ps <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.density_ps>`_

Return density from p and s

|Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_pT|
`specificEnthalpy\_pT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy_pT>`_

Return specific enthalpy from p and T

|Modelica.Media.Interfaces.PartialPureSubstance.density\_pT|
`density\_pT <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.density_pT>`_

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

|Modelica.Media.Interfaces.PartialMedium.density\_derp\_h|
`density\_derp\_h <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_h>`_

Return density derivative w.r.t. pressure at const specific enthalpy

|Modelica.Media.Interfaces.PartialMedium.density\_derh\_p|
`density\_derh\_p <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derh_p>`_

Return density derivative w.r.t. specific enthalpy at constant pressure

|Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX|
`specificEntropy\_pTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy_pTX>`_

Return specific enthalpy from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialMedium.density\_pTX|
`density\_pTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_pTX>`_

Return density from p, T, and X or Xi

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

      constant FluidConstants[nS] fluidConstants=
        FluidConstants(iupacName={"simple air"},
                       casRegistryNumber={"not a real substance"},
                       chemicalFormula={"N2, O2"},
                       structureFormula={"N2, O2"},
                       molarMass=Modelica.Media.IdealGases.Common.SingleGasesData.N2.MM) 
      "constant data for the fluid";

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:31
2010.

.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicState| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicStateS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.FluidConstants| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.ThermodynamicStateS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.BaseProperties| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.BasePropertiesS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_pTX| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_phX| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_psX| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState\_dTX| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setSmoothState| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.pressure| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificInternalEnergy| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEntropy| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificGibbsEnergy| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHelmholtzEnergy| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.dynamicViscosity| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.thermalConductivity| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCp| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificHeatCapacityCv| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicExponent| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.velocityOfSound| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.specificEnthalpy\_pTX| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.temperature\_phX| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_phX| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isentropicEnthalpy| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isobaricExpansionCoefficient| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.isothermalCompressibility| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derp\_T| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derT\_p| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.density\_derX| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.molarMass| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.setState\_pT| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.setState\_ph| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.setState\_ps| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.setState\_dT| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.density\_ph| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.temperature\_ph| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.pressure\_dT| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_dT| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_ps| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.temperature\_ps| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.density\_ps| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.specificEnthalpy\_pT| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.density\_pT| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialSimpleIdealGasMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.beta| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.kappa| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derp\_h| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derh\_p| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.Choices| image:: Modelica.Media.Interfaces.PartialMedium.ChoicesS.png
