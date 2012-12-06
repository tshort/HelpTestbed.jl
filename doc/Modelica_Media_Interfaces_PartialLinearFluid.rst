============================================
Modelica.Media.Interfaces.PartialLinearFluid
============================================

`Modelica.Media.Interfaces <Modelica_Media_Interfaces.html#Modelica.Media.Interfaces>`_.PartialLinearFluid
----------------------------------------------------------------------------------------------------------

**Generic pure liquid model with constant cp, compressibility and
thermal expansion coefficients**

Information
~~~~~~~~~~~

::

Linear Compressibility Fluid Model
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This linear compressibility fluid model is based on the assumptions
that:

-  The specific heat capacity at constant pressure (cp) is constant
-  The isobaric expansion coefficient (beta) is constant
-  The isothermal compressibility (kappa) is constant
-  Pressure and temperature are used as states
-  The influence of density on specific enthalpy (h), entropy (s), inner
   energy (u) and heat capacity (cv) at constant volume is neglected.

That means that the density is a linear function in temperature and in
pressure. In order to define the complete model, a number of constant
reference values are needed which are computed at the reference values
of the states pressure p and temperature T. The model can be
interprested as a linearization of a full non-linear fluid model (but it
is not linear in all thermodynamic coordinates). Reference values are
needed for

#. the density (reference\_d),
#. the specific enthalpy (reference\_h),
#. the specific entropy (reference\_s).

Apart from that, a user needs to define the molar mass, MM\_const. Note
that it is possible to define a fluid by computing the reference values
from a full non-linear fluid model by computing the package constants
using the standard functions defined in a fluid package (see example in
liquids package).

In order to avoid numerical inversion of the temperature in the T\_ph
and T\_ps functions, the density is always taken to be the reference
density in the computation of h, s, u and cv. For liquids (and this
model is intended only for liquids) the relative error of doing so is
1e-3 to 1e-4 at most. The model would be more "correct" based on the
other assumptions, if occurences of reference\_d in the computations of
h,s,u and cv would be replaced by a call to density(state). That would
require a numerical solution for T\_ps, while T\_ph can be solved
symbolicallyfrom a quadratic function. Errors from this approximation
are small because liquid density varies little.

Efficiency considerations
^^^^^^^^^^^^^^^^^^^^^^^^^

One of the main reasons to use a simple, linear fluid model is to
achieve high performance in simulations. There are a number of possible
compromises and possibilities to improve performance. Some of them can
be influenced by a flag. The following rules where used in this model:

-  All forward evaluations (using the ThermodynamicState record as
   input) are exactly following the assumptions above.
-  If the flag **constantJacobian** is set to true in the package, all
   functions that typically appear in thermodynamic jacobians
   (specificHeatCapacityCv, density\_derp\_h, density\_derh\_p,
   density\_derp\_T, density\_derT\_p) are evaluated at reference
   conditions (that means using the reference density) instead of the
   density of the current pressure and temperature. This makes it
   possible to evaluate the thermodynamic jacobian at compile time.
-  For inverse functions using other inputs than the states (e.g
   pressure p and specific enthalpy h), the inversion is using the
   reference state whenever that is necessary to achieve a symbolic
   inversion.
-  If **constantJacobian** is set to false, the above list of functions
   is computed exactly according to the above list of assumptions

**Authors:**

Francesco Casella
 Dipartimento di Elettronica e Informazione
 Politecnico di Milano
 Via Ponzio 34/5
 I-20133 Milano, Italy
 email: `casella@elet.polimi.it <mailto:casella@elet.polimi.it>`_
 and
 Hubertus Tummescheit
 Modelon AB
 Ideon Science Park
 SE-22730 Lund, Sweden
 email:
`Hubertus.Tummescheit@Modelon.se <mailto:Hubertus.Tummescheit@Modelon.se>`_

::

Extends from
`Interfaces.PartialPureSubstance <Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance>`_
(base class for pure substances of one chemical substance).

