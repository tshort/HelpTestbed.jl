% Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend
% 
% 

[Modelica.Fluid.Fittings.BaseClasses.Bends](Modelica_Fluid_Fittings_BaseClasses_Bends.html#Modelica.Fluid.Fittings.BaseClasses.Bends).EdgedBend
===============================================================================================================================================

**Pressure loss functions for edged bends**

Information
-----------

::

This package contains utility functions and records for the EdgedBend
fitting component.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                Description
  --------------------------------------------------- --------------------
  ![image3](Modelica.Fluid.Fittings.BaseClasses.Bends Return mass flow
  .EdgedBend.massFlowRateS.png)                       rate m\_flow as
  [massFlowRate](Modelica_Fluid_Fittings_BaseClasses_ function of pressure
  Bends_EdgedBend.html#Modelica.Fluid.Fittings.BaseCl loss dp for a curved
  asses.Bends.EdgedBend.massFlowRate)                 bend

  ![image4](Modelica.Fluid.Fittings.BaseClasses.Bends Return pressure loss
  .EdgedBend.massFlowRateS.png)                       dp as function of
  [pressureLoss](Modelica_Fluid_Fittings_BaseClasses_ mass flow rate
  Bends_EdgedBend.html#Modelica.Fluid.Fittings.BaseCl m\_flow for a curved
  asses.Bends.EdgedBend.pressureLoss)                 bend

  ![image5](Modelica.Fluid.Fittings.BaseClasses.Bends Geometric data for a
  .EdgedBend.GeometryS.png)                           curved bend
  [Geometry](Modelica_Fluid_Fittings_BaseClasses_Bend 
  s_EdgedBend.html#Modelica.Fluid.Fittings.BaseClasse 
  s.Bends.EdgedBend.Geometry)                         
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend](Modelica_Fluid_Fittings_BaseClasses_Bends_EdgedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend).massFlowRate
================================================================================================================================================================================

**Return mass flow rate m\_flow as function of pressure loss dp for a
curved bend**

Information
-----------

::

This function returns the mass flow rate m\_flow as function of pressure
loss dp for an edged bend. The details of the function are described
[here](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_edgedOverall).

