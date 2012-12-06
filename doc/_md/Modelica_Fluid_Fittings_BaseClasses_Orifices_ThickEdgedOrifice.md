% Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice
% 
% 

[Modelica.Fluid.Fittings.BaseClasses.Orifices](Modelica_Fluid_Fittings_BaseClasses_Orifices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices).ThickEdgedOrifice
================================================================================================================================================================

**Pressure loss functions for thick edged orifices**

Information
-----------

::

This package contains utility functions and records for the
ThickEdgedOrifice fitting component.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                 Description
  ---------------------------------------------------- -------------------
  ![image4](Modelica.Fluid.Fittings.BaseClasses.Orific Return mass flow
  es.ThickEdgedOrifice.massFlowRateS.png)              rate m\_flow as
  [massFlowRate](Modelica_Fluid_Fittings_BaseClasses_O function of
  rifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittin pressure loss dp
  gs.BaseClasses.Orifices.ThickEdgedOrifice.massFlowRa for a thick edged
  te)                                                  orifice

  ![image5](Modelica.Fluid.Fittings.BaseClasses.Orific Return pressure
  es.ThickEdgedOrifice.massFlowRateS.png)              loss dp as function
  [pressureLoss](Modelica_Fluid_Fittings_BaseClasses_O of mass flow rate
  rifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittin m\_flow for a thick
  gs.BaseClasses.Orifices.ThickEdgedOrifice.pressureLo edged orifice
  ss)                                                  

  ![image6](Modelica.Fluid.Fittings.BaseClasses.Orific Geometric data for
  es.ThickEdgedOrifice.GeometryS.png)                  a thick edged
  [Geometry](Modelica_Fluid_Fittings_BaseClasses_Orifi orifice
  ces_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.B 
  aseClasses.Orifices.ThickEdgedOrifice.Geometry)      

  ![image7](Modelica.Fluid.Fittings.BaseClasses.Orific Choices for
  es.ThickEdgedOrifice.ChoicesS.png)                   Geometry
  [Choices](Modelica_Fluid_Fittings_BaseClasses_Orific 
  es_ThickEdgedOrifice_Choices.html#Modelica.Fluid.Fit 
  tings.BaseClasses.Orifices.ThickEdgedOrifice.Choices 
  )                                                    
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice](Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice).massFlowRate
=================================================================================================================================================================================================================

**Return mass flow rate m\_flow as function of pressure loss dp for a
thick edged orifice**

Information
-----------

::

This function returns the mass flow rate m\_flow as function of pressure
loss dp for a thick edged orifice. The details of the function are
described
[here](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall).