Package Content
~~~~~~~~~~~~~~~

Name

Description

cp\_const

Specific heat capacity at constant pressure

beta\_const

Thermal expansion coefficient at constant pressure

kappa\_const

Isothermal compressibility

MM\_const

Molar mass

reference\_d

Density in reference conditions

reference\_h

Specific enthalpy in reference conditions

reference\_s

Specific enthalpy in reference conditions

constantJacobian

if true, entries in thermodynamic Jacobian are constant, taken at
reference conditions

|Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicState|
`ThermodynamicState <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicState>`_

a selection of variables that uniquely defines the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.BaseProperties|
`BaseProperties <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.BaseProperties>`_

Base properties of medium

|Modelica.Media.Interfaces.PartialLinearFluid.setState\_pTX|
`setState\_pTX <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_pTX>`_

set the thermodynamic state record from p and T (X not needed)

|Modelica.Media.Interfaces.PartialLinearFluid.setState\_phX|
`setState\_phX <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_phX>`_

set the thermodynamic state record from p and h (X not needed)

|Modelica.Media.Interfaces.PartialLinearFluid.setState\_psX|
`setState\_psX <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_psX>`_

set the thermodynamic state record from p and s (X not needed)

|Modelica.Media.Interfaces.PartialLinearFluid.setState\_dTX|
`setState\_dTX <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_dTX>`_

set the thermodynamic state record from d and T (X not needed)

|Modelica.Media.Interfaces.PartialLinearFluid.setSmoothState|
`setSmoothState <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

|Modelica.Media.Interfaces.PartialLinearFluid.pressure|
`pressure <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.pressure>`_

Return the pressure from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.temperature|
`temperature <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.temperature>`_

Return the temperature from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.density|
`density <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density>`_

Return the density from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.specificEnthalpy|
`specificEnthalpy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificEnthalpy>`_

Return the specific enthalpy from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.specificEntropy|
`specificEntropy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificEntropy>`_

Return the specific entropy from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificInternalEnergy>`_

Return the specific internal energy from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificGibbsEnergy>`_

Return specific Gibbs energy from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHelmholtzEnergy>`_

Return specific Helmholtz energy from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.velocityOfSound|
`velocityOfSound <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.velocityOfSound>`_

Return velocity of sound from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.isentropicExponent|
`isentropicExponent <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isentropicExponent>`_

Return isentropic exponent from the thermodynamic state

|Modelica.Media.Interfaces.PartialLinearFluid.isentropicEnthalpy|
`isentropicEnthalpy <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isentropicEnthalpy>`_

Return isentropic enthalpy

|Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCp>`_

Return specific heat capacity at constant volume

|Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCv>`_

Return specific heat capacity at constant volume from the thermodynamic
state

|Modelica.Media.Interfaces.PartialLinearFluid.isothermalCompressibility|
`isothermalCompressibility <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isothermalCompressibility>`_

Return the iso-thermal compressibility kappa

|Modelica.Media.Interfaces.PartialLinearFluid.isobaricExpansionCoefficient|
`isobaricExpansionCoefficient <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isobaricExpansionCoefficient>`_

Return the iso-baric expansion coefficient

|Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_h|
`density\_derp\_h <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derp_h>`_

Return density derivative w.r.t. pressure at const specific enthalpy

|Modelica.Media.Interfaces.PartialLinearFluid.density\_derh\_p|
`density\_derh\_p <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derh_p>`_

Return density derivative w.r.t. specific enthalpy at constant pressure

|Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_T|
`density\_derp\_T <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derp_T>`_

Return density derivative w.r.t. pressure at const temperature

|Modelica.Media.Interfaces.PartialLinearFluid.density\_derT\_p|
`density\_derT\_p <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derT_p>`_

Return density derivative w.r.t. temperature at constant pressure

|Modelica.Media.Interfaces.PartialLinearFluid.density\_derX|
`density\_derX <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derX>`_

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

