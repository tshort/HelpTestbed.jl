% Modelica.Fluid.Fittings.Orifices
% 
% 

[Modelica.Fluid.Fittings](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings).Orifices
========================================================================================

**Flow models for orifices**

Information
-----------

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                        Description
  ----------------------------------------------------------- ------------
  ![image1](Modelica.Fluid.Fittings.Orifices.ThickEdgedOrific Thicked
  eS.png)                                                     edged
  [ThickEdgedOrifice](Modelica_Fluid_Fittings_Orifices.html#M orifice flow
  odelica.Fluid.Fittings.Orifices.ThickEdgedOrifice)          model
  ------------------------------------------------------------------------

* * * * *

![image2](Modelica.Fluid.Fittings.Orifices.ThickEdgedOrificeI.png) [Modelica.Fluid.Fittings.Orifices](Modelica_Fluid_Fittings_Orifices.html#Modelica.Fluid.Fittings.Orifices).ThickEdgedOrifice
===============================================================================================================================================================================================

**Thicked edged orifice flow model**

Information
-----------

::

This component models a **thick edged orifice** with sharp corners in
the overall flow regime for incompressible and single-phase fluid flow
through an arbitrary shaped cross sectional area (square, circular,
etc.) considering influence of surface roughness. It is expected that
also compressible fluid flow can be handled up to about Ma = 0.3. It is
assumed that neither mass nor energy is stored in this component. In the
model basically a function is called to compute the mass flow rate as a
function of pressure loss for a thick edged orifice. Also the inverse of
this function is defined, and a tool might use this inverse function
instead, in order to avoid the solution of a nonlinear equation.

The details of the model are described in the [documentation of the
underlying
function](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Orifice\_i](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Orifice_i)
(Icon for orifice),
[Modelica.Fluid.Interfaces.PartialPressureLoss](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialPressureLoss)
(Base flow model for pressure loss functions with the same area at
port\_a and at port\_b).

Parameters
----------

  --------------------------------------------------------------------------
  Type                          Name                 Defau Description
                                                     lt    
  ----------------------------- -------------------- ----- -----------------
  replaceable package Medium    [PartialMedium](Mode Mediu 
                                lica_Media_Interface m     
                                s_PartialMedium.html in    
                                #Modelica.Media.Inte the   
                                rfaces.PartialMedium compo 
                                )                    nent  

  [Geometry](Modelica_Fluid_Fit geometry                   Geometry of thick
  tings_BaseClasses_Orifices_Th                            edged orifice
  ickEdgedOrifice.html#Modelica                            
  .Fluid.Fittings.BaseClasses.O                            
  rifices.ThickEdgedOrifice.Geo                            
  metry)                                                   

  **Assumptions**                                          

  Boolean                       allowFlowReversal    syste = true to allow
                                                     m.all flow reversal,
                                                     owFlo false restricts
                                                     wReve to design
                                                     rsal  direction
                                                           (port\_a -\>
                                                           port\_b)

  **Advanced**                                             

  [AbsolutePressure](Modelica_M dp\_start            0.01\ Guess value of dp
  edia_Interfaces_PartialMedium                      *syst = port\_a.p -
  .html#Modelica.Media.Interfac                      em.p\ port\_b.p [Pa]
  es.PartialMedium.AbsolutePres                      _star 
  sure)                                              t     

  [MassFlowRate](Modelica_Media m\_flow\_start       syste Guess value of
  _Interfaces_PartialMedium.htm                      m.m\_ m\_flow =
  l#Modelica.Media.Interfaces.P                      flow\ port\_a.m\_flow
  artialMedium.MassFlowRate)                         _star [kg/s]
                                                     t     

  [MassFlowRate](Modelica_Media m\_flow\_small       syste Small mass flow
  _Interfaces_PartialMedium.htm                      m.m\_ rate for
  l#Modelica.Media.Interfaces.P                      flow\ regularization of
  artialMedium.MassFlowRate)                         _smal zero flow [kg/s]
                                                     l     

  Diagnostics                                              

  Boolean                       show\_T              true  = true, if
                                                           temperatures at
                                                           port\_a and
                                                           port\_b are
                                                           computed

  Boolean                       show\_V\_flow        true  = true, if volume
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

    model ThickEdgedOrifice "Thicked edged orifice flow model"
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Orifice_i;
      extends Modelica.Fluid.Interfaces.PartialPressureLoss;

      parameter Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Geometry
                                                                                geometry 
        "Geometry of thick edged orifice";

    protected 
      parameter Medium.AbsolutePressure dp_small=
                 Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DP(
                 Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con(
                       A_0=geometry.venaCrossArea,
                       A_1=geometry.crossArea,
                       C_0=geometry.venaPerimeter,
                       C_1=geometry.perimeter,
                       L=geometry.venaLength,
                       dp_smooth=1e-10),
                    Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var(
                      rho=Medium.density(state_dp_small),
                      eta=Medium.dynamicViscosity(state_dp_small)),
                    m_flow_small) 
        "Default small pressure drop for regularization of laminar and zero flow (calculated from m_flow_small)";
    equation 
      if allowFlowReversal then
         m_flow = Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.massFlowRate(
                    dp, geometry, d_a, d_b, eta_a, eta_b, dp_small, m_flow_small);
      else
         m_flow = Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_MFLOW(
                     Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con(
                       A_0=geometry.venaCrossArea,
                       A_1=geometry.crossArea,
                       C_0=geometry.venaPerimeter,
                       C_1=geometry.perimeter,
                       L=geometry.venaLength,
                       dp_smooth=dp_small),
                    Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var(rho=d_a, eta=eta_a), dp);
      end if;

    end ThickEdgedOrifice;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:18 2010.
