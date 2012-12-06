% Modelica.Media.Incompressible.TableBased
% 
% 

[Modelica.Media.Incompressible](Modelica_Media_Incompressible.html#Modelica.Media.Incompressible).TableBased
============================================================================================================

**Incompressible medium properties based on tables**

Information
-----------

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

### Using the package TableBased

To implement a new medium model, create a package that **extends**
TableBased and provides one or more of the constant tables:

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
[Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium)
(Partial medium properties (base package of all media packages)).

Package Content
---------------

Name

Description

enthalpyOfT=true

true if enthalpy is approximated as a function of T only, (p-dependence
neglected)

densityOfT=size(tableDensity, 1) \> 1

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

invTK=if size(tableViscosity, 1) \> 0 then invertTemp(tableViscosity[:,
1], TinK) else fill(0, 0)

poly\_rho=if hasDensity then Poly.fitting(tableDensity[:, 1],
tableDensity[:, 2], npol) else zeros(npol + 1)

poly\_Cp=if hasHeatCapacity then Poly.fitting(tableHeatCapacity[:, 1],
tableHeatCapacity[:, 2], npol) else zeros(npol + 1)

poly\_eta=if hasViscosity then Poly.fitting(invTK,
Math.log(tableViscosity[:, 2]), npol) else zeros(npol + 1)

poly\_pVap=if hasVaporPressure then Poly.fitting(tableVaporPressure[:,
1], tableVaporPressure[:, 2], npol) else zeros(npol + 1)

poly\_lam=if size(tableConductivity, 1) \> 0 then
Poly.fitting(tableConductivity[:, 1], tableConductivity[:, 2], npol)
else zeros(npol + 1)

![Modelica.Media.Incompressible.TableBased.invertTemp](Modelica.Media.Incompressible.TableBased.invertTempS.png)
[invertTemp](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.invertTemp)

function to invert temperatures

![Modelica.Media.Incompressible.TableBased.BaseProperties](Modelica.Media.Incompressible.TableBased.BasePropertiesS.png)
[BaseProperties](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.BaseProperties)

Base properties of T dependent medium

![Modelica.Media.Incompressible.TableBased.setState\_pTX](Modelica.Media.Incompressible.TableBased.setState_pTXS.png)
[setState\_pTX](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_pTX)

Returns state record, given pressure and temperature

![Modelica.Media.Incompressible.TableBased.setState\_dTX](Modelica.Media.Incompressible.TableBased.setState_pTXS.png)
[setState\_dTX](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_dTX)

Returns state record, given pressure and temperature

![Modelica.Media.Incompressible.TableBased.setState\_pT](Modelica.Media.Incompressible.TableBased.setState_pTS.png)
[setState\_pT](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_pT)

returns state record as function of p and T

![Modelica.Media.Incompressible.TableBased.setState\_phX](Modelica.Media.Incompressible.TableBased.setState_phXS.png)
[setState\_phX](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_phX)

Returns state record, given pressure and specific enthalpy

![Modelica.Media.Incompressible.TableBased.setState\_ph](Modelica.Media.Incompressible.TableBased.setState_phS.png)
[setState\_ph](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_ph)

returns state record as function of p and h

![Modelica.Media.Incompressible.TableBased.setState\_psX](Modelica.Media.Incompressible.TableBased.setState_psXS.png)
[setState\_psX](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_psX)

Returns state record, given pressure and specific entropy

![Modelica.Media.Incompressible.TableBased.setState\_ps](Modelica.Media.Incompressible.TableBased.setState_psS.png)
[setState\_ps](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setState_ps)

returns state record as function of p and s

![Modelica.Media.Incompressible.TableBased.setSmoothState](Modelica.Media.Incompressible.TableBased.setSmoothStateS.png)
[setSmoothState](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

![Modelica.Media.Incompressible.TableBased.specificHeatCapacityCv](Modelica.Media.Incompressible.TableBased.setSmoothStateS.png)
[specificHeatCapacityCv](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.specificHeatCapacityCv)

Specific heat capacity at constant volume (or pressure) of medium

![Modelica.Media.Incompressible.TableBased.specificHeatCapacityCp](Modelica.Media.Incompressible.TableBased.setSmoothStateS.png)
[specificHeatCapacityCp](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.specificHeatCapacityCp)

Specific heat capacity at constant volume (or pressure) of medium

![Modelica.Media.Incompressible.TableBased.dynamicViscosity](Modelica.Media.Incompressible.TableBased.setSmoothStateS.png)
[dynamicViscosity](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.dynamicViscosity)

Return dynamic viscosity as a function of the thermodynamic state record

![Modelica.Media.Incompressible.TableBased.thermalConductivity](Modelica.Media.Incompressible.TableBased.setSmoothStateS.png)
[thermalConductivity](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.thermalConductivity)

Return thermal conductivity as a function of the thermodynamic state
record

![Modelica.Media.Incompressible.TableBased.s\_T](Modelica.Media.Incompressible.TableBased.s_TS.png)
[s\_T](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.s_T)

compute specific entropy

![Modelica.Media.Incompressible.TableBased.specificEntropy](Modelica.Media.Incompressible.TableBased.specificEntropyS.png)
[specificEntropy](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.specificEntropy)

Return specific entropy as a function of the thermodynamic state record

![Modelica.Media.Incompressible.TableBased.h\_T](Modelica.Media.Incompressible.TableBased.specificEntropyS.png)
[h\_T](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.h_T)

Compute specific enthalpy from temperature

![Modelica.Media.Incompressible.TableBased.h\_T\_der](Modelica.Media.Incompressible.TableBased.specificEntropyS.png)
[h\_T\_der](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.h_T_der)

Compute specific enthalpy from temperature

![Modelica.Media.Incompressible.TableBased.h\_pT](Modelica.Media.Incompressible.TableBased.specificEntropyS.png)
[h\_pT](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.h_pT)

Compute specific enthalpy from pressure and temperature

![Modelica.Media.Incompressible.TableBased.density\_T](Modelica.Media.Incompressible.TableBased.density_TS.png)
[density\_T](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.density_T)

Return density as function of temperature

![Modelica.Media.Incompressible.TableBased.temperature](Modelica.Media.Incompressible.TableBased.temperatureS.png)
[temperature](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.temperature)

Return temperature as a function of the thermodynamic state record

![Modelica.Media.Incompressible.TableBased.pressure](Modelica.Media.Incompressible.TableBased.temperatureS.png)
[pressure](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.pressure)

Return pressure as a function of the thermodynamic state record

![Modelica.Media.Incompressible.TableBased.density](Modelica.Media.Incompressible.TableBased.temperatureS.png)
[density](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.density)

Return density as a function of the thermodynamic state record

![Modelica.Media.Incompressible.TableBased.specificEnthalpy](Modelica.Media.Incompressible.TableBased.temperatureS.png)
[specificEnthalpy](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.specificEnthalpy)

Return specific enthalpy as a function of the thermodynamic state record

![Modelica.Media.Incompressible.TableBased.specificInternalEnergy](Modelica.Media.Incompressible.TableBased.temperatureS.png)
[specificInternalEnergy](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.specificInternalEnergy)

Return specific internal energy as a function of the thermodynamic state
record

![Modelica.Media.Incompressible.TableBased.T\_ph](Modelica.Media.Incompressible.TableBased.T_phS.png)
[T\_ph](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.T_ph)

Compute temperature from pressure and specific enthalpy

![Modelica.Media.Incompressible.TableBased.T\_ps](Modelica.Media.Incompressible.TableBased.T_phS.png)
[T\_ps](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased.T_ps)

Compute temperature from pressure and specific enthalpy

![Modelica.Media.Incompressible.TableBased.Polynomials\_Temp](Modelica.Media.Incompressible.TableBased.Polynomials_TempS.png)
[Polynomials\_Temp](Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp)

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

![Modelica.Media.Interfaces.PartialMedium.FluidConstants](Modelica.Media.Interfaces.PartialMedium.FluidConstantsS.png)
[FluidConstants](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants)

critical, triple, molecular and other standard data of fluid

![Modelica.Media.Interfaces.PartialMedium.ThermodynamicState](Modelica.Media.Interfaces.PartialMedium.FluidConstantsS.png)
[ThermodynamicState](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState)

Minimal variable set that is available as input argument to every medium
function

![Modelica.Media.Interfaces.PartialMedium.prandtlNumber](Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png)
[prandtlNumber](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.prandtlNumber)

Return the Prandtl number

![Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[specificGibbsEnergy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy)

Return specific Gibbs energy

![Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[specificHelmholtzEnergy](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy)

Return specific Helmholtz energy

![Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[heatCapacity\_cp](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cp)

alias for deprecated name

![Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv](Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png)
[heatCapacity\_cv](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cv)

alias for deprecated name

![Modelica.Media.Interfaces.PartialMedium.isentropicExponent](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[isentropicExponent](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicExponent)

Return isentropic exponent

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

    constant Boolean enthalpyOfT=true 
    "true if enthalpy is approximated as a function of T only, (p-dependence neglected)";

    constant Boolean densityOfT = size(tableDensity,1) > 1 
    "true if density is a function of temperature";

    constant Temperature T_min "Minimum temperature valid for medium model";

    constant Temperature T_max "Maximum temperature valid for medium model";

    constant Temperature T0=273.15 "reference Temperature";

    constant SpecificEnthalpy h0=0 "reference enthalpy at T0, reference_p";

    constant SpecificEntropy s0=0 "reference entropy at T0, reference_p";

    constant MolarMass MM_const=0.1 "Molar mass";

    constant Integer npol=2 "degree of polynomial used for fitting";

    constant Integer neta=size(tableViscosity,1) 
    "number of data points for viscosity";

    constant Real[:,2] tableDensity "Table for rho(T)";

    constant Real[:,2] tableHeatCapacity "Table for Cp(T)";

    constant Real[:,2] tableViscosity "Table for eta(T)";

    constant Real[:,2] tableVaporPressure "Table for pVap(T)";

    constant Real[:,2] tableConductivity "Table for lambda(T)";

    constant Boolean TinK "true if T[K],Kelvin used for table temperatures";

    constant Boolean hasDensity = not (size(tableDensity,1)==0) 
    "true if table tableDensity is present";

    constant Boolean hasHeatCapacity = not (size(tableHeatCapacity,1)==0) 
    "true if table tableHeatCapacity is present";

    constant Boolean hasViscosity = not (size(tableViscosity,1)==0) 
    "true if table tableViscosity is present";

    constant Boolean hasVaporPressure = not (size(tableVaporPressure,1)==0) 
    "true if table tableVaporPressure is present";

    final constant Real invTK[neta] = if size(tableViscosity,1) > 0 then 
        invertTemp(tableViscosity[:,1],TinK) else fill(0,0);

    final constant Real poly_rho[:] = if hasDensity then 
                                         Poly.fitting(tableDensity[:,1],tableDensity[:,2],npol) else 
                                           zeros(npol+1);

    final constant Real poly_Cp[:] = if hasHeatCapacity then 
                                         Poly.fitting(tableHeatCapacity[:,1],tableHeatCapacity[:,2],npol) else 
                                           zeros(npol+1);

    final constant Real poly_eta[:] = if hasViscosity then 
                                         Poly.fitting(invTK, Math.log(tableViscosity[:,2]),npol) else 
                                           zeros(npol+1);

    final constant Real poly_pVap[:] = if hasVaporPressure then 
                                         Poly.fitting(tableVaporPressure[:,1],tableVaporPressure[:,2],npol) else 
                                            zeros(npol+1);

    final constant Real poly_lam[:] = if size(tableConductivity,1)>0 then 
                                         Poly.fitting(tableConductivity[:,1],tableConductivity[:,2],npol) else 
                                           zeros(npol+1);

* * * * *

[Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).invertTemp
=============================================================================================================================================

**function to invert temperatures**

Inputs
------

  Type         Name          Default      Description
  ------------ ------------- ------------ -------------------------------
  Real         table[:]                   table temperature data
  Boolean      Tink                       flag for Celsius or Kelvin

Outputs
-------

  Type      Name                          Description
  --------- ----------------------------- --------------------------
  Real      invTable[size(table, 1)]      inverted temperatures

Modelica definition
-------------------

    function invertTemp "function to invert temperatures"
      input Real[:] table "table temperature data";
      input Boolean Tink "flag for Celsius or Kelvin";
      output Real invTable[size(table,1)] "inverted temperatures";
    algorithm 
      for i in 1:size(table,1) loop
        invTable[i] := if TinK then 1/table[i] else 1/Cv.from_degC(table[i]);
      end for;
    end invertTemp;

* * * * *

![image57](Modelica.Media.Incompressible.TableBased.BasePropertiesI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).BaseProperties
==========================================================================================================================================================================================================================

**Base properties of T dependent medium**

Information
-----------

::

Note that the inner energy neglects the pressure dependence, which is
only true for an incompressible medium with d = constant. The neglected
term is p-reference\_p)/rho\*(T/rho)\*(partial rho /partial T). This is
very small for liquids due to proportionality to 1/d\^2, but can be
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

    s = s0 + integral(Cp(T)/T,dt)

which is only exactly true for a fluid with constant density d=d0.

::

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.BaseProperties)
(Base properties (p, d, T, h, u, R, MM and, if applicable, X and Xi) of
a medium).

Parameters
----------

  ------------------------------------------------------------------------
  Type                             Name    Defa Description
                                           ult  
  -------------------------------- ------- ---- --------------------------
  [Temperature](Modelica_SIunits.h T\_star 298. initial temperature [K]
  tml#Modelica.SIunits.Temperature t       15   
  )                                             

  Boolean                          standar true if true, and reducedX =
                                   dOrderC      true, the last element of
                                   omponen      X will be computed from
                                   ts           the other ones

  [Pressure\_bar](Modelica_SIunits p\_bar  Cv.t Absolute pressure of
  _Conversions_NonSIunits.html#Mod         o\_b medium in [bar] [bar]
  elica.SIunits.Conversions.NonSIu         ar(p 
  nits.Pressure_bar)                       )    

  **Advanced**                                  

  Boolean                          preferr fals = true if
                                   edMediu e    StateSelect.prefer shall
                                   mStates      be used for the
                                                independent property
                                                variables of the medium
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image58](Modelica.Media.Incompressible.TableBased.setState_pTXI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).setState\_pTX
=======================================================================================================================================================================================================================

**Returns state record, given pressure and temperature**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_pTX)
(Return thermodynamic state as function of p, T and composition X or
Xi).

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
      "Returns state record, given pressure and temperature"
    algorithm 
      state := ThermodynamicState(p=p,T=T);
    end setState_pTX;

* * * * *

![image59](Modelica.Media.Incompressible.TableBased.setState_pTXI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).setState\_dTX
=======================================================================================================================================================================================================================

**Returns state record, given pressure and temperature**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_dTX)
(Return thermodynamic state as function of d, T and composition X or
Xi).

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
      "Returns state record, given pressure and temperature"
    algorithm 
      assert(false, "for incompressible media with d(T) only, state can not be set from density and temperature");
    end setState_dTX;

* * * * *

[Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).setState\_pT
===============================================================================================================================================

**returns state record as function of p and T**

Inputs
------

  -------------------------------------------------------------------------
  Type                                                   Nam Defau Descript
                                                         e   lt    ion
  ------------------------------------------------------ --- ----- --------
  [AbsolutePressure](Modelica_Media_Interfaces_PartialMe p         pressure
  dium.html#Modelica.Media.Interfaces.PartialMedium.Abso           [Pa]
  lutePressure)                                                    

  [Temperature](Modelica_Media_Interfaces_PartialMedium. T         temperat
  html#Modelica.Media.Interfaces.PartialMedium.Temperatu           ure
  re)                                                              [K]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                      Name Descriptio
                                                                 n
  --------------------------------------------------------- ---- ----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialMed stat thermodyna
  ium.html#Modelica.Media.Interfaces.PartialMedium.Thermody e    mic
  namicState)                                                    state
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function setState_pT "returns state record as function of p and T"
      input AbsolutePressure p "pressure";
      input Temperature T "temperature";
      output ThermodynamicState state "thermodynamic state";
    algorithm 
      state.T := T;
      state.p := p;
    end setState_pT;