|Modelica.Media.Interfaces.PartialLinearFluid.molarMass|
`molarMass <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.molarMass>`_

Return molar mass

|Modelica.Media.Interfaces.PartialLinearFluid.T\_ph|
`T\_ph <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.T_ph>`_

Return temperature from pressure and specific enthalpy

|Modelica.Media.Interfaces.PartialLinearFluid.T\_ps|
`T\_ps <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.T_ps>`_

Return temperature from pressure and specific entropy

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

|Modelica.Media.Interfaces.PartialMedium.dynamicViscosity|
`dynamicViscosity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.dynamicViscosity>`_

Return dynamic viscosity

|Modelica.Media.Interfaces.PartialMedium.thermalConductivity|
`thermalConductivity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.thermalConductivity>`_

Return thermal conductivity

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

          constant SpecificHeatCapacity cp_const 
      "Specific heat capacity at constant pressure";

::

          constant IsobaricExpansionCoefficient beta_const 
      "Thermal expansion coefficient at constant pressure";

::

          constant SI.IsothermalCompressibility kappa_const 
      "Isothermal compressibility";

::

          constant MolarMass MM_const "Molar mass";

::

          constant Density reference_d "Density in reference conditions";

::

          constant SpecificEnthalpy reference_h 
      "Specific enthalpy in reference conditions";

::

          constant SpecificEntropy reference_s 
      "Specific enthalpy in reference conditions";

::

          constant Boolean constantJacobian 
      "if true, entries in thermodynamic Jacobian are constant, taken at reference conditions";

--------------

`Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.ThermodynamicState
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**a selection of variables that uniquely defines the thermodynamic
state**

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare record ThermodynamicState 
      "a selection of variables that uniquely defines the thermodynamic state"
      AbsolutePressure p "Absolute pressure of medium";
      Temperature T "Temperature of medium";
    end ThermodynamicState;

--------------

|image60| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.BaseProperties
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base properties of medium**

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
      T(stateSelect=if preferredMediumStates then StateSelect.prefer else 
                         StateSelect.default),
      p(stateSelect=if preferredMediumStates then StateSelect.prefer else 
                         StateSelect.default)) 
      "Base properties of medium"
    equation 
      d = (1 + (p-reference_p)*kappa_const - (T-reference_T)*beta_const)*reference_d;
      h = reference_h +
          (T-reference_T)*cp_const +
          (p-reference_p)*(1-beta_const*reference_T)/reference_d;
      u = h - p/d;
      p = state.p;
      T = state.T;
      MM = MM_const;
      R  = 8.3144/MM;
    end BaseProperties;

--------------

|image61| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.setState\_pTX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**set the thermodynamic state record from p and T (X not needed)**

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
      "set the thermodynamic state record from p and T (X not needed)"
    algorithm 
      state := ThermodynamicState(p=p,T=T);
    end setState_pTX;

--------------

|image62| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.setState\_phX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**set the thermodynamic state record from p and h (X not needed)**

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
      "set the thermodynamic state record from p and h (X not needed)"
    algorithm 
      state := ThermodynamicState(p=p,
                                  T=(h - reference_h - (p - reference_p)*((1 - beta_const*reference_T)
                                    /reference_d))/cp_const + reference_T);
    end setState_phX;

--------------

|image63| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.setState\_psX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**set the thermodynamic state record from p and s (X not needed)**

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
      "set the thermodynamic state record from p and s (X not needed)"
    algorithm 
      state := ThermodynamicState(p=p,
                                  T=reference_T*cp_const/(cp_const - s+reference_s +(p-reference_p)*
                                    (-beta_const/reference_d)));
    end setState_psX;

--------------

|image64| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.setState\_dTX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**set the thermodynamic state record from d and T (X not needed)**

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
      "set the thermodynamic state record from d and T (X not needed)"
    algorithm 
      state := ThermodynamicState(p=((d-reference_d) + (state.T-reference_T)*beta_const*reference_d)
                                    /(reference_d*kappa_const) + reference_p,
                                  T=T);
    end setState_dTX;

--------------

|image65| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.setSmoothState
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      state := ThermodynamicState(p= Media.Common.smoothStep(x, state_a.p, state_b.p, x_small),
                                  T= Media.Common.smoothStep(x, state_a.T, state_b.T, x_small));
    end setSmoothState;

--------------

|image66| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.pressure
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the pressure from the thermodynamic state**

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
      "Return the pressure from the thermodynamic state"
    algorithm 
      p :=state.p;
    end pressure;

--------------

|image67| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.temperature
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the temperature from the thermodynamic state**

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
      "Return the temperature from the thermodynamic state"
    algorithm 
      T :=state.T;
    end temperature;

--------------

|image68| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.density
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the density from the thermodynamic state**

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
      "Return the density from the thermodynamic state"
    algorithm 
      d := (1 + (state.p-reference_p)*kappa_const - (state.T-reference_T)*beta_const)*reference_d;
    end density;

--------------

|image69| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.specificEnthalpy
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the specific enthalpy from the thermodynamic state**

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
      "Return the specific enthalpy from the thermodynamic state"
    algorithm 
    h := reference_h +
        (state.T-reference_T)*cp_const +
        (state.p-reference_p)*(1-beta_const*reference_T)/reference_d;
    end specificEnthalpy;

--------------

|image70| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.specificEntropy
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the specific entropy from the thermodynamic state**

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

    redeclare function extends specificEntropy 
      "Return the specific entropy from the thermodynamic state"
    algorithm 
    s := reference_s +
        (state.T-reference_T)*cp_const/state.T +
        (state.p-reference_p)*(-beta_const/reference_d);
    end specificEntropy;

--------------

|image71| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.specificInternalEnergy
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the specific internal energy from the thermodynamic state**

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
      "Return the specific internal energy from the thermodynamic state"
    algorithm 
      u := specificEnthalpy(state)-state.p/reference_d;
    end specificInternalEnergy;

--------------

|image72| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.specificGibbsEnergy
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific Gibbs energy from the thermodynamic state**

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
      "Return specific Gibbs energy from the thermodynamic state"
      extends Modelica.Icons.Function;
    algorithm 
      g := specificEnthalpy(state) - state.T*specificEntropy(state);
    end specificGibbsEnergy;

--------------

|image73| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.specificHelmholtzEnergy
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific Helmholtz energy from the thermodynamic state**

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
      "Return specific Helmholtz energy from the thermodynamic state"
      extends Modelica.Icons.Function;
    algorithm 
      f := specificInternalEnergy(state) - state.T*specificEntropy(state);
    end specificHelmholtzEnergy;

--------------

|image74| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.velocityOfSound
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return velocity of sound from the thermodynamic state**

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

    redeclare function extends velocityOfSound 
      "Return velocity of sound from the thermodynamic state"
      extends Modelica.Icons.Function;
    algorithm 
      a := sqrt(max(0,1/(kappa_const*density(state) -beta_const*beta_const*state.T/cp_const)));
    end velocityOfSound;

--------------

|image75| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.isentropicExponent
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return isentropic exponent from the thermodynamic state**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions),
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
      "Return isentropic exponent from the thermodynamic state"
      extends Modelica.Icons.Function;
    algorithm 
     gamma := 1/(state.p*kappa_const)*cp_const/specificHeatCapacityCv(state);
    end isentropicExponent;

--------------

|image76| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.isentropicEnthalpy
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return isentropic enthalpy**

Information
~~~~~~~~~~~

::

A minor approximation is used: the reference density is used instead of
the real one, which would require a numeric solution.

::

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

    /* Previous wrong equation:

    protected
      SpecificEntropy s_upstream = specificEntropy(refState)
        "specific entropy at component inlet";
      ThermodynamicState downstreamState "state at downstream location";
    algorithm
      downstreamState.p := p_downstream;
      downstreamState.T := reference_T*cp_const/
        (s_upstream -reference_s -(p_downstream-reference_p)*(-beta_const/reference_d) - cp_const);
      h_is := specificEnthalpy(downstreamState);
    */
    algorithm 
      /* s := reference_s + (refState.T-reference_T)*cp_const/refState.T +
                            (refState.p-reference_p)*(-beta_const/reference_d)
            = reference_s + (state.T-reference_T)*cp_const/state.T +
                            (p_downstream-reference_p)*(-beta_const/reference_d);

          (state.T-reference_T)*cp_const/state.T
         = (refState.T-reference_T)*cp_const/refState.T + (refState.p-reference_p)*(-beta_const/reference_d)
           - (p_downstream-reference_p)*(-beta_const/reference_d)
         = (refState.T-reference_T)*cp_const/refState.T + (refState.p-p_downstream)*(-beta_const/reference_d)

         (x - reference_T)/x = k
         x - reference_T = k*x
         (1-k)*x = reference_T
         x = reference_T/(1-k);

         state.T = reference_T/(1 - ((refState.T-reference_T)*cp_const/refState.T + (refState.p-p_downstream)*(-beta_const/reference_d))/cp_const)
      */

      h_is :=specificEnthalpy(setState_pTX(
        p_downstream,
        reference_T/(1 - ( (refState.T - reference_T)/refState.T +
                           (refState.p - p_downstream)*(-beta_const/(reference_d*cp_const)))),
        reference_X));
    end isentropicEnthalpy;

--------------

|image77| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.specificHeatCapacityCp
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific heat capacity at constant volume**

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
      "Return specific heat capacity at constant volume"
    algorithm 
      cp := cp_const;
    end specificHeatCapacityCp;

--------------

|image78| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.specificHeatCapacityCv
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return specific heat capacity at constant volume from the
thermodynamic state**

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
      "Return specific heat capacity at constant volume from the thermodynamic state"
    algorithm 
      cv := if constantJacobian then cp_const - reference_T*beta_const*beta_const/(kappa_const*reference_d) else 
            state.T*beta_const*beta_const/(kappa_const*reference_d);
    end specificHeatCapacityCv;

--------------

|image79| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.isothermalCompressibility
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the iso-thermal compressibility kappa**

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
      "Return the iso-thermal compressibility kappa"
    algorithm 
      kappa := kappa_const;
    end isothermalCompressibility;

--------------

|image80| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.isobaricExpansionCoefficient
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the iso-baric expansion coefficient**

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
      "Return the iso-baric expansion coefficient"
    algorithm 
      beta := beta_const;
    end isobaricExpansionCoefficient;

--------------

|image81| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.density\_derp\_h
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density derivative w.r.t. pressure at const specific enthalpy**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_h>`_
(Return density derivative w.r.t. pressure at const specific enthalpy).

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
| `DerDensityByPressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByPressure>`_   | ddph   | Density derivative w.r.t. pressure [s2/m2]   |
+---------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends density_derp_h 
      "Return density derivative w.r.t. pressure at const specific enthalpy"
    algorithm 
      ddph := if constantJacobian then kappa_const*reference_d +
        (beta_const*(1-reference_T*beta_const))/cp_const else 
            kappa_const*density(state) +
         (beta_const*(1-temperature(state)*beta_const))/cp_const;
    end density_derp_h;

