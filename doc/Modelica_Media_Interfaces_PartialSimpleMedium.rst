=============================================
Modelica.Media.Interfaces.PartialSimpleMedium
=============================================

`Modelica.Media.Interfaces <Modelica_Media_Interfaces.html#Modelica.Media.Interfaces>`_.PartialSimpleMedium
-----------------------------------------------------------------------------------------------------------

**Medium model with linear dependency of u, h from temperature. All
other quantities, especially density, are constant.**

Information
~~~~~~~~~~~

Extends from
`Interfaces.PartialPureSubstance <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance>`_
(base class for pure substances of one chemical substance).

Package Content
~~~~~~~~~~~~~~~

Name

Description

cp\_const

Constant specific heat capacity at constant pressure

cv\_const

Constant specific heat capacity at constant volume

d\_const

Constant density

eta\_const

Constant dynamic viscosity

lambda\_const

Constant thermal conductivity

a\_const

Constant velocity of sound

T\_min

Minimum temperature valid for medium model

T\_max

Maximum temperature valid for medium model

T0=reference\_T

Zero enthalpy temperature

MM\_const

Molar mass

fluidConstants

fluid constants

|Modelica.Media.Interfaces.PartialSimpleMedium.ThermodynamicState|
`ThermodynamicState <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.ThermodynamicState>`_

Thermodynamic state

|Modelica.Media.Interfaces.PartialSimpleMedium.BaseProperties|
`BaseProperties <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.BaseProperties>`_

Base properties

|Modelica.Media.Interfaces.PartialSimpleMedium.setState\_pTX|
`setState\_pTX <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTX>`_

Return thermodynamic state from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleMedium.setState\_phX|
`setState\_phX <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.setState_phX>`_

Return thermodynamic state from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleMedium.setState\_psX|
`setState\_psX <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.setState_psX>`_

Return thermodynamic state from p, s, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleMedium.setState\_dTX|
`setState\_dTX <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.setState_dTX>`_

Return thermodynamic state from d, T, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleMedium.setSmoothState|
`setSmoothState <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

|Modelica.Media.Interfaces.PartialSimpleMedium.dynamicViscosity|
`dynamicViscosity <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.dynamicViscosity>`_

Return dynamic viscosity

|Modelica.Media.Interfaces.PartialSimpleMedium.thermalConductivity|
`thermalConductivity <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.thermalConductivity>`_

Return thermal conductivity

|Modelica.Media.Interfaces.PartialSimpleMedium.pressure|
`pressure <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.pressure>`_

Return pressure

|Modelica.Media.Interfaces.PartialSimpleMedium.temperature|
`temperature <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.temperature>`_

Return temperature

|Modelica.Media.Interfaces.PartialSimpleMedium.density|
`density <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.density>`_

Return density

|Modelica.Media.Interfaces.PartialSimpleMedium.specificEnthalpy|
`specificEnthalpy <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.specificEnthalpy>`_

Return specific enthalpy

|Modelica.Media.Interfaces.PartialSimpleMedium.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.specificHeatCapacityCp>`_

Return specific heat capacity at constant pressure

|Modelica.Media.Interfaces.PartialSimpleMedium.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.specificHeatCapacityCv>`_

Return specific heat capacity at constant volume

|Modelica.Media.Interfaces.PartialSimpleMedium.isentropicExponent|
`isentropicExponent <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.isentropicExponent>`_

Return isentropic exponent

|Modelica.Media.Interfaces.PartialSimpleMedium.velocityOfSound|
`velocityOfSound <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.velocityOfSound>`_

Return velocity of sound

|Modelica.Media.Interfaces.PartialSimpleMedium.specificEnthalpy\_pTX|
`specificEnthalpy\_pTX <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.specificEnthalpy_pTX>`_

Return specific enthalpy from p, T, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleMedium.temperature\_phX|
`temperature\_phX <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.temperature_phX>`_

Return temperature from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleMedium.density\_phX|
`density\_phX <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.density_phX>`_

Return density from p, h, and X or Xi

|Modelica.Media.Interfaces.PartialSimpleMedium.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.specificInternalEnergy>`_

Return specific internal energy

|Modelica.Media.Interfaces.PartialSimpleMedium.specificEntropy|
`specificEntropy <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.specificEntropy>`_

Return specific entropy

|Modelica.Media.Interfaces.PartialSimpleMedium.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.specificGibbsEnergy>`_

Return specific Gibbs energy

|Modelica.Media.Interfaces.PartialSimpleMedium.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.specificHelmholtzEnergy>`_

