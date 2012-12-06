========================================
Modelica.Media.Incompressible.TableBased
========================================

`Modelica.Media.Incompressible <Modelica_Media_Incompressible.html#Modelica.Media.Incompressible>`_.TableBased
--------------------------------------------------------------------------------------------------------------

**Incompressible medium properties based on tables**

Information
~~~~~~~~~~~

::

This is the base package for medium models of incompressible fluids
based on tables. The minimal data to provide for a useful medium
description is tables of density and heat capacity as functions of
temperature.

It should be noted that incompressible media only have 1 state per
control volume (usually T), but have both T and p as inputs for fully
correct properties. The error of using only T-dependent properties is
small, therefore a Boolean flag enthalpyOfT exists. If it is true, the
enumeration Choices.independentVariables is set to
Choices.independentVariables.T otherwise it is set to
Choices.independentVariables.pT.

Using the package TableBased
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To implement a new medium model, create a package that **extends**
TableBased and provides one or more of the constant tables:

::

    tableDensity        = [T, d];
    tableHeatCapacity   = [T, Cp];
    tableConductivity   = [T, lam];
    tableViscosity      = [T, eta];
    tableVaporPressure  = [T, pVap];

The table data is used to fit constant polynomials of order **npol**,
the temperature data points do not need to be same for different
properties. Properties like enthalpy, inner energy and entropy are
calculated consistently from integrals and derivatives of d(T) and
Cp(T). The minimal data for a useful medium model is thus density and
heat capacity. Transport properties and vapor pressure are optional, if
the data tables are empty the corresponding function calls can not be
used.

::

Extends from
`Modelica.Media.Interfaces.PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_
(Partial medium properties (base package of all media packages)).

Package Content
~~~~~~~~~~~~~~~

Name

Description

enthalpyOfT=true

true if enthalpy is approximated as a function of T only, (p-dependence
neglected)

densityOfT=size(tableDensity, 1) > 1

true if density is a function of temperature

T\_min

Minimum temperature valid for medium model

T\_max

Maximum temperature valid for medium model

T0=273.15

reference Temperature

h0=0

reference enthalpy at T0, reference\_p

s0=0

reference entropy at T0, reference\_p

MM\_const=0.1

Molar mass

npol=2

degree of polynomial used for fitting

neta=size(tableViscosity, 1)

number of data points for viscosity

tableDensity

Table for rho(T)

tableHeatCapacity

Table for Cp(T)

tableViscosity

Table for eta(T)

tableVaporPressure

Table for pVap(T)

tableConductivity

Table for lambda(T)

TinK

true if T[K],Kelvin used for table temperatures

hasDensity=not (size(tableDensity, 1) == 0)

true if table tableDensity is present

hasHeatCapacity=not (size(tableHeatCapacity, 1) == 0)

true if table tableHeatCapacity is present

hasViscosity=not (size(tableViscosity, 1) == 0)

true if table tableViscosity is present

hasVaporPressure=not (size(tableVaporPressure, 1) == 0)

true if table tableVaporPressure is present

invTK=if size(tableViscosity, 1) > 0 then invertTemp(tableViscosity[:,
1], TinK) else fill(0, 0)

poly\_rho=if hasDensity then Poly.fitting(tableDensity[:, 1],
tableDensity[:, 2], npol) else zeros(npol + 1)

poly\_Cp=if hasHeatCapacity then Poly.fitting(tableHeatCapacity[:, 1],
tableHeatCapacity[:, 2], npol) else zeros(npol + 1)

poly\_eta=if hasViscosity then Poly.fitting(invTK,
Math.log(tableViscosity[:, 2]), npol) else zeros(npol + 1)

poly\_pVap=if hasVaporPressure then Poly.fitting(tableVaporPressure[:,
1], tableVaporPressure[:, 2], npol) else zeros(npol + 1)

poly\_lam=if size(tableConductivity, 1) > 0 then
Poly.fitting(tableConductivity[:, 1], tableConductivity[:, 2], npol)
else zeros(npol + 1)

|Modelica.Media.Incompressible.TableBased.invertTemp|
`invertTemp <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.invertTemp>`_

function to invert temperatures

|Modelica.Media.Incompressible.TableBased.BaseProperties|
`BaseProperties <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.BaseProperties>`_

Base properties of T dependent medium

|Modelica.Media.Incompressible.TableBased.setState\_pTX|
`setState\_pTX <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_pTX>`_

Returns state record, given pressure and temperature

|Modelica.Media.Incompressible.TableBased.setState\_dTX|
`setState\_dTX <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_dTX>`_

Returns state record, given pressure and temperature

|Modelica.Media.Incompressible.TableBased.setState\_pT|
`setState\_pT <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_pT>`_

returns state record as function of p and T

|Modelica.Media.Incompressible.TableBased.setState\_phX|
`setState\_phX <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_phX>`_

Returns state record, given pressure and specific enthalpy

|Modelica.Media.Incompressible.TableBased.setState\_ph|
`setState\_ph <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_ph>`_

returns state record as function of p and h

|Modelica.Media.Incompressible.TableBased.setState\_psX|
`setState\_psX <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_psX>`_

Returns state record, given pressure and specific entropy

|Modelica.Media.Incompressible.TableBased.setState\_ps|
`setState\_ps <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_ps>`_

returns state record as function of p and s

|Modelica.Media.Incompressible.TableBased.setSmoothState|
`setSmoothState <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

