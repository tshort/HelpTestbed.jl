% Modelica.Media.Interfaces.PartialMedium
% 
% 

[Modelica.Media.Interfaces](Modelica_Media_Interfaces.html#Modelica.Media.Interfaces).PartialMedium
===================================================================================================

**Partial medium properties (base package of all media packages)**

Information
-----------

::

**PartialMedium** is a package and contains all **declarations** for a
medium. This means that constants, models, and functions are defined
that every medium is supposed to support (some of them are optional). A
medium package inherits from **PartialMedium** and provides the
equations for the medium. The details of this package are described in
[Modelica.Media.UsersGuide](Modelica_Media_UsersGuide.html#Modelica.Media.UsersGuide).

::

Extends from
[Modelica.Icons.MaterialPropertiesPackage](Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage)
(Icon for package containing property classes).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                           Description
  ---------------------------------------------- -------------------------
  ThermoStates                                   Enumeration type for
                                                 independent variables

  mediumName="unusablePartialMedium"             Name of the medium

  substanceNames={mediumName}                    Names of the mixture
                                                 substances. Set
                                                 substanceNames={mediumNam
                                                 e}
                                                 if only one substance.

  extraPropertiesNames=fill("", 0)               Names of the additional
                                                 (extra) transported
                                                 properties. Set
                                                 extraPropertiesNames=fill
                                                 ("",0)
                                                 if unused

  singleState                                    = true, if u and d are
                                                 not a function of
                                                 pressure

  reducedX=true                                  = true if medium contains
                                                 the equation sum(X) =
                                                 1.0; set reducedX=true if
                                                 only one substance (see
                                                 docu for details)

  fixedX=false                                   = true if medium contains
                                                 the equation X =
                                                 reference\_X

  reference\_p=101325                            Reference pressure of
                                                 Medium: default 1
                                                 atmosphere

  reference\_T=298.15                            Reference temperature of
                                                 Medium: default 25 deg
                                                 Celsius

  reference\_X=fill(1/nX, nX)                    Default mass fractions of
                                                 medium

  p\_default=101325                              Default value for
                                                 pressure of medium (for
                                                 initialization)

  T\_default=Modelica.SIunits.Conversions.from\_ Default value for
  degC(20)                                       temperature of medium
                                                 (for initialization)

  h\_default=specificEnthalpy\_pTX(p\_default,   Default value for
  T\_default, X\_default)                        specific enthalpy of
                                                 medium (for
                                                 initialization)

  X\_default=reference\_X                        Default value for mass
                                                 fractions of medium (for
                                                 initialization)

  nS=size(substanceNames, 1)                     Number of substances

  nX=nS                                          Number of mass fractions

  nXi=if fixedX then 0 else if reducedX then nS  Number of structurally
  - 1 else nS                                    independent mass
                                                 fractions (see docu for
                                                 details)

  nC=size(extraPropertiesNames, 1)               Number of extra (outside
                                                 of standard mass-balance)
                                                 transported properties

  C\_nominal=1.0e-6\*ones(nC)                    Default for the nominal
                                                 values for the extra
                                                 properties

  ![image45](Modelica.Media.Interfaces.PartialMe critical, triple,
  dium.FluidConstantsS.png)                      molecular and other
  [FluidConstants](Modelica_Media_Interfaces_Par standard data of fluid
  tialMedium.html#Modelica.Media.Interfaces.Part 
  ialMedium.FluidConstants)                      

  ![image46](Modelica.Media.Interfaces.PartialMe Minimal variable set that
  dium.FluidConstantsS.png)                      is available as input
  [ThermodynamicState](Modelica_Media_Interfaces argument to every medium
  _PartialMedium.html#Modelica.Media.Interfaces. function
  PartialMedium.ThermodynamicState)              

  ![image47](Modelica.Media.Interfaces.PartialMe Base properties (p, d, T,
  dium.BasePropertiesS.png)                      h, u, R, MM and, if
  [BaseProperties](Modelica_Media_Interfaces_Par applicable, X and Xi) of
  tialMedium.html#Modelica.Media.Interfaces.Part a medium
  ialMedium.BaseProperties)                      

  ![image48](Modelica.Media.Interfaces.PartialMe Return thermodynamic
  dium.setState_pTXS.png)                        state as function of p, T
  [setState\_pTX](Modelica_Media_Interfaces_Part and composition X or Xi
  ialMedium.html#Modelica.Media.Interfaces.Parti 
  alMedium.setState_pTX)                         

  ![image49](Modelica.Media.Interfaces.PartialMe Return thermodynamic
  dium.setState_pTXS.png)                        state as function of p, h
  [setState\_phX](Modelica_Media_Interfaces_Part and composition X or Xi
  ialMedium.html#Modelica.Media.Interfaces.Parti 
  alMedium.setState_phX)                         

  ![image50](Modelica.Media.Interfaces.PartialMe Return thermodynamic
  dium.setState_pTXS.png)                        state as function of p, s
  [setState\_psX](Modelica_Media_Interfaces_Part and composition X or Xi
  ialMedium.html#Modelica.Media.Interfaces.Parti 
  alMedium.setState_psX)                         

  ![image51](Modelica.Media.Interfaces.PartialMe Return thermodynamic
  dium.setState_pTXS.png)                        state as function of d, T
  [setState\_dTX](Modelica_Media_Interfaces_Part and composition X or Xi
  ialMedium.html#Modelica.Media.Interfaces.Parti 
  alMedium.setState_dTX)                         

  ![image52](Modelica.Media.Interfaces.PartialMe Return thermodynamic
  dium.setState_pTXS.png)                        state so that it smoothly
  [setSmoothState](Modelica_Media_Interfaces_Par approximates: if x \> 0
  tialMedium.html#Modelica.Media.Interfaces.Part then state\_a else
  ialMedium.setSmoothState)                      state\_b

  ![image53](Modelica.Media.Interfaces.PartialMe Return dynamic viscosity
  dium.setState_pTXS.png)                        
  [dynamicViscosity](Modelica_Media_Interfaces_P 
  artialMedium.html#Modelica.Media.Interfaces.Pa 
  rtialMedium.dynamicViscosity)                  

  ![image54](Modelica.Media.Interfaces.PartialMe Return thermal
  dium.setState_pTXS.png)                        conductivity
  [thermalConductivity](Modelica_Media_Interface 
  s_PartialMedium.html#Modelica.Media.Interfaces 
  .PartialMedium.thermalConductivity)            

  ![image55](Modelica.Media.Interfaces.PartialMe Return the Prandtl number
  dium.setState_pTXS.png)                        
  [prandtlNumber](Modelica_Media_Interfaces_Part 
  ialMedium.html#Modelica.Media.Interfaces.Parti 
  alMedium.prandtlNumber)                        

  ![image56](Modelica.Media.Interfaces.PartialMe Return pressure
  dium.setState_pTXS.png)                        
  [pressure](Modelica_Media_Interfaces_PartialMe 
  dium.html#Modelica.Media.Interfaces.PartialMed 
  ium.pressure)                                  

  ![image57](Modelica.Media.Interfaces.PartialMe Return temperature
  dium.setState_pTXS.png)                        
  [temperature](Modelica_Media_Interfaces_Partia 
  lMedium.html#Modelica.Media.Interfaces.Partial 
  Medium.temperature)                            

  ![image58](Modelica.Media.Interfaces.PartialMe Return density
  dium.setState_pTXS.png)                        
  [density](Modelica_Media_Interfaces_PartialMed 
  ium.html#Modelica.Media.Interfaces.PartialMedi 
  um.density)                                    

  ![image59](Modelica.Media.Interfaces.PartialMe Return specific enthalpy
  dium.setState_pTXS.png)                        
  [specificEnthalpy](Modelica_Media_Interfaces_P 
  artialMedium.html#Modelica.Media.Interfaces.Pa 
  rtialMedium.specificEnthalpy)                  

  ![image60](Modelica.Media.Interfaces.PartialMe Return specific internal
  dium.setState_pTXS.png)                        energy
  [specificInternalEnergy](Modelica_Media_Interf 
  aces_PartialMedium.html#Modelica.Media.Interfa 
  ces.PartialMedium.specificInternalEnergy)      

  ![image61](Modelica.Media.Interfaces.PartialMe Return specific entropy
  dium.setState_pTXS.png)                        
  [specificEntropy](Modelica_Media_Interfaces_Pa 
  rtialMedium.html#Modelica.Media.Interfaces.Par 
  tialMedium.specificEntropy)                    

  ![image62](Modelica.Media.Interfaces.PartialMe Return specific Gibbs
  dium.setState_pTXS.png)                        energy
  [specificGibbsEnergy](Modelica_Media_Interface 
  s_PartialMedium.html#Modelica.Media.Interfaces 
  .PartialMedium.specificGibbsEnergy)            

  ![image63](Modelica.Media.Interfaces.PartialMe Return specific Helmholtz
  dium.setState_pTXS.png)                        energy
  [specificHelmholtzEnergy](Modelica_Media_Inter 
  faces_PartialMedium.html#Modelica.Media.Interf 
  aces.PartialMedium.specificHelmholtzEnergy)    

  ![image64](Modelica.Media.Interfaces.PartialMe Return specific heat
  dium.setState_pTXS.png)                        capacity at constant
  [specificHeatCapacityCp](Modelica_Media_Interf pressure
  aces_PartialMedium.html#Modelica.Media.Interfa 
  ces.PartialMedium.specificHeatCapacityCp)      

  ![image65](Modelica.Media.Interfaces.PartialMe alias for deprecated name
  dium.prandtlNumberS.png)                       
  [heatCapacity\_cp](Modelica_Media_Interfaces_P 
  artialMedium.html#Modelica.Media.Interfaces.Pa 
  rtialMedium.heatCapacity_cp)                   

  ![image66](Modelica.Media.Interfaces.PartialMe Return specific heat
  dium.setState_pTXS.png)                        capacity at constant
  [specificHeatCapacityCv](Modelica_Media_Interf volume
  aces_PartialMedium.html#Modelica.Media.Interfa 
  ces.PartialMedium.specificHeatCapacityCv)      

  ![image67](Modelica.Media.Interfaces.PartialMe alias for deprecated name
  dium.prandtlNumberS.png)                       
  [heatCapacity\_cv](Modelica_Media_Interfaces_P 
  artialMedium.html#Modelica.Media.Interfaces.Pa 
  rtialMedium.heatCapacity_cv)                   

  ![image68](Modelica.Media.Interfaces.PartialMe Return isentropic
  dium.setState_pTXS.png)                        exponent
  [isentropicExponent](Modelica_Media_Interfaces 
  _PartialMedium.html#Modelica.Media.Interfaces. 
  PartialMedium.isentropicExponent)              

  ![image69](Modelica.Media.Interfaces.PartialMe Return isentropic
  dium.setState_pTXS.png)                        enthalpy
  [isentropicEnthalpy](Modelica_Media_Interfaces 
  _PartialMedium.html#Modelica.Media.Interfaces. 
  PartialMedium.isentropicEnthalpy)              

  ![image70](Modelica.Media.Interfaces.PartialMe Return velocity of sound
  dium.setState_pTXS.png)                        
  [velocityOfSound](Modelica_Media_Interfaces_Pa 
  rtialMedium.html#Modelica.Media.Interfaces.Par 
  tialMedium.velocityOfSound)                    

  ![image71](Modelica.Media.Interfaces.PartialMe Return overall the
  dium.setState_pTXS.png)                        isobaric expansion
  [isobaricExpansionCoefficient](Modelica_Media_ coefficient beta
  Interfaces_PartialMedium.html#Modelica.Media.I 
  nterfaces.PartialMedium.isobaricExpansionCoeff 
  icient)                                        

  ![image72](Modelica.Media.Interfaces.PartialMe alias for
  dium.prandtlNumberS.png)                       isobaricExpansionCoeffici
  [beta](Modelica_Media_Interfaces_PartialMedium ent
  .html#Modelica.Media.Interfaces.PartialMedium. for user convenience
  beta)                                          

  ![image73](Modelica.Media.Interfaces.PartialMe Return overall the
  dium.setState_pTXS.png)                        isothermal
  [isothermalCompressibility](Modelica_Media_Int compressibility factor
  erfaces_PartialMedium.html#Modelica.Media.Inte 
  rfaces.PartialMedium.isothermalCompressibility 
  )                                              

  ![image74](Modelica.Media.Interfaces.PartialMe alias of
  dium.prandtlNumberS.png)                       isothermalCompressibility
  [kappa](Modelica_Media_Interfaces_PartialMediu for user convenience
  m.html#Modelica.Media.Interfaces.PartialMedium 
  .kappa)                                        

  ![image75](Modelica.Media.Interfaces.PartialMe Return density derivative
  dium.setState_pTXS.png)                        w.r.t. pressure at const
  [density\_derp\_h](Modelica_Media_Interfaces_P specific enthalpy
  artialMedium.html#Modelica.Media.Interfaces.Pa 
  rtialMedium.density_derp_h)                    

  ![image76](Modelica.Media.Interfaces.PartialMe Return density derivative
  dium.setState_pTXS.png)                        w.r.t. specific enthalpy
  [density\_derh\_p](Modelica_Media_Interfaces_P at constant pressure
  artialMedium.html#Modelica.Media.Interfaces.Pa 
  rtialMedium.density_derh_p)                    

  ![image77](Modelica.Media.Interfaces.PartialMe Return density derivative
  dium.prandtlNumberS.png)                       w.r.t. pressure at const
  [density\_derp\_T](Modelica_Media_Interfaces_P temperature
  artialMedium.html#Modelica.Media.Interfaces.Pa 
  rtialMedium.density_derp_T)                    

  ![image78](Modelica.Media.Interfaces.PartialMe Return density derivative
  dium.prandtlNumberS.png)                       w.r.t. temperature at
  [density\_derT\_p](Modelica_Media_Interfaces_P constant pressure
  artialMedium.html#Modelica.Media.Interfaces.Pa 
  rtialMedium.density_derT_p)                    

  ![image79](Modelica.Media.Interfaces.PartialMe Return density derivative
  dium.prandtlNumberS.png)                       w.r.t. mass fraction
  [density\_derX](Modelica_Media_Interfaces_Part 
  ialMedium.html#Modelica.Media.Interfaces.Parti 
  alMedium.density_derX)                         

  ![image80](Modelica.Media.Interfaces.PartialMe Return the molar mass of
  dium.setState_pTXS.png)                        the medium
  [molarMass](Modelica_Media_Interfaces_PartialM 
  edium.html#Modelica.Media.Interfaces.PartialMe 
  dium.molarMass)                                

  ![image81](Modelica.Media.Interfaces.PartialMe Return specific enthalpy
  dium.setState_pTXS.png)                        from p, T, and X or Xi
  [specificEnthalpy\_pTX](Modelica_Media_Interfa 
  ces_PartialMedium.html#Modelica.Media.Interfac 
  es.PartialMedium.specificEnthalpy_pTX)         

  ![image82](Modelica.Media.Interfaces.PartialMe Return specific enthalpy
  dium.prandtlNumberS.png)                       from p, T, and X or Xi
  [specificEntropy\_pTX](Modelica_Media_Interfac 
  es_PartialMedium.html#Modelica.Media.Interface 
  s.PartialMedium.specificEntropy_pTX)           

  ![image83](Modelica.Media.Interfaces.PartialMe Return density from p, T,
  dium.prandtlNumberS.png)                       and X or Xi
  [density\_pTX](Modelica_Media_Interfaces_Parti 
  alMedium.html#Modelica.Media.Interfaces.Partia 
  lMedium.density_pTX)                           

  ![image84](Modelica.Media.Interfaces.PartialMe Return temperature from
  dium.setState_pTXS.png)                        p, h, and X or Xi
  [temperature\_phX](Modelica_Media_Interfaces_P 
  artialMedium.html#Modelica.Media.Interfaces.Pa 
  rtialMedium.temperature_phX)                   

  ![image85](Modelica.Media.Interfaces.PartialMe Return density from p, h,
  dium.setState_pTXS.png)                        and X or Xi
  [density\_phX](Modelica_Media_Interfaces_Parti 
  alMedium.html#Modelica.Media.Interfaces.Partia 
  lMedium.density_phX)                           

  ![image86](Modelica.Media.Interfaces.PartialMe Return temperature from
  dium.setState_pTXS.png)                        p,s, and X or Xi
  [temperature\_psX](Modelica_Media_Interfaces_P 
  artialMedium.html#Modelica.Media.Interfaces.Pa 
  rtialMedium.temperature_psX)                   

  ![image87](Modelica.Media.Interfaces.PartialMe Return density from p, s,
  dium.setState_pTXS.png)                        and X or Xi
  [density\_psX](Modelica_Media_Interfaces_Parti 
  alMedium.html#Modelica.Media.Interfaces.Partia 
  lMedium.density_psX)                           

  ![image88](Modelica.Media.Interfaces.PartialMe Return specific enthalpy
  dium.setState_pTXS.png)                        from p, s, and X or Xi
  [specificEnthalpy\_psX](Modelica_Media_Interfa 
  ces_PartialMedium.html#Modelica.Media.Interfac 
  es.PartialMedium.specificEnthalpy_psX)         

  [AbsolutePressure](Modelica_Media_Interfaces_P Type for absolute
  artialMedium.html#Modelica.Media.Interfaces.Pa pressure with medium
  rtialMedium.AbsolutePressure)                  specific attributes

  [Density](Modelica_Media_Interfaces_PartialMed Type for density with
  ium.html#Modelica.Media.Interfaces.PartialMedi medium specific
  um.Density)                                    attributes

  [DynamicViscosity](Modelica_Media_Interfaces_P Type for dynamic
  artialMedium.html#Modelica.Media.Interfaces.Pa viscosity with medium
  rtialMedium.DynamicViscosity)                  specific attributes

  [EnthalpyFlowRate](Modelica_Media_Interfaces_P Type for enthalpy flow
  artialMedium.html#Modelica.Media.Interfaces.Pa rate with medium specific
  rtialMedium.EnthalpyFlowRate)                  attributes

  [MassFlowRate](Modelica_Media_Interfaces_Parti Type for mass flow rate
  alMedium.html#Modelica.Media.Interfaces.Partia with medium specific
  lMedium.MassFlowRate)                          attributes

  [MassFraction](Modelica_Media_Interfaces_Parti Type for mass fraction
  alMedium.html#Modelica.Media.Interfaces.Partia with medium specific
  lMedium.MassFraction)                          attributes

  [MoleFraction](Modelica_Media_Interfaces_Parti Type for mole fraction
  alMedium.html#Modelica.Media.Interfaces.Partia with medium specific
  lMedium.MoleFraction)                          attributes

  [MolarMass](Modelica_Media_Interfaces_PartialM Type for molar mass with
  edium.html#Modelica.Media.Interfaces.PartialMe medium specific
  dium.MolarMass)                                attributes

  [MolarVolume](Modelica_Media_Interfaces_Partia Type for molar volume
  lMedium.html#Modelica.Media.Interfaces.Partial with medium specific
  Medium.MolarVolume)                            attributes

  [IsentropicExponent](Modelica_Media_Interfaces Type for isentropic
  _PartialMedium.html#Modelica.Media.Interfaces. exponent with medium
  PartialMedium.IsentropicExponent)              specific attributes

  [SpecificEnergy](Modelica_Media_Interfaces_Par Type for specific energy
  tialMedium.html#Modelica.Media.Interfaces.Part with medium specific
  ialMedium.SpecificEnergy)                      attributes

  [SpecificInternalEnergy](Modelica_Media_Interf Type for specific
  aces_PartialMedium.html#Modelica.Media.Interfa internal energy with
  ces.PartialMedium.SpecificInternalEnergy)      medium specific
                                                 attributes

  [SpecificEnthalpy](Modelica_Media_Interfaces_P Type for specific
  artialMedium.html#Modelica.Media.Interfaces.Pa enthalpy with medium
  rtialMedium.SpecificEnthalpy)                  specific attributes

  [SpecificEntropy](Modelica_Media_Interfaces_Pa Type for specific entropy
  rtialMedium.html#Modelica.Media.Interfaces.Par with medium specific
  tialMedium.SpecificEntropy)                    attributes

  [SpecificHeatCapacity](Modelica_Media_Interfac Type for specific heat
  es_PartialMedium.html#Modelica.Media.Interface capacity with medium
  s.PartialMedium.SpecificHeatCapacity)          specific attributes

  [SurfaceTension](Modelica_Media_Interfaces_Par Type for surface tension
  tialMedium.html#Modelica.Media.Interfaces.Part with medium specific
  ialMedium.SurfaceTension)                      attributes

  [Temperature](Modelica_Media_Interfaces_Partia Type for temperature with
  lMedium.html#Modelica.Media.Interfaces.Partial medium specific
  Medium.Temperature)                            attributes

  [ThermalConductivity](Modelica_Media_Interface Type for thermal
  s_PartialMedium.html#Modelica.Media.Interfaces conductivity with medium
  .PartialMedium.ThermalConductivity)            specific attributes

  [PrandtlNumber](Modelica_Media_Interfaces_Part Type for Prandtl number
  ialMedium.html#Modelica.Media.Interfaces.Parti with medium specific
  alMedium.PrandtlNumber)                        attributes

  [VelocityOfSound](Modelica_Media_Interfaces_Pa Type for velocity of
  rtialMedium.html#Modelica.Media.Interfaces.Par sound with medium
  tialMedium.VelocityOfSound)                    specific attributes

  [ExtraProperty](Modelica_Media_Interfaces_Part Type for unspecified,
  ialMedium.html#Modelica.Media.Interfaces.Parti mass-specific property
  alMedium.ExtraProperty)                        transported by flow

  [CumulativeExtraProperty](Modelica_Media_Inter Type for conserved
  faces_PartialMedium.html#Modelica.Media.Interf integral of unspecified,
  aces.PartialMedium.CumulativeExtraProperty)    mass specific property

  [ExtraPropertyFlowRate](Modelica_Media_Interfa Type for flow rate of
  ces_PartialMedium.html#Modelica.Media.Interfac unspecified,
  es.PartialMedium.ExtraPropertyFlowRate)        mass-specific property

  [IsobaricExpansionCoefficient](Modelica_Media_ Type for isobaric
  Interfaces_PartialMedium.html#Modelica.Media.I expansion coefficient
  nterfaces.PartialMedium.IsobaricExpansionCoeff with medium specific
  icient)                                        attributes

  [DipoleMoment](Modelica_Media_Interfaces_Parti Type for dipole moment
  alMedium.html#Modelica.Media.Interfaces.Partia with medium specific
  lMedium.DipoleMoment)                          attributes

  [DerDensityByPressure](Modelica_Media_Interfac Type for partial
  es_PartialMedium.html#Modelica.Media.Interface derivative of density
  s.PartialMedium.DerDensityByPressure)          with resect to pressure
                                                 with medium specific
                                                 attributes

  [DerDensityByEnthalpy](Modelica_Media_Interfac Type for partial
  es_PartialMedium.html#Modelica.Media.Interface derivative of density
  s.PartialMedium.DerDensityByEnthalpy)          with resect to enthalpy
                                                 with medium specific
                                                 attributes

  [DerEnthalpyByPressure](Modelica_Media_Interfa Type for partial
  ces_PartialMedium.html#Modelica.Media.Interfac derivative of enthalpy
  es.PartialMedium.DerEnthalpyByPressure)        with resect to pressure
                                                 with medium specific
                                                 attributes

  [DerDensityByTemperature](Modelica_Media_Inter Type for partial
  faces_PartialMedium.html#Modelica.Media.Interf derivative of density
  aces.PartialMedium.DerDensityByTemperature)    with resect to
                                                 temperature with medium
                                                 specific attributes

  ![image89](Modelica.Media.Interfaces.PartialMe Types, constants to
  dium.ChoicesS.png)                             define menu choices
  [Choices](Modelica_Media_Interfaces_PartialMed 
  ium_Choices.html#Modelica.Media.Interfaces.Par 
  tialMedium.Choices)                            
  ------------------------------------------------------------------------

Types and constants
-------------------

    constant Modelica.Media.Interfaces.PartialMedium.Choices.IndependentVariables
      ThermoStates "Enumeration type for independent variables";

    constant String mediumName = "unusablePartialMedium" "Name of the medium";

    constant String substanceNames[:]={mediumName} 
    "Names of the mixture substances. Set substanceNames={mediumName} if only one substance.";

    constant String extraPropertiesNames[:]=fill("", 0) 
    "Names of the additional (extra) transported properties. Set extraPropertiesNames=fill(\"\",0) if unused";

    constant Boolean singleState 
    "= true, if u and d are not a function of pressure";

    constant Boolean reducedX=true 
    "= true if medium contains the equation sum(X) = 1.0; set reducedX=true if only one substance (see docu for details)";

    constant Boolean fixedX=false 
    "= true if medium contains the equation X = reference_X";

    constant AbsolutePressure reference_p=101325 
    "Reference pressure of Medium: default 1 atmosphere";

    constant Temperature reference_T=298.15 
    "Reference temperature of Medium: default 25 deg Celsius";

    constant MassFraction reference_X[nX]= fill(1/nX, nX) 
    "Default mass fractions of medium";

    constant AbsolutePressure p_default=101325 
    "Default value for pressure of medium (for initialization)";

    constant Temperature T_default = Modelica.SIunits.Conversions.from_degC(20) 
    "Default value for temperature of medium (for initialization)";

    constant SpecificEnthalpy h_default = specificEnthalpy_pTX(p_default, T_default, X_default) 
    "Default value for specific enthalpy of medium (for initialization)";

    constant MassFraction X_default[nX]=reference_X 
    "Default value for mass fractions of medium (for initialization)";

    final constant Integer nS=size(substanceNames, 1) "Number of substances";

    constant Integer nX = nS "Number of mass fractions";

    constant Integer nXi=if fixedX then 0 else if reducedX then nS - 1 else nS 
    "Number of structurally independent mass fractions (see docu for details)";

    final constant Integer nC=size(extraPropertiesNames, 1) 
    "Number of extra (outside of standard mass-balance) transported properties";

    constant Real C_nominal[nC](min=fill(Modelica.Constants.eps, nC)) = 1.0e-6*ones(nC) 
    "Default for the nominal values for the extra properties";

    type AbsolutePressure = SI.AbsolutePressure (
        min=0,
        max=1.e8,
        nominal=1.e5,
        start=1.e5) "Type for absolute pressure with medium specific attributes";

    type Density = SI.Density (
        min=0,
        max=1.e5,
        nominal=1,
        start=1) "Type for density with medium specific attributes";

    type DynamicViscosity = SI.DynamicViscosity (
        min=0,
        max=1.e8,
        nominal=1.e-3,
        start=1.e-3) "Type for dynamic viscosity with medium specific attributes";

    type EnthalpyFlowRate = SI.EnthalpyFlowRate (
        nominal=1000.0,
        min=-1.0e8,
        max=1.e8) "Type for enthalpy flow rate with medium specific attributes";

    type MassFlowRate = SI.MassFlowRate (
        quantity="MassFlowRate." + mediumName,
        min=-1.0e5,
        max=1.e5) "Type for mass flow rate with medium specific attributes";

    type MassFraction = Real (
        quantity="MassFraction",
        final unit="kg/kg",
        min=0,
        max=1,
        nominal=0.1) "Type for mass fraction with medium specific attributes";

    type MoleFraction = Real (
        quantity="MoleFraction",
        final unit="mol/mol",
        min=0,
        max=1,
        nominal=0.1) "Type for mole fraction with medium specific attributes";

    type MolarMass = SI.MolarMass (
        min=0.001,
        max=0.25,
        nominal=0.032) "Type for molar mass with medium specific attributes";

    type MolarVolume = SI.MolarVolume (
        min=1e-6,
        max=1.0e6,
        nominal=1.0) "Type for molar volume with medium specific attributes";

    type IsentropicExponent = SI.RatioOfSpecificHeatCapacities (
        min=1,
        max=500000,
        nominal=1.2,
        start=1.2) "Type for isentropic exponent with medium specific attributes";

    type SpecificEnergy = SI.SpecificEnergy (
        min=-1.0e8,
        max=1.e8,
        nominal=1.e6) "Type for specific energy with medium specific attributes";

    type SpecificInternalEnergy = SpecificEnergy 
    "Type for specific internal energy with medium specific attributes";

    type SpecificEnthalpy = SI.SpecificEnthalpy (
        min=-1.0e10,
        max=1.e10,
        nominal=1.e6) 
    "Type for specific enthalpy with medium specific attributes";

    type SpecificEntropy = SI.SpecificEntropy (
        min=-1.e7,
        max=1.e7,
        nominal=1.e3) "Type for specific entropy with medium specific attributes";

    type SpecificHeatCapacity = SI.SpecificHeatCapacity (
        min=0,
        max=1.e7,
        nominal=1.e3,
        start=1.e3) 
    "Type for specific heat capacity with medium specific attributes";

    type SurfaceTension = SI.SurfaceTension 
    "Type for surface tension with medium specific attributes";

    type Temperature = SI.Temperature (
        min=1,
        max=1.e4,
        nominal=300,
        start=300) "Type for temperature with medium specific attributes";

    type ThermalConductivity = SI.ThermalConductivity (
        min=0,
        max=500,
        nominal=1,
        start=1) "Type for thermal conductivity with medium specific attributes";

    type PrandtlNumber = SI.PrandtlNumber (
        min=1e-3,
        max=1e5,
        nominal=1.0) "Type for Prandtl number with medium specific attributes";

    type VelocityOfSound = SI.Velocity (
        min=0,
        max=1.e5,
        nominal=1000,
        start=1000) "Type for velocity of sound with medium specific attributes";

    type ExtraProperty = Real (min=0.0, start=1.0) 
    "Type for unspecified, mass-specific property transported by flow";

    type CumulativeExtraProperty = Real (min=0.0, start=1.0) 
    "Type for conserved integral of unspecified, mass specific property";

    type ExtraPropertyFlowRate = Real(unit="kg/s") 
    "Type for flow rate of unspecified, mass-specific property";

    type IsobaricExpansionCoefficient = Real (
        min=0,
        max=1.0e8,
        unit="1/K") 
    "Type for isobaric expansion coefficient with medium specific attributes";

    type DipoleMoment = Real (
        min=0.0,
        max=2.0,
        unit="debye",
        quantity="ElectricDipoleMoment") 
    "Type for dipole moment with medium specific attributes";

    type DerDensityByPressure = SI.DerDensityByPressure 
    "Type for partial derivative of density with resect to pressure with medium specific attributes";

    type DerDensityByEnthalpy = SI.DerDensityByEnthalpy 
    "Type for partial derivative of density with resect to enthalpy with medium specific attributes";

    type DerEnthalpyByPressure = SI.DerEnthalpyByPressure 
    "Type for partial derivative of enthalpy with resect to pressure with medium specific attributes";

    type DerDensityByTemperature = SI.DerDensityByTemperature 
    "Type for partial derivative of density with resect to temperature with medium specific attributes";

* * * * *

![image90](Modelica.Media.Interfaces.PartialMedium.FluidConstantsI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).FluidConstants
======================================================================================================================================================================================================================

**critical, triple, molecular and other standard data of fluid**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Modelica definition
-------------------

    replaceable record FluidConstants 
      "critical, triple, molecular and other standard data of fluid"
      extends Modelica.Icons.Record;
      String iupacName "complete IUPAC name (or common name, if non-existent)";
      String casRegistryNumber 
        "chemical abstracts sequencing number (if it exists)";
      String chemicalFormula 
        "Chemical formula, (brutto, nomenclature according to Hill";
      String structureFormula "Chemical structure formula";
      MolarMass molarMass "molar mass";
    end FluidConstants;

* * * * *

![image91](Modelica.Media.Interfaces.PartialMedium.FluidConstantsI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).ThermodynamicState
==========================================================================================================================================================================================================================

**Minimal variable set that is available as input argument to every
medium function**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Modelica definition
-------------------

    replaceable record ThermodynamicState 
      "Minimal variable set that is available as input argument to every medium function"
      extends Modelica.Icons.Record;
    end ThermodynamicState;

* * * * *

![image92](Modelica.Media.Interfaces.PartialMedium.BasePropertiesI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).BaseProperties
======================================================================================================================================================================================================================

**Base properties (p, d, T, h, u, R, MM and, if applicable, X and Xi) of
a medium**

Information
-----------

::

Model **BaseProperties** is a model within package **PartialMedium** and
contains the **declarations** of the minimum number of variables that
every medium model is supposed to support. A specific medium inherits
from model **BaseProperties** and provides the equations for the basic
properties.

The BaseProperties model contains the following **7+nXi variables** (nXi
is the number of independent mass fractions defined in package
PartialMedium):

  ----------------- ------------- --------------------------------------
  **Variable**      **Unit**      **Description**
  T                 K             temperature
  p                 Pa            absolute pressure
  d                 kg/m3         density
  h                 J/kg          specific enthalpy
  u                 J/kg          specific internal energy
  Xi[nXi]           kg/kg         independent mass fractions m\_i/m
  R                 J/kg.K        gas constant
  M                 kg/mol        molar mass
  ----------------- ------------- --------------------------------------

In order to implement an actual medium model, one can extend from this
base model and add **5 equations** that provide relations among these
variables. Equations will also have to be added in order to set all the
variables within the ThermodynamicState record state.

If standardOrderComponents=true, the full composition vector X[nX] is
determined by the equations contained in this base class, depending on
the independent mass fraction vector Xi[nXi].

Additional **2 + nXi** equations will have to be provided when using the
BaseProperties model, in order to fully specify the thermodynamic
conditions. The input connector qualifier applied to p, h, and nXi
indirectly declares the number of missing equations, permitting advanced
equation balance checking by Modelica tools. Please note that this
doesn't mean that the additional equations should be connection
equations, nor that exactly those variables should be supplied, in order
to complete the model. For further information, see the Modelica.Media
User's guide, and Section 4.7 (Balanced Models) of the Modelica 3.0
specification.

::

Parameters
----------

  ------------------------------------------------------------------------
  Type    Name         Defau Description
                       lt    
  ------- ------------ ----- ---------------------------------------------
  Boolean standardOrde true  if true, and reducedX = true, the last
          rComponents        element of X will be computed from the other
                             ones

  **Advan                    
  ced**                      

  Boolean preferredMed false = true if StateSelect.prefer shall be used
          iumStates          for the independent property variables of the
                             medium
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial model BaseProperties 
      "Base properties (p, d, T, h, u, R, MM and, if applicable, X and Xi) of a medium"
      InputAbsolutePressure p "Absolute pressure of medium";
      InputMassFraction[nXi] Xi(start=reference_X[1:nXi]) 
        "Structurally independent mass fractions";
      InputSpecificEnthalpy h "Specific enthalpy of medium";
      Density d "Density of medium";
      Temperature T "Temperature of medium";
      MassFraction[nX] X(start=reference_X) 
        "Mass fractions (= (component mass)/total mass  m_i/m)";
      SpecificInternalEnergy u "Specific internal energy of medium";
      SpecificHeatCapacity R "Gas constant (of mixture if applicable)";
      MolarMass MM "Molar mass (of mixture or single fluid)";
      ThermodynamicState state "thermodynamic state record for optional functions";
      parameter Boolean preferredMediumStates=false 
        "= true if StateSelect.prefer shall be used for the independent property variables of the medium";
      parameter Boolean standardOrderComponents = true 
        "if true, and reducedX = true, the last element of X will be computed from the other ones";
      SI.Conversions.NonSIunits.Temperature_degC T_degC=
          Modelica.SIunits.Conversions.to_degC(T) "Temperature of medium in [degC]";
      SI.Conversions.NonSIunits.Pressure_bar p_bar=
       Modelica.SIunits.Conversions.to_bar(p) 
        "Absolute pressure of medium in [bar]";

      // Local connector definition, used for equation balancing check
      connector InputAbsolutePressure = input SI.AbsolutePressure 
        "Pressure as input signal connector";
      connector InputSpecificEnthalpy = input SI.SpecificEnthalpy 
        "Specific enthalpy as input signal connector";
      connector InputMassFraction = input SI.MassFraction 
        "Mass fraction as input signal connector";

    equation 
      if standardOrderComponents then
        Xi = X[1:nXi];

          if fixedX then
            X = reference_X;
          end if;
          if reducedX and not fixedX then
            X[nX] = 1 - sum(Xi);
          end if;
          for i in 1:nX loop
            assert(X[i] >= -1.e-5 and X[i] <= 1 + 1.e-5, "Mass fraction X[" +
                   String(i) + "] = " + String(X[i]) + "of substance "
                   + substanceNames[i] + "\nof medium " + mediumName + " is not in the range 0..1");
          end for;

      end if;

      assert(p >= 0.0, "Pressure (= " + String(p) + " Pa) of medium \"" +
        mediumName + "\" is negative\n(Temperature = " + String(T) + " K)");
    end BaseProperties;

* * * * *

![image93](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).setState\_pTX
===================================================================================================================================================================================================================

**Return thermodynamic state as function of p, T and composition X or
Xi**

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

  ------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Partial stat thermodynami
  Medium.html#Modelica.Media.Interfaces.PartialMedium.Th e    c
  ermodynamicState)                                           state record
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function setState_pTX 
      "Return thermodynamic state as function of p, T and composition X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    end setState_pTX;

* * * * *

![image94](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).setState\_phX
===================================================================================================================================================================================================================

**Return thermodynamic state as function of p, h and composition X or
Xi**

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

  ------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Partial stat thermodynami
  Medium.html#Modelica.Media.Interfaces.PartialMedium.Th e    c
  ermodynamicState)                                           state record
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function setState_phX 
      "Return thermodynamic state as function of p, h and composition X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    end setState_phX;

