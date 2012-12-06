% Modelica.Thermal.FluidHeatFlow.Interfaces
% 
% 

[Modelica.Thermal.FluidHeatFlow](Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow).Interfaces
===============================================================================================================

**Connectors and partial models**

Information
-----------

::

This package contains connectors and partial models:

-   FlowPort: basic definition of the connector.
-   FlowPort\_a & FlowPort\_b: same as FlowPort with different icons to
    differentiate direction of flow
-   package Partials (defining basic thermodynamic equations)

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
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                        Description
  ----------------------------------------------------------- ------------
  ![image4](Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPor Connector
  tS.png)                                                     flow port
  [FlowPort](Modelica_Thermal_FluidHeatFlow_Interfaces.html#M 
  odelica.Thermal.FluidHeatFlow.Interfaces.FlowPort)          

  ![image5](Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPor Filled flow
  t_aS.png)                                                   port (used
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces.htm upstream)
  l#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a)     

  ![image6](Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPor Hollow flow
  t_bS.png)                                                   port (used
  [FlowPort\_b](Modelica_Thermal_FluidHeatFlow_Interfaces.htm downstream)
  l#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b)     

  ![image7](Modelica.Thermal.FluidHeatFlow.Interfaces.Partial Partial
  sS.png)                                                     models
  [Partials](Modelica_Thermal_FluidHeatFlow_Interfaces_Partia 
  ls.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials) 
  ------------------------------------------------------------------------

* * * * *

[Modelica.Thermal.FluidHeatFlow.Interfaces](Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces).FlowPort
==============================================================================================================================================

**Connector flow port**

Information
-----------

::

Basic definition of the connector.
  ~ **Variables:**

-   Pressure p
-   flow MassFlowRate m\_flow
-   Specific Enthalpy h
-   flow EnthaplyFlowRate H\_flow

If ports with different media are connected, the simulation is asserted
due to the check of parameter.

::

Parameters
----------

  --------------------------------------------------------------------------
  Type                                             Name  Defau Description
                                                         lt    
  ------------------------------------------------ ----- ----- -------------
  [Medium](Modelica_Thermal_FluidHeatFlow_Media.ht mediu       Medium in the
  ml#Modelica.Thermal.FluidHeatFlow.Media.Medium)  m           connector
  --------------------------------------------------------------------------

Contents
--------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Medium](Modelica_Thermal_FluidHeatFlow_Media.html# medium Medium in the
  Modelica.Thermal.FluidHeatFlow.Media.Medium)               connector

  [Pressure](Modelica_SIunits.html#Modelica.SIunits.P p      [Pa]
  ressure)                                                   

  flow                                                m\_flo [kg/s]
  [MassFlowRate](Modelica_SIunits.html#Modelica.SIuni w      
  ts.MassFlowRate)                                           

  [SpecificEnthalpy](Modelica_SIunits.html#Modelica.S h      [J/kg]
  Iunits.SpecificEnthalpy)                                   

  flow                                                H\_flo [W]
  [EnthalpyFlowRate](Modelica_SIunits.html#Modelica.S w      
  Iunits.EnthalpyFlowRate)                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FlowPort "Connector flow port"

      parameter FluidHeatFlow.Media.Medium medium "Medium in the connector";
      Modelica.SIunits.Pressure p;
      flow Modelica.SIunits.MassFlowRate m_flow;
      Modelica.SIunits.SpecificEnthalpy h;
      flow Modelica.SIunits.EnthalpyFlowRate H_flow;
    end FlowPort;

* * * * *

![image8](Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_aI.png) [Modelica.Thermal.FluidHeatFlow.Interfaces](Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces).FlowPort\_a
======================================================================================================================================================================================================================

**Filled flow port (used upstream)**

Information
-----------

::

Same as FlowPort, but icon allows to differentiate direction of flow.

::

Extends from
[FlowPort](Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort)
(Connector flow port).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                             Name  Defau Description
                                                         lt    
  ------------------------------------------------ ----- ----- -------------
  [Medium](Modelica_Thermal_FluidHeatFlow_Media.ht mediu       Medium in the
  ml#Modelica.Thermal.FluidHeatFlow.Media.Medium)  m           connector
  --------------------------------------------------------------------------

Contents
--------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Medium](Modelica_Thermal_FluidHeatFlow_Media.html# medium Medium in the
  Modelica.Thermal.FluidHeatFlow.Media.Medium)               connector

  [Pressure](Modelica_SIunits.html#Modelica.SIunits.P p      [Pa]
  ressure)                                                   

  flow                                                m\_flo [kg/s]
  [MassFlowRate](Modelica_SIunits.html#Modelica.SIuni w      
  ts.MassFlowRate)                                           

  [SpecificEnthalpy](Modelica_SIunits.html#Modelica.S h      [J/kg]
  Iunits.SpecificEnthalpy)                                   

  flow                                                H\_flo [W]
  [EnthalpyFlowRate](Modelica_SIunits.html#Modelica.S w      
  Iunits.EnthalpyFlowRate)                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FlowPort_a "Filled flow port (used upstream)"

      extends FlowPort;
    end FlowPort_a;

* * * * *

![image9](Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_bI.png) [Modelica.Thermal.FluidHeatFlow.Interfaces](Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces).FlowPort\_b
======================================================================================================================================================================================================================

**Hollow flow port (used downstream)**

Information
-----------

::

Same as FlowPort, but icon allows to differentiate direction of flow.

::

Extends from
[FlowPort](Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort)
(Connector flow port).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                             Name  Defau Description
                                                         lt    
  ------------------------------------------------ ----- ----- -------------
  [Medium](Modelica_Thermal_FluidHeatFlow_Media.ht mediu       Medium in the
  ml#Modelica.Thermal.FluidHeatFlow.Media.Medium)  m           connector
  --------------------------------------------------------------------------

Contents
--------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Medium](Modelica_Thermal_FluidHeatFlow_Media.html# medium Medium in the
  Modelica.Thermal.FluidHeatFlow.Media.Medium)               connector

  [Pressure](Modelica_SIunits.html#Modelica.SIunits.P p      [Pa]
  ressure)                                                   

  flow                                                m\_flo [kg/s]
  [MassFlowRate](Modelica_SIunits.html#Modelica.SIuni w      
  ts.MassFlowRate)                                           

  [SpecificEnthalpy](Modelica_SIunits.html#Modelica.S h      [J/kg]
  Iunits.SpecificEnthalpy)                                   

  flow                                                H\_flo [W]
  [EnthalpyFlowRate](Modelica_SIunits.html#Modelica.S w      
  Iunits.EnthalpyFlowRate)                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FlowPort_b "Hollow flow port (used downstream)"

      extends FlowPort;
    end FlowPort_b;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:44 2010.
