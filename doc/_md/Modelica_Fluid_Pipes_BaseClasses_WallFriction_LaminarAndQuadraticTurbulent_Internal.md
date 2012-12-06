% Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.Internal
% 
% 

[Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent).Internal
=================================================================================================================================================================================================================================================

**Functions to calculate mass flow rate from friction pressure drop and
vice versa**

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image2](Modelica.Fluid.Pipes.BaseClasses.WallFriction.La Calculate
  minarAndQuadraticTurbulent.Internal.m_flow_of_dp_fricS.png mass flow
  )                                                          rate as
  [m\_flow\_of\_dp\_fric](Modelica_Fluid_Pipes_BaseClasses_W function of
  allFriction_LaminarAndQuadraticTurbulent_Internal.html#Mod pressure drop
  elica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadr due to
  aticTurbulent.Internal.m_flow_of_dp_fric)                  friction

  ![image3](Modelica.Fluid.Pipes.BaseClasses.WallFriction.La Calculate
  minarAndQuadraticTurbulent.Internal.m_flow_of_dp_fricS.png pressure drop
  )                                                          due to
  [dp\_fric\_of\_m\_flow](Modelica_Fluid_Pipes_BaseClasses_W friction as
  allFriction_LaminarAndQuadraticTurbulent_Internal.html#Mod function of
  elica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadr mass flow
  aticTurbulent.Internal.dp_fric_of_m_flow)                  rate
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.Internal](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent_Internal.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.Internal).m\_flow\_of\_dp\_fric
=========================================================================================================================================================================================================================================================================================

**Calculate mass flow rate as function of pressure drop due to
friction**