* * * * *

![image95](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).setState\_psX
===================================================================================================================================================================================================================

**Return thermodynamic state as function of p, s and composition X or
Xi**

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

  ------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Partial stat thermodynami
  Medium.html#Modelica.Media.Interfaces.PartialMedium.Th e    c
  ermodynamicState)                                           state record
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function setState_psX 
      "Return thermodynamic state as function of p, s and composition X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    end setState_psX;

* * * * *

![image96](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).setState\_dTX
===================================================================================================================================================================================================================

**Return thermodynamic state as function of d, T and composition X or
Xi**

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

  ------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- ------------
  [ThermodynamicState](Modelica_Media_Interfaces_Partial stat thermodynami
  Medium.html#Modelica.Media.Interfaces.PartialMedium.Th e    c
  ermodynamicState)                                           state record
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable partial function setState_dTX 
      "Return thermodynamic state as function of d, T and composition X or Xi"
      extends Modelica.Icons.Function;
      input Density d "density";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output ThermodynamicState state "thermodynamic state record";
    end setState_dTX;

* * * * *

![image97](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).setSmoothState
====================================================================================================================================================================================================================

**Return thermodynamic state so that it smoothly approximates: if x \> 0
then state\_a else state\_b**

Information
-----------

::

This function is used to approximate the equation

    state = if x > 0 then state_a else state_b;