|Modelica.Media.Incompressible.TableBased.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.specificHeatCapacityCv>`_

Specific heat capacity at constant volume (or pressure) of medium

|Modelica.Media.Incompressible.TableBased.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.specificHeatCapacityCp>`_

Specific heat capacity at constant volume (or pressure) of medium

|Modelica.Media.Incompressible.TableBased.dynamicViscosity|
`dynamicViscosity <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.dynamicViscosity>`_

Return dynamic viscosity as a function of the thermodynamic state record

|Modelica.Media.Incompressible.TableBased.thermalConductivity|
`thermalConductivity <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.thermalConductivity>`_

Return thermal conductivity as a function of the thermodynamic state
record

|Modelica.Media.Incompressible.TableBased.s\_T|
`s\_T <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.s_T>`_

compute specific entropy

|Modelica.Media.Incompressible.TableBased.specificEntropy|
`specificEntropy <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.specificEntropy>`_

Return specific entropy as a function of the thermodynamic state record

|Modelica.Media.Incompressible.TableBased.h\_T|
`h\_T <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.h_T>`_

Compute specific enthalpy from temperature

|Modelica.Media.Incompressible.TableBased.h\_T\_der|
`h\_T\_der <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.h_T_der>`_

Compute specific enthalpy from temperature

|Modelica.Media.Incompressible.TableBased.h\_pT|
`h\_pT <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.h_pT>`_

Compute specific enthalpy from pressure and temperature

|Modelica.Media.Incompressible.TableBased.density\_T|
`density\_T <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.density_T>`_

Return density as function of temperature

|Modelica.Media.Incompressible.TableBased.temperature|
`temperature <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.temperature>`_

Return temperature as a function of the thermodynamic state record

|Modelica.Media.Incompressible.TableBased.pressure|
`pressure <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.pressure>`_

Return pressure as a function of the thermodynamic state record

|Modelica.Media.Incompressible.TableBased.density|
`density <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.density>`_

Return density as a function of the thermodynamic state record

|Modelica.Media.Incompressible.TableBased.specificEnthalpy|
`specificEnthalpy <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.specificEnthalpy>`_

Return specific enthalpy as a function of the thermodynamic state record

|Modelica.Media.Incompressible.TableBased.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.specificInternalEnergy>`_

Return specific internal energy as a function of the thermodynamic state
record

|Modelica.Media.Incompressible.TableBased.T\_ph|
`T\_ph <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.T_ph>`_

Compute temperature from pressure and specific enthalpy

|Modelica.Media.Incompressible.TableBased.T\_ps|
`T\_ps <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.T_ps>`_

Compute temperature from pressure and specific enthalpy

|Modelica.Media.Incompressible.TableBased.Polynomials\_Temp|
`Polynomials\_Temp <Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp>`_

Temporary Functions operating on polynomials (including polynomial
fitting); only to be used in Modelica.Media.Incompressible.TableBased

Inherited

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

|Modelica.Media.Interfaces.PartialMedium.FluidConstants|
`FluidConstants <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants>`_

critical, triple, molecular and other standard data of fluid

|Modelica.Media.Interfaces.PartialMedium.ThermodynamicState|
`ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_

Minimal variable set that is available as input argument to every medium
function

|Modelica.Media.Interfaces.PartialMedium.prandtlNumber|
`prandtlNumber <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.prandtlNumber>`_

Return the Prandtl number

|Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy>`_

Return specific Gibbs energy

|Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy>`_

Return specific Helmholtz energy

|Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp|
`heatCapacity\_cp <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cp>`_

alias for deprecated name

|Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv|
`heatCapacity\_cv <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cv>`_

alias for deprecated name

|Modelica.Media.Interfaces.PartialMedium.isentropicExponent|
`isentropicExponent <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicExponent>`_

Return isentropic exponent

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

      constant Boolean enthalpyOfT=true 
      "true if enthalpy is approximated as a function of T only, (p-dependence neglected)";

::

      constant Boolean densityOfT = size(tableDensity,1) > 1 
      "true if density is a function of temperature";

::

      constant Temperature T_min "Minimum temperature valid for medium model";

::

      constant Temperature T_max "Maximum temperature valid for medium model";

::

      constant Temperature T0=273.15 "reference Temperature";

::

      constant SpecificEnthalpy h0=0 "reference enthalpy at T0, reference_p";

::

      constant SpecificEntropy s0=0 "reference entropy at T0, reference_p";