* * * * *

![image60](Modelica.Media.Incompressible.TableBased.setState_phXI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).setState\_phX
=======================================================================================================================================================================================================================

**Returns state record, given pressure and specific enthalpy**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_phX)
(Return thermodynamic state as function of p, h and composition X or
Xi).

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
      "Returns state record, given pressure and specific enthalpy"
    algorithm 
      state :=ThermodynamicState(p=p,T=T_ph(p,h));
    end setState_phX;

* * * * *

[Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).setState\_ph
===============================================================================================================================================

**returns state record as function of p and h**

Inputs
------

  ------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Partia p        pressure
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          [Pa]
  m.AbsolutePressure)                                          

  [SpecificEnthalpy](Modelica_Media_Interfaces_Partia h        specific
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          enthalpy
  m.SpecificEnthalpy)                                          [J/kg]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                      Name Descriptio
                                                                 n
  --------------------------------------------------------- ---- ----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialMed stat thermodyna
  ium.html#Modelica.Media.Interfaces.PartialMedium.Thermody e    mic
  namicState)                                                    state
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function setState_ph "returns state record as function of p and h"
      input AbsolutePressure p "pressure";
      input SpecificEnthalpy h "specific enthalpy";
      output ThermodynamicState state "thermodynamic state";
    algorithm 
      state :=ThermodynamicState(p=p,T=T_ph(p,h));
    end setState_ph;