by a smooth characteristic, so that the expression is continuous and
differentiable:

    state := smooth(1, if x >  x_small then state_a else
                       if x < -x_small then state_b else f(state_a, state_b));

This is performed by applying function **Media.Common.smoothStep**(..)
on every element of the thermodynamic state record.

If **mass fractions** X[:] are approximated with this function then this
can be performed for all **nX** mass fractions, instead of applying it
for nX-1 mass fractions and computing the last one by the mass fraction
constraint sum(X)=1. The reason is that the approximating function has
the property that sum(state.X) = 1, provided sum(state\_a.X) =
sum(state\_b.X) = 1. This can be shown by evaluating the approximating
function in the abs(x) < x\_small region (otherwise state.X is either
state\_a.X or state\_b.X):

    X[1]  = smoothStep(x, X_a[1] , X_b[1] , x_small);
    X[2]  = smoothStep(x, X_a[2] , X_b[2] , x_small);
       ...
    X[nX] = smoothStep(x, X_a[nX], X_b[nX], x_small);

or

    X[1]  = c*(X_a[1]  - X_b[1])  + (X_a[1]  + X_b[1])/2
    X[2]  = c*(X_a[2]  - X_b[2])  + (X_a[2]  + X_b[2])/2;
       ...
    X[nX] = c*(X_a[nX] - X_b[nX]) + (X_a[nX] + X_b[nX])/2;
    c     = (x/x_small)*((x/x_small)^2 - 3)/4