The orifice characteristic is valid for constant density and constant
dynamic viscosity. It can be approximately also used for compressible
media. This is performed by providing the upstream density and upstream
dynamic viscosity. In order to be able to regularize density and dynamic
viscosity around zero mass flow rate, the two quantities have to be
given if fluid flows from port\_a to port\_b (d\_a, eta\_a) and if fluid
flows from port\_b to port\_a (d\_b, eta\_b).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                    Name Def Description
                                               aul 
                                               t   
  --------------------------------------- ---- --- ------------------------
  [Pressure](Modelica_SIunits.html#Modeli dp       Pressure loss [Pa]
  ca.SIunits.Pressure)                             

  [Geometry](Modelica_Fluid_Fittings_Base geom     Geometry of bend
  Classes_Orifices_ThickEdgedOrifice.html etry     
  #Modelica.Fluid.Fittings.BaseClasses.Or          
  ifices.ThickEdgedOrifice.Geometry)               

  [Density](Modelica_SIunits.html#Modelic d\_a     Density at port\_a when
  a.SIunits.Density)                               fluid is flowing from
                                                   port\_a to port\_b
                                                   [kg/m3]

  [Density](Modelica_SIunits.html#Modelic d\_b     Density at port\_b when
  a.SIunits.Density)                               fluid is flowing from
                                                   port\_b to port\_a
                                                   [kg/m3]

  [DynamicViscosity](Modelica_SIunits.htm eta\     Dynamic viscosity at
  l#Modelica.SIunits.DynamicViscosity)    _a       port\_a when fluid is
                                                   flowing from port\_a to
                                                   port\_b [Pa.s]

  [DynamicViscosity](Modelica_SIunits.htm eta\     Dynamic viscosity at
  l#Modelica.SIunits.DynamicViscosity)    _b       port\_b when fluid is
                                                   flowing from port\_b to
                                                   port\_a [Pa.s]

  [AbsolutePressure](Modelica_SIunits.htm dp\_     Small pressure drop used
  l#Modelica.SIunits.AbsolutePressure)    smal     for regularization if
                                          l        m\_flow=f(...,dp\_small,
                                                   ..,dp)
                                                   [Pa]

  [MassFlowRate](Modelica_SIunits.html#Mo m\_f     Small mass flow rate
  delica.SIunits.MassFlowRate)            low\     used for regularization
                                          _sma     if
                                          ll       dp=f\_inv(...,m\_flow\_s
                                                   mall,m\_flow)
                                                   [kg/s]
  -------------------------------------------------------------------------

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
      "Return mass flow rate m_flow as function of pressure loss dp for a thick edged orifice"
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
       m_flow := Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_MFLOW(
                   Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con(
                       A_0=geometry.venaCrossArea,
                       A_1=geometry.crossArea,
                       C_0=geometry.venaPerimeter,
                       C_1=geometry.perimeter,
                       L=geometry.venaLength,
                       dp_smooth=dp_small),
                   Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var(
                       rho=Modelica.Fluid.Utilities.regStep(dp, d_a, d_b, dp_small),
                       eta=Modelica.Fluid.Utilities.regStep(dp, eta_a, eta_b, dp_small)),
                   dp);
    end massFlowRate;

* * * * *

[Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice](Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice).pressureLoss
=================================================================================================================================================================================================================

**Return pressure loss dp as function of mass flow rate m\_flow for a
thick edged orifice**

Information
-----------

::

This function returns the pressure loss dp as function of mass flow rate
m\_flow for a thick edged orifice. The details of the function are
described
[here](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall).

The orifice characteristic is valid for constant density and constant
dynamic viscosity. It can be approximately also used for compressible
media. This is performed by providing the upstream density and upstream
dynamic viscosity. In order to be able to regularize density and dynamic
viscosity around zero mass flow rate, the two quantities have to be
given if fluid flows from port\_a to port\_b (d\_a, eta\_a) and if fluid
flows from port\_b to port\_a (d\_b, eta\_b).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                    Name Def Description
                                               aul 
                                               t   
  --------------------------------------- ---- --- ------------------------
  [MassFlowRate](Modelica_SIunits.html#Mo m\_f     Mass flow rate (=
  delica.SIunits.MassFlowRate)            low      port\_a.m\_flow) [kg/s]

  [Geometry](Modelica_Fluid_Fittings_Base geom     Geometry of bend
  Classes_Orifices_ThickEdgedOrifice.html etry     
  #Modelica.Fluid.Fittings.BaseClasses.Or          
  ifices.ThickEdgedOrifice.Geometry)               

  [Density](Modelica_SIunits.html#Modelic d\_a     Density at port\_a when
  a.SIunits.Density)                               fluid is flowing from
                                                   port\_a to port\_b
                                                   [kg/m3]

  [Density](Modelica_SIunits.html#Modelic d\_b     Density at port\_b when
  a.SIunits.Density)                               fluid is flowing from
                                                   port\_b to port\_a
                                                   [kg/m3]

  [DynamicViscosity](Modelica_SIunits.htm eta\     Dynamic viscosity at
  l#Modelica.SIunits.DynamicViscosity)    _a       port\_a when fluid is
                                                   flowing from port\_a to
                                                   port\_b [Pa.s]

  [DynamicViscosity](Modelica_SIunits.htm eta\     Dynamic viscosity at
  l#Modelica.SIunits.DynamicViscosity)    _b       port\_b when fluid is
                                                   flowing from port\_b to
                                                   port\_a [Pa.s]

  [AbsolutePressure](Modelica_SIunits.htm dp\_     Small pressure drop used
  l#Modelica.SIunits.AbsolutePressure)    smal     for regularization if
                                          l        m\_flow=f(...,dp\_small,
                                                   ..,dp)
                                                   [Pa]

  [MassFlowRate](Modelica_SIunits.html#Mo m\_f     Small mass flow rate
  delica.SIunits.MassFlowRate)            low\     used for regularization
                                          _sma     if
                                          ll       dp=f\_inv(...,m\_flow\_s
                                                   mall,m\_flow)
                                                   [kg/s]
  -------------------------------------------------------------------------

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
      "Return pressure loss dp as function of mass flow rate m_flow for a thick edged orifice"

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
       dp := Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DP(
               Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con(
                       A_0=geometry.venaCrossArea,
                       A_1=geometry.crossArea,
                       C_0=geometry.venaPerimeter,
                       C_1=geometry.perimeter,
                       L=geometry.venaLength,
                       dp_smooth=dp_small),
                   Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var(
                       rho=Modelica.Fluid.Utilities.regStep(m_flow, d_a, d_b, m_flow_small),
                       eta=Modelica.Fluid.Utilities.regStep(m_flow, eta_a, eta_b, m_flow_small)),
                   m_flow);

    end pressureLoss;

* * * * *

![image8](Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.GeometryI.png) [Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice](Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice).Geometry
=====================================================================================================================================================================================================================================================================================================

**Geometric data for a thick edged orifice**

Information
-----------

::

This record is used to define the geometric (constant) data of a thick
edged orifice. The details of the record are described
[here](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall).

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  --------------------------------------------------------------------------
  Type                            Name      Defaul Description
                                            t      
  ------------------------------- --------- ------ -------------------------
  [Area](Modelica_SIunits.html#Mo crossArea        Inner cross sectional
  delica.SIunits.Area)                             area [m2]

  [Length](Modelica_SIunits.html# perimeter        Inner perimeter [m]
  Modelica.SIunits.Length)                         

  [Area](Modelica_SIunits.html#Mo venaCross        Cross sectional area of
  delica.SIunits.Area)            Area             vena contraction [m2]

  [Length](Modelica_SIunits.html# venaPerim        Perimeter of vena
  Modelica.SIunits.Length)        eter             contraction [m]

  [Length](Modelica_SIunits.html# venaLengt        Length of vena
  Modelica.SIunits.Length)        h                contraction [m]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record Geometry "Geometric data for a thick edged orifice"
      import SI = Modelica.SIunits;
      extends Modelica.Icons.Record;

      SI.Area crossArea "Inner cross sectional area";
      SI.Length perimeter "Inner perimeter";

      SI.Area venaCrossArea "Cross sectional area of vena contraction";
      SI.Length venaPerimeter "Perimeter of vena contraction";
      SI.Length venaLength "Length of vena contraction";

    end Geometry;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:18 2010.
