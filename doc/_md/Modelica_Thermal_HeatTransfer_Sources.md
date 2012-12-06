% Modelica.Thermal.HeatTransfer.Sources
% 
% 

[Modelica.Thermal.HeatTransfer](Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer).Sources
=========================================================================================================

**Thermal sources**

Information
-----------

::

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                     Description
  -------------------------------------------------------- ---------------
  ![image4](Modelica.Thermal.HeatTransfer.Sources.FixedTem Fixed
  peratureS.png)                                           temperature
  [FixedTemperature](Modelica_Thermal_HeatTransfer_Sources boundary
  .html#Modelica.Thermal.HeatTransfer.Sources.FixedTempera condition in
  ture)                                                    Kelvin

  ![image5](Modelica.Thermal.HeatTransfer.Sources.Prescrib Variable
  edTemperatureS.png)                                      temperature
  [PrescribedTemperature](Modelica_Thermal_HeatTransfer_So boundary
  urces.html#Modelica.Thermal.HeatTransfer.Sources.Prescri condition in
  bedTemperature)                                          Kelvin

  ![image6](Modelica.Thermal.HeatTransfer.Sources.FixedHea Fixed heat flow
  tFlowS.png)                                              boundary
  [FixedHeatFlow](Modelica_Thermal_HeatTransfer_Sources.ht condition
  ml#Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow)  

  ![image7](Modelica.Thermal.HeatTransfer.Sources.Prescrib Prescribed heat
  edHeatFlowS.png)                                         flow boundary
  [PrescribedHeatFlow](Modelica_Thermal_HeatTransfer_Sourc condition
  es.html#Modelica.Thermal.HeatTransfer.Sources.Prescribed 
  HeatFlow)                                                
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Thermal.HeatTransfer.Sources.FixedTemperatureI.png) [Modelica.Thermal.HeatTransfer.Sources](Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources).FixedTemperature
=================================================================================================================================================================================================================

**Fixed temperature boundary condition in Kelvin**

Information
-----------

::

This model defines a fixed temperature T at its port in Kelvin, i.e., it
defines a fixed temperature as a boundary condition.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                     Name  Defaul Description
                                                 t      
  ---------------------------------------- ----- ------ -------------------
  [Temperature](Modelica_SIunits.html#Mode T            Fixed temperature
  lica.SIunits.Temperature)                             at port [K]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.html port 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model FixedTemperature 
      "Fixed temperature boundary condition in Kelvin"

      parameter Modelica.SIunits.Temperature T "Fixed temperature at port";
      Interfaces.HeatPort_b port;
    equation 
      port.T = T;
    end FixedTemperature;

* * * * *

![image9](Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperatureI.png) [Modelica.Thermal.HeatTransfer.Sources](Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources).PrescribedTemperature
===========================================================================================================================================================================================================================

**Variable temperature boundary condition in Kelvin**

Information
-----------

::

This model represents a variable temperature boundary condition. The
temperature in [K] is given as input signal **T** to the model. The
effect is that an instance of this model acts as an infinite reservoir
able to absorb or generate as much energy as required to keep the
temperature at the specified value.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.html port 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)            

  input                                                       T    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks      
  .Interfaces.RealInput)                                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PrescribedTemperature 
      "Variable temperature boundary condition in Kelvin"

      Interfaces.HeatPort_b port;
      Modelica.Blocks.Interfaces.RealInput T;
    equation 
      port.T = T;
    end PrescribedTemperature;

* * * * *

![image10](Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlowI.png) [Modelica.Thermal.HeatTransfer.Sources](Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources).FixedHeatFlow
============================================================================================================================================================================================================

**Fixed heat flow boundary condition**

Information
-----------

::

This model allows a specified amount of heat flow rate to be "injected"
into a thermal system at a given port. The constant amount of heat flow
rate Q\_flow is given as a parameter. The heat flows into the component
to which the component FixedHeatFlow is connected, if parameter Q\_flow
is positive.

If parameter alpha is \> 0, the heat flow is mulitplied by (1 +
alpha\*(port.T - T\_ref)) in order to simulate temperature dependent
losses (which are given an reference temperature T\_ref).

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                                      Name Defa Description
                                                 ult  
  ----------------------------------------- ---- ---- --------------------
  [HeatFlowRate](Modelica_SIunits.html#Mode Q\_f      Fixed heat flow rate
  lica.SIunits.HeatFlowRate)                low       at port [W]

  [Temperature](Modelica_SIunits.html#Model T\_r 293. Reference
  ica.SIunits.Temperature)                  ef   15   temperature [K]

  [LinearTemperatureCoefficient](Modelica_S alph 0    Temperature
  Iunits.html#Modelica.SIunits.LinearTemper a         coefficient of heat
  atureCoefficient)                                   flow rate [1/K]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.html port 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model FixedHeatFlow "Fixed heat flow boundary condition"
      parameter Modelica.SIunits.HeatFlowRate Q_flow "Fixed heat flow rate at port";
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of heat flow rate";
      Interfaces.HeatPort_b port;
    equation 
      port.Q_flow = -Q_flow*(1 + alpha*(port.T - T_ref));
    end FixedHeatFlow;

* * * * *

![image11](Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlowI.png) [Modelica.Thermal.HeatTransfer.Sources](Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources).PrescribedHeatFlow
======================================================================================================================================================================================================================

**Prescribed heat flow boundary condition**

Information
-----------

::

This model allows a specified amount of heat flow rate to be "injected"
into a thermal system at a given port. The amount of heat is given by
the input signal Q\_flow into the model. The heat flows into the
component to which the component PrescribedHeatFlow is connected, if the
input signal is positive.

If parameter alpha is \> 0, the heat flow is mulitplied by (1 +
alpha\*(port.T - T\_ref)) in order to simulate temperature dependent
losses (which are given an reference temperature T\_ref).

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name Defa Description
                                                  ult  
  ------------------------------------------ ---- ---- --------------------
  [Temperature](Modelica_SIunits.html#Modeli T\_r 293. Reference
  ca.SIunits.Temperature)                    ef   15   temperature [K]

  [LinearTemperatureCoefficient](Modelica_SI alph 0    Temperature
  units.html#Modelica.SIunits.LinearTemperat a         coefficient of heat
  ureCoefficient)                                      flow rate [1/K]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  input                                                      Q\_fl 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Block ow    
  s.Interfaces.RealInput)                                          

  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.htm port  
  l#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)           
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model PrescribedHeatFlow "Prescribed heat flow boundary condition"
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of heat flow rate";
      Modelica.Blocks.Interfaces.RealInput Q_flow;
      Interfaces.HeatPort_b port;
    equation 
      port.Q_flow = -Q_flow*(1 + alpha*(port.T - T_ref));
    end PrescribedHeatFlow;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:46 2010.