Summing all mass fractions together results in

    sum(X) = c*(sum(X_a) - sum(X_b)) + (sum(X_a) + sum(X_b))/2
           = c*(1 - 1) + (1 + 1)/2
           = 1

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function setSmoothState 
      "Return thermodynamic state so that it smoothly approximates: if x > 0 then state_a else state_b"
      extends Modelica.Icons.Function;
      input Real x "m_flow or dp";
      input ThermodynamicState state_a "Thermodynamic state if x > 0";
      input ThermodynamicState state_b "Thermodynamic state if x < 0";
      input Real x_small(min=0) 
        "Smooth transition in the region -x_small < x < x_small";
      output ThermodynamicState state 
        "Smooth thermodynamic state for all x (continuous and differentiable)";
    end setSmoothState;

* * * * *

![image98](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).dynamicViscosity
======================================================================================================================================================================================================================

**Return dynamic viscosity**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function dynamicViscosity 
      "Return dynamic viscosity"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output DynamicViscosity eta "Dynamic viscosity";
    end dynamicViscosity;

* * * * *

![image99](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).thermalConductivity
=========================================================================================================================================================================================================================

**Return thermal conductivity**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function thermalConductivity 
      "Return thermal conductivity"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output ThermalConductivity lambda "Thermal conductivity";
    end thermalConductivity;