* * * * *

![image61](Modelica.Media.Incompressible.TableBased.setState_psXI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).setState\_psX
=======================================================================================================================================================================================================================

**Returns state record, given pressure and specific entropy**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_psX)
(Return thermodynamic state as function of p, s and composition X or
Xi).

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
      "Returns state record, given pressure and specific entropy"
    algorithm 
      state :=ThermodynamicState(p=p,T=T_ps(p,s));
    end setState_psX;

* * * * *

[Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).setState\_ps
===============================================================================================================================================

**returns state record as function of p and s**

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Defa Description
                                                     e   ult  
  -------------------------------------------------- --- ---- ------------
  [AbsolutePressure](Modelica_Media_Interfaces_Parti p        pressure
  alMedium.html#Modelica.Media.Interfaces.PartialMed          [Pa]
  ium.AbsolutePressure)                                       

  [SpecificEntropy](Modelica_Media_Interfaces_Partia s        specific
  lMedium.html#Modelica.Media.Interfaces.PartialMedi          entropy
  um.SpecificEntropy)                                         [J/(kg.K)]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                      Name Descriptio
                                                                 n
  --------------------------------------------------------- ---- ----------
  [ThermodynamicState](Modelica_Media_Interfaces_PartialMed stat thermodyna
  ium.html#Modelica.Media.Interfaces.PartialMedium.Thermody e    mic
  namicState)                                                    state
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function setState_ps "returns state record as function of p and s"
      input AbsolutePressure p "pressure";
      input SpecificEntropy s "specific entropy";
      output ThermodynamicState state "thermodynamic state";
    algorithm 
      state :=ThermodynamicState(p=p,T=T_ps(p,s));
    end setState_ps;