::

      constant MolarMass MM_const=0.1 "Molar mass";

::

      constant Integer npol=2 "degree of polynomial used for fitting";

::

      constant Integer neta=size(tableViscosity,1) 
      "number of data points for viscosity";

::

      constant Real[:,2] tableDensity "Table for rho(T)";

::

      constant Real[:,2] tableHeatCapacity "Table for Cp(T)";

::

      constant Real[:,2] tableViscosity "Table for eta(T)";

::

      constant Real[:,2] tableVaporPressure "Table for pVap(T)";

::

      constant Real[:,2] tableConductivity "Table for lambda(T)";

::

      constant Boolean TinK "true if T[K],Kelvin used for table temperatures";

::

      constant Boolean hasDensity = not (size(tableDensity,1)==0) 
      "true if table tableDensity is present";

::

      constant Boolean hasHeatCapacity = not (size(tableHeatCapacity,1)==0) 
      "true if table tableHeatCapacity is present";

::

      constant Boolean hasViscosity = not (size(tableViscosity,1)==0) 
      "true if table tableViscosity is present";

::

      constant Boolean hasVaporPressure = not (size(tableVaporPressure,1)==0) 
      "true if table tableVaporPressure is present";

::

      final constant Real invTK[neta] = if size(tableViscosity,1) > 0 then 
          invertTemp(tableViscosity[:,1],TinK) else fill(0,0);

::

      final constant Real poly_rho[:] = if hasDensity then 
                                           Poly.fitting(tableDensity[:,1],tableDensity[:,2],npol) else 
                                             zeros(npol+1);

::

      final constant Real poly_Cp[:] = if hasHeatCapacity then 
                                           Poly.fitting(tableHeatCapacity[:,1],tableHeatCapacity[:,2],npol) else 
                                             zeros(npol+1);

::

      final constant Real poly_eta[:] = if hasViscosity then 
                                           Poly.fitting(invTK, Math.log(tableViscosity[:,2]),npol) else 
                                             zeros(npol+1);

::

      final constant Real poly_pVap[:] = if hasVaporPressure then 
                                           Poly.fitting(tableVaporPressure[:,1],tableVaporPressure[:,2],npol) else 
                                              zeros(npol+1);

::

      final constant Real poly_lam[:] = if size(tableConductivity,1)>0 then 
                                           Poly.fitting(tableConductivity[:,1],tableConductivity[:,2],npol) else 
                                             zeros(npol+1);

--------------

`Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.invertTemp
-----------------------------------------------------------------------------------------------------------------------------------------------

**function to invert temperatures**

Inputs
~~~~~~

+-----------+------------+-----------+------------------------------+
| Type      | Name       | Default   | Description                  |
+===========+============+===========+==============================+
| Real      | table[:]   |           | table temperature data       |
+-----------+------------+-----------+------------------------------+
| Boolean   | Tink       |           | flag for Celsius or Kelvin   |
+-----------+------------+-----------+------------------------------+

Outputs
~~~~~~~

+--------+----------------------------+-------------------------+
| Type   | Name                       | Description             |
+========+============================+=========================+
| Real   | invTable[size(table, 1)]   | inverted temperatures   |
+--------+----------------------------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function invertTemp "function to invert temperatures"
      input Real[:] table "table temperature data";
      input Boolean Tink "flag for Celsius or Kelvin";
      output Real invTable[size(table,1)] "inverted temperatures";
    algorithm 
      for i in 1:size(table,1) loop
        invTable[i] := if TinK then 1/table[i] else 1/Cv.from_degC(table[i]);
      end for;
    end invertTemp;

--------------

|image57| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.BaseProperties
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base properties of T dependent medium**

Information
~~~~~~~~~~~

::

Note that the inner energy neglects the pressure dependence, which is
only true for an incompressible medium with d = constant. The neglected
term is p-reference\_p)/rho\*(T/rho)\*(partial rho /partial T). This is
very small for liquids due to proportionality to 1/d^2, but can be
problematic for gases that are modeled incompressible.

It should be noted that incompressible media only have 1 state per
control volume (usually T), but have both T and p as inputs for fully
correct properties. The error of using only T-dependent properties is
small, therefore a Boolean flag enthalpyOfT exists. If it is true, the
enumeration Choices.independentVariables is set to
Choices.independentVariables.T otherwise it is set to
Choices.independentVariables.pT.

Enthalpy is never a function of T only (h = h(T) + (p-reference\_p)/d),
but the error is also small and non-linear systems can be avoided. In
particular, non-linear systems are small and local as opposed to large
and over all volumes.

Entropy is calculated as

::

      s = s0 + integral(Cp(T)/T,dt)

which is only exactly true for a fluid with constant density d=d0.

::

          

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.BaseProperties>`_
(Base properties (p, d, T, h, u, R, MM and, if applicable, X and Xi) of
a medium).

