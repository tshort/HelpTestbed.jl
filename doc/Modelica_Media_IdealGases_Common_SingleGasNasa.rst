==============================================
Modelica.Media.IdealGases.Common.SingleGasNasa
==============================================

`Modelica.Media.IdealGases.Common <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common>`_.SingleGasNasa
--------------------------------------------------------------------------------------------------------------------------

**Medium model of an ideal gas based on NASA source**

Information
~~~~~~~~~~~

::

This model calculates medium properties for an ideal gas of a single
substance, or for an ideal gas consisting of several substances where
the mass fractions are fixed. Independent variables are temperature
**T** and pressure **p**. Only density is a function of T and p. All
other quantities are solely a function of T. The properties are valid in
the range:

::

       200 K ≤ T ≤ 6000 K

The following quantities are always computed:

+----------------+------------+-------------------------------------+
| **Variable**   | **Unit**   | **Description**                     |
+----------------+------------+-------------------------------------+
| h              | J/kg       | specific enthalpy h = h(T)          |
+----------------+------------+-------------------------------------+
| u              | J/kg       | specific internal energy u = u(T)   |
+----------------+------------+-------------------------------------+
| d              | kg/m^3     | density d = d(p,T)                  |
+----------------+------------+-------------------------------------+

For the other variables, see the functions in
Modelica.Media.IdealGases.Common.SingleGasNasa. Note, dynamic viscosity
and thermal conductivity are only provided for gases that use a data
record from Modelica.Media.IdealGases.FluidData. Currently these are the
following gases:

::

      Ar
      C2H2_vinylidene
      C2H4
      C2H5OH
      C2H6
      C3H6_propylene
      C3H7OH
      C3H8
      C4H8_1_butene
      C4H9OH
      C4H10_n_butane
      C5H10_1_pentene
      C5H12_n_pentane
      C6H6
      C6H12_1_hexene
      C6H14_n_heptane
      C7H14_1_heptene
      C8H10_ethylbenz
      CH3OH
      CH4
      CL2
      CO
      CO2
      F2
      H2
      H2O
      He
      N2
      N2O
      NH3
      NO
      O2
      SO2
      SO3

**Sources for model and literature:**
 Original Data: Computer program for calculation of complex chemical
equilibrium compositions and applications. Part 1: Analysis Document ID:
19950013764 N (95N20180) File Series: NASA Technical Reports Report
Number: NASA-RP-1311 E-8017 NAS 1.61:1311 Authors: Gordon, Sanford (NASA
Lewis Research Center) Mcbride, Bonnie J. (NASA Lewis Research Center)
Published: Oct 01, 1994.

**Known limits of validity:** The data is valid for temperatures between
200 K and 6000 K. A few of the data sets for monatomic gases have a
discontinuous 1st derivative at 1000 K, but this never caused problems
so far.

This model has been copied from the ThermoFluid library and adapted to
the Modelica.Media package.

::

Extends from
`Interfaces.PartialPureSubstance <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance>`_
(base class for pure substances of one chemical substance).

Package Content
~~~~~~~~~~~~~~~

Name

Description

|Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState|
`ThermodynamicState <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState>`_

thermodynamic state variables for ideal gases

|Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants|
`FluidConstants <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants>`_

Extended fluid constants

excludeEnthalpyOfFormation=true

If true, enthalpy of formation Hf is not included in specific enthalpy h

referenceChoice=Choices.ReferenceEnthalpy.ZeroAt0K

Choice of reference enthalpy

h\_offset=0.0

User defined offset for reference enthalpy, if referenceChoice =
UserDefined

data

Data record of ideal gas substance

fluidConstants

constant data for the fluid

|Modelica.Media.IdealGases.Common.SingleGasNasa.BaseProperties|
`BaseProperties <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.BaseProperties>`_

Base properties of ideal gas medium

|Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_pTX|
`setState\_pTX <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTX>`_

Return thermodynamic state as function of p, T and composition X

|Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_phX|
`setState\_phX <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_phX>`_

Return thermodynamic state as function of p, h and composition X

|Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_psX|
`setState\_psX <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_psX>`_

Return thermodynamic state as function of p, s and composition X

|Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_dTX|
`setState\_dTX <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_dTX>`_

Return thermodynamic state as function of d, T and composition X

|Modelica.Media.IdealGases.Common.SingleGasNasa.setSmoothState|
`setSmoothState <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

|Modelica.Media.IdealGases.Common.SingleGasNasa.pressure|
`pressure <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.pressure>`_

return pressure of ideal gas

|Modelica.Media.IdealGases.Common.SingleGasNasa.temperature|
`temperature <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.temperature>`_

return temperature of ideal gas

|Modelica.Media.IdealGases.Common.SingleGasNasa.density|
`density <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density>`_

return density of ideal gas

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificEnthalpy|
`specificEnthalpy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificEnthalpy>`_

Return specific enthalpy

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificInternalEnergy>`_

Return specific internal energy

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificEntropy|
`specificEntropy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificEntropy>`_

Return specific entropy

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificGibbsEnergy>`_

Return specific Gibbs energy

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHelmholtzEnergy>`_

Return specific Helmholtz energy

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCp>`_

Return specific heat capacity at constant pressure

|Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCv>`_

Compute specific heat capacity at constant volume from temperature and
gas data

|Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicExponent|
`isentropicExponent <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicExponent>`_

Return isentropic exponent

|Modelica.Media.IdealGases.Common.SingleGasNasa.velocityOfSound|
`velocityOfSound <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.velocityOfSound>`_

Return velocity of sound

|Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpyApproximation|
`isentropicEnthalpyApproximation <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpyApproximation>`_

approximate method of calculating h\_is from upstream properties and
downstream pressure

|Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpy|
`isentropicEnthalpy <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpy>`_

Return isentropic enthalpy

|Modelica.Media.IdealGases.Common.SingleGasNasa.isobaricExpansionCoefficient|
`isobaricExpansionCoefficient <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isobaricExpansionCoefficient>`_

Returns overall the isobaric expansion coefficient beta

|Modelica.Media.IdealGases.Common.SingleGasNasa.isothermalCompressibility|
`isothermalCompressibility <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isothermalCompressibility>`_

Returns overall the isothermal compressibility factor

|Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derp\_T|
`density\_derp\_T <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derp_T>`_

Returns the partial derivative of density with respect to pressure at
constant temperature

|Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derT\_p|
`density\_derT\_p <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derT_p>`_

Returns the partial derivative of density with respect to temperature at
constant pressure

|Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derX|
`density\_derX <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derX>`_

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

|Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_T|
`cp\_T <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_T>`_

Compute specific heat capacity at constant pressure from temperature and
gas data

|Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow|
`cp\_Tlow <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_Tlow>`_

Compute specific heat capacity at constant pressure, low T region

|Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow\_der|
`cp\_Tlow\_der <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_Tlow_der>`_

Compute specific heat capacity at constant pressure, low T region

|Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T|
`h\_T <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_T>`_

Compute specific enthalpy from temperature and gas data; reference is
decided by the refChoice input, or by the referenceChoice package
constant by default

|Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T\_der|
`h\_T\_der <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_T_der>`_

derivative function for h\_T

|Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow|
`h\_Tlow <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow>`_

Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default

|Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow\_der|
`h\_Tlow\_der <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow_der>`_

Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default

|Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_T|
`s0\_T <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.s0_T>`_

Compute specific entropy from temperature and gas data

|Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_Tlow|
`s0\_Tlow <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.s0_Tlow>`_

Compute specific entropy, low T region

|Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosityLowPressure|
`dynamicViscosityLowPressure <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosityLowPressure>`_

Dynamic viscosity of low pressure gases

|Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosity|
`dynamicViscosity <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosity>`_

dynamic viscosity

|Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivityEstimate|
`thermalConductivityEstimate <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivityEstimate>`_

Thermal conductivity of polyatomic gases(Eucken and Modified Eucken
correlation)

|Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivity|
`thermalConductivity <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivity>`_

thermal conductivity of gas

|Modelica.Media.IdealGases.Common.SingleGasNasa.molarMass|
`molarMass <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.molarMass>`_

return the molar mass of the medium

|Modelica.Media.IdealGases.Common.SingleGasNasa.T\_h|
`T\_h <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.T_h>`_

Compute temperature from specific enthalpy

|Modelica.Media.IdealGases.Common.SingleGasNasa.T\_ps|
`T\_ps <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.T_ps>`_

Compute temperature from pressure and specific entropy

Inherited

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

      constant Boolean excludeEnthalpyOfFormation=true 
      "If true, enthalpy of formation Hf is not included in specific enthalpy h";

::

      constant ReferenceEnthalpy referenceChoice=Choices.
            ReferenceEnthalpy.ZeroAt0K "Choice of reference enthalpy";

::

      constant SpecificEnthalpy h_offset=0.0 
      "User defined offset for reference enthalpy, if referenceChoice = UserDefined";

::

      constant IdealGases.Common.DataRecord data 
      "Data record of ideal gas substance";

::

      constant FluidConstants[nS] fluidConstants "constant data for the fluid";

--------------

|image72| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.ThermodynamicState
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**thermodynamic state variables for ideal gases**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_
(Minimal variable set that is available as input argument to every
medium function).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare record extends ThermodynamicState 
      "thermodynamic state variables for ideal gases"
      AbsolutePressure p "Absolute pressure of medium";
      Temperature T "Temperature of medium";
    end ThermodynamicState;

--------------

|image73| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.FluidConstants
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Extended fluid constants**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants>`_
(critical, triple, molecular and other standard data of fluid).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare record extends FluidConstants "Extended fluid constants"
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

--------------

|image74| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.BaseProperties
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base properties of ideal gas medium**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.BaseProperties>`_.

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

    redeclare model extends BaseProperties(
     T(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
     p(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default)) 
      "Base properties of ideal gas medium"
    equation 
      assert(T >= 200 and T <= 6000, "
    Temperature T (= "
                     + String(T) + " K) is not in the allowed range
    200 K <= T <= 6000 K required from medium model \""
                                                      + mediumName + "\".
    ");
      MM = data.MM;
      R = data.R;
      h = h_T(data, T, excludeEnthalpyOfFormation, referenceChoice, h_offset);
      u = h - R*T;

      // Has to be written in the form d=f(p,T) in order that static
      // state selection for p and T is possible
      d = p/(R*T);
      // connect state with BaseProperties
      state.T = T;
      state.p = p;
    end BaseProperties;

--------------

|image75| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.setState\_pTX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state as function of p, T and composition X**

Information
~~~~~~~~~~~

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

+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+---------------+
| Type                                                                                                                                            | Name    | Description   |
+=================================================================================================================================================+=========+===============+
| `ThermodynamicState <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState>`_   | state   |               |
+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function setState_pTX 
      "Return thermodynamic state as function of p, T and composition X"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state;
    algorithm 
      state := ThermodynamicState(p=p,T=T);
    end setState_pTX;

--------------

|image76| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.setState\_phX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state as function of p, h and composition X**

Information
~~~~~~~~~~~

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

+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+---------------+
| Type                                                                                                                                            | Name    | Description   |
+=================================================================================================================================================+=========+===============+
| `ThermodynamicState <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState>`_   | state   |               |
+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function setState_phX 
      "Return thermodynamic state as function of p, h and composition X"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state;
    algorithm 
      state := ThermodynamicState(p=p,T=T_h(h));
    end setState_phX;

--------------

|image77| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.setState\_psX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state as function of p, s and composition X**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+-------------------------------+
| Type                                                                                                                          | Name   | Default        | Description                   |
+===============================================================================================================================+========+================+===============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |                | Pressure [Pa]                 |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+-------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_     | s      |                | Specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+-------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | X[:]   | reference\_X   | Mass fractions [kg/kg]        |
+-------------------------------------------------------------------------------------------------------------------------------+--------+----------------+-------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+---------------+
| Type                                                                                                                                            | Name    | Description   |
+=================================================================================================================================================+=========+===============+
| `ThermodynamicState <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState>`_   | state   |               |
+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function setState_psX 
      "Return thermodynamic state as function of p, s and composition X"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state;
    algorithm 
      state := ThermodynamicState(p=p,T=T_ps(p,s));
    end setState_psX;

--------------

|image78| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.setState\_dTX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state as function of d, T and composition X**

Information
~~~~~~~~~~~

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

+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+---------------+
| Type                                                                                                                                            | Name    | Description   |
+=================================================================================================================================================+=========+===============+
| `ThermodynamicState <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState>`_   | state   |               |
+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function setState_dTX 
      "Return thermodynamic state as function of d, T and composition X"
      extends Modelica.Icons.Function;
      input Density d "density";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state;
    algorithm 
      state := ThermodynamicState(p=d*data.R*T,T=T);
    end setState_dTX;

--------------

|image79| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.setSmoothState
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
                                  T=Media.Common.smoothStep(x, state_a.T, state_b.T, x_small));
    end setSmoothState;

--------------

|image80| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.pressure
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

|image81| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.temperature
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

|image82| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.density
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      d := state.p/(data.R*state.T);
    end density;

--------------

|image83| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.specificEnthalpy
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      h := h_T(data,state.T);
    end specificEnthalpy;

--------------

|image84| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.specificInternalEnergy
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      u := h_T(data,state.T) - data.R*state.T;
    end specificInternalEnergy;

--------------

|image85| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.specificEntropy
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific entropy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions),
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

    redeclare function extends specificEntropy "Return specific entropy"
      extends Modelica.Icons.Function;
    algorithm 
      s := s0_T(data, state.T) - data.R*Modelica.Math.log(state.p/reference_p);
    end specificEntropy;

--------------

|image86| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.specificGibbsEnergy
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      g := h_T(data,state.T) - state.T*specificEntropy(state);
    end specificGibbsEnergy;

--------------

|image87| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.specificHelmholtzEnergy
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      f := h_T(data,state.T) - data.R*state.T - state.T*specificEntropy(state);
    end specificHelmholtzEnergy;

--------------

|image88| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.specificHeatCapacityCp
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific heat capacity at constant pressure**

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
      "Return specific heat capacity at constant pressure"
    algorithm 
      cp := cp_T(data, state.T);
    end specificHeatCapacityCp;

--------------

|image89| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.specificHeatCapacityCv
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific heat capacity at constant volume from temperature and
gas data**

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
      "Compute specific heat capacity at constant volume from temperature and gas data"
    algorithm 
      cv := cp_T(data, state.T) - data.R;
    end specificHeatCapacityCv;

--------------

|image90| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.isentropicExponent
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      gamma := specificHeatCapacityCp(state)/specificHeatCapacityCv(state);
    end isentropicExponent;

--------------

|image91| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.velocityOfSound
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return velocity of sound**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions),
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

    redeclare function extends velocityOfSound "Return velocity of sound"
      extends Modelica.Icons.Function;
    algorithm 
      a := sqrt(max(0,data.R*state.T*cp_T(data, state.T)/specificHeatCapacityCv(state)));
    end velocityOfSound;