* * * * *

![image62](Modelica.Media.Incompressible.TableBased.setSmoothStateI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).setSmoothState
==========================================================================================================================================================================================================================

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
      state :=ThermodynamicState(p=Media.Common.smoothStep(x, state_a.p, state_b.p, x_small),
                                 T=Media.Common.smoothStep(x, state_a.T, state_b.T, x_small));
    end setSmoothState;

* * * * *

![image63](Modelica.Media.Incompressible.TableBased.setSmoothStateI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).specificHeatCapacityCv
==================================================================================================================================================================================================================================

**Specific heat capacity at constant volume (or pressure) of medium**

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
      "Specific heat capacity at constant volume (or pressure) of medium"

    algorithm 
      assert(hasHeatCapacity,"Specific Heat Capacity, Cv, is not defined for medium "
                                             + mediumName + ".");
      cv := Poly.evaluate(poly_Cp,if TinK then state.T else state.T - 273.15);
    end specificHeatCapacityCv;

* * * * *

![image64](Modelica.Media.Incompressible.TableBased.setSmoothStateI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).specificHeatCapacityCp
==================================================================================================================================================================================================================================

**Specific heat capacity at constant volume (or pressure) of medium**

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
      "Specific heat capacity at constant volume (or pressure) of medium"

    algorithm 
      assert(hasHeatCapacity,"Specific Heat Capacity, Cv, is not defined for medium "
                                             + mediumName + ".");
      cp := Poly.evaluate(poly_Cp,if TinK then state.T else state.T - 273.15);
    end specificHeatCapacityCp;