Return specific Helmholtz energy

|Modelica.Media.Interfaces.PartialSimpleMedium.isentropicEnthalpy|
`isentropicEnthalpy <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.isentropicEnthalpy>`_

Return isentropic enthalpy

|Modelica.Media.Interfaces.PartialSimpleMedium.isobaricExpansionCoefficient|
`isobaricExpansionCoefficient <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.isobaricExpansionCoefficient>`_

Returns overall the isobaric expansion coefficient beta

|Modelica.Media.Interfaces.PartialSimpleMedium.isothermalCompressibility|
`isothermalCompressibility <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.isothermalCompressibility>`_

Returns overall the isothermal compressibility factor

|Modelica.Media.Interfaces.PartialSimpleMedium.density\_derp\_T|
`density\_derp\_T <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.density_derp_T>`_

Returns the partial derivative of density with respect to pressure at
constant temperature

|Modelica.Media.Interfaces.PartialSimpleMedium.density\_derT\_p|
`density\_derT\_p <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.density_derT_p>`_

Returns the partial derivative of density with respect to temperature at
constant pressure

|Modelica.Media.Interfaces.PartialSimpleMedium.density\_derX|
`density\_derX <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.density_derX>`_

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

|Modelica.Media.Interfaces.PartialSimpleMedium.molarMass|
`molarMass <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.molarMass>`_

return the molar mass of the medium

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

|Modelica.Media.Interfaces.PartialMedium.FluidConstants|
`FluidConstants <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants>`_

critical, triple, molecular and other standard data of fluid

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

      constant SpecificHeatCapacity cp_const 
      "Constant specific heat capacity at constant pressure";

::

      constant SpecificHeatCapacity cv_const 
      "Constant specific heat capacity at constant volume";

::

      constant Density d_const "Constant density";

::

      constant DynamicViscosity eta_const "Constant dynamic viscosity";

::

      constant ThermalConductivity lambda_const "Constant thermal conductivity";

::

      constant VelocityOfSound a_const "Constant velocity of sound";

::

      constant Temperature T_min "Minimum temperature valid for medium model";

::

      constant Temperature T_max "Maximum temperature valid for medium model";

::

      constant Temperature T0=reference_T "Zero enthalpy temperature";

::

      constant MolarMass MM_const "Molar mass";

::

      constant FluidConstants[nS] fluidConstants "fluid constants";

--------------

|image58| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.ThermodynamicState
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermodynamic state**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_
(Minimal variable set that is available as input argument to every
medium function).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare record extends ThermodynamicState "Thermodynamic state"
      AbsolutePressure p "Absolute pressure of medium";
      Temperature T "Temperature of medium";
    end ThermodynamicState;

--------------

|image59| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.BaseProperties
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base properties**

Information
~~~~~~~~~~~

::

This is the most simple incompressible medium model, where specific
enthalpy h and specific internal energy u are only a function of
temperature T and all other provided medium quantities are assumed to be
constant. Note that the (small) influence of the pressure term p/d is
neglected.

