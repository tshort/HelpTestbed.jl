% Modelica.Thermal.FluidHeatFlow.Interfaces.Partials
% 
% 

[Modelica.Thermal.FluidHeatFlow.Interfaces](Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces).Partials
==============================================================================================================================================

**Partial models**

Information
-----------

::

This package contains partial models, defining in a very compact way the
basic thermodynamic equations used by the different components.

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
  [SimpleFriction](Modelica_Thermal_FluidHeatFlow_Interfaces_Pa Simple
  rtials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partial friction
  s.SimpleFriction)                                             model

  ![image5](Modelica.Thermal.FluidHeatFlow.Interfaces.Partials. Partial
  TwoPortS.png)                                                 model of
  [TwoPort](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials. two port
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPo 
  rt)                                                           

  ![image6](Modelica.Thermal.FluidHeatFlow.Interfaces.Partials. Partial
  AmbientS.png)                                                 model of
  [Ambient](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials. ambient
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.Ambie 
  nt)                                                           

  ![image7](Modelica.Thermal.FluidHeatFlow.Interfaces.Partials. Partial
  AbsoluteSensorS.png)                                          model of
  [AbsoluteSensor](Modelica_Thermal_FluidHeatFlow_Interfaces_Pa absolute
  rtials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partial sensor
  s.AbsoluteSensor)                                             

  ![image8](Modelica.Thermal.FluidHeatFlow.Interfaces.Partials. Partial
  RelativeSensorS.png)                                          model of
  [RelativeSensor](Modelica_Thermal_FluidHeatFlow_Interfaces_Pa relative
  rtials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partial sensor
  s.RelativeSensor)                                             

  ![image9](Modelica.Thermal.FluidHeatFlow.Interfaces.Partials. Partial
  RelativeSensorS.png)                                          model of
  [FlowSensor](Modelica_Thermal_FluidHeatFlow_Interfaces_Partia flow
  ls.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.Fl sensor
  owSensor)                                                     
  ------------------------------------------------------------------------

* * * * *

[Modelica.Thermal.FluidHeatFlow.Interfaces.Partials](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials).SimpleFriction
===============================================================================================================================================================================

**Simple friction model**

Information
-----------

::

Definition of relationship between pressure drop and volume flow rate:
  ~ -V\_flowLaminar < VolumeFlow < +V\_flowLaminar: laminar i.e., linear

dependency of pressure drop on volume flow.
  ~ -V\_flowLaminar \> VolumeFlow or VolumeFlow < +V\_flowLaminar:
    turbulent

i.e., quadratic dependency of pressure drop on volume flow.
  ~ Linear and quadratic dependency are coupled smoothly at
    V\_flowLaminar

/ dpLaminar.
  ~ Quadratic dependency is defined by nominal volume flow and pressure

drop (V\_flowNominal / dpNominal).
  ~ See also sketch at diagram layer.

::

