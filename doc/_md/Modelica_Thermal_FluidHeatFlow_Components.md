% Modelica.Thermal.FluidHeatFlow.Components
% 
% 

[Modelica.Thermal.FluidHeatFlow](Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow).Components
===============================================================================================================

**Basic components (pipes, valves)**

Information
-----------

::

This package contains components:

-   pipe without heat exchange
-   pipe with heat exchange
-   valve (simple controlled valve)

Pressure drop is taken from partial model SimpleFriction.
  ~ Thermodynamic equations are defined in partial models (package

Partials).

**Main Authors:**
  ~ [Anton Haumer](http://www.haumer.at/)
      ~ Technical Consulting & Electrical Engineering A-3423
        St.Andrae-Woerdern, Austria email:
        [[a.haumer@haumer.at](mailto:a.haumer@haumer.at)](mailto:a.haumer@haumer.at)

    Dr. Christian Kral
      ~ [Austrian Institute of Technology, AIT](http://www.ait.ac.at/)
        Giefinggasse 2 A-1210 Vienna, Austria

Copyright © 1998-2010, Modelica Association, Anton Haumer and Austrian
Institute of Technology, AIT.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
[Modelica.UsersGuide.ModelicaLicense2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2)
or visit
[[http://www.modelica.org/licenses/ModelicaLicense2](http://www.modelica.org/licenses/ModelicaLicense2)](http://www.modelica.org/licenses/ModelicaLicense2).*

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                          Descriptio
                                                                n
  ------------------------------------------------------------- ----------
  ![image3](Modelica.Thermal.FluidHeatFlow.Components.IsolatedP Pipe
  ipeS.png)                                                     without
  [IsolatedPipe](Modelica_Thermal_FluidHeatFlow_Components.html heat
  #Modelica.Thermal.FluidHeatFlow.Components.IsolatedPipe)      exchange

  ![image4](Modelica.Thermal.FluidHeatFlow.Components.HeatedPip Pipe with
  eS.png)                                                       heat
  [HeatedPipe](Modelica_Thermal_FluidHeatFlow_Components.html#M exchange
  odelica.Thermal.FluidHeatFlow.Components.HeatedPipe)          

  ![image5](Modelica.Thermal.FluidHeatFlow.Components.ValveS.pn Simple
  g)                                                            valve
  [Valve](Modelica_Thermal_FluidHeatFlow_Components.html#Modeli 
  ca.Thermal.FluidHeatFlow.Components.Valve)                    
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Thermal.FluidHeatFlow.Components.IsolatedPipeI.png) [Modelica.Thermal.FluidHeatFlow.Components](Modelica_Thermal_FluidHeatFlow_Components.html#Modelica.Thermal.FluidHeatFlow.Components).IsolatedPipe
=========================================================================================================================================================================================================================

**Pipe without heat exchange**

Information
-----------

::

Pipe without heat exchange.
  ~ Thermodynamic equations are defined by Partials.TwoPortMass(Q\_flow
    =

0).
  ~ **Note:** Setting parameter m (mass of medium within pipe) to zero

leads to neglection of temperature transient cv\*m\*der(T).

::

Extends from
[Interfaces.Partials.TwoPort](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort)
(Partial model of two port),
[Interfaces.Partials.SimpleFriction](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.SimpleFriction)
(Simple friction model).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name  Default    Description
  ------------------------------- ----- ---------- -----------------------
  [Medium](Modelica_Thermal_Fluid mediu FluidHeatF Medium in the component
  HeatFlow_Media.html#Modelica.Th m     low.Media. 
  ermal.FluidHeatFlow.Media.Mediu       Medium()   
  m)                                               

  [Mass](Modelica_SIunits.html#Mo m                Mass of medium [kg]
  delica.SIunits.Mass)                             

  [Temperature](Modelica_SIunits. T0               Initial temperature of
  html#Modelica.SIunits.Temperatu                  medium [K]
  re)                                              

  Real                            tapT  1          Defines temperature of
                                                   heatPort between inlet
                                                   and outlet temperature

  [Length](Modelica_SIunits.html# h\_g             Geodetic height (heigth
  Modelica.SIunits.Length)                         difference from
                                                   flowPort\_a to
                                                   flowPort\_b) [m]

  Simple Friction                                  

  [VolumeFlowRate](Modelica_SIuni V\_fl            Laminar volume flow
  ts.html#Modelica.SIunits.Volume owLam            [m3/s]
  FlowRate)                       inar             

  [Pressure](Modelica_SIunits.htm dpLam            Laminar pressure drop
  l#Modelica.SIunits.Pressure)    inar             [Pa]

  [VolumeFlowRate](Modelica_SIuni V\_fl            Nominal volume flow
  ts.html#Modelica.SIunits.Volume owNom            [m3/s]
  FlowRate)                       inal             

  [Pressure](Modelica_SIunits.htm dpNom            Nominal pressure drop
  l#Modelica.SIunits.Pressure)    inal             [Pa]

  Real                            frict 0          Part of friction losses
                                  ionLo            fed to medium
                                  ss               
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_a    
  a)                                                               

  [FlowPort\_b](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_b    
  b)                                                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model IsolatedPipe "Pipe without heat exchange"

      extends Interfaces.Partials.TwoPort(final tapT=1);
      extends Interfaces.Partials.SimpleFriction;
      parameter Modelica.SIunits.Length h_g(start=0) 
        "Geodetic height (heigth difference from flowPort_a to flowPort_b)";
    equation 
      // coupling with FrictionModel
      volumeFlow = V_flow;
      dp = pressureDrop + medium.rho*Modelica.Constants.g_n*h_g;
      // no energy exchange with medium
      Q_flow = Q_friction;
    end IsolatedPipe;

* * * * *

![image7](Modelica.Thermal.FluidHeatFlow.Components.HeatedPipeI.png) [Modelica.Thermal.FluidHeatFlow.Components](Modelica_Thermal_FluidHeatFlow_Components.html#Modelica.Thermal.FluidHeatFlow.Components).HeatedPipe
=====================================================================================================================================================================================================================

**Pipe with heat exchange**

Information
-----------

::

Pipe with heat exchange.
  ~ Thermodynamic equations are defined by Partials.TwoPort. Q\_flow is
    defined by heatPort.Q\_flow. **Note:** Setting parameter m (mass of
    medium within pipe) to zero

leads to neglection of temperature transient cv\*m\*der(T).
  ~ **Note:** Injecting heat into a pipe with zero massflow causes

temperature rise defined by storing heat in medium's mass.

::

Extends from
[Interfaces.Partials.TwoPort](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort)
(Partial model of two port),
[Interfaces.Partials.SimpleFriction](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.SimpleFriction)
(Simple friction model).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name  Default    Description
  ------------------------------- ----- ---------- -----------------------
  [Medium](Modelica_Thermal_Fluid mediu FluidHeatF Medium in the component
  HeatFlow_Media.html#Modelica.Th m     low.Media. 
  ermal.FluidHeatFlow.Media.Mediu       Medium()   
  m)                                               

  [Mass](Modelica_SIunits.html#Mo m                Mass of medium [kg]
  delica.SIunits.Mass)                             

  [Temperature](Modelica_SIunits. T0               Initial temperature of
  html#Modelica.SIunits.Temperatu                  medium [K]
  re)                                              

  Real                            tapT  1          Defines temperature of
                                                   heatPort between inlet
                                                   and outlet temperature

  [Length](Modelica_SIunits.html# h\_g             Geodetic height (heigth
  Modelica.SIunits.Length)                         difference from
                                                   flowPort\_a to
                                                   flowPort\_b) [m]

  Simple Friction                                  

  [VolumeFlowRate](Modelica_SIuni V\_fl            Laminar volume flow
  ts.html#Modelica.SIunits.Volume owLam            [m3/s]
  FlowRate)                       inar             

  [Pressure](Modelica_SIunits.htm dpLam            Laminar pressure drop
  l#Modelica.SIunits.Pressure)    inar             [Pa]

  [VolumeFlowRate](Modelica_SIuni V\_fl            Nominal volume flow
  ts.html#Modelica.SIunits.Volume owNom            [m3/s]
  FlowRate)                       inal             

  [Pressure](Modelica_SIunits.htm dpNom            Nominal pressure drop
  l#Modelica.SIunits.Pressure)    inal             [Pa]

  Real                            frict 0          Part of friction losses
                                  ionLo            fed to medium
                                  ss               
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_a    
  a)                                                               

  [FlowPort\_b](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_b    
  b)                                                               

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.h heatPor 
  tml#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a) t       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model HeatedPipe "Pipe with heat exchange"

      extends Interfaces.Partials.TwoPort;
      extends Interfaces.Partials.SimpleFriction;
      parameter Modelica.SIunits.Length h_g(start=0) 
        "Geodetic height (heigth difference from flowPort_a to flowPort_b)";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort;
    equation 
      // coupling with FrictionModel
      volumeFlow = V_flow;
      dp = pressureDrop + medium.rho*Modelica.Constants.g_n*h_g;
      // energy exchange with medium
      Q_flow = heatPort.Q_flow + Q_friction;
      // defines heatPort's temperature
      heatPort.T = T_q;
    end HeatedPipe;

* * * * *

![image8](Modelica.Thermal.FluidHeatFlow.Components.ValveI.png) [Modelica.Thermal.FluidHeatFlow.Components](Modelica_Thermal_FluidHeatFlow_Components.html#Modelica.Thermal.FluidHeatFlow.Components).Valve
===========================================================================================================================================================================================================

**Simple valve**

Information
-----------

::

Simple controlled valve.
  ~ Standard characteristic Kv=*f*(y) is given at standard conditions
    (dp0,

rho0),
  ~ 

    * * * * *

-   either linear : Kv/Kv1 = Kv0/Kv1 + (1-Kv0/Kv1) \* y/Y1
-   or exponential: Kv/Kv1 = Kv0/Kv1 \* exp[log(Kv1/Kv0) \* y/Y1]

where:

-   Kv0 ... min. flow @ y = 0
-   Y1 .... max. valve opening
-   Kv1 ... max. flow @ y = Y1

Flow resistance under real conditions is calculated by
  ~ `V_flow**2 * rho / dp = Kv(y)**2 * rho0 / dp0`

::

Extends from
[Interfaces.Partials.TwoPort](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort)
(Partial model of two port).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name    Default    Description
  ------------------------------- ------- ---------- ----------------------
  [Medium](Modelica_Thermal_Fluid medium  FluidHeatF Medium in the
  HeatFlow_Media.html#Modelica.Th         low.Media. component
  ermal.FluidHeatFlow.Media.Mediu         Medium()   
  m)                                                 

  [Temperature](Modelica_SIunits. T0                 Initial temperature of
  html#Modelica.SIunits.Temperatu                    medium [K]
  re)                                                

  Real                            tapT    1          Defines temperature of
                                                     heatPort between inlet
                                                     and outlet temperature

  Real                            frictio            Part of friction
                                  nLoss              losses fed to medium

  Standard characteristic                            

  Boolean                         LinearC            Type of characteristic
                                  haracte            
                                  ristic             

  Real                            y1                 Max. valve opening

  [VolumeFlowRate](Modelica_SIuni Kv1                Max. flow @ y = y1
  ts.html#Modelica.SIunits.Volume                    [m3/s]
  FlowRate)                                          

  Real                            kv0                Leakage flow /
                                                     max.flow @ y = 0

  [Pressure](Modelica_SIunits.htm dp0                Standard pressure drop
  l#Modelica.SIunits.Pressure)                       [Pa]

  [Density](Modelica_SIunits.html rho0               Standard medium's
  #Modelica.SIunits.Density)                         density [kg/m3]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_a    
  a)                                                               

  [FlowPort\_b](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_b    
  b)                                                               

  input                                                    y       
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blo         
  cks.Interfaces.RealInput)                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Valve "Simple valve"

      extends Interfaces.Partials.TwoPort(m(start=0), final tapT=1);
      parameter Boolean LinearCharacteristic(start=true) "Type of characteristic";
      parameter Real y1(min=small, start=1) "Max. valve opening";
      parameter Modelica.SIunits.VolumeFlowRate Kv1(min=small, start=1) 
        "Max. flow @ y = y1";
      parameter Real kv0(min=small,max=1-small, start=0.01) 
        "Leakage flow / max.flow @ y = 0";
      parameter Modelica.SIunits.Pressure dp0(start=1) "Standard pressure drop";
      parameter Modelica.SIunits.Density rho0(start=10) "Standard medium's density";
      parameter Real frictionLoss(min=0, max=1, start=0) 
        "Part of friction losses fed to medium";
    protected 
      constant Modelica.SIunits.VolumeFlowRate unitVolumeFlowRate = 1;
      constant Real small = Modelica.Constants.small;
      constant Modelica.SIunits.VolumeFlowRate smallVolumeFlowRate = eps*unitVolumeFlowRate;
      constant Real eps = Modelica.Constants.eps;
      Real yLim = max(min(y,y1),0) "Limited valve opening";
      Modelica.SIunits.VolumeFlowRate Kv "Standard flow rate";
    public 
      Modelica.Blocks.Interfaces.RealInput y;
    initial algorithm 
      assert(y1>small, "Valve characteristic: y1 has to be > 0 !");
      assert(Kv1>smallVolumeFlowRate, "Valve characteristic: Kv1 has to be > 0 !");
      assert(kv0>small, "Valve characteristic: kv0 has to be > 0 !");
      assert(kv0<1-eps, "Valve characteristic: kv0 has to be < 1 !");
    equation 
      // evaluate standard characteristic
      Kv/Kv1 = if LinearCharacteristic then (kv0 + (1-kv0)*yLim/y1) else kv0*exp(Modelica.Math.log(1/kv0)*yLim/y1);
      // pressure drop under real conditions
      dp/dp0 = medium.rho/rho0*(V_flow/Kv)*abs(V_flow/Kv);
      // no energy exchange with medium
      Q_flow = frictionLoss*V_flow*dp;
    end Valve;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:43 2010.
