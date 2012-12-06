% Modelica.Fluid.Fittings.GenericResistances
% 
% 

[Modelica.Fluid.Fittings](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings).GenericResistances
==================================================================================================

**Flow models for generic resistances**

Information
-----------

::

The geometry parameters of energy devices necessary for the pressure
loss calculations are often not exactly known. Therefore the modelling
of the detailed pressure loss calculation has to be simplified. In this
package components are present that provide different forms of such
approximations.

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                Description
  --------------------------------------------------- --------------------
  ![image1](Modelica.Fluid.Fittings.GenericResistance Flow model for
  s.VolumeFlowRateS.png)                              generic resistance
  [VolumeFlowRate](Modelica_Fluid_Fittings_GenericRes parameterized with
  istances.html#Modelica.Fluid.Fittings.GenericResist the volume flow rate
  ances.VolumeFlowRate)                               
  ------------------------------------------------------------------------

* * * * *

![image2](Modelica.Fluid.Fittings.GenericResistances.VolumeFlowRateI.png) [Modelica.Fluid.Fittings.GenericResistances](Modelica_Fluid_Fittings_GenericResistances.html#Modelica.Fluid.Fittings.GenericResistances).VolumeFlowRate
=================================================================================================================================================================================================================================

**Flow model for generic resistance parameterized with the volume flow
rate**

Information
-----------

::

This component models a generic resistance parameterized with the volume
flow rate:

    dp     = a*V_flow^2 + b*V_flow
    m_flow = rho*V_flow

with

  ---------------- --------------------------------------------
  **a**            as quadratic coefficient [Pa\*s\^2/m\^6],
  **b**            as linear coefficient [Pa\*s/m3],
  **dp**           as pressure loss [Pa],
  **m\_flow**      as mass flow rate [kg/s],
  **rho**          as density of fluid [kg/m3],
  **V\_flow**      as volume flow rate [m3/s].
  ---------------- --------------------------------------------

The geometry parameters of energy devices necessary for the pressure
loss calculations are often not exactly known. Therefore the modelling
of the detailed pressure loss calculation has to be simplified. This
components use a linear and a quadratic dependence of the pressure loss
on the volume flow rate. It is assumed that neither mass nor energy is
stored in this component. In the model basically a function is called to
compute the mass flow rate as a function of pressure loss. Also the
inverse of this function is defined, and a tool might use this inverse
function instead, in order to avoid the solution of a nonlinear
equation.

The details of the model are described in the [documentation of the
underlying
function](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_volumeFlowRate).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.General\_i](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.General_i)
(Icon for general pressure drop),
[Modelica.Fluid.Interfaces.PartialTwoPortTransport](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport)
(Partial element transporting fluid between two ports without storage of
mass or energy).

Parameters
----------

  ------------------------------------------------------------------------
  Type                      Name                  Defau Description
                                                  lt    
  ------------------------- --------------------- ----- ------------------
  replaceable package       [PartialMedium](Model Mediu 
  Medium                    ica_Media_Interfaces_ m     
                            PartialMedium.html#Mo in    
                            delica.Media.Interfac the   
                            es.PartialMedium)     compo 
                                                  nent  

  dp = a\*V\_flow\^2 +                                  
  b\*V\_flow                                            

  Real                      a                           Coefficient for
                                                        quadratic term
                                                        [(Pa.s2)/m6]

  Real                      b                           Coefficient for
                                                        linear term
                                                        [(Pa.s)/m3]

  **Assumptions**                                       

  Boolean                   allowFlowReversal     syste = true to allow
                                                  m.all flow reversal,
                                                  owFlo false restricts to
                                                  wReve design direction
                                                  rsal  (port\_a -\>
                                                        port\_b)

  **Advanced**                                          

  [AbsolutePressure](Modeli dp\_start             0.01\ Guess value of dp
  ca_Media_Interfaces_Parti                       *syst = port\_a.p -
  alMedium.html#Modelica.Me                       em.p\ port\_b.p [Pa]
  dia.Interfaces.PartialMed                       _star 
  ium.AbsolutePressure)                           t     

  [MassFlowRate](Modelica_M m\_flow\_start        syste Guess value of
  edia_Interfaces_PartialMe                       m.m\_ m\_flow =
  dium.html#Modelica.Media.                       flow\ port\_a.m\_flow
  Interfaces.PartialMedium.                       _star [kg/s]
  MassFlowRate)                                   t     

  [MassFlowRate](Modelica_M m\_flow\_small        syste Small mass flow
  edia_Interfaces_PartialMe                       m.m\_ rate for
  dium.html#Modelica.Media.                       flow\ regularization of
  Interfaces.PartialMedium.                       _smal zero flow [kg/s]
  MassFlowRate)                                   l     

  Diagnostics                                           

  Boolean                   show\_T               true  = true, if
                                                        temperatures at
                                                        port\_a and
                                                        port\_b are
                                                        computed

  Boolean                   show\_V\_flow         true  = true, if volume
                                                        flow rate at
                                                        inflowing port is
                                                        computed
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                Name Description
  ----------------------------------- ---- -------------------------------
  [FluidPort\_a](Modelica_Fluid_Inter port Fluid connector a (positive
  faces.html#Modelica.Fluid.Interface \_a  design flow direction is from
  s.FluidPort_a)                           port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Inter port Fluid connector b (positive
  faces.html#Modelica.Fluid.Interface \_b  design flow direction is from
  s.FluidPort_b)                           port\_a to port\_b)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model VolumeFlowRate 
      "Flow model for generic resistance parameterized with the volume flow rate"

      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.General_i;
      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport;

      parameter Real a(unit="(Pa.s2)/m6") "Coefficient for quadratic term";
      parameter Real b(unit="(Pa.s)/m3") "Coefficient for linear term";

    protected 
      parameter Medium.ThermodynamicState state_dp_small=Medium.setState_pTX(
                           Medium.reference_p,
                           Medium.reference_T,
                           Medium.reference_X) "Medium state to compute dp_small";
      parameter Medium.AbsolutePressure dp_small=
                 Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DP(
                   Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_con(
                       a=a,
                       b=b,
                       dp_min=1e-10),
                    Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_var(
                      rho=Medium.density(state_dp_small)),
                    m_flow_small) 
        "Default small pressure drop for regularization of laminar and zero flow (calculated from m_flow_small)";
      Medium.Density d_a 
        "Density at port_a when fluid is flowing from port_a to port_b";
      Medium.Density d_b 
        "If allowFlowReversal=true then Density at port_b when fluid is flowing from port_b to port_a else d_a";

    equation 
      // Isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

      // Medium properties
      d_a = Medium.density(state_a);
      if allowFlowReversal then
        d_b = Medium.density(state_b);
      else
        d_b = d_a;
      end if;

      if allowFlowReversal then
         m_flow = Modelica.Fluid.Fittings.BaseClasses.GenericResistances.VolumeFlowRate.massFlowRate(
                    dp, a, b, d_a, d_b, dp_small, m_flow_small);
      else
         m_flow = Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_MFLOW(
                   Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_con(
                       a=a,
                       b=b,
                       dp_min=dp_small),
                    Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_var(rho=d_a), dp);
      end if;

    end VolumeFlowRate;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:18 2010.
