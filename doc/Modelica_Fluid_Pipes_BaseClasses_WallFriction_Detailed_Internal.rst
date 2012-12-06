===============================================================
Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal
===============================================================

`Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed>`_.Internal
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Functions to calculate mass flow rate from friction pressure drop and
vice versa**

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                        | Description                                                             |
+=============================================================================================================================================================================================================================================================================+=========================================================================+
| |image2| `m\_flow\_of\_dp\_fric <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed_Internal.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal.m_flow_of_dp_fric>`_                                                                                  | Calculate mass flow rate as function of pressure drop due to friction   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image3| `dp\_fric\_of\_m\_flow <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed_Internal.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal.dp_fric_of_m_flow>`_                                                                                  | Calculate pressure drop due to friction as function of mass flow rate   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed_Internal.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal>`_.m\_flow\_of\_dp\_fric
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Calculate mass flow rate as function of pressure drop due to
friction**

Inputs
~~~~~~

+---------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| Type                                                                            | Name       | Default   | Description                                                       |
+=================================================================================+============+===========+===================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | dp\_fric   |           | Pressure loss due to friction (dp = port\_a.p - port\_b.p) [Pa]   |
+---------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_a     |           | Density at port\_a [kg/m3]                                        |
+---------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_b     |           | Density at port\_b [kg/m3]                                        |
+---------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_a      |           | Dynamic viscosity at port\_a (dummy if use\_mu = false) [Pa.s]    |
+---------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_b      |           | Dynamic viscosity at port\_b (dummy if use\_mu = false) [Pa.s]    |
+---------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | length     |           | Length of pipe [m]                                                |
+---------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                   | diameter   |           | Inner (hydraulic) diameter of pipe [m]                            |
+---------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `ReynoldsNumber <Modelica_SIunits.html#Modelica.SIunits.ReynoldsNumber>`_       | Re1        |           | Boundary between laminar regime and transition [1]                |
+---------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `ReynoldsNumber <Modelica_SIunits.html#Modelica.SIunits.ReynoldsNumber>`_       | Re2        |           | Boundary between transition and turbulent regime [1]              |
+---------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| Real                                                                            | Delta      |           | Relative roughness                                                |
+---------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------------------+-------------------------------------------------+
| Type                                                                    | Name                  | Description                                     |
+=========================================================================+=======================+=================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | m\_flow               | Mass flow rate from port\_a to port\_b [kg/s]   |
+-------------------------------------------------------------------------+-----------------------+-------------------------------------------------+
| Real                                                                    | dm\_flow\_ddp\_fric   | Derivative of mass flow rate with dp\_fric      |
+-------------------------------------------------------------------------+-----------------------+-------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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
      function interpolateInRegion2_withDerivative 
        "Interpolation in log-log space using a cubic Hermite polynomial, where x=log10(lambda2), y=log10(Re)"

        input Real lambda2 "Known independent variable";
        input SI.ReynoldsNumber Re1 
          "Boundary between laminar regime and transition";
        input SI.ReynoldsNumber Re2 
          "Boundary between transition and turbulent regime";
        input Real Delta "Relative roughness";
        input SI.Pressure dp_fric 
          "Pressure loss due to friction (dp = port_a.p - port_b.p)";
        output SI.ReynoldsNumber Re "Unknown return variable";
        output Real dRe_ddp "Derivative of return value";
        // point lg(lambda2(Re1)) with derivative at lg(Re1)
      protected 
        Real x1=log10(64*Re1);
        Real y1=log10(Re1);
        Real y1d=1;

        // Point lg(lambda2(Re2)) with derivative at lg(Re2)
        Real aux2=Delta/3.7 + 5.74/Re2^0.9;
        Real aux3=log10(aux2);
        Real L2=0.25*(Re2/aux3)^2;
        Real aux4=2.51/sqrt(L2) + 0.27*Delta;
        Real aux5=-2*sqrt(L2)*log10(aux4);
        Real x2=log10(L2);
        Real y2=log10(aux5);
        Real y2d=0.5 + (2.51/log(10))/(aux5*aux4);

        // Point of interest in transformed space
        Real x=log10(lambda2);
        Real y;
        Real dy_dx "Derivative in transformed space";
      algorithm 
        // Interpolation
        (y, dy_dx) := Utilities.cubicHermite_withDerivative(x, x1, x2, y1, y2, y1d, y2d);

        // Return value
        Re := 10^y;

        // Derivative of return value
        dRe_ddp := Re/abs(dp_fric)*dy_dx;
      end interpolateInRegion2_withDerivative;

      SI.DynamicViscosity mu "Upstream viscosity";
      SI.Density rho "Upstream density";
      Real lambda2 "Modified friction coefficient (= lambda*Re^2)";
      SI.ReynoldsNumber Re "Reynolds number";
      Real dRe_ddp "dRe/ddp";
      Real aux1;
      Real aux2;

    algorithm 
      // Determine upstream density and upstream viscosity
      if dp_fric >= 0 then
        rho := rho_a;
        mu  := mu_a;
      else
        rho := rho_b;
        mu  := mu_b;
      end if;

      // Positive mass flow rate
      lambda2 := abs(dp_fric)*2*diameter^3*rho/(length*mu*mu) 
        "Known as lambda2=f(dp)";

      aux1:=(2*diameter^3*rho)/(length*mu^2);

      // Determine Re and dRe/ddp under the assumption of laminar flow
      Re := lambda2/64 "Hagen-Poiseuille";
      dRe_ddp := aux1/64 "Hagen-Poiseuille";

      // Modify Re, if turbulent flow
      if Re > Re1 then
        Re :=-2*sqrt(lambda2)*log10(2.51/sqrt(lambda2) + 0.27*Delta) 
          "Colebrook-White";
        aux2 := sqrt(aux1*abs(dp_fric));
        dRe_ddp := 1/log(10)*(-2*log(2.51/aux2+0.27*Delta)*aux1/(2*aux2)+2*2.51/(2*abs(dp_fric)*(2.51/aux2+0.27*Delta)));
        if Re < Re2 then
          (Re, dRe_ddp) := interpolateInRegion2_withDerivative(lambda2, Re1, Re2, Delta, dp_fric);
        end if;
      end if;

      // Determine mass flow rate
      m_flow := (pi*diameter/4)*mu*(if dp_fric >= 0 then Re else -Re);
      // Determine derivative of mass flow rate with dp_fric
      dm_flow_ddp_fric := (pi*diameter*mu)/4*dRe_ddp;
    end m_flow_of_dp_fric;