--------------

|image82| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.density\_derh\_p
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density derivative w.r.t. specific enthalpy at constant
pressure**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derh_p>`_
(Return density derivative w.r.t. specific enthalpy at constant
pressure).

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
| `DerDensityByEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.DerDensityByEnthalpy>`_   | ddhp   | Density derivative w.r.t. specific enthalpy [kg.s2/m5]   |
+---------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends density_derh_p 
      "Return density derivative w.r.t. specific enthalpy at constant pressure"
    algorithm 
    ddhp := if constantJacobian then -beta_const*reference_d/cp_const else 
            -beta_const*density(state)/cp_const;
    end density_derh_p;

--------------

|image83| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.density\_derp\_T
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density derivative w.r.t. pressure at const temperature**

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
      "Return density derivative w.r.t. pressure at const temperature"
    algorithm 
      ddpT := if constantJacobian then kappa_const*reference_d else 
            kappa_const*density(state);
    end density_derp_T;

--------------

|image84| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.density\_derT\_p
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return density derivative w.r.t. temperature at constant pressure**

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
      "Return density derivative w.r.t. temperature at constant pressure"
    algorithm 
      ddTp := if constantJacobian then -beta_const*reference_d else 
           -beta_const*density(state);
    end density_derT_p;

--------------

|image85| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.density\_derX
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

|image86| `Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.molarMass
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return molar mass**

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

    redeclare function extends molarMass "Return molar mass"
    algorithm 
      MM  := MM_const;
    end molarMass;

