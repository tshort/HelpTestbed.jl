% Modelica.Fluid.Examples.HeatExchanger.BaseClasses
% 
% 

[Modelica.Fluid.Examples.HeatExchanger](Modelica_Fluid_Examples_HeatExchanger.html#Modelica.Fluid.Examples.HeatExchanger).BaseClasses
=====================================================================================================================================

**Additional models for heat exchangers**

Information
-----------

Extends from
[Modelica.Icons.BasesPackage](Modelica_Icons_BasesPackage.html#Modelica.Icons.BasesPackage)
(Icon for packages containing base classes).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                              Description
  ------------------------------------------------- ----------------------
  ![image2](Modelica.Fluid.Examples.HeatExchanger.B Simple heat exchanger
  aseClasses.BasicHXS.png)                          model
  [BasicHX](Modelica_Fluid_Examples_HeatExchanger_B 
  aseClasses.html#Modelica.Fluid.Examples.HeatExcha 
  nger.BaseClasses.BasicHX)                         

  ![image3](Modelica.Fluid.Examples.HeatExchanger.B Pipe wall with
  aseClasses.WallConstPropsS.png)                   capacitance, assuming
  [WallConstProps](Modelica_Fluid_Examples_HeatExch 1D heat conduction and
  anger_BaseClasses.html#Modelica.Fluid.Examples.He constant material
  atExchanger.BaseClasses.WallConstProps)           properties
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHXI.png) [Modelica.Fluid.Examples.HeatExchanger.BaseClasses](Modelica_Fluid_Examples_HeatExchanger_BaseClasses.html#Modelica.Fluid.Examples.HeatExchanger.BaseClasses).BasicHX
===============================================================================================================================================================================================================================================

**Simple heat exchanger model**

Information
-----------

::

Simple model of a heat exchanger consisting of two pipes and one wall in
between. For both fluids geometry parameters, such as heat transfer area
and cross section as well as heat transfer and pressure drop
correlations may be chosen. The flow scheme may be concurrent or
counterflow, defined by the respective flow directions of the fluids
entering the component. The design flow direction with positive m\_flow
variables is counterflow.

::

Parameters
----------

  --------------------------------------------------------------------------
  Type                              Name    Default    Description
  --------------------------------- ------- ---------- ---------------------
  Integer                           nNodes  2          Spatial segmentation

  [Length](Modelica_SIunits.html#Mo length             Length of flow path
  delica.SIunits.Length)                               for both fluids [m]

  [Length](Modelica_SIunits.html#Mo s\_wall            Wall thickness [m]
  delica.SIunits.Length)                               

  Boolean                           use\_He false      = true to use the
                                    atTrans            HeatTransfer\_1/\_2
                                    fer                model

  Fluid 1                                              

  [Area](Modelica_SIunits.html#Mode crossAr            Cross sectional area
  lica.SIunits.Area)                ea\_1              [m2]

  [Length](Modelica_SIunits.html#Mo perimet            Flow channel
  delica.SIunits.Length)            er\_1              perimeter [m]

  [Area](Modelica_SIunits.html#Mode area\_h            Heat transfer area
  lica.SIunits.Area)                \_1                [m2]

  [Length](Modelica_SIunits.html#Mo roughne 2.5e-5     Absolute roughness of
  delica.SIunits.Length)            ss\_1              pipe (default =
                                                       smooth steel pipe)
                                                       [m]

  Fluid 2                                              

  [Area](Modelica_SIunits.html#Mode crossAr            Cross sectional area
  lica.SIunits.Area)                ea\_2              [m2]

  [Length](Modelica_SIunits.html#Mo perimet            Flow channel
  delica.SIunits.Length)            er\_2              perimeter [m]

  [Area](Modelica_SIunits.html#Mode area\_h            Heat transfer area
  lica.SIunits.Area)                \_2                [m2]

  [Length](Modelica_SIunits.html#Mo roughne 2.5e-5     Absolute roughness of
  delica.SIunits.Length)            ss\_2              pipe (default =
                                                       smooth steel pipe)
                                                       [m]

  Solid material properties                            

  [Density](Modelica_SIunits.html#M rho\_wa            Density of wall
  odelica.SIunits.Density)          ll                 material [kg/m3]

  [SpecificHeatCapacity](Modelica_S c\_wall            Specific heat
  Iunits.html#Modelica.SIunits.Spec                    capacity of wall
  ificHeatCapacity)                                    material [J/(kg.K)]

  [ThermalConductivity](Modelica_SI k\_wall            Thermal conductivity
  units.html#Modelica.SIunits.Therm                    of wall material
  alConductivity)                                      [W/(m.K)]

  **Assumptions**                                      

  Boolean                           allowFl system.all allow flow reversal,
                                    owRever owFlowReve false restricts to
                                    sal     rsal       design direction
                                                       (port\_a -\> port\_b)

  Dynamics                                             

  [Dynamics](Modelica_Fluid_Types.h energyD system.ene Formulation of energy
  tml#Modelica.Fluid.Types.Dynamics ynamics rgyDynamic balance
  )                                         s          

  [Dynamics](Modelica_Fluid_Types.h massDyn system.mas Formulation of mass
  tml#Modelica.Fluid.Types.Dynamics amics   sDynamics  balance
  )                                                    

  [Dynamics](Modelica_Fluid_Types.h momentu system.mom Formulation of
  tml#Modelica.Fluid.Types.Dynamics mDynami entumDynam momentum balance, if
  )                                 cs      ics        pressureLoss options
                                                       available

  **Initialization**                                   

  Wall                                                 

  [Temperature](Modelica_SIunits.ht Twall\_            Start value of wall
  ml#Modelica.SIunits.Temperature)  start              temperature [K]

  [Temperature](Modelica_SIunits.ht dT                 Start value for
  ml#Modelica.SIunits.Temperature)                     pipe\_1.T - pipe\_2.T
                                                       [K]

  Boolean                           use\_T\ true       Use T\_start if true,
                                    _start             otherwise h\_start

  Fluid 1                                              

  [AbsolutePressure](Modelica_Media p\_a\_s Medium\_1. Start value of
  _Interfaces_PartialMedium.html#Mo tart1   p\_default pressure [Pa]
  delica.Media.Interfaces.PartialMe                    
  dium.AbsolutePressure)                               

  [AbsolutePressure](Modelica_Media p\_b\_s Medium\_1. Start value of
  _Interfaces_PartialMedium.html#Mo tart1   p\_default pressure [Pa]
  delica.Media.Interfaces.PartialMe                    
  dium.AbsolutePressure)                               

  [Temperature](Modelica_Media_Inte T\_star if         Start value of
  rfaces_PartialMedium.html#Modelic t\_1    use\_T\_st temperature [K]
  a.Media.Interfaces.PartialMedium.         art        
  Temperature)                              then       
                                            Medium\_1. 
                                            ..         

  [SpecificEnthalpy](Modelica_Media h\_star if         Start value of
  _Interfaces_PartialMedium.html#Mo t\_1    use\_T\_st specific enthalpy
  delica.Media.Interfaces.PartialMe         art        [J/kg]
  dium.SpecificEnthalpy)                    then       
                                            Medium\_1. 
                                            ..         

  [MassFraction](Modelica_Media_Int X\_star Medium\_1. Start value of mass
  erfaces_PartialMedium.html#Modeli t\_1[Me X\_default fractions m\_i/m
  ca.Media.Interfaces.PartialMedium dium\_1            [kg/kg]
  .MassFraction)                    .nX]               

  [MassFlowRate](Modelica_Media_Int m\_flow system.m\_ Start value of mass
  erfaces_PartialMedium.html#Modeli \_start flow\_star flow rate [kg/s]
  ca.Media.Interfaces.PartialMedium \_1     t          
  .MassFlowRate)                                       

  Fluid 2                                              

  [AbsolutePressure](Modelica_Media p\_a\_s Medium\_2. Start value of
  _Interfaces_PartialMedium.html#Mo tart2   p\_default pressure [Pa]
  delica.Media.Interfaces.PartialMe                    
  dium.AbsolutePressure)                               

  [AbsolutePressure](Modelica_Media p\_b\_s Medium\_2. Start value of
  _Interfaces_PartialMedium.html#Mo tart2   p\_default pressure [Pa]
  delica.Media.Interfaces.PartialMe                    
  dium.AbsolutePressure)                               

  [Temperature](Modelica_Media_Inte T\_star if         Start value of
  rfaces_PartialMedium.html#Modelic t\_2    use\_T\_st temperature [K]
  a.Media.Interfaces.PartialMedium.         art        
  Temperature)                              then       
                                            Medium\_2. 
                                            ..         

  [SpecificEnthalpy](Modelica_Media h\_star if         Start value of
  _Interfaces_PartialMedium.html#Mo t\_2    use\_T\_st specific enthalpy
  delica.Media.Interfaces.PartialMe         art        [J/kg]
  dium.SpecificEnthalpy)                    then       
                                            Medium\_2. 
                                            ..         

  [MassFraction](Modelica_Media_Int X\_star Medium\_2. Start value of mass
  erfaces_PartialMedium.html#Modeli t\_2[Me X\_default fractions m\_i/m
  ca.Media.Interfaces.PartialMedium dium\_2            [kg/kg]
  .MassFraction)                    .nX]               

  [MassFlowRate](Modelica_Media_Int m\_flow system.m\_ Start value of mass
  erfaces_PartialMedium.html#Modeli \_start flow\_star flow rate [kg/s]
  ca.Media.Interfaces.PartialMedium \_2     t          
  .MassFlowRate)                                       
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                   Name    Descripti
                                                                 on
  ------------------------------------------------------ ------- ---------
  [FluidPort\_b](Modelica_Fluid_Interfaces.html#Modelica port\_b 
  .Fluid.Interfaces.FluidPort_b)                         1       

  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Modelica port\_a 
  .Fluid.Interfaces.FluidPort_a)                         1       

  [FluidPort\_b](Modelica_Fluid_Interfaces.html#Modelica port\_b 
  .Fluid.Interfaces.FluidPort_b)                         2       

  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Modelica port\_a 
  .Fluid.Interfaces.FluidPort_a)                         2       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model BasicHX "Simple heat exchanger model"
      outer Modelica.Fluid.System system "System properties";
      //General
      parameter Integer nNodes(min=1) = 2 "Spatial segmentation";
      replaceable package Medium_1 = Modelica.Media.Water.StandardWater constrainedby 
        Modelica.Media.Interfaces.PartialMedium "Fluid 1";
      replaceable package Medium_2 = Modelica.Media.Water.StandardWater constrainedby 
        Modelica.Media.Interfaces.PartialMedium "Fluid 2";
      parameter SI.Area crossArea_1 "Cross sectional area";
      parameter SI.Area crossArea_2 "Cross sectional area";
      parameter SI.Length perimeter_1 "Flow channel perimeter";
      parameter SI.Length perimeter_2 "Flow channel perimeter";
      parameter SI.Length length(min=0) "Length of flow path for both fluids";
      parameter SI.Length s_wall(min=0) "Wall thickness";
      parameter Boolean use_HeatTransfer = false 
        "= true to use the HeatTransfer_1/_2 model";

      // Heat transfer
      replaceable model HeatTransfer_1 =
          Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer
        constrainedby 
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer 
        "Heat transfer model";

      replaceable model HeatTransfer_2 =
          Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer
        constrainedby 
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer 
        "Heat transfer model";

      parameter SI.Area area_h_1 "Heat transfer area";
      parameter SI.Area area_h_2 "Heat transfer area";
     //Wall
      parameter SI.Density rho_wall "Density of wall material";
      parameter SI.SpecificHeatCapacity c_wall 
        "Specific heat capacity of wall material";
      final parameter SI.Area area_h=(area_h_1 + area_h_2)/2 "Heat transfer area";
      final parameter SI.Mass m_wall=rho_wall*area_h*s_wall "Wall mass";
      parameter SI.ThermalConductivity k_wall 
        "Thermal conductivity of wall material";

      // Assumptions
      parameter Boolean allowFlowReversal = system.allowFlowReversal 
        "allow flow reversal, false restricts to design direction (port_a -> port_b)";
      parameter Types.Dynamics energyDynamics=system.energyDynamics 
        "Formulation of energy balance";
      parameter Types.Dynamics massDynamics=system.massDynamics 
        "Formulation of mass balance";
      parameter Types.Dynamics momentumDynamics=system.momentumDynamics 
        "Formulation of momentum balance, if pressureLoss options available";

      //Initialization pipe 1
      parameter SI.Temperature Twall_start "Start value of wall temperature";
      parameter SI.Temperature dT "Start value for pipe_1.T - pipe_2.T";
      parameter Boolean use_T_start=true "Use T_start if true, otherwise h_start";
      parameter Medium_1.AbsolutePressure p_a_start1=Medium_1.p_default 
        "Start value of pressure";
      parameter Medium_1.AbsolutePressure p_b_start1=Medium_1.p_default 
        "Start value of pressure";
      parameter Medium_1.Temperature T_start_1=if use_T_start then Medium_1.
          T_default else Medium_1.temperature_phX(
            (p_a_start1 + p_b_start1)/2,
            h_start_1,
            X_start_1) "Start value of temperature";
      parameter Medium_1.SpecificEnthalpy h_start_1=if use_T_start then Medium_1.specificEnthalpy_pTX(
            (p_a_start1 + p_b_start1)/2,
            T_start_1,
            X_start_1[1:Medium_1.nXi]) else Medium_1.h_default 
        "Start value of specific enthalpy";
      parameter Medium_1.MassFraction X_start_1[Medium_1.nX]=Medium_1.X_default 
        "Start value of mass fractions m_i/m";
      parameter Medium_1.MassFlowRate m_flow_start_1 = system.m_flow_start 
        "Start value of mass flow rate";
      //Initialization pipe 2

      parameter Medium_2.AbsolutePressure p_a_start2=Medium_2.p_default 
        "Start value of pressure";
      parameter Medium_2.AbsolutePressure p_b_start2=Medium_2.p_default 
        "Start value of pressure";
      parameter Medium_2.Temperature T_start_2=if use_T_start then Medium_2.
          T_default else Medium_2.temperature_phX(
            (p_a_start2 + p_b_start2)/2,
            h_start_2,
            X_start_2) "Start value of temperature";
      parameter Medium_2.SpecificEnthalpy h_start_2=if use_T_start then Medium_2.specificEnthalpy_pTX(
            (p_a_start2 + p_b_start2)/2,
            T_start_2,
            X_start_2[1:Medium_2.nXi]) else Medium_2.h_default 
        "Start value of specific enthalpy";
      parameter Medium_2.MassFraction X_start_2[Medium_2.nX]=Medium_2.X_default 
        "Start value of mass fractions m_i/m";
      parameter Medium_2.MassFlowRate m_flow_start_2 = system.m_flow_start 
        "Start value of mass flow rate";

      //Pressure drop and heat transfer
      replaceable model FlowModel_1 =
          Modelica.Fluid.Pipes.BaseClasses.FlowModels.DetailedPipeFlow
        constrainedby 
        Modelica.Fluid.Pipes.BaseClasses.FlowModels.PartialStaggeredFlowModel 
        "Characteristic of wall friction";
      replaceable model FlowModel_2 =
          Modelica.Fluid.Pipes.BaseClasses.FlowModels.DetailedPipeFlow
        constrainedby 
        Modelica.Fluid.Pipes.BaseClasses.FlowModels.PartialStaggeredFlowModel 
        "Characteristic of wall friction";
      parameter SI.Length roughness_1=2.5e-5 
        "Absolute roughness of pipe (default = smooth steel pipe)";
      parameter SI.Length roughness_2=2.5e-5 
        "Absolute roughness of pipe (default = smooth steel pipe)";

      //Display variables
      SI.HeatFlowRate Q_flow_1 "Total heat flow rate of pipe 1";
      SI.HeatFlowRate Q_flow_2 "Total heat flow rate of pipe 2";

      BaseClasses.WallConstProps wall(
        rho_wall=rho_wall,
        c_wall=c_wall,
        T_start=Twall_start,
        k_wall=k_wall,
        dT=dT,
        s=s_wall,
        energyDynamics=energyDynamics,
        n=nNodes,
        area_h=(crossArea_1 + crossArea_2)/2);

      Modelica.Fluid.Pipes.DynamicPipe pipe_1(
        redeclare final package Medium = Medium_1,
        final isCircular=false,
        final diameter=0,
        final nNodes=nNodes,
        final allowFlowReversal=allowFlowReversal,
        final energyDynamics=energyDynamics,
        final massDynamics=massDynamics,
        final momentumDynamics=momentumDynamics,
        final length=length,
        final use_HeatTransfer=use_HeatTransfer,
        redeclare final model HeatTransfer = HeatTransfer_1,
        final use_T_start=use_T_start,
        final T_start=T_start_1,
        final h_start=h_start_1,
        final X_start=X_start_1,
        final m_flow_start=m_flow_start_1,
        final perimeter=perimeter_1,
        final crossArea=crossArea_1,
        final roughness=roughness_1,
        redeclare final model FlowModel = FlowModel_1);

      Modelica.Fluid.Pipes.DynamicPipe pipe_2(
        redeclare final package Medium = Medium_2,
        final nNodes=nNodes,
        final allowFlowReversal=allowFlowReversal,
        final energyDynamics=energyDynamics,
        final massDynamics=massDynamics,
        final momentumDynamics=momentumDynamics,
        final length=length,
        final isCircular=false,
        final diameter=0,
        final use_HeatTransfer=use_HeatTransfer,
        redeclare final model HeatTransfer = HeatTransfer_2,
        final use_T_start=use_T_start,
        final T_start=T_start_2,
        final h_start=h_start_2,
        final X_start=X_start_2,
        final m_flow_start=m_flow_start_2,
        final perimeter=perimeter_2,
        final crossArea=crossArea_2,
        final p_a_start=p_a_start1,
        final p_b_start=p_b_start2,
        final roughness=roughness_2,
        redeclare final model FlowModel = FlowModel_2);

      Modelica.Fluid.Interfaces.FluidPort_b port_b1(redeclare final package Medium
          = Medium_1);
      Modelica.Fluid.Interfaces.FluidPort_a port_a1(redeclare final package Medium
          = Medium_1);
      Modelica.Fluid.Interfaces.FluidPort_b port_b2(redeclare final package Medium
          = Medium_2);
      Modelica.Fluid.Interfaces.FluidPort_a port_a2(redeclare final package Medium
          = Medium_2);

    equation 
      Q_flow_1 = sum(pipe_1.heatTransfer.Q_flows);
      Q_flow_2 = sum(pipe_2.heatTransfer.Q_flows);
      connect(pipe_2.port_b, port_b2);
      connect(pipe_1.port_b, port_b1);
      connect(pipe_1.port_a, port_a1);
      connect(pipe_2.port_a, port_a2);
      connect(wall.heatPort_b, pipe_1.heatPorts);
      connect(pipe_2.heatPorts[nNodes:-1:1], wall.heatPort_a[1:nNodes]);
    end BasicHX;