* * * * *

![image65](Modelica.Media.Incompressible.TableBased.setSmoothStateI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).dynamicViscosity
============================================================================================================================================================================================================================

**Return dynamic viscosity as a function of the thermodynamic state
record**

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
      "Return dynamic viscosity as a function of the thermodynamic state record"

    algorithm 
      assert(size(tableViscosity,1)>0,"DynamicViscosity, eta, is not defined for medium "
                                             + mediumName + ".");
      eta := Math.exp(Poly.evaluate(poly_eta, 1/state.T));
    end dynamicViscosity;

* * * * *

![image66](Modelica.Media.Incompressible.TableBased.setSmoothStateI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).thermalConductivity
===============================================================================================================================================================================================================================

**Return thermal conductivity as a function of the thermodynamic state
record**

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
      "Return thermal conductivity as a function of the thermodynamic state record"

    algorithm 
      assert(size(tableConductivity,1)>0,"ThermalConductivity, lambda, is not defined for medium "
                                             + mediumName + ".");
      lambda := Poly.evaluate(poly_lam,if TinK then state.T else Cv.to_degC(state.T));
    end thermalConductivity;

* * * * *

[Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).s\_T
=======================================================================================================================================

**compute specific entropy**

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
  [SpecificEntropy](Modelica_Media_Interfaces_PartialMed s   specific
  ium.html#Modelica.Media.Interfaces.PartialMedium.Speci     entropy
  ficEntropy)                                                [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image67](Modelica.Media.Incompressible.TableBased.specificEntropyI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).specificEntropy
