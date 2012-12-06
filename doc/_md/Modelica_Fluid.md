% Modelica.Fluid
% 
% 

[Modelica](Modelica.html#Modelica).Fluid
========================================

**Library of 1-dim. thermo-fluid flow models using the Modelica.Media
media description**

Information
-----------

::

Library **Modelica.Fluid** is a **free** Modelica package providing
components for **1-dimensional thermo-fluid flow** in networks of
vessels, pipes, fluid machines, valves and fittings. A unique feature is
that the component equations and the media models as well as pressure
loss and heat transfer correlations are decoupled from each other. All
components are implemented such that they can be used for media from the
Modelica.Media library. This means especially that an incompressible or
compressible medium, a single or a multiple substance medium with one or
more phases might be used.

In the next figure, several features of the library are demonstrated
with a simple heating system with a closed flow cycle. By just changing
one configuration parameter in the system object the equations are
changed between steady-state and dynamic simulation with fixed or
steady-state initial conditions.

With respect to previous versions, the design of the connectors has been
changed in a non-backward compatible way, using the recently developed
concept of stream connectors that results in much more reliable
simulations (see also Stream-Connectors-Overview-Rationale.pdf). This
extension was included in Modelica 3.1. As of Jan. 2009, the stream
concept is supported in Dymola 7.1. It is recommended to use Dymola 7.2
(available since Feb. 2009), or a later Dymola version, since this
version supports a new annotation to connect very conveniently to
vectors of connectors. Other tool vendors will support the stream
concept as well.

The following parts are useful, when newly starting with this library:

-   [Modelica.Fluid.UsersGuide](Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide).
-   [Modelica.Fluid.UsersGuide.ReleaseNotes](Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide.ReleaseNotes)
    summarizes the changes of the library releases.
-   [Modelica.Fluid.Examples](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples)
    contains examples that demonstrate the usage of this library.

**Licensed by the Modelica Association under the Modelica License 2**
  ~ Copyright © 2002-2010, ABB, DLR, Dassault Systèmes AB, Modelon, TU

Braunschweig, TU Hamburg-Harburg, Politecnico di Milano.

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
  Name                                Description
  ----------------------------------- ------------------------------------
  ![image15](Modelica.Fluid.UsersGuid User's Guide
  eS.png)                             
  [UsersGuide](Modelica_Fluid_UsersGu 
  ide.html#Modelica.Fluid.UsersGuide) 

  ![image16](Modelica.Fluid.ExamplesS Demonstration of the usage of the
  .png)                               library
  [Examples](Modelica_Fluid_Examples. 
  html#Modelica.Fluid.Examples)       

  ![image17](Modelica.Fluid.SystemS.p System properties and default values
  ng)                                 (ambient, flow direction,
  [System](Modelica_Fluid.html#Modeli initialization)
  ca.Fluid.System)                    

  ![image18](Modelica.Fluid.VesselsS. Devices for storing fluid
  png)                                
  [Vessels](Modelica_Fluid_Vessels.ht 
  ml#Modelica.Fluid.Vessels)          

  ![image19](Modelica.Fluid.VesselsS. Devices for conveying fluid
  png)                                
  [Pipes](Modelica_Fluid_Pipes.html#M 
  odelica.Fluid.Pipes)                

  ![image20](Modelica.Fluid.VesselsS. Devices for converting between
  png)                                energy held in a fluid and
  [Machines](Modelica_Fluid_Machines. mechanical energy
  html#Modelica.Fluid.Machines)       

  ![image21](Modelica.Fluid.VesselsS. Components for the regulation and
  png)                                control of fluid flow
  [Valves](Modelica_Fluid_Valves.html 
  #Modelica.Fluid.Valves)             

  ![image22](Modelica.Fluid.VesselsS. Adaptors for connections of fluid
  png)                                components and the regulation of
  [Fittings](Modelica_Fluid_Fittings. fluid flow
  html#Modelica.Fluid.Fittings)       

  ![image23](Modelica.Fluid.SourcesS. Define fixed or prescribed boundary
  png)                                conditions
  [Sources](Modelica_Fluid_Sources.ht 
  ml#Modelica.Fluid.Sources)          

  ![image24](Modelica.Fluid.SensorsS. Ideal sensor components to extract
  png)                                signals from a fluid connector
  [Sensors](Modelica_Fluid_Sensors.ht 
  ml#Modelica.Fluid.Sensors)          

  ![image25](Modelica.Fluid.Interface Interfaces for steady state and
  sS.png)                             unsteady, mixed-phase,
  [Interfaces](Modelica_Fluid_Interfa multi-substance, incompressible and
  ces.html#Modelica.Fluid.Interfaces) compressible flow

  ![image26](Modelica.Fluid.TypesS.pn Common types for fluid models
  g)                                  
  [Types](Modelica_Fluid_Types.html#M 
  odelica.Fluid.Types)                

  ![image27](Modelica.Fluid.TypesS.pn Functions for convective heat
  g)                                  transfer and pressure loss
  [Dissipation](Modelica_Fluid_Dissip characteristics
  ation.html#Modelica.Fluid.Dissipati 
  on)                                 

  ![image28](Modelica.Fluid.TypesS.pn Utility models to construct fluid
  g)                                  components (should not be used
  [Utilities](Modelica_Fluid_Utilitie directly)
  s.html#Modelica.Fluid.Utilities)    

  ![image29](Modelica.Fluid.TypesS.pn 
  g)                                  
  [Icons](Modelica_Fluid_Icons.html#M 
  odelica.Fluid.Icons)                
  ------------------------------------------------------------------------

* * * * *

![image30](Modelica.Fluid.SystemI.png) [Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid).System
==================================================================================================

**System properties and default values (ambient, flow direction,
initialization)**

Information
-----------

::

A system component is needed in each fluid model to provide system-wide
settings, such as ambient conditions and overall modeling assumptions.
The system settings are propagated to the fluid models using the
inner/outer mechanism.

A model should never directly use system parameters. Instead a local
parameter should be declared, which uses the global setting as default.
The only exception currently made is the gravity system.g.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                       Name    Default     Description
  -------------------------- ------- ----------- --------------------------
  Environment                                    

  [AbsolutePressure](Modelic p\_ambi 101325      Default ambient pressure
  a_SIunits.html#Modelica.SI ent                 [Pa]
  units.AbsolutePressure)                        

  [Temperature](Modelica_SIu T\_ambi 293.15      Default ambient
  nits.html#Modelica.SIunits ent                 temperature [K]
  .Temperature)                                  

  [Acceleration](Modelica_SI g       Modelica.Co Constant gravity
  units.html#Modelica.SIunit         nstants.g\_ acceleration [m/s2]
  s.Acceleration)                    n           

  **Assumptions**                                

  Boolean                    allowFl true        = false to restrict to
                             owRever             design flow direction
                             sal                 (port\_a -\> port\_b)

  Dynamics                                       

  [Dynamics](Modelica_Fluid_ energyD Modelica.Fl Default formulation of
  Types.html#Modelica.Fluid. ynamics uid.Types.D energy balances
  Types.Dynamics)                    ynamic...   

  [Dynamics](Modelica_Fluid_ massDyn energyDynam Default formulation of
  Types.html#Modelica.Fluid. amics   ics         mass balances
  Types.Dynamics)                                

  [Dynamics](Modelica_Fluid_ momentu Modelica.Fl Default formulation of
  Types.html#Modelica.Fluid. mDynami uid.Types.D momentum balances, if
  Types.Dynamics)            cs      ynamic...   options available

  **Initialization**                             

  [MassFlowRate](Modelica_SI m\_flow 0           Default start value for
  units.html#Modelica.SIunit \_start             mass flow rates [kg/s]
  s.MassFlowRate)                                

  [AbsolutePressure](Modelic p\_star p\_ambient  Default start value for
  a_SIunits.html#Modelica.SI t                   pressures [Pa]
  units.AbsolutePressure)                        

  [Temperature](Modelica_SIu T\_star T\_ambient  Default start value for
  nits.html#Modelica.SIunits t                   temperatures [K]
  .Temperature)                                  

  **Advanced**                                   

  [MassFlowRate](Modelica_SI m\_flow 0.01        Default small laminar mass
  units.html#Modelica.SIunit \_small             flow rate for
  s.MassFlowRate)                                regularization of zero
                                                 flow [kg/s]

  [AbsolutePressure](Modelic dp\_sma 1           Default small pressure
  a_SIunits.html#Modelica.SI ll                  drop for regularization of
  units.AbsolutePressure)                        laminar and zero flow [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model System 
      "System properties and default values (ambient, flow direction, initialization)"

      package Medium = Modelica.Media.Interfaces.PartialMedium 
        "Medium model for default start values";
      parameter Modelica.SIunits.AbsolutePressure p_ambient=101325 
        "Default ambient pressure";
      parameter Modelica.SIunits.Temperature T_ambient=293.15 
        "Default ambient temperature";
      parameter Modelica.SIunits.Acceleration g=Modelica.Constants.g_n 
        "Constant gravity acceleration";

      // Assumptions
      parameter Boolean allowFlowReversal = true 
        "= false to restrict to design flow direction (port_a -> port_b)";
      parameter Modelica.Fluid.Types.Dynamics energyDynamics=
        Modelica.Fluid.Types.Dynamics.DynamicFreeInitial 
        "Default formulation of energy balances";
      parameter Modelica.Fluid.Types.Dynamics massDynamics=
        energyDynamics "Default formulation of mass balances";
      final parameter Modelica.Fluid.Types.Dynamics substanceDynamics=
        massDynamics "Default formulation of substance balances";
      final parameter Modelica.Fluid.Types.Dynamics traceDynamics=
        massDynamics "Default formulation of trace substance balances";
      parameter Modelica.Fluid.Types.Dynamics momentumDynamics=
        Modelica.Fluid.Types.Dynamics.SteadyState 
        "Default formulation of momentum balances, if options available";

      // Initialization
      parameter Modelica.SIunits.MassFlowRate m_flow_start = 0 
        "Default start value for mass flow rates";
      parameter Modelica.SIunits.AbsolutePressure p_start = p_ambient 
        "Default start value for pressures";
      parameter Modelica.SIunits.Temperature T_start = T_ambient 
        "Default start value for temperatures";

      // Advanced
      parameter Modelica.SIunits.MassFlowRate m_flow_small(min=0) = 0.01 
        "Default small laminar mass flow rate for regularization of zero flow";
      parameter Modelica.SIunits.AbsolutePressure dp_small(min=0) = 1 
        "Default small pressure drop for regularization of laminar and zero flow";


    end System;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:52 2010.