* * * * *

![image100](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).prandtlNumber
====================================================================================================================================================================================================================

**Return the Prandtl number**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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
  Type                                                      Name Descriptio
                                                                 n
  --------------------------------------------------------- ---- ----------
  [PrandtlNumber](Modelica_Media_Interfaces_PartialMedium.h Pr   Prandtl
  tml#Modelica.Media.Interfaces.PartialMedium.PrandtlNumber      number [1]
  )                                                              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function prandtlNumber "Return the Prandtl number"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output PrandtlNumber Pr "Prandtl number";
    algorithm 
      Pr := dynamicViscosity(state)*specificHeatCapacityCp(state)/thermalConductivity(
        state);
    end prandtlNumber;

* * * * *

![image101](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).pressure
===============================================================================================================================================================================================================

**Return pressure**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function pressure "Return pressure"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output AbsolutePressure p "Pressure";
    end pressure;

* * * * *

![image102](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).temperature
==================================================================================================================================================================================================================

**Return temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function temperature "Return temperature"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output Temperature T "Temperature";
    end temperature;

* * * * *

![image103](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).density
==============================================================================================================================================================================================================

**Return density**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function density "Return density"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output Density d "Density";
    end density;

* * * * *

![image104](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).specificEnthalpy
=======================================================================================================================================================================================================================

