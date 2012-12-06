==============================================
Modelica.Media.Interfaces.PartialMixtureMedium
==============================================

`Modelica.Media.Interfaces <Modelica_Media_Interfaces.html#Modelica.Media.Interfaces>`_.PartialMixtureMedium
------------------------------------------------------------------------------------------------------------

**Base class for pure substances of several chemical substances**

Information
~~~~~~~~~~~

Extends from
`PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_
(Partial medium properties (base package of all media packages)).

Package Content
~~~~~~~~~~~~~~~

Name

Description

|Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState|
`ThermodynamicState <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState>`_

thermodynamic state variables

|Modelica.Media.Interfaces.PartialMixtureMedium.FluidConstants|
`FluidConstants <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.FluidConstants>`_

extended fluid constants

fluidConstants

constant data for the fluid

|Modelica.Media.Interfaces.PartialMixtureMedium.gasConstant|
`gasConstant <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.gasConstant>`_

Return the gas constant of the mixture (also for liquids)

|Modelica.Media.Interfaces.PartialMixtureMedium.moleToMassFractions|
`moleToMassFractions <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.moleToMassFractions>`_

Return mass fractions X from mole fractions

|Modelica.Media.Interfaces.PartialMixtureMedium.massToMoleFractions|
`massToMoleFractions <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.massToMoleFractions>`_

Return mole fractions from mass fractions X

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

|Modelica.Media.Interfaces.PartialMedium.BaseProperties|
`BaseProperties <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.BaseProperties>`_

Base properties (p, d, T, h, u, R, MM and, if applicable, X and Xi) of a
medium

|Modelica.Media.Interfaces.PartialMedium.setState\_pTX|
`setState\_pTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_pTX>`_

Return thermodynamic state as function of p, T and composition X or Xi

|Modelica.Media.Interfaces.PartialMedium.setState\_phX|
`setState\_phX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_phX>`_

Return thermodynamic state as function of p, h and composition X or Xi

|Modelica.Media.Interfaces.PartialMedium.setState\_psX|
`setState\_psX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_psX>`_

Return thermodynamic state as function of p, s and composition X or Xi

|Modelica.Media.Interfaces.PartialMedium.setState\_dTX|
`setState\_dTX <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setState_dTX>`_

Return thermodynamic state as function of d, T and composition X or Xi

|Modelica.Media.Interfaces.PartialMedium.setSmoothState|
`setSmoothState <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.setSmoothState>`_

Return thermodynamic state so that it smoothly approximates: if x > 0
then state\_a else state\_b

|Modelica.Media.Interfaces.PartialMedium.dynamicViscosity|
`dynamicViscosity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.dynamicViscosity>`_

Return dynamic viscosity

|Modelica.Media.Interfaces.PartialMedium.thermalConductivity|
`thermalConductivity <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.thermalConductivity>`_

Return thermal conductivity

|Modelica.Media.Interfaces.PartialMedium.prandtlNumber|
`prandtlNumber <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.prandtlNumber>`_

Return the Prandtl number

|Modelica.Media.Interfaces.PartialMedium.pressure|
`pressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.pressure>`_

Return pressure

|Modelica.Media.Interfaces.PartialMedium.temperature|
`temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.temperature>`_

Return temperature

|Modelica.Media.Interfaces.PartialMedium.density|
`density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.density>`_

Return density

|Modelica.Media.Interfaces.PartialMedium.specificEnthalpy|
`specificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEnthalpy>`_

Return specific enthalpy

|Modelica.Media.Interfaces.PartialMedium.specificInternalEnergy|
`specificInternalEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificInternalEnergy>`_

Return specific internal energy

|Modelica.Media.Interfaces.PartialMedium.specificEntropy|
`specificEntropy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificEntropy>`_

Return specific entropy

|Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy|
`specificGibbsEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy>`_

Return specific Gibbs energy

|Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy|
`specificHelmholtzEnergy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy>`_

Return specific Helmholtz energy

|Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCp|
`specificHeatCapacityCp <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCp>`_

Return specific heat capacity at constant pressure

|Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp|
`heatCapacity\_cp <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.heatCapacity_cp>`_

alias for deprecated name

|Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCv|
`specificHeatCapacityCv <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCv>`_

Return specific heat capacity at constant volume

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

      constant FluidConstants[nS] fluidConstants "constant data for the fluid";

--------------

|image48| `Modelica.Media.Interfaces.PartialMixtureMedium <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium>`_.ThermodynamicState
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**thermodynamic state variables**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ThermodynamicState>`_
(Minimal variable set that is available as input argument to every
medium function).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable record extends ThermodynamicState 
      "thermodynamic state variables"
      AbsolutePressure p "Absolute pressure of medium";
      Temperature T "Temperature of medium";
      MassFraction X[nX] "Mass fractions (= (component mass)/total mass  m_i/m)";
    end ThermodynamicState;

--------------

|image49| `Modelica.Media.Interfaces.PartialMixtureMedium <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium>`_.FluidConstants
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**extended fluid constants**

Information
~~~~~~~~~~~

Extends from
` <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.FluidConstants>`_
(critical, triple, molecular and other standard data of fluid).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare replaceable record extends FluidConstants 
      "extended fluid constants"
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