--------------

|image92| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.isentropicEnthalpyApproximation
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**approximate method of calculating h\_is from upstream properties and
downstream pressure**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Type                                                                                                                                            | Name           | Default                      | Description                                                                           |
+=================================================================================================================================================+================+==============================+=======================================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                   | p2             |                              | downstream pressure [Pa]                                                              |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `ThermodynamicState <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState>`_   | state          |                              | properties at upstream location                                                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Boolean                                                                                                                                         | exclEnthForm   | excludeEnthalpyOfFormation   | If true, enthalpy of formation Hf is not included in specific enthalpy h              |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `ReferenceEnthalpy <Modelica_Media_Interfaces_PartialMedium_Choices.html#Modelica.Media.Interfaces.PartialMedium.Choices.ReferenceEnthalpy>`_   | refChoice      | referenceChoice              | Choice of reference enthalpy                                                          |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_                     | h\_off         | h\_offset                    | User defined offset for reference enthalpy, if referenceChoice = UserDefined [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                            | Name    | Description                  |
+=================================================================================+=========+==============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h\_is   | isentropic enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function isentropicEnthalpyApproximation 
      "approximate method of calculating h_is from upstream properties and downstream pressure"
      extends Modelica.Icons.Function;
      input SI.Pressure p2 "downstream pressure";
      input ThermodynamicState state "properties at upstream location";
      input Boolean exclEnthForm=excludeEnthalpyOfFormation 
        "If true, enthalpy of formation Hf is not included in specific enthalpy h";
      input ReferenceEnthalpy refChoice=referenceChoice 
        "Choice of reference enthalpy";
      input SpecificEnthalpy h_off=h_offset 
        "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
      output SI.SpecificEnthalpy h_is "isentropic enthalpy";
    protected 
      IsentropicExponent gamma =  isentropicExponent(state) "Isentropic exponent";
    algorithm 
      h_is := h_T(data,state.T,exclEnthForm,refChoice,h_off) +
        gamma/(gamma - 1.0)*state.p/density(state)*((p2/state.p)^((gamma - 1)/gamma) - 1.0);
    end isentropicEnthalpyApproximation;

--------------

|image93| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.isentropicEnthalpy
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return isentropic enthalpy**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy>`_
(Return isentropic enthalpy).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------+---------------------------------------------------------------------------------------+
| Type                                                                                                                                            | Name            | Default                      | Description                                                                           |
+=================================================================================================================================================+=================+==============================+=======================================================================================+
| Boolean                                                                                                                                         | exclEnthForm    | excludeEnthalpyOfFormation   | If true, enthalpy of formation Hf is not included in specific enthalpy h              |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------+---------------------------------------------------------------------------------------+
| `ReferenceEnthalpy <Modelica_Media_Interfaces_PartialMedium_Choices.html#Modelica.Media.Interfaces.PartialMedium.Choices.ReferenceEnthalpy>`_   | refChoice       | referenceChoice              | Choice of reference enthalpy                                                          |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------+---------------------------------------------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_                     | h\_off          | h\_offset                    | User defined offset for reference enthalpy, if referenceChoice = UserDefined [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------+---------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                     | p\_downstream   |                              | downstream pressure [Pa]                                                              |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------+---------------------------------------------------------------------------------------+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_                 | refState        |                              | reference state for entropy                                                           |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------+---------------------------------------------------------------------------------------+

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

    redeclare function extends isentropicEnthalpy 
      "Return isentropic enthalpy"
    input Boolean exclEnthForm=excludeEnthalpyOfFormation 
        "If true, enthalpy of formation Hf is not included in specific enthalpy h";
    input ReferenceEnthalpy refChoice=referenceChoice 
        "Choice of reference enthalpy";
    input SpecificEnthalpy h_off=h_offset 
        "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
    algorithm 
      h_is := isentropicEnthalpyApproximation(p_downstream,refState,exclEnthForm,refChoice,h_off);
    end isentropicEnthalpy;

--------------

|image94| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.isobaricExpansionCoefficient
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Returns overall the isobaric expansion coefficient beta**

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
      "Returns overall the isobaric expansion coefficient beta"
    algorithm 
      beta := 1/state.T;
    end isobaricExpansionCoefficient;

--------------

|image95| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.isothermalCompressibility
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Returns overall the isothermal compressibility factor**

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
      "Returns overall the isothermal compressibility factor"
    algorithm 
      kappa := 1.0/state.p;
    end isothermalCompressibility;

--------------

|image96| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.density\_derp\_T
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Returns the partial derivative of density with respect to pressure at
constant temperature**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_T>`_
(Return density derivative w.r.t. pressure at const temperature).

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
| `DerDensityByPressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByPressure>`_   | ddpT   | Density derivative w.r.t. pressure [s2/m2]   |
+---------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends density_derp_T 
      "Returns the partial derivative of density with respect to pressure at constant temperature"
    algorithm 
      ddpT := 1/(state.T*data.R);
    end density_derp_T;

--------------

|image97| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.density\_derT\_p
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Returns the partial derivative of density with respect to temperature
at constant pressure**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derT_p>`_
(Return density derivative w.r.t. temperature at constant pressure).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+
| Type                                                                                                                                        | Name   | Description                                         |
+=============================================================================================================================================+========+=====================================================+
| `DerDensityByTemperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByTemperature>`_   | ddTp   | Density derivative w.r.t. temperature [kg/(m3.K)]   |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends density_derT_p 
      "Returns the partial derivative of density with respect to temperature at constant pressure"
    algorithm 
      ddTp := -state.p/(state.T*state.T*data.R);
    end density_derT_p;

--------------

|image98| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.density\_derX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Returns the partial derivative of density with respect to mass
fractions at constant pressure and temperature**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derX>`_
(Return density derivative w.r.t. mass fraction).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------+
| Type                                                                                                        | Name       | Description                                          |
+=============================================================================================================+============+======================================================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_   | dddX[nX]   | Derivative of density w.r.t. mass fraction [kg/m3]   |
+-------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends density_derX 
      "Returns the partial derivative of density with respect to mass fractions at constant pressure and temperature"
    algorithm 
      dddX := fill(0,nX);
    end density_derX;

--------------

|image99| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.cp\_T
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific heat capacity at constant pressure from temperature
and gas data**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                | Name   | Default   | Description       |
+=====================================================================================================+========+===========+===================+
| `DataRecord <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common.DataRecord>`_   | data   |           | Ideal gas data    |
+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | T      |           | Temperature [K]   |
+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+------------------------------------------------------+
| Type                                                                                    | Name   | Description                                          |
+=========================================================================================+========+======================================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp     | Specific heat capacity at temperature T [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function cp_T 
      "Compute specific heat capacity at constant pressure from temperature and gas data"
      extends Modelica.Icons.Function;
      input IdealGases.Common.DataRecord data "Ideal gas data";
      input SI.Temperature T "Temperature";
      output SI.SpecificHeatCapacity cp "Specific heat capacity at temperature T";
    algorithm 
      cp := smooth(0,if T < data.Tlimit then data.R*(1/(T*T)*(data.alow[1] + T*(
        data.alow[2] + T*(1.*data.alow[3] + T*(data.alow[4] + T*(data.alow[5] + T
        *(data.alow[6] + data.alow[7]*T))))))) else data.R*(1/(T*T)*(data.ahigh[1]
         + T*(data.ahigh[2] + T*(1.*data.ahigh[3] + T*(data.ahigh[4] + T*(data.
        ahigh[5] + T*(data.ahigh[6] + data.ahigh[7]*T))))))));
    end cp_T;

--------------

|image100| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.cp\_Tlow
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific heat capacity at constant pressure, low T region**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                | Name   | Default   | Description       |
+=====================================================================================================+========+===========+===================+
| `DataRecord <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common.DataRecord>`_   | data   |           | Ideal gas data    |
+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | T      |           | Temperature [K]   |
+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+------------------------------------------------------+
| Type                                                                                    | Name   | Description                                          |
+=========================================================================================+========+======================================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp     | Specific heat capacity at temperature T [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function cp_Tlow 
      "Compute specific heat capacity at constant pressure, low T region"
      annotation(derivative=cp_Tlow_der);
      extends Modelica.Icons.Function;
      input IdealGases.Common.DataRecord data "Ideal gas data";
      input SI.Temperature T "Temperature";
      output SI.SpecificHeatCapacity cp "Specific heat capacity at temperature T";
    algorithm 
      cp := data.R*(1/(T*T)*(data.alow[1] + T*(
        data.alow[2] + T*(1.*data.alow[3] + T*(data.alow[4] + T*(data.alow[5] + T
        *(data.alow[6] + data.alow[7]*T)))))));
    end cp_Tlow;

--------------

|image101| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.cp\_Tlow\_der
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific heat capacity at constant pressure, low T region**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------+--------+-----------+--------------------------+
| Type                                                                                                | Name   | Default   | Description              |
+=====================================================================================================+========+===========+==========================+
| `DataRecord <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common.DataRecord>`_   | data   |           | Ideal gas data           |
+-----------------------------------------------------------------------------------------------------+--------+-----------+--------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | T      |           | Temperature [K]          |
+-----------------------------------------------------------------------------------------------------+--------+-----------+--------------------------+
| Real                                                                                                | dT     |           | Temperature derivative   |
+-----------------------------------------------------------------------------------------------------+--------+-----------+--------------------------+

Outputs
~~~~~~~

+--------+-----------+----------------------------------------+
| Type   | Name      | Description                            |
+========+===========+========================================+
| Real   | cp\_der   | Derivative of specific heat capacity   |
+--------+-----------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function cp_Tlow_der 
      "Compute specific heat capacity at constant pressure, low T region"
      extends Modelica.Icons.Function;
      input IdealGases.Common.DataRecord data "Ideal gas data";
      input SI.Temperature T "Temperature";
      input Real dT "Temperature derivative";
      output Real cp_der "Derivative of specific heat capacity";
    algorithm 
      cp_der := dT*data.R/(T*T*T)*(-2*data.alow[1] + T*(
        -data.alow[2] + T*T*(data.alow[4] + T*(2.*data.alow[5] + T
        *(3.*data.alow[6] + 4.*data.alow[7]*T)))));
    end cp_Tlow_der;

--------------

|image102| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.h\_T
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific enthalpy from temperature and gas data; reference is
decided by the refChoice input, or by the referenceChoice package
constant by default**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Type                                                                                                                                            | Name           | Default                      | Description                                                                           |
+=================================================================================================================================================+================+==============================+=======================================================================================+
| `DataRecord <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common.DataRecord>`_                                               | data           |                              | Ideal gas data                                                                        |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                             | T              |                              | Temperature [K]                                                                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Boolean                                                                                                                                         | exclEnthForm   | excludeEnthalpyOfFormation   | If true, enthalpy of formation Hf is not included in specific enthalpy h              |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `ReferenceEnthalpy <Modelica_Media_Interfaces_PartialMedium_Choices.html#Modelica.Media.Interfaces.PartialMedium.Choices.ReferenceEnthalpy>`_   | refChoice      | referenceChoice              | Choice of reference enthalpy                                                          |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_                                                                   | h\_off         | h\_offset                    | User defined offset for reference enthalpy, if referenceChoice = UserDefined [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+---------------------------------------------+
| Type                                                                            | Name   | Description                                 |
+=================================================================================+========+=============================================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | Specific enthalpy at temperature T [J/kg]   |
+---------------------------------------------------------------------------------+--------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function h_T "Compute specific enthalpy from temperature and gas data; reference is decided by the
        refChoice input, or by the referenceChoice package constant by default"
        import Modelica.Media.Interfaces.PartialMedium.Choices;
      extends Modelica.Icons.Function;
      input IdealGases.Common.DataRecord data "Ideal gas data";
      input SI.Temperature T "Temperature";
      input Boolean exclEnthForm=excludeEnthalpyOfFormation 
        "If true, enthalpy of formation Hf is not included in specific enthalpy h";
      input Choices.ReferenceEnthalpy refChoice=referenceChoice 
        "Choice of reference enthalpy";
      input SI.SpecificEnthalpy h_off=h_offset 
        "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
      output SI.SpecificEnthalpy h "Specific enthalpy at temperature T";
        //     annotation (InlineNoEvent=false, Inline=false,
        //                 derivative(zeroDerivative=data,
        //                            zeroDerivative=exclEnthForm,
        //                            zeroDerivative=refChoice,
        //                            zeroDerivative=h_off) = h_T_der);
    algorithm 
      h := smooth(0,(if T < data.Tlimit then data.R*((-data.alow[1] + T*(data.
        blow[1] + data.alow[2]*Math.log(T) + T*(1.*data.alow[3] + T*(0.5*data.
        alow[4] + T*(1/3*data.alow[5] + T*(0.25*data.alow[6] + 0.2*data.alow[7]*T))))))
        /T) else data.R*((-data.ahigh[1] + T*(data.bhigh[1] + data.ahigh[2]*
        Math.log(T) + T*(1.*data.ahigh[3] + T*(0.5*data.ahigh[4] + T*(1/3*data.
        ahigh[5] + T*(0.25*data.ahigh[6] + 0.2*data.ahigh[7]*T))))))/T)) + (if 
        exclEnthForm then -data.Hf else 0.0) + (if (refChoice
         == Choices.ReferenceEnthalpy.ZeroAt0K) then data.H0 else 0.0) + (if 
        refChoice == Choices.ReferenceEnthalpy.UserDefined then h_off else 
              0.0));
    end h_T;

--------------

|image103| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.h\_T\_der
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**derivative function for h\_T**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Type                                                                                                                                            | Name           | Default                      | Description                                                                           |
+=================================================================================================================================================+================+==============================+=======================================================================================+
| `DataRecord <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common.DataRecord>`_                                               | data           |                              | Ideal gas data                                                                        |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                             | T              |                              | Temperature [K]                                                                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Boolean                                                                                                                                         | exclEnthForm   | excludeEnthalpyOfFormation   | If true, enthalpy of formation Hf is not included in specific enthalpy h              |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `ReferenceEnthalpy <Modelica_Media_Interfaces_PartialMedium_Choices.html#Modelica.Media.Interfaces.PartialMedium.Choices.ReferenceEnthalpy>`_   | refChoice      | referenceChoice              | Choice of reference enthalpy                                                          |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_                                                                   | h\_off         | h\_offset                    | User defined offset for reference enthalpy, if referenceChoice = UserDefined [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Real                                                                                                                                            | dT             |                              | Temperature derivative                                                                |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+----------+--------------------------------------+
| Type   | Name     | Description                          |
+========+==========+======================================+
| Real   | h\_der   | Specific enthalpy at temperature T   |
+--------+----------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function h_T_der "derivative function for h_T"
        import Modelica.Media.Interfaces.PartialMedium.Choices;
      extends Modelica.Icons.Function;
      input IdealGases.Common.DataRecord data "Ideal gas data";
      input SI.Temperature T "Temperature";
      input Boolean exclEnthForm=excludeEnthalpyOfFormation 
        "If true, enthalpy of formation Hf is not included in specific enthalpy h";
      input Choices.ReferenceEnthalpy refChoice=referenceChoice 
        "Choice of reference enthalpy";
      input SI.SpecificEnthalpy h_off=h_offset 
        "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
      input Real dT "Temperature derivative";
      output Real h_der "Specific enthalpy at temperature T";
    algorithm 
      h_der := dT*cp_T(data,T);
    end h_T_der;

--------------

|image104| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.h\_Tlow
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Type                                                                                                                                            | Name           | Default                      | Description                                                                           |
+=================================================================================================================================================+================+==============================+=======================================================================================+
| `DataRecord <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common.DataRecord>`_                                               | data           |                              | Ideal gas data                                                                        |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                             | T              |                              | Temperature [K]                                                                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Boolean                                                                                                                                         | exclEnthForm   | excludeEnthalpyOfFormation   | If true, enthalpy of formation Hf is not included in specific enthalpy h              |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `ReferenceEnthalpy <Modelica_Media_Interfaces_PartialMedium_Choices.html#Modelica.Media.Interfaces.PartialMedium.Choices.ReferenceEnthalpy>`_   | refChoice      | referenceChoice              | Choice of reference enthalpy                                                          |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_                                                                   | h\_off         | h\_offset                    | User defined offset for reference enthalpy, if referenceChoice = UserDefined [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+---------------------------------------------+
| Type                                                                            | Name   | Description                                 |
+=================================================================================+========+=============================================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | Specific enthalpy at temperature T [J/kg]   |
+---------------------------------------------------------------------------------+--------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function h_Tlow "Compute specific enthalpy, low T region; reference is decided by the
        refChoice input, or by the referenceChoice package constant by default"
        import Modelica.Media.Interfaces.PartialMedium.Choices;
      extends Modelica.Icons.Function;
      input IdealGases.Common.DataRecord data "Ideal gas data";
      input SI.Temperature T "Temperature";
      input Boolean exclEnthForm=excludeEnthalpyOfFormation 
        "If true, enthalpy of formation Hf is not included in specific enthalpy h";
      input Choices.ReferenceEnthalpy refChoice=referenceChoice 
        "Choice of reference enthalpy";
      input SI.SpecificEnthalpy h_off=h_offset 
        "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
      output SI.SpecificEnthalpy h "Specific enthalpy at temperature T";
        //     annotation (Inline=false,InlineNoEvent=false, derivative(zeroDerivative=data,
        //                                zeroDerivative=exclEnthForm,
        //                                zeroDerivative=refChoice,
        //                                zeroDerivative=h_off) = h_Tlow_der);
    algorithm 
      h := data.R*((-data.alow[1] + T*(data.
        blow[1] + data.alow[2]*Math.log(T) + T*(1.*data.alow[3] + T*(0.5*data.
        alow[4] + T*(1/3*data.alow[5] + T*(0.25*data.alow[6] + 0.2*data.alow[7]*T))))))
        /T) + (if 
        exclEnthForm then -data.Hf else 0.0) + (if (refChoice
         == Choices.ReferenceEnthalpy.ZeroAt0K) then data.H0 else 0.0) + (if 
        refChoice == Choices.ReferenceEnthalpy.UserDefined then h_off else 
              0.0);
    end h_Tlow;

--------------

|image105| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.h\_Tlow\_der
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Type                                                                                                                                            | Name           | Default                      | Description                                                                           |
+=================================================================================================================================================+================+==============================+=======================================================================================+
| `DataRecord <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common.DataRecord>`_                                               | data           |                              | Ideal gas data                                                                        |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                             | T              |                              | Temperature [K]                                                                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Boolean                                                                                                                                         | exclEnthForm   | excludeEnthalpyOfFormation   | If true, enthalpy of formation Hf is not included in specific enthalpy h              |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `ReferenceEnthalpy <Modelica_Media_Interfaces_PartialMedium_Choices.html#Modelica.Media.Interfaces.PartialMedium.Choices.ReferenceEnthalpy>`_   | refChoice      | referenceChoice              | Choice of reference enthalpy                                                          |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_                                                                   | h\_off         | h\_offset                    | User defined offset for reference enthalpy, if referenceChoice = UserDefined [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+
| Real                                                                                                                                            | dT             |                              | Temperature derivative [K/s]                                                          |
+-------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------+---------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+----------+---------------------------------------------------------------+
| Type   | Name     | Description                                                   |
+========+==========+===============================================================+
| Real   | h\_der   | Derivative of specific enthalpy at temperature T [J/(kg.s)]   |
+--------+----------+---------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function h_Tlow_der "Compute specific enthalpy, low T region; reference is decided by the
        refChoice input, or by the referenceChoice package constant by default"
        import Modelica.Media.Interfaces.PartialMedium.Choices;
      extends Modelica.Icons.Function;
      input IdealGases.Common.DataRecord data "Ideal gas data";
      input SI.Temperature T "Temperature";
      input Boolean exclEnthForm=excludeEnthalpyOfFormation 
        "If true, enthalpy of formation Hf is not included in specific enthalpy h";
      input Choices.ReferenceEnthalpy refChoice=referenceChoice 
        "Choice of reference enthalpy";
      input SI.SpecificEnthalpy h_off=h_offset 
        "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
      input Real dT(unit="K/s") "Temperature derivative";
      output Real h_der(unit="J/(kg.s)") 
        "Derivative of specific enthalpy at temperature T";
    algorithm 
      h_der := dT*cp_Tlow(data,T);
    end h_Tlow_der;

--------------

|image106| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.s0\_T
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific entropy from temperature and gas data**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                | Name   | Default   | Description       |
+=====================================================================================================+========+===========+===================+
| `DataRecord <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common.DataRecord>`_   | data   |           | Ideal gas data    |
+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | T      |           | Temperature [K]   |
+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+------------------------------------------------+
| Type                                                                          | Name   | Description                                    |
+===============================================================================+========+================================================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s      | Specific entropy at temperature T [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function s0_T 
      "Compute specific entropy from temperature and gas data"
      extends Modelica.Icons.Function;
      input IdealGases.Common.DataRecord data "Ideal gas data";
      input SI.Temperature T "Temperature";
      output SI.SpecificEntropy s "Specific entropy at temperature T";
    algorithm 
      s := noEvent(if T < data.Tlimit then data.R*(data.blow[2] - 0.5*data.alow[
        1]/(T*T) - data.alow[2]/T + data.alow[3]*Math.log(T) + T*(
        data.alow[4] + T*(0.5*data.alow[5] + T*(1/3*data.alow[6] + 0.25*data.alow[
        7]*T)))) else data.R*(data.bhigh[2] - 0.5*data.ahigh[1]/(T*T) - data.
        ahigh[2]/T + data.ahigh[3]*Math.log(T) + T*(data.ahigh[4]
         + T*(0.5*data.ahigh[5] + T*(1/3*data.ahigh[6] + 0.25*data.ahigh[7]*T)))));
    end s0_T;

--------------

|image107| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.s0\_Tlow
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific entropy, low T region**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                | Name   | Default   | Description       |
+=====================================================================================================+========+===========+===================+
| `DataRecord <Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common.DataRecord>`_   | data   |           | Ideal gas data    |
+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | T      |           | Temperature [K]   |
+-----------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+------------------------------------------------+
| Type                                                                          | Name   | Description                                    |
+===============================================================================+========+================================================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s      | Specific entropy at temperature T [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function s0_Tlow "Compute specific entropy, low T region"
      extends Modelica.Icons.Function;
      input IdealGases.Common.DataRecord data "Ideal gas data";
      input SI.Temperature T "Temperature";
      output SI.SpecificEntropy s "Specific entropy at temperature T";
    algorithm 
      s := data.R*(data.blow[2] - 0.5*data.alow[
        1]/(T*T) - data.alow[2]/T + data.alow[3]*Math.log(T) + T*(
        data.alow[4] + T*(0.5*data.alow[5] + T*(1/3*data.alow[6] + 0.25*data.alow[
        7]*T))));
    end s0_Tlow;

--------------

|image108| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.dynamicViscosityLowPressure
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Dynamic viscosity of low pressure gases**

Information
~~~~~~~~~~~

::

The used formula are based on the method of Chung et al (1984, 1988)
referred to in ref [1] chapter 9. The formula 9-4.10 is the one being
used. The Formula is given in non-SI units, the follwong onversion
constants were used to transform the formula to SI units:

-  **Const1\_SI:** The factor 10^(-9.5) =10^(-2.5)\*1e-7 where the
   factor 10^(-2.5) originates from the conversion of g/mol->kg/mol +
   cm^3/mol->m^3/mol and the factor 1e-7 is due to conversionfrom
   microPoise->Pa.s.
-  **Const2\_SI:** The factor 1/3.335641e-27 = 1e-3/3.335641e-30 where
   the factor 3.335641e-30 comes from debye->C.m and 1e-3 is due to
   conversion from cm^3/mol->m^3/mol

References:
^^^^^^^^^^^

[1] Bruce E. Poling, John E. Prausnitz, John P. O'Connell, "The
Properties of Gases and Liquids" 5th Ed. Mc Graw Hill.

Author
^^^^^^

T. Skoglund, Lund, Sweden, 2004-08-31

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------+
| Type                                                                                                                  | Name   | Default   | Description                                      |
+=======================================================================================================================+========+===========+==================================================+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_                                                            | T      |           | Gas temperature [K]                              |
+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_                                                            | Tc     |           | Critical temperature of gas [K]                  |
+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------+
| `MolarMass <Modelica_SIunits.html#Modelica.SIunits.MolarMass>`_                                                       | M      |           | Molar mass of gas [kg/mol]                       |
+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------+
| `MolarVolume <Modelica_SIunits.html#Modelica.SIunits.MolarVolume>`_                                                   | Vc     |           | Critical molar volume of gas [m3/mol]            |
+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------+
| Real                                                                                                                  | w      |           | Acentric factor of gas                           |
+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------+
| `DipoleMoment <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DipoleMoment>`_   | mu     |           | Dipole moment of gas molecule [debye]            |
+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------+
| Real                                                                                                                  | k      | 0.0       | Special correction for highly polar substances   |
+-----------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                            | Name   | Description                       |
+=================================================================================+========+===================================+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | eta    | Dynamic viscosity of gas [Pa.s]   |
+---------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dynamicViscosityLowPressure 
      "Dynamic viscosity of low pressure gases"
      extends Modelica.Icons.Function;
      input SI.Temp_K T "Gas temperature";
      input SI.Temp_K Tc "Critical temperature of gas";
      input SI.MolarMass M "Molar mass of gas";
      input SI.MolarVolume Vc "Critical molar volume of gas";
      input Real w "Acentric factor of gas";
      input DipoleMoment mu "Dipole moment of gas molecule";
      input Real k =  0.0 "Special correction for highly polar substances";
      output SI.DynamicViscosity eta "Dynamic viscosity of gas";
    protected 
      parameter Real Const1_SI=40.785*10^(-9.5) 
        "Constant in formula for eta converted to SI units";
      parameter Real Const2_SI=131.3/1000.0 
        "Constant in formula for mur converted to SI units";
      Real mur=Const2_SI*mu/sqrt(Vc*Tc) 
        "Dimensionless dipole moment of gas molecule";
      Real Fc=1 - 0.2756*w + 0.059035*mur^4 + k 
        "Factor to account for molecular shape and polarities of gas";
      Real Tstar "Dimensionless temperature defined by equation below";
      Real Ov "Viscosity collision integral for the gas";

    algorithm 
      Tstar := 1.2593*T/Tc;
      Ov := 1.16145*Tstar^(-0.14874) + 0.52487*exp(-0.7732*Tstar) + 2.16178*exp(-2.43787
        *Tstar);
      eta := Const1_SI*Fc*sqrt(M*T)/(Vc^(2/3)*Ov);
    end dynamicViscosityLowPressure;

--------------

|image109| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.dynamicViscosity
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**dynamic viscosity**

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

    redeclare replaceable function extends dynamicViscosity 
      "dynamic viscosity"
    algorithm 
      assert(fluidConstants[1].hasCriticalData,
      "Failed to compute dynamicViscosity: For the species \"" + mediumName + "\" no critical data is available.");
      assert(fluidConstants[1].hasDipoleMoment,
      "Failed to compute dynamicViscosity: For the species \"" + mediumName + "\" no critical data is available.");
      eta := dynamicViscosityLowPressure(state.T,
                         fluidConstants[1].criticalTemperature,
                         fluidConstants[1].molarMass,
                         fluidConstants[1].criticalMolarVolume,
                         fluidConstants[1].acentricFactor,
                         fluidConstants[1].dipoleMoment);
    end dynamicViscosity;

--------------

|image110| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.thermalConductivityEstimate
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal conductivity of polyatomic gases(Eucken and Modified Eucken
correlation)**

Information
~~~~~~~~~~~

::

This function provides two similar methods for estimating the thermal
conductivity of polyatomic gases. The Eucken method (input method == 1)
gives good results for low temperatures, but it tends to give an
underestimated value of the thermal conductivity (lambda) at higher
temperatures.
 The Modified Eucken method (input method == 2) gives good results for
high-temperatures, but it tends to give an overestimated value of the
thermal conductivity (lambda) at low temperatures.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------+
| Type                                                                                                                                  | Name     | Default   | Description                                   |
+=======================================================================================================================================+==========+===========+===============================================+
| `SpecificHeatCapacity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificHeatCapacity>`_   | Cp       |           | Constant pressure heat capacity [J/(kg.K)]    |
+---------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------+
| `DynamicViscosity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DynamicViscosity>`_           | eta      |           | Dynamic viscosity [Pa.s]                      |
+---------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------+
| Integer                                                                                                                               | method   | 1         | 1: Eucken Method, 2: Modified Eucken Method   |
+---------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+----------+--------------------------------------------+
| Type                                                                                                                                | Name     | Description                                |
+=====================================================================================================================================+==========+============================================+
| `ThermalConductivity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermalConductivity>`_   | lambda   | Thermal conductivity [W/(m.k)] [W/(m.K)]   |
+-------------------------------------------------------------------------------------------------------------------------------------+----------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function thermalConductivityEstimate 
      "Thermal conductivity of polyatomic gases(Eucken and Modified Eucken correlation)"
      extends Modelica.Icons.Function;
      input SpecificHeatCapacity Cp "Constant pressure heat capacity";
      input DynamicViscosity eta "Dynamic viscosity";
      input Integer method(min=1,max=2)=1 
        "1: Eucken Method, 2: Modified Eucken Method";
      output ThermalConductivity lambda "Thermal conductivity [W/(m.k)]";
    algorithm 
      lambda := if method == 1 then eta*(Cp - data.R + (9/4)*data.R) else eta*(Cp
         - data.R)*(1.32 + 1.77/((Cp/Modelica.Constants.R) - 1.0));
    end thermalConductivityEstimate;

--------------

|image111| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.thermalConductivity
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**thermal conductivity of gas**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.thermalConductivity>`_
(Return thermal conductivity).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------+
| Type                                                                                                                              | Name     | Default   | Description                                   |
+===================================================================================================================================+==========+===========+===============================================+
| Integer                                                                                                                           | method   | 1         | 1: Eucken Method, 2: Modified Eucken Method   |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state    |           | thermodynamic state record                    |
+-----------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------+

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

    redeclare replaceable function extends thermalConductivity 
      "thermal conductivity of gas"
      input Integer method=1 "1: Eucken Method, 2: Modified Eucken Method";
    algorithm 
      assert(fluidConstants[1].hasCriticalData,
      "Failed to compute thermalConductivity: For the species \"" + mediumName + "\" no critical data is available.");
      lambda := thermalConductivityEstimate(specificHeatCapacityCp(state),
        dynamicViscosity(state), method=method);
    end thermalConductivity;

--------------

|image112| `Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.molarMass
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**return the molar mass of the medium**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.molarMass>`_
(Return the molar mass of the medium).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+
| Type                                                                                                                              | Name    | Default   | Description                  |
+===================================================================================================================================+=========+===========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   |           | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------+------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                                                            | Name   | Description                   |
+=================================================================================================================+========+===============================+
| `MolarMass <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MolarMass>`_   | MM     | Mixture molar mass [kg/mol]   |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends molarMass 
      "return the molar mass of the medium"
    algorithm 
      MM := data.MM;
    end molarMass;

--------------

`Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.T\_h
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute temperature from specific enthalpy**

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                                                          | Name   | Default   | Description                |
+===============================================================================================================================+========+===========+============================+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      |           | Specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------+

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

    function T_h "Compute temperature from specific enthalpy"
      input SpecificEnthalpy h "Specific enthalpy";
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
          y := h_T(f_nonlinear_data,x);
      end f_nonlinear;

      // Dummy definition has to be added for current Dymola
      redeclare function extends solve
      end solve;
    end Internal;

    algorithm 
      T := Internal.solve(h, 200, 6000, 1.0e5, {1}, data);
    end T_h;

--------------

`Modelica.Media.IdealGases.Common.SingleGasNasa <Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa>`_.T\_ps
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute temperature from pressure and specific entropy**

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| Type                                                                                                                          | Name   | Default   | Description                   |
+===============================================================================================================================+========+===========+===============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | Pressure [Pa]                 |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_     | s      |           | Specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+

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

    function T_ps 
      "Compute temperature from pressure and specific entropy"
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
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
          y := s0_T(f_nonlinear_data,x)- data.R*Modelica.Math.log(p/reference_p);
      end f_nonlinear;

      // Dummy definition has to be added for current Dymola
      redeclare function extends solve
      end solve;
    end Internal;

    algorithm 
      T := Internal.solve(s, 200, 6000, p, {1}, data);
    end T_ps;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:32
2010.

.. |Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.BaseProperties| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.BasePropertiesS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_pTX| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_phX| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_psX| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_dTX| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.setSmoothState| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.pressure| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.temperature| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.density| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificEnthalpy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificInternalEnergy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificEntropy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificGibbsEnergy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificHelmholtzEnergy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCp| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCv| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicExponent| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.velocityOfSound| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpyApproximation| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpy| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.isobaricExpansionCoefficient| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.isothermalCompressibility| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derp\_T| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derT\_p| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derX| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_T| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow\_der| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T\_der| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow\_der| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_T| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_Tlow| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosityLowPressure| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosity| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivityEstimate| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivity| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.molarMass| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.T\_h| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.T_hS.png
.. |Modelica.Media.IdealGases.Common.SingleGasNasa.T\_ps| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.T_hS.png
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
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.beta| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.kappa| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derp\_h| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_derh\_p| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature\_phX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_phX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.Choices| image:: Modelica.Media.Interfaces.PartialMedium.ChoicesS.png
.. |image72| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateI.png
.. |image73| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateI.png
.. |image74| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.BasePropertiesI.png
.. |image75| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image76| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image77| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image78| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image79| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image80| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image81| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image82| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image83| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image84| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image85| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image86| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image87| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image88| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image89| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image90| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image91| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image92| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image93| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image94| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image95| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image96| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image97| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image98| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image99| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image100| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image101| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image102| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image103| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image104| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image105| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image106| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image107| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image108| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image109| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image110| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image111| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
.. |image112| image:: Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png