Parameters
----------

  --------------------------------------------------------------------------
  Type                                  Name      Defau Description
                                                  lt    
  ------------------------------------- --------- ----- --------------------
  Simple Friction                                       

  [VolumeFlowRate](Modelica_SIunits.htm V\_flowLa       Laminar volume flow
  l#Modelica.SIunits.VolumeFlowRate)    minar           [m3/s]

  [Pressure](Modelica_SIunits.html#Mode dpLaminar       Laminar pressure
  lica.SIunits.Pressure)                                drop [Pa]

  [VolumeFlowRate](Modelica_SIunits.htm V\_flowNo       Nominal volume flow
  l#Modelica.SIunits.VolumeFlowRate)    minal           [m3/s]

  [Pressure](Modelica_SIunits.html#Mode dpNominal       Nominal pressure
  lica.SIunits.Pressure)                                drop [Pa]

  Real                                  frictionL 0     Part of friction
                                        oss             losses fed to medium
  --------------------------------------------------------------------------

Modelica definition
-------------------

    partial model SimpleFriction "Simple friction model"

      parameter Modelica.SIunits.VolumeFlowRate V_flowLaminar(min=Modelica.Constants.small, start=0.1) 
        "Laminar volume flow";
      parameter Modelica.SIunits.Pressure dpLaminar(start=0.1) 
        "Laminar pressure drop";
      parameter Modelica.SIunits.VolumeFlowRate V_flowNominal(start=1) 
        "Nominal volume flow";
      parameter Modelica.SIunits.Pressure dpNominal(start=1) 
        "Nominal pressure drop";
      parameter Real frictionLoss(min=0, max=1) = 0 
        "Part of friction losses fed to medium";
      Modelica.SIunits.Pressure pressureDrop;
      Modelica.SIunits.VolumeFlowRate volumeFlow;
      Modelica.SIunits.Power Q_friction;
    protected 
      parameter Modelica.SIunits.Pressure dpNomMin=dpLaminar/V_flowLaminar*V_flowNominal;
      parameter Real k(final unit="Pa.s2/m6", fixed=false);
    initial algorithm 
      assert(V_flowNominal>V_flowLaminar,
        "SimpleFriction: V_flowNominal has to be > V_flowLaminar!");
      assert(dpNominal>=dpNomMin,
        "SimpleFriction: dpNominal has to be > dpLaminar/V_flowLaminar*V_flowNominal!");
      k:=(dpNominal - dpNomMin)/(V_flowNominal - V_flowLaminar)^2;
    equation 
      if     volumeFlow > +V_flowLaminar then
        pressureDrop = +dpLaminar/V_flowLaminar*volumeFlow + k*(volumeFlow - V_flowLaminar)^2;
      elseif volumeFlow < -V_flowLaminar then
        pressureDrop = +dpLaminar/V_flowLaminar*volumeFlow - k*(volumeFlow + V_flowLaminar)^2;
      else
        pressureDrop =  dpLaminar/V_flowLaminar*volumeFlow;
      end if;
      Q_friction = frictionLoss*volumeFlow*pressureDrop;
    end SimpleFriction;

* * * * *

![image10](Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPortI.png) [Modelica.Thermal.FluidHeatFlow.Interfaces.Partials](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials).TwoPort
====================================================================================================================================================================================================================================================

**Partial model of two port**

Information
-----------

::

Partial model with two flowPorts.
  ~ Possible heat exchange with the ambient is defined by Q\_flow;
    setting

this = 0 means no energy exchange.
  ~ Setting parameter m (mass of medium within pipe) to zero leads to

neglection of temperature transient cv\*m\*der(T).
  ~ Mixing rule is applied. Parameter 0 < tapT < 1 defines temperature
    of heatPort between medium's

inlet and outlet temperature.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Nam Default    Description
                                    e              
  --------------------------------- --- ---------- ------------------------
  [Medium](Modelica_Thermal_FluidHe med FluidHeatF Medium in the component
  atFlow_Media.html#Modelica.Therma ium low.Media. 
  l.FluidHeatFlow.Media.Medium)         Medium()   

  [Mass](Modelica_SIunits.html#Mode m              Mass of medium [kg]
  lica.SIunits.Mass)                               

  [Temperature](Modelica_SIunits.ht T0             Initial temperature of
  ml#Modelica.SIunits.Temperature)                 medium [K]

  Real                              tap 1          Defines temperature of
                                    T              heatPort between inlet
                                                   and outlet temperature
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
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model TwoPort "Partial model of two port"

      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "Medium in the component";
      parameter Modelica.SIunits.Mass m(start=1) "Mass of medium";
      parameter Modelica.SIunits.Temperature T0(start=293.15, displayUnit="degC") 
        "Initial temperature of medium";
      parameter Real tapT(final min=0, final max=1)=1 
        "Defines temperature of heatPort between inlet and outlet temperature";
      Modelica.SIunits.Pressure dp=flowPort_a.p - flowPort_b.p "Pressure drop a->b";
      Modelica.SIunits.VolumeFlowRate V_flow=flowPort_a.m_flow/medium.rho 
        "Volume flow a->b";
      Modelica.SIunits.HeatFlowRate Q_flow "Heat exchange with ambient";
      output Modelica.SIunits.Temperature T(start=T0) 
        "Outlet temperature of medium";
      output Modelica.SIunits.Temperature T_a=flowPort_a.h/medium.cp 
        "Temperature at flowPort_a";
      output Modelica.SIunits.Temperature T_b=flowPort_b.h/medium.cp 
        "Temperature at flowPort_b";
      output Modelica.SIunits.TemperatureDifference dT=if noEvent(V_flow>=0) then T-T_a else T_b-T 
        "Temperature increase of coolant in flow direction";
    protected 
      Modelica.SIunits.SpecificEnthalpy h = medium.cp*T 
        "Medium's specific enthalpy";
      Modelica.SIunits.Temperature T_q = T  - noEvent(sign(V_flow))*(1 - tapT)*dT 
        "Temperature relevant for heat exchange with ambient";
    public 
      Interfaces.FlowPort_a flowPort_a(final medium=medium);
      Interfaces.FlowPort_b flowPort_b(final medium=medium);
    equation 
      // mass balance
      flowPort_a.m_flow + flowPort_b.m_flow = 0;
      // energy balance
      if m>Modelica.Constants.small then
        flowPort_a.H_flow + flowPort_b.H_flow + Q_flow = m*medium.cv*der(T);
      else
        flowPort_a.H_flow + flowPort_b.H_flow + Q_flow = 0;
      end if;
      // massflow a->b mixing rule at a, energy flow at b defined by medium's temperature
      // massflow b->a mixing rule at b, energy flow at a defined by medium's temperature
      flowPort_a.H_flow = semiLinear(flowPort_a.m_flow,flowPort_a.h,h);
      flowPort_b.H_flow = semiLinear(flowPort_b.m_flow,flowPort_b.h,h);
    end TwoPort;

* * * * *

![image11](Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.AmbientI.png) [Modelica.Thermal.FluidHeatFlow.Interfaces.Partials](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials).Ambient
====================================================================================================================================================================================================================================================

**Partial model of ambient**

Information
-----------

::

Partial model of (Infinite) ambient, defines pressure and temperature.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                         Name Default        Descript
                                                                   ion
  -------------------------------------------- ---- -------------- --------
  [Medium](Modelica_Thermal_FluidHeatFlow_Medi medi FluidHeatFlow. Ambient
  a.html#Modelica.Thermal.FluidHeatFlow.Media. um   Media.Medium() medium
  Medium)                                                          
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces.ht flowPo 
  ml#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a)   rt     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model Ambient "Partial model of ambient"

      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "Ambient medium";
      output Modelica.SIunits.Temperature T "Outlet temperature of medium";
      output Modelica.SIunits.Temperature T_port=flowPort.h/medium.cp 
        "Temperature at flowPort_a";
    protected 
      Modelica.SIunits.SpecificEnthalpy h = medium.cp*T;
    public 
      Interfaces.FlowPort_a flowPort(final medium=medium);
    equation 
      // massflow -> ambient: mixing rule
      // massflow <- ambient: energy flow defined by ambient's temperature
      flowPort.H_flow = semiLinear(flowPort.m_flow,flowPort.h,h);
    end Ambient;

* * * * *

![image12](Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.AbsoluteSensorI.png) [Modelica.Thermal.FluidHeatFlow.Interfaces.Partials](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials).AbsoluteSensor
==================================================================================================================================================================================================================================================================

**Partial model of absolute sensor**

Information
-----------

::

Partial model for an absolute sensor (pressure/temperature).
  ~ Pressure, mass flow, temperature and enthalpy flow of medium are not

affected.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                         Name Default        Descript
                                                                   ion
  -------------------------------------------- ---- -------------- --------
  [Medium](Modelica_Thermal_FluidHeatFlow_Medi medi FluidHeatFlow. Sensor's
  a.html#Modelica.Thermal.FluidHeatFlow.Media. um   Media.Medium() medium
  Medium)                                                          
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces.ht flowPo 
  ml#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a)   rt     

  output                                                     y      
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bloc        
  ks.Interfaces.RealOutput)                                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model AbsoluteSensor "Partial model of absolute sensor"

      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "Sensor's medium";
      Interfaces.FlowPort_a flowPort(final medium=medium);
      Modelica.Blocks.Interfaces.RealOutput y;
    equation 
      // no mass exchange
      flowPort.m_flow = 0;
      // no energy exchange
      flowPort.H_flow = 0;
    end AbsoluteSensor;

* * * * *

![image13](Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.RelativeSensorI.png) [Modelica.Thermal.FluidHeatFlow.Interfaces.Partials](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials).RelativeSensor
==================================================================================================================================================================================================================================================================

**Partial model of relative sensor**

Information
-----------

::

Partial model for a relative sensor (pressure drop/temperature
difference). Pressure, mass flow, temperature and enthalpy flow of
medium are not affected.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                         Name Default        Descript
                                                                   ion
  -------------------------------------------- ---- -------------- --------
  [Medium](Modelica_Thermal_FluidHeatFlow_Medi medi FluidHeatFlow. Sensor's
  a.html#Modelica.Thermal.FluidHeatFlow.Media. um   Media.Medium() medium
  Medium)                                                          
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

  output                                                   y       
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bl         
  ocks.Interfaces.RealOutput)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model RelativeSensor "Partial model of relative sensor"

      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "Sensor's medium";
      Interfaces.FlowPort_a flowPort_a(final medium=medium);
      Interfaces.FlowPort_b flowPort_b(final medium=medium);
      Modelica.Blocks.Interfaces.RealOutput y;
    equation 
      // no mass exchange
      flowPort_a.m_flow = 0;
      flowPort_b.m_flow = 0;
      // no energy exchange
      flowPort_a.H_flow = 0;
      flowPort_b.H_flow = 0;
    end RelativeSensor;

* * * * *

![image14](Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.RelativeSensorI.png) [Modelica.Thermal.FluidHeatFlow.Interfaces.Partials](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials).FlowSensor
==============================================================================================================================================================================================================================================================

**Partial model of flow sensor**

Information
-----------

::

Partial model for a flow sensor (mass flow/heat flow).
  ~ Pressure, mass flow, temperature and enthalpy flow of medium are not

affected, but mixing rule is applied.

::

Extends from
[TwoPort](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort)
(Partial model of two port).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Nam Default    Description
                                    e              
  --------------------------------- --- ---------- ------------------------
  [Medium](Modelica_Thermal_FluidHe med FluidHeatF Medium in the component
  atFlow_Media.html#Modelica.Therma ium low.Media. 
  l.FluidHeatFlow.Media.Medium)         Medium()   

  [Mass](Modelica_SIunits.html#Mode m   0          Mass of medium [kg]
  lica.SIunits.Mass)                               

  [Temperature](Modelica_SIunits.ht T0  0          Initial temperature of
  ml#Modelica.SIunits.Temperature)                 medium [K]

  Real                              tap 1          Defines temperature of
                                    T              heatPort between inlet
                                                   and outlet temperature
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

  output                                                   y       
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bl         
  ocks.Interfaces.RealOutput)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model FlowSensor "Partial model of flow sensor"

      extends TwoPort(final m=0, final T0=0, final tapT=1);
      Modelica.Blocks.Interfaces.RealOutput y;
    equation 
      // no pressure drop
      dp = 0;
      // no energy exchange
      Q_flow = 0;
    end FlowSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:44 2010.