|image50| `Modelica.Media.Interfaces.PartialMixtureMedium <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium>`_.gasConstant
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the gas constant of the mixture (also for liquids)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------+
| Type                                                                                                                                            | Name    | Default   | Description           |
+=================================================================================================================================================+=========+===========+=======================+
| `ThermodynamicState <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState>`_   | state   |           | thermodynamic state   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                    | Name   | Description                       |
+=========================================================================================+========+===================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | R      | mixture gas constant [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable function gasConstant 
      "Return the gas constant of the mixture (also for liquids)"
        extends Modelica.Icons.Function;
        input ThermodynamicState state "thermodynamic state";
        output SI.SpecificHeatCapacity R "mixture gas constant";
    end gasConstant;

--------------

|image51| `Modelica.Media.Interfaces.PartialMixtureMedium <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium>`_.moleToMassFractions
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return mass fractions X from mole fractions**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------------------+-----------+---------------------------------------+
| Type                                                                                                            | Name               | Default   | Description                           |
+=================================================================================================================+====================+===========+=======================================+
| `MoleFraction <Modelica_SIunits.html#Modelica.SIunits.MoleFraction>`_                                           | moleFractions[:]   |           | Mole fractions of mixture [1]         |
+-----------------------------------------------------------------------------------------------------------------+--------------------+-----------+---------------------------------------+
| `MolarMass <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MolarMass>`_   | MMX[:]             |           | molar masses of components [kg/mol]   |
+-----------------------------------------------------------------------------------------------------------------+--------------------+-----------+---------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
| Type                                                                    | Name                        | Description                         |
+=========================================================================+=============================+=====================================+
| `MassFraction <Modelica_SIunits.html#Modelica.SIunits.MassFraction>`_   | X[size(moleFractions, 1)]   | Mass fractions of gas mixture [1]   |
+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function moleToMassFractions 
      "Return mass fractions X from mole fractions"
      extends Modelica.Icons.Function;
      input SI.MoleFraction moleFractions[:] "Mole fractions of mixture";
      input MolarMass[:] MMX "molar masses of components";
      output SI.MassFraction X[size(moleFractions, 1)] 
        "Mass fractions of gas mixture";
    protected 
      MolarMass Mmix =  moleFractions*MMX "molar mass of mixture";
    algorithm 
      for i in 1:size(moleFractions, 1) loop
        X[i] := moleFractions[i]*MMX[i] /Mmix;
      end for;
    end moleToMassFractions;

--------------

|image52| `Modelica.Media.Interfaces.PartialMixtureMedium <Modelica_Media_Interfaces_PartialMixtureMedium.html#Modelica.Media.Interfaces.PartialMixtureMedium>`_.massToMoleFractions
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return mole fractions from mass fractions X**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------+----------+-----------+---------------------------------------+
| Type                                                                    | Name     | Default   | Description                           |
+=========================================================================+==========+===========+=======================================+
| `MassFraction <Modelica_SIunits.html#Modelica.SIunits.MassFraction>`_   | X[:]     |           | Mass fractions of mixture [1]         |
+-------------------------------------------------------------------------+----------+-----------+---------------------------------------+
| `MolarMass <Modelica_SIunits.html#Modelica.SIunits.MolarMass>`_         | MMX[:]   |           | molar masses of components [kg/mol]   |
+-------------------------------------------------------------------------+----------+-----------+---------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+
| Type                                                                    | Name                        | Description                         |
+=========================================================================+=============================+=====================================+
| `MoleFraction <Modelica_SIunits.html#Modelica.SIunits.MoleFraction>`_   | moleFractions[size(X, 1)]   | Mole fractions of gas mixture [1]   |
+-------------------------------------------------------------------------+-----------------------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function massToMoleFractions 
      "Return mole fractions from mass fractions X"
      extends Modelica.Icons.Function;
      input SI.MassFraction X[:] "Mass fractions of mixture";
      input SI.MolarMass[:] MMX "molar masses of components";
      output SI.MoleFraction moleFractions[size(X, 1)] 
        "Mole fractions of gas mixture";
    protected 
      Real invMMX[size(X, 1)] "inverses of molar weights";
      SI.MolarMass Mmix "molar mass of mixture";
    algorithm 
      for i in 1:size(X, 1) loop
        invMMX[i] := 1/MMX[i];
      end for;
      Mmix := 1/(X*invMMX);
      for i in 1:size(X, 1) loop
        moleFractions[i] := Mmix*X[i]/MMX[i];
      end for;
    end massToMoleFractions;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:29
2010.

.. |Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState| image:: Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicStateS.png
.. |Modelica.Media.Interfaces.PartialMixtureMedium.FluidConstants| image:: Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicStateS.png
.. |Modelica.Media.Interfaces.PartialMixtureMedium.gasConstant| image:: Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png
.. |Modelica.Media.Interfaces.PartialMixtureMedium.moleToMassFractions| image:: Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png
.. |Modelica.Media.Interfaces.PartialMixtureMedium.massToMoleFractions| image:: Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantS.png
.. |Modelica.Media.Interfaces.PartialMedium.BaseProperties| image:: Modelica.Media.Interfaces.PartialMedium.BasePropertiesS.png
.. |Modelica.Media.Interfaces.PartialMedium.setState\_pTX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.setState\_phX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.setState\_psX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.setState\_dTX| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.setSmoothState| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.dynamicViscosity| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.thermalConductivity| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.prandtlNumber| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.pressure| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.temperature| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.density| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEnthalpy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificInternalEnergy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificEntropy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificGibbsEnergy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificHelmholtzEnergy| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCp| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
.. |Modelica.Media.Interfaces.PartialMedium.heatCapacity\_cp| image:: Modelica.Media.Interfaces.PartialMedium.prandtlNumberS.png
.. |Modelica.Media.Interfaces.PartialMedium.specificHeatCapacityCv| image:: Modelica.Media.Interfaces.PartialMedium.setState_pTXS.png
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
.. |image48| image:: Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicStateI.png
.. |image49| image:: Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicStateI.png
.. |image50| image:: Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantI.png
.. |image51| image:: Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantI.png
.. |image52| image:: Modelica.Media.Interfaces.PartialMixtureMedium.gasConstantI.png