**Return specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function specificEnthalpy 
      "Return specific enthalpy"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output SpecificEnthalpy h "Specific enthalpy";
    end specificEnthalpy;

* * * * *

![image105](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).specificInternalEnergy
=============================================================================================================================================================================================================================

**Return specific internal energy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function specificInternalEnergy 
      "Return specific internal energy"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output SpecificEnergy u "Specific internal energy";
    end specificInternalEnergy;

* * * * *

![image106](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).specificEntropy
======================================================================================================================================================================================================================

**Return specific entropy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function specificEntropy 
      "Return specific entropy"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output SpecificEntropy s "Specific entropy";
    end specificEntropy;

* * * * *

![image107](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).specificGibbsEnergy
==========================================================================================================================================================================================================================

**Return specific Gibbs energy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function specificGibbsEnergy 
      "Return specific Gibbs energy"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output SpecificEnergy g "Specific Gibbs energy";
    end specificGibbsEnergy;

* * * * *

![image108](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).specificHelmholtzEnergy
==============================================================================================================================================================================================================================

**Return specific Helmholtz energy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function specificHelmholtzEnergy 
      "Return specific Helmholtz energy"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output SpecificEnergy f "Specific Helmholtz energy";
    end specificHelmholtzEnergy;

* * * * *

![image109](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).specificHeatCapacityCp
=============================================================================================================================================================================================================================

