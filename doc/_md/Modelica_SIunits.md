% Modelica.SIunits
% 
% 

[Modelica](Modelica.html#Modelica).SIunits
==========================================

**Library of type and unit definitions based on SI units according to
ISO 31-1992**

Information
-----------

::

This package provides predefined types, such as *Mass*, *Angle*, *Time*,
based on the international standard on units, e.g.,

    type Angle = Real(final quantity = "Angle",
                      final unit     = "rad",
                      displayUnit    = "deg");

as well as conversion functions from non SI-units to SI-units and vice
versa in subpackage
[Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).

For an introduction how units are used in the Modelica standard library
with package SIunits, have a look at: [How to use
SIunits](Modelica_SIunits_UsersGuide.html#Modelica.SIunits.UsersGuide.HowToUseSIunits).

Copyright © 1998-2010, Modelica Association and DLR.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
[Modelica.UsersGuide.ModelicaLicense2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2)
or visit
[[http://www.modelica.org/licenses/ModelicaLicense2](http://www.modelica.org/licenses/ModelicaLicense2)](http://www.modelica.org/licenses/ModelicaLicense2).*

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  ![image22](Modelica.Icons.InfoS.png)             User's Guide of SIunits
  [UsersGuide](Modelica_SIunits_UsersGuide.html#Mo Library
  delica.SIunits.UsersGuide)                       

  ![image23](Modelica.SIunits.ConversionsS.png)    Conversion functions
  [Conversions](Modelica_SIunits_Conversions.html# to/from non SI units
  Modelica.SIunits.Conversions)                    and type definitions of
                                                   non SI units

  [Angle](Modelica_SIunits.html#Modelica.SIunits.A 
  ngle)                                            

  [SolidAngle](Modelica_SIunits.html#Modelica.SIun 
  its.SolidAngle)                                  

  [Length](Modelica_SIunits.html#Modelica.SIunits. 
  Length)                                          

  [PathLength](Modelica_SIunits.html#Modelica.SIun 
  its.PathLength)                                  

  [Position](Modelica_SIunits.html#Modelica.SIunit 
  s.Position)                                      

  [Distance](Modelica_SIunits.html#Modelica.SIunit 
  s.Distance)                                      

  [Breadth](Modelica_SIunits.html#Modelica.SIunits 
  .Breadth)                                        

  [Height](Modelica_SIunits.html#Modelica.SIunits. 
  Height)                                          

  [Thickness](Modelica_SIunits.html#Modelica.SIuni 
  ts.Thickness)                                    

  [Radius](Modelica_SIunits.html#Modelica.SIunits. 
  Radius)                                          

  [Diameter](Modelica_SIunits.html#Modelica.SIunit 
  s.Diameter)                                      

  [Area](Modelica_SIunits.html#Modelica.SIunits.Ar 
  ea)                                              

  [Volume](Modelica_SIunits.html#Modelica.SIunits. 
  Volume)                                          

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti 
  me)                                              

  [Duration](Modelica_SIunits.html#Modelica.SIunit 
  s.Duration)                                      

  [AngularVelocity](Modelica_SIunits.html#Modelica 
  .SIunits.AngularVelocity)                        

  [AngularAcceleration](Modelica_SIunits.html#Mode 
  lica.SIunits.AngularAcceleration)                

  [Velocity](Modelica_SIunits.html#Modelica.SIunit 
  s.Velocity)                                      

  [Acceleration](Modelica_SIunits.html#Modelica.SI 
  units.Acceleration)                              

  [Period](Modelica_SIunits.html#Modelica.SIunits. 
  Period)                                          

  [Frequency](Modelica_SIunits.html#Modelica.SIuni 
  ts.Frequency)                                    

  [AngularFrequency](Modelica_SIunits.html#Modelic 
  a.SIunits.AngularFrequency)                      

  [Wavelength](Modelica_SIunits.html#Modelica.SIun 
  its.Wavelength)                                  

  [Wavelenght](Modelica_SIunits.html#Modelica.SIun 
  its.Wavelenght)                                  

  [WaveNumber](Modelica_SIunits.html#Modelica.SIun 
  its.WaveNumber)                                  

  [CircularWaveNumber](Modelica_SIunits.html#Model 
  ica.SIunits.CircularWaveNumber)                  

  [AmplitudeLevelDifference](Modelica_SIunits.html 
  #Modelica.SIunits.AmplitudeLevelDifference)      

  [PowerLevelDifference](Modelica_SIunits.html#Mod 
  elica.SIunits.PowerLevelDifference)              

  [DampingCoefficient](Modelica_SIunits.html#Model 
  ica.SIunits.DampingCoefficient)                  

  [LogarithmicDecrement](Modelica_SIunits.html#Mod 
  elica.SIunits.LogarithmicDecrement)              

  [AttenuationCoefficient](Modelica_SIunits.html#M 
  odelica.SIunits.AttenuationCoefficient)          

  [PhaseCoefficient](Modelica_SIunits.html#Modelic 
  a.SIunits.PhaseCoefficient)                      

  [PropagationCoefficient](Modelica_SIunits.html#M 
  odelica.SIunits.PropagationCoefficient)          

  [Damping](Modelica_SIunits.html#Modelica.SIunits 
  .Damping)                                        

  [Mass](Modelica_SIunits.html#Modelica.SIunits.Ma 
  ss)                                              

  [Density](Modelica_SIunits.html#Modelica.SIunits 
  .Density)                                        

  [RelativeDensity](Modelica_SIunits.html#Modelica 
  .SIunits.RelativeDensity)                        

  [SpecificVolume](Modelica_SIunits.html#Modelica. 
  SIunits.SpecificVolume)                          

  [LinearDensity](Modelica_SIunits.html#Modelica.S 
  Iunits.LinearDensity)                            

  [SurfaceDensity](Modelica_SIunits.html#Modelica. 
  SIunits.SurfaceDensity)                          

  [Momentum](Modelica_SIunits.html#Modelica.SIunit 
  s.Momentum)                                      

  [Impulse](Modelica_SIunits.html#Modelica.SIunits 
  .Impulse)                                        

  [AngularMomentum](Modelica_SIunits.html#Modelica 
  .SIunits.AngularMomentum)                        

  [AngularImpulse](Modelica_SIunits.html#Modelica. 
  SIunits.AngularImpulse)                          

  [MomentOfInertia](Modelica_SIunits.html#Modelica 
  .SIunits.MomentOfInertia)                        

  [Inertia](Modelica_SIunits.html#Modelica.SIunits 
  .Inertia)                                        

  [Force](Modelica_SIunits.html#Modelica.SIunits.F 
  orce)                                            

  [TranslationalSpringConstant](Modelica_SIunits.h 
  tml#Modelica.SIunits.TranslationalSpringConstant 
  )                                                

  [TranslationalDampingConstant](Modelica_SIunits. 
  html#Modelica.SIunits.TranslationalDampingConsta 
  nt)                                              

  [Weight](Modelica_SIunits.html#Modelica.SIunits. 
  Weight)                                          

  [Torque](Modelica_SIunits.html#Modelica.SIunits. 
  Torque)                                          

  [ElectricalTorqueConstant](Modelica_SIunits.html 
  #Modelica.SIunits.ElectricalTorqueConstant)      

  [MomentOfForce](Modelica_SIunits.html#Modelica.S 
  Iunits.MomentOfForce)                            

  [ImpulseFlowRate](Modelica_SIunits.html#Modelica 
  .SIunits.ImpulseFlowRate)                        

  [AngularImpulseFlowRate](Modelica_SIunits.html#M 
  odelica.SIunits.AngularImpulseFlowRate)          

  [RotationalSpringConstant](Modelica_SIunits.html 
  #Modelica.SIunits.RotationalSpringConstant)      

  [RotationalDampingConstant](Modelica_SIunits.htm 
  l#Modelica.SIunits.RotationalDampingConstant)    

  [Pressure](Modelica_SIunits.html#Modelica.SIunit 
  s.Pressure)                                      

  [AbsolutePressure](Modelica_SIunits.html#Modelic 
  a.SIunits.AbsolutePressure)                      

  [BulkModulus](Modelica_SIunits.html#Modelica.SIu 
  nits.BulkModulus)                                

  [Stress](Modelica_SIunits.html#Modelica.SIunits. 
  Stress)                                          

  [NormalStress](Modelica_SIunits.html#Modelica.SI 
  units.NormalStress)                              

  [ShearStress](Modelica_SIunits.html#Modelica.SIu 
  nits.ShearStress)                                

  [Strain](Modelica_SIunits.html#Modelica.SIunits. 
  Strain)                                          

  [LinearStrain](Modelica_SIunits.html#Modelica.SI 
  units.LinearStrain)                              

  [ShearStrain](Modelica_SIunits.html#Modelica.SIu 
  nits.ShearStrain)                                

  [VolumeStrain](Modelica_SIunits.html#Modelica.SI 
  units.VolumeStrain)                              

  [PoissonNumber](Modelica_SIunits.html#Modelica.S 
  Iunits.PoissonNumber)                            

  [ModulusOfElasticity](Modelica_SIunits.html#Mode 
  lica.SIunits.ModulusOfElasticity)                

  [ShearModulus](Modelica_SIunits.html#Modelica.SI 
  units.ShearModulus)                              

  [SecondMomentOfArea](Modelica_SIunits.html#Model 
  ica.SIunits.SecondMomentOfArea)                  

  [SecondPolarMomentOfArea](Modelica_SIunits.html# 
  Modelica.SIunits.SecondPolarMomentOfArea)        

  [SectionModulus](Modelica_SIunits.html#Modelica. 
  SIunits.SectionModulus)                          

  [CoefficientOfFriction](Modelica_SIunits.html#Mo 
  delica.SIunits.CoefficientOfFriction)            

  [DynamicViscosity](Modelica_SIunits.html#Modelic 
  a.SIunits.DynamicViscosity)                      

  [KinematicViscosity](Modelica_SIunits.html#Model 
  ica.SIunits.KinematicViscosity)                  

  [SurfaceTension](Modelica_SIunits.html#Modelica. 
  SIunits.SurfaceTension)                          

  [Work](Modelica_SIunits.html#Modelica.SIunits.Wo 
  rk)                                              

  [Energy](Modelica_SIunits.html#Modelica.SIunits. 
  Energy)                                          

  [EnergyDensity](Modelica_SIunits.html#Modelica.S 
  Iunits.EnergyDensity)                            

  [PotentialEnergy](Modelica_SIunits.html#Modelica 
  .SIunits.PotentialEnergy)                        

  [KineticEnergy](Modelica_SIunits.html#Modelica.S 
  Iunits.KineticEnergy)                            

  [Power](Modelica_SIunits.html#Modelica.SIunits.P 
  ower)                                            

  [EnergyFlowRate](Modelica_SIunits.html#Modelica. 
  SIunits.EnergyFlowRate)                          

  [EnthalpyFlowRate](Modelica_SIunits.html#Modelic 
  a.SIunits.EnthalpyFlowRate)                      

  [Efficiency](Modelica_SIunits.html#Modelica.SIun 
  its.Efficiency)                                  

  [MassFlowRate](Modelica_SIunits.html#Modelica.SI 
  units.MassFlowRate)                              

  [VolumeFlowRate](Modelica_SIunits.html#Modelica. 
  SIunits.VolumeFlowRate)                          

  [MomentumFlux](Modelica_SIunits.html#Modelica.SI 
  units.MomentumFlux)                              

  [AngularMomentumFlux](Modelica_SIunits.html#Mode 
  lica.SIunits.AngularMomentumFlux)                

  [ThermodynamicTemperature](Modelica_SIunits.html Absolute temperature
  #Modelica.SIunits.ThermodynamicTemperature)      (use type
                                                   TemperatureDifference
                                                   for relative
                                                   temperatures)

  [Temp\_K](Modelica_SIunits.html#Modelica.SIunits 
  .Temp_K)                                         

  [Temperature](Modelica_SIunits.html#Modelica.SIu 
  nits.Temperature)                                

  [TemperatureDifference](Modelica_SIunits.html#Mo 
  delica.SIunits.TemperatureDifference)            

  [Temp\_C](Modelica_SIunits.html#Modelica.SIunits 
  .Temp_C)                                         

  [TemperatureSlope](Modelica_SIunits.html#Modelic 
  a.SIunits.TemperatureSlope)                      

  [LinearTemperatureCoefficient](Modelica_SIunits. 
  html#Modelica.SIunits.LinearTemperatureCoefficie 
  nt)                                              

  [QuadraticTemperatureCoefficient](Modelica_SIuni 
  ts.html#Modelica.SIunits.QuadraticTemperatureCoe 
  fficient)                                        

  [LinearExpansionCoefficient](Modelica_SIunits.ht 
  ml#Modelica.SIunits.LinearExpansionCoefficient)  

  [CubicExpansionCoefficient](Modelica_SIunits.htm 
  l#Modelica.SIunits.CubicExpansionCoefficient)    

  [RelativePressureCoefficient](Modelica_SIunits.h 
  tml#Modelica.SIunits.RelativePressureCoefficient 
  )                                                

  [PressureCoefficient](Modelica_SIunits.html#Mode 
  lica.SIunits.PressureCoefficient)                

  [Compressibility](Modelica_SIunits.html#Modelica 
  .SIunits.Compressibility)                        

  [IsothermalCompressibility](Modelica_SIunits.htm 
  l#Modelica.SIunits.IsothermalCompressibility)    

  [IsentropicCompressibility](Modelica_SIunits.htm 
  l#Modelica.SIunits.IsentropicCompressibility)    

  [Heat](Modelica_SIunits.html#Modelica.SIunits.He 
  at)                                              

  [HeatFlowRate](Modelica_SIunits.html#Modelica.SI 
  units.HeatFlowRate)                              

  [HeatFlux](Modelica_SIunits.html#Modelica.SIunit 
  s.HeatFlux)                                      

  [DensityOfHeatFlowRate](Modelica_SIunits.html#Mo 
  delica.SIunits.DensityOfHeatFlowRate)            

  [ThermalConductivity](Modelica_SIunits.html#Mode 
  lica.SIunits.ThermalConductivity)                

  [CoefficientOfHeatTransfer](Modelica_SIunits.htm 
  l#Modelica.SIunits.CoefficientOfHeatTransfer)    

  [SurfaceCoefficientOfHeatTransfer](Modelica_SIun 
  its.html#Modelica.SIunits.SurfaceCoefficientOfHe 
  atTransfer)                                      

  [ThermalInsulance](Modelica_SIunits.html#Modelic 
  a.SIunits.ThermalInsulance)                      

  [ThermalResistance](Modelica_SIunits.html#Modeli 
  ca.SIunits.ThermalResistance)                    

  [ThermalConductance](Modelica_SIunits.html#Model 
  ica.SIunits.ThermalConductance)                  

  [ThermalDiffusivity](Modelica_SIunits.html#Model 
  ica.SIunits.ThermalDiffusivity)                  

  [HeatCapacity](Modelica_SIunits.html#Modelica.SI 
  units.HeatCapacity)                              

  [SpecificHeatCapacity](Modelica_SIunits.html#Mod 
  elica.SIunits.SpecificHeatCapacity)              

  [SpecificHeatCapacityAtConstantPressure](Modelic 
  a_SIunits.html#Modelica.SIunits.SpecificHeatCapa 
  cityAtConstantPressure)                          

  [SpecificHeatCapacityAtConstantVolume](Modelica_ 
  SIunits.html#Modelica.SIunits.SpecificHeatCapaci 
  tyAtConstantVolume)                              

  [SpecificHeatCapacityAtSaturation](Modelica_SIun 
  its.html#Modelica.SIunits.SpecificHeatCapacityAt 
  Saturation)                                      

  [RatioOfSpecificHeatCapacities](Modelica_SIunits 
  .html#Modelica.SIunits.RatioOfSpecificHeatCapaci 
  ties)                                            

  [IsentropicExponent](Modelica_SIunits.html#Model 
  ica.SIunits.IsentropicExponent)                  

  [Entropy](Modelica_SIunits.html#Modelica.SIunits 
  .Entropy)                                        

  [EntropyFlowRate](Modelica_SIunits.html#Modelica 
  .SIunits.EntropyFlowRate)                        

  [SpecificEntropy](Modelica_SIunits.html#Modelica 
  .SIunits.SpecificEntropy)                        

  [InternalEnergy](Modelica_SIunits.html#Modelica. 
  SIunits.InternalEnergy)                          

  [Enthalpy](Modelica_SIunits.html#Modelica.SIunit 
  s.Enthalpy)                                      

  [HelmholtzFreeEnergy](Modelica_SIunits.html#Mode 
  lica.SIunits.HelmholtzFreeEnergy)                

  [GibbsFreeEnergy](Modelica_SIunits.html#Modelica 
  .SIunits.GibbsFreeEnergy)                        

  [SpecificEnergy](Modelica_SIunits.html#Modelica. 
  SIunits.SpecificEnergy)                          

  [SpecificInternalEnergy](Modelica_SIunits.html#M 
  odelica.SIunits.SpecificInternalEnergy)          

  [SpecificEnthalpy](Modelica_SIunits.html#Modelic 
  a.SIunits.SpecificEnthalpy)                      

  [SpecificHelmholtzFreeEnergy](Modelica_SIunits.h 
  tml#Modelica.SIunits.SpecificHelmholtzFreeEnergy 
  )                                                

  [SpecificGibbsFreeEnergy](Modelica_SIunits.html# 
  Modelica.SIunits.SpecificGibbsFreeEnergy)        

  [MassieuFunction](Modelica_SIunits.html#Modelica 
  .SIunits.MassieuFunction)                        

  [PlanckFunction](Modelica_SIunits.html#Modelica. 
  SIunits.PlanckFunction)                          

  [DerDensityByEnthalpy](Modelica_SIunits.html#Mod 
  elica.SIunits.DerDensityByEnthalpy)              

  [DerDensityByPressure](Modelica_SIunits.html#Mod 
  elica.SIunits.DerDensityByPressure)              

  [DerDensityByTemperature](Modelica_SIunits.html# 
  Modelica.SIunits.DerDensityByTemperature)        

  [DerEnthalpyByPressure](Modelica_SIunits.html#Mo 
  delica.SIunits.DerEnthalpyByPressure)            

  [DerEnergyByDensity](Modelica_SIunits.html#Model 
  ica.SIunits.DerEnergyByDensity)                  

  [DerEnergyByPressure](Modelica_SIunits.html#Mode 
  lica.SIunits.DerEnergyByPressure)                

  [ElectricCurrent](Modelica_SIunits.html#Modelica 
  .SIunits.ElectricCurrent)                        

  [Current](Modelica_SIunits.html#Modelica.SIunits 
  .Current)                                        

  [CurrentSlope](Modelica_SIunits.html#Modelica.SI 
  units.CurrentSlope)                              

  [ElectricCharge](Modelica_SIunits.html#Modelica. 
  SIunits.ElectricCharge)                          

  [Charge](Modelica_SIunits.html#Modelica.SIunits. 
  Charge)                                          

  [VolumeDensityOfCharge](Modelica_SIunits.html#Mo 
  delica.SIunits.VolumeDensityOfCharge)            

  [SurfaceDensityOfCharge](Modelica_SIunits.html#M 
  odelica.SIunits.SurfaceDensityOfCharge)          

  [ElectricFieldStrength](Modelica_SIunits.html#Mo 
  delica.SIunits.ElectricFieldStrength)            

  [ElectricPotential](Modelica_SIunits.html#Modeli 
  ca.SIunits.ElectricPotential)                    

  [Voltage](Modelica_SIunits.html#Modelica.SIunits 
  .Voltage)                                        

  [PotentialDifference](Modelica_SIunits.html#Mode 
  lica.SIunits.PotentialDifference)                

  [ElectromotiveForce](Modelica_SIunits.html#Model 
  ica.SIunits.ElectromotiveForce)                  

  [VoltageSecond](Modelica_SIunits.html#Modelica.S Voltage second
  Iunits.VoltageSecond)                            

  [VoltageSlope](Modelica_SIunits.html#Modelica.SI 
  units.VoltageSlope)                              

  [ElectricFluxDensity](Modelica_SIunits.html#Mode 
  lica.SIunits.ElectricFluxDensity)                

  [ElectricFlux](Modelica_SIunits.html#Modelica.SI 
  units.ElectricFlux)                              

  [Capacitance](Modelica_SIunits.html#Modelica.SIu 
  nits.Capacitance)                                

  [CapacitancePerArea](Modelica_SIunits.html#Model Capacitance per area
  ica.SIunits.CapacitancePerArea)                  

  [Permittivity](Modelica_SIunits.html#Modelica.SI 
  units.Permittivity)                              

  [PermittivityOfVacuum](Modelica_SIunits.html#Mod 
  elica.SIunits.PermittivityOfVacuum)              

  [RelativePermittivity](Modelica_SIunits.html#Mod 
  elica.SIunits.RelativePermittivity)              

  [ElectricSusceptibility](Modelica_SIunits.html#M 
  odelica.SIunits.ElectricSusceptibility)          

  [ElectricPolarization](Modelica_SIunits.html#Mod 
  elica.SIunits.ElectricPolarization)              

  [Electrization](Modelica_SIunits.html#Modelica.S 
  Iunits.Electrization)                            

  [ElectricDipoleMoment](Modelica_SIunits.html#Mod 
  elica.SIunits.ElectricDipoleMoment)              

  [CurrentDensity](Modelica_SIunits.html#Modelica. 
  SIunits.CurrentDensity)                          

  [LinearCurrentDensity](Modelica_SIunits.html#Mod 
  elica.SIunits.LinearCurrentDensity)              

  [MagneticFieldStrength](Modelica_SIunits.html#Mo 
  delica.SIunits.MagneticFieldStrength)            

  [MagneticPotential](Modelica_SIunits.html#Modeli 
  ca.SIunits.MagneticPotential)                    

  [MagneticPotentialDifference](Modelica_SIunits.h 
  tml#Modelica.SIunits.MagneticPotentialDifference 
  )                                                

  [MagnetomotiveForce](Modelica_SIunits.html#Model 
  ica.SIunits.MagnetomotiveForce)                  

  [CurrentLinkage](Modelica_SIunits.html#Modelica. 
  SIunits.CurrentLinkage)                          

  [MagneticFluxDensity](Modelica_SIunits.html#Mode 
  lica.SIunits.MagneticFluxDensity)                

  [MagneticFlux](Modelica_SIunits.html#Modelica.SI 
  units.MagneticFlux)                              

  [MagneticVectorPotential](Modelica_SIunits.html# 
  Modelica.SIunits.MagneticVectorPotential)        

  [Inductance](Modelica_SIunits.html#Modelica.SIun 
  its.Inductance)                                  

  [SelfInductance](Modelica_SIunits.html#Modelica. 
  SIunits.SelfInductance)                          

  [MutualInductance](Modelica_SIunits.html#Modelic 
  a.SIunits.MutualInductance)                      

  [CouplingCoefficient](Modelica_SIunits.html#Mode 
  lica.SIunits.CouplingCoefficient)                

  [LeakageCoefficient](Modelica_SIunits.html#Model 
  ica.SIunits.LeakageCoefficient)                  

  [Permeability](Modelica_SIunits.html#Modelica.SI 
  units.Permeability)                              

  [PermeabilityOfVacuum](Modelica_SIunits.html#Mod 
  elica.SIunits.PermeabilityOfVacuum)              

  [RelativePermeability](Modelica_SIunits.html#Mod 
  elica.SIunits.RelativePermeability)              

  [MagneticSusceptibility](Modelica_SIunits.html#M 
  odelica.SIunits.MagneticSusceptibility)          

  [ElectromagneticMoment](Modelica_SIunits.html#Mo 
  delica.SIunits.ElectromagneticMoment)            

  [MagneticDipoleMoment](Modelica_SIunits.html#Mod 
  elica.SIunits.MagneticDipoleMoment)              

  [Magnetization](Modelica_SIunits.html#Modelica.S 
  Iunits.Magnetization)                            

  [MagneticPolarization](Modelica_SIunits.html#Mod 
  elica.SIunits.MagneticPolarization)              

  [ElectromagneticEnergyDensity](Modelica_SIunits. 
  html#Modelica.SIunits.ElectromagneticEnergyDensi 
  ty)                                              

  [PoyntingVector](Modelica_SIunits.html#Modelica. 
  SIunits.PoyntingVector)                          

  [Resistance](Modelica_SIunits.html#Modelica.SIun 
  its.Resistance)                                  

  [Resistivity](Modelica_SIunits.html#Modelica.SIu 
  nits.Resistivity)                                

  [Conductivity](Modelica_SIunits.html#Modelica.SI 
  units.Conductivity)                              

  [Reluctance](Modelica_SIunits.html#Modelica.SIun 
  its.Reluctance)                                  

  [Permeance](Modelica_SIunits.html#Modelica.SIuni 
  ts.Permeance)                                    

  [PhaseDifference](Modelica_SIunits.html#Modelica 
  .SIunits.PhaseDifference)                        

  [Impedance](Modelica_SIunits.html#Modelica.SIuni 
  ts.Impedance)                                    

  [ModulusOfImpedance](Modelica_SIunits.html#Model 
  ica.SIunits.ModulusOfImpedance)                  

  [Reactance](Modelica_SIunits.html#Modelica.SIuni 
  ts.Reactance)                                    

  [QualityFactor](Modelica_SIunits.html#Modelica.S 
  Iunits.QualityFactor)                            

  [LossAngle](Modelica_SIunits.html#Modelica.SIuni 
  ts.LossAngle)                                    

  [Conductance](Modelica_SIunits.html#Modelica.SIu 
  nits.Conductance)                                

  [Admittance](Modelica_SIunits.html#Modelica.SIun 
  its.Admittance)                                  

  [ModulusOfAdmittance](Modelica_SIunits.html#Mode 
  lica.SIunits.ModulusOfAdmittance)                

  [Susceptance](Modelica_SIunits.html#Modelica.SIu 
  nits.Susceptance)                                

  [InstantaneousPower](Modelica_SIunits.html#Model 
  ica.SIunits.InstantaneousPower)                  

  [ActivePower](Modelica_SIunits.html#Modelica.SIu 
  nits.ActivePower)                                

  [ApparentPower](Modelica_SIunits.html#Modelica.S 
  Iunits.ApparentPower)                            

  [ReactivePower](Modelica_SIunits.html#Modelica.S 
  Iunits.ReactivePower)                            

  [PowerFactor](Modelica_SIunits.html#Modelica.SIu 
  nits.PowerFactor)                                

  [Transconductance](Modelica_SIunits.html#Modelic 
  a.SIunits.Transconductance)                      

  [InversePotential](Modelica_SIunits.html#Modelic 
  a.SIunits.InversePotential)                      

  [ElectricalForceConstant](Modelica_SIunits.html# 
  Modelica.SIunits.ElectricalForceConstant)        

  [RadiantEnergy](Modelica_SIunits.html#Modelica.S 
  Iunits.RadiantEnergy)                            

  [RadiantEnergyDensity](Modelica_SIunits.html#Mod 
  elica.SIunits.RadiantEnergyDensity)              

  [SpectralRadiantEnergyDensity](Modelica_SIunits. 
  html#Modelica.SIunits.SpectralRadiantEnergyDensi 
  ty)                                              

  [RadiantPower](Modelica_SIunits.html#Modelica.SI 
  units.RadiantPower)                              

  [RadiantEnergyFluenceRate](Modelica_SIunits.html 
  #Modelica.SIunits.RadiantEnergyFluenceRate)      

  [RadiantIntensity](Modelica_SIunits.html#Modelic 
  a.SIunits.RadiantIntensity)                      

  [Radiance](Modelica_SIunits.html#Modelica.SIunit 
  s.Radiance)                                      

  [RadiantExtiance](Modelica_SIunits.html#Modelica 
  .SIunits.RadiantExtiance)                        

  [Irradiance](Modelica_SIunits.html#Modelica.SIun 
  its.Irradiance)                                  

  [Emissivity](Modelica_SIunits.html#Modelica.SIun 
  its.Emissivity)                                  

  [SpectralEmissivity](Modelica_SIunits.html#Model 
  ica.SIunits.SpectralEmissivity)                  

  [DirectionalSpectralEmissivity](Modelica_SIunits 
  .html#Modelica.SIunits.DirectionalSpectralEmissi 
  vity)                                            

  [LuminousIntensity](Modelica_SIunits.html#Modeli 
  ca.SIunits.LuminousIntensity)                    

  [LuminousFlux](Modelica_SIunits.html#Modelica.SI 
  units.LuminousFlux)                              

  [QuantityOfLight](Modelica_SIunits.html#Modelica 
  .SIunits.QuantityOfLight)                        

  [Luminance](Modelica_SIunits.html#Modelica.SIuni 
  ts.Luminance)                                    

  [LuminousExitance](Modelica_SIunits.html#Modelic 
  a.SIunits.LuminousExitance)                      

  [Illuminance](Modelica_SIunits.html#Modelica.SIu 
  nits.Illuminance)                                

  [LightExposure](Modelica_SIunits.html#Modelica.S 
  Iunits.LightExposure)                            

  [LuminousEfficacy](Modelica_SIunits.html#Modelic 
  a.SIunits.LuminousEfficacy)                      

  [SpectralLuminousEfficacy](Modelica_SIunits.html 
  #Modelica.SIunits.SpectralLuminousEfficacy)      

  [LuminousEfficiency](Modelica_SIunits.html#Model 
  ica.SIunits.LuminousEfficiency)                  

  [SpectralLuminousEfficiency](Modelica_SIunits.ht 
  ml#Modelica.SIunits.SpectralLuminousEfficiency)  

  [CIESpectralTristimulusValues](Modelica_SIunits. 
  html#Modelica.SIunits.CIESpectralTristimulusValu 
  es)                                              

  [ChromaticityCoordinates](Modelica_SIunits.html# 
  Modelica.SIunits.ChromaticityCoordinates)        

  [SpectralAbsorptionFactor](Modelica_SIunits.html 
  #Modelica.SIunits.SpectralAbsorptionFactor)      

  [SpectralReflectionFactor](Modelica_SIunits.html 
  #Modelica.SIunits.SpectralReflectionFactor)      

  [SpectralTransmissionFactor](Modelica_SIunits.ht 
  ml#Modelica.SIunits.SpectralTransmissionFactor)  

  [SpectralRadianceFactor](Modelica_SIunits.html#M 
  odelica.SIunits.SpectralRadianceFactor)          

  [LinearAttenuationCoefficient](Modelica_SIunits. 
  html#Modelica.SIunits.LinearAttenuationCoefficie 
  nt)                                              

  [LinearAbsorptionCoefficient](Modelica_SIunits.h 
  tml#Modelica.SIunits.LinearAbsorptionCoefficient 
  )                                                

  [MolarAbsorptionCoefficient](Modelica_SIunits.ht 
  ml#Modelica.SIunits.MolarAbsorptionCoefficient)  

  [RefractiveIndex](Modelica_SIunits.html#Modelica 
  .SIunits.RefractiveIndex)                        

  [StaticPressure](Modelica_SIunits.html#Modelica. 
  SIunits.StaticPressure)                          

  [SoundPressure](Modelica_SIunits.html#Modelica.S 
  Iunits.SoundPressure)                            

  [SoundParticleDisplacement](Modelica_SIunits.htm 
  l#Modelica.SIunits.SoundParticleDisplacement)    

  [SoundParticleVelocity](Modelica_SIunits.html#Mo 
  delica.SIunits.SoundParticleVelocity)            

  [SoundParticleAcceleration](Modelica_SIunits.htm 
  l#Modelica.SIunits.SoundParticleAcceleration)    

  [VelocityOfSound](Modelica_SIunits.html#Modelica 
  .SIunits.VelocityOfSound)                        

  [SoundEnergyDensity](Modelica_SIunits.html#Model 
  ica.SIunits.SoundEnergyDensity)                  

  [SoundPower](Modelica_SIunits.html#Modelica.SIun 
  its.SoundPower)                                  

  [SoundIntensity](Modelica_SIunits.html#Modelica. 
  SIunits.SoundIntensity)                          

  [AcousticImpedance](Modelica_SIunits.html#Modeli 
  ca.SIunits.AcousticImpedance)                    

  [SpecificAcousticImpedance](Modelica_SIunits.htm 
  l#Modelica.SIunits.SpecificAcousticImpedance)    

  [MechanicalImpedance](Modelica_SIunits.html#Mode 
  lica.SIunits.MechanicalImpedance)                

  [SoundPressureLevel](Modelica_SIunits.html#Model 
  ica.SIunits.SoundPressureLevel)                  

  [SoundPowerLevel](Modelica_SIunits.html#Modelica 
  .SIunits.SoundPowerLevel)                        

  [DissipationCoefficient](Modelica_SIunits.html#M 
  odelica.SIunits.DissipationCoefficient)          

  [ReflectionCoefficient](Modelica_SIunits.html#Mo 
  delica.SIunits.ReflectionCoefficient)            

  [TransmissionCoefficient](Modelica_SIunits.html# 
  Modelica.SIunits.TransmissionCoefficient)        

  [AcousticAbsorptionCoefficient](Modelica_SIunits 
  .html#Modelica.SIunits.AcousticAbsorptionCoeffic 
  ient)                                            

  [SoundReductionIndex](Modelica_SIunits.html#Mode 
  lica.SIunits.SoundReductionIndex)                

  [EquivalentAbsorptionArea](Modelica_SIunits.html 
  #Modelica.SIunits.EquivalentAbsorptionArea)      

  [ReverberationTime](Modelica_SIunits.html#Modeli 
  ca.SIunits.ReverberationTime)                    

  [LoundnessLevel](Modelica_SIunits.html#Modelica. 
  SIunits.LoundnessLevel)                          

  [Loundness](Modelica_SIunits.html#Modelica.SIuni 
  ts.Loundness)                                    

  [RelativeAtomicMass](Modelica_SIunits.html#Model 
  ica.SIunits.RelativeAtomicMass)                  

  [RelativeMolecularMass](Modelica_SIunits.html#Mo 
  delica.SIunits.RelativeMolecularMass)            

  [NumberOfMolecules](Modelica_SIunits.html#Modeli 
  ca.SIunits.NumberOfMolecules)                    

  [AmountOfSubstance](Modelica_SIunits.html#Modeli 
  ca.SIunits.AmountOfSubstance)                    

  [MolarMass](Modelica_SIunits.html#Modelica.SIuni 
  ts.MolarMass)                                    

  [MolarVolume](Modelica_SIunits.html#Modelica.SIu 
  nits.MolarVolume)                                

  [MolarInternalEnergy](Modelica_SIunits.html#Mode 
  lica.SIunits.MolarInternalEnergy)                

  [MolarHeatCapacity](Modelica_SIunits.html#Modeli 
  ca.SIunits.MolarHeatCapacity)                    

  [MolarEntropy](Modelica_SIunits.html#Modelica.SI 
  units.MolarEntropy)                              

  [MolarFlowRate](Modelica_SIunits.html#Modelica.S 
  Iunits.MolarFlowRate)                            

  [NumberDensityOfMolecules](Modelica_SIunits.html 
  #Modelica.SIunits.NumberDensityOfMolecules)      

  [MolecularConcentration](Modelica_SIunits.html#M 
  odelica.SIunits.MolecularConcentration)          

  [MassConcentration](Modelica_SIunits.html#Modeli 
  ca.SIunits.MassConcentration)                    

  [MassFraction](Modelica_SIunits.html#Modelica.SI 
  units.MassFraction)                              

  [Concentration](Modelica_SIunits.html#Modelica.S 
  Iunits.Concentration)                            

  [VolumeFraction](Modelica_SIunits.html#Modelica. 
  SIunits.VolumeFraction)                          

  [MoleFraction](Modelica_SIunits.html#Modelica.SI 
  units.MoleFraction)                              

  [ChemicalPotential](Modelica_SIunits.html#Modeli 
  ca.SIunits.ChemicalPotential)                    

  [AbsoluteActivity](Modelica_SIunits.html#Modelic 
  a.SIunits.AbsoluteActivity)                      

  [PartialPressure](Modelica_SIunits.html#Modelica 
  .SIunits.PartialPressure)                        

  [Fugacity](Modelica_SIunits.html#Modelica.SIunit 
  s.Fugacity)                                      

  [StandardAbsoluteActivity](Modelica_SIunits.html 
  #Modelica.SIunits.StandardAbsoluteActivity)      

  [ActivityCoefficient](Modelica_SIunits.html#Mode 
  lica.SIunits.ActivityCoefficient)                

  [ActivityOfSolute](Modelica_SIunits.html#Modelic 
  a.SIunits.ActivityOfSolute)                      

  [ActivityCoefficientOfSolute](Modelica_SIunits.h 
  tml#Modelica.SIunits.ActivityCoefficientOfSolute 
  )                                                

  [StandardAbsoluteActivityOfSolute](Modelica_SIun 
  its.html#Modelica.SIunits.StandardAbsoluteActivi 
  tyOfSolute)                                      

  [ActivityOfSolvent](Modelica_SIunits.html#Modeli 
  ca.SIunits.ActivityOfSolvent)                    

  [OsmoticCoefficientOfSolvent](Modelica_SIunits.h 
  tml#Modelica.SIunits.OsmoticCoefficientOfSolvent 
  )                                                

  [StandardAbsoluteActivityOfSolvent](Modelica_SIu 
  nits.html#Modelica.SIunits.StandardAbsoluteActiv 
  ityOfSolvent)                                    

  [OsmoticPressure](Modelica_SIunits.html#Modelica 
  .SIunits.OsmoticPressure)                        

  [StoichiometricNumber](Modelica_SIunits.html#Mod 
  elica.SIunits.StoichiometricNumber)              

  [Affinity](Modelica_SIunits.html#Modelica.SIunit 
  s.Affinity)                                      

  [MassOfMolecule](Modelica_SIunits.html#Modelica. 
  SIunits.MassOfMolecule)                          

  [ElectricDipoleMomentOfMolecule](Modelica_SIunit 
  s.html#Modelica.SIunits.ElectricDipoleMomentOfMo 
  lecule)                                          

  [ElectricPolarizabilityOfAMolecule](Modelica_SIu 
  nits.html#Modelica.SIunits.ElectricPolarizabilit 
  yOfAMolecule)                                    

  [MicrocanonicalPartitionFunction](Modelica_SIuni 
  ts.html#Modelica.SIunits.MicrocanonicalPartition 
  Function)                                        

  [CanonicalPartitionFunction](Modelica_SIunits.ht 
  ml#Modelica.SIunits.CanonicalPartitionFunction)  

  [GrandCanonicalPartitionFunction](Modelica_SIuni 
  ts.html#Modelica.SIunits.GrandCanonicalPartition 
  Function)                                        

  [MolecularPartitionFunction](Modelica_SIunits.ht 
  ml#Modelica.SIunits.MolecularPartitionFunction)  

  [StatisticalWeight](Modelica_SIunits.html#Modeli 
  ca.SIunits.StatisticalWeight)                    

  [MeanFreePath](Modelica_SIunits.html#Modelica.SI 
  units.MeanFreePath)                              

  [DiffusionCoefficient](Modelica_SIunits.html#Mod 
  elica.SIunits.DiffusionCoefficient)              

  [ThermalDiffusionRatio](Modelica_SIunits.html#Mo 
  delica.SIunits.ThermalDiffusionRatio)            

  [ThermalDiffusionFactor](Modelica_SIunits.html#M 
  odelica.SIunits.ThermalDiffusionFactor)          

  [ThermalDiffusionCoefficient](Modelica_SIunits.h 
  tml#Modelica.SIunits.ThermalDiffusionCoefficient 
  )                                                

  [ElementaryCharge](Modelica_SIunits.html#Modelic 
  a.SIunits.ElementaryCharge)                      

  [ChargeNumberOfIon](Modelica_SIunits.html#Modeli 
  ca.SIunits.ChargeNumberOfIon)                    

  [FaradayConstant](Modelica_SIunits.html#Modelica 
  .SIunits.FaradayConstant)                        

  [IonicStrength](Modelica_SIunits.html#Modelica.S 
  Iunits.IonicStrength)                            

  [DegreeOfDissociation](Modelica_SIunits.html#Mod 
  elica.SIunits.DegreeOfDissociation)              

  [ElectrolyticConductivity](Modelica_SIunits.html 
  #Modelica.SIunits.ElectrolyticConductivity)      

  [MolarConductivity](Modelica_SIunits.html#Modeli 
  ca.SIunits.MolarConductivity)                    

  [TransportNumberOfIonic](Modelica_SIunits.html#M 
  odelica.SIunits.TransportNumberOfIonic)          

  [ProtonNumber](Modelica_SIunits.html#Modelica.SI 
  units.ProtonNumber)                              

  [NeutronNumber](Modelica_SIunits.html#Modelica.S 
  Iunits.NeutronNumber)                            

  [NucleonNumber](Modelica_SIunits.html#Modelica.S 
  Iunits.NucleonNumber)                            

  [AtomicMassConstant](Modelica_SIunits.html#Model 
  ica.SIunits.AtomicMassConstant)                  

  [MassOfElectron](Modelica_SIunits.html#Modelica. 
  SIunits.MassOfElectron)                          

  [MassOfProton](Modelica_SIunits.html#Modelica.SI 
  units.MassOfProton)                              

  [MassOfNeutron](Modelica_SIunits.html#Modelica.S 
  Iunits.MassOfNeutron)                            

  [HartreeEnergy](Modelica_SIunits.html#Modelica.S 
  Iunits.HartreeEnergy)                            

  [MagneticMomentOfParticle](Modelica_SIunits.html 
  #Modelica.SIunits.MagneticMomentOfParticle)      

  [BohrMagneton](Modelica_SIunits.html#Modelica.SI 
  units.BohrMagneton)                              

  [NuclearMagneton](Modelica_SIunits.html#Modelica 
  .SIunits.NuclearMagneton)                        

  [GyromagneticCoefficient](Modelica_SIunits.html# 
  Modelica.SIunits.GyromagneticCoefficient)        

  [GFactorOfAtom](Modelica_SIunits.html#Modelica.S 
  Iunits.GFactorOfAtom)                            

  [GFactorOfNucleus](Modelica_SIunits.html#Modelic 
  a.SIunits.GFactorOfNucleus)                      

  [LarmorAngularFrequency](Modelica_SIunits.html#M 
  odelica.SIunits.LarmorAngularFrequency)          

  [NuclearPrecessionAngularFrequency](Modelica_SIu 
  nits.html#Modelica.SIunits.NuclearPrecessionAngu 
  larFrequency)                                    

  [CyclotronAngularFrequency](Modelica_SIunits.htm 
  l#Modelica.SIunits.CyclotronAngularFrequency)    

  [NuclearQuadrupoleMoment](Modelica_SIunits.html# 
  Modelica.SIunits.NuclearQuadrupoleMoment)        

  [NuclearRadius](Modelica_SIunits.html#Modelica.S 
  Iunits.NuclearRadius)                            

  [ElectronRadius](Modelica_SIunits.html#Modelica. 
  SIunits.ElectronRadius)                          

  [ComptonWavelength](Modelica_SIunits.html#Modeli 
  ca.SIunits.ComptonWavelength)                    

  [MassExcess](Modelica_SIunits.html#Modelica.SIun 
  its.MassExcess)                                  

  [MassDefect](Modelica_SIunits.html#Modelica.SIun 
  its.MassDefect)                                  

  [RelativeMassExcess](Modelica_SIunits.html#Model 
  ica.SIunits.RelativeMassExcess)                  

  [RelativeMassDefect](Modelica_SIunits.html#Model 
  ica.SIunits.RelativeMassDefect)                  

  [PackingFraction](Modelica_SIunits.html#Modelica 
  .SIunits.PackingFraction)                        

  [BindingFraction](Modelica_SIunits.html#Modelica 
  .SIunits.BindingFraction)                        

  [MeanLife](Modelica_SIunits.html#Modelica.SIunit 
  s.MeanLife)                                      

  [LevelWidth](Modelica_SIunits.html#Modelica.SIun 
  its.LevelWidth)                                  

  [Activity](Modelica_SIunits.html#Modelica.SIunit 
  s.Activity)                                      

  [SpecificActivity](Modelica_SIunits.html#Modelic 
  a.SIunits.SpecificActivity)                      

  [DecayConstant](Modelica_SIunits.html#Modelica.S 
  Iunits.DecayConstant)                            

  [HalfLife](Modelica_SIunits.html#Modelica.SIunit 
  s.HalfLife)                                      

  [AlphaDisintegrationEnergy](Modelica_SIunits.htm 
  l#Modelica.SIunits.AlphaDisintegrationEnergy)    

  [MaximumBetaParticleEnergy](Modelica_SIunits.htm 
  l#Modelica.SIunits.MaximumBetaParticleEnergy)    

  [BetaDisintegrationEnergy](Modelica_SIunits.html 
  #Modelica.SIunits.BetaDisintegrationEnergy)      

  [ReactionEnergy](Modelica_SIunits.html#Modelica. 
  SIunits.ReactionEnergy)                          

  [ResonanceEnergy](Modelica_SIunits.html#Modelica 
  .SIunits.ResonanceEnergy)                        

  [CrossSection](Modelica_SIunits.html#Modelica.SI 
  units.CrossSection)                              

  [TotalCrossSection](Modelica_SIunits.html#Modeli 
  ca.SIunits.TotalCrossSection)                    

  [AngularCrossSection](Modelica_SIunits.html#Mode 
  lica.SIunits.AngularCrossSection)                

  [SpectralCrossSection](Modelica_SIunits.html#Mod 
  elica.SIunits.SpectralCrossSection)              

  [SpectralAngularCrossSection](Modelica_SIunits.h 
  tml#Modelica.SIunits.SpectralAngularCrossSection 
  )                                                

  [MacroscopicCrossSection](Modelica_SIunits.html# 
  Modelica.SIunits.MacroscopicCrossSection)        

  [TotalMacroscopicCrossSection](Modelica_SIunits. 
  html#Modelica.SIunits.TotalMacroscopicCrossSecti 
  on)                                              

  [ParticleFluence](Modelica_SIunits.html#Modelica 
  .SIunits.ParticleFluence)                        

  [ParticleFluenceRate](Modelica_SIunits.html#Mode 
  lica.SIunits.ParticleFluenceRate)                

  [EnergyFluence](Modelica_SIunits.html#Modelica.S 
  Iunits.EnergyFluence)                            

  [EnergyFluenceRate](Modelica_SIunits.html#Modeli 
  ca.SIunits.EnergyFluenceRate)                    

  [CurrentDensityOfParticles](Modelica_SIunits.htm 
  l#Modelica.SIunits.CurrentDensityOfParticles)    

  [MassAttenuationCoefficient](Modelica_SIunits.ht 
  ml#Modelica.SIunits.MassAttenuationCoefficient)  

  [MolarAttenuationCoefficient](Modelica_SIunits.h 
  tml#Modelica.SIunits.MolarAttenuationCoefficient 
  )                                                

  [AtomicAttenuationCoefficient](Modelica_SIunits. 
  html#Modelica.SIunits.AtomicAttenuationCoefficie 
  nt)                                              

  [HalfThickness](Modelica_SIunits.html#Modelica.S 
  Iunits.HalfThickness)                            

  [TotalLinearStoppingPower](Modelica_SIunits.html 
  #Modelica.SIunits.TotalLinearStoppingPower)      

  [TotalAtomicStoppingPower](Modelica_SIunits.html 
  #Modelica.SIunits.TotalAtomicStoppingPower)      

  [TotalMassStoppingPower](Modelica_SIunits.html#M 
  odelica.SIunits.TotalMassStoppingPower)          

  [MeanLinearRange](Modelica_SIunits.html#Modelica 
  .SIunits.MeanLinearRange)                        

  [MeanMassRange](Modelica_SIunits.html#Modelica.S 
  Iunits.MeanMassRange)                            

  [LinearIonization](Modelica_SIunits.html#Modelic 
  a.SIunits.LinearIonization)                      

  [TotalIonization](Modelica_SIunits.html#Modelica 
  .SIunits.TotalIonization)                        

  [Mobility](Modelica_SIunits.html#Modelica.SIunit 
  s.Mobility)                                      

  [IonNumberDensity](Modelica_SIunits.html#Modelic 
  a.SIunits.IonNumberDensity)                      

  [RecombinationCoefficient](Modelica_SIunits.html 
  #Modelica.SIunits.RecombinationCoefficient)      

  [NeutronNumberDensity](Modelica_SIunits.html#Mod 
  elica.SIunits.NeutronNumberDensity)              

  [NeutronSpeed](Modelica_SIunits.html#Modelica.SI 
  units.NeutronSpeed)                              

  [NeutronFluenceRate](Modelica_SIunits.html#Model 
  ica.SIunits.NeutronFluenceRate)                  

  [TotalNeutronSourceDensity](Modelica_SIunits.htm 
  l#Modelica.SIunits.TotalNeutronSourceDensity)    

  [SlowingDownDensity](Modelica_SIunits.html#Model 
  ica.SIunits.SlowingDownDensity)                  

  [ResonanceEscapeProbability](Modelica_SIunits.ht 
  ml#Modelica.SIunits.ResonanceEscapeProbability)  

  [Lethargy](Modelica_SIunits.html#Modelica.SIunit 
  s.Lethargy)                                      

  [SlowingDownArea](Modelica_SIunits.html#Modelica 
  .SIunits.SlowingDownArea)                        

  [DiffusionArea](Modelica_SIunits.html#Modelica.S 
  Iunits.DiffusionArea)                            

  [MigrationArea](Modelica_SIunits.html#Modelica.S 
  Iunits.MigrationArea)                            

  [SlowingDownLength](Modelica_SIunits.html#Modeli 
  ca.SIunits.SlowingDownLength)                    

  [DiffusionLength](Modelica_SIunits.html#Modelica 
  .SIunits.DiffusionLength)                        

  [MigrationLength](Modelica_SIunits.html#Modelica 
  .SIunits.MigrationLength)                        

  [NeutronYieldPerFission](Modelica_SIunits.html#M 
  odelica.SIunits.NeutronYieldPerFission)          

  [NeutronYieldPerAbsorption](Modelica_SIunits.htm 
  l#Modelica.SIunits.NeutronYieldPerAbsorption)    

  [FastFissionFactor](Modelica_SIunits.html#Modeli 
  ca.SIunits.FastFissionFactor)                    

  [ThermalUtilizationFactor](Modelica_SIunits.html 
  #Modelica.SIunits.ThermalUtilizationFactor)      

  [NonLeakageProbability](Modelica_SIunits.html#Mo 
  delica.SIunits.NonLeakageProbability)            

  [Reactivity](Modelica_SIunits.html#Modelica.SIun 
  its.Reactivity)                                  

  [ReactorTimeConstant](Modelica_SIunits.html#Mode 
  lica.SIunits.ReactorTimeConstant)                

  [EnergyImparted](Modelica_SIunits.html#Modelica. 
  SIunits.EnergyImparted)                          

  [MeanEnergyImparted](Modelica_SIunits.html#Model 
  ica.SIunits.MeanEnergyImparted)                  

  [SpecificEnergyImparted](Modelica_SIunits.html#M 
  odelica.SIunits.SpecificEnergyImparted)          

  [AbsorbedDose](Modelica_SIunits.html#Modelica.SI 
  units.AbsorbedDose)                              

  [DoseEquivalent](Modelica_SIunits.html#Modelica. 
  SIunits.DoseEquivalent)                          

  [AbsorbedDoseRate](Modelica_SIunits.html#Modelic 
  a.SIunits.AbsorbedDoseRate)                      

  [LinearEnergyTransfer](Modelica_SIunits.html#Mod 
  elica.SIunits.LinearEnergyTransfer)              

  [Kerma](Modelica_SIunits.html#Modelica.SIunits.K 
  erma)                                            

  [KermaRate](Modelica_SIunits.html#Modelica.SIuni 
  ts.KermaRate)                                    

  [MassEnergyTransferCoefficient](Modelica_SIunits 
  .html#Modelica.SIunits.MassEnergyTransferCoeffic 
  ient)                                            

  [Exposure](Modelica_SIunits.html#Modelica.SIunit 
  s.Exposure)                                      

  [ExposureRate](Modelica_SIunits.html#Modelica.SI 
  units.ExposureRate)                              

  [ReynoldsNumber](Modelica_SIunits.html#Modelica. 
  SIunits.ReynoldsNumber)                          

  [EulerNumber](Modelica_SIunits.html#Modelica.SIu 
  nits.EulerNumber)                                

  [FroudeNumber](Modelica_SIunits.html#Modelica.SI 
  units.FroudeNumber)                              

  [GrashofNumber](Modelica_SIunits.html#Modelica.S 
  Iunits.GrashofNumber)                            

  [WeberNumber](Modelica_SIunits.html#Modelica.SIu 
  nits.WeberNumber)                                

  [MachNumber](Modelica_SIunits.html#Modelica.SIun 
  its.MachNumber)                                  

  [KnudsenNumber](Modelica_SIunits.html#Modelica.S 
  Iunits.KnudsenNumber)                            

  [StrouhalNumber](Modelica_SIunits.html#Modelica. 
  SIunits.StrouhalNumber)                          

  [FourierNumber](Modelica_SIunits.html#Modelica.S 
  Iunits.FourierNumber)                            

  [PecletNumber](Modelica_SIunits.html#Modelica.SI 
  units.PecletNumber)                              

  [RayleighNumber](Modelica_SIunits.html#Modelica. 
  SIunits.RayleighNumber)                          

  [NusseltNumber](Modelica_SIunits.html#Modelica.S 
  Iunits.NusseltNumber)                            

  [BiotNumber](Modelica_SIunits.html#Modelica.SIun 
  its.BiotNumber)                                  

  [StantonNumber](Modelica_SIunits.html#Modelica.S 
  Iunits.StantonNumber)                            

  [FourierNumberOfMassTransfer](Modelica_SIunits.h 
  tml#Modelica.SIunits.FourierNumberOfMassTransfer 
  )                                                

  [PecletNumberOfMassTransfer](Modelica_SIunits.ht 
  ml#Modelica.SIunits.PecletNumberOfMassTransfer)  

  [GrashofNumberOfMassTransfer](Modelica_SIunits.h 
  tml#Modelica.SIunits.GrashofNumberOfMassTransfer 
  )                                                

  [NusseltNumberOfMassTransfer](Modelica_SIunits.h 
  tml#Modelica.SIunits.NusseltNumberOfMassTransfer 
  )                                                

  [StantonNumberOfMassTransfer](Modelica_SIunits.h 
  tml#Modelica.SIunits.StantonNumberOfMassTransfer 
  )                                                

  [PrandtlNumber](Modelica_SIunits.html#Modelica.S 
  Iunits.PrandtlNumber)                            

  [SchmidtNumber](Modelica_SIunits.html#Modelica.S 
  Iunits.SchmidtNumber)                            

  [LewisNumber](Modelica_SIunits.html#Modelica.SIu 
  nits.LewisNumber)                                

  [MagneticReynoldsNumber](Modelica_SIunits.html#M 
  odelica.SIunits.MagneticReynoldsNumber)          

  [AlfvenNumber](Modelica_SIunits.html#Modelica.SI 
  units.AlfvenNumber)                              

  [HartmannNumber](Modelica_SIunits.html#Modelica. 
  SIunits.HartmannNumber)                          

  [CowlingNumber](Modelica_SIunits.html#Modelica.S 
  Iunits.CowlingNumber)                            

  [BraggAngle](Modelica_SIunits.html#Modelica.SIun 
  its.BraggAngle)                                  

  [OrderOfReflexion](Modelica_SIunits.html#Modelic 
  a.SIunits.OrderOfReflexion)                      

  [ShortRangeOrderParameter](Modelica_SIunits.html 
  #Modelica.SIunits.ShortRangeOrderParameter)      

  [LongRangeOrderParameter](Modelica_SIunits.html# 
  Modelica.SIunits.LongRangeOrderParameter)        

  [DebyeWallerFactor](Modelica_SIunits.html#Modeli 
  ca.SIunits.DebyeWallerFactor)                    

  [CircularWavenumber](Modelica_SIunits.html#Model 
  ica.SIunits.CircularWavenumber)                  

  [FermiCircularWavenumber](Modelica_SIunits.html# 
  Modelica.SIunits.FermiCircularWavenumber)        

  [DebyeCircularWavenumber](Modelica_SIunits.html# 
  Modelica.SIunits.DebyeCircularWavenumber)        

  [DebyeCircularFrequency](Modelica_SIunits.html#M 
  odelica.SIunits.DebyeCircularFrequency)          

  [DebyeTemperature](Modelica_SIunits.html#Modelic 
  a.SIunits.DebyeTemperature)                      

  [SpectralConcentration](Modelica_SIunits.html#Mo 
  delica.SIunits.SpectralConcentration)            

  [GrueneisenParameter](Modelica_SIunits.html#Mode 
  lica.SIunits.GrueneisenParameter)                

  [MadelungConstant](Modelica_SIunits.html#Modelic 
  a.SIunits.MadelungConstant)                      

  [DensityOfStates](Modelica_SIunits.html#Modelica 
  .SIunits.DensityOfStates)                        

  [ResidualResistivity](Modelica_SIunits.html#Mode 
  lica.SIunits.ResidualResistivity)                

  [LorenzCoefficient](Modelica_SIunits.html#Modeli 
  ca.SIunits.LorenzCoefficient)                    

  [HallCoefficient](Modelica_SIunits.html#Modelica 
  .SIunits.HallCoefficient)                        

  [ThermoelectromotiveForce](Modelica_SIunits.html 
  #Modelica.SIunits.ThermoelectromotiveForce)      

  [SeebeckCoefficient](Modelica_SIunits.html#Model 
  ica.SIunits.SeebeckCoefficient)                  

  [PeltierCoefficient](Modelica_SIunits.html#Model 
  ica.SIunits.PeltierCoefficient)                  

  [ThomsonCoefficient](Modelica_SIunits.html#Model 
  ica.SIunits.ThomsonCoefficient)                  

  [RichardsonConstant](Modelica_SIunits.html#Model 
  ica.SIunits.RichardsonConstant)                  

  [FermiEnergy](Modelica_SIunits.html#Modelica.SIu 
  nits.FermiEnergy)                                

  [GapEnergy](Modelica_SIunits.html#Modelica.SIuni 
  ts.GapEnergy)                                    

  [DonorIonizationEnergy](Modelica_SIunits.html#Mo 
  delica.SIunits.DonorIonizationEnergy)            

  [AcceptorIonizationEnergy](Modelica_SIunits.html 
  #Modelica.SIunits.AcceptorIonizationEnergy)      

  [ActivationEnergy](Modelica_SIunits.html#Modelic 
  a.SIunits.ActivationEnergy)                      

  [FermiTemperature](Modelica_SIunits.html#Modelic 
  a.SIunits.FermiTemperature)                      

  [ElectronNumberDensity](Modelica_SIunits.html#Mo 
  delica.SIunits.ElectronNumberDensity)            

  [HoleNumberDensity](Modelica_SIunits.html#Modeli 
  ca.SIunits.HoleNumberDensity)                    

  [IntrinsicNumberDensity](Modelica_SIunits.html#M 
  odelica.SIunits.IntrinsicNumberDensity)          

  [DonorNumberDensity](Modelica_SIunits.html#Model 
  ica.SIunits.DonorNumberDensity)                  

  [AcceptorNumberDensity](Modelica_SIunits.html#Mo 
  delica.SIunits.AcceptorNumberDensity)            

  [EffectiveMass](Modelica_SIunits.html#Modelica.S 
  Iunits.EffectiveMass)                            

  [MobilityRatio](Modelica_SIunits.html#Modelica.S 
  Iunits.MobilityRatio)                            

  [RelaxationTime](Modelica_SIunits.html#Modelica. 
  SIunits.RelaxationTime)                          

  [CarrierLifeTime](Modelica_SIunits.html#Modelica 
  .SIunits.CarrierLifeTime)                        

  [ExchangeIntegral](Modelica_SIunits.html#Modelic 
  a.SIunits.ExchangeIntegral)                      

  [CurieTemperature](Modelica_SIunits.html#Modelic 
  a.SIunits.CurieTemperature)                      

  [NeelTemperature](Modelica_SIunits.html#Modelica 
  .SIunits.NeelTemperature)                        

  [LondonPenetrationDepth](Modelica_SIunits.html#M 
  odelica.SIunits.LondonPenetrationDepth)          

  [CoherenceLength](Modelica_SIunits.html#Modelica 
  .SIunits.CoherenceLength)                        

  [LandauGinzburgParameter](Modelica_SIunits.html# 
  Modelica.SIunits.LandauGinzburgParameter)        

  [FluxiodQuantum](Modelica_SIunits.html#Modelica. 
  SIunits.FluxiodQuantum)                          

  ![image24](Modelica.SIunits.ComplexCurrentS.png) Complex electrical
  [ComplexCurrent](Modelica_SIunits.html#Modelica. current
  SIunits.ComplexCurrent)                          

  ![image25](Modelica.SIunits.ComplexCurrentS.png) Complex current slope
  [ComplexCurrentSlope](Modelica_SIunits.html#Mode 
  lica.SIunits.ComplexCurrentSlope)                

  ![image26](Modelica.SIunits.ComplexCurrentS.png) Complex electrical
  [ComplexCurrentDensity](Modelica_SIunits.html#Mo current density
  delica.SIunits.ComplexCurrentDensity)            

  ![image27](Modelica.SIunits.ComplexCurrentS.png) Complex electric
  [ComplexElectricPotential](Modelica_SIunits.html potential
  #Modelica.SIunits.ComplexElectricPotential)      

  ![image28](Modelica.SIunits.ComplexCurrentS.png) Complex electric
  [ComplexPotentialDifference](Modelica_SIunits.ht potential difference
  ml#Modelica.SIunits.ComplexPotentialDifference)  

  ![image29](Modelica.SIunits.ComplexCurrentS.png) Complex electrical
  [ComplexVoltage](Modelica_SIunits.html#Modelica. voltage
  SIunits.ComplexVoltage)                          

  ![image30](Modelica.SIunits.ComplexCurrentS.png) Complex voltage slope
  [ComplexVoltageSlope](Modelica_SIunits.html#Mode 
  lica.SIunits.ComplexVoltageSlope)                

  ![image31](Modelica.SIunits.ComplexCurrentS.png) Complex electric field
  [ComplexElectricFieldStrength](Modelica_SIunits. strength
  html#Modelica.SIunits.ComplexElectricFieldStreng 
  th)                                              

  ![image32](Modelica.SIunits.ComplexCurrentS.png) Complex electric flux
  [ComplexElectricFluxDensity](Modelica_SIunits.ht density
  ml#Modelica.SIunits.ComplexElectricFluxDensity)  

  ![image33](Modelica.SIunits.ComplexCurrentS.png) Complex electric flux
  [ComplexElectricFlux](Modelica_SIunits.html#Mode 
  lica.SIunits.ComplexElectricFlux)                

  ![image34](Modelica.SIunits.ComplexCurrentS.png) Complex magnetic field
  [ComplexMagneticFieldStrength](Modelica_SIunits. strength
  html#Modelica.SIunits.ComplexMagneticFieldStreng 
  th)                                              

  ![image35](Modelica.SIunits.ComplexCurrentS.png) Complex magnetic
  [ComplexMagneticPotential](Modelica_SIunits.html potential
  #Modelica.SIunits.ComplexMagneticPotential)      

  ![image36](Modelica.SIunits.ComplexCurrentS.png) Complex magnetic
  [ComplexMagneticPotentialDifference](Modelica_SI potential difference
  units.html#Modelica.SIunits.ComplexMagneticPoten 
  tialDifference)                                  

  ![image37](Modelica.SIunits.ComplexCurrentS.png) Complex magneto motive
  [ComplexMagnetomotiveForce](Modelica_SIunits.htm force
  l#Modelica.SIunits.ComplexMagnetomotiveForce)    

  ![image38](Modelica.SIunits.ComplexCurrentS.png) Complex magnetic flux
  [ComplexMagneticFluxDensity](Modelica_SIunits.ht density
  ml#Modelica.SIunits.ComplexMagneticFluxDensity)  

  ![image39](Modelica.SIunits.ComplexCurrentS.png) Complex magnetic flux
  [ComplexMagneticFlux](Modelica_SIunits.html#Mode 
  lica.SIunits.ComplexMagneticFlux)                

  ![image40](Modelica.SIunits.ComplexCurrentS.png) Complex reluctance
  [ComplexReluctance](Modelica_SIunits.html#Modeli 
  ca.SIunits.ComplexReluctance)                    

  ![image41](Modelica.SIunits.ComplexCurrentS.png) Complex electrical
  [ComplexImpedance](Modelica_SIunits.html#Modelic impedance
  a.SIunits.ComplexImpedance)                      

  ![image42](Modelica.SIunits.ComplexCurrentS.png) Complex electrical
  [ComplexAdmittance](Modelica_SIunits.html#Modeli impedance
  ca.SIunits.ComplexAdmittance)                    

  ![image43](Modelica.SIunits.ComplexCurrentS.png) Complex electrical
  [ComplexPower](Modelica_SIunits.html#Modelica.SI power
  units.ComplexPower)                              
  ------------------------------------------------------------------------

Types and constants
-------------------

    type Angle = Real (
        final quantity="Angle",
        final unit="rad",
        displayUnit="deg");

    type SolidAngle = Real (final quantity="SolidAngle", final unit="sr");

    type Length = Real (final quantity="Length", final unit="m");

    type PathLength = Length;

    type Position = Length;

    type Distance = Length (min=0);

    type Breadth = Length(min=0);

    type Height = Length(min=0);

    type Thickness = Length(min=0);

    type Radius = Length(min=0);

    type Diameter = Length(min=0);

    type Area = Real (final quantity="Area", final unit="m2");

    type Volume = Real (final quantity="Volume", final unit="m3");

    type Time = Real (final quantity="Time", final unit="s");

    type Duration = Time;

    type AngularVelocity = Real (
        final quantity="AngularVelocity",
        final unit="rad/s");

    type AngularAcceleration = Real (final quantity="AngularAcceleration", final unit=
               "rad/s2");

    type Velocity = Real (final quantity="Velocity", final unit="m/s");

    type Acceleration = Real (final quantity="Acceleration", final unit="m/s2");

    type Period = Real (final quantity="Time", final unit="s");

    type Frequency = Real (final quantity="Frequency", final unit="Hz");

    type AngularFrequency = Real (final quantity="AngularFrequency", final unit=
            "rad/s");

    type Wavelength = Real (final quantity="Wavelength", final unit="m");

    type Wavelenght = Wavelength;

    type WaveNumber = Real (final quantity="WaveNumber", final unit="m-1");

    type CircularWaveNumber = Real (final quantity="CircularWaveNumber", final unit=
               "rad/m");

    type AmplitudeLevelDifference = Real (final quantity=
            "AmplitudeLevelDifference", final unit="dB");

    type PowerLevelDifference = Real (final quantity="PowerLevelDifference",
          final unit="dB");

    type DampingCoefficient = Real (final quantity="DampingCoefficient", final unit=
               "s-1");

    type LogarithmicDecrement = Real (final quantity="LogarithmicDecrement",
          final unit="1/S");

    type AttenuationCoefficient = Real (final quantity="AttenuationCoefficient",
          final unit="m-1");

    type PhaseCoefficient = Real (final quantity="PhaseCoefficient", final unit=
            "m-1");

    type PropagationCoefficient = Real (final quantity="PropagationCoefficient",
          final unit="m-1");

    type Damping = DampingCoefficient;

    type Mass = Real (
        quantity="Mass",
        final unit="kg",
        min=0);

    type Density = Real (
        final quantity="Density",
        final unit="kg/m3",
        displayUnit="g/cm3",
        min=0);

    type RelativeDensity = Real (
        final quantity="RelativeDensity",
        final unit="1",
        min=0);

    type SpecificVolume = Real (
        final quantity="SpecificVolume",
        final unit="m3/kg",
        min=0);

    type LinearDensity = Real (
        final quantity="LinearDensity",
        final unit="kg/m",
        min=0);

    type SurfaceDensity = Real (
        final quantity="SurfaceDensity",
        final unit="kg/m2",
        min=0);

    type Momentum = Real (final quantity="Momentum", final unit="kg.m/s");

    type Impulse = Real (final quantity="Impulse", final unit="N.s");

    type AngularMomentum = Real (final quantity="AngularMomentum", final unit=
            "kg.m2/s");

    type AngularImpulse = Real (final quantity="AngularImpulse", final unit=
            "N.m.s");

    type MomentOfInertia = Real (final quantity="MomentOfInertia", final unit=
            "kg.m2");

    type Inertia = MomentOfInertia;

    type Force = Real (final quantity="Force", final unit="N");

    type TranslationalSpringConstant=Real(final quantity="TranslationalSpringConstant", final unit="N/m");

    type TranslationalDampingConstant=Real(final quantity="TranslationalDampingConstant", final unit="N.s/m");

    type Weight = Force;

    type Torque = Real (final quantity="Torque", final unit="N.m");

    type ElectricalTorqueConstant = Real(final quantity="ElectricalTorqueConstant", final unit= "N.m/A");

    type MomentOfForce = Torque;

    type ImpulseFlowRate = Real (final quantity="ImpulseFlowRate", final unit="N");

    type AngularImpulseFlowRate = Real (final quantity="AngularImpulseFlowRate", final unit= "N.m");

    type RotationalSpringConstant=Real(final quantity="RotationalSpringConstant", final unit="N.m/rad");

    type RotationalDampingConstant=Real(final quantity="RotationalDampingConstant", final unit="N.m.s/rad");

    type Pressure = Real (
        final quantity="Pressure",
        final unit="Pa",
        displayUnit="bar");

    type AbsolutePressure = Pressure (min=0);

    type BulkModulus = AbsolutePressure;

    type Stress = Real (final unit="Pa");

    type NormalStress = Stress;

    type ShearStress = Stress;

    type Strain = Real (final quantity="Strain", final unit="1");

    type LinearStrain = Strain;

    type ShearStrain = Strain;

    type VolumeStrain = Real (final quantity="VolumeStrain", final unit="1");

    type PoissonNumber = Real (final quantity="PoissonNumber", final unit="1");

    type ModulusOfElasticity = Stress;

    type ShearModulus = Stress;

    type SecondMomentOfArea = Real (final quantity="SecondMomentOfArea", final unit=
               "m4");

    type SecondPolarMomentOfArea = SecondMomentOfArea;

    type SectionModulus = Real (final quantity="SectionModulus", final unit="m3");

    type CoefficientOfFriction = Real (final quantity="CoefficientOfFriction",
          final unit="1");

    type DynamicViscosity = Real (
        final quantity="DynamicViscosity",
        final unit="Pa.s",
        min=0);

    type KinematicViscosity = Real (
        final quantity="KinematicViscosity",
        final unit="m2/s",
        min=0);

    type SurfaceTension = Real (final quantity="SurfaceTension", final unit="N/m");

    type Work = Real (final quantity="Work", final unit="J");

    type Energy = Real (final quantity="Energy", final unit="J");

    type EnergyDensity = Real (final quantity="EnergyDensity", final unit="J/m3");

    type PotentialEnergy = Energy;

    type KineticEnergy = Energy;

    type Power = Real (final quantity="Power", final unit="W");

    type EnergyFlowRate = Power;

    type EnthalpyFlowRate = Real (final quantity="EnthalpyFlowRate", final unit=
            "W");

    type Efficiency = Real (
        final quantity="Efficiency",
        final unit="1",
        min=0);

    type MassFlowRate = Real (quantity="MassFlowRate", final unit="kg/s");

    type VolumeFlowRate = Real (final quantity="VolumeFlowRate", final unit=
            "m3/s");

    type MomentumFlux = Real (final quantity="MomentumFlux", final unit="N");

    type AngularMomentumFlux = Real (final quantity="AngularMomentumFlux", final unit=
               "N.m");

    type ThermodynamicTemperature = Real (
        final quantity="ThermodynamicTemperature",
        final unit="K",
        min = 0,
        start = 288.15,
        displayUnit="degC") 
    "Absolute temperature (use type TemperatureDifference for relative temperatures)";

    type Temp_K = ThermodynamicTemperature;

    type Temperature = ThermodynamicTemperature;

    type TemperatureDifference = Real (
        final quantity="ThermodynamicTemperature",
        final unit="K");

    type Temp_C = SIunits.Conversions.NonSIunits.Temperature_degC;

    type TemperatureSlope = Real (final quantity="TemperatureSlope",
        final unit="K/s");

    type LinearTemperatureCoefficient = Real(final quantity = "LinearTemperatureCoefficient", final unit="1/K");

    type QuadraticTemperatureCoefficient = Real(final quantity = "QuadraticTemperatureCoefficient", final unit="1/K2");

    type LinearExpansionCoefficient = Real (final quantity=
            "LinearExpansionCoefficient", final unit="1/K");

    type CubicExpansionCoefficient = Real (final quantity=
            "CubicExpansionCoefficient", final unit="1/K");

    type RelativePressureCoefficient = Real (final quantity=
            "RelativePressureCoefficient", final unit="1/K");

    type PressureCoefficient = Real (final quantity="PressureCoefficient", final unit=
               "Pa/K");

    type Compressibility = Real (final quantity="Compressibility", final unit=
            "1/Pa");

    type IsothermalCompressibility = Compressibility;

    type IsentropicCompressibility = Compressibility;

    type Heat = Real (final quantity="Energy", final unit="J");

    type HeatFlowRate = Real (final quantity="Power", final unit="W");

    type HeatFlux = Real (final quantity="HeatFlux", final unit="W/m2");

    type DensityOfHeatFlowRate = Real (final quantity="DensityOfHeatFlowRate",
          final unit="W/m2");

    type ThermalConductivity = Real (final quantity="ThermalConductivity", final unit=
               "W/(m.K)");

    type CoefficientOfHeatTransfer = Real (final quantity=
            "CoefficientOfHeatTransfer", final unit="W/(m2.K)");

    type SurfaceCoefficientOfHeatTransfer = CoefficientOfHeatTransfer;

    type ThermalInsulance = Real (final quantity="ThermalInsulance", final unit=
            "m2.K/W");

    type ThermalResistance = Real (final quantity="ThermalResistance", final unit=
           "K/W");

    type ThermalConductance = Real (final quantity="ThermalConductance", final unit=
               "W/K");

    type ThermalDiffusivity = Real (final quantity="ThermalDiffusivity", final unit=
               "m2/s");

    type HeatCapacity = Real (final quantity="HeatCapacity", final unit="J/K");

    type SpecificHeatCapacity = Real (final quantity="SpecificHeatCapacity",
          final unit="J/(kg.K)");

    type SpecificHeatCapacityAtConstantPressure = SpecificHeatCapacity;

    type SpecificHeatCapacityAtConstantVolume = SpecificHeatCapacity;

    type SpecificHeatCapacityAtSaturation = SpecificHeatCapacity;

    type RatioOfSpecificHeatCapacities = Real (final quantity=
            "RatioOfSpecificHeatCapacities", final unit="1");

    type IsentropicExponent = Real (final quantity="IsentropicExponent", final unit=
               "1");

    type Entropy = Real (final quantity="Entropy", final unit="J/K");

    type EntropyFlowRate = Real (final quantity="EntropyFlowRate", final unit="J/(K.s)");

    type SpecificEntropy = Real (final quantity="SpecificEntropy", final unit=
            "J/(kg.K)");

    type InternalEnergy = Heat;

    type Enthalpy = Heat;

    type HelmholtzFreeEnergy = Heat;

    type GibbsFreeEnergy = Heat;

    type SpecificEnergy = Real (final quantity="SpecificEnergy", final unit=
            "J/kg");

    type SpecificInternalEnergy = SpecificEnergy;

    type SpecificEnthalpy = SpecificEnergy;

    type SpecificHelmholtzFreeEnergy = SpecificEnergy;

    type SpecificGibbsFreeEnergy = SpecificEnergy;

    type MassieuFunction = Real (final quantity="MassieuFunction", final unit=
            "J/K");

    type PlanckFunction = Real (final quantity="PlanckFunction", final unit="J/K");

    type DerDensityByEnthalpy = Real (final unit="kg.s2/m5");

    type DerDensityByPressure = Real (final unit="s2/m2");

    type DerDensityByTemperature = Real (final unit="kg/(m3.K)");

    type DerEnthalpyByPressure = Real (final unit="J.m.s2/kg2");

    type DerEnergyByDensity = Real (final unit="J.m3/kg");

    type DerEnergyByPressure = Real (final unit="J.m.s2/kg");

    type ElectricCurrent = Real (final quantity="ElectricCurrent", final unit="A");

    type Current = ElectricCurrent;

    type CurrentSlope = Real(final quantity="CurrentSlope", final unit="A/s");

    type ElectricCharge = Real (final quantity="ElectricCharge", final unit="C");

    type Charge = ElectricCharge;

    type VolumeDensityOfCharge = Real (
        final quantity="VolumeDensityOfCharge",
        final unit="C/m3",
        min=0);

    type SurfaceDensityOfCharge = Real (
        final quantity="SurfaceDensityOfCharge",
        final unit="C/m2",
        min=0);

    type ElectricFieldStrength = Real (final quantity="ElectricFieldStrength",
          final unit="V/m");

    type ElectricPotential = Real (final quantity="ElectricPotential", final unit=
           "V");

    type Voltage = ElectricPotential;

    type PotentialDifference = ElectricPotential;

    type ElectromotiveForce = ElectricPotential;

    type VoltageSecond = Real (final quantity="VoltageSecond", final unit="V.s") 
    "Voltage second";

    type VoltageSlope = Real(final quantity="VoltageSlope", final unit="V/s");

    type ElectricFluxDensity = Real (final quantity="ElectricFluxDensity", final unit=
               "C/m2");

    type ElectricFlux = Real (final quantity="ElectricFlux", final unit="C");

    type Capacitance = Real (
        final quantity="Capacitance",
        final unit="F",
        min=0);

    type CapacitancePerArea =
                Real (final quantity="CapacitancePerArea", final unit="F/m2") 
    "Capacitance per area";

    type Permittivity = Real (
        final quantity="Permittivity",
        final unit="F/m",
        min=0);

    type PermittivityOfVacuum = Permittivity;

    type RelativePermittivity = Real (final quantity="RelativePermittivity",
          final unit="1");

    type ElectricSusceptibility = Real (final quantity="ElectricSusceptibility",
          final unit="1");

    type ElectricPolarization = Real (final quantity="ElectricPolarization",
          final unit="C/m2");

    type Electrization = Real (final quantity="Electrization", final unit="V/m");

    type ElectricDipoleMoment = Real (final quantity="ElectricDipoleMoment",
          final unit="C.m");

    type CurrentDensity = Real (final quantity="CurrentDensity", final unit=
            "A/m2");

    type LinearCurrentDensity = Real (final quantity="LinearCurrentDensity",
          final unit="A/m");

    type MagneticFieldStrength = Real (final quantity="MagneticFieldStrength",
          final unit="A/m");

    type MagneticPotential = Real (final quantity="MagneticPotential", final unit="A");

    type MagneticPotentialDifference = Real (final quantity=
            "MagneticPotential", final unit="A");

    type MagnetomotiveForce = Real (final quantity="MagnetomotiveForce", final unit=
               "A");

    type CurrentLinkage = Real (final quantity="CurrentLinkage", final unit="A");

    type MagneticFluxDensity = Real (final quantity="MagneticFluxDensity", final unit=
               "T");

    type MagneticFlux = Real (final quantity="MagneticFlux", final unit="Wb");

    type MagneticVectorPotential = Real (final quantity="MagneticVectorPotential",
            final unit="Wb/m");

    type Inductance = Real (
        final quantity="Inductance",
        final unit="H");

    type SelfInductance = Inductance(min=0);

    type MutualInductance = Inductance;

    type CouplingCoefficient = Real (final quantity="CouplingCoefficient", final unit=
               "1");

    type LeakageCoefficient = Real (final quantity="LeakageCoefficient", final unit=
               "1");

    type Permeability = Real (final quantity="Permeability", final unit="H/m");

    type PermeabilityOfVacuum = Permeability;

    type RelativePermeability = Real (final quantity="RelativePermeability",
          final unit="1");

    type MagneticSusceptibility = Real (final quantity="MagneticSusceptibility",
          final unit="1");

    type ElectromagneticMoment = Real (final quantity="ElectromagneticMoment",
          final unit="A.m2");

    type MagneticDipoleMoment = Real (final quantity="MagneticDipoleMoment",
          final unit="Wb.m");

    type Magnetization = Real (final quantity="Magnetization", final unit="A/m");

    type MagneticPolarization = Real (final quantity="MagneticPolarization",
          final unit="T");

    type ElectromagneticEnergyDensity = Real (final quantity="EnergyDensity",
          final unit="J/m3");

    type PoyntingVector = Real (final quantity="PoyntingVector", final unit=
            "W/m2");

    type Resistance = Real (
        final quantity="Resistance",
        final unit="Ohm");

    type Resistivity = Real (final quantity="Resistivity", final unit="Ohm.m");

    type Conductivity = Real (final quantity="Conductivity", final unit="S/m");

    type Reluctance = Real (final quantity="Reluctance", final unit="H-1");

    type Permeance = Real (final quantity="Permeance", final unit="H");

    type PhaseDifference = Real (
        final quantity="Angle",
        final unit="rad",
        displayUnit="deg");

    type Impedance = Resistance;

    type ModulusOfImpedance = Resistance;

    type Reactance = Resistance;

    type QualityFactor = Real (final quantity="QualityFactor", final unit="1");

    type LossAngle = Real (
        final quantity="Angle",
        final unit="rad",
        displayUnit="deg");

    type Conductance = Real (
        final quantity="Conductance",
        final unit="S");

    type Admittance = Conductance;

    type ModulusOfAdmittance = Conductance;

    type Susceptance = Conductance;

    type InstantaneousPower = Real (final quantity="Power", final unit="W");

    type ActivePower = Real (final quantity="Power", final unit="W");

    type ApparentPower = Real (final quantity="Power", final unit="VA");

    type ReactivePower = Real (final quantity="Power", final unit="var");

    type PowerFactor = Real (final quantity="PowerFactor", final unit="1");

    type Transconductance = Real (final quantity="Transconductance", final unit=
            "A/V2");

    type InversePotential = Real (final quantity="InversePotential", final unit=
            "1/V");

    type ElectricalForceConstant = Real (
         final quantity="ElectricalForceConstant",
         final unit = "N/A");

    type RadiantEnergy = Real (final quantity="Energy", final unit="J");

    type RadiantEnergyDensity = Real (final quantity="EnergyDensity", final unit=
            "J/m3");

    type SpectralRadiantEnergyDensity = Real (final quantity=
            "SpectralRadiantEnergyDensity", final unit="J/m4");

    type RadiantPower = Real (final quantity="Power", final unit="W");

    type RadiantEnergyFluenceRate = Real (final quantity=
            "RadiantEnergyFluenceRate", final unit="W/m2");

    type RadiantIntensity = Real (final quantity="RadiantIntensity", final unit=
            "W/sr");

    type Radiance = Real (final quantity="Radiance", final unit="W/(sr.m2)");

    type RadiantExtiance = Real (final quantity="RadiantExtiance", final unit=
            "W/m2");

    type Irradiance = Real (final quantity="Irradiance", final unit="W/m2");

    type Emissivity = Real (final quantity="Emissivity", final unit="1");

    type SpectralEmissivity = Real (final quantity="SpectralEmissivity", final unit=
               "1");

    type DirectionalSpectralEmissivity = Real (final quantity=
            "DirectionalSpectralEmissivity", final unit="1");

    type LuminousIntensity = Real (final quantity="LuminousIntensity", final unit=
           "cd");

    type LuminousFlux = Real (final quantity="LuminousFlux", final unit="lm");

    type QuantityOfLight = Real (final quantity="QuantityOfLight", final unit=
            "lm.s");

    type Luminance = Real (final quantity="Luminance", final unit="cd/m2");

    type LuminousExitance = Real (final quantity="LuminousExitance", final unit=
            "lm/m2");

    type Illuminance = Real (final quantity="Illuminance", final unit="lx");

    type LightExposure = Real (final quantity="LightExposure", final unit="lx.s");

    type LuminousEfficacy = Real (final quantity="LuminousEfficacy", final unit=
            "lm/W");

    type SpectralLuminousEfficacy = Real (final quantity=
            "SpectralLuminousEfficacy", final unit="lm/W");

    type LuminousEfficiency = Real (final quantity="LuminousEfficiency", final unit=
               "1");

    type SpectralLuminousEfficiency = Real (final quantity=
            "SpectralLuminousEfficiency", final unit="1");

    type CIESpectralTristimulusValues = Real (final quantity=
            "CIESpectralTristimulusValues", final unit="1");

    type ChromaticityCoordinates = Real (final quantity="CromaticityCoordinates",
            final unit="1");

    type SpectralAbsorptionFactor = Real (final quantity=
            "SpectralAbsorptionFactor", final unit="1");

    type SpectralReflectionFactor = Real (final quantity=
            "SpectralReflectionFactor", final unit="1");

    type SpectralTransmissionFactor = Real (final quantity=
            "SpectralTransmissionFactor", final unit="1");

    type SpectralRadianceFactor = Real (final quantity="SpectralRadianceFactor",
          final unit="1");

    type LinearAttenuationCoefficient = Real (final quantity=
            "AttenuationCoefficient", final unit="m-1");

    type LinearAbsorptionCoefficient = Real (final quantity=
            "LinearAbsorptionCoefficient", final unit="m-1");

    type MolarAbsorptionCoefficient = Real (final quantity=
            "MolarAbsorptionCoefficient", final unit="m2/mol");

    type RefractiveIndex = Real (final quantity="RefractiveIndex", final unit="1");

    type StaticPressure = Real (
        final quantity="Pressure",
        final unit="Pa",
        displayUnit="bar",
        min=0);

    type SoundPressure = StaticPressure;

    type SoundParticleDisplacement = Real (final quantity="Length", final unit=
            "m");

    type SoundParticleVelocity = Real (final quantity="Velocity", final unit=
            "m/s");

    type SoundParticleAcceleration = Real (final quantity="Acceleration", final unit=
               "m/s2");

    type VelocityOfSound = Real (final quantity="Velocity", final unit="m/s");

    type SoundEnergyDensity = Real (final quantity="EnergyDensity", final unit=
            "J/m3");

    type SoundPower = Real (final quantity="Power", final unit="W");

    type SoundIntensity = Real (final quantity="SoundIntensity", final unit=
            "W/m2");

    type AcousticImpedance = Real (final quantity="AcousticImpedance", final unit=
           "Pa.s/m3");

    type SpecificAcousticImpedance = Real (final quantity=
            "SpecificAcousticImpedance", final unit="Pa.s/m");

    type MechanicalImpedance = Real (final quantity="MechanicalImpedance", final unit=
               "N.s/m");

    type SoundPressureLevel = Real (final quantity="SoundPressureLevel", final unit=
               "dB");

    type SoundPowerLevel = Real (final quantity="SoundPowerLevel", final unit=
            "dB");

    type DissipationCoefficient = Real (final quantity="DissipationCoefficient",
          final unit="1");

    type ReflectionCoefficient = Real (final quantity="ReflectionCoefficient",
          final unit="1");

    type TransmissionCoefficient = Real (final quantity="TransmissionCoefficient",
            final unit="1");

    type AcousticAbsorptionCoefficient = Real (final quantity=
            "AcousticAbsorptionCoefficient", final unit="1");

    type SoundReductionIndex = Real (final quantity="SoundReductionIndex", final unit=
               "dB");

    type EquivalentAbsorptionArea = Real (final quantity="Area", final unit="m2");

    type ReverberationTime = Real (final quantity="Time", final unit="s");

    type LoundnessLevel = Real (final quantity="LoundnessLevel", final unit=
            "phon");

    type Loundness = Real (final quantity="Loundness", final unit="sone");

    type RelativeAtomicMass = Real (final quantity="RelativeAtomicMass", final unit=
               "1");

    type RelativeMolecularMass = Real (final quantity="RelativeMolecularMass",
          final unit="1");

    type NumberOfMolecules = Real (final quantity="NumberOfMolecules", final unit=
           "1");

    type AmountOfSubstance = Real (
        final quantity="AmountOfSubstance",
        final unit="mol",
        min=0);

    type MolarMass = Real (final quantity="MolarMass", final unit="kg/mol",min=0);

    type MolarVolume = Real (final quantity="MolarVolume", final unit="m3/mol", min=0);

    type MolarInternalEnergy = Real (final quantity="MolarInternalEnergy", final unit=
               "J/mol");

    type MolarHeatCapacity = Real (final quantity="MolarHeatCapacity", final unit=
           "J/(mol.K)");

    type MolarEntropy = Real (final quantity="MolarEntropy", final unit=
            "J/(mol.K)");

    type MolarFlowRate = Real (final quantity="MolarFlowRate", final unit=
            "mol/s");

    type NumberDensityOfMolecules = Real (final quantity=
            "NumberDensityOfMolecules", final unit="m-3");

    type MolecularConcentration = Real (final quantity="MolecularConcentration",
          final unit="m-3");

    type MassConcentration = Real (final quantity="MassConcentration", final unit=
           "kg/m3");

    type MassFraction = Real (final quantity="MassFraction", final unit="1");

    type Concentration = Real (final quantity="Concentration", final unit=
            "mol/m3");

    type VolumeFraction = Real (final quantity="VolumeFraction", final unit="1");

    type MoleFraction = Real (final quantity="MoleFraction", final unit="1");

    type ChemicalPotential = Real (final quantity="ChemicalPotential", final unit=
           "J/mol");

    type AbsoluteActivity = Real (final quantity="AbsoluteActivity", final unit=
            "1");

    type PartialPressure = Real (
        final quantity="Pressure",
        final unit="Pa",
        displayUnit="bar",
        min=0);

    type Fugacity = Real (final quantity="Fugacity", final unit="Pa");

    type StandardAbsoluteActivity = Real (final quantity=
            "StandardAbsoluteActivity", final unit="1");

    type ActivityCoefficient = Real (final quantity="ActivityCoefficient", final unit=
               "1");

    type ActivityOfSolute = Real (final quantity="ActivityOfSolute", final unit=
            "1");

    type ActivityCoefficientOfSolute = Real (final quantity=
            "ActivityCoefficientOfSolute", final unit="1");

    type StandardAbsoluteActivityOfSolute = Real (final quantity=
            "StandardAbsoluteActivityOfSolute", final unit="1");

    type ActivityOfSolvent = Real (final quantity="ActivityOfSolvent", final unit=
           "1");

    type OsmoticCoefficientOfSolvent = Real (final quantity=
            "OsmoticCoefficientOfSolvent", final unit="1");

    type StandardAbsoluteActivityOfSolvent = Real (final quantity=
            "StandardAbsoluteActivityOfSolvent", final unit="1");

    type OsmoticPressure = Real (
        final quantity="Pressure",
        final unit="Pa",
        displayUnit="bar",
        min=0);

    type StoichiometricNumber = Real (final quantity="StoichiometricNumber",
          final unit="1");

    type Affinity = Real (final quantity="Affinity", final unit="J/mol");

    type MassOfMolecule = Real (final quantity="Mass", final unit="kg");

    type ElectricDipoleMomentOfMolecule = Real (final quantity=
            "ElectricDipoleMomentOfMolecule", final unit="C.m");

    type ElectricPolarizabilityOfAMolecule = Real (final quantity=
            "ElectricPolarizabilityOfAMolecule", final unit="C.m2/V");

    type MicrocanonicalPartitionFunction = Real (final quantity=
            "MicrocanonicalPartitionFunction", final unit="1");

    type CanonicalPartitionFunction = Real (final quantity=
            "CanonicalPartitionFunction", final unit="1");

    type GrandCanonicalPartitionFunction = Real (final quantity=
            "GrandCanonicalPartitionFunction", final unit="1");

    type MolecularPartitionFunction = Real (final quantity=
            "MolecularPartitionFunction", final unit="1");

    type StatisticalWeight = Real (final quantity="StatisticalWeight", final unit=
           "1");

    type MeanFreePath = Length;

    type DiffusionCoefficient = Real (final quantity="DiffusionCoefficient",
          final unit="m2/s");

    type ThermalDiffusionRatio = Real (final quantity="ThermalDiffusionRatio",
          final unit="1");

    type ThermalDiffusionFactor = Real (final quantity="ThermalDiffusionFactor",
          final unit="1");

    type ThermalDiffusionCoefficient = Real (final quantity=
            "ThermalDiffusionCoefficient", final unit="m2/s");

    type ElementaryCharge = Real (final quantity="ElementaryCharge", final unit=
            "C");

    type ChargeNumberOfIon = Real (final quantity="ChargeNumberOfIon", final unit=
           "1");

    type FaradayConstant = Real (final quantity="FaradayConstant", final unit=
            "C/mol");

    type IonicStrength = Real (final quantity="IonicStrength", final unit=
            "mol/kg");

    type DegreeOfDissociation = Real (final quantity="DegreeOfDissociation",
          final unit="1");

    type ElectrolyticConductivity = Real (final quantity=
            "ElectrolyticConductivity", final unit="S/m");

    type MolarConductivity = Real (final quantity="MolarConductivity", final unit=
           "S.m2/mol");

    type TransportNumberOfIonic = Real (final quantity="TransportNumberOfIonic",
          final unit="1");

    type ProtonNumber = Real (final quantity="ProtonNumber", final unit="1");

    type NeutronNumber = Real (final quantity="NeutronNumber", final unit="1");

    type NucleonNumber = Real (final quantity="NucleonNumber", final unit="1");

    type AtomicMassConstant = Real (final quantity="Mass", final unit="kg");

    type MassOfElectron = Real (final quantity="Mass", final unit="kg");

    type MassOfProton = Real (final quantity="Mass", final unit="kg");

    type MassOfNeutron = Real (final quantity="Mass", final unit="kg");

    type HartreeEnergy = Real (final quantity="Energy", final unit="J");

    type MagneticMomentOfParticle = Real (final quantity=
            "MagneticMomentOfParticle", final unit="A.m2");

    type BohrMagneton = MagneticMomentOfParticle;

    type NuclearMagneton = MagneticMomentOfParticle;

    type GyromagneticCoefficient = Real (final quantity="GyromagneticCoefficient",
            final unit="A.m2/(J.s)");

    type GFactorOfAtom = Real (final quantity="GFactorOfAtom", final unit="1");

    type GFactorOfNucleus = Real (final quantity="GFactorOfNucleus", final unit=
            "1");

    type LarmorAngularFrequency = Real (final quantity="AngularFrequency", final unit=
               "s-1");

    type NuclearPrecessionAngularFrequency = Real (final quantity=
            "AngularFrequency", final unit="s-1");

    type CyclotronAngularFrequency = Real (final quantity="AngularFrequency",
          final unit="s-1");

    type NuclearQuadrupoleMoment = Real (final quantity="NuclearQuadrupoleMoment",
            final unit="m2");

    type NuclearRadius = Real (final quantity="Length", final unit="m");

    type ElectronRadius = Real (final quantity="Length", final unit="m");

    type ComptonWavelength = Real (final quantity="Length", final unit="m");

    type MassExcess = Real (final quantity="Mass", final unit="kg");

    type MassDefect = Real (final quantity="Mass", final unit="kg");

    type RelativeMassExcess = Real (final quantity="RelativeMassExcess", final unit=
               "1");

    type RelativeMassDefect = Real (final quantity="RelativeMassDefect", final unit=
               "1");

    type PackingFraction = Real (final quantity="PackingFraction", final unit="1");

    type BindingFraction = Real (final quantity="BindingFraction", final unit="1");

    type MeanLife = Real (final quantity="Time", final unit="s");

    type LevelWidth = Real (final quantity="LevelWidth", final unit="J");

    type Activity = Real (final quantity="Activity", final unit="Bq");

    type SpecificActivity = Real (final quantity="SpecificActivity", final unit=
            "Bq/kg");

    type DecayConstant = Real (final quantity="DecayConstant", final unit="s-1");

    type HalfLife = Real (final quantity="Time", final unit="s");

    type AlphaDisintegrationEnergy = Real (final quantity="Energy", final unit=
            "J");

    type MaximumBetaParticleEnergy = Real (final quantity="Energy", final unit=
            "J");

    type BetaDisintegrationEnergy = Real (final quantity="Energy", final unit="J");

    type ReactionEnergy = Real (final quantity="Energy", final unit="J");

    type ResonanceEnergy = Real (final quantity="Energy", final unit="J");

    type CrossSection = Real (final quantity="Area", final unit="m2");

    type TotalCrossSection = Real (final quantity="Area", final unit="m2");

    type AngularCrossSection = Real (final quantity="AngularCrossSection", final unit=
               "m2/sr");

    type SpectralCrossSection = Real (final quantity="SpectralCrossSection",
          final unit="m2/J");

    type SpectralAngularCrossSection = Real (final quantity=
            "SpectralAngularCrossSection", final unit="m2/(sr.J)");

    type MacroscopicCrossSection = Real (final quantity="MacroscopicCrossSection",
            final unit="m-1");

    type TotalMacroscopicCrossSection = Real (final quantity=
            "TotalMacroscopicCrossSection", final unit="m-1");

    type ParticleFluence = Real (final quantity="ParticleFluence", final unit=
            "m-2");

    type ParticleFluenceRate = Real (final quantity="ParticleFluenceRate", final unit=
               "s-1.m2");

    type EnergyFluence = Real (final quantity="EnergyFluence", final unit="J/m2");

    type EnergyFluenceRate = Real (final quantity="EnergyFluenceRate", final unit=
           "W/m2");

    type CurrentDensityOfParticles = Real (final quantity=
            "CurrentDensityOfParticles", final unit="m-2.s-1");

    type MassAttenuationCoefficient = Real (final quantity=
            "MassAttenuationCoefficient", final unit="m2/kg");

    type MolarAttenuationCoefficient = Real (final quantity=
            "MolarAttenuationCoefficient", final unit="m2/mol");

    type AtomicAttenuationCoefficient = Real (final quantity=
            "AtomicAttenuationCoefficient", final unit="m2");

    type HalfThickness = Real (final quantity="Length", final unit="m");

    type TotalLinearStoppingPower = Real (final quantity=
            "TotalLinearStoppingPower", final unit="J/m");

    type TotalAtomicStoppingPower = Real (final quantity=
            "TotalAtomicStoppingPower", final unit="J.m2");

    type TotalMassStoppingPower = Real (final quantity="TotalMassStoppingPower",
          final unit="J.m2/kg");

    type MeanLinearRange = Real (final quantity="Length", final unit="m");

    type MeanMassRange = Real (final quantity="MeanMassRange", final unit="kg/m2");

    type LinearIonization = Real (final quantity="LinearIonization", final unit=
            "m-1");

    type TotalIonization = Real (final quantity="TotalIonization", final unit="1");

    type Mobility = Real (final quantity="Mobility", final unit="m2/(V.s)");

    type IonNumberDensity = Real (final quantity="IonNumberDensity", final unit=
            "m-3");

    type RecombinationCoefficient = Real (final quantity=
            "RecombinationCoefficient", final unit="m3/s");

    type NeutronNumberDensity = Real (final quantity="NeutronNumberDensity",
          final unit="m-3");

    type NeutronSpeed = Real (final quantity="Velocity", final unit="m/s");

    type NeutronFluenceRate = Real (final quantity="NeutronFluenceRate", final unit=
               "s-1.m-2");

    type TotalNeutronSourceDensity = Real (final quantity=
            "TotalNeutronSourceDesity", final unit="s-1.m-3");

    type SlowingDownDensity = Real (final quantity="SlowingDownDensity", final unit=
               "s-1.m-3");

    type ResonanceEscapeProbability = Real (final quantity=
            "ResonanceEscapeProbability", final unit="1");

    type Lethargy = Real (final quantity="Lethargy", final unit="1");

    type SlowingDownArea = Real (final quantity="Area", final unit="m2");

    type DiffusionArea = Real (final quantity="Area", final unit="m2");

    type MigrationArea = Real (final quantity="Area", final unit="m2");

    type SlowingDownLength = Real (final quantity="SLength", final unit="m");

    type DiffusionLength = Length;

    type MigrationLength = Length;

    type NeutronYieldPerFission = Real (final quantity="NeutronYieldPerFission",
          final unit="1");

    type NeutronYieldPerAbsorption = Real (final quantity=
            "NeutronYieldPerAbsorption", final unit="1");

    type FastFissionFactor = Real (final quantity="FastFissionFactor", final unit=
           "1");

    type ThermalUtilizationFactor = Real (final quantity=
            "ThermalUtilizationFactor", final unit="1");

    type NonLeakageProbability = Real (final quantity="NonLeakageProbability",
          final unit="1");

    type Reactivity = Real (final quantity="Reactivity", final unit="1");

    type ReactorTimeConstant = Real (final quantity="Time", final unit="s");

    type EnergyImparted = Real (final quantity="Energy", final unit="J");

    type MeanEnergyImparted = Real (final quantity="Energy", final unit="J");

    type SpecificEnergyImparted = Real (final quantity="SpecificEnergy", final unit=
               "Gy");

    type AbsorbedDose = Real (final quantity="AbsorbedDose", final unit="Gy");

    type DoseEquivalent = Real (final quantity="DoseEquivalent", final unit="Sv");

    type AbsorbedDoseRate = Real (final quantity="AbsorbedDoseRate", final unit=
            "Gy/s");

    type LinearEnergyTransfer = Real (final quantity="LinearEnergyTransfer",
          final unit="J/m");

    type Kerma = Real (final quantity="Kerma", final unit="Gy");

    type KermaRate = Real (final quantity="KermaRate", final unit="Gy/s");

    type MassEnergyTransferCoefficient = Real (final quantity=
            "MassEnergyTransferCoefficient", final unit="m2/kg");

    type Exposure = Real (final quantity="Exposure", final unit="C/kg");

    type ExposureRate = Real (final quantity="ExposureRate", final unit=
            "C/(kg.s)");

    type ReynoldsNumber = Real (final quantity="ReynoldsNumber", final unit="1");

    type EulerNumber = Real (final quantity="EulerNumber", final unit="1");

    type FroudeNumber = Real (final quantity="FroudeNumber", final unit="1");

    type GrashofNumber = Real (final quantity="GrashofNumber", final unit="1");

    type WeberNumber = Real (final quantity="WeberNumber", final unit="1");

    type MachNumber = Real (final quantity="MachNumber", final unit="1");

    type KnudsenNumber = Real (final quantity="KnudsenNumber", final unit="1");

    type StrouhalNumber = Real (final quantity="StrouhalNumber", final unit="1");

    type FourierNumber = Real (final quantity="FourierNumber", final unit="1");

    type PecletNumber = Real (final quantity="PecletNumber", final unit="1");

    type RayleighNumber = Real (final quantity="RayleighNumber", final unit="1");

    type NusseltNumber = Real (final quantity="NusseltNumber", final unit="1");

    type BiotNumber = NusseltNumber;

    type StantonNumber = Real (final quantity="StantonNumber", final unit="1");

    type FourierNumberOfMassTransfer = Real (final quantity=
            "FourierNumberOfMassTransfer", final unit="1");

    type PecletNumberOfMassTransfer = Real (final quantity=
            "PecletNumberOfMassTransfer", final unit="1");

    type GrashofNumberOfMassTransfer = Real (final quantity=
            "GrashofNumberOfMassTransfer", final unit="1");

    type NusseltNumberOfMassTransfer = Real (final quantity=
            "NusseltNumberOfMassTransfer", final unit="1");

    type StantonNumberOfMassTransfer = Real (final quantity=
            "StantonNumberOfMassTransfer", final unit="1");

    type PrandtlNumber = Real (final quantity="PrandtlNumber", final unit="1");

    type SchmidtNumber = Real (final quantity="SchmidtNumber", final unit="1");

    type LewisNumber = Real (final quantity="LewisNumber", final unit="1");

    type MagneticReynoldsNumber = Real (final quantity="MagneticReynoldsNumber",
          final unit="1");

    type AlfvenNumber = Real (final quantity="AlfvenNumber", final unit="1");

    type HartmannNumber = Real (final quantity="HartmannNumber", final unit="1");

    type CowlingNumber = Real (final quantity="CowlingNumber", final unit="1");

    type BraggAngle = Angle;

    type OrderOfReflexion = Real (final quantity="OrderOfReflexion", final unit=
            "1");

    type ShortRangeOrderParameter = Real (final quantity="RangeOrderParameter",
          final unit="1");

    type LongRangeOrderParameter = Real (final quantity="RangeOrderParameter",
          final unit="1");

    type DebyeWallerFactor = Real (final quantity="DebyeWallerFactor", final unit=
           "1");

    type CircularWavenumber = Real (final quantity="CircularWavenumber", final unit=
               "m-1");

    type FermiCircularWavenumber = Real (final quantity="FermiCircularWavenumber",
            final unit="m-1");

    type DebyeCircularWavenumber = Real (final quantity="DebyeCircularWavenumber",
            final unit="m-1");

    type DebyeCircularFrequency = Real (final quantity="AngularFrequency", final unit=
               "s-1");

    type DebyeTemperature = ThermodynamicTemperature;

    type SpectralConcentration = Real (final quantity="SpectralConcentration",
          final unit="s/m3");

    type GrueneisenParameter = Real (final quantity="GrueneisenParameter", final unit=
               "1");

    type MadelungConstant = Real (final quantity="MadelungConstant", final unit=
            "1");

    type DensityOfStates = Real (final quantity="DensityOfStates", final unit=
            "J-1/m-3");

    type ResidualResistivity = Real (final quantity="ResidualResistivity", final unit=
               "Ohm.m");

    type LorenzCoefficient = Real (final quantity="LorenzCoefficient", final unit=
           "V2/K2");

    type HallCoefficient = Real (final quantity="HallCoefficient", final unit=
            "m3/C");

    type ThermoelectromotiveForce = Real (final quantity=
            "ThermoelectromotiveForce", final unit="V");

    type SeebeckCoefficient = Real (final quantity="SeebeckCoefficient", final unit=
               "V/K");

    type PeltierCoefficient = Real (final quantity="PeltierCoefficient", final unit=
               "V");

    type ThomsonCoefficient = Real (final quantity="ThomsonCoefficient", final unit=
               "V/K");

    type RichardsonConstant = Real (final quantity="RichardsonConstant", final unit=
               "A/(m2.K2)");

    type FermiEnergy = Real (final quantity="Energy", final unit="eV");

    type GapEnergy = Real (final quantity="Energy", final unit="eV");

    type DonorIonizationEnergy = Real (final quantity="Energy", final unit="eV");

    type AcceptorIonizationEnergy = Real (final quantity="Energy", final unit=
            "eV");

    type ActivationEnergy = Real (final quantity="Energy", final unit="eV");

    type FermiTemperature = ThermodynamicTemperature;

    type ElectronNumberDensity = Real (final quantity="ElectronNumberDensity",
          final unit="m-3");

    type HoleNumberDensity = Real (final quantity="HoleNumberDensity", final unit=
           "m-3");

    type IntrinsicNumberDensity = Real (final quantity="IntrinsicNumberDensity",
          final unit="m-3");

    type DonorNumberDensity = Real (final quantity="DonorNumberDensity", final unit=
               "m-3");

    type AcceptorNumberDensity = Real (final quantity="AcceptorNumberDensity",
          final unit="m-3");

    type EffectiveMass = Mass;

    type MobilityRatio = Real (final quantity="MobilityRatio", final unit="1");

    type RelaxationTime = Time;

    type CarrierLifeTime = Time;

    type ExchangeIntegral = Real (final quantity="Energy", final unit="eV");

    type CurieTemperature = ThermodynamicTemperature;

    type NeelTemperature = ThermodynamicTemperature;

    type LondonPenetrationDepth = Length;

    type CoherenceLength = Length;

    type LandauGinzburgParameter = Real (final quantity="LandauGinzburgParameter",
            final unit="1");

    type FluxiodQuantum = Real (final quantity="FluxiodQuantum", final unit="Wb");

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexCurrent
=========================================================================

**Complex electrical current**

Modelica definition
-------------------

    record ComplexCurrent =
      Complex(redeclare Modelica.SIunits.Current re,
               redeclare Modelica.SIunits.Current im) "Complex electrical current";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexCurrentSlope
==============================================================================

**Complex current slope**

Modelica definition
-------------------

    record ComplexCurrentSlope =
      Complex(redeclare Modelica.SIunits.CurrentSlope re,
               redeclare Modelica.SIunits.CurrentSlope im) "Complex current slope";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexCurrentDensity
================================================================================

**Complex electrical current density**

Modelica definition
-------------------

    record ComplexCurrentDensity =
      Complex(redeclare Modelica.SIunits.CurrentDensity re,
               redeclare Modelica.SIunits.CurrentDensity im) 
      "Complex electrical current density";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexElectricPotential
===================================================================================

**Complex electric potential**

Modelica definition
-------------------

    record ComplexElectricPotential =
      Complex(redeclare Modelica.SIunits.ElectricPotential re,
               redeclare Modelica.SIunits.ElectricPotential im) 
      "Complex electric potential";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexPotentialDifference
=====================================================================================

**Complex electric potential difference**

Modelica definition
-------------------

    record ComplexPotentialDifference =
      Complex(redeclare Modelica.SIunits.PotentialDifference re,
               redeclare Modelica.SIunits.PotentialDifference im) 
      "Complex electric potential difference";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexVoltage
=========================================================================

**Complex electrical voltage**

Modelica definition
-------------------

    record ComplexVoltage =
      Complex(redeclare Modelica.SIunits.Voltage re,
               redeclare Modelica.SIunits.Voltage im) "Complex electrical voltage";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexVoltageSlope
==============================================================================

**Complex voltage slope**

Modelica definition
-------------------

    record ComplexVoltageSlope =
      Complex(redeclare Modelica.SIunits.VoltageSlope re,
               redeclare Modelica.SIunits.VoltageSlope im) "Complex voltage slope";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexElectricFieldStrength
=======================================================================================

**Complex electric field strength**

Modelica definition
-------------------

    record ComplexElectricFieldStrength =
      Complex(redeclare Modelica.SIunits.ElectricFieldStrength re,
               redeclare Modelica.SIunits.ElectricFieldStrength im) 
      "Complex electric field strength";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexElectricFluxDensity
=====================================================================================

**Complex electric flux density**

Modelica definition
-------------------

    record ComplexElectricFluxDensity =
      Complex(redeclare Modelica.SIunits.ElectricFluxDensity re,
               redeclare Modelica.SIunits.ElectricFluxDensity im) 
      "Complex electric flux density";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexElectricFlux
==============================================================================

**Complex electric flux**

Modelica definition
-------------------

    record ComplexElectricFlux =
      Complex(redeclare Modelica.SIunits.ElectricFlux re,
               redeclare Modelica.SIunits.ElectricFlux im) "Complex electric flux";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexMagneticFieldStrength
=======================================================================================

**Complex magnetic field strength**

Modelica definition
-------------------

    record ComplexMagneticFieldStrength =
      Complex(redeclare Modelica.SIunits.MagneticFieldStrength re,
               redeclare Modelica.SIunits.MagneticFieldStrength im) 
      "Complex magnetic field strength";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexMagneticPotential
===================================================================================

**Complex magnetic potential**

Modelica definition
-------------------

    record ComplexMagneticPotential =
      Complex(redeclare Modelica.SIunits.MagneticPotential re,
               redeclare Modelica.SIunits.MagneticPotential im) 
      "Complex magnetic potential";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexMagneticPotentialDifference
=============================================================================================

**Complex magnetic potential difference**

Modelica definition
-------------------

    record ComplexMagneticPotentialDifference =
      Complex(redeclare Modelica.SIunits.MagneticPotentialDifference re,
               redeclare Modelica.SIunits.MagneticPotentialDifference im) 
      "Complex magnetic potential difference";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexMagnetomotiveForce
====================================================================================

**Complex magneto motive force**

Modelica definition
-------------------

    record ComplexMagnetomotiveForce =
      Complex(redeclare Modelica.SIunits.MagnetomotiveForce re,
               redeclare Modelica.SIunits.MagnetomotiveForce im) 
      "Complex magneto motive force";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexMagneticFluxDensity
=====================================================================================

**Complex magnetic flux density**

Modelica definition
-------------------

    record ComplexMagneticFluxDensity =
      Complex(redeclare Modelica.SIunits.MagneticFluxDensity re,
               redeclare Modelica.SIunits.MagneticFluxDensity im) 
      "Complex magnetic flux density";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexMagneticFlux
==============================================================================

**Complex magnetic flux**

Modelica definition
-------------------

    record ComplexMagneticFlux =
      Complex(redeclare Modelica.SIunits.MagneticFlux re,
               redeclare Modelica.SIunits.MagneticFlux im) "Complex magnetic flux";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexReluctance
============================================================================

**Complex reluctance**

Modelica definition
-------------------

    record ComplexReluctance =
      Complex(redeclare Modelica.SIunits.Reluctance re,
               redeclare Modelica.SIunits.Reluctance im) "Complex reluctance";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexImpedance
===========================================================================

**Complex electrical impedance**

Modelica definition
-------------------

    record ComplexImpedance =
      Complex(redeclare Resistance re,
               redeclare Reactance im) "Complex electrical impedance";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexAdmittance
============================================================================

**Complex electrical impedance**

Modelica definition
-------------------

    record ComplexAdmittance =
      Complex(redeclare Conductance re,
               redeclare Susceptance im) "Complex electrical impedance";

* * * * *

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).ComplexPower
=======================================================================

**Complex electrical power**

Modelica definition
-------------------

    record ComplexPower =
      Complex(redeclare ActivePower re,
               redeclare ReactivePower im) "Complex electrical power";

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:50 2010.