* * * * *

![image5](Modelica.Fluid.Examples.HeatExchanger.BaseClasses.WallConstPropsI.png) [Modelica.Fluid.Examples.HeatExchanger.BaseClasses](Modelica_Fluid_Examples_HeatExchanger_BaseClasses.html#Modelica.Fluid.Examples.HeatExchanger.BaseClasses).WallConstProps
=============================================================================================================================================================================================================================================================

**Pipe wall with capacitance, assuming 1D heat conduction and constant
material properties**

Information
-----------

::

Simple model of circular (or any other closed shape) wall to be used for
pipe (or duct) models. Heat conduction is regarded one dimensional,
capacitance is lumped at the arithmetic mean temperature. The spatial
discretization (parameter `n`) is meant to correspond to a connected
fluid model discretization.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name   Default       Description
  -------------------------------- ------ ------------- -------------------
  Integer                          n      1             Segmentation
                                                        perpendicular to
                                                        heat conduction

  [Length](Modelica_SIunits.html#M s                    Wall thickness [m]
  odelica.SIunits.Length)                               

  [Area](Modelica_SIunits.html#Mod area\_               Heat transfer area
  elica.SIunits.Area)              h                    [m2]

  [Density](Modelica_SIunits.html# rho\_w               Density of wall
  Modelica.SIunits.Density)        all                  material [kg/m3]

  [SpecificHeatCapacity](Modelica_ c\_wal               Specific heat
  SIunits.html#Modelica.SIunits.Sp l                    capacity of wall
  ecificHeatCapacity)                                   material [J/(kg.K)]

  [ThermalConductivity](Modelica_S k\_wal               Thermal
  Iunits.html#Modelica.SIunits.The l                    conductivity of
  rmalConductivity)                                     wall material
                                                        [W/(m.K)]

  [Mass](Modelica_SIunits.html#Mod m[n]   fill(rho\_wal Distribution of
  elica.SIunits.Mass)                     l\*area\_h\*s wall mass [kg]
                                          /n,           
                                          n)            

  [Temperature](Modelica_SIunits.h T\_sta               Wall temperature
  tml#Modelica.SIunits.Temperature rt                   start value [K]
  )                                                     

  [Temperature](Modelica_SIunits.h dT                   Start value for
  tml#Modelica.SIunits.Temperature                      port\_b.T -
  )                                                     port\_a.T [K]

  **Assumptions**                                       

  Dynamics                                              

  [Dynamics](Modelica_Fluid_Types. energy system.energy Formulation of
  html#Modelica.Fluid.Types.Dynami Dynami Dynamics      energy balance
  cs)                              cs                   
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                   Name     Descript
                                                                  ion
  ------------------------------------------------------ -------- --------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces heatPort Thermal
  .html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPor \_a[n]   port
  t_a)                                                            

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces heatPort Thermal
  .html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPor \_b[n]   port
  t_a)                                                            
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model WallConstProps 
      "Pipe wall with capacitance, assuming 1D heat conduction and constant material properties"
      parameter Integer n(min=1)=1 "Segmentation perpendicular to heat conduction";
    //Geometry
      parameter SI.Length s "Wall thickness";
      parameter SI.Area area_h "Heat transfer area";
    //Material properties
      parameter SI.Density rho_wall "Density of wall material";
      parameter SI.SpecificHeatCapacity c_wall 
        "Specific heat capacity of wall material";
      parameter SI.ThermalConductivity k_wall 
        "Thermal conductivity of wall material";
      parameter SI.Mass[n] m=fill(rho_wall*area_h*s/n,n) 
        "Distribution of wall mass";
    //Initialization
      outer Modelica.Fluid.System system;
      parameter Types.Dynamics energyDynamics=system.energyDynamics 
        "Formulation of energy balance";
      parameter SI.Temperature T_start "Wall temperature start value";
      parameter SI.Temperature dT "Start value for port_b.T - port_a.T";
    //Temperatures
      SI.Temperature[n] Tb(each start=T_start+0.5*dT);
      SI.Temperature[n] Ta(each start=T_start-0.5*dT);
      SI.Temperature[n] T(start=ones(n)*T_start, stateSelect=StateSelect.prefer) 
        "Wall temperature";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a[n] heatPort_a 
        "Thermal port";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a[n] heatPort_b 
        "Thermal port";

    initial equation 
      if energyDynamics == Types.Dynamics.SteadyState then
        der(T) = zeros(n);
      elseif energyDynamics == Types.Dynamics.FixedInitial then
        T = ones(n)*T_start;
      end if;
    equation 
      for i in 1:n loop
       assert(m[i]>0, "Wall has negative dimensions");
       if energyDynamics == Types.Dynamics.SteadyState then
         0 = heatPort_a[i].Q_flow + heatPort_b[i].Q_flow;
       else
         c_wall*m[i]*der(T[i]) = heatPort_a[i].Q_flow + heatPort_b[i].Q_flow;
       end if;
       heatPort_a[i].Q_flow=k_wall/s*(Ta[i]-T[i])*area_h/n;
       heatPort_b[i].Q_flow=k_wall/s*(Tb[i]-T[i])*area_h/n;
      end for;
      Ta=heatPort_a.T;
      Tb=heatPort_b.T;
    end WallConstProps;