The bend characteristic is valid for constant density and constant
dynamic viscosity. It can be approximately also used for compressible
media. This is performed by providing the upstream density and upstream
dynamic viscosity. In order to be able to regularize density and dynamic
viscosity around zero mass flow rate, the two quantities have to be
given if fluid flows from port\_a to port\_b (d\_a, eta\_a) and if fluid
flows from port\_b to port\_a (d\_b, eta\_b).

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                  Name  Def Description
                                              aul 
                                              t   
  ------------------------------------- ----- --- --------------------------
  [Pressure](Modelica_SIunits.html#Mode dp        Pressure loss [Pa]
  lica.SIunits.Pressure)                          

  [Geometry](Modelica_Fluid_Fittings_Ba geome     Geometry of bend
  seClasses_Bends_EdgedBend.html#Modeli try       
  ca.Fluid.Fittings.BaseClasses.Bends.E           
  dgedBend.Geometry)                              

  [Density](Modelica_SIunits.html#Model d\_a      Density at port\_a when
  ica.SIunits.Density)                            fluid is flowing from
                                                  port\_a to port\_b [kg/m3]

  [Density](Modelica_SIunits.html#Model d\_b      Density at port\_b when
  ica.SIunits.Density)                            fluid is flowing from
                                                  port\_b to port\_a [kg/m3]

  [DynamicViscosity](Modelica_SIunits.h eta\_     Dynamic viscosity at
  tml#Modelica.SIunits.DynamicViscosity a         port\_a when fluid is
  )                                               flowing from port\_a to
                                                  port\_b [Pa.s]

  [DynamicViscosity](Modelica_SIunits.h eta\_     Dynamic viscosity at
  tml#Modelica.SIunits.DynamicViscosity b         port\_b when fluid is
  )                                               flowing from port\_b to
                                                  port\_a [Pa.s]

  [AbsolutePressure](Modelica_SIunits.h dp\_s     Small pressure drop used
  tml#Modelica.SIunits.AbsolutePressure mall      for regularization if
  )                                               m\_flow=f(...,dp\_small,..
                                                  ,dp)
                                                  [Pa]

  [MassFlowRate](Modelica_SIunits.html# m\_fl     Small mass flow rate used
  Modelica.SIunits.MassFlowRate)        ow\_s     for regularization if
                                        mall      dp=f\_inv(...,m\_flow\_sma
                                                  ll,m\_flow)
                                                  [kg/s]
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                     Name   Description
  ---------------------------------------- ------ -------------------------
  [MassFlowRate](Modelica_SIunits.html#Mod m\_flo Mass flow rate (=
  elica.SIunits.MassFlowRate)              w      port\_a.m\_flow) [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function massFlowRate 
      "Return mass flow rate m_flow as function of pressure loss dp for a curved bend"
      import SI = Modelica.SIunits;
      input SI.Pressure dp "Pressure loss";
      input Geometry geometry "Geometry of bend";
      input SI.Density d_a 
        "Density at port_a when fluid is flowing from port_a to port_b";
      input SI.Density d_b 
        "Density at port_b when fluid is flowing from port_b to port_a";
      input SI.DynamicViscosity eta_a 
        "Dynamic viscosity at port_a when fluid is flowing from port_a to port_b";
      input SI.DynamicViscosity eta_b 
        "Dynamic viscosity at port_b when fluid is flowing from port_b to port_a";
      input SI.AbsolutePressure dp_small 
        "Small pressure drop used for regularization if m_flow=f(...,dp_small,..,dp)";
      input SI.MassFlowRate m_flow_small 
        "Small mass flow rate used for regularization if dp=f_inv(...,m_flow_small,m_flow)";
      output SI.MassFlowRate m_flow "Mass flow rate (= port_a.m_flow)";
    algorithm 
       m_flow := Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_MFLOW(
                   Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_con(
                       d_hyd=geometry.d_hyd,
                       delta=geometry.delta,
                       K=geometry.K),
                   Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_var(
                       rho=Modelica.Fluid.Utilities.regStep(dp, d_a, d_b, dp_small),
                       eta=Modelica.Fluid.Utilities.regStep(dp, eta_a, eta_b, dp_small)),
                   dp);

    end massFlowRate;

* * * * *

[Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend](Modelica_Fluid_Fittings_BaseClasses_Bends_EdgedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend).pressureLoss
================================================================================================================================================================================

**Return pressure loss dp as function of mass flow rate m\_flow for a
curved bend**

Information
-----------

::

This function returns the pressure loss dp as function of mass flow rate
m\_flow for an edged bend. The details of the function are described
[here](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_edgedOverall).

The bend characteristic is valid for constant density and constant
dynamic viscosity. It can be approximately also used for compressible
media. This is performed by providing the upstream density and upstream
dynamic viscosity. In order to be able to regularize density and dynamic
viscosity around zero mass flow rate, the two quantities have to be
given if fluid flows from port\_a to port\_b (d\_a, eta\_a) and if fluid
flows from port\_b to port\_a (d\_b, eta\_b).

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                  Name  Def Description
                                              aul 
                                              t   
  ------------------------------------- ----- --- --------------------------
  [MassFlowRate](Modelica_SIunits.html# m\_fl     Mass flow rate (=
  Modelica.SIunits.MassFlowRate)        ow        port\_a.m\_flow) [kg/s]

  [Geometry](Modelica_Fluid_Fittings_Ba geome     Geometry of bend
  seClasses_Bends_EdgedBend.html#Modeli try       
  ca.Fluid.Fittings.BaseClasses.Bends.E           
  dgedBend.Geometry)                              

  [Density](Modelica_SIunits.html#Model d\_a      Density at port\_a when
  ica.SIunits.Density)                            fluid is flowing from
                                                  port\_a to port\_b [kg/m3]

  [Density](Modelica_SIunits.html#Model d\_b      Density at port\_b when
  ica.SIunits.Density)                            fluid is flowing from
                                                  port\_b to port\_a [kg/m3]

  [DynamicViscosity](Modelica_SIunits.h eta\_     Dynamic viscosity at
  tml#Modelica.SIunits.DynamicViscosity a         port\_a when fluid is
  )                                               flowing from port\_a to
                                                  port\_b [Pa.s]

  [DynamicViscosity](Modelica_SIunits.h eta\_     Dynamic viscosity at
  tml#Modelica.SIunits.DynamicViscosity b         port\_b when fluid is
  )                                               flowing from port\_b to
                                                  port\_a [Pa.s]

  [AbsolutePressure](Modelica_SIunits.h dp\_s     Small pressure drop used
  tml#Modelica.SIunits.AbsolutePressure mall      for regularization if
  )                                               m\_flow=f(...,dp\_small,..
                                                  ,dp)
                                                  [Pa]

  [MassFlowRate](Modelica_SIunits.html# m\_fl     Small mass flow rate used
  Modelica.SIunits.MassFlowRate)        ow\_s     for regularization if
                                        mall      dp=f\_inv(...,m\_flow\_sma
                                                  ll,m\_flow)
                                                  [kg/s]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                             Name   Description
  ------------------------------------------------ ------ ----------------
  [Pressure](Modelica_SIunits.html#Modelica.SIunit dp     Pressure loss
  s.Pressure)                                             [Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function pressureLoss 
      "Return pressure loss dp as function of mass flow rate m_flow for a curved bend"

      import SI = Modelica.SIunits;
      input SI.MassFlowRate m_flow "Mass flow rate (= port_a.m_flow)";
      input Geometry geometry "Geometry of bend";
      input SI.Density d_a 
        "Density at port_a when fluid is flowing from port_a to port_b";
      input SI.Density d_b 
        "Density at port_b when fluid is flowing from port_b to port_a";
      input SI.DynamicViscosity eta_a 
        "Dynamic viscosity at port_a when fluid is flowing from port_a to port_b";
      input SI.DynamicViscosity eta_b 
        "Dynamic viscosity at port_b when fluid is flowing from port_b to port_a";
      input SI.AbsolutePressure dp_small 
        "Small pressure drop used for regularization if m_flow=f(...,dp_small,..,dp)";
      input SI.MassFlowRate m_flow_small 
        "Small mass flow rate used for regularization if dp=f_inv(...,m_flow_small,m_flow)";
      output SI.Pressure dp "Pressure loss";
    algorithm 
       dp := Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_DP(
                   Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_con(
                       d_hyd=geometry.d_hyd,
                       delta=geometry.delta,
                       K=geometry.K),
                   Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_var(
                       rho=Modelica.Fluid.Utilities.regStep(m_flow, d_a, d_b, m_flow_small),
                       eta=Modelica.Fluid.Utilities.regStep(m_flow, eta_a, eta_b, m_flow_small)),
                   m_flow);

    end pressureLoss;

* * * * *

![image6](Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend.GeometryI.png) [Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend](Modelica_Fluid_Fittings_BaseClasses_Bends_EdgedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend).Geometry
=========================================================================================================================================================================================================================================================

**Geometric data for a curved bend**

Information
-----------

::

This record is used to define the geometric (constant) data of an edged
bend. The details of the record are described
[here](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_edgedOverall).

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name Defau Description
                                        lt    
  -------------------------------- ---- ----- -----------------------------
  [Diameter](Modelica_SIunits.html d\_h       Hydraulic diameter [m]
  #Modelica.SIunits.Diameter)      yd         

  [Angle](Modelica_SIunits.html#Mo delt       Angle of turning [rad]
  delica.SIunits.Angle)            a          

  [Roughness](Modelica_Fluid_Types K    2.5e- Absolute roughness, with a
  .html#Modelica.Fluid.Types.Rough      5     default for a smooth steel
  ness)                                       pipe [m]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record Geometry "Geometric data for a curved bend"
      import SI = Modelica.SIunits;
      extends Modelica.Icons.Record;

      SI.Diameter d_hyd "Hydraulic diameter";
      SI.Angle delta "Angle of turning";
      Modelica.Fluid.Types.Roughness K=2.5e-5 
        "Absolute roughness, with a default for a smooth steel pipe";
    end Geometry;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:18 2010.
