% Modelica.Media.Water:
  [Modelica.Media](Modelica_Media.html#Modelica.Media).Water
% 
% 

**Medium models for water**

Information
===========

::

This package contains different medium models for water:

-   **ConstantPropertyLiquidWater**
      ~ Simple liquid water medium (incompressible, constant data).

-   **IdealSteam**
      ~ Steam water medium as ideal gas from

    Media.IdealGases.SingleGases.H2O
-   **WaterIF97 derived models**
      ~ High precision water model according to the IAPWS/IF97 standard

    (liquid, steam, two phase region). Models with different independent
    variables are provided as well as models valid only for particular
    regions. The **WaterIF97\_ph** model is valid in all regions and is
    the recommended one to use.

Overview of WaterIF97 derived water models
------------------------------------------

The WaterIF97 models calculate medium properties for water in the
**liquid**, **gas** and **two phase** regions according to the
IAPWS/IF97 standard, i.e., the accepted industrial standard and best
compromise between accuracy and computation time. It has been part of
the ThermoFluid Modelica library and been extended, reorganized and
documented to become part of the Modelica Standard library.

An important feature that distinguishes this implementation of the IF97
steam property standard is that this implementation has been explicitly
designed to work well in dynamic simulations. Computational performance
has been of high importance. This means that there often exist several
ways to get the same result from different functions if one of the
functions is called often but can be optimized for that purpose.

Three variable pairs can be the independent variables of the model:

1.  Pressure **p** and specific enthalpy **h** are the most natural
    choice for general applications. This is the recommended choice for
    most general purpose applications, in particular for power plants.
2.  Pressure **p** and temperature **T** are the most natural choice for
    applications where water is always in the same phase, both for
    liquid water and steam.
3.  Density **d** and temperature **T** are explicit variables of the
    Helmholtz function in the near-critical region and can be the best
    choice for applications with super-critical or near-critial states.

The following quantities are always computed in Medium.Baseproperties:

  ----------------- ------------- -----------------------------
  **Variable**      **Unit**      **Description**
  T                 K             temperature
  u                 J/kg          specific internal energy
  d                 kg/m\^3       density
  p                 Pa            pressure
  h                 J/kg          specific enthalpy
  ----------------- ------------- -----------------------------

In some cases additional medium properties are needed. A component that
needs these optional properties has to call one of the following
functions:

  ----------------------------- -------- ----------------------------------
  **Function call**             **Unit** **Description**

  Medium.dynamicViscosity(mediu Pa.s     dynamic viscosity
  m.state)                               

  Medium.thermalConductivity(me W/(m.K)  thermal conductivity
  dium.state)                            

  Medium.prandtlNumber(medium.s 1        Prandtl number
  tate)                                  

  Medium.specificEntropy(medium J/(kg.K) specific entropy
  .state)                                

  Medium.heatCapacity\_cp(mediu J/(kg.K) specific heat capacity at constant
  m.state)                               pressure

  Medium.heatCapacity\_cv(mediu J/(kg.K) specific heat capacity at constant
  m.state)                               density

  Medium.isentropicExponent(med 1        isentropic exponent
  ium.state)                             

  Medium.isentropicEnthalpy(pre J/kg     isentropic enthalpy
  ssure,                                 
  medium.state)                          

  Medium.velocityOfSound(medium m/s      velocity of sound
  .state)                                

  Medium.isobaricExpansionCoeff 1/K      isobaric expansion coefficient
  icient(medium.state)                   

  Medium.isothermalCompressibil 1/Pa     isothermal compressibility
  ity(medium.state)                      

  Medium.density\_derp\_h(mediu kg/(m3.P derivative of density by pressure
  m.state)                      a)       at constant enthalpy

  Medium.density\_derh\_p(mediu kg2/(m3. derivative of density by enthalpy
  m.state)                      J)       at constant pressure

  Medium.density\_derp\_T(mediu kg/(m3.P derivative of density by pressure
  m.state)                      a)       at constant temperature

  Medium.density\_derT\_p(mediu kg/(m3.K derivative of density by
  m.state)                      )        temperature at constant pressure

  Medium.density\_derX(medium.s kg/m3    derivative of density by mass
  tate)                                  fraction

  Medium.molarMass(medium.state kg/mol   molar mass
  )                                      
  ----------------------------- -------- ----------------------------------

More details are given in
[Modelica.Media.UsersGuide.MediumUsage.OptionalProperties](Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage.OptionalProperties).
Many additional optional functions are defined to compute properties of
saturated media, either liquid (bubble point) or vapour (dew point). The
argument to such functions is a SaturationProperties record, which can
be set starting from either the saturation pressure or the saturation
temperature. With reference to a model defining a pressure p, a
temperature T, and a SaturationProperties record sat, the following
functions are provided:

  ---------------------- -------- -----------------------------------------
  **Function call**      **Unit** **Description**

  Medium.saturationPress Pa       Saturation pressure at temperature T
  ure(T)                          

  Medium.saturationTempe K        Saturation temperature at pressure p
  rature(p)                       

  Medium.saturationTempe K/Pa     Derivative of saturation temperature with
  rature\_derp(p)                 respect to pressure

  Medium.bubbleEnthalpy( J/kg     Specific enthalpy at bubble point
  sat)                            

  Medium.dewEnthalpy(sat J/kg     Specific enthalpy at dew point
  )                               

  Medium.bubbleEntropy(s J/(kg.K) Specific entropy at bubble point
  at)                             

  Medium.dewEntropy(sat) J/(kg.K) Specific entropy at dew point

  Medium.bubbleDensity(s kg/m3    Density at bubble point
  at)                             

  Medium.dewDensity(sat) kg/m3    Density at dew point

  Medium.dBubbleDensity\ kg/(m3.P Derivative of density at bubble point
  _dPressure(sat)        a)       with respect to pressure

  Medium.dDewDensity\_dP kg/(m3.P Derivative of density at dew point with
  ressure(sat)           a)       respect to pressure

  Medium.dBubbleEnthalpy J/(kg.Pa Derivative of specific enthalpy at bubble
  \_dPressure(sat)       )        point with respect to pressure

  Medium.dDewEnthalpy\_d J/(kg.Pa Derivative of specific enthalpy at dew
  Pressure(sat)          )        point with respect to pressure

  Medium.surfaceTension( N/m      Surface tension between liquid and vapour
  sat)                            phase
  ---------------------- -------- -----------------------------------------

Details on usage and some examples are given in:
[Modelica.Media.UsersGuide.MediumUsage.TwoPhase](Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage.TwoPhase).

Many further properties can be computed. Using the well-known Bridgman's
Tables, all first partial derivatives of the standard thermodynamic
variables can be computed easily.

The documentation of the IAPWS/IF97 steam properties can be freely
distributed with computer implementations and are included here (in
directory
Modelica/Resources/Documentation/Media/Water/IF97documentation):

-   IF97.pdf The standards document for the main part of the IF97.
-   Back3.pdf The backwards equations for region 3.
-   crits.pdf The critical point data.
-   meltsub.pdf The melting- and sublimation line formulation (not
    implemented)
-   surf.pdf The surface tension standard definition
-   thcond.pdf The thermal conductivity standard definition
-   visc.pdf The viscosity standard definition

::

Extends from
[Modelica.Icons.MaterialPropertiesPackage](Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage)
(Icon for package containing property classes).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  waterConstants                                

  simpleWaterConstants                          

  ![image14](Modelica.Media.Water.ConstantPrope Water: Simple liquid water
  rtyLiquidWaterS.png)                          medium (incompressible,
  [ConstantPropertyLiquidWater](Modelica_Media_ constant data)
  Water_ConstantPropertyLiquidWater.html#Modeli 
  ca.Media.Water.ConstantPropertyLiquidWater)   

  ![image15](Modelica.Media.Water.IdealSteamS.p Water: Steam as ideal gas
  ng)                                           from NASA source
  [IdealSteam](Modelica_Media_Water_IdealSteam. 
  html#Modelica.Media.Water.IdealSteam)         

  ![image16](Modelica.Media.Water.WaterIF97OneP Water using the IF97
  hase_phS.png)                                 standard, explicit in p
  [WaterIF97OnePhase\_ph](Modelica_Media_Water_ and h, and only valid
  WaterIF97OnePhase_ph.html#Modelica.Media.Wate outside the two-phase dome
  r.WaterIF97OnePhase_ph)                       

  ![image17](Modelica.Media.Water.WaterIF97OneP Water using the IF97
  hase_phS.png)                                 standard, explicit in p
  [WaterIF97\_ph](Modelica_Media_Water_WaterIF9 and h
  7_ph.html#Modelica.Media.Water.WaterIF97_ph)  

  ![image18](Modelica.Media.Water.WaterIF97OneP Water: Steam properties as
  hase_phS.png)                                 defined by IAPWS/IF97
  [WaterIF97\_base](Modelica_Media_Water_WaterI standard
  F97_base.html#Modelica.Media.Water.WaterIF97_ 
  base)                                         

  ![image19](Modelica.Media.Water.WaterIF97OneP Water: Steam properties as
  hase_phS.png)                                 defined by IAPWS/IF97
  [WaterIF97\_fixedregion](Modelica_Media_Water standard
  _WaterIF97_fixedregion.html#Modelica.Media.Wa 
  ter.WaterIF97_fixedregion)                    

  ![image20](Modelica.Media.Water.WaterIF97OneP region 1 (liquid) water
  hase_phS.png)                                 according to IF97 standard
  [WaterIF97\_R1ph](Modelica_Media_Water_WaterI 
  F97_R1ph.html#Modelica.Media.Water.WaterIF97_ 
  R1ph)                                         

  ![image21](Modelica.Media.Water.WaterIF97OneP region 2 (steam) water
  hase_phS.png)                                 according to IF97 standard
  [WaterIF97\_R2ph](Modelica_Media_Water_WaterI 
  F97_R2ph.html#Modelica.Media.Water.WaterIF97_ 
  R2ph)                                         

  ![image22](Modelica.Media.Water.WaterIF97OneP region 3 water according
  hase_phS.png)                                 to IF97 standard
  [WaterIF97\_R3ph](Modelica_Media_Water_WaterI 
  F97_R3ph.html#Modelica.Media.Water.WaterIF97_ 
  R3ph)                                         

  ![image23](Modelica.Media.Water.WaterIF97OneP region 4 water according
  hase_phS.png)                                 to IF97 standard
  [WaterIF97\_R4ph](Modelica_Media_Water_WaterI 
  F97_R4ph.html#Modelica.Media.Water.WaterIF97_ 
  R4ph)                                         

  ![image24](Modelica.Media.Water.WaterIF97OneP region 5 water according
  hase_phS.png)                                 to IF97 standard
  [WaterIF97\_R5ph](Modelica_Media_Water_WaterI 
  F97_R5ph.html#Modelica.Media.Water.WaterIF97_ 
  R5ph)                                         

  ![image25](Modelica.Media.Water.WaterIF97OneP region 1 (liquid) water
  hase_phS.png)                                 according to IF97 standard
  [WaterIF97\_R1pT](Modelica_Media_Water_WaterI 
  F97_R1pT.html#Modelica.Media.Water.WaterIF97_ 
  R1pT)                                         

  ![image26](Modelica.Media.Water.WaterIF97OneP region 2 (steam) water
  hase_phS.png)                                 according to IF97 standard
  [WaterIF97\_R2pT](Modelica_Media_Water_WaterI 
  F97_R2pT.html#Modelica.Media.Water.WaterIF97_ 
  R2pT)                                         

  ![image27](Modelica.Media.Water.IF97_Utilitie Low level and utility
  sS.png)                                       computation for high
  [IF97\_Utilities](Modelica_Media_Water_IF97_U accuracy water properties
  tilities.html#Modelica.Media.Water.IF97_Utili according to the
  ties)                                         IAPWS/IF97 standard
  ------------------------------------------------------------------------

Types and constants
===================

    constant Interfaces.PartialTwoPhaseMedium.FluidConstants[1] waterConstants(
       each chemicalFormula = "H2O",
       each structureFormula="H2O",
       each casRegistryNumber="7732-18-5",
       each iupacName="oxidane",
       each molarMass=0.018015268,
       each criticalTemperature=647.096,
       each criticalPressure=22064.0e3,
       each criticalMolarVolume=1/322.0*0.018015268,
       each normalBoilingPoint=373.124,
       each meltingPoint=273.15,
       each triplePointTemperature=273.16,
       each triplePointPressure=611.657,
       each acentricFactor = 0.344,
       each dipoleMoment = 1.8,
       each hasCriticalData=true);

    constant Interfaces.PartialMedium.FluidConstants[1] simpleWaterConstants(
       each chemicalFormula = "H2O",
       each structureFormula="H2O",
       each casRegistryNumber="7732-18-5",
       each iupacName="oxidane",
       each molarMass=0.018015268);

    package StandardWater = WaterIF97_ph 
      "Water using the IF97 standard, explicit in p and h. Recommended for most applications";

    package StandardWaterOnePhase = WaterIF97_pT 
      "Water using the IF97 standard, explicit in p and T. Recommended for one-phase applications";

    package WaterIF97_pT 
      "Water using the IF97 standard, explicit in p and T"
      extends WaterIF97_base(
        ThermoStates = Choices.IndependentVariables.pT,
        final ph_explicit=false,
        final dT_explicit=false,
        final pT_explicit=true,
        final smoothModel=true,
        final onePhase=true);
    end WaterIF97_pT;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:34 2010.