Parameters
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+---------------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name                      | Default         | Description                                                                                       |
+========================================================================================================================+===========================+=================+===================================================================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                    | T\_start                  | 298.15          | initial temperature [K]                                                                           |
+------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+---------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                | standardOrderComponents   | true            | if true, and reducedX = true, the last element of X will be computed from the other ones          |
+------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+---------------------------------------------------------------------------------------------------+
| `Pressure\_bar <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Pressure_bar>`_   | p\_bar                    | Cv.to\_bar(p)   | Absolute pressure of medium in [bar] [bar]                                                        |
+------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+---------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                           |
+------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+---------------------------------------------------------------------------------------------------+
| Boolean                                                                                                                | preferredMediumStates     | false           | = true if StateSelect.prefer shall be used for the independent property variables of the medium   |
+------------------------------------------------------------------------------------------------------------------------+---------------------------+-----------------+---------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare model extends BaseProperties(
      final standardOrderComponents=true,
      p_bar=Cv.to_bar(p),
      T_degC(start = T_start-273.15)=Cv.to_degC(T),
      T(start = T_start,
        stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default)) 
      "Base properties of T dependent medium"
    //  redeclare parameter SpecificHeatCapacity R=Modelica.Constants.R,

      SI.SpecificHeatCapacity cp "specific heat capacity";
      parameter SI.Temperature T_start = 298.15 "initial temperature";
    equation 
      assert(hasDensity,"Medium " + mediumName +
                        " can not be used without assigning tableDensity.");
      assert(T >= T_min and T <= T_max, "Temperature T (= " + String(T) +
             " K) is not in the allowed range (" + String(T_min) +
             " K <= T <= " + String(T_max) + " K) required from medium model \""
             + mediumName + "\".");
      R = Modelica.Constants.R;
      cp = Poly.evaluate(poly_Cp,if TinK then T else T_degC);
      h = if enthalpyOfT then h_T(T) else  h_pT(p,T,densityOfT);
      if singleState then
        u = h_T(T) - reference_p/d;
      else
        u = h - p/d;
      end if;
      d = Poly.evaluate(poly_rho,if TinK then T else T_degC);
      state.T = T;
      state.p = p;
      MM = MM_const;
    end BaseProperties;

--------------

|image58| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.setState\_pTX
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Returns state record, given pressure and temperature**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_pTX>`_
(Return thermodynamic state as function of p, T and composition X or
Xi).

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

+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                              | Name    | Description                  |
+===================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends setState_pTX 
      "Returns state record, given pressure and temperature"
    algorithm 
      state := ThermodynamicState(p=p,T=T);
    end setState_pTX;

--------------

|image59| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.setState\_dTX
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Returns state record, given pressure and temperature**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_dTX>`_
(Return thermodynamic state as function of d, T and composition X or
Xi).

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

+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                              | Name    | Description                  |
+===================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends setState_dTX 
      "Returns state record, given pressure and temperature"
    algorithm 
      assert(false, "for incompressible media with d(T) only, state can not be set from density and temperature");
    end setState_dTX;

--------------

`Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.setState\_pT
-------------------------------------------------------------------------------------------------------------------------------------------------

**returns state record as function of p and T**

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                                          | Name   | Default   | Description       |
+===============================================================================================================================+========+===========+===================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | pressure [Pa]     |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_             | T      |           | temperature [K]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------------------+
| Type                                                                                                                              | Name    | Description           |
+===================================================================================================================================+=========+=======================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | thermodynamic state   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function setState_pT "returns state record as function of p and T"
      input AbsolutePressure p "pressure";
      input Temperature T "temperature";
      output ThermodynamicState state "thermodynamic state";
    algorithm 
      state.T := T;
      state.p := p;
    end setState_pT;

--------------

|image60| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.setState\_phX
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Returns state record, given pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_phX>`_
(Return thermodynamic state as function of p, h and composition X or
Xi).

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

+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                              | Name    | Description                  |
+===================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends setState_phX 
      "Returns state record, given pressure and specific enthalpy"
    algorithm 
      state :=ThermodynamicState(p=p,T=T_ph(p,h));
    end setState_phX;

--------------

`Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.setState\_ph
-------------------------------------------------------------------------------------------------------------------------------------------------

**returns state record as function of p and h**

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                                                          | Name   | Default   | Description                |
+===============================================================================================================================+========+===========+============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------------------+
| Type                                                                                                                              | Name    | Description           |
+===================================================================================================================================+=========+=======================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | thermodynamic state   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function setState_ph "returns state record as function of p and h"
      input AbsolutePressure p "pressure";
      input SpecificEnthalpy h "specific enthalpy";
      output ThermodynamicState state "thermodynamic state";
    algorithm 
      state :=ThermodynamicState(p=p,T=T_ph(p,h));
    end setState_ph;

--------------

|image61| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.setState\_psX
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Returns state record, given pressure and specific entropy**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_psX>`_
(Return thermodynamic state as function of p, s and composition X or
Xi).

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

