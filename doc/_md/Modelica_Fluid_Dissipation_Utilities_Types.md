% Modelica.Fluid.Dissipation.Utilities.Types:
  [Modelica.Fluid.Dissipation.Utilities](Modelica_Fluid_Dissipation_Utilities.html#Modelica.Fluid.Dissipation.Utilities).Types
% 
% 

**Package for types**

Information
===========

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                                                Desc
                                                                      ript
                                                                      ion
  ------------------------------------------------------------------- ----
  ![image4](Modelica.Fluid.Dissipation.Utilities.Types.DarcyFrictionF 
  actorS.png)                                                         
  [DarcyFrictionFactor](Modelica_Fluid_Dissipation_Utilities_Types.ht 
  ml#Modelica.Fluid.Dissipation.Utilities.Types.DarcyFrictionFactor)  

  ![image5](Modelica.Fluid.Dissipation.Utilities.Types.DarcyFrictionF 
  actorS.png)                                                         
  [FrictionalResistanceCoefficient](Modelica_Fluid_Dissipation_Utilit 
  ies_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.Frictiona 
  lResistanceCoefficient)                                             

  ![image6](Modelica.Fluid.Dissipation.Utilities.Types.DarcyFrictionF 
  actorS.png)                                                         
  [LocalResistanceCoefficient](Modelica_Fluid_Dissipation_Utilities_T 
  ypes.html#Modelica.Fluid.Dissipation.Utilities.Types.LocalResistanc 
  eCoefficient)                                                       

  ![image7](Modelica.Fluid.Dissipation.Utilities.Types.DarcyFrictionF 
  actorS.png)                                                         
  [PressureLossCoefficient](Modelica_Fluid_Dissipation_Utilities_Type 
  s.html#Modelica.Fluid.Dissipation.Utilities.Types.PressureLossCoeff 
  icient)                                                             

  [TwoPhaseFrictionalPressureLoss](Modelica_Fluid_Dissipation_Utiliti 
  es_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseFr 
  ictionalPressureLoss)                                               

  [Roughness](Modelica_Fluid_Dissipation_Utilities_Types.html#Modelic 
  a.Fluid.Dissipation.Utilities.Types.Roughness)                      

  [TwoPhaseHeatTransferTarget](Modelica_Fluid_Dissipation_Utilities_T 
  ypes.html#Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTr 
  ansferTarget)                                                       

  [PressureLossTarget](Modelica_Fluid_Dissipation_Utilities_Types.htm 
  l#Modelica.Fluid.Dissipation.Utilities.Types.PressureLossTarget)    

  [GeometryOfInternalFlow](Modelica_Fluid_Dissipation_Utilities_Types 
  .html#Modelica.Fluid.Dissipation.Utilities.Types.GeometryOfInternal 
  Flow)                                                               

  [kc\_evenGap](Modelica_Fluid_Dissipation_Utilities_Types.html#Model 
  ica.Fluid.Dissipation.Utilities.Types.kc_evenGap)                   

  [kc\_general](Modelica_Fluid_Dissipation_Utilities_Types.html#Model 
  ica.Fluid.Dissipation.Utilities.Types.kc_general)                   

  [HeatTransferBoundary](Modelica_Fluid_Dissipation_Utilities_Types.h 
  tml#Modelica.Fluid.Dissipation.Utilities.Types.HeatTransferBoundary 
  )                                                                   

  [MassOrVolumeFlowRate](Modelica_Fluid_Dissipation_Utilities_Types.h 
  tml#Modelica.Fluid.Dissipation.Utilities.Types.MassOrVolumeFlowRate 
  )                                                                   

  [VoidFractionApproach](Modelica_Fluid_Dissipation_Utilities_Types.h 
  tml#Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach 
  )                                                                   

  [OrificeGeometry](Modelica_Fluid_Dissipation_Utilities_Types.html#M 
  odelica.Fluid.Dissipation.Utilities.Types.OrificeGeometry)          

  [ValveGeometry](Modelica_Fluid_Dissipation_Utilities_Types.html#Mod 
  elica.Fluid.Dissipation.Utilities.Types.ValveGeometry)              

  [ValveCoefficient](Modelica_Fluid_Dissipation_Utilities_Types.html# 
  Modelica.Fluid.Dissipation.Utilities.Types.ValveCoefficient)        

  [FluidFlowRegime](Modelica_Fluid_Dissipation_Utilities_Types.html#M 
  odelica.Fluid.Dissipation.Utilities.Types.FluidFlowRegime)          

  [HTXGeometry\_flatTubes](Modelica_Fluid_Dissipation_Utilities_Types 
  .html#Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_flatTu 
  bes)                                                                

  [HTXGeometry\_roundTubes](Modelica_Fluid_Dissipation_Utilities_Type 
  s.html#Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_round 
  Tubes)                                                              
  ------------------------------------------------------------------------

Types and constants
===================

    type DarcyFrictionFactor = Modelica.Icons.TypeReal (
        final quantity=
            "Darcy friction factor | lambda_fri = zeta_fri / (length/diameter)",
        final unit="1",
        min=0,
        max=1111);

    type FrictionalResistanceCoefficient = Modelica.Icons.TypeReal (
        final quantity="Frictional resistance coefficient | zeta_fri",
        final unit="1",
        min=0,
        max=1111);

    type LocalResistanceCoefficient = Modelica.Icons.TypeReal (
        final quantity="Local resistance coefficient | zeta_loc",
        final unit="1",
        min=0,
        max=1111);

    type PressureLossCoefficient = Modelica.Icons.TypeReal (
        final quantity="Pressure loss coefficient | zeta_tot = zeta_loc + zeta_fri",
        final unit="1",
        min=0,
        max=1111);

    type TwoPhaseFrictionalPressureLoss = enumeration(
      Friedel "Friedel correlation for frictional pressure loss",
      Chisholm "Chisholm correlation for frictional pressure loss");

    type Roughness = enumeration(
      Neglected "Neglect surface roughness",
      Considered "Consider surface roughness");

    type TwoPhaseHeatTransferTarget = enumeration(
      BoilHor "Boiling horizontal",
      BoilVer "Boiling vertical",
      CondHor "Condensation horizontal");

    type PressureLossTarget = enumeration(
      PressureLoss "Calculate pressure loss from mass flow rate",
      MassFlowRate "Calculate mass flow rate from pressure loss");

    type GeometryOfInternalFlow = enumeration(
      Annular "Annular geometry",
      Circular "Circular geometry",
      Elliptical "Elliptical geometry",
      Rectangular "Rectangular geometry",
      Isosceles "Isosceles triangular geometry");

    type kc_evenGap = enumeration(
      DevOne 
        "Hydrodynamically DEVELOPED laminar flow regime AND heat transfer at ONE side",

      DevBoth 
        "Hydrodynamically DEVELOPED laminar flow regime AND heat transfer at BOTH sides",

      UndevOne 
        "Hydrodynamic and thermal START of laminar flow regime AND heat transfer at ONE side",

      UndevBoth 
        "Hydrodynamic and thermal START of laminar flow regime AND heat transfer at BOTH side");

    type kc_general = enumeration(
      Rough "Roughest approximation w.r.t. Dittus/Boelter (1930)",
      Middle "Middle approximation w.r.t. Sieder/Tate (1936)",
      Finest "Finest approximation w.r.t. Gnielinski (1976)");

    type HeatTransferBoundary = enumeration(
      UWTuDFF "Uniform wall temperature in developed fluid flow (UWT+DFF)",
      UHFuDFF "Uniform heat flux in developed fluid flow (UHF+DFF)",
      UWTuUFF "Uniform wall temperature in undeveloped fluid flow (UWT+UFF)",
      UHFuUFF "Uniform heat flux in undeveloped fluid flow (UHF+UFF)");

    type MassOrVolumeFlowRate = enumeration(
      MassFlowRate "Mass flow rate",
      VolumeFlowRate "Volume flow rate");

    type VoidFractionApproach = enumeration(
      Homogeneous "Homogeneous approach",
      Momentum "Analytical momentum flux approach (heterogeneous)",
      Energy " Kinetic energy flow approach w.r.t. Zivi (heterogeneous)",
      Chisholm "Empirical momentum flux approach w.r.t. Chisholm (heterogeneous)");

    type OrificeGeometry = enumeration(
      SharpEdged "Sharp edged shape of orifice inlet",
      ThickEdged "Thick edged shape of orifice inlet",
      TiltedEdged "Tilted edged shape of orifice inlet",
      RoundedEdged "Rounded edged shape of orifice inlet");

    type ValveGeometry = enumeration(
      Ball "Ball valve",
      Diaphragm "Diaphragm valve",
      Butterfly "Butterfly valve",
      Gate "Gate valve",
      Sluice "Sluice valve");

    type ValveCoefficient = enumeration(
      AV "Av (metric) flow coefficient",
      KV "Kv (metric) flow coefficient",
      CV "Cv (US) flow coefficient",
      OP "Av defined by operating point");

    type FluidFlowRegime = enumeration(
      Laminar "Laminar fluid flow regime",
      Overall "Overall fluid flow regime",
      Turbulent "Turbulent fluid flow regime");

    type HTXGeometry_flatTubes = enumeration(
      LouverFin "Louver fin",
      RectangularFin "Rectangular offset strip fin");

    type HTXGeometry_roundTubes = enumeration(
      PlainFin "Plain fin",
      LouverFin "Louver fin",
      SlitFin "Slit fin",
      WavyFin "Wavy fin (Herringbone wavy fin)");

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:25 2010.
