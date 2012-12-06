% Modelica.Fluid.Fittings.BaseClasses.GenericResistances.VolumeFlowRate
% 
% 

[Modelica.Fluid.Fittings.BaseClasses.GenericResistances](Modelica_Fluid_Fittings_BaseClasses_GenericResistances.html#Modelica.Fluid.Fittings.BaseClasses.GenericResistances).VolumeFlowRate
===========================================================================================================================================================================================

**Pressure loss functions for generic resistances parameterized with the
volume flow rate**

Information
-----------

::

This package contains utility functions for the VolumeFlowRate fitting
component.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                   Description
  ------------------------------------------------------ -----------------
  ![image2](Modelica.Fluid.Fittings.BaseClasses.GenericR Return mass flow
  esistances.VolumeFlowRate.massFlowRateS.png)           rate m\_flow as
  [massFlowRate](Modelica_Fluid_Fittings_BaseClasses_Gen function of
  ericResistances_VolumeFlowRate.html#Modelica.Fluid.Fit pressure loss dp
  tings.BaseClasses.GenericResistances.VolumeFlowRate.ma for a curved bend
  ssFlowRate)                                            

  ![image3](Modelica.Fluid.Fittings.BaseClasses.GenericR Return pressure
  esistances.VolumeFlowRate.massFlowRateS.png)           loss dp as
  [pressureLoss](Modelica_Fluid_Fittings_BaseClasses_Gen function of mass
  ericResistances_VolumeFlowRate.html#Modelica.Fluid.Fit flow rate m\_flow
  tings.BaseClasses.GenericResistances.VolumeFlowRate.pr for a curved bend
  essureLoss)                                            
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Fittings.BaseClasses.GenericResistances.VolumeFlowRate](Modelica_Fluid_Fittings_BaseClasses_GenericResistances_VolumeFlowRate.html#Modelica.Fluid.Fittings.BaseClasses.GenericResistances.VolumeFlowRate).massFlowRate
======================================================================================================================================================================================================================================

**Return mass flow rate m\_flow as function of pressure loss dp for a
curved bend**

Information
-----------

::

This function returns the mass flow rate m\_flow as function of pressure
loss dp for an edged bend. The details of the function are described
[here](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_volumeFlowRate).

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
  Type                         Name   Defa Description
                                      ult  
  ---------------------------- ------ ---- ---------------------------------
  [Pressure](Modelica_SIunits. dp          Pressure loss [Pa]
  html#Modelica.SIunits.Pressu             
  re)                                      

  Real                         a           Coefficient for quadratic term
                                           (dp = a\*V\_flow\^2 + b\*V\_flow)
                                           [(Pa.s2)/m6]

  Real                         b           Coefficient for linear term (dp =
                                           a\*V\_flow\^2 + b\*V\_flow)
                                           [(Pa.s)/m3]

  [Density](Modelica_SIunits.h d\_a        Density at port\_a when fluid is
  tml#Modelica.SIunits.Density             flowing from port\_a to port\_b
  )                                        [kg/m3]

  [Density](Modelica_SIunits.h d\_b        Density at port\_b when fluid is
  tml#Modelica.SIunits.Density             flowing from port\_b to port\_a
  )                                        [kg/m3]

  [AbsolutePressure](Modelica_ dp\_sm      Small pressure drop used for
  SIunits.html#Modelica.SIunit all         regularization if
  s.AbsolutePressure)                      m\_flow=f(...,dp\_small,..,dp)
                                           [Pa]

  [MassFlowRate](Modelica_SIun m\_flo      Small mass flow rate used for
  its.html#Modelica.SIunits.Ma w\_sma      regularization if
  ssFlowRate)                  ll          dp=f\_inv(...,m\_flow\_small,m\_f
                                           low)
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
      input Real a(unit="(Pa.s2)/m6") 
        "Coefficient for quadratic term (dp = a*V_flow^2 + b*V_flow)";
      input Real b(unit="(Pa.s)/m3") 
        "Coefficient for linear term (dp = a*V_flow^2 + b*V_flow)";
      input SI.Density d_a 
        "Density at port_a when fluid is flowing from port_a to port_b";
      input SI.Density d_b 
        "Density at port_b when fluid is flowing from port_b to port_a";
      input SI.AbsolutePressure dp_small 
        "Small pressure drop used for regularization if m_flow=f(...,dp_small,..,dp)";
      input SI.MassFlowRate m_flow_small 
        "Small mass flow rate used for regularization if dp=f_inv(...,m_flow_small,m_flow)";
      output SI.MassFlowRate m_flow "Mass flow rate (= port_a.m_flow)";
    algorithm 
       m_flow := Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_MFLOW(
                   Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_con(
                       a=a,
                       b=b,
                       dp_min=dp_small),
                   Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_var(
                       rho=Modelica.Fluid.Utilities.regStep(dp, d_a, d_b, dp_small)),
                   dp);

    end massFlowRate;

* * * * *

[Modelica.Fluid.Fittings.BaseClasses.GenericResistances.VolumeFlowRate](Modelica_Fluid_Fittings_BaseClasses_GenericResistances_VolumeFlowRate.html#Modelica.Fluid.Fittings.BaseClasses.GenericResistances.VolumeFlowRate).pressureLoss
======================================================================================================================================================================================================================================

**Return pressure loss dp as function of mass flow rate m\_flow for a
curved bend**

Information
-----------

::

This function returns the pressure loss dp as function of mass flow rate
m\_flow for an edged bend. The details of the function are described
[here](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_volumeFlowRate).

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
  Type                         Name   Defa Description
                                      ult  
  ---------------------------- ------ ---- ---------------------------------
  [MassFlowRate](Modelica_SIun m\_flo      Mass flow rate (=
  its.html#Modelica.SIunits.Ma w           port\_a.m\_flow) [kg/s]
  ssFlowRate)                              

  Real                         a           Coefficient for quadratic term
                                           (dp = a\*V\_flow\^2 + b\*V\_flow)
                                           [(Pa.s2)/m6]

  Real                         b           Coefficient for linear term (dp =
                                           a\*V\_flow\^2 + b\*V\_flow)
                                           [(Pa.s)/m3]

  [Density](Modelica_SIunits.h d\_a        Density at port\_a when fluid is
  tml#Modelica.SIunits.Density             flowing from port\_a to port\_b
  )                                        [kg/m3]

  [Density](Modelica_SIunits.h d\_b        Density at port\_b when fluid is
  tml#Modelica.SIunits.Density             flowing from port\_b to port\_a
  )                                        [kg/m3]

  [AbsolutePressure](Modelica_ dp\_sm      Small pressure drop used for
  SIunits.html#Modelica.SIunit all         regularization if
  s.AbsolutePressure)                      m\_flow=f(...,dp\_small,..,dp)
                                           [Pa]

  [MassFlowRate](Modelica_SIun m\_flo      Small mass flow rate used for
  its.html#Modelica.SIunits.Ma w\_sma      regularization if
  ssFlowRate)                  ll          dp=f\_inv(...,m\_flow\_small,m\_f
                                           low)
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
      input Real a(unit="(Pa.s2)/m6") 
        "Coefficient for quadratic term (dp = a*V_flow^2 + b*V_flow)";
      input Real b(unit="(Pa.s)/m3") 
        "Coefficient for linear term (dp = a*V_flow^2 + b*V_flow)";
      input SI.Density d_a 
        "Density at port_a when fluid is flowing from port_a to port_b";
      input SI.Density d_b 
        "Density at port_b when fluid is flowing from port_b to port_a";
      input SI.AbsolutePressure dp_small 
        "Small pressure drop used for regularization if m_flow=f(...,dp_small,..,dp)";
      input SI.MassFlowRate m_flow_small 
        "Small mass flow rate used for regularization if dp=f_inv(...,m_flow_small,m_flow)";
      output SI.Pressure dp "Pressure loss";
    algorithm 
       dp := Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DP(
                   Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_con(
                       a=a,
                       b=b,
                       dp_min=dp_small),
                   Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_var(
                       rho=Modelica.Fluid.Utilities.regStep(m_flow, d_a, d_b, m_flow_small)),
                   m_flow);

    end pressureLoss;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:18 2010.