* * * * *

![Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX.HeatTransfer\_1](Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX.HeatTransfer_1I.png) [Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX](Modelica_Fluid_Examples_HeatExchanger_BaseClasses.html#Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX).HeatTransfer\_1
=========================================================================================================================================================================================================================================================================================================================================================

**Heat transfer model**

Parameters
----------

  ---------------------------------------------------------------------------
  Type                      Name                        Default Description
  ------------------------- --------------------------- ------- -------------
  Ambient                                                       

  [CoefficientOfHeatTransfe k                           0       Heat transfer
  r](Modelica_SIunits.html#                                     coefficient
  Modelica.SIunits.Coeffici                                     to ambient
  entOfHeatTransfer)                                            [W/(m2.K)]

  [Temperature](Modelica_SI T\_ambient                  system. Ambient
  units.html#Modelica.SIuni                             T\_ambi temperature
  ts.Temperature)                                       ent     [K]

  **Internal Interface**                                        

  replaceable package       [PartialMedium](Modelica_Me Medium  
  Medium                    dia_Interfaces_PartialMediu in the  
                            m.html#Modelica.Media.Inter compone 
                            faces.PartialMedium)        nt      

  Integer                   n                           1       Number of
                                                                heat transfer
                                                                segments

  Boolean                   use\_k                      false   = true to use
                                                                k value for
                                                                thermal
                                                                isolation

  Geometry                                                      

  Real                      nParallel                           number of
                                                                identical
                                                                parallel flow
                                                                devices
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name     Description
  --------------------------------------------- -------- ------------------
  [HeatPorts\_a](Modelica_Fluid_Interfaces.html heatPort Heat port to
  #Modelica.Fluid.Interfaces.HeatPorts_a)       s[n]     component boundary
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable model HeatTransfer_1 =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer
      constrainedby 
      Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer 
      "Heat transfer model";

* * * * *

![Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX.FlowModel\_1](Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX.FlowModel_1I.png) [Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX](Modelica_Fluid_Examples_HeatExchanger_BaseClasses.html#Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX).FlowModel\_1
================================================================================================================================================================================================================================================================================================================================================

**Characteristic of wall friction**

Parameters
----------

  -------------------------------------------------------------------------
  Type                    Name                Defaul Description
                                              t      
  ----------------------- ------------------- ------ ----------------------
  [AbsolutePressure](Mode dp\_nominal         1e3\*d Nominal pressure loss
  lica_SIunits.html#Model                     p\_sma (for nominal models)
  ica.SIunits.AbsolutePre                     ll     [Pa]
  ssure)                                             

  [MassFlowRate](Modelica m\_flow\_nominal    1e2\*m Mass flow rate for
  _SIunits.html#Modelica.                     \_flow dp\_nominal (for
  SIunits.MassFlowRate)                       \_smal nominal models) [kg/s]
                                              l      

  Boolean                 from\_dp            moment = true, use m\_flow =
                                              umDyna f(dp), otherwise dp =
                                              mics   f(m\_flow)
                                              \>=    
                                              Types. 
                                              Dy...  

  [AbsolutePressure](Mode dp\_small           system Within regularization
  lica_SIunits.html#Model                     .dp\_s if |dp| < dp\_small
  ica.SIunits.AbsolutePre                     mall   (may be wider for
  ssure)                                             large discontinuities
                                                     in static head) [Pa]

  [MassFlowRate](Modelica m\_flow\_small      system Within regularization
  _SIunits.html#Modelica.                     .m\_fl if |m\_flows| <
  SIunits.MassFlowRate)                       ow\_sm m\_flow\_small (may be
                                              all    wider for large
                                                     discontinuities in
                                                     static head) [kg/s]

  Advanced                                           

  Boolean                 useUpstreamScheme   true   = false to average
                                                     upstream and
                                                     downstream properties
                                                     across flow segments

  Boolean                 use\_Ib\_flows      moment = true to consider
                                              umDyna differences in flow of
                                              mics   momentum through
                                              <\>    boundaries
                                              Types. 
                                              Dy...  

  Diagnostics                                        

  Boolean                 show\_Res           false  = true, if Reynolds
                                                     numbers are included
                                                     for plotting

  **Internal Interface**                             

  replaceable package     [PartialMedium](Mod Medium 
  Medium                  elica_Media_Interfa in the 
                          ces_PartialMedium.h compon 
                          tml#Modelica.Media. ent    
                          Interfaces.PartialM        
                          edium)                     

  Integer                 n                   2      Number of discrete
                                                     flow volumes

  Geometry                                           

  Real                    nParallel                  number of identical
                                                     parallel flow devices

  Static head                                        

  [Acceleration](Modelica g                   system Constant gravity
  _SIunits.html#Modelica.                     .g     acceleration [m/s2]
  SIunits.Acceleration)                              

  Assumptions                                        

  Boolean                 allowFlowReversal   system = true to allow flow
                                              .allow reversal, false
                                              FlowRe restricts to design
                                              versal direction (states[1]
                                                     -\> states[n+1])

  [Dynamics](Modelica_Flu momentumDynamics    system Formulation of
  id_Types.html#Modelica.                     .momen momentum balance
  Fluid.Types.Dynamics)                       tumDyn 
                                              amics  

  Initialization                                     

  [MassFlowRate](Modelica m\_flow\_start      system Start value of mass
  _Media_Interfaces_Parti                     .m\_fl flow rates [kg/s]
  alMedium.html#Modelica.                     ow\_st 
  Media.Interfaces.Partia                     art    
  lMedium.MassFlowRate)                              

  [AbsolutePressure](Mode p\_a\_start                Start value for p[1]
  lica_Media_Interfaces_P                            at design inflow [Pa]
  artialMedium.html#Model                            
  ica.Media.Interfaces.Pa                            
  rtialMedium.AbsolutePre                            
  ssure)                                             

  [AbsolutePressure](Mode p\_b\_start                Start value for p[n+1]
  lica_Media_Interfaces_P                            at design outflow [Pa]
  artialMedium.html#Model                            
  ica.Media.Interfaces.Pa                            
  rtialMedium.AbsolutePre                            
  ssure)                                             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable model FlowModel_1 =
        Modelica.Fluid.Pipes.BaseClasses.FlowModels.DetailedPipeFlow
      constrainedby 
      Modelica.Fluid.Pipes.BaseClasses.FlowModels.PartialStaggeredFlowModel 
      "Characteristic of wall friction";

* * * * *

![Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX.HeatTransfer\_2](Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX.HeatTransfer_2I.png) [Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX](Modelica_Fluid_Examples_HeatExchanger_BaseClasses.html#Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX).HeatTransfer\_2
=========================================================================================================================================================================================================================================================================================================================================================

**Heat transfer model**

Parameters
----------

  ---------------------------------------------------------------------------
  Type                      Name                        Default Description
  ------------------------- --------------------------- ------- -------------
  Ambient                                                       

  [CoefficientOfHeatTransfe k                           0       Heat transfer
  r](Modelica_SIunits.html#                                     coefficient
  Modelica.SIunits.Coeffici                                     to ambient
  entOfHeatTransfer)                                            [W/(m2.K)]

  [Temperature](Modelica_SI T\_ambient                  system. Ambient
  units.html#Modelica.SIuni                             T\_ambi temperature
  ts.Temperature)                                       ent     [K]

  **Internal Interface**                                        

  replaceable package       [PartialMedium](Modelica_Me Medium  
  Medium                    dia_Interfaces_PartialMediu in the  
                            m.html#Modelica.Media.Inter compone 
                            faces.PartialMedium)        nt      

  Integer                   n                           1       Number of
                                                                heat transfer
                                                                segments

  Boolean                   use\_k                      false   = true to use
                                                                k value for
                                                                thermal
                                                                isolation

  Geometry                                                      

  Real                      nParallel                           number of
                                                                identical
                                                                parallel flow
                                                                devices
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name     Description
  --------------------------------------------- -------- ------------------
  [HeatPorts\_a](Modelica_Fluid_Interfaces.html heatPort Heat port to
  #Modelica.Fluid.Interfaces.HeatPorts_a)       s[n]     component boundary
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable model HeatTransfer_2 =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer
      constrainedby 
      Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer 
      "Heat transfer model";

* * * * *

![Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX.FlowModel\_2](Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX.FlowModel_2I.png) [Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX](Modelica_Fluid_Examples_HeatExchanger_BaseClasses.html#Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX).FlowModel\_2
================================================================================================================================================================================================================================================================================================================================================

**Characteristic of wall friction**

Parameters
----------

  -------------------------------------------------------------------------
  Type                    Name                Defaul Description
                                              t      
  ----------------------- ------------------- ------ ----------------------
  [AbsolutePressure](Mode dp\_nominal         1e3\*d Nominal pressure loss
  lica_SIunits.html#Model                     p\_sma (for nominal models)
  ica.SIunits.AbsolutePre                     ll     [Pa]
  ssure)                                             

  [MassFlowRate](Modelica m\_flow\_nominal    1e2\*m Mass flow rate for
  _SIunits.html#Modelica.                     \_flow dp\_nominal (for
  SIunits.MassFlowRate)                       \_smal nominal models) [kg/s]
                                              l      

  Boolean                 from\_dp            moment = true, use m\_flow =
                                              umDyna f(dp), otherwise dp =
                                              mics   f(m\_flow)
                                              \>=    
                                              Types. 
                                              Dy...  

  [AbsolutePressure](Mode dp\_small           system Within regularization
  lica_SIunits.html#Model                     .dp\_s if |dp| < dp\_small
  ica.SIunits.AbsolutePre                     mall   (may be wider for
  ssure)                                             large discontinuities
                                                     in static head) [Pa]

  [MassFlowRate](Modelica m\_flow\_small      system Within regularization
  _SIunits.html#Modelica.                     .m\_fl if |m\_flows| <
  SIunits.MassFlowRate)                       ow\_sm m\_flow\_small (may be
                                              all    wider for large
                                                     discontinuities in
                                                     static head) [kg/s]

  Advanced                                           

  Boolean                 useUpstreamScheme   true   = false to average
                                                     upstream and
                                                     downstream properties
                                                     across flow segments

  Boolean                 use\_Ib\_flows      moment = true to consider
                                              umDyna differences in flow of
                                              mics   momentum through
                                              <\>    boundaries
                                              Types. 
                                              Dy...  

  Diagnostics                                        

  Boolean                 show\_Res           false  = true, if Reynolds
                                                     numbers are included
                                                     for plotting

  **Internal Interface**                             

  replaceable package     [PartialMedium](Mod Medium 
  Medium                  elica_Media_Interfa in the 
                          ces_PartialMedium.h compon 
                          tml#Modelica.Media. ent    
                          Interfaces.PartialM        
                          edium)                     

  Integer                 n                   2      Number of discrete
                                                     flow volumes

  Geometry                                           

  Real                    nParallel                  number of identical
                                                     parallel flow devices

  Static head                                        

  [Acceleration](Modelica g                   system Constant gravity
  _SIunits.html#Modelica.                     .g     acceleration [m/s2]
  SIunits.Acceleration)                              

  Assumptions                                        

  Boolean                 allowFlowReversal   system = true to allow flow
                                              .allow reversal, false
                                              FlowRe restricts to design
                                              versal direction (states[1]
                                                     -\> states[n+1])

  [Dynamics](Modelica_Flu momentumDynamics    system Formulation of
  id_Types.html#Modelica.                     .momen momentum balance
  Fluid.Types.Dynamics)                       tumDyn 
                                              amics  

  Initialization                                     

  [MassFlowRate](Modelica m\_flow\_start      system Start value of mass
  _Media_Interfaces_Parti                     .m\_fl flow rates [kg/s]
  alMedium.html#Modelica.                     ow\_st 
  Media.Interfaces.Partia                     art    
  lMedium.MassFlowRate)                              

  [AbsolutePressure](Mode p\_a\_start                Start value for p[1]
  lica_Media_Interfaces_P                            at design inflow [Pa]
  artialMedium.html#Model                            
  ica.Media.Interfaces.Pa                            
  rtialMedium.AbsolutePre                            
  ssure)                                             

  [AbsolutePressure](Mode p\_b\_start                Start value for p[n+1]
  lica_Media_Interfaces_P                            at design outflow [Pa]
  artialMedium.html#Model                            
  ica.Media.Interfaces.Pa                            
  rtialMedium.AbsolutePre                            
  ssure)                                             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    replaceable model FlowModel_2 =
        Modelica.Fluid.Pipes.BaseClasses.FlowModels.DetailedPipeFlow
      constrainedby 
      Modelica.Fluid.Pipes.BaseClasses.FlowModels.PartialStaggeredFlowModel 
      "Characteristic of wall friction";

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:11 2010.
