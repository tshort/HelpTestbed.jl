% Modelica.Thermal.FluidHeatFlow.Sources
% 
% 

[Modelica.Thermal.FluidHeatFlow](Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow).Sources
============================================================================================================

**Ideal fluid sources, e.g., ambient, volume flow**

Information
-----------

::

This package contains different types of sources:

-   Ambient with constant or prescribed pressure and temperature
-   AbsolutePressure to define pressure level of a closed cooling cycle.
-   Constant and prescribed volume flow
-   Constant and prescribed pressure increase
-   Simple pump with mechanical flange

Thermodynamic equations are defined in partial models (package
Interfaces.Partials). All fans / pumps are considered without losses,
they do not change enthalpy flow.

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
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                        Description
  ----------------------------------------------------------- ------------
  ![image5](Modelica.Thermal.FluidHeatFlow.Sources.AmbientS.p Ambient with
  ng)                                                         constant
  [Ambient](Modelica_Thermal_FluidHeatFlow_Sources.html#Model properties
  ica.Thermal.FluidHeatFlow.Sources.Ambient)                  

  ![image6](Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePr Defines
  essureS.png)                                                absolute
  [AbsolutePressure](Modelica_Thermal_FluidHeatFlow_Sources.h pressure
  tml#Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressure level
  )                                                           

  ![image7](Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlow Enforces
  S.png)                                                      constant
  [VolumeFlow](Modelica_Thermal_FluidHeatFlow_Sources.html#Mo volume flow
  delica.Thermal.FluidHeatFlow.Sources.VolumeFlow)            

  ![image8](Modelica.Thermal.FluidHeatFlow.Sources.PressureIn Enforces
  creaseS.png)                                                constant
  [PressureIncrease](Modelica_Thermal_FluidHeatFlow_Sources.h pressure
  tml#Modelica.Thermal.FluidHeatFlow.Sources.PressureIncrease increase
  )                                                           

  ![image9](Modelica.Thermal.FluidHeatFlow.Sources.IdealPumpS Model of an
  .png)                                                       ideal pump
  [IdealPump](Modelica_Thermal_FluidHeatFlow_Sources.html#Mod 
  elica.Thermal.FluidHeatFlow.Sources.IdealPump)              
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Thermal.FluidHeatFlow.Sources.AmbientI.png) [Modelica.Thermal.FluidHeatFlow.Sources](Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources).Ambient
====================================================================================================================================================================================================

**Ambient with constant properties**

Information
-----------

::

(Infinite) ambient with constant pressure and temperature.
  ~ Thermodynamic equations are defined by Partials.Ambient.

::

Extends from
[Interfaces.Partials.Ambient](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.Ambient)
(Partial model of ambient).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                Name       Default     Description
  ----------------------------------- ---------- ----------- -------------
  [Medium](Modelica_Thermal_FluidHeat medium     FluidHeatFl Ambient
  Flow_Media.html#Modelica.Thermal.Fl            ow.Media.Me medium
  uidHeatFlow.Media.Medium)                      dium()      

  Boolean                             usePressur false       Enable /
                                      eInput                 disable
                                                             pressure
                                                             input

  [Pressure](Modelica_SIunits.html#Mo constantAm             Ambient
  delica.SIunits.Pressure)            bientPress             pressure [Pa]
                                      ure                    

  Boolean                             useTempera false       Enable /
                                      tureInput              disable
                                                             temperature
                                                             input

  [Temperature](Modelica_SIunits.html constantAm             Ambient
  #Modelica.SIunits.Temperature)      bientTempe             temperature
                                      rature                 [K]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name       Descrip
                                                                    tion
  ------------------------------------------------------ ---------- -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interface flowPort   
  s.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowP            
  ort_a)                                                            

  input                                                  ambientPre 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.B ssure      
  locks.Interfaces.RealInput)                                       

  input                                                  ambientTem 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.B perature   
  locks.Interfaces.RealInput)                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Ambient "Ambient with constant properties"

      extends Interfaces.Partials.Ambient;
      parameter Boolean usePressureInput=false "Enable / disable pressure input";
      parameter Modelica.SIunits.Pressure constantAmbientPressure(start=0) 
        "Ambient pressure";
      parameter Boolean useTemperatureInput=false 
        "Enable / disable temperature input";
      parameter Modelica.SIunits.Temperature constantAmbientTemperature(start=293.15, displayUnit="degC") 
        "Ambient temperature";
      Modelica.Blocks.Interfaces.RealInput ambientPressure=pAmbient if usePressureInput;
      Modelica.Blocks.Interfaces.RealInput ambientTemperature=TAmbient if useTemperatureInput;
    protected 
      Modelica.SIunits.Pressure pAmbient;
      Modelica.SIunits.Temperature TAmbient;
    equation 
      if not usePressureInput then
        pAmbient = constantAmbientPressure;
      end if;
      if not useTemperatureInput then
        TAmbient = constantAmbientTemperature;
      end if;
      flowPort.p = pAmbient;
      T = TAmbient;
    end Ambient;