============================================================================================================================================================================================================================

**Return specific entropy as a function of the thermodynamic state
record**

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

    redeclare function extends specificEntropy "Return specific entropy
     as a function of the thermodynamic state record"

    protected 
      Integer npol=size(poly_Cp,1)-1;
    algorithm 
      assert(hasHeatCapacity,"Specific Entropy, s(T), is not defined for medium "
                                             + mediumName + ".");
      s := s_T(state.T);
    end specificEntropy;

* * * * *

![image68](Modelica.Media.Incompressible.TableBased.specificEntropyI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).h\_T
=================================================================================================================================================================================================================

**Compute specific enthalpy from temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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
  Type                                           Name  Description
  ---------------------------------------------- ----- --------------------
  [SpecificEnthalpy](Modelica_SIunits.html#Model h     Specific enthalpy at
  ica.SIunits.SpecificEnthalpy)                        p, T [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image69](Modelica.Media.Incompressible.TableBased.specificEntropyI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).h\_T\_der
======================================================================================================================================================================================================================

**Compute specific enthalpy from temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                        Name  Default Description
  ------------------------------------------- ----- ------- ----------------
  [Temperature](Modelica_SIunits.html#Modelic T             Temperature [K]
  a.SIunits.Temperature)                                    

  Real                                        dT            temperature
                                                            derivative
  --------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- -----------------------------------------
  Real      dh        derivative of Specific enthalpy at T

Modelica definition
-------------------

    function h_T_der "Compute specific enthalpy from temperature"
      import Modelica.SIunits.Conversions.to_degC;
      extends Modelica.Icons.Function;
      input SI.Temperature T "Temperature";
      input Real dT "temperature derivative";
      output Real dh "derivative of Specific enthalpy at T";
    algorithm 
      dh :=Poly.evaluate(poly_Cp, if TinK then T else Cv.to_degC(T))*dT;
    end h_T_der;

* * * * *

![image70](Modelica.Media.Incompressible.TableBased.specificEntropyI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).h\_pT
==================================================================================================================================================================================================================

