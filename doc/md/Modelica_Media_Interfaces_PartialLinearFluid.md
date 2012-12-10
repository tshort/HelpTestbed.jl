% Modelica.Media.Interfaces.PartialLinearFluid
% 
% 

[Modelica.Media.Interfaces](Modelica_Media_Interfaces.html#Modelica.Media.Interfaces).PartialLinearFluid
========================================================================================================

**Generic pure liquid model with constant cp, compressibility and
thermal expansion coefficients**

Information
-----------

::

### Linear Compressibility Fluid Model

This linear compressibility fluid model is based on the assumptions
that:

-   The specific heat capacity at constant pressure (cp) is constant
-   The isobaric expansion coefficient (beta) is constant
-   The isothermal compressibility (kappa) is constant
-   Pressure and temperature are used as states
-   The influence of density on specific enthalpy (h), entropy (s),
    inner energy (u) and heat capacity (cv) at constant volume is
    neglected.

That means that the density is a linear function in temperature and in
pressure. In order to define the complete model, a number of constant
reference values are needed which are computed at the reference values
of the states pressure p and temperature T. The model can be
interprested as a linearization of a full non-linear fluid model (but it
is not linear in all thermodynamic coordinates). Reference values are
needed for

1.  the density (reference\_d),
2.  the specific enthalpy (reference\_h),
3.  the specific entropy (reference\_s).

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

### Efficiency considerations

One of the main reasons to use a simple, linear fluid model is to
achieve high performance in simulations. There are a number of possible
compromises and possibilities to improve performance. Some of them can
be influenced by a flag. The following rules where used in this model:

-   All forward evaluations (using the ThermodynamicState record as
    input) are exactly following the assumptions above.
-   If the flag **constantJacobian** is set to true in the package, all
    functions that typically appear in thermodynamic jacobians
    (specificHeatCapacityCv, density\_derp\_h, density\_derh\_p,
    density\_derp\_T, density\_derT\_p) are evaluated at reference
    conditions (that means using the reference density) instead of the
    density of the current pressure and temperature. This makes it
    possible to evaluate the thermodynamic jacobian at compile time.
-   For inverse functions using other inputs than the states (e.g
    pressure p and specific enthalpy h), the inversion is using the
    reference state whenever that is necessary to achieve a symbolic
    inversion.
-   If **constantJacobian** is set to false, the above list of functions
    is computed exactly according to the above list of assumptions

**Authors:**

Francesco Casella
  ~ Dipartimento di Elettronica e Informazione Politecnico di Milano Via
    Ponzio 34/5 I-20133 Milano, Italy email:
    [[casella@elet.polimi.it](mailto:casella@elet.polimi.it)](mailto:casella@elet.polimi.it)
    and Hubertus Tummescheit Modelon AB Ideon Science Park SE-22730
    Lund, Sweden email:

[[Hubertus.Tummescheit@Modelon.se](mailto:Hubertus.Tummescheit@Modelon.se)](mailto:Hubertus.Tummescheit@Modelon.se)

::

Extends from
[Interfaces.PartialPureSubstance](Modelica_Media_Interfaces_PartialPureSubstance.html#Modelica.Media.Interfaces.PartialPureSubstance)
(base class for pure substances of one chemical substance).

Package Content
---------------

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

![Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicState](Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicStateS.png)
[ThermodynamicState](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.ThermodynamicState)

a selection of variables that uniquely defines the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.BaseProperties](Modelica.Media.Interfaces.PartialLinearFluid.BasePropertiesS.png)
[BaseProperties](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.BaseProperties)

Base properties of medium

![Modelica.Media.Interfaces.PartialLinearFluid.setState\_pTX](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[setState\_pTX](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_pTX)

set the thermodynamic state record from p and T (X not needed)

![Modelica.Media.Interfaces.PartialLinearFluid.setState\_phX](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[setState\_phX](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_phX)

set the thermodynamic state record from p and h (X not needed)

![Modelica.Media.Interfaces.PartialLinearFluid.setState\_psX](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[setState\_psX](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_psX)

set the thermodynamic state record from p and s (X not needed)

![Modelica.Media.Interfaces.PartialLinearFluid.setState\_dTX](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[setState\_dTX](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setState_dTX)

set the thermodynamic state record from d and T (X not needed)

![Modelica.Media.Interfaces.PartialLinearFluid.setSmoothState](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[setSmoothState](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.setSmoothState)

Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b

![Modelica.Media.Interfaces.PartialLinearFluid.pressure](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[pressure](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.pressure)

Return the pressure from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.temperature](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[temperature](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.temperature)

Return the temperature from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.density](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density)

Return the density from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.specificEnthalpy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificEnthalpy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificEnthalpy)

Return the specific enthalpy from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.specificEntropy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificEntropy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificEntropy)

Return the specific entropy from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.specificInternalEnergy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificInternalEnergy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificInternalEnergy)

Return the specific internal energy from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.specificGibbsEnergy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificGibbsEnergy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificGibbsEnergy)

Return specific Gibbs energy from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.specificHelmholtzEnergy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificHelmholtzEnergy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHelmholtzEnergy)

Return specific Helmholtz energy from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.velocityOfSound](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[velocityOfSound](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.velocityOfSound)

Return velocity of sound from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.isentropicExponent](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[isentropicExponent](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isentropicExponent)

Return isentropic exponent from the thermodynamic state

![Modelica.Media.Interfaces.PartialLinearFluid.isentropicEnthalpy](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[isentropicEnthalpy](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isentropicEnthalpy)

Return isentropic enthalpy

![Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCp](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificHeatCapacityCp](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCp)

Return specific heat capacity at constant volume

![Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCv](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[specificHeatCapacityCv](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.specificHeatCapacityCv)

Return specific heat capacity at constant volume from the thermodynamic
state

![Modelica.Media.Interfaces.PartialLinearFluid.isothermalCompressibility](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[isothermalCompressibility](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isothermalCompressibility)

Return the iso-thermal compressibility kappa

![Modelica.Media.Interfaces.PartialLinearFluid.isobaricExpansionCoefficient](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[isobaricExpansionCoefficient](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.isobaricExpansionCoefficient)

Return the iso-baric expansion coefficient

![Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_h](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density\_derp\_h](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derp_h)

Return density derivative w.r.t. pressure at const specific enthalpy

![Modelica.Media.Interfaces.PartialLinearFluid.density\_derh\_p](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density\_derh\_p](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derh_p)

Return density derivative w.r.t. specific enthalpy at constant pressure

![Modelica.Media.Interfaces.PartialLinearFluid.density\_derp\_T](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density\_derp\_T](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derp_T)

Return density derivative w.r.t. pressure at const temperature

![Modelica.Media.Interfaces.PartialLinearFluid.density\_derT\_p](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density\_derT\_p](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derT_p)

Return density derivative w.r.t. temperature at constant pressure

![Modelica.Media.Interfaces.PartialLinearFluid.density\_derX](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[density\_derX](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.density_derX)

Returns the partial derivative of density with respect to mass fractions
at constant pressure and temperature

![Modelica.Media.Interfaces.PartialLinearFluid.molarMass](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXS.png)
[molarMass](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.molarMass)

Return molar mass

![Modelica.Media.Interfaces.PartialLinearFluid.T\_ph](Modelica.Media.Interfaces.PartialLinearFluid.T_phS.png)
[T\_ph](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.T_ph)

Return temperature from pressure and specific enthalpy

![Modelica.Media.Interfaces.PartialLinearFluid.T\_ps](Modelica.Media.Interfaces.PartialLinearFluid.T_phS.png)
[T\_ps](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid.T_ps)

Return temperature from pressure and specific entropy

Inherited

![Modelica.Media.Interfaces.PartialPureSubstance.setState\_pT](Modelica.Media.Interfaces.PartialPureSubstance.setState_pTS.png)
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

![Modelica.Media.Interfaces.PartialMedium.FluidConstants](Modelica.Media.Interfaces.PartialMedium.FluidConstantsS.png)
[FluidConstants](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants)

critical, triple, molecular and other standard data of fluid

![Modelica.Media.Interfaces.PartialMedium.dynamicViscosity](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[dynamicViscosity](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.dynamicViscosity)

Return dynamic viscosity

![Modelica.Media.Interfaces.PartialMedium.thermalConductivity](Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png)
[thermalConductivity](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.thermalConductivity)

Return thermal conductivity

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

    constant SpecificHeatCapacity cp_const 

> "Specific heat capacity at constant pressure";

    constant IsobaricExpansionCoefficient beta_const 

> "Thermal expansion coefficient at constant pressure";

    constant SI.IsothermalCompressibility kappa_const 

> "Isothermal compressibility";

    constant MolarMass MM_const "Molar mass";

    constant Density reference_d "Density in reference conditions";

    constant SpecificEnthalpy reference_h 

> "Specific enthalpy in reference conditions";

    constant SpecificEntropy reference_s 

> "Specific enthalpy in reference conditions";

    constant Boolean constantJacobian 

> "if true, entries in thermodynamic Jacobian are constant, taken at
> reference conditions";

* * * * *

[Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).ThermodynamicState
=================================================================================================================================================================

**a selection of variables that uniquely defines the thermodynamic
state**

Modelica definition
-------------------

    redeclare record ThermodynamicState 
      "a selection of variables that uniquely defines the thermodynamic state"
      AbsolutePressure p "Absolute pressure of medium";
      Temperature T "Temperature of medium";
    end ThermodynamicState;

* * * * *

![image60](Modelica.Media.Interfaces.PartialLinearFluid.BasePropertiesI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).BaseProperties
==========================================================================================================================================================================================================================================

**Base properties of medium**

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

* * * * *

![image61](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).setState\_pTX
=======================================================================================================================================================================================================================================

**set the thermodynamic state record from p and T (X not needed)**

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
      "set the thermodynamic state record from p and T (X not needed)"
    algorithm 
      state := ThermodynamicState(p=p,T=T);
    end setState_pTX;

* * * * *

![image62](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).setState\_phX
=======================================================================================================================================================================================================================================

**set the thermodynamic state record from p and h (X not needed)**

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
      "set the thermodynamic state record from p and h (X not needed)"
    algorithm 
      state := ThermodynamicState(p=p,
                                  T=(h - reference_h - (p - reference_p)*((1 - beta_const*reference_T)
                                    /reference_d))/cp_const + reference_T);
    end setState_phX;

* * * * *

![image63](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).setState\_psX
=======================================================================================================================================================================================================================================

**set the thermodynamic state record from p and s (X not needed)**

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
      "set the thermodynamic state record from p and s (X not needed)"
    algorithm 
      state := ThermodynamicState(p=p,
                                  T=reference_T*cp_const/(cp_const - s+reference_s +(p-reference_p)*
                                    (-beta_const/reference_d)));
    end setState_psX;

* * * * *

![image64](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).setState\_dTX
=======================================================================================================================================================================================================================================

**set the thermodynamic state record from d and T (X not needed)**

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
      "set the thermodynamic state record from d and T (X not needed)"
    algorithm 
      state := ThermodynamicState(p=((d-reference_d) + (state.T-reference_T)*beta_const*reference_d)
                                    /(reference_d*kappa_const) + reference_p,
                                  T=T);
    end setState_dTX;

* * * * *

![image65](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).setSmoothState
========================================================================================================================================================================================================================================

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
      state := ThermodynamicState(p= Media.Common.smoothStep(x, state_a.p, state_b.p, x_small),
                                  T= Media.Common.smoothStep(x, state_a.T, state_b.T, x_small));
    end setSmoothState;

* * * * *

![image66](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).pressure
==================================================================================================================================================================================================================================

**Return the pressure from the thermodynamic state**

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
      "Return the pressure from the thermodynamic state"
    algorithm 
      p :=state.p;
    end pressure;

* * * * *

![image67](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).temperature
=====================================================================================================================================================================================================================================

**Return the temperature from the thermodynamic state**

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
      "Return the temperature from the thermodynamic state"
    algorithm 
      T :=state.T;
    end temperature;

* * * * *

![image68](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).density
=================================================================================================================================================================================================================================

**Return the density from the thermodynamic state**

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
      "Return the density from the thermodynamic state"
    algorithm 
      d := (1 + (state.p-reference_p)*kappa_const - (state.T-reference_T)*beta_const)*reference_d;
    end density;

* * * * *

![image69](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).specificEnthalpy
==========================================================================================================================================================================================================================================

**Return the specific enthalpy from the thermodynamic state**

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
      "Return the specific enthalpy from the thermodynamic state"
    algorithm 
    h := reference_h +
        (state.T-reference_T)*cp_const +
        (state.p-reference_p)*(1-beta_const*reference_T)/reference_d;
    end specificEnthalpy;

* * * * *

![image70](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).specificEntropy
=========================================================================================================================================================================================================================================

**Return the specific entropy from the thermodynamic state**

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

    redeclare function extends specificEntropy 
      "Return the specific entropy from the thermodynamic state"
    algorithm 
    s := reference_s +
        (state.T-reference_T)*cp_const/state.T +
        (state.p-reference_p)*(-beta_const/reference_d);
    end specificEntropy;

* * * * *

![image71](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).specificInternalEnergy
================================================================================================================================================================================================================================================

**Return the specific internal energy from the thermodynamic state**

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
      "Return the specific internal energy from the thermodynamic state"
    algorithm 
      u := specificEnthalpy(state)-state.p/reference_d;
    end specificInternalEnergy;

* * * * *

![image72](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).specificGibbsEnergy
=============================================================================================================================================================================================================================================

**Return specific Gibbs energy from the thermodynamic state**

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
      "Return specific Gibbs energy from the thermodynamic state"
      extends Modelica.Icons.Function;
    algorithm 
      g := specificEnthalpy(state) - state.T*specificEntropy(state);
    end specificGibbsEnergy;

* * * * *

![image73](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).specificHelmholtzEnergy
=================================================================================================================================================================================================================================================

**Return specific Helmholtz energy from the thermodynamic state**

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
      "Return specific Helmholtz energy from the thermodynamic state"
      extends Modelica.Icons.Function;
    algorithm 
      f := specificInternalEnergy(state) - state.T*specificEntropy(state);
    end specificHelmholtzEnergy;

* * * * *

![image74](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).velocityOfSound
=========================================================================================================================================================================================================================================

**Return velocity of sound from the thermodynamic state**

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

    redeclare function extends velocityOfSound 
      "Return velocity of sound from the thermodynamic state"
      extends Modelica.Icons.Function;
    algorithm 
      a := sqrt(max(0,1/(kappa_const*density(state) -beta_const*beta_const*state.T/cp_const)));
    end velocityOfSound;

* * * * *

![image75](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).isentropicExponent
============================================================================================================================================================================================================================================

**Return isentropic exponent from the thermodynamic state**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions),
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
      "Return isentropic exponent from the thermodynamic state"
      extends Modelica.Icons.Function;
    algorithm 
     gamma := 1/(state.p*kappa_const)*cp_const/specificHeatCapacityCv(state);
    end isentropicExponent;

* * * * *

![image76](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).isentropicEnthalpy
============================================================================================================================================================================================================================================

**Return isentropic enthalpy**

Information
-----------

::

A minor approximation is used: the reference density is used instead of
the real one, which would require a numeric solution.

::

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.isentropicEnthalpy)
(Return isentropic enthalpy).

Inputs
------

  ------------------------------------------------------------------------
  Type                                             Name   Defa Description
                                                          ult  
  ------------------------------------------------ ------ ---- -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Par p\_dow      downstream
  tialMedium.html#Modelica.Media.Interfaces.Partia nstrea      pressure
  lMedium.AbsolutePressure)                        m           [Pa]

  [ThermodynamicState](Modelica_Media_Interfaces_P refSta      reference
  artialMedium.html#Modelica.Media.Interfaces.Part te          state for
  ialMedium.ThermodynamicState)                                entropy
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

* * * * *

![image77](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).specificHeatCapacityCp
================================================================================================================================================================================================================================================

**Return specific heat capacity at constant volume**

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
      "Return specific heat capacity at constant volume"
    algorithm 
      cp := cp_const;
    end specificHeatCapacityCp;

* * * * *

![image78](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).specificHeatCapacityCv
================================================================================================================================================================================================================================================

**Return specific heat capacity at constant volume from the
thermodynamic state**

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
      "Return specific heat capacity at constant volume from the thermodynamic state"
    algorithm 
      cv := if constantJacobian then cp_const - reference_T*beta_const*beta_const/(kappa_const*reference_d) else 
            state.T*beta_const*beta_const/(kappa_const*reference_d);
    end specificHeatCapacityCv;

* * * * *

![image79](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).isothermalCompressibility
===================================================================================================================================================================================================================================================

**Return the iso-thermal compressibility kappa**

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
      "Return the iso-thermal compressibility kappa"
    algorithm 
      kappa := kappa_const;
    end isothermalCompressibility;

* * * * *

![image80](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).isobaricExpansionCoefficient
======================================================================================================================================================================================================================================================

**Return the iso-baric expansion coefficient**

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
      "Return the iso-baric expansion coefficient"
    algorithm 
      beta := beta_const;
    end isobaricExpansionCoefficient;

* * * * *

![image81](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).density\_derp\_h
==========================================================================================================================================================================================================================================

**Return density derivative w.r.t. pressure at const specific enthalpy**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derp_h)
(Return density derivative w.r.t. pressure at const specific enthalpy).

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
  rtialMedium.html#Modelica.Media.Interfaces.PartialM h   derivative w.r.t.
  edium.DerDensityByPressure)                             pressure [s2/m2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends density_derp_h 
      "Return density derivative w.r.t. pressure at const specific enthalpy"
    algorithm 
      ddph := if constantJacobian then kappa_const*reference_d +
        (beta_const*(1-reference_T*beta_const))/cp_const else 
            kappa_const*density(state) +
         (beta_const*(1-temperature(state)*beta_const))/cp_const;
    end density_derp_h;

* * * * *

![image82](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).density\_derh\_p
==========================================================================================================================================================================================================================================

**Return density derivative w.r.t. specific enthalpy at constant
pressure**

Information
-----------

Extends from
[](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density_derh_p)
(Return density derivative w.r.t. specific enthalpy at constant
pressure).

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
  [DerDensityByEnthalpy](Modelica_Media_Interfaces ddh Density derivative
  _PartialMedium.html#Modelica.Media.Interfaces.Pa p   w.r.t. specific
  rtialMedium.DerDensityByEnthalpy)                    enthalpy [kg.s2/m5]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends density_derh_p 
      "Return density derivative w.r.t. specific enthalpy at constant pressure"
    algorithm 
    ddhp := if constantJacobian then -beta_const*reference_d/cp_const else 
            -beta_const*density(state)/cp_const;
    end density_derh_p;

* * * * *

![image83](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).density\_derp\_T
==========================================================================================================================================================================================================================================

**Return density derivative w.r.t. pressure at const temperature**

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
      "Return density derivative w.r.t. pressure at const temperature"
    algorithm 
      ddpT := if constantJacobian then kappa_const*reference_d else 
            kappa_const*density(state);
    end density_derp_T;

* * * * *

![image84](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).density\_derT\_p
==========================================================================================================================================================================================================================================

**Return density derivative w.r.t. temperature at constant pressure**

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
      "Return density derivative w.r.t. temperature at constant pressure"
    algorithm 
      ddTp := if constantJacobian then -beta_const*reference_d else 
           -beta_const*density(state);
    end density_derT_p;

* * * * *

![image85](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).density\_derX
=======================================================================================================================================================================================================================================

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

![image86](Modelica.Media.Interfaces.PartialLinearFluid.setState_pTXI.png) [Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).molarMass
===================================================================================================================================================================================================================================

**Return molar mass**

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

    redeclare function extends molarMass "Return molar mass"
    algorithm 
      MM  := MM_const;
    end molarMass;

* * * * *

[Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).T\_ph
====================================================================================================================================================

**Return temperature from pressure and specific enthalpy**

Inputs
------

  ------------------------------------------------------------------------
  Type                                                Nam Defa Description
                                                      e   ult  
  --------------------------------------------------- --- ---- -----------
  [SpecificEnthalpy](Modelica_Media_Interfaces_Partia h        Specific
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          enthalpy
  m.SpecificEnthalpy)                                          [J/kg]

  [AbsolutePressure](Modelica_Media_Interfaces_Partia p        pressure
  lMedium.html#Modelica.Media.Interfaces.PartialMediu          [Pa]
  m.AbsolutePressure)                                          
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

    function T_ph 
      "Return temperature from pressure and specific enthalpy"
      input SpecificEnthalpy h "Specific enthalpy";
      input AbsolutePressure p "pressure";
      output Temperature T "Temperature";
    algorithm 
      T :=(h - reference_h - (p - reference_p)*((1 - beta_const*reference_T)
        /reference_d))/cp_const + reference_T;
    end T_ph;

* * * * *

[Modelica.Media.Interfaces.PartialLinearFluid](Modelica_Media_Interfaces_PartialLinearFluid.html#Modelica.Media.Interfaces.PartialLinearFluid).T\_ps
====================================================================================================================================================

**Return temperature from pressure and specific entropy**

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

    function T_ps "Return temperature from pressure and specific entropy"
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      output Temperature T "Temperature";
    algorithm 
      T := reference_T*cp_const/(s-reference_s -(p-reference_p)*(-beta_const/reference_d) - cp_const);
    end T_ps;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:29 2010.