* * * * *

![image11](Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressureI.png) [Modelica.Thermal.FluidHeatFlow.Sources](Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources).AbsolutePressure
======================================================================================================================================================================================================================

**Defines absolute pressure level**

Information
-----------

::

AbsolutePressure to define pressure level of a closed cooling cycle.
Coolant's mass flow, temperature and enthalpy flow are not affected.

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                                       Name Default       Descriptio
                                                                n
  ------------------------------------------ ---- ------------- ----------
  [Medium](Modelica_Thermal_FluidHeatFlow_Me medi FluidHeatFlow medium
  dia.html#Modelica.Thermal.FluidHeatFlow.Me um   .Media.Medium 
  dia.Medium)                                     ()            

  [Pressure](Modelica_SIunits.html#Modelica. p                  Pressure
  SIunits.Pressure)                                             ground
                                                                [Pa]
  ------------------------------------------------------------------------

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

    model AbsolutePressure "Defines absolute pressure level"

      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "medium";
      parameter Modelica.SIunits.Pressure p(start=0) "Pressure ground";
      Interfaces.FlowPort_a flowPort(final medium=medium);
    equation 
      // defining pressure
      flowPort.p = p;
      // no energy exchange; no mass flow by default
      flowPort.H_flow = 0;
    end AbsolutePressure;

* * * * *

![image12](Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlowI.png) [Modelica.Thermal.FluidHeatFlow.Sources](Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources).VolumeFlow
==========================================================================================================================================================================================================

**Enforces constant volume flow**

Information
-----------

::

Fan resp. pump with constant volume flow rate. Pressure increase is the
response of the whole system. Coolant's temperature and enthalpy flow
are not affected. Setting parameter m (mass of medium within fan/pump)
to zero leads to neglection of temperature transient cv\*m\*der(T).
Thermodynamic equations are defined by Partials.TwoPort.

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

  [Mass](Modelica_SIunits.html#Mo m                  Mass of medium [kg]
  delica.SIunits.Mass)                               

  [Temperature](Modelica_SIunits. T0                 Initial temperature of
  html#Modelica.SIunits.Temperatu                    medium [K]
  re)                                                

  Real                            tapT    1          Defines temperature of
                                                     heatPort between inlet
                                                     and outlet temperature

  Boolean                         useVolu false      Enable / disable
                                  meFlowI            volume flow input
                                  nput               

  [VolumeFlowRate](Modelica_SIuni constan            Volume flow rate
  ts.html#Modelica.SIunits.Volume tVolume            [m3/s]
  FlowRate)                       Flow               
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

  input                                                    volumeF 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blo low     
  cks.Interfaces.RealInput)                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model VolumeFlow "Enforces constant volume flow"

      extends Interfaces.Partials.TwoPort(final tapT=1);
      parameter Boolean useVolumeFlowInput=false 
        "Enable / disable volume flow input";
      parameter Modelica.SIunits.VolumeFlowRate constantVolumeFlow(start=1) 
        "Volume flow rate";
      Modelica.Blocks.Interfaces.RealInput volumeFlow=internalVolumeFlow if useVolumeFlowInput;
    protected 
      Modelica.SIunits.VolumeFlowRate internalVolumeFlow;
    equation 
      if not useVolumeFlowInput then
        internalVolumeFlow = constantVolumeFlow;
      end if;
      Q_flow = 0;
      V_flow = internalVolumeFlow;
    end VolumeFlow;

* * * * *

![image13](Modelica.Thermal.FluidHeatFlow.Sources.PressureIncreaseI.png) [Modelica.Thermal.FluidHeatFlow.Sources](Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources).PressureIncrease
======================================================================================================================================================================================================================

**Enforces constant pressure increase**

Information
-----------

::

Fan resp. pump with constant pressure increase. Mass resp. volume flow
is the response of the whole system. Coolant's temperature and enthalpy
flow are not affected. Setting parameter m (mass of medium within
fan/pump) to zero leads to neglection of temperature transient
cv\*m\*der(T). Thermodynamic equations are defined by Partials.TwoPort.

::