+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                              | Name    | Description                  |
+===================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends setState_psX 
      "Returns state record, given pressure and specific entropy"
    algorithm 
      state :=ThermodynamicState(p=p,T=T_ps(p,s));
    end setState_psX;

--------------

`Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.setState\_ps
-------------------------------------------------------------------------------------------------------------------------------------------------

**returns state record as function of p and s**

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| Type                                                                                                                          | Name   | Default   | Description                   |
+===============================================================================================================================+========+===========+===============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | pressure [Pa]                 |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_     | s      |           | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------------------+
| Type                                                                                                                              | Name    | Description           |
+===================================================================================================================================+=========+=======================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | state   | thermodynamic state   |
+-----------------------------------------------------------------------------------------------------------------------------------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function setState_ps "returns state record as function of p and s"
      input AbsolutePressure p "pressure";
      input SpecificEntropy s "specific entropy";
      output ThermodynamicState state "thermodynamic state";
    algorithm 
      state :=ThermodynamicState(p=p,T=T_ps(p,s));
    end setState_ps;

--------------

|image62| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.setSmoothState
-------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      state :=ThermodynamicState(p=Media.Common.smoothStep(x, state_a.p, state_b.p, x_small),
                                 T=Media.Common.smoothStep(x, state_a.T, state_b.T, x_small));
    end setSmoothState;

--------------

|image63| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.specificHeatCapacityCv
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Specific heat capacity at constant volume (or pressure) of medium**

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
      "Specific heat capacity at constant volume (or pressure) of medium"

    algorithm 
      assert(hasHeatCapacity,"Specific Heat Capacity, Cv, is not defined for medium "
                                             + mediumName + ".");
      cv := Poly.evaluate(poly_Cp,if TinK then state.T else state.T - 273.15);
    end specificHeatCapacityCv;

--------------

|image64| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.specificHeatCapacityCp
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Specific heat capacity at constant volume (or pressure) of medium**

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
      "Specific heat capacity at constant volume (or pressure) of medium"

    algorithm 
      assert(hasHeatCapacity,"Specific Heat Capacity, Cv, is not defined for medium "
                                             + mediumName + ".");
      cp := Poly.evaluate(poly_Cp,if TinK then state.T else state.T - 273.15);
    end specificHeatCapacityCp;

--------------

|image65| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.dynamicViscosity
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return dynamic viscosity as a function of the thermodynamic state
record**

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

    redeclare function extends dynamicViscosity 
      "Return dynamic viscosity as a function of the thermodynamic state record"

    algorithm 
      assert(size(tableViscosity,1)>0,"DynamicViscosity, eta, is not defined for medium "
                                             + mediumName + ".");
      eta := Math.exp(Poly.evaluate(poly_eta, 1/state.T));
    end dynamicViscosity;

--------------

|image66| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.thermalConductivity
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermal conductivity as a function of the thermodynamic state
record**

Information
~~~~~~~~~~~

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
      "Return thermal conductivity as a function of the thermodynamic state record"

    algorithm 
      assert(size(tableConductivity,1)>0,"ThermalConductivity, lambda, is not defined for medium "
                                             + mediumName + ".");
      lambda := Poly.evaluate(poly_lam,if TinK then state.T else Cv.to_degC(state.T));
    end thermalConductivity;

--------------

`Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.s\_T
-----------------------------------------------------------------------------------------------------------------------------------------

