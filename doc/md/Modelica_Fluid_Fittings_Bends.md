% Modelica.Fluid.Fittings.Bends
% 
% 

[Modelica.Fluid.Fittings](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings).Bends
=====================================================================================

**Flow models for bends**

Information
-----------

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                         Description
  ------------------------------------------------------------ -----------
  ![image2](Modelica.Fluid.Fittings.Bends.CurvedBendS.png)     Curved bend
  [CurvedBend](Modelica_Fluid_Fittings_Bends.html#Modelica.Flu flow model
  id.Fittings.Bends.CurvedBend)                                

  ![image3](Modelica.Fluid.Fittings.Bends.CurvedBendS.png)     Edged bend
  [EdgedBend](Modelica_Fluid_Fittings_Bends.html#Modelica.Flui flow model
  d.Fittings.Bends.EdgedBend)                                  
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Fluid.Fittings.Bends.CurvedBendI.png) [Modelica.Fluid.Fittings.Bends](Modelica_Fluid_Fittings_Bends.html#Modelica.Fluid.Fittings.Bends).CurvedBend
=====================================================================================================================================================================

**Curved bend flow model**

Information
-----------

::

This component models a **curved bend** in the overall flow regime for
incompressible and single-phase fluid flow through circular cross
sectional area considering surface roughness. It is expected that also
compressible fluid flow can be handled up to about Ma = 0.3. It is
assumed that neither mass nor energy is stored in this component. In the
model basically a function is called to compute the mass flow rate as a
function of pressure loss for a curved bend. Also the inverse of this
function is defined, and a tool might use this inverse function instead,
in order to avoid the solution of a nonlinear equation.

The details of the model are described in the [documentation of the
underlying
function](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_curvedOverall).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend\_i](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend_i)
(Icon for bend),
[Modelica.Fluid.Interfaces.PartialPressureLoss](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialPressureLoss)
(Base flow model for pressure loss functions with the same area at
port\_a and at port\_b).

Parameters
----------

  --------------------------------------------------------------------------
  Type                        Name                  Defau Description
                                                    lt    
  --------------------------- --------------------- ----- ------------------
  replaceable package Medium  [PartialMedium](Model Mediu 
                              ica_Media_Interfaces_ m     
                              PartialMedium.html#Mo in    
                              delica.Media.Interfac the   
                              es.PartialMedium)     compo 
                                                    nent  

  [Geometry](Modelica_Fluid_F geometry                    Geometry of curved
  ittings_BaseClasses_Bends_C                             bend
  urvedBend.html#Modelica.Flu                             
  id.Fittings.BaseClasses.Ben                             
  ds.CurvedBend.Geometry)                                 

  **Assumptions**                                         

  Boolean                     allowFlowReversal     syste = true to allow
                                                    m.all flow reversal,
                                                    owFlo false restricts to
                                                    wReve design direction
                                                    rsal  (port\_a -\>
                                                          port\_b)

  **Advanced**                                            

  [AbsolutePressure](Modelica dp\_start             0.01\ Guess value of dp
  _Media_Interfaces_PartialMe                       *syst = port\_a.p -
  dium.html#Modelica.Media.In                       em.p\ port\_b.p [Pa]
  terfaces.PartialMedium.Abso                       _star 
  lutePressure)                                     t     

  [MassFlowRate](Modelica_Med m\_flow\_start        syste Guess value of
  ia_Interfaces_PartialMedium                       m.m\_ m\_flow =
  .html#Modelica.Media.Interf                       flow\ port\_a.m\_flow
  aces.PartialMedium.MassFlow                       _star [kg/s]
  Rate)                                             t     

  [MassFlowRate](Modelica_Med m\_flow\_small        syste Small mass flow
  ia_Interfaces_PartialMedium                       m.m\_ rate for
  .html#Modelica.Media.Interf                       flow\ regularization of
  aces.PartialMedium.MassFlow                       _smal zero flow [kg/s]
  Rate)                                             l     

  Diagnostics                                             

  Boolean                     show\_T               true  = true, if
                                                          temperatures at
                                                          port\_a and
                                                          port\_b are
                                                          computed

  Boolean                     show\_V\_flow         true  = true, if volume
                                                          flow rate at
                                                          inflowing port is
                                                          computed
  --------------------------------------------------------------------------

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

    model CurvedBend "Curved bend flow model"
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend_i;
      extends Modelica.Fluid.Interfaces.PartialPressureLoss;

      parameter Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.Geometry geometry 
        "Geometry of curved bend";

    protected 
      parameter Medium.AbsolutePressure dp_small=
                 Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_DP(
                    geometry,
                    Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_var(
                      rho=Medium.density(state_dp_small),
                      eta=Medium.dynamicViscosity(state_dp_small)),
                    m_flow_small) 
        "Default small pressure drop for regularization of laminar and zero flow (calculated from m_flow_small)";

    equation 
      if allowFlowReversal then
         m_flow = Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.massFlowRate(
                    dp, geometry, d_a, d_b, eta_a, eta_b, dp_small, m_flow_small);
      else
         m_flow = Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_MFLOW(
                    geometry,
                    Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_var(rho=d_a, eta=eta_a), dp);
      end if;

    end CurvedBend;