Extends from
[Interfaces.Partials.TwoPort](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort)
(Partial model of two port).

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name     Default    Description
  ------------------------------ -------- ---------- ----------------------
  [Medium](Modelica_Thermal_Flui medium   FluidHeatF Medium in the
  dHeatFlow_Media.html#Modelica.          low.Media. component
  Thermal.FluidHeatFlow.Media.Me          Medium()   
  dium)                                              

  [Mass](Modelica_SIunits.html#M m                   Mass of medium [kg]
  odelica.SIunits.Mass)                              

  [Temperature](Modelica_SIunits T0                  Initial temperature of
  .html#Modelica.SIunits.Tempera                     medium [K]
  ture)                                              

  Real                           tapT     1          Defines temperature of
                                                     heatPort between inlet
                                                     and outlet temperature

  Boolean                        usePress false      Enable / disable
                                 ureIncre            pressure increase
                                 aseInput            input

  [Pressure](Modelica_SIunits.ht constant            Pressure increase [Pa]
  ml#Modelica.SIunits.Pressure)  Pressure            
                                 Increase            
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                    Name      Descrip
                                                                    tion
  ------------------------------------------------------- --------- -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces flowPort\ 
  .html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPor _a        
  t_a)                                                              

  [FlowPort\_b](Modelica_Thermal_FluidHeatFlow_Interfaces flowPort\ 
  .html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPor _b        
  t_b)                                                              

  input                                                   pressureI 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bl ncrease   
  ocks.Interfaces.RealInput)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PressureIncrease "Enforces constant pressure increase"

      extends Interfaces.Partials.TwoPort(final tapT=1);
      parameter Boolean usePressureIncreaseInput=false 
        "Enable / disable pressure increase input";
      parameter Modelica.SIunits.Pressure constantPressureIncrease(start=1) 
        "Pressure increase";
      Modelica.Blocks.Interfaces.RealInput pressureIncrease=internalPressureIncrease if usePressureIncreaseInput;
    protected 
      Modelica.SIunits.Pressure internalPressureIncrease;
    equation 
      if not usePressureIncreaseInput then
        internalPressureIncrease = constantPressureIncrease;
      end if;
      Q_flow = 0;
      dp = -internalPressureIncrease;
    end PressureIncrease;

* * * * *

![image14](Modelica.Thermal.FluidHeatFlow.Sources.IdealPumpI.png) [Modelica.Thermal.FluidHeatFlow.Sources](Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources).IdealPump
========================================================================================================================================================================================================

**Model of an ideal pump**

Information
-----------

::

Simple fan resp. pump where characteristic is dependent on shaft's
speed, torque \* speed = pressure increase \* volume flow (without
losses) Pressure increase versus volume flow is defined by a linear
function, from dp0(V\_flow=0) to V\_flow0(dp=0). The axis intersections
vary with speed as follows:

-   dp prop. speed\^2
-   V\_flow prop. speed

Coolant's temperature and enthalpy flow are not affected.
  ~ Setting parameter m (mass of medium within fan/pump) to zero leads
    to

neglection of temperature transient cv\*m\*der(T).
  ~ Thermodynamic equations are defined by Partials.TwoPort.

::

Extends from
[Interfaces.Partials.TwoPort](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort)
(Partial model of two port).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name Default    Description
  --------------------------------- ---- ---------- -----------------------
  [Medium](Modelica_Thermal_FluidHe medi FluidHeatF Medium in the component
  atFlow_Media.html#Modelica.Therma um   low.Media. 
  l.FluidHeatFlow.Media.Medium)          Medium()   

  [Mass](Modelica_SIunits.html#Mode m               Mass of medium [kg]
  lica.SIunits.Mass)                                

  [Temperature](Modelica_SIunits.ht T0              Initial temperature of
  ml#Modelica.SIunits.Temperature)                  medium [K]

  Real                              tapT 1          Defines temperature of
                                                    heatPort between inlet
                                                    and outlet temperature

  Pump characteristic                               

  [AngularVelocity](Modelica_SIunit wNom            Nominal speed [rad/s]
  s.html#Modelica.SIunits.AngularVe inal            
  locity)                                           

  [Pressure](Modelica_SIunits.html# dp0             Max. pressure increase
  Modelica.SIunits.Pressure)                        @ V\_flow=0 [Pa]

  [VolumeFlowRate](Modelica_SIunits V\_f            Max. volume flow rate @
  .html#Modelica.SIunits.VolumeFlow low0            dp=0 [m3/s]
  Rate)                                             
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

  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces.htm flange\ 
  l#Modelica.Mechanics.Rotational.Interfaces.Flange_a)     _a      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealPump "Model of an ideal pump"

      extends Interfaces.Partials.TwoPort(final tapT=1);
      parameter Modelica.SIunits.AngularVelocity wNominal(start=1, displayUnit="1/min") 
        "Nominal speed";
      parameter Modelica.SIunits.Pressure dp0(start=2) 
        "Max. pressure increase @ V_flow=0";
      parameter Modelica.SIunits.VolumeFlowRate V_flow0(start=2) 
        "Max. volume flow rate @ dp=0";
      Modelica.SIunits.AngularVelocity w=der(flange_a.phi) "Speed";
    protected 
      Modelica.SIunits.Pressure dp1;
      Modelica.SIunits.VolumeFlowRate V_flow1;
    public 
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a;
    equation 
      // pump characteristic
      dp1 = dp0*sign(w/wNominal)*(w/wNominal)^2;
      V_flow1 = V_flow0*(w/wNominal);
      if noEvent(abs(w)<Modelica.Constants.small) then
        dp = 0;
        flange_a.tau = 0;
      else
        dp = -dp1*(1-noEvent(abs(V_flow/V_flow1)));
        flange_a.tau*w = -dp*V_flow;
      end if;
      // no energy exchange with medium
      Q_flow = 0;
    end IdealPump;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:44 2010.