**Compute specific enthalpy from pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                            Name   Defau Description
                                         lt    
  ------------------------------- ------ ----- ----------------------------
  [Pressure](Modelica_SIunits.htm p            Pressure [Pa]
  l#Modelica.SIunits.Pressure)                 

  [Temperature](Modelica_SIunits. T            Temperature [K]
  html#Modelica.SIunits.Temperatu              
  re)                                          

  Boolean                         densit false include or neglect density
                                  yOfT         derivative dependence of
                                               enthalpy
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                           Name  Description
  ---------------------------------------------- ----- --------------------
  [SpecificEnthalpy](Modelica_SIunits.html#Model h     Specific enthalpy at
  ica.SIunits.SpecificEnthalpy)                        p, T [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).density\_T
=============================================================================================================================================

**Return density as function of temperature**

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
  Type                                                     Name Descriptio
                                                                n
  -------------------------------------------------------- ---- ----------
  [Density](Modelica_Media_Interfaces_PartialMedium.html#M d    density
  odelica.Media.Interfaces.PartialMedium.Density)               [kg/m3]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function density_T "Return density as function of temperature"

      input Temperature T "temperature";
      output Density d "density";
    algorithm 
      d := Poly.evaluate(poly_rho,if TinK then T else Cv.to_degC(T));
    end density_T;

* * * * *

![image71](Modelica.Media.Incompressible.TableBased.temperatureI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).temperature
====================================================================================================================================================================================================================

**Return temperature as a function of the thermodynamic state record**

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
      "Return temperature as a function of the thermodynamic state record"
    algorithm 
     T := state.T;
    end temperature;

* * * * *

![image72](Modelica.Media.Incompressible.TableBased.temperatureI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).pressure
=================================================================================================================================================================================================================

**Return pressure as a function of the thermodynamic state record**

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

    redeclare function extends pressure 
      "Return pressure as a function of the thermodynamic state record"
    algorithm 
     p := state.p;
    end pressure;

* * * * *

![image73](Modelica.Media.Incompressible.TableBased.temperatureI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).density
================================================================================================================================================================================================================

**Return density as a function of the thermodynamic state record**

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

    redeclare function extends density 
      "Return density as a function of the thermodynamic state record"
    algorithm 
      d := Poly.evaluate(poly_rho,if TinK then state.T else Cv.to_degC(state.T));
    end density;

* * * * *

![image74](Modelica.Media.Incompressible.TableBased.temperatureI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).specificEnthalpy
=========================================================================================================================================================================================================================

**Return specific enthalpy as a function of the thermodynamic state
record**

Information
-----------

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
      "Return specific enthalpy as a function of the thermodynamic state record"
    algorithm 
      h := if enthalpyOfT then h_T(state.T) else h_pT(state.p,state.T);
    end specificEnthalpy;

* * * * *

![image75](Modelica.Media.Incompressible.TableBased.temperatureI.png) [Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).specificInternalEnergy
===============================================================================================================================================================================================================================

**Return specific internal energy as a function of the thermodynamic
state record**

Information
-----------

Extends from
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
      "Return specific internal energy as a function of the thermodynamic state record"
    algorithm 
      u := if enthalpyOfT then h_T(state.T) else h_pT(state.p,state.T)
        - (if singleState then  reference_p/density(state) else state.p/density(state));
    end specificInternalEnergy;

* * * * *

[Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).T\_ph
========================================================================================================================================

**Compute temperature from pressure and specific enthalpy**

Inputs
------

  ------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Partia p        pressure
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          [Pa]
  m.AbsolutePressure)                                          

  [SpecificEnthalpy](Modelica_Media_Interfaces_Partia h        specific
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          enthalpy
  m.SpecificEnthalpy)                                          [J/kg]
  ------------------------------------------------------------------------

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

* * * * *

[Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).T\_ps
========================================================================================================================================

**Compute temperature from pressure and specific enthalpy**

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Defa Description
                                                     e   ult  
  -------------------------------------------------- --- ---- ------------
  [AbsolutePressure](Modelica_Media_Interfaces_Parti p        pressure
  alMedium.html#Modelica.Media.Interfaces.PartialMed          [Pa]
  ium.AbsolutePressure)                                       

  [SpecificEntropy](Modelica_Media_Interfaces_Partia s        specific
  lMedium.html#Modelica.Media.Interfaces.PartialMedi          entropy
  um.SpecificEntropy)                                         [J/(kg.K)]
  ------------------------------------------------------------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:34 2010.