**compute specific entropy**

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                                | Name   | Default   | Description       |
+=====================================================================================================================+========+===========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      |           | temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                                                                        | Name   | Description                   |
+=============================================================================================================================+========+===============================+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_   | s      | specific entropy [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function s_T "compute specific entropy"
      input Temperature T "temperature";
      output SpecificEntropy s "specific entropy";
    algorithm 
      s := s0 + (if TinK then 
        Poly.integralValue(poly_Cp[1:npol],T, T0) else 
        Poly.integralValue(poly_Cp[1:npol],Cv.to_degC(T),Cv.to_degC(T0)))
        + Modelica.Math.log(T/T0)*
        Poly.evaluate(poly_Cp,if TinK then 0 else Modelica.Constants.T_zero);
    end s_T;

--------------

|image67| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.specificEntropy
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific entropy as a function of the thermodynamic state
record**

Information
~~~~~~~~~~~

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

    redeclare function extends specificEntropy "Return specific entropy
     as a function of the thermodynamic state record"

    protected 
      Integer npol=size(poly_Cp,1)-1;
    algorithm 
      assert(hasHeatCapacity,"Specific Entropy, s(T), is not defined for medium "
                                             + mediumName + ".");
      s := s_T(state.T);
    end specificEntropy;

--------------

|image68| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.h\_T
---------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific enthalpy from temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                  | Name   | Default   | Description       |
+=======================================================================+========+===========+===================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | Temperature [K]   |
+-----------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                            | Name   | Description                        |
+=================================================================================+========+====================================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | Specific enthalpy at p, T [J/kg]   |
+---------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function h_T "Compute specific enthalpy from temperature"
      annotation(derivative=h_T_der);
      import Modelica.SIunits.Conversions.to_degC;
      extends Modelica.Icons.Function;
      input SI.Temperature T "Temperature";
      output SI.SpecificEnthalpy h "Specific enthalpy at p, T";
    algorithm 
      h :=h0 + Poly.integralValue(poly_Cp, if TinK then T else Cv.to_degC(T), if TinK then 
      T0 else Cv.to_degC(T0));
    end h_T;

--------------

|image69| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.h\_T\_der
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific enthalpy from temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+--------------------------+
| Type                                                                  | Name   | Default   | Description              |
+=======================================================================+========+===========+==========================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | Temperature [K]          |
+-----------------------------------------------------------------------+--------+-----------+--------------------------+
| Real                                                                  | dT     |           | temperature derivative   |
+-----------------------------------------------------------------------+--------+-----------+--------------------------+

Outputs
~~~~~~~

+--------+--------+----------------------------------------+
| Type   | Name   | Description                            |
+========+========+========================================+
| Real   | dh     | derivative of Specific enthalpy at T   |
+--------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function h_T_der "Compute specific enthalpy from temperature"
      import Modelica.SIunits.Conversions.to_degC;
      extends Modelica.Icons.Function;
      input SI.Temperature T "Temperature";
      input Real dT "temperature derivative";
      output Real dh "derivative of Specific enthalpy at T";
    algorithm 
      dh :=Poly.evaluate(poly_Cp, if TinK then T else Cv.to_degC(T))*dT;
    end h_T_der;

--------------

|image70| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.h\_pT
----------------------------------------------------------------------------------------------------------------------------------------------------

**Compute specific enthalpy from pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------+
| Type                                                                  | Name         | Default   | Description                                                    |
+=======================================================================+==============+===========+================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p            |           | Pressure [Pa]                                                  |
+-----------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T            |           | Temperature [K]                                                |
+-----------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------+
| Boolean                                                               | densityOfT   | false     | include or neglect density derivative dependence of enthalpy   |
+-----------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                            | Name   | Description                        |
+=================================================================================+========+====================================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | Specific enthalpy at p, T [J/kg]   |
+---------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function h_pT 
      "Compute specific enthalpy from pressure and temperature"
      import Modelica.SIunits.Conversions.to_degC;
      extends Modelica.Icons.Function;
      input SI.Pressure p "Pressure";
      input SI.Temperature T "Temperature";
      input Boolean densityOfT = false 
        "include or neglect density derivative dependence of enthalpy";
      output SI.SpecificEnthalpy h "Specific enthalpy at p, T";
    algorithm 
      h :=h0 + Poly.integralValue(poly_Cp, if TinK then T else Cv.to_degC(T), if TinK then 
      T0 else Cv.to_degC(T0)) + (p - reference_p)/Poly.evaluate(poly_rho, if TinK then 
              T else Cv.to_degC(T))
        *(if densityOfT then (1 + T/Poly.evaluate(poly_rho, if TinK then T else Cv.to_degC(T))
      *Poly.derivativeValue(poly_rho,if TinK then T else Cv.to_degC(T))) else 1.0);
    end h_pT;

--------------

`Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.density\_T
-----------------------------------------------------------------------------------------------------------------------------------------------

**Return density as function of temperature**

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                                | Name   | Default   | Description       |
+=====================================================================================================================+========+===========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      |           | temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                        | Name   | Description       |
+=============================================================================================================+========+===================+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_   | d      | density [kg/m3]   |
+-------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function density_T "Return density as function of temperature"

      input Temperature T "temperature";
      output Density d "density";
    algorithm 
      d := Poly.evaluate(poly_rho,if TinK then T else Cv.to_degC(T));
    end density_T;

--------------

|image71| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.temperature
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Return temperature as a function of the thermodynamic state record**

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
      "Return temperature as a function of the thermodynamic state record"
    algorithm 
     T := state.T;
    end temperature;

--------------

|image72| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.pressure
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure as a function of the thermodynamic state record**

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

    redeclare function extends pressure 
      "Return pressure as a function of the thermodynamic state record"
    algorithm 
     p := state.p;
    end pressure;

--------------

|image73| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.density
------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density as a function of the thermodynamic state record**

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

    redeclare function extends density 
      "Return density as a function of the thermodynamic state record"
    algorithm 
      d := Poly.evaluate(poly_rho,if TinK then state.T else Cv.to_degC(state.T));
    end density;

--------------

|image74| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.specificEnthalpy
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy as a function of the thermodynamic state
record**

Information
~~~~~~~~~~~

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
      "Return specific enthalpy as a function of the thermodynamic state record"
    algorithm 
      h := if enthalpyOfT then h_T(state.T) else h_pT(state.p,state.T);
    end specificEnthalpy;

--------------

|image75| `Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.specificInternalEnergy
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific internal energy as a function of the thermodynamic
state record**

Information
~~~~~~~~~~~

Extends from
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
      "Return specific internal energy as a function of the thermodynamic state record"
    algorithm 
      u := if enthalpyOfT then h_T(state.T) else h_pT(state.p,state.T)
        - (if singleState then  reference_p/density(state) else state.p/density(state));
    end specificInternalEnergy;

--------------

`Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.T\_ph
------------------------------------------------------------------------------------------------------------------------------------------

**Compute temperature from pressure and specific enthalpy**

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                                                          | Name   | Default   | Description                |
+===============================================================================================================================+========+===========+============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                                | Name   | Description       |
+=====================================================================================================================+========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      | temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function T_ph 
      "Compute temperature from pressure and specific enthalpy"
      input AbsolutePressure p "pressure";
      input SpecificEnthalpy h "specific enthalpy";
      output Temperature T "temperature";
    protected 
      package Internal 
        "Solve h(T) for T with given h (use only indirectly via temperature_phX)"
        extends Modelica.Media.Common.OneNonLinearEquation;

        redeclare record extends f_nonlinear_Data 
          "superfluous record, fix later when better structure of inverse functions exists"
            constant Real[5] dummy = {1,2,3,4,5};
        end f_nonlinear_Data;

        redeclare function extends f_nonlinear 
          "p is smuggled in via vector"
        algorithm 
          y := if singleState then h_T(x) else h_pT(p,x);
        end f_nonlinear;

        // Dummy definition has to be added for current Dymola
        redeclare function extends solve
        end solve;
      end Internal;
    algorithm 
     T := Internal.solve(h, T_min, T_max, p, {1}, Internal.f_nonlinear_Data());
    end T_ph;

--------------

`Modelica.Media.Incompressible.TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_.T\_ps
------------------------------------------------------------------------------------------------------------------------------------------

**Compute temperature from pressure and specific enthalpy**

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| Type                                                                                                                          | Name   | Default   | Description                   |
+===============================================================================================================================+========+===========+===============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | pressure [Pa]                 |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| `SpecificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEntropy>`_     | s      |           | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                                | Name   | Description       |
+=====================================================================================================================+========+===================+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_   | T      | temperature [K]   |
+---------------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function T_ps 
      "Compute temperature from pressure and specific enthalpy"
      input AbsolutePressure p "pressure";
      input SpecificEntropy s "specific entropy";
      output Temperature T "temperature";
    protected 
      package Internal 
        "Solve h(T) for T with given h (use only indirectly via temperature_phX)"
        extends Modelica.Media.Common.OneNonLinearEquation;

        redeclare record extends f_nonlinear_Data 
          "superfluous record, fix later when better structure of inverse functions exists"
            constant Real[5] dummy = {1,2,3,4,5};
        end f_nonlinear_Data;

        redeclare function extends f_nonlinear 
          "p is smuggled in via vector"
        algorithm 
          y := s_T(x);
        end f_nonlinear;

        // Dummy definition has to be added for current Dymola
        redeclare function extends solve
        end solve;
      end Internal;
    algorithm 
     T := Internal.solve(s, T_min, T_max, p, {1}, Internal.f_nonlinear_Data());
    end T_ps;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:34
2010.

.. |Modelica.Media.Incompressible.TableBased.invertTemp| image:: Modelica.Media.Incompressible.TableBased.invertTempS.png
.. |Modelica.Media.Incompressible.TableBased.BaseProperties| image:: Modelica.Media.Incompressible.TableBased.BasePropertiesS.png
.. |Modelica.Media.Incompressible.TableBased.setState\_pTX| image:: Modelica.Media.Incompressible.TableBased.setState_pTXS.png
.. |Modelica.Media.Incompressible.TableBased.setState\_dTX| image:: Modelica.Media.Incompressible.TableBased.setState_pTXS.png
.. |Modelica.Media.Incompressible.TableBased.setState\_pT| image:: Modelica.Media.Incompressible.TableBased.setState_pTS.png
.. |Modelica.Media.Incompressible.TableBased.setState\_phX| image:: Modelica.Media.Incompressible.TableBased.setState_phXS.png
.. |Modelica.Media.Incompressible.TableBased.setState\_ph| image:: Modelica.Media.Incompressible.TableBased.setState_phS.png
.. |Modelica.Media.Incompressible.TableBased.setState\_psX| image:: Modelica.Media.Incompressible.TableBased.setState_psXS.png
.. |Modelica.Media.Incompressible.TableBased.setState\_ps| image:: Modelica.Media.Incompressible.TableBased.setState_psS.png
.. |Modelica.Media.Incompressible.TableBased.setSmoothState| image:: Modelica.Media.Incompressible.TableBased.setSmoothStateS.png
.. |Modelica.Media.Incompressible.TableBased.specificHeatCapacityCv| image:: Modelica.Media.Incompressible.TableBased.setSmoothStateS.png
.. |Modelica.Media.Incompressible.TableBased.specificHeatCapacityCp| image:: Modelica.Media.Incompressible.TableBased.setSmoothStateS.png
.. |Modelica.Media.Incompressible.TableBased.dynamicViscosity| image:: Modelica.Media.Incompressible.TableBased.setSmoothStateS.png
.. |Modelica.Media.Incompressible.TableBased.thermalConductivity| image:: Modelica.Media.Incompressible.TableBased.setSmoothStateS.png
.. |Modelica.Media.Incompressible.TableBased.s\_T| image:: Modelica.Media.Incompressible.TableBased.s_TS.png
.. |Modelica.Media.Incompressible.TableBased.specificEntropy| image:: Modelica.Media.Incompressible.TableBased.specificEntropyS.png
.. |Modelica.Media.Incompressible.TableBased.h\_T| image:: Modelica.Media.Incompressible.TableBased.specificEntropyS.png
.. |Modelica.Media.Incompressible.TableBased.h\_T\_der| image:: Modelica.Media.Incompressible.TableBased.specificEntropyS.png
.. |Modelica.Media.Incompressible.TableBased.h\_pT| image:: Modelica.Media.Incompressible.TableBased.specificEntropyS.png
.. |Modelica.Media.Incompressible.TableBased.density\_T| image:: Modelica.Media.Incompressible.TableBased.density_TS.png
.. |Modelica.Media.Incompressible.TableBased.temperature| image:: Modelica.Media.Incompressible.TableBased.temperatureS.png
.. |Modelica.Media.Incompressible.TableBased.pressure| image:: Modelica.Media.Incompressible.TableBased.temperatureS.png
.. |Modelica.Media.Incompressible.TableBased.density| image:: Modelica.Media.Incompressible.TableBased.temperatureS.png
.. |Modelica.Media.Incompressible.TableBased.specificEnthalpy| image:: Modelica.Media.Incompressible.TableBased.temperatureS.png
.. |Modelica.Media.Incompressible.TableBased.specificInternalEnergy| image:: Modelica.Media.Incompressible.TableBased.temperatureS.png
.. |Modelica.Media.Incompressible.TableBased.T\_ph| image:: Modelica.Media.Incompressible.TableBased.T_phS.png
.. |Modelica.Media.Incompressible.TableBased.T\_ps| image:: Modelica.Media.Incompressible.TableBased.T_phS.png
.. |Modelica.Media.Incompressible.TableBased.Polynomials\_Temp| image:: Modelica.Media.Incompressible.TableBased.Polynomials_TempS.png
.. |Modelica.Media.Interfaces.PartialMedium.FluidConstants| image:: Modelica.Media.Interfaces.PartialMedium.FluidConstantsS.png
.. |Modelica.Media.Interfaces.PartialMedium.ThermodynamicState| image:: Modelica.Media.Interfaces.PartialMedium.FluidConstantsS.png
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.isentropicExponent| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
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
.. |image57| image:: Modelica.Media.Incompressible.TableBased.BasePropertiesI.png
.. |image58| image:: Modelica.Media.Incompressible.TableBased.setState_pTXI.png
.. |image59| image:: Modelica.Media.Incompressible.TableBased.setState_pTXI.png
.. |image60| image:: Modelica.Media.Incompressible.TableBased.setState_phXI.png
.. |image61| image:: Modelica.Media.Incompressible.TableBased.setState_psXI.png
.. |image62| image:: Modelica.Media.Incompressible.TableBased.setSmoothStateI.png
.. |image63| image:: Modelica.Media.Incompressible.TableBased.setSmoothStateI.png
.. |image64| image:: Modelica.Media.Incompressible.TableBased.setSmoothStateI.png
.. |image65| image:: Modelica.Media.Incompressible.TableBased.setSmoothStateI.png
.. |image66| image:: Modelica.Media.Incompressible.TableBased.setSmoothStateI.png
.. |image67| image:: Modelica.Media.Incompressible.TableBased.specificEntropyI.png
.. |image68| image:: Modelica.Media.Incompressible.TableBased.specificEntropyI.png
.. |image69| image:: Modelica.Media.Incompressible.TableBased.specificEntropyI.png
.. |image70| image:: Modelica.Media.Incompressible.TableBased.specificEntropyI.png
.. |image71| image:: Modelica.Media.Incompressible.TableBased.temperatureI.png
.. |image72| image:: Modelica.Media.Incompressible.TableBased.temperatureI.png
.. |image73| image:: Modelica.Media.Incompressible.TableBased.temperatureI.png
.. |image74| image:: Modelica.Media.Incompressible.TableBased.temperatureI.png
.. |image75| image:: Modelica.Media.Incompressible.TableBased.temperatureI.png