* * * * *

![image5](Modelica.Fluid.Fittings.Bends.CurvedBendI.png) [Modelica.Fluid.Fittings.Bends](Modelica_Fluid_Fittings_Bends.html#Modelica.Fluid.Fittings.Bends).EdgedBend
====================================================================================================================================================================

**Edged bend flow model**

Information
-----------

::

This component models an **edged bend** in the overall flow regime for
incompressible and single-phase fluid flow through circular cross
sectional area considering surface roughness. It is expected that also
compressible fluid flow can be handled up to about Ma = 0.3. It is
assumed that neither mass nor energy is stored in this component. In the
model basically a function is called to compute the mass flow rate as a
function of pressure loss for an edged bend. Also the inverse of this
function is defined, and a tool might use this inverse function instead,
in order to avoid the solution of a nonlinear equation.

The details of the model are described in the [documentation of the
underlying
function](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_edgedOverall).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend\_i](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend_i)
(Icon for bend),
[Modelica.Fluid.Interfaces.PartialPressureLoss](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialPressureLoss)
(Base flow model for pressure loss functions with the same area at
port\_a and at port\_b).

Parameters
----------

  -------------------------------------------------------------------------
  Type                       Name                  Defau Description
                                                   lt    
  -------------------------- --------------------- ----- ------------------
  replaceable package Medium [PartialMedium](Model Mediu 
                             ica_Media_Interfaces_ m     
                             PartialMedium.html#Mo in    
                             delica.Media.Interfac the   
                             es.PartialMedium)     compo 
                                                   nent  

  [Geometry](Modelica_Fluid_ geometry                    Geometry of curved
  Fittings_BaseClasses_Bends                             bend
  _EdgedBend.html#Modelica.F                             
  luid.Fittings.BaseClasses.                             
  Bends.EdgedBend.Geometry)                              

  **Assumptions**                                        

  Boolean                    allowFlowReversal     syste = true to allow
                                                   m.all flow reversal,
                                                   owFlo false restricts to
                                                   wReve design direction
                                                   rsal  (port\_a -\>
                                                         port\_b)

  **Advanced**                                           

  [AbsolutePressure](Modelic dp\_start             0.01\ Guess value of dp
  a_Media_Interfaces_Partial                       *syst = port\_a.p -
  Medium.html#Modelica.Media                       em.p\ port\_b.p [Pa]
  .Interfaces.PartialMedium.                       _star 
  AbsolutePressure)                                t     

  [MassFlowRate](Modelica_Me m\_flow\_start        syste Guess value of
  dia_Interfaces_PartialMedi                       m.m\_ m\_flow =
  um.html#Modelica.Media.Int                       flow\ port\_a.m\_flow
  erfaces.PartialMedium.Mass                       _star [kg/s]
  FlowRate)                                        t     

  [MassFlowRate](Modelica_Me m\_flow\_small        syste Small mass flow
  dia_Interfaces_PartialMedi                       m.m\_ rate for
  um.html#Modelica.Media.Int                       flow\ regularization of
  erfaces.PartialMedium.Mass                       _smal zero flow [kg/s]
  FlowRate)                                        l     

  Diagnostics                                            

  Boolean                    show\_T               true  = true, if
                                                         temperatures at
                                                         port\_a and
                                                         port\_b are
                                                         computed

  Boolean                    show\_V\_flow         true  = true, if volume
                                                         flow rate at
                                                         inflowing port is
                                                         computed
  -------------------------------------------------------------------------

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

    model EdgedBend "Edged bend flow model"
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend_i;
      extends Modelica.Fluid.Interfaces.PartialPressureLoss;

      parameter Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend.Geometry geometry 
        "Geometry of curved bend";

    protected 
      parameter Medium.AbsolutePressure dp_small=
                 Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_DP(
                   Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_con(
                       d_hyd=geometry.d_hyd,
                       delta=geometry.delta,
                       K=geometry.K),
                    Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_var(
                      rho=Medium.density(state_dp_small),
                      eta=Medium.dynamicViscosity(state_dp_small)),
                    m_flow_small) 
        "Default small pressure drop for regularization of laminar and zero flow (calculated from m_flow_small)";

    equation 
      if allowFlowReversal then
         m_flow = Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend.massFlowRate(
                    dp, geometry, d_a, d_b, eta_a, eta_b, dp_small, m_flow_small);
      else
         m_flow = Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_MFLOW(
                   Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_con(
                       d_hyd=geometry.d_hyd,
                       delta=geometry.delta,
                       K=geometry.K),
                    Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_var(rho=d_a, eta=eta_a), dp);
      end if;

    end EdgedBend;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:17 2010.