**Return specific heat capacity at constant pressure**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function specificHeatCapacityCp 
      "Return specific heat capacity at constant pressure"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output SpecificHeatCapacity cp "Specific heat capacity at constant pressure";
    end specificHeatCapacityCp;

* * * * *

![image110](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).heatCapacity\_cp
=======================================================================================================================================================================================================================

**alias for deprecated name**

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

    function heatCapacity_cp = specificHeatCapacityCp "alias for deprecated name";

* * * * *

![image111](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).specificHeatCapacityCv
=============================================================================================================================================================================================================================

**Return specific heat capacity at constant volume**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function specificHeatCapacityCv 
      "Return specific heat capacity at constant volume"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output SpecificHeatCapacity cv "Specific heat capacity at constant volume";
    end specificHeatCapacityCv;

* * * * *

![image112](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).heatCapacity\_cv
=======================================================================================================================================================================================================================

**alias for deprecated name**

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

    function heatCapacity_cv = specificHeatCapacityCv "alias for deprecated name";

* * * * *

![image113](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).isentropicExponent
=========================================================================================================================================================================================================================

**Return isentropic exponent**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function isentropicExponent 
      "Return isentropic exponent"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output IsentropicExponent gamma "Isentropic exponent";
    end isentropicExponent;

* * * * *

![image114](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).isentropicEnthalpy
=========================================================================================================================================================================================================================

**Return isentropic enthalpy**

Information
-----------

::

This function computes an isentropic state transformation:

1.  A medium is in a particular state, refState.
2.  The enhalpy at another state (h\_is) shall be computed under the
    assumption that the state transformation from refState to h\_is is
    performed with a change of specific entropy ds = 0 and the pressure
    of state h\_is is p\_downstream and the composition X upstream and
    downstream is assumed to be the same.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function isentropicEnthalpy 
      "Return isentropic enthalpy"
      extends Modelica.Icons.Function;
      input AbsolutePressure p_downstream "downstream pressure";
      input ThermodynamicState refState "reference state for entropy";
      output SpecificEnthalpy h_is "Isentropic enthalpy";
    end isentropicEnthalpy;

* * * * *

![image115](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).velocityOfSound
======================================================================================================================================================================================================================

**Return velocity of sound**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function velocityOfSound 
      "Return velocity of sound"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output VelocityOfSound a "Velocity of sound";
    end velocityOfSound;

* * * * *

![image116](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).isobaricExpansionCoefficient
===================================================================================================================================================================================================================================

**Return overall the isobaric expansion coefficient beta**

Information
-----------

::

    beta is defined as  1/v * der(v,T), with v = 1/d, at constant pressure p.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function isobaricExpansionCoefficient 
      "Return overall the isobaric expansion coefficient beta"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output IsobaricExpansionCoefficient beta "Isobaric expansion coefficient";
    end isobaricExpansionCoefficient;

* * * * *

![image117](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).beta
===========================================================================================================================================================================================================

**alias for isobaricExpansionCoefficient for user convenience**

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

    function beta = isobaricExpansionCoefficient 
      "alias for isobaricExpansionCoefficient for user convenience";

* * * * *

![image118](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).isothermalCompressibility
================================================================================================================================================================================================================================

**Return overall the isothermal compressibility factor**

Information
-----------

::

::

> kappa is defined as - 1/v \* der(v,p), with v = 1/d at constant
> temperature T.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function isothermalCompressibility 
      "Return overall the isothermal compressibility factor"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output SI.IsothermalCompressibility kappa "Isothermal compressibility";
    end isothermalCompressibility;

* * * * *

![image119](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).kappa
============================================================================================================================================================================================================

**alias of isothermalCompressibility for user convenience**

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

    function kappa = isothermalCompressibility 
      "alias of isothermalCompressibility for user convenience";

* * * * *

![image120](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).density\_derp\_h
=======================================================================================================================================================================================================================

**Return density derivative w.r.t. pressure at const specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function density_derp_h 
      "Return density derivative w.r.t. pressure at const specific enthalpy"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output DerDensityByPressure ddph "Density derivative w.r.t. pressure";
    end density_derp_h;

* * * * *

![image121](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).density\_derh\_p
=======================================================================================================================================================================================================================

**Return density derivative w.r.t. specific enthalpy at constant
pressure**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function density_derh_p 
      "Return density derivative w.r.t. specific enthalpy at constant pressure"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output DerDensityByEnthalpy ddhp 
        "Density derivative w.r.t. specific enthalpy";
    end density_derh_p;

