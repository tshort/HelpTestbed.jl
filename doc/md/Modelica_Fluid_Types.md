% Modelica.Fluid.Types:
  [Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid).Types
% 
% 

**Common types for fluid models**

Information
===========

::

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                            Description
  ----------------------------------------------- ------------------------
  ![image3](Modelica.Fluid.Types.HydraulicConduct Real type for hydraulic
  anceS.png)                                      conductance
  [HydraulicConductance](Modelica_Fluid_Types.htm 
  l#Modelica.Fluid.Types.HydraulicConductance)    

  ![image4](Modelica.Fluid.Types.HydraulicConduct Real type for hydraulic
  anceS.png)                                      resistance
  [HydraulicResistance](Modelica_Fluid_Types.html 
  #Modelica.Fluid.Types.HydraulicResistance)      

  ![image5](Modelica.Fluid.Types.HydraulicConduct Real type for roughness
  anceS.png)                                      of a pipe
  [Roughness](Modelica_Fluid_Types.html#Modelica. 
  Fluid.Types.Roughness)                          

  [Dynamics](Modelica_Fluid_Types.html#Modelica.F Enumeration to define
  luid.Types.Dynamics)                            definition of balance
                                                  equations

  [CvTypes](Modelica_Fluid_Types.html#Modelica.Fl Enumeration to define
  uid.Types.CvTypes)                              the choice of valve flow
                                                  coefficient

  [PortFlowDirection](Modelica_Fluid_Types.html#M Enumeration to define
  odelica.Fluid.Types.PortFlowDirection)          whether flow reversal is
                                                  allowed

  [ModelStructure](Modelica_Fluid_Types.html#Mode Enumeration with choices
  lica.Fluid.Types.ModelStructure)                for model structure in
                                                  distributed pipe model
  ------------------------------------------------------------------------

Types and constants
===================

    type HydraulicConductance = Modelica.Icons.TypeReal (
        final quantity="HydraulicConductance",
        final unit="kg/(s.Pa)") "Real type for hydraulic conductance";

    type HydraulicResistance = Modelica.Icons.TypeReal (
        final quantity="HydraulicResistance",
        final unit="Pa.s/kg") "Real type for hydraulic resistance";

    type Roughness = Modelica.Icons.TypeReal (final quantity="Length", final unit="m", displayUnit="mm") 
    "Real type for roughness of a pipe";

    type Dynamics = enumeration(
      DynamicFreeInitial 
        "DynamicFreeInitial -- Dynamic balance, Initial guess value",
      FixedInitial "FixedInitial -- Dynamic balance, Initial value fixed",
      SteadyStateInitial 
        "SteadyStateInitial -- Dynamic balance, Steady state initial with guess value",

      SteadyState "SteadyState -- Steady state balance, Initial guess value") 
    "Enumeration to define definition of balance equations";

    type CvTypes = enumeration(
      Av "Av (metric) flow coefficient",
      Kv "Kv (metric) flow coefficient",
      Cv "Cv (US) flow coefficient",
      OpPoint "Av defined by operating point") 
    "Enumeration to define the choice of valve flow coefficient";

    type PortFlowDirection = enumeration(
      Entering "Fluid flow is only entering",
      Leaving "Fluid flow is only leaving",
      Bidirectional "No restrictions on fluid flow (flow reversal possible)") 
    "Enumeration to define whether flow reversal is allowed";

    type ModelStructure = enumeration(
      av_vb "av_vb: port_a - volume - flow model - volume - port_b",
      a_v_b "a_v_b: port_a - flow model - volume - flow model - port_b",
      av_b "av_b: port_a - volume - flow model - port_b",
      a_vb "a_vb: port_a - flow model - volume - port_b") 
    "Enumeration with choices for model structure in distributed pipe model";

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:19 2010.