::

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

    redeclare replaceable model extends BaseProperties(
      T(stateSelect=if preferredMediumStates then StateSelect.prefer else 
                         StateSelect.default),
      p(stateSelect=if preferredMediumStates then StateSelect.prefer else 
                         StateSelect.default)) "Base properties"
    equation 
          assert(T >= T_min and T <= T_max, "
    Temperature T (= " + String(T) + " K) is not
    in the allowed range (" + String(T_min) + " K <= T <= " + String(T_max)
             + " K)
    required from medium model \"" + mediumName + "\".
    ");

          // h = cp_const*(T-T0);
      h = specificEnthalpy_pTX(p,T,X);
      u = cv_const*(T-T0);
      d = d_const;
      R = 0;
      MM = MM_const;
      state.T = T;
      state.p = p;
    end BaseProperties;

--------------

|image60| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.setState\_pTX
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state from p, T, and X or Xi**

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

+-----------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                                          | Name    | Description                  |
+===============================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function setState_pTX 
      "Return thermodynamic state from p, T, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := ThermodynamicState(p=p,T=T);
    end setState_pTX;

--------------

|image61| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.setState\_phX
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state from p, h, and X or Xi**

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

+-----------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                                          | Name    | Description                  |
+===============================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function setState_phX 
      "Return thermodynamic state from p, h, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := ThermodynamicState(p=p,T=T0+h/cp_const);
    end setState_phX;

--------------

|image62| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.setState\_psX
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state from p, s, and X or Xi**

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

+-----------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                                          | Name    | Description                  |
+===============================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable function setState_psX 
      "Return thermodynamic state from p, s, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      state := ThermodynamicState(p=p,T=Modelica.Math.exp(s/cp_const + Modelica.Math.log(reference_T))) 
        "here the incompressible limit is used, with cp as heat capacity";
    end setState_psX;

--------------

|image63| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.setState\_dTX
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermodynamic state from d, T, and X or Xi**

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

+-----------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+
| Type                                                                                                                                          | Name    | Description                  |
+===============================================================================================================================================+=========+==============================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium.ThermodynamicState>`_   | state   | thermodynamic state record   |
+-----------------------------------------------------------------------------------------------------------------------------------------------+---------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function setState_dTX 
      "Return thermodynamic state from d, T, and X or Xi"
      extends Modelica.Icons.Function;
      input Density d "density";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    algorithm 
      assert(false,"pressure can not be computed from temperature and density for an incompressible fluid!");
    end setState_dTX;

--------------

|image64| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.setSmoothState
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

|image65| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.dynamicViscosity
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return dynamic viscosity**

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
      "Return dynamic viscosity"

    algorithm 
      eta := eta_const;
    end dynamicViscosity;

--------------

|image66| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.thermalConductivity
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return thermal conductivity**

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
      "Return thermal conductivity"

    algorithm 
      lambda := lambda_const;
    end thermalConductivity;

--------------

|image67| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.pressure
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure**

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

    redeclare function extends pressure "Return pressure"

    algorithm 
      p := state.p;
    end pressure;

--------------

|image68| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.temperature
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return temperature**

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

    redeclare function extends temperature "Return temperature"

    algorithm 
      T := state.T;
    end temperature;

--------------

|image69| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.density
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density**

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

    redeclare function extends density "Return density"

    algorithm 
      d := d_const;
    end density;

--------------

|image70| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.specificEnthalpy
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy**

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
      "Return specific enthalpy"

    algorithm 
      h := cp_const*(state.T-T0);
    end specificEnthalpy;

--------------

|image71| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.specificHeatCapacityCp
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      cp := cp_const;
    end specificHeatCapacityCp;

--------------

|image72| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.specificHeatCapacityCv
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific heat capacity at constant volume**

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
      "Return specific heat capacity at constant volume"

    algorithm 
      cv := cv_const;
    end specificHeatCapacityCv;

--------------

|image73| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.isentropicExponent
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      gamma := cp_const/cv_const;
    end isentropicExponent;

--------------

|image74| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.velocityOfSound
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return velocity of sound**

Information
~~~~~~~~~~~

Extends from
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

    redeclare function extends velocityOfSound 
      "Return velocity of sound "

    algorithm 
      a := a_const;
    end velocityOfSound;

--------------

|image75| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.specificEnthalpy\_pTX
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific enthalpy from p, T, and X or Xi**

Information
~~~~~~~~~~~

::

This function computes the specific enthalpy of the fluid, but neglects
the (small) influence of the pressure term p/d.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+--------------------------+
| Type                                                                                                                          | Name    | Default   | Description              |
+===============================================================================================================================+=========+===========+==========================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p       |           | Pressure [Pa]            |
+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+--------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_             | T       |           | Temperature [K]          |
+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+--------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | X[nX]   |           | Mass fractions [kg/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+--------------------------+

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

    redeclare function specificEnthalpy_pTX 
      "Return specific enthalpy from p, T, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[nX] "Mass fractions";
      output SpecificEnthalpy h "Specific enthalpy";
    algorithm 
      h := cp_const*(T-T0);
    end specificEnthalpy_pTX;

--------------

|image76| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.temperature\_phX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return temperature from p, h, and X or Xi**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------+
| Type                                                                                                                          | Name    | Default   | Description                |
+===============================================================================================================================+=========+===========+============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p       |           | Pressure [Pa]              |
+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h       |           | Specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | X[nX]   |           | Mass fractions [kg/kg]     |
+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------+

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

    redeclare function temperature_phX 
      "Return temperature from p, h, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[nX] "Mass fractions";
      output Temperature T "Temperature";
    algorithm 
      T := T0 + h/cp_const;
    end temperature_phX;

--------------

|image77| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.density\_phX
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density from p, h, and X or Xi**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------+
| Type                                                                                                                          | Name    | Default   | Description                |
+===============================================================================================================================+=========+===========+============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p       |           | Pressure [Pa]              |
+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h       |           | Specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | X[nX]   |           | Mass fractions [kg/kg]     |
+-------------------------------------------------------------------------------------------------------------------------------+---------+-----------+----------------------------+

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

    redeclare function density_phX 
      "Return density from p, h, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[nX] "Mass fractions";
      output Density d "density";
    algorithm 
      d := density(setState_phX(p,h,X));
    end density_phX;

--------------

|image78| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.specificInternalEnergy
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific internal energy**

Information
~~~~~~~~~~~

::

This function computes the specific internal energy of the fluid, but
neglects the (small) influence of the pressure term p/d.

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
    //  u := cv_const*(state.T - T0) - reference_p/d_const;
      u := cv_const*(state.T - T0);
    end specificInternalEnergy;

--------------

|image79| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.specificEntropy
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      s := cv_const*Modelica.Math.log(state.T/T0);
    end specificEntropy;

--------------

|image80| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.specificGibbsEnergy
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      g := specificEnthalpy(state) - state.T*specificEntropy(state);
    end specificGibbsEnergy;

--------------

|image81| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.specificHelmholtzEnergy
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      f := specificInternalEnergy(state) - state.T*specificEntropy(state);
    end specificHelmholtzEnergy;

--------------

|image82| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.isentropicEnthalpy
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return isentropic enthalpy**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy>`_
(Return isentropic enthalpy).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------+
| Type                                                                                                                              | Name            | Default   | Description                   |
+===================================================================================================================================+=================+===========+===============================+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_       | p\_downstream   |           | downstream pressure [Pa]      |
+-----------------------------------------------------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_   | refState        |           | reference state for entropy   |
+-----------------------------------------------------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------+

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
    algorithm 
      h_is := cp_const*(temperature(refState) - T0);
    end isentropicEnthalpy;

--------------

|image83| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.isobaricExpansionCoefficient
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      beta := 0.0;
    end isobaricExpansionCoefficient;

--------------

|image84| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.isothermalCompressibility
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      kappa := 0;
    end isothermalCompressibility;

--------------

|image85| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.density\_derp\_T
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      ddpT := 0;
    end density_derp_T;

--------------

|image86| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.density\_derT\_p
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      ddTp := 0;
    end density_derT_p;

--------------

|image87| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.density\_derX
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

|image88| `Modelica.Media.Interfaces.PartialSimpleMedium <Modelica_Media_Interfaces_PartialSimpleMedium.html#Modelica.Media.Interfaces.PartialSimpleMedium>`_.molarMass
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      MM := MM_const;
    end molarMass;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:30
2010.

.. |Modelica.Media.Interfaces.PartialSimpleMedium.ThermodynamicState| image:: Modelica.Media.Interfaces.PartialSimpleMedium.ThermodynamicStateS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.BaseProperties| image:: Modelica.Media.Interfaces.PartialSimpleMedium.BasePropertiesS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.setState\_pTX| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.setState\_phX| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.setState\_psX| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.setState\_dTX| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.setSmoothState| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.dynamicViscosity| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.thermalConductivity| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.pressure| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.temperature| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.density| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.specificEnthalpy| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.specificHeatCapacityCp| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.specificHeatCapacityCv| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.isentropicExponent| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.velocityOfSound| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.specificEnthalpy\_pTX| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.temperature\_phX| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.density\_phX| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.specificInternalEnergy| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.specificEntropy| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.specificGibbsEnergy| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.specificHelmholtzEnergy| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.isentropicEnthalpy| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.isobaricExpansionCoefficient| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.isothermalCompressibility| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.density\_derp\_T| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.density\_derT\_p| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.density\_derX| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialSimpleMedium.molarMass| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.setState\_pT| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXS.png
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
.. |Modelica.Media.Interfaces.PartialMedium.FluidConstants| image:: Modelica.Media.Interfaces.PartialMedium.FluidConstantsS.png
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialTwoPhaseMedium.density_phS.png
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
.. |image58| image:: Modelica.Media.Interfaces.PartialSimpleMedium.ThermodynamicStateI.png
.. |image59| image:: Modelica.Media.Interfaces.PartialSimpleMedium.BasePropertiesI.png
.. |image60| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image61| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image62| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image63| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image64| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image65| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image66| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image67| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image68| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image69| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image70| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image71| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image72| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image73| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image74| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image75| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image76| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image77| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image78| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image79| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image80| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image81| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image82| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image83| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image84| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image85| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image86| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image87| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
.. |image88| image:: Modelica.Media.Interfaces.PartialSimpleMedium.setState_pTXI.png