* * * * *

![image122](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).density\_derp\_T
=======================================================================================================================================================================================================================

**Return density derivative w.r.t. pressure at const temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function density_derp_T 
      "Return density derivative w.r.t. pressure at const temperature"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output DerDensityByPressure ddpT "Density derivative w.r.t. pressure";
    end density_derp_T;

* * * * *

![image123](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).density\_derT\_p
=======================================================================================================================================================================================================================

**Return density derivative w.r.t. temperature at constant pressure**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function density_derT_p 
      "Return density derivative w.r.t. temperature at constant pressure"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output DerDensityByTemperature ddTp "Density derivative w.r.t. temperature";
    end density_derT_p;

* * * * *

![image124](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).density\_derX
====================================================================================================================================================================================================================

**Return density derivative w.r.t. mass fraction**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function density_derX 
      "Return density derivative w.r.t. mass fraction"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output Density[nX] dddX "Derivative of density w.r.t. mass fraction";
    end density_derX;

* * * * *

![image125](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).molarMass
================================================================================================================================================================================================================

**Return the molar mass of the medium**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function molarMass 
      "Return the molar mass of the medium"
      extends Modelica.Icons.Function;
      input ThermodynamicState state "thermodynamic state record";
      output MolarMass MM "Mixture molar mass";
    end molarMass;

* * * * *

![image126](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).specificEnthalpy\_pTX
============================================================================================================================================================================================================================

**Return specific enthalpy from p, T, and X or Xi**

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

    replaceable function specificEnthalpy_pTX 
      "Return specific enthalpy from p, T, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output SpecificEnthalpy h "Specific enthalpy";
    algorithm 
      h := specificEnthalpy(setState_pTX(p,T,X));
    end specificEnthalpy_pTX;

* * * * *

![image127](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).specificEntropy\_pTX
===========================================================================================================================================================================================================================

**Return specific enthalpy from p, T, and X or Xi**

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

    replaceable function specificEntropy_pTX 
      "Return specific enthalpy from p, T, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[:]=reference_X "Mass fractions";
      output SpecificEntropy s "Specific entropy";
    algorithm 
      s := specificEntropy(setState_pTX(p,T,X));

    end specificEntropy_pTX;

* * * * *

![image128](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).density\_pTX
===================================================================================================================================================================================================================

**Return density from p, T, and X or Xi**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                 Nam Defa Description
                                                       e   ult  
  ---------------------------------------------------- --- ---- -----------
  [AbsolutePressure](Modelica_Media_Interfaces_Partial p        Pressure
  Medium.html#Modelica.Media.Interfaces.PartialMedium.          [Pa]
  AbsolutePressure)                                             

  [Temperature](Modelica_Media_Interfaces_PartialMediu T        Temperature
  m.html#Modelica.Media.Interfaces.PartialMedium.Tempe          [K]
  rature)                                                       

  [MassFraction](Modelica_Media_Interfaces_PartialMedi X[:      Mass
  um.html#Modelica.Media.Interfaces.PartialMedium.Mass ]        fractions
  Fraction)                                                     [kg/kg]
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

    replaceable function density_pTX 
      "Return density from p, T, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input Temperature T "Temperature";
      input MassFraction X[:] "Mass fractions";
      output Density d "Density";
    algorithm 
      d := density(setState_pTX(p,T,X));
    end density_pTX;

* * * * *

![image129](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).temperature\_phX
=======================================================================================================================================================================================================================

**Return temperature from p, h, and X or Xi**

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

    replaceable function temperature_phX 
      "Return temperature from p, h, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output Temperature T "Temperature";
    algorithm 
      T := temperature(setState_phX(p,h,X));
    end temperature_phX;

* * * * *

![image130](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).density\_phX
===================================================================================================================================================================================================================

**Return density from p, h, and X or Xi**

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

  ------------------------------------------------------------------------
  Type                                                     Name Descriptio
                                                                n
  -------------------------------------------------------- ---- ----------
  [Density](Modelica_Media_Interfaces_PartialMedium.html#M d    Density
  odelica.Media.Interfaces.PartialMedium.Density)               [kg/m3]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function density_phX 
      "Return density from p, h, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEnthalpy h "Specific enthalpy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output Density d "Density";
    algorithm 
      d := density(setState_phX(p,h,X));
    end density_phX;

* * * * *

![image131](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).temperature\_psX
=======================================================================================================================================================================================================================

**Return temperature from p,s, and X or Xi**

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

    replaceable function temperature_psX 
      "Return temperature from p,s, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output Temperature T "Temperature";
    algorithm 
      T := temperature(setState_psX(p,s,X));
    end temperature_psX;

* * * * *

![image132](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).density\_psX
===================================================================================================================================================================================================================

**Return density from p, s, and X or Xi**

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

  ------------------------------------------------------------------------
  Type                                                     Name Descriptio
                                                                n
  -------------------------------------------------------- ---- ----------
  [Density](Modelica_Media_Interfaces_PartialMedium.html#M d    Density
  odelica.Media.Interfaces.PartialMedium.Density)               [kg/m3]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable function density_psX 
      "Return density from p, s, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output Density d "Density";
    algorithm 
      d := density(setState_psX(p,s,X));
    end density_psX;

* * * * *

![image133](Modelica.Media.Interfaces.PartialMedium.setState_pTXI.png) [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).specificEnthalpy\_psX
============================================================================================================================================================================================================================

**Return specific enthalpy from p, s, and X or Xi**

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

    replaceable function specificEnthalpy_psX 
      "Return specific enthalpy from p, s, and X or Xi"
      extends Modelica.Icons.Function;
      input AbsolutePressure p "Pressure";
      input SpecificEntropy s "Specific entropy";
      input MassFraction X[:]=reference_X "Mass fractions";
      output SpecificEnthalpy h "Specific enthalpy";
    algorithm 
      h := specificEnthalpy(setState_psX(p,s,X));
    end specificEnthalpy_psX;

* * * * *

[Modelica.Media.Interfaces.PartialMedium.BaseProperties](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.BaseProperties).InputAbsolutePressure
===================================================================================================================================================================================

**Pressure as input signal connector**

Modelica definition
-------------------

    connector InputAbsolutePressure = input SI.AbsolutePressure 
      "Pressure as input signal connector";

* * * * *

[Modelica.Media.Interfaces.PartialMedium.BaseProperties](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.BaseProperties).InputMassFraction
===============================================================================================================================================================================

**Mass fraction as input signal connector**

Modelica definition
-------------------

    connector InputMassFraction = input SI.MassFraction 
      "Mass fraction as input signal connector";

* * * * *

[Modelica.Media.Interfaces.PartialMedium.BaseProperties](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.BaseProperties).InputSpecificEnthalpy
===================================================================================================================================================================================

**Specific enthalpy as input signal connector**

Modelica definition
-------------------

    connector InputSpecificEnthalpy = input SI.SpecificEnthalpy 
      "Specific enthalpy as input signal connector";

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:29 2010.