--------------

`Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed_Internal.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal>`_.dp\_fric\_of\_m\_flow
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Calculate pressure drop due to friction as function of mass flow
rate**

Inputs
~~~~~~

+---------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------------+
| Type                                                                            | Name       | Default   | Description                                                      |
+=================================================================================+============+===========+==================================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_           | m\_flow    |           | Mass flow rate from port\_a to port\_b [kg/s]                    |
+---------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_a     |           | Density at port\_a [kg/m3]                                       |
+---------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_b     |           | Density at port\_b [kg/m3]                                       |
+---------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_a      |           | Dynamic viscosity at port\_a (dummy if use\_mu = false) [Pa.s]   |
+---------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_b      |           | Dynamic viscosity at port\_b (dummy if use\_mu = false) [Pa.s]   |
+---------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | length     |           | Length of pipe [m]                                               |
+---------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                   | diameter   |           | Inner (hydraulic) diameter of pipe [m]                           |
+---------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------------+
| `ReynoldsNumber <Modelica_SIunits.html#Modelica.SIunits.ReynoldsNumber>`_       | Re1        |           | Boundary between laminar regime and transition [1]               |
+---------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------------+
| `ReynoldsNumber <Modelica_SIunits.html#Modelica.SIunits.ReynoldsNumber>`_       | Re2        |           | Boundary between transition and turbulent regime [1]             |
+---------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------------+
| Real                                                                            | Delta      |           | Relative roughness                                               |
+---------------------------------------------------------------------------------+------------+-----------+------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+-----------------------+------------------------------------------------------------------------------------+
| Type                                                            | Name                  | Description                                                                        |
+=================================================================+=======================+====================================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | dp\_fric              | Pressure loss due to friction (dp\_fric = port\_a.p - port\_b.p - dp\_grav) [Pa]   |
+-----------------------------------------------------------------+-----------------------+------------------------------------------------------------------------------------+
| Real                                                            | ddp\_fric\_dm\_flow   | Derivative of pressure drop with mass flow rate                                    |
+-----------------------------------------------------------------+-----------------------+------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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
      function interpolateInRegion2 
        "Interpolation in log-log space using a cubic Hermite polynomial, where x=log10(Re), y=log10(lambda2)"

        input SI.ReynoldsNumber Re "Known independent variable";
        input SI.ReynoldsNumber Re1 
          "Boundary between laminar regime and transition";
        input SI.ReynoldsNumber Re2 
          "Boundary between transition and turbulent regime";
        input Real Delta "Relative roughness";
        input SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";
        output Real lambda2 "Unknown return value";
        output Real dlambda2_dm_flow "Derivative of return value";
        // point lg(lambda2(Re1)) with derivative at lg(Re1)
      protected 
        Real x1 = log10(Re1);
        Real y1 = log10(64*Re1);
        Real y1d = 1;

        // Point lg(lambda2(Re2)) with derivative at lg(Re2)
        Real aux2 = Delta/3.7 + 5.74/Re2^0.9;
        Real aux3 = log10(aux2);
        Real L2 = 0.25*(Re2/aux3)^2;
        Real x2 = log10(Re2);
        Real y2 = log10(L2);
        Real y2d = 2+(2*5.74*0.9)/(log(aux2)*Re2^0.9*aux2);

        // Point of interest in transformed space
        Real x=log10(Re);
        Real y;
        Real dy_dx "Derivative in transformed space";
      algorithm 
        // Interpolation
        (y, dy_dx) := Utilities.cubicHermite_withDerivative(x, x1, x2, y1, y2, y1d, y2d);

        // Return value
        lambda2 := 10^y;

        // Derivative of return value
        dlambda2_dm_flow := lambda2/abs(m_flow)*dy_dx;
      end interpolateInRegion2;

      SI.DynamicViscosity mu "Upstream viscosity";
      SI.Density rho "Upstream density";
      SI.ReynoldsNumber Re "Reynolds number";
      Real lambda2 "Modified friction coefficient (= lambda*Re^2)";
      Real dlambda2_dm_flow "dlambda2/dm_flow";
      Real aux1;
      Real aux2;

    algorithm 
      // Determine upstream density and upstream viscosity
      if m_flow >= 0 then
        rho := rho_a;
        mu  := mu_a;
      else
        rho := rho_b;
        mu  := mu_b;
      end if;

      // Determine Reynolds number
      Re :=(4/pi)*abs(m_flow)/(diameter*mu);

      aux1 := 4/(pi*diameter*mu);

      // Use correlation for lambda2 depending on actual conditions
      if Re <= Re1 then
        lambda2 := 64*Re "Hagen-Poiseuille";
        dlambda2_dm_flow := 64*aux1 "Hagen-Poiseuille";
      elseif Re >= Re2 then
        lambda2 := 0.25*(Re/log10(Delta/3.7 + 5.74/Re^0.9))^2 "Swamee-Jain";
        aux2 := Delta/3.7+5.74/((aux1*abs(m_flow))^0.9);
        dlambda2_dm_flow := 0.5*aux1*Re*log(10)^2*(1/(log(aux2)^2)+(5.74*0.9)/(log(aux2)^3*Re^0.9*aux2)) 
          "Swamee-Jain";
      else
        (lambda2, dlambda2_dm_flow) := interpolateInRegion2(Re, Re1, Re2, Delta, m_flow);
      end if;

      // Compute pressure drop from lambda2
      dp_fric :=length*mu*mu/(2*rho*diameter*diameter*diameter)*
           (if m_flow >= 0 then lambda2 else -lambda2);

      // Compute derivative from dlambda2/dm_flow
      ddp_fric_dm_flow := (length*mu^2)/(2*diameter^3*rho)*dlambda2_dm_flow;
    end dp_fric_of_m_flow;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:15
2010.

.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal.m\_flow\_of\_dp\_fric| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal.m_flow_of_dp_fricS.png
.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal.dp\_fric\_of\_m\_flow| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal.m_flow_of_dp_fricS.png
.. |image2| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal.m_flow_of_dp_fricS.png
.. |image3| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal.m_flow_of_dp_fricS.png