--------------

`Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.T\_ph
------------------------------------------------------------------------------------------------------------------------------------------------------

**Return temperature from pressure and specific enthalpy**

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                                                          | Name   | Default   | Description                |
+===============================================================================================================================+========+===========+============================+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h      |           | Specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p      |           | pressure [Pa]              |
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

    function T_ph 
      "Return temperature from pressure and specific enthalpy"
      input SpecificEnthalpy h "Specific enthalpy";
      input AbsolutePressure p "pressure";
      output Temperature T "Temperature";
    algorithm 
      T :=(h - reference_h - (p - reference_p)*((1 - beta_const*reference_T)
        /reference_d))/cp_const + reference_T;
    end T_ph;

--------------

`Modelica.Media.Interfaces.PartialLinearFluid <Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid>`_.T\_ps
------------------------------------------------------------------------------------------------------------------------------------------------------

**Return temperature from pressure and specific entropy**

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

    function T_ps "Return temperature from pressure and specific entropy"
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      output Temperature T "Temperature";
    algorithm 
      T := reference_T*cp_const/(s-reference_s -(p-reference_p)*(-beta_const/reference_d) - cp_const);
    end T_ps;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:29
2010.

.. |Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicState| image:: Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicStateS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.BaseProperties| image:: Modelica.Media.Interfaces.PartialLinearFluid.BasePropertiesS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.setState\_pTX| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.setState\_phX| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.setState\_psX| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.setState\_dTX| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.setSmoothState| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.pressure| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.temperature| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificEnthalpy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificEntropy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificInternalEnergy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificGibbsEnergy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificHelmholtzEnergy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.velocityOfSound| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.isentropicExponent| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.isentropicEnthalpy| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCp| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCv| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.isothermalCompressibility| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.isobaricExpansionCoefficient| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_h| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density\_derh\_p| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_T| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density\_derT\_p| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.density\_derX| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.molarMass| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.T\_ph| image:: Modelica.Media.Interfaces.PartialLinearFluid.T_phS.png
.. |Modelica.Media.Interfaces.PartialLinearFluid.T\_ps| image:: Modelica.Media.Interfaces.PartialLinearFluid.T_phS.png
.. |Modelica.Media.Interfaces.PartialPureSubstance.setState\_pT| image:: Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png
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
.. |Modelica.Media.Interfaces.PartialMedium.dynamicViscosity| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.thermalConductivity| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cv| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.beta| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.kappa| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEntropy\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature\_phX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_phX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.Choices| image:: Modelica.Media.Interfaces.PartialMedium.ChoicesS.png
.. |image60| image:: Modelica.Media.Interfaces.PartialLinearFluid.BasePropertiesI.png
.. |image61| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image62| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image63| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image64| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image65| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image66| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image67| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image68| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image69| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image70| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image71| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image72| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image73| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image74| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image75| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image76| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image77| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image78| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image79| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image80| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image81| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image82| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image83| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image84| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image85| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
.. |image86| image:: Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png
