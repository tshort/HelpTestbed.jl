% Modelica.Media.IdealGases.Common.SingleGasNasa
% 
% 

[Modelica.Media.IdealGases.Common](Modelica_Media_IdealGases_Common.html#Modelica.Media.IdealGases.Common).SingleGasNasa
========================================================================================================================

**Medium model of an ideal gas based on NASA source**

Information
-----------

::

This model calculates medium properties for an ideal gas of a single
substance, or for an ideal gas consisting of several substances where
the mass fractions are fixed. Independent variables are temperature
**T** and pressure **p**. Only density is a function of T and p. All
other quantities are solely a function of T. The properties are valid in
the range:

    200 K ≤ T ≤ 6000 K

The following quantities are always computed:

  ----------------- ------------- --------------------------------------
  **Variable**      **Unit**      **Description**
  h                 J/kg          specific enthalpy h = h(T)
  u                 J/kg          specific internal energy u = u(T)
  d                 kg/m\^3       density d = d(p,T)
  ----------------- ------------- --------------------------------------

For the other variables, see the functions in
Modelica.Media.IdealGases.Common.SingleGasNasa. Note, dynamic viscosity
and thermal conductivity are only provided for gases that use a data
record from Modelica.Media.IdealGases.FluidData. Currently these are the
following gases:

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

This model has been copied from the ThermoFluid library and adapted to
the Modelica.Media package.

::

Extends from
[Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance)
(base class for pure substances of one chemical substance).

Package Content
---------------

Name

Description

![Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState](Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateS.png)
[ThermodynamicState](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicState)

thermodynamic state variables for ideal gases

![Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants](Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateS.png)
[FluidConstants](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.FluidConstants)

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

![Modelica.Media.IdealGases.Common.SingleGasNasa.BaseProperties](Modelica.Media.IdealGases.Common.SingleGasNasa.BasePropertiesS.png)
[BaseProperties](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.BaseProperties)

Base properties of ideal gas medium

![Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_pTX](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[setState\_pTX](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTX)

Return thermodynamic state as function of p, T and composition X

![Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_phX](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[setState\_phX](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_phX)

Return thermodynamic state as function of p, h and composition X

![Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_psX](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[setState\_psX](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_psX)

Return thermodynamic state as function of p, s and composition X

![Modelica.Media.IdealGases.Common.SingleGasNasa.setState\_dTX](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[setState\_dTX](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setState_dTX)

Return thermodynamic state as function of d, T and composition X

![Modelica.Media.IdealGases.Common.SingleGasNasa.setSmoothState](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[setSmoothState](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

![Modelica.Media.IdealGases.Common.SingleGasNasa.pressure](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[pressure](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.pressure)

return pressure of ideal gas

![Modelica.Media.IdealGases.Common.SingleGasNasa.temperature](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[temperature](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.temperature)

return temperature of ideal gas

![Modelica.Media.IdealGases.Common.SingleGasNasa.density](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[density](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density)

return density of ideal gas

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificEnthalpy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificEnthalpy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificEnthalpy)

Return specific enthalpy

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificInternalEnergy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificInternalEnergy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificInternalEnergy)

Return specific internal energy

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificEntropy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificEntropy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificEntropy)

Return specific entropy

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificGibbsEnergy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificGibbsEnergy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificGibbsEnergy)

Return specific Gibbs energy

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificHelmholtzEnergy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificHelmholtzEnergy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHelmholtzEnergy)

Return specific Helmholtz energy

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCp](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificHeatCapacityCp](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCp)

Return specific heat capacity at constant pressure

![Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCv](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[specificHeatCapacityCv](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.specificHeatCapacityCv)

Compute specific heat capacity at constant volume from temperature and
gas data

![Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicExponent](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[isentropicExponent](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicExponent)

Return isentropic exponent

![Modelica.Media.IdealGases.Common.SingleGasNasa.velocityOfSound](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[velocityOfSound](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.velocityOfSound)

Return velocity of sound

![Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpyApproximation](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[isentropicEnthalpyApproximation](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpyApproximation)

approximate method of calculating h\_is from upstream properties and
downstream pressure

![Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpy](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[isentropicEnthalpy](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isentropicEnthalpy)

Return isentropic enthalpy

![Modelica.Media.IdealGases.Common.SingleGasNasa.isobaricExpansionCoefficient](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[isobaricExpansionCoefficient](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isobaricExpansionCoefficient)

Returns overall the isobaric expansion coefficient beta

![Modelica.Media.IdealGases.Common.SingleGasNasa.isothermalCompressibility](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[isothermalCompressibility](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.isothermalCompressibility)

Returns overall the isothermal compressibility factor

![Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derp\_T](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[density\_derp\_T](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derp_T)

Returns the partial derivative of density with respect to pressure at
constant temperature

![Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derT\_p](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[density\_derT\_p](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derT_p)

Returns the partial derivative of density with respect to temperature at
constant pressure

![Modelica.Media.IdealGases.Common.SingleGasNasa.density\_derX](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[density\_derX](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.density_derX)

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

![Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_T](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[cp\_T](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_T)

Compute specific heat capacity at constant pressure from temperature and
gas data

![Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[cp\_Tlow](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_Tlow)

Compute specific heat capacity at constant pressure, low T region

![Modelica.Media.IdealGases.Common.SingleGasNasa.cp\_Tlow\_der](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[cp\_Tlow\_der](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.cp_Tlow_der)

Compute specific heat capacity at constant pressure, low T region

![Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[h\_T](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_T)

Compute specific enthalpy from temperature and gas data; reference is
decided by the refChoice input, or by the referenceChoice package
constant by default

![Modelica.Media.IdealGases.Common.SingleGasNasa.h\_T\_der](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[h\_T\_der](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_T_der)

derivative function for h\_T

![Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[h\_Tlow](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow)

Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default

![Modelica.Media.IdealGases.Common.SingleGasNasa.h\_Tlow\_der](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[h\_Tlow\_der](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.h_Tlow_der)

Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default

![Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_T](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[s0\_T](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.s0_T)

Compute specific entropy from temperature and gas data

![Modelica.Media.IdealGases.Common.SingleGasNasa.s0\_Tlow](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[s0\_Tlow](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.s0_Tlow)

Compute specific entropy, low T region

![Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosityLowPressure](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[dynamicViscosityLowPressure](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosityLowPressure)

Dynamic viscosity of low pressure gases

![Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosity](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[dynamicViscosity](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.dynamicViscosity)

dynamic viscosity

![Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivityEstimate](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[thermalConductivityEstimate](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivityEstimate)

Thermal conductivity of polyatomic gases(Eucken and Modified Eucken
correlation)

![Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivity](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[thermalConductivity](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.thermalConductivity)

thermal conductivity of gas

![Modelica.Media.IdealGases.Common.SingleGasNasa.molarMass](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXS.png)
[molarMass](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.molarMass)

return the molar mass of the medium

![Modelica.Media.IdealGases.Common.SingleGasNasa.T\_h](Modelica.Media.IdealGases.Common.SingleGasNasa.T_hS.png)
[T\_h](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.T_h)

Compute temperature from specific enthalpy

![Modelica.Media.IdealGases.Common.SingleGasNasa.T\_ps](Modelica.Media.IdealGases.Common.SingleGasNasa.T_hS.png)
[T\_ps](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.T_ps)

Compute temperature from pressure and specific entropy

Inherited

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

![Modelica.Media.Interfaces.PartialMedium.prandtlNumber](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
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

    constant Boolean excludeEnthalpyOfFormation=true 
    "If true, enthalpy of formation Hf is not included in specific enthalpy h";

    constant ReferenceEnthalpy referenceChoice=Choices.
          ReferenceEnthalpy.ZeroAt0K "Choice of reference enthalpy";

    constant SpecificEnthalpy h_offset=0.0 
    "User defined offset for reference enthalpy, if referenceChoice = UserDefined";

    constant IdealGases.Common.DataRecord data 
    "Data record of ideal gas substance";

    constant FluidConstants[nS] fluidConstants "constant data for the fluid";

* * * * *

![image72](Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).ThermodynamicState
==========================================================================================================================================================================================================================================================

**thermodynamic state variables for ideal gases**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState)
(Minimal variable set that is available as input argument to every
medium function).

Modelica definition
-------------------

    redeclare record extends ThermodynamicState 
      "thermodynamic state variables for ideal gases"
      AbsolutePressure p "Absolute pressure of medium";
      Temperature T "Temperature of medium";
    end ThermodynamicState;

* * * * *

![image73](Modelica.Media.IdealGases.Common.SingleGasNasa.ThermodynamicStateI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).FluidConstants
======================================================================================================================================================================================================================================================

**Extended fluid constants**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants)
(critical, triple, molecular and other standard data of fluid).

Modelica definition
-------------------

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

* * * * *

![image74](Modelica.Media.IdealGases.Common.SingleGasNasa.BasePropertiesI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).BaseProperties
==================================================================================================================================================================================================================================================

**Base properties of ideal gas medium**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance.BaseProperties).

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

* * * * *

![image75](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).setState\_pTX
===============================================================================================================================================================================================================================================

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
  [ThermodynamicState](Modelica_Media_IdealGases_Common_SingleG stat 
  asNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.Th e    
  ermodynamicState)                                                  
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
      state := ThermodynamicState(p=p,T=T);
    end setState_pTX;

* * * * *

![image76](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).setState\_phX
===============================================================================================================================================================================================================================================

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
  [ThermodynamicState](Modelica_Media_IdealGases_Common_SingleG stat 
  asNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.Th e    
  ermodynamicState)                                                  
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
      state := ThermodynamicState(p=p,T=T_h(h));
    end setState_phX;

* * * * *

![image77](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).setState\_psX
===============================================================================================================================================================================================================================================

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
  [ThermodynamicState](Modelica_Media_IdealGases_Common_SingleG stat 
  asNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.Th e    
  ermodynamicState)                                                  
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
      state := ThermodynamicState(p=p,T=T_ps(p,s));
    end setState_psX;

* * * * *

![image78](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).setState\_dTX
===============================================================================================================================================================================================================================================

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
  [ThermodynamicState](Modelica_Media_IdealGases_Common_SingleG stat 
  asNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa.Th e    
  ermodynamicState)                                                  
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
      state := ThermodynamicState(p=d*data.R*T,T=T);
    end setState_dTX;

* * * * *

![image79](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).setSmoothState
================================================================================================================================================================================================================================================

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
                                  T=Media.Common.smoothStep(x, state_a.T, state_b.T, x_small));
    end setSmoothState;

* * * * *

![image80](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).pressure
==========================================================================================================================================================================================================================================

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

![image81](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).temperature
=============================================================================================================================================================================================================================================

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

![image82](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).density
=========================================================================================================================================================================================================================================

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
      d := state.p/(data.R*state.T);
    end density;

* * * * *

![image83](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).specificEnthalpy
==================================================================================================================================================================================================================================================

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
      h := h_T(data,state.T);
    end specificEnthalpy;

* * * * *

![image84](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).specificInternalEnergy
========================================================================================================================================================================================================================================================

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
      u := h_T(data,state.T) - data.R*state.T;
    end specificInternalEnergy;

* * * * *

![image85](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).specificEntropy
=================================================================================================================================================================================================================================================

**Return specific entropy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions),
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
      extends Modelica.Icons.Function;
    algorithm 
      s := s0_T(data, state.T) - data.R*Modelica.Math.log(state.p/reference_p);
    end specificEntropy;

* * * * *

![image86](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).specificGibbsEnergy
=====================================================================================================================================================================================================================================================

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
      g := h_T(data,state.T) - state.T*specificEntropy(state);
    end specificGibbsEnergy;

* * * * *

![image87](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).specificHelmholtzEnergy
=========================================================================================================================================================================================================================================================

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
      f := h_T(data,state.T) - data.R*state.T - state.T*specificEntropy(state);
    end specificHelmholtzEnergy;

* * * * *

![image88](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).specificHeatCapacityCp
========================================================================================================================================================================================================================================================

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
      cp := cp_T(data, state.T);
    end specificHeatCapacityCp;

* * * * *

![image89](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).specificHeatCapacityCv
========================================================================================================================================================================================================================================================

**Compute specific heat capacity at constant volume from temperature and
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
      "Compute specific heat capacity at constant volume from temperature and gas data"
    algorithm 
      cv := cp_T(data, state.T) - data.R;
    end specificHeatCapacityCv;

* * * * *

![image90](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).isentropicExponent
====================================================================================================================================================================================================================================================

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

![image91](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).velocityOfSound
=================================================================================================================================================================================================================================================

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

    redeclare function extends velocityOfSound "Return velocity of sound"
      extends Modelica.Icons.Function;
    algorithm 
      a := sqrt(max(0,data.R*state.T*cp_T(data, state.T)/specificHeatCapacityCv(state)));
    end velocityOfSound;

* * * * *

![image92](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).isentropicEnthalpyApproximation
=================================================================================================================================================================================================================================================================

**approximate method of calculating h\_is from upstream properties and
downstream pressure**

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
  [Pressure](Modelica_SIunits.html#Mode p2           downstream pressure
  lica.SIunits.Pressure)                             [Pa]

  [ThermodynamicState](Modelica_Media_I stat         properties at upstream
  dealGases_Common_SingleGasNasa.html#M e            location
  odelica.Media.IdealGases.Common.Singl              
  eGasNasa.ThermodynamicState)                       

  Boolean                               excl exclude If true, enthalpy of
                                        Enth Enthalp formation Hf is not
                                        Form yOfForm included in specific
                                             ation   enthalpy h

  [ReferenceEnthalpy](Modelica_Media_In refC referen Choice of reference
  terfaces_PartialMedium_Choices.html#M hoic ceChoic enthalpy
  odelica.Media.Interfaces.PartialMediu e    e       
  m.Choices.ReferenceEnthalpy)                       

  [SpecificEnthalpy](Modelica_Media_Int h\_o h\_offs User defined offset
  erfaces_PartialMedium.html#Modelica.M ff   et      for reference
  edia.Interfaces.PartialMedium.Specifi              enthalpy, if
  cEnthalpy)                                         referenceChoice =
                                                     UserDefined [J/kg]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- ------------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelic h\_is isentropic
  a.SIunits.SpecificEnthalpy)                            enthalpy [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image93](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).isentropicEnthalpy
====================================================================================================================================================================================================================================================

**Return isentropic enthalpy**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy)
(Return isentropic enthalpy).

Inputs
------

  -------------------------------------------------------------------------
  Type                                  Name Default Description
  ------------------------------------- ---- ------- ----------------------
  Boolean                               excl exclude If true, enthalpy of
                                        Enth Enthalp formation Hf is not
                                        Form yOfForm included in specific
                                             ation   enthalpy h

  [ReferenceEnthalpy](Modelica_Media_In refC referen Choice of reference
  terfaces_PartialMedium_Choices.html#M hoic ceChoic enthalpy
  odelica.Media.Interfaces.PartialMediu e    e       
  m.Choices.ReferenceEnthalpy)                       

  [SpecificEnthalpy](Modelica_Media_Int h\_o h\_offs User defined offset
  erfaces_PartialMedium.html#Modelica.M ff   et      for reference
  edia.Interfaces.PartialMedium.Specifi              enthalpy, if
  cEnthalpy)                                         referenceChoice =
                                                     UserDefined [J/kg]

  [AbsolutePressure](Modelica_Media_Int p\_d         downstream pressure
  erfaces_PartialMedium.html#Modelica.M owns         [Pa]
  edia.Interfaces.PartialMedium.Absolut trea         
  ePressure)                            m            

  [ThermodynamicState](Modelica_Media_I refS         reference state for
  nterfaces_PartialMedium.html#Modelica tate         entropy
  .Media.Interfaces.PartialMedium.Therm              
  odynamicState)                                     
  -------------------------------------------------------------------------

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
    input Boolean exclEnthForm=excludeEnthalpyOfFormation 
        "If true, enthalpy of formation Hf is not included in specific enthalpy h";
    input ReferenceEnthalpy refChoice=referenceChoice 
        "Choice of reference enthalpy";
    input SpecificEnthalpy h_off=h_offset 
        "User defined offset for reference enthalpy, if referenceChoice = UserDefined";
    algorithm 
      h_is := isentropicEnthalpyApproximation(p_downstream,refState,exclEnthForm,refChoice,h_off);
    end isentropicEnthalpy;

* * * * *

![image94](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).isobaricExpansionCoefficient
==============================================================================================================================================================================================================================================================

**Returns overall the isobaric expansion coefficient beta**

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
      "Returns overall the isobaric expansion coefficient beta"
    algorithm 
      beta := 1/state.T;
    end isobaricExpansionCoefficient;

* * * * *

![image95](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).isothermalCompressibility
===========================================================================================================================================================================================================================================================

**Returns overall the isothermal compressibility factor**

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
      "Returns overall the isothermal compressibility factor"
    algorithm 
      kappa := 1.0/state.p;
    end isothermalCompressibility;

* * * * *

![image96](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).density\_derp\_T
==================================================================================================================================================================================================================================================

**Returns the partial derivative of density with respect to pressure at
constant temperature**

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
      "Returns the partial derivative of density with respect to pressure at constant temperature"
    algorithm 
      ddpT := 1/(state.T*data.R);
    end density_derp_T;

* * * * *

![image97](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).density\_derT\_p
==================================================================================================================================================================================================================================================

**Returns the partial derivative of density with respect to temperature
at constant pressure**

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
      "Returns the partial derivative of density with respect to temperature at constant pressure"
    algorithm 
      ddTp := -state.p/(state.T*state.T*data.R);
    end density_derT_p;

* * * * *

![image98](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).density\_derX
===============================================================================================================================================================================================================================================

**Returns the partial derivative of density with respect to mass
fractions at constant pressure and temperature**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derX)
(Return density derivative w.r.t. mass fraction).

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
  Type                                         Name  Description
  -------------------------------------------- ----- ----------------------
  [Density](Modelica_Media_Interfaces_PartialM dddX[ Derivative of density
  edium.html#Modelica.Media.Interfaces.Partial nX]   w.r.t. mass fraction
  Medium.Density)                                    [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends density_derX 
      "Returns the partial derivative of density with respect to mass fractions at constant pressure and temperature"
    algorithm 
      dddX := fill(0,nX);
    end density_derX;

* * * * *

![image99](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).cp\_T
=======================================================================================================================================================================================================================================

**Compute specific heat capacity at constant pressure from temperature
and gas data**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                                Name Defaul Descriptio
                                                           t      n
  --------------------------------------------------- ---- ------ ----------
  [DataRecord](Modelica_Media_IdealGases_Common.html# data        Ideal gas
  Modelica.Media.IdealGases.Common.DataRecord)                    data

  [Temperature](Modelica_SIunits.html#Modelica.SIunit T           Temperatur
  s.Temperature)                                                  e
                                                                  [K]
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                       Name Description
  ------------------------------------------ ---- -------------------------
  [SpecificHeatCapacity](Modelica_SIunits.ht cp   Specific heat capacity at
  ml#Modelica.SIunits.SpecificHeatCapacity)       temperature T [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image100](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).cp\_Tlow
===========================================================================================================================================================================================================================================

**Compute specific heat capacity at constant pressure, low T region**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                                Name Defaul Descriptio
                                                           t      n
  --------------------------------------------------- ---- ------ ----------
  [DataRecord](Modelica_Media_IdealGases_Common.html# data        Ideal gas
  Modelica.Media.IdealGases.Common.DataRecord)                    data

  [Temperature](Modelica_SIunits.html#Modelica.SIunit T           Temperatur
  s.Temperature)                                                  e
                                                                  [K]
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                       Name Description
  ------------------------------------------ ---- -------------------------
  [SpecificHeatCapacity](Modelica_SIunits.ht cp   Specific heat capacity at
  ml#Modelica.SIunits.SpecificHeatCapacity)       temperature T [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image101](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).cp\_Tlow\_der
================================================================================================================================================================================================================================================

**Compute specific heat capacity at constant pressure, low T region**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                             Name Defau Description
                                                        lt    
  ------------------------------------------------ ---- ----- ------------
  [DataRecord](Modelica_Media_IdealGases_Common.ht data       Ideal gas
  ml#Modelica.Media.IdealGases.Common.DataRecord)             data

  [Temperature](Modelica_SIunits.html#Modelica.SIu T          Temperature
  nits.Temperature)                                           [K]

  Real                                             dT         Temperature
                                                              derivative
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name         Description
  --------- ------------ -----------------------------------------
  Real      cp\_der      Derivative of specific heat capacity

Modelica definition
-------------------

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

* * * * *

![image102](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).h\_T
=======================================================================================================================================================================================================================================

**Compute specific enthalpy from temperature and gas data; reference is
decided by the refChoice input, or by the referenceChoice package
constant by default**

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
  [DataRecord](Modelica_Media_IdealGase data         Ideal gas data
  s_Common.html#Modelica.Media.IdealGas              
  es.Common.DataRecord)                              

  [Temperature](Modelica_SIunits.html#M T            Temperature [K]
  odelica.SIunits.Temperature)                       

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

* * * * *

![image103](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).h\_T\_der
============================================================================================================================================================================================================================================

**derivative function for h\_T**

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
  [DataRecord](Modelica_Media_IdealGase data         Ideal gas data
  s_Common.html#Modelica.Media.IdealGas              
  es.Common.DataRecord)                              

  [Temperature](Modelica_SIunits.html#M T            Temperature [K]
  odelica.SIunits.Temperature)                       

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
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- ---------------------------------------
  Real      h\_der      Specific enthalpy at temperature T

Modelica definition
-------------------

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

* * * * *

![image104](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).h\_Tlow
==========================================================================================================================================================================================================================================

**Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default**

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
  [DataRecord](Modelica_Media_IdealGase data         Ideal gas data
  s_Common.html#Modelica.Media.IdealGas              
  es.Common.DataRecord)                              

  [Temperature](Modelica_SIunits.html#M T            Temperature [K]
  odelica.SIunits.Temperature)                       

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

* * * * *

![image105](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).h\_Tlow\_der
===============================================================================================================================================================================================================================================

**Compute specific enthalpy, low T region; reference is decided by the
refChoice input, or by the referenceChoice package constant by default**

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
  [DataRecord](Modelica_Media_IdealGase data         Ideal gas data
  s_Common.html#Modelica.Media.IdealGas              
  es.Common.DataRecord)                              

  [Temperature](Modelica_SIunits.html#M T            Temperature [K]
  odelica.SIunits.Temperature)                       

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
                                                     [K/s]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type    Name      Description
  ------- --------- ------------------------------------------------------
  Real    h\_der    Derivative of specific enthalpy at temperature T
                    [J/(kg.s)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image106](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).s0\_T
========================================================================================================================================================================================================================================

**Compute specific entropy from temperature and gas data**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                                Name Defaul Descriptio
                                                           t      n
  --------------------------------------------------- ---- ------ ----------
  [DataRecord](Modelica_Media_IdealGases_Common.html# data        Ideal gas
  Modelica.Media.IdealGases.Common.DataRecord)                    data

  [Temperature](Modelica_SIunits.html#Modelica.SIunit T           Temperatur
  s.Temperature)                                                  e
                                                                  [K]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                      Name Description
  ----------------------------------------- ---- -------------------------
  [SpecificEntropy](Modelica_SIunits.html#M s    Specific entropy at
  odelica.SIunits.SpecificEntropy)               temperature T [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image107](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).s0\_Tlow
===========================================================================================================================================================================================================================================

**Compute specific entropy, low T region**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                                Name Defaul Descriptio
                                                           t      n
  --------------------------------------------------- ---- ------ ----------
  [DataRecord](Modelica_Media_IdealGases_Common.html# data        Ideal gas
  Modelica.Media.IdealGases.Common.DataRecord)                    data

  [Temperature](Modelica_SIunits.html#Modelica.SIunit T           Temperatur
  s.Temperature)                                                  e
                                                                  [K]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                      Name Description
  ----------------------------------------- ---- -------------------------
  [SpecificEntropy](Modelica_SIunits.html#M s    Specific entropy at
  odelica.SIunits.SpecificEntropy)               temperature T [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image108](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).dynamicViscosityLowPressure
==============================================================================================================================================================================================================================================================

**Dynamic viscosity of low pressure gases**

Information
-----------

::

The used formula are based on the method of Chung et al (1984, 1988)
referred to in ref [1] chapter 9. The formula 9-4.10 is the one being
used. The Formula is given in non-SI units, the follwong onversion
constants were used to transform the formula to SI units:

-   **Const1\_SI:** The factor 10\^(-9.5) =10\^(-2.5)\*1e-7 where the
    factor 10\^(-2.5) originates from the conversion of g/mol-\>kg/mol +
    cm\^3/mol-\>m\^3/mol and the factor 1e-7 is due to conversionfrom
    microPoise-\>Pa.s.
-   **Const2\_SI:** The factor 1/3.335641e-27 = 1e-3/3.335641e-30 where
    the factor 3.335641e-30 comes from debye-\>C.m and 1e-3 is due to
    conversion from cm\^3/mol-\>m\^3/mol

### References:

[1] Bruce E. Poling, John E. Prausnitz, John P. O'Connell, "The
Properties of Gases and Liquids" 5th Ed. Mc Graw Hill.

### Author

T.  Skoglund, Lund, Sweden, 2004-08-31

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                          Nam Defa Description
                                                e   ult  
  --------------------------------------------- --- ---- -------------------
  [Temp\_K](Modelica_SIunits.html#Modelica.SIun T        Gas temperature [K]
  its.Temp_K)                                            

  [Temp\_K](Modelica_SIunits.html#Modelica.SIun Tc       Critical
  its.Temp_K)                                            temperature of gas
                                                         [K]

  [MolarMass](Modelica_SIunits.html#Modelica.SI M        Molar mass of gas
  units.MolarMass)                                       [kg/mol]

  [MolarVolume](Modelica_SIunits.html#Modelica. Vc       Critical molar
  SIunits.MolarVolume)                                   volume of gas
                                                         [m3/mol]

  Real                                          w        Acentric factor of
                                                         gas

  [DipoleMoment](Modelica_Media_Interfaces_Part mu       Dipole moment of
  ialMedium.html#Modelica.Media.Interfaces.Part          gas molecule
  ialMedium.DipoleMoment)                                [debye]

  Real                                          k   0.0  Special correction
                                                         for highly polar
                                                         substances
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                           Name  Description
  ---------------------------------------------- ----- --------------------
  [DynamicViscosity](Modelica_SIunits.html#Model eta   Dynamic viscosity of
  ica.SIunits.DynamicViscosity)                        gas [Pa.s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image109](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).dynamicViscosity
===================================================================================================================================================================================================================================================

**dynamic viscosity**

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

* * * * *

![image110](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).thermalConductivityEstimate
==============================================================================================================================================================================================================================================================

**Thermal conductivity of polyatomic gases(Eucken and Modified Eucken
correlation)**

Information
-----------

::

This function provides two similar methods for estimating the thermal
conductivity of polyatomic gases. The Eucken method (input method == 1)
gives good results for low temperatures, but it tends to give an
underestimated value of the thermal conductivity (lambda) at higher
temperatures. The Modified Eucken method (input method == 2) gives good
results for high-temperatures, but it tends to give an overestimated
value of the thermal conductivity (lambda) at low temperatures.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                            Nam Defa Description
                                                  e   ult  
  ----------------------------------------------- --- ---- ----------------
  [SpecificHeatCapacity](Modelica_Media_Interface Cp       Constant
  s_PartialMedium.html#Modelica.Media.Interfaces.          pressure heat
  PartialMedium.SpecificHeatCapacity)                      capacity
                                                           [J/(kg.K)]

  [DynamicViscosity](Modelica_Media_Interfaces_Pa eta      Dynamic
  rtialMedium.html#Modelica.Media.Interfaces.Part          viscosity [Pa.s]
  ialMedium.DynamicViscosity)                              

  Integer                                         met 1    1: Eucken
                                                  hod      Method, 2:
                                                           Modified Eucken
                                                           Method
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                               Name Description
  -------------------------------------------------- ---- -----------------
  [ThermalConductivity](Modelica_Media_Interfaces_Pa lamb Thermal
  rtialMedium.html#Modelica.Media.Interfaces.Partial da   conductivity
  Medium.ThermalConductivity)                             [W/(m.k)]
                                                          [W/(m.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image111](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).thermalConductivity
======================================================================================================================================================================================================================================================

**thermal conductivity of gas**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.thermalConductivity)
(Return thermal conductivity).

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Nam Defa Description
                                                 e   ult  
  ---------------------------------------------- --- ---- -----------------
  Integer                                        met 1    1: Eucken Method,
                                                 hod      2: Modified
                                                          Eucken Method

  [ThermodynamicState](Modelica_Media_Interfaces sta      thermodynamic
  _PartialMedium.html#Modelica.Media.Interfaces. te       state record
  PartialMedium.ThermodynamicState)                       
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

    redeclare replaceable function extends thermalConductivity 
      "thermal conductivity of gas"
      input Integer method=1 "1: Eucken Method, 2: Modified Eucken Method";
    algorithm 
      assert(fluidConstants[1].hasCriticalData,
      "Failed to compute thermalConductivity: For the species \"" + mediumName + "\" no critical data is available.");
      lambda := thermalConductivityEstimate(specificHeatCapacityCp(state),
        dynamicViscosity(state), method=method);
    end thermalConductivity;

* * * * *

![image112](Modelica.Media.IdealGases.Common.SingleGasNasa.setState_pTXI.png) [Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).molarMass
============================================================================================================================================================================================================================================

**return the molar mass of the medium**

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

    redeclare function extends molarMass 
      "return the molar mass of the medium"
    algorithm 
      MM := data.MM;
    end molarMass;

* * * * *

[Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).T\_h
=========================================================================================================================================================

**Compute temperature from specific enthalpy**

Inputs
------

  ------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- -----------
  [SpecificEnthalpy](Modelica_Media_Interfaces_Partia h        Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          enthalpy
  m.SpecificEnthalpy)                                          [J/kg]
  ------------------------------------------------------------------------

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

* * * * *

[Modelica.Media.IdealGases.Common.SingleGasNasa](Modelica_Media_IdealGases_Common_SingleGasNasa.html#Modelica.Media.IdealGases.Common.SingleGasNasa).T\_ps
==========================================================================================================================================================

**Compute temperature from pressure and specific entropy**

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Defa Description
                                                     e   ult  
  -------------------------------------------------- --- ---- ------------
  [AbsolutePressure](Modelica_Media_Interfaces_Parti p        Pressure
  alMedium.html#Modelica.Media.Interfaces.PartialMed          [Pa]
  ium.AbsolutePressure)                                       

  [SpecificEntropy](Modelica_Media_Interfaces_Partia s        Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMedi          entropy
  um.SpecificEntropy)                                         [J/(kg.K)]
  ------------------------------------------------------------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:32 2010.