Inputs
------

  ------------------------------------------------------------------------
  Type                              Name  Defa Description
                                          ult  
  --------------------------------- ----- ---- ---------------------------
  [Pressure](Modelica_SIunits.html# dp\_f      Pressure loss due to
  Modelica.SIunits.Pressure)        ric        friction (dp = port\_a.p -
                                               port\_b.p) [Pa]

  [Density](Modelica_SIunits.html#M rho\_      Density at port\_a [kg/m3]
  odelica.SIunits.Density)          a          

  [Density](Modelica_SIunits.html#M rho\_      Density at port\_b [kg/m3]
  odelica.SIunits.Density)          b          

  [DynamicViscosity](Modelica_SIuni mu\_a      Dynamic viscosity at
  ts.html#Modelica.SIunits.DynamicV            port\_a (dummy if use\_mu =
  iscosity)                                    false) [Pa.s]

  [DynamicViscosity](Modelica_SIuni mu\_b      Dynamic viscosity at
  ts.html#Modelica.SIunits.DynamicV            port\_b (dummy if use\_mu =
  iscosity)                                    false) [Pa.s]

  [Length](Modelica_SIunits.html#Mo lengt      Length of pipe [m]
  delica.SIunits.Length)            h          

  [Diameter](Modelica_SIunits.html# diame      Inner (hydraulic) diameter
  Modelica.SIunits.Diameter)        ter        of pipe [m]

  [ReynoldsNumber](Modelica_SIunits Re1        Boundary between laminar
  .html#Modelica.SIunits.ReynoldsNu            regime and transition [1]
  mber)                                        

  [ReynoldsNumber](Modelica_SIunits Re2        Boundary between transition
  .html#Modelica.SIunits.ReynoldsNu            and turbulent regime [1]
  mber)                                        

  Real                              Delta      Relative roughness
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                 Name        Description
  ------------------------------------ ----------- ------------------------
  [MassFlowRate](Modelica_SIunits.html m\_flow     Mass flow rate from
  #Modelica.SIunits.MassFlowRate)                  port\_a to port\_b
                                                   [kg/s]

  Real                                 dm\_flow\_d Derivative of mass flow
                                       dp\_fric    rate with dp\_fric
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function m_flow_of_dp_fric 
      "Calculate mass flow rate as function of pressure drop due to friction"

      input SI.Pressure dp_fric 
        "Pressure loss due to friction (dp = port_a.p - port_b.p)";
      input SI.Density rho_a "Density at port_a";
      input SI.Density rho_b "Density at port_b";
      input SI.DynamicViscosity mu_a 
        "Dynamic viscosity at port_a (dummy if use_mu = false)";
      input SI.DynamicViscosity mu_b 
        "Dynamic viscosity at port_b (dummy if use_mu = false)";
      input SI.Length length "Length of pipe";
      input SI.Diameter diameter "Inner (hydraulic) diameter of pipe";
      input SI.ReynoldsNumber Re1 "Boundary between laminar regime and transition";
      input SI.ReynoldsNumber Re2 
        "Boundary between transition and turbulent regime";
      input Real Delta "Relative roughness";
      output SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";
      output Real dm_flow_ddp_fric "Derivative of mass flow rate with dp_fric";
    protected 
      SI.DynamicViscosity mu "Upstream viscosity";
      SI.Density rho "Upstream density";

      Real zeta;
      Real k0;
      Real k_inv;
      Real dm_flow_ddp_laminar "Derivative of m_flow=m_flow(dp) in laminar regime";
      SI.AbsolutePressure dp_fric_turbulent 
        "The turbulent region is: |dp_fric| >= dp_fric_turbulent, simple quadratic correlation";
      SI.AbsolutePressure dp_fric_laminar 
        "The laminar region is: |dp_fric| <= dp_fric_laminar";
    algorithm 
    /*
    Turbulent region:
       Re = m_flow*(4/pi)/(D_Re*mu)
       dp = 0.5*zeta*rho*v*|v|
          = 0.5*zeta*rho*1/(rho*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/rho * m_flow * |m_flow|
          = k/rho * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
       dp_fric_turbulent     =  k/rho *(D_Re*mu*pi/4)^2 * Re_turbulent^2

    Laminar region:
       dp = 0.5*zeta/(A^2*d) * m_flow * |m_flow|
          = 0.5 * c0/(|m_flow|*(4/pi)/(D_Re*mu)) / ((pi*(D_Re/2)^2)^2*d) * m_flow*|m_flow|
          = 0.5 * c0*(pi/4)*(D_Re*mu) * 16/(pi^2*D_Re^4*d) * m_flow*|m_flow|
          = 2*c0/(pi*D_Re^3) * mu/rho * m_flow
          = k0 * mu/rho * m_flow
       k0 = 2*c0/(pi*D_Re^3)
    */
      // Determine upstream density and upstream viscosity
      if dp_fric >= 0 then
        rho := rho_a;
        mu  := mu_a;
      else
        rho := rho_b;
        mu  := mu_b;
      end if;
      // Quadratic turbulent
      zeta := (length/diameter)/(2*log10(3.7/(Delta)))^2;
      k_inv := (pi*diameter*diameter)^2/(8*zeta);
      dp_fric_turbulent := sign(dp_fric)*(mu*diameter*pi/4)^2*Re2^2/(k_inv*rho);

      // Laminar
      k0 := 128*length/(pi*diameter^4);
      dm_flow_ddp_laminar := rho/(k0*mu);
      dp_fric_laminar := sign(dp_fric)*pi*k0*mu^2/rho*diameter/4*Re1;

      if abs(dp_fric) > abs(dp_fric_turbulent) then
        m_flow := sign(dp_fric)*sqrt(rho*k_inv*abs(dp_fric));
        dm_flow_ddp_fric := 0.5*rho*k_inv*(rho*k_inv*abs(dp_fric))^(-0.5);
      elseif abs(dp_fric) < abs(dp_fric_laminar) then
        m_flow := dm_flow_ddp_laminar*dp_fric;
        dm_flow_ddp_fric := dm_flow_ddp_laminar;
      else
        // Preliminary testing seems to indicate that the log-log transform is not required here
        (m_flow,dm_flow_ddp_fric) := Utilities.cubicHermite_withDerivative(
          dp_fric, dp_fric_laminar, dp_fric_turbulent, dm_flow_ddp_laminar*dp_fric_laminar,
          sign(dp_fric_turbulent)*sqrt(rho*k_inv*abs(dp_fric_turbulent)), dm_flow_ddp_laminar,
          if abs(dp_fric_turbulent)>0 then 0.5*rho*k_inv*(rho*k_inv*abs(dp_fric_turbulent))^(-0.5) else Modelica.Constants.inf);
      end if;
    end m_flow_of_dp_fric;

* * * * *

[Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.Internal](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent_Internal.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.Internal).dp\_fric\_of\_m\_flow
=========================================================================================================================================================================================================================================================================================

**Calculate pressure drop due to friction as function of mass flow
rate**

Inputs
------

  ------------------------------------------------------------------------
  Type                              Name  Defa Description
                                          ult  
  --------------------------------- ----- ---- ---------------------------
  [MassFlowRate](Modelica_SIunits.h m\_fl      Mass flow rate from port\_a
  tml#Modelica.SIunits.MassFlowRate ow         to port\_b [kg/s]
  )                                            

  [Density](Modelica_SIunits.html#M rho\_      Density at port\_a [kg/m3]
  odelica.SIunits.Density)          a          

  [Density](Modelica_SIunits.html#M rho\_      Density at port\_b [kg/m3]
  odelica.SIunits.Density)          b          

  [DynamicViscosity](Modelica_SIuni mu\_a      Dynamic viscosity at
  ts.html#Modelica.SIunits.DynamicV            port\_a (dummy if use\_mu =
  iscosity)                                    false) [Pa.s]

  [DynamicViscosity](Modelica_SIuni mu\_b      Dynamic viscosity at
  ts.html#Modelica.SIunits.DynamicV            port\_b (dummy if use\_mu =
  iscosity)                                    false) [Pa.s]

  [Length](Modelica_SIunits.html#Mo lengt      Length of pipe [m]
  delica.SIunits.Length)            h          

  [Diameter](Modelica_SIunits.html# diame      Inner (hydraulic) diameter
  Modelica.SIunits.Diameter)        ter        of pipe [m]

  [ReynoldsNumber](Modelica_SIunits Re1        Boundary between laminar
  .html#Modelica.SIunits.ReynoldsNu            regime and transition [1]
  mber)                                        

  [ReynoldsNumber](Modelica_SIunits Re2        Boundary between transition
  .html#Modelica.SIunits.ReynoldsNu            and turbulent regime [1]
  mber)                                        

  Real                              Delta      Relative roughness
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                        Name      Description
  --------------------------- --------- ----------------------------------
  [Pressure](Modelica_SIunits dp\_fric  Pressure loss due to friction
  .html#Modelica.SIunits.Pres           (dp\_fric = port\_a.p - port\_b.p
  sure)                                 - dp\_grav) [Pa]

  Real                        ddp\_fric Derivative of pressure drop with
                              \_dm\_flo mass flow rate
                              w         
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_fric_of_m_flow 
      "Calculate pressure drop due to friction as function of mass flow rate"

      input SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";
      input SI.Density rho_a "Density at port_a";
      input SI.Density rho_b "Density at port_b";
      input SI.DynamicViscosity mu_a 
        "Dynamic viscosity at port_a (dummy if use_mu = false)";
      input SI.DynamicViscosity mu_b 
        "Dynamic viscosity at port_b (dummy if use_mu = false)";
      input SI.Length length "Length of pipe";
      input SI.Diameter diameter "Inner (hydraulic) diameter of pipe";
      input SI.ReynoldsNumber Re1 "Boundary between laminar regime and transition";
      input SI.ReynoldsNumber Re2 
        "Boundary between transition and turbulent regime";
      input Real Delta "Relative roughness";
      output SI.Pressure dp_fric 
        "Pressure loss due to friction (dp_fric = port_a.p - port_b.p - dp_grav)";
      output Real ddp_fric_dm_flow 
        "Derivative of pressure drop with mass flow rate";
    protected 
      SI.DynamicViscosity mu "Upstream viscosity";
      SI.Density rho "Upstream density";
      Real zeta;
      Real k0;
      Real k;
      Real ddp_fric_dm_flow_laminar "Derivative of dp_fric = f(m_flow) at zero";
      SI.MassFlowRate m_flow_turbulent 
        "The turbulent region is: |m_flow| >= m_flow_turbulent";
      SI.MassFlowRate m_flow_laminar 
        "The laminar region is: |m_flow| <= m_flow_laminar";
    algorithm 
    /*
    Turbulent region:
       Re = m_flow*(4/pi)/(D_Re*mu)
       dp = 0.5*zeta*rho*v*|v|
          = 0.5*zeta*rho*1/(rho*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/rho * m_flow * |m_flow|
          = k/rho * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
       m_flow_turbulent = (pi/4)*D_Re*mu*Re_turbulent

    Laminar region:
       dp = 0.5*zeta/(A^2*d) * m_flow * |m_flow|
          = 0.5 * c0/(|m_flow|*(4/pi)/(D_Re*mu)) / ((pi*(D_Re/2)^2)^2*d) * m_flow*|m_flow|
          = 0.5 * c0*(pi/4)*(D_Re*mu) * 16/(pi^2*D_Re^4*d) * m_flow*|m_flow|
          = 2*c0/(pi*D_Re^3) * mu/rho * m_flow
          = k0 * mu/rho * m_flow
       k0 = 2*c0/(pi*D_Re^3)
    */
      // Determine upstream density and upstream viscosity
      if m_flow >= 0 then
        rho := rho_a;
        mu  := mu_a;
      else
        rho := rho_b;
        mu  := mu_b;
      end if;

      // Turbulent
      zeta := (length/diameter)/(2*log10(3.7/(Delta)))^2;
      k := 8*zeta/(pi*diameter*diameter)^2;
      m_flow_turbulent := sign(m_flow)*(pi/4)*diameter*mu*Re2;

      // Laminar
      k0 := 128*length/(pi*diameter^4);
      ddp_fric_dm_flow_laminar := k0*mu/rho;
      m_flow_laminar := sign(m_flow)*(pi/4)*diameter*mu*Re1;

      if abs(m_flow) > abs(m_flow_turbulent) then
        dp_fric := k/rho*m_flow*abs(m_flow);
        ddp_fric_dm_flow := 2*k/rho*abs(m_flow);
      elseif abs(m_flow) < abs(m_flow_laminar) then
        dp_fric := ddp_fric_dm_flow_laminar*m_flow;
        ddp_fric_dm_flow := ddp_fric_dm_flow_laminar;
      else
        // Preliminary testing seems to indicate that the log-log transform is not required here
        (dp_fric,ddp_fric_dm_flow) := Utilities.cubicHermite_withDerivative(
          m_flow, m_flow_laminar, m_flow_turbulent, ddp_fric_dm_flow_laminar*m_flow_laminar,
          k/rho*m_flow_turbulent*abs(m_flow_turbulent), ddp_fric_dm_flow_laminar, 2*k/rho*abs(m_flow_turbulent));
      end if;
    end dp_fric_of_m_flow;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:15 2010.
