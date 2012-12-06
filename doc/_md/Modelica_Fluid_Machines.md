% Modelica.Fluid.Machines
% 
% 

[Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid).Machines
=============================================================

**Devices for converting between energy held in a fluid and mechanical
energy**

Information
-----------

::

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                       Description
  ------------------------------------------ -----------------------------
  ![image5](Modelica.Fluid.Machines.SweptVol varying cylindric volume
  umeS.png)                                  depending on the postition of
  [SweptVolume](Modelica_Fluid_Machines.html the piston
  #Modelica.Fluid.Machines.SweptVolume)      

  ![image6](Modelica.Fluid.Machines.PumpS.pn Centrifugal pump with
  g)                                         mechanical connector for the
  [Pump](Modelica_Fluid_Machines.html#Modeli shaft
  ca.Fluid.Machines.Pump)                    

  ![image7](Modelica.Fluid.Machines.Controll Centrifugal pump with ideally
  edPumpS.png)                               controlled mass flow rate
  [ControlledPump](Modelica_Fluid_Machines.h 
  tml#Modelica.Fluid.Machines.ControlledPump 
  )                                          

  ![image8](Modelica.Fluid.Machines.Prescrib Centrifugal pump with ideally
  edPumpS.png)                               controlled speed
  [PrescribedPump](Modelica_Fluid_Machines.h 
  tml#Modelica.Fluid.Machines.PrescribedPump 
  )                                          

  ![image9](Modelica.Fluid.Machines.BaseClas Base classes used in the
  sesS.png)                                  Machines package (only of
  [BaseClasses](Modelica_Fluid_Machines_Base interest to build new
  Classes.html#Modelica.Fluid.Machines.BaseC component models)
  lasses)                                    
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Fluid.Machines.SweptVolumeI.png) [Modelica.Fluid.Machines](Modelica_Fluid_Machines.html#Modelica.Fluid.Machines).SweptVolume
================================================================================================================================================

**varying cylindric volume depending on the postition of the piston**

Information
-----------

::

Mixing volume with varying size. The size of the volume is given by:

-   cross sectional piston area
-   piston stroke given by the flange position s
-   clearance (volume at flang position = 0)

Losses are neglected. The shaft power is completely converted into
mechanical work on the fluid.

The flange position has to be equal or greater than zero. Otherwise the
simulation stops. The force of the flange results from the pressure
difference between medium and ambient pressure and the cross sectional
piston area. For using the component, a top level instance of the
ambient model with the inner attribute is needed.

The pressure at both fluid ports equals the medium pressure in the
volume. No suction nor discharge valve is included in the model.

The thermal port is directly connected to the medium. The temperature of
the thermal port equals the medium temperature. The heat capacity of the
cylinder and the piston are not includes in the model.

::

Extends from
[Modelica.Fluid.Vessels.BaseClasses.PartialLumpedVessel](Modelica_Fluid_Vessels_BaseClasses.html#Modelica.Fluid.Vessels.BaseClasses.PartialLumpedVessel)
(Lumped volume with a vector of fluid ports and replaceable heat
transfer model).

Parameters
----------

  -------------------------------------------------------------------------
  Type                      Name                         Default Descriptio
                                                                 n
  ------------------------- ---------------------------- ------- ----------
  [Area](Modelica_SIunits.h pistonCrossArea                      cross
  tml#Modelica.SIunits.Area                                      sectional
  )                                                              area of
                                                                 pistion
                                                                 [m2]

  [Volume](Modelica_SIunits clearance                            remaining
  .html#Modelica.SIunits.Vo                                      volume at
  lume)                                                          zero
                                                                 piston
                                                                 stroke
                                                                 [m3]

  replaceable package       [PartialMedium](Modelica_Med Medium  
  Medium                    ia_Interfaces_PartialMedium. in the  
                            html#Modelica.Media.Interfac compone 
                            es.PartialMedium)            nt      

  [Volume](Modelica_SIunits fluidVolume                  V       Volume
  .html#Modelica.SIunits.Vo                                      [m3]
  lume)                                                          

  Ports                                                          

  Boolean                   use\_portsData               true    = false to
                                                                 neglect
                                                                 pressure
                                                                 loss and
                                                                 kinetic
                                                                 energy

  [VesselPortsData](Modelic portsData[nPorts]                    Data of
  a_Fluid_Vessels_BaseClass                                      inlet/outl
  es.html#Modelica.Fluid.Ve                                      et
  ssels.BaseClasses.VesselP                                      ports
  ortsData)                                                      

  **Assumptions**                                                

  Dynamics                                                       

  [Dynamics](Modelica_Fluid energyDynamics               system. Formulatio
  _Types.html#Modelica.Flui                              energyD n
  d.Types.Dynamics)                                      ynamics of energy
                                                                 balance

  [Dynamics](Modelica_Fluid massDynamics                 system. Formulatio
  _Types.html#Modelica.Flui                              massDyn n
  d.Types.Dynamics)                                      amics   of mass
                                                                 balance

  Heat transfer                                                  

  Boolean                   use\_HeatTransfer            false   = true to
                                                                 use the
                                                                 HeatTransf
                                                                 er
                                                                 model

  replaceable model         [IdealHeatTransfer](Modelica Wall    
  HeatTransfer              _Fluid_Vessels_BaseClasses_H heat    
                            eatTransfer.html#Modelica.Fl transfe 
                            uid.Vessels.BaseClasses.Heat r       
                            Transfer.IdealHeatTransfer)          

  **Initialization**                                             

  [AbsolutePressure](Modeli p\_start                     system. Start
  ca_Media_Interfaces_Parti                              p\_star value of
  alMedium.html#Modelica.Me                              t       pressure
  dia.Interfaces.PartialMed                                      [Pa]
  ium.AbsolutePressure)                                          

  Boolean                   use\_T\_start                true    = true,
                                                                 use
                                                                 T\_start,
                                                                 otherwise
                                                                 h\_start

  [Temperature](Modelica_Me T\_start                     if      Start
  dia_Interfaces_PartialMed                              use\_T\ value of
  ium.html#Modelica.Media.I                              _start  temperatur
  nterfaces.PartialMedium.T                              then    e
  emperature)                                            system. [K]
                                                         T...    

  [SpecificEnthalpy](Modeli h\_start                     if      Start
  ca_Media_Interfaces_Parti                              use\_T\ value of
  alMedium.html#Modelica.Me                              _start  specific
  dia.Interfaces.PartialMed                              then    enthalpy
  ium.SpecificEnthalpy)                                  Medium. [J/kg]
                                                         s...    

  [MassFraction](Modelica_M X\_start[Medium.nX]          Medium. Start
  edia_Interfaces_PartialMe                              X\_defa value of
  dium.html#Modelica.Media.                              ult     mass
  Interfaces.PartialMedium.                                      fractions
  MassFraction)                                                  m\_i/m
                                                                 [kg/kg]

  [ExtraProperty](Modelica_ C\_start[Medium.nC]          fill(0, Start
  Media_Interfaces_PartialM                              Medium. value of
  edium.html#Modelica.Media                              nC)     trace
  .Interfaces.PartialMedium                                      substances
  .ExtraProperty)                                                

  **Advanced**                                                   

  Port properties                                                

  [MassFlowRate](Modelica_S m\_flow\_small               system. Regulariza
  Iunits.html#Modelica.SIun                              m\_flow tion
  its.MassFlowRate)                                      \_small range at
                                                                 zero mass
                                                                 flow rate
                                                                 [kg/s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Name    Description
  -------------------------------------------------- ------- -------------
  [VesselFluidPorts\_b](Modelica_Fluid_Vessels_BaseC ports[n Fluid inlets
  lasses.html#Modelica.Fluid.Vessels.BaseClasses.Ves Ports]  and outlets
  selFluidPorts_b)                                           

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interf heatPor 
  aces.html#Modelica.Thermal.HeatTransfer.Interfaces t       
  .HeatPort_a)                                               

  [Flange\_b](Modelica_Mechanics_Translational_Inter flange  translation
  faces.html#Modelica.Mechanics.Translational.Interf         flange for
  aces.Flange_b)                                             piston
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SweptVolume 
      "varying cylindric volume depending on the postition of the piston"
      import Modelica.Constants.pi;

      parameter SI.Area pistonCrossArea "cross sectional area of pistion";
      parameter SI.Volume clearance "remaining volume at zero piston stroke";

      SI.Volume V "fluid volume";

      // Mass and energy balance, ports
      extends Modelica.Fluid.Vessels.BaseClasses.PartialLumpedVessel(
        final fluidVolume = V,
        heatTransfer(surfaceAreas={pistonCrossArea+2*sqrt(pistonCrossArea*pi)*(flange.s+clearance/pistonCrossArea)}));

      Modelica.Mechanics.Translational.Interfaces.Flange_b flange 
        "translation flange for piston";

    equation 
      assert(flange.s >= 0, "Piston stroke (given by flange.s) must not be smaller than zero!");

      // volume size
      V = clearance + flange.s * pistonCrossArea;

      0 = flange.f + (medium.p - system.p_ambient) * pistonCrossArea;

      // energy balances
      Wb_flow = medium.p * pistonCrossArea * (-der(flange.s));

      // definition of port pressures
      for i in 1:nPorts loop
        vessel_ps_static[i] = medium.p;
      end for;

    end SweptVolume;

* * * * *

![image11](Modelica.Fluid.Machines.PumpI.png) [Modelica.Fluid.Machines](Modelica_Fluid_Machines.html#Modelica.Fluid.Machines).Pump
==================================================================================================================================

**Centrifugal pump with mechanical connector for the shaft**

Information
-----------

::

This model describes a centrifugal pump (or a group of `nParallel`
pumps) with a mechanical rotational connector for the shaft, to be used
when the pump drive has to be modelled explicitly. In the case of
`nParallel` pumps, the mechanical connector is relative to a single
pump.

The model extends `PartialPump`

::

Extends from
[Modelica.Fluid.Machines.BaseClasses.PartialPump](Modelica_Fluid_Machines_BaseClasses.html#Modelica.Fluid.Machines.BaseClasses.PartialPump)
(Base model for centrifugal pumps).

Parameters
----------

  --------------------------------------------------------------------------
  Type                   Name                     Default    Description
  ---------------------- ------------------------ ---------- ---------------
  replaceable package    [PartialMedium](Modelica Medium in  
  Medium                 _Media_Interfaces_Partia the        
                         lMedium.html#Modelica.Me component  
                         dia.Interfaces.PartialMe            
                         dium)                               

  Characteristics                                            

  Integer                nParallel                1          Number of pumps
                                                             in parallel

  replaceable function   PumpCharacteristics.base Head vs.   
  flowCharacteristic     Flow                     V\_flow    
                                                  characteri 
                                                  stic       
                                                  at nominal 
                                                  speed and  
                                                  density    

  [AngularVelocity\_rpm] N\_nominal                          Nominal
  (Modelica_SIunits_Conv                                     rotational
  ersions_NonSIunits.htm                                     speed for flow
  l#Modelica.SIunits.Con                                     characteristic
  versions.NonSIunits.An                                     [1/min]
  gularVelocity_rpm)                                         

  [Density](Modelica_Med rho\_nominal             Medium.den Nominal fluid
  ia_Interfaces_PartialM                          sity\_pTX( density for
  edium.html#Modelica.Me                          Medium.p\_ characteristic
  dia.Interfaces.Partial                          ...        [kg/m3]
  Medium.Density)                                            

  Boolean                use\_powerCharacteristic false      Use
                                                             powerCharacteri
                                                             stic
                                                             (vs.
                                                             efficiencyChara
                                                             cteristic)

  replaceable function   PumpCharacteristics.quad Power      
  powerCharacteristic    rati...                  consumptio 
                                                  n          
                                                  vs.        
                                                  V\_flow at 
                                                  nominal    
                                                  speed and  
                                                  density    

  replaceable function   PumpCharacteristics.cons Efficiency 
  efficiencyCharacterist tant...                  vs.        
  ic                                              V\_flow at 
                                                  nominal    
                                                  speed and  
                                                  density    

  **Assumptions**                                            

  Boolean                allowFlowReversal        system.all = true to allow
                                                  owFlowReve flow reversal,
                                                  rsal       false restricts
                                                             to design
                                                             direction
                                                             (port\_a -\>
                                                             port\_b)

  Boolean                checkValve               false      = true to
                                                             prevent reverse
                                                             flow

  [Volume](Modelica_SIun V                        0          Volume inside
  its.html#Modelica.SIun                                     the pump [m3]
  its.Volume)                                                

  Dynamics                                                   

  [Dynamics](Modelica_Fl energyDynamics           Types.Dyna Formulation of
  uid_Types.html#Modelic                          mics.Stead energy balance
  a.Fluid.Types.Dynamics                          yState     
  )                                                          

  [Dynamics](Modelica_Fl massDynamics             Types.Dyna Formulation of
  uid_Types.html#Modelic                          mics.Stead mass balance
  a.Fluid.Types.Dynamics                          yState     
  )                                                          

  Heat transfer                                              

  Boolean                use\_HeatTransfer        false      = true to use a
                                                             HeatTransfer
                                                             model, e.g.,
                                                             for a housing

  replaceable model      [IdealHeatTransfer](Mode Wall heat  
  HeatTransfer           lica_Fluid_Vessels_BaseC transfer   
                         lasses_HeatTransfer.html            
                         #Modelica.Fluid.Vessels.            
                         BaseClasses.HeatTransfer            
                         .IdealHeatTransfer)                 

  **Initialization**                                         

  [AbsolutePressure](Mod p\_a\_start              system.p\_ Guess value for
  elica_Media_Interfaces                          start      inlet pressure
  _PartialMedium.html#Mo                                     [Pa]
  delica.Media.Interface                                     
  s.PartialMedium.Absolu                                     
  tePressure)                                                

  [AbsolutePressure](Mod p\_b\_start              p\_a\_star Guess value for
  elica_Media_Interfaces                          t          outlet pressure
  _PartialMedium.html#Mo                                     [Pa]
  delica.Media.Interface                                     
  s.PartialMedium.Absolu                                     
  tePressure)                                                

  [MassFlowRate](Modelic m\_flow\_start           1          Guess value of
  a_Media_Interfaces_Par                                     m\_flow =
  tialMedium.html#Modeli                                     port\_a.m\_flow
  ca.Media.Interfaces.Pa                                     [kg/s]
  rtialMedium.MassFlowRa                                     
  te)                                                        

  Boolean                use\_T\_start            true       = true, use
                                                             T\_start,
                                                             otherwise
                                                             h\_start

  [Temperature](Modelica T\_start                 if         Start value of
  _Media_Interfaces_Part                          use\_T\_st temperature [K]
  ialMedium.html#Modelic                          art        
  a.Media.Interfaces.Par                          then       
  tialMedium.Temperature                          system.T.. 
  )                                               .          

  [SpecificEnthalpy](Mod h\_start                 if         Start value of
  elica_Media_Interfaces                          use\_T\_st specific
  _PartialMedium.html#Mo                          art        enthalpy [J/kg]
  delica.Media.Interface                          then       
  s.PartialMedium.Specif                          Medium.s.. 
  icEnthalpy)                                     .          

  [MassFraction](Modelic X\_start[Medium.nX]      Medium.X\_ Start value of
  a_Media_Interfaces_Par                          default    mass fractions
  tialMedium.html#Modeli                                     m\_i/m [kg/kg]
  ca.Media.Interfaces.Pa                                     
  rtialMedium.MassFracti                                     
  on)                                                        

  [ExtraProperty](Modeli C\_start[Medium.nC]      fill(0,    Start value of
  ca_Media_Interfaces_Pa                          Medium.nC) trace
  rtialMedium.html#Model                                     substances
  ica.Media.Interfaces.P                                     
  artialMedium.ExtraProp                                     
  erty)                                                      

  **Advanced**                                               

  Diagnostics                                                

  Boolean                show\_NPSHa              false      = true to
                                                             compute Net
                                                             Positive
                                                             Suction Head
                                                             available
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- ---------------------------
  [FluidPort\_a](Modelica_Fluid_Interfaces port Fluid connector a (positive
  .html#Modelica.Fluid.Interfaces.FluidPor \_a  design flow direction is
  t_a)                                          from port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Interfaces port Fluid connector b (positive
  .html#Modelica.Fluid.Interfaces.FluidPor \_b  design flow direction is
  t_b)                                          from port\_a to port\_b)

  [HeatPort\_a](Modelica_Thermal_HeatTrans heat 
  fer_Interfaces.html#Modelica.Thermal.Hea Port 
  tTransfer.Interfaces.HeatPort_a)              

  [Flange\_a](Modelica_Mechanics_Rotationa shaf 
  l_Interfaces.html#Modelica.Mechanics.Rot t    
  ational.Interfaces.Flange_a)                  
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Pump "Centrifugal pump with mechanical connector for the shaft"
      extends Modelica.Fluid.Machines.BaseClasses.PartialPump;
      SI.Angle phi "Shaft angle";
      SI.AngularVelocity omega "Shaft angular velocity";
      Modelica.Mechanics.Rotational.Interfaces.Flange_a shaft;
    equation 
      phi = shaft.phi;
      omega = der(phi);
      N = Modelica.SIunits.Conversions.to_rpm(omega);
      W_single = omega*shaft.tau;
    end Pump;

* * * * *

![image12](Modelica.Fluid.Machines.ControlledPumpI.png) [Modelica.Fluid.Machines](Modelica_Fluid_Machines.html#Modelica.Fluid.Machines).ControlledPump
======================================================================================================================================================

**Centrifugal pump with ideally controlled mass flow rate**

Information
-----------

::

This model describes a centrifugal pump (or a group of `nParallel`
pumps) with ideally controlled mass flow rate or pressure.

Nominal values are used to predefine an exemplary pump characteristics
and to define the operation of the pump. The input connectors
`m_flow_set` or `p_set` can optionally be enabled to provide time
varying set points.

Use this model if the pump characteristics is of secondary interest. The
actual characteristics can be configured later on for the appropriate
rotational speed N. Then the model can be replaced with a Pump with
rotational shaft or with a PrescribedPump.

::

Extends from
[Modelica.Fluid.Machines.BaseClasses.PartialPump](Modelica_Fluid_Machines_BaseClasses.html#Modelica.Fluid.Machines.BaseClasses.PartialPump)
(Base model for centrifugal pumps).

Parameters
----------

  --------------------------------------------------------------------------
  Type                   Name                     Default    Description
  ---------------------- ------------------------ ---------- ---------------
  replaceable package    [PartialMedium](Modelica Medium in  
  Medium                 _Media_Interfaces_Partia the        
                         lMedium.html#Modelica.Me component  
                         dia.Interfaces.PartialMe            
                         dium)                               

  [AbsolutePressure](Mod p\_a\_nominal                       Nominal inlet
  elica_Media_Interfaces                                     pressure for
  _PartialMedium.html#Mo                                     predefined pump
  delica.Media.Interface                                     characteristics
  s.PartialMedium.Absolu                                     [Pa]
  tePressure)                                                

  [AbsolutePressure](Mod p\_b\_nominal                       Nominal outlet
  elica_Media_Interfaces                                     pressure, fixed
  _PartialMedium.html#Mo                                     if not
  delica.Media.Interface                                     control\_m\_flo
  s.PartialMedium.Absolu                                     w
  tePressure)                                                and not
                                                             use\_p\_set
                                                             [Pa]

  [MassFlowRate](Modelic m\_flow\_nominal                    Nominal mass
  a_Media_Interfaces_Par                                     flow rate,
  tialMedium.html#Modeli                                     fixed if
  ca.Media.Interfaces.Pa                                     control\_m\_flo
  rtialMedium.MassFlowRa                                     w
  te)                                                        and not
                                                             use\_m\_flow\_s
                                                             et
                                                             [kg/s]

  Boolean                control\_m\_flow         true       = false to
                                                             control outlet
                                                             pressure
                                                             port\_b.p
                                                             instead of
                                                             m\_flow

  Boolean                use\_m\_flow\_set        false      = true to use
                                                             input signal
                                                             m\_flow\_set
                                                             instead of
                                                             m\_flow\_nomina
                                                             l

  Boolean                use\_p\_set              false      = true to use
                                                             input signal
                                                             p\_set instead
                                                             of
                                                             p\_b\_nominal

  Characteristics                                            

  Integer                nParallel                1          Number of pumps
                                                             in parallel

  replaceable function   Modelica.Fluid.Machines. Head vs.   
  flowCharacteristic     Base...                  V\_flow    
                                                  characteri 
                                                  stic       
                                                  at nominal 
                                                  speed and  
                                                  density    

  [AngularVelocity\_rpm] N\_nominal               1500       Nominal
  (Modelica_SIunits_Conv                                     rotational
  ersions_NonSIunits.htm                                     speed for flow
  l#Modelica.SIunits.Con                                     characteristic
  versions.NonSIunits.An                                     [1/min]
  gularVelocity_rpm)                                         

  [Density](Modelica_Med rho\_nominal             Medium.den Nominal fluid
  ia_Interfaces_PartialM                          sity\_pTX( density for
  edium.html#Modelica.Me                          Medium.p\_ characteristic
  dia.Interfaces.Partial                          ...        [kg/m3]
  Medium.Density)                                            

  Boolean                use\_powerCharacteristic false      Use
                                                             powerCharacteri
                                                             stic
                                                             (vs.
                                                             efficiencyChara
                                                             cteristic)

  replaceable function   PumpCharacteristics.quad Power      
  powerCharacteristic    rati...                  consumptio 
                                                  n          
                                                  vs.        
                                                  V\_flow at 
                                                  nominal    
                                                  speed and  
                                                  density    

  replaceable function   PumpCharacteristics.cons Efficiency 
  efficiencyCharacterist tant...                  vs.        
  ic                                              V\_flow at 
                                                  nominal    
                                                  speed and  
                                                  density    

  **Assumptions**                                            

  Boolean                allowFlowReversal        system.all = true to allow
                                                  owFlowReve flow reversal,
                                                  rsal       false restricts
                                                             to design
                                                             direction
                                                             (port\_a -\>
                                                             port\_b)

  Boolean                checkValve               false      = true to
                                                             prevent reverse
                                                             flow

  [Volume](Modelica_SIun V                        0          Volume inside
  its.html#Modelica.SIun                                     the pump [m3]
  its.Volume)                                                

  Dynamics                                                   

  [Dynamics](Modelica_Fl energyDynamics           Types.Dyna Formulation of
  uid_Types.html#Modelic                          mics.Stead energy balance
  a.Fluid.Types.Dynamics                          yState     
  )                                                          

  [Dynamics](Modelica_Fl massDynamics             Types.Dyna Formulation of
  uid_Types.html#Modelic                          mics.Stead mass balance
  a.Fluid.Types.Dynamics                          yState     
  )                                                          

  Heat transfer                                              

  Boolean                use\_HeatTransfer        false      = true to use a
                                                             HeatTransfer
                                                             model, e.g.,
                                                             for a housing

  replaceable model      [IdealHeatTransfer](Mode Wall heat  
  HeatTransfer           lica_Fluid_Vessels_BaseC transfer   
                         lasses_HeatTransfer.html            
                         #Modelica.Fluid.Vessels.            
                         BaseClasses.HeatTransfer            
                         .IdealHeatTransfer)                 

  **Initialization**                                         

  [AbsolutePressure](Mod p\_a\_start              system.p\_ Guess value for
  elica_Media_Interfaces                          start      inlet pressure
  _PartialMedium.html#Mo                                     [Pa]
  delica.Media.Interface                                     
  s.PartialMedium.Absolu                                     
  tePressure)                                                

  [AbsolutePressure](Mod p\_b\_start              p\_a\_star Guess value for
  elica_Media_Interfaces                          t          outlet pressure
  _PartialMedium.html#Mo                                     [Pa]
  delica.Media.Interface                                     
  s.PartialMedium.Absolu                                     
  tePressure)                                                

  [MassFlowRate](Modelic m\_flow\_start           1          Guess value of
  a_Media_Interfaces_Par                                     m\_flow =
  tialMedium.html#Modeli                                     port\_a.m\_flow
  ca.Media.Interfaces.Pa                                     [kg/s]
  rtialMedium.MassFlowRa                                     
  te)                                                        

  Boolean                use\_T\_start            true       = true, use
                                                             T\_start,
                                                             otherwise
                                                             h\_start

  [Temperature](Modelica T\_start                 if         Start value of
  _Media_Interfaces_Part                          use\_T\_st temperature [K]
  ialMedium.html#Modelic                          art        
  a.Media.Interfaces.Par                          then       
  tialMedium.Temperature                          system.T.. 
  )                                               .          

  [SpecificEnthalpy](Mod h\_start                 if         Start value of
  elica_Media_Interfaces                          use\_T\_st specific
  _PartialMedium.html#Mo                          art        enthalpy [J/kg]
  delica.Media.Interface                          then       
  s.PartialMedium.Specif                          Medium.s.. 
  icEnthalpy)                                     .          

  [MassFraction](Modelic X\_start[Medium.nX]      Medium.X\_ Start value of
  a_Media_Interfaces_Par                          default    mass fractions
  tialMedium.html#Modeli                                     m\_i/m [kg/kg]
  ca.Media.Interfaces.Pa                                     
  rtialMedium.MassFracti                                     
  on)                                                        

  [ExtraProperty](Modeli C\_start[Medium.nC]      fill(0,    Start value of
  ca_Media_Interfaces_Pa                          Medium.nC) trace
  rtialMedium.html#Model                                     substances
  ica.Media.Interfaces.P                                     
  artialMedium.ExtraProp                                     
  erty)                                                      

  **Advanced**                                               

  Diagnostics                                                

  Boolean                show\_NPSHa              false      = true to
                                                             compute Net
                                                             Positive
                                                             Suction Head
                                                             available
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                             Name              Description
  -------------------------------- ----------------- ----------------------
  [FluidPort\_a](Modelica_Fluid_In port\_a           Fluid connector a
  terfaces.html#Modelica.Fluid.Int                   (positive design flow
  erfaces.FluidPort_a)                               direction is from
                                                     port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_In port\_b           Fluid connector b
  terfaces.html#Modelica.Fluid.Int                   (positive design flow
  erfaces.FluidPort_b)                               direction is from
                                                     port\_a to port\_b)

  [HeatPort\_a](Modelica_Thermal_H heatPort          
  eatTransfer_Interfaces.html#Mode                   
  lica.Thermal.HeatTransfer.Interf                   
  aces.HeatPort_a)                                   

  input                            m\_flow\_set      Prescribed mass flow
  [RealInput](Modelica_Blocks_Inte                   rate
  rfaces.html#Modelica.Blocks.Inte                   
  rfaces.RealInput)                                  

  input                            p\_set            Prescribed outlet
  [RealInput](Modelica_Blocks_Inte                   pressure
  rfaces.html#Modelica.Blocks.Inte                   
  rfaces.RealInput)                                  

  Characteristics                                    

  replaceable function             Head vs. V\_flow  
  flowCharacteristic               characteristic at 
                                   nominal speed and 
                                   density           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ControlledPump 
      "Centrifugal pump with ideally controlled mass flow rate"
      import Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm;
      extends Modelica.Fluid.Machines.BaseClasses.PartialPump(
        N_nominal=1500,
        N(start=N_nominal),
        redeclare replaceable function flowCharacteristic =
            Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticFlow (
              V_flow_nominal={0, V_flow_op, 1.5*V_flow_op},
              head_nominal={2*head_op, head_op, 0}));

      // nominal values
      parameter Medium.AbsolutePressure p_a_nominal 
        "Nominal inlet pressure for predefined pump characteristics";
      parameter Medium.AbsolutePressure p_b_nominal 
        "Nominal outlet pressure, fixed if not control_m_flow and not use_p_set";
      parameter Medium.MassFlowRate m_flow_nominal 
        "Nominal mass flow rate, fixed if control_m_flow and not use_m_flow_set";

      // what to control
      parameter Boolean control_m_flow = true 
        "= false to control outlet pressure port_b.p instead of m_flow";
      parameter Boolean use_m_flow_set = false 
        "= true to use input signal m_flow_set instead of m_flow_nominal";
      parameter Boolean use_p_set = false 
        "= true to use input signal p_set instead of p_b_nominal";

      // exemplary characteristics
      final parameter SI.VolumeFlowRate V_flow_op = m_flow_nominal/rho_nominal 
        "operational volume flow rate according to nominal values";
      final parameter SI.Height head_op = (p_b_nominal-p_a_nominal)/(rho_nominal*g) 
        "operational pump head according to nominal values";

      Modelica.Blocks.Interfaces.RealInput m_flow_set if use_m_flow_set 
        "Prescribed mass flow rate";
      Modelica.Blocks.Interfaces.RealInput p_set if use_p_set 
        "Prescribed outlet pressure";

    protected 
      Modelica.Blocks.Interfaces.RealInput m_flow_set_internal 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput p_set_internal 
        "Needed to connect to conditional connector";
    equation 
      // Ideal control
      if control_m_flow then
        m_flow = m_flow_set_internal;
      else
        dp_pump = p_set_internal - port_a.p;
      end if;

      // Internal connector value when use_m_flow_set = false
      if not use_m_flow_set then
        m_flow_set_internal = m_flow_nominal;
      end if;
      if not use_p_set then
        p_set_internal = p_b_nominal;
      end if;
      connect(m_flow_set, m_flow_set_internal);
      connect(p_set, p_set_internal);

    end ControlledPump;

* * * * *

![image13](Modelica.Fluid.Machines.PrescribedPumpI.png) [Modelica.Fluid.Machines](Modelica_Fluid_Machines.html#Modelica.Fluid.Machines).PrescribedPump
======================================================================================================================================================

**Centrifugal pump with ideally controlled speed**

Information
-----------

::

This model describes a centrifugal pump (or a group of `nParallel`
pumps) with prescribed speed, either fixed or provided by an external
signal.

The model extends `PartialPump`

If the `N_in` input connector is wired, it provides rotational speed of
the pumps (rpm); otherwise, a constant rotational speed equal to
`n_const` (which can be different from `N_nominal`) is assumed.

::

Extends from
[Modelica.Fluid.Machines.BaseClasses.PartialPump](Modelica_Fluid_Machines_BaseClasses.html#Modelica.Fluid.Machines.BaseClasses.PartialPump)
(Base model for centrifugal pumps).

Parameters
----------

  --------------------------------------------------------------------------
  Type                   Name                     Default    Description
  ---------------------- ------------------------ ---------- ---------------
  replaceable package    [PartialMedium](Modelica Medium in  
  Medium                 _Media_Interfaces_Partia the        
                         lMedium.html#Modelica.Me component  
                         dia.Interfaces.PartialMe            
                         dium)                               

  Boolean                use\_N\_in               false      Get the
                                                             rotational
                                                             speed from the
                                                             input connector

  [AngularVelocity\_rpm] N\_const                 N\_nominal Constant
  (Modelica_SIunits_Conv                                     rotational
  ersions_NonSIunits.htm                                     speed [1/min]
  l#Modelica.SIunits.Con                                     
  versions.NonSIunits.An                                     
  gularVelocity_rpm)                                         

  Characteristics                                            

  Integer                nParallel                1          Number of pumps
                                                             in parallel

  replaceable function   PumpCharacteristics.base Head vs.   
  flowCharacteristic     Flow                     V\_flow    
                                                  characteri 
                                                  stic       
                                                  at nominal 
                                                  speed and  
                                                  density    

  [AngularVelocity\_rpm] N\_nominal                          Nominal
  (Modelica_SIunits_Conv                                     rotational
  ersions_NonSIunits.htm                                     speed for flow
  l#Modelica.SIunits.Con                                     characteristic
  versions.NonSIunits.An                                     [1/min]
  gularVelocity_rpm)                                         

  [Density](Modelica_Med rho\_nominal             Medium.den Nominal fluid
  ia_Interfaces_PartialM                          sity\_pTX( density for
  edium.html#Modelica.Me                          Medium.p\_ characteristic
  dia.Interfaces.Partial                          ...        [kg/m3]
  Medium.Density)                                            

  Boolean                use\_powerCharacteristic false      Use
                                                             powerCharacteri
                                                             stic
                                                             (vs.
                                                             efficiencyChara
                                                             cteristic)

  replaceable function   PumpCharacteristics.quad Power      
  powerCharacteristic    rati...                  consumptio 
                                                  n          
                                                  vs.        
                                                  V\_flow at 
                                                  nominal    
                                                  speed and  
                                                  density    

  replaceable function   PumpCharacteristics.cons Efficiency 
  efficiencyCharacterist tant...                  vs.        
  ic                                              V\_flow at 
                                                  nominal    
                                                  speed and  
                                                  density    

  **Assumptions**                                            

  Boolean                allowFlowReversal        system.all = true to allow
                                                  owFlowReve flow reversal,
                                                  rsal       false restricts
                                                             to design
                                                             direction
                                                             (port\_a -\>
                                                             port\_b)

  Boolean                checkValve               false      = true to
                                                             prevent reverse
                                                             flow

  [Volume](Modelica_SIun V                        0          Volume inside
  its.html#Modelica.SIun                                     the pump [m3]
  its.Volume)                                                

  Dynamics                                                   

  [Dynamics](Modelica_Fl energyDynamics           Types.Dyna Formulation of
  uid_Types.html#Modelic                          mics.Stead energy balance
  a.Fluid.Types.Dynamics                          yState     
  )                                                          

  [Dynamics](Modelica_Fl massDynamics             Types.Dyna Formulation of
  uid_Types.html#Modelic                          mics.Stead mass balance
  a.Fluid.Types.Dynamics                          yState     
  )                                                          

  Heat transfer                                              

  Boolean                use\_HeatTransfer        false      = true to use a
                                                             HeatTransfer
                                                             model, e.g.,
                                                             for a housing

  replaceable model      [IdealHeatTransfer](Mode Wall heat  
  HeatTransfer           lica_Fluid_Vessels_BaseC transfer   
                         lasses_HeatTransfer.html            
                         #Modelica.Fluid.Vessels.            
                         BaseClasses.HeatTransfer            
                         .IdealHeatTransfer)                 

  **Initialization**                                         

  [AbsolutePressure](Mod p\_a\_start              system.p\_ Guess value for
  elica_Media_Interfaces                          start      inlet pressure
  _PartialMedium.html#Mo                                     [Pa]
  delica.Media.Interface                                     
  s.PartialMedium.Absolu                                     
  tePressure)                                                

  [AbsolutePressure](Mod p\_b\_start              p\_a\_star Guess value for
  elica_Media_Interfaces                          t          outlet pressure
  _PartialMedium.html#Mo                                     [Pa]
  delica.Media.Interface                                     
  s.PartialMedium.Absolu                                     
  tePressure)                                                

  [MassFlowRate](Modelic m\_flow\_start           1          Guess value of
  a_Media_Interfaces_Par                                     m\_flow =
  tialMedium.html#Modeli                                     port\_a.m\_flow
  ca.Media.Interfaces.Pa                                     [kg/s]
  rtialMedium.MassFlowRa                                     
  te)                                                        

  Boolean                use\_T\_start            true       = true, use
                                                             T\_start,
                                                             otherwise
                                                             h\_start

  [Temperature](Modelica T\_start                 if         Start value of
  _Media_Interfaces_Part                          use\_T\_st temperature [K]
  ialMedium.html#Modelic                          art        
  a.Media.Interfaces.Par                          then       
  tialMedium.Temperature                          system.T.. 
  )                                               .          

  [SpecificEnthalpy](Mod h\_start                 if         Start value of
  elica_Media_Interfaces                          use\_T\_st specific
  _PartialMedium.html#Mo                          art        enthalpy [J/kg]
  delica.Media.Interface                          then       
  s.PartialMedium.Specif                          Medium.s.. 
  icEnthalpy)                                     .          

  [MassFraction](Modelic X\_start[Medium.nX]      Medium.X\_ Start value of
  a_Media_Interfaces_Par                          default    mass fractions
  tialMedium.html#Modeli                                     m\_i/m [kg/kg]
  ca.Media.Interfaces.Pa                                     
  rtialMedium.MassFracti                                     
  on)                                                        

  [ExtraProperty](Modeli C\_start[Medium.nC]      fill(0,    Start value of
  ca_Media_Interfaces_Pa                          Medium.nC) trace
  rtialMedium.html#Model                                     substances
  ica.Media.Interfaces.P                                     
  artialMedium.ExtraProp                                     
  erty)                                                      

  **Advanced**                                               

  Diagnostics                                                

  Boolean                show\_NPSHa              false      = true to
                                                             compute Net
                                                             Positive
                                                             Suction Head
                                                             available
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- ---------------------------
  [FluidPort\_a](Modelica_Fluid_Interfaces port Fluid connector a (positive
  .html#Modelica.Fluid.Interfaces.FluidPor \_a  design flow direction is
  t_a)                                          from port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Interfaces port Fluid connector b (positive
  .html#Modelica.Fluid.Interfaces.FluidPor \_b  design flow direction is
  t_b)                                          from port\_a to port\_b)

  [HeatPort\_a](Modelica_Thermal_HeatTrans heat 
  fer_Interfaces.html#Modelica.Thermal.Hea Port 
  tTransfer.Interfaces.HeatPort_a)              

  input                                    N\_i Prescribed rotational speed
  [RealInput](Modelica_Blocks_Interfaces.h n    [1/min]
  tml#Modelica.Blocks.Interfaces.RealInput      
  )                                             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PrescribedPump "Centrifugal pump with ideally controlled speed"
      extends Modelica.Fluid.Machines.BaseClasses.PartialPump;
      parameter Boolean use_N_in = false 
        "Get the rotational speed from the input connector";
      parameter Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm
        N_const =                                                                     N_nominal 
        "Constant rotational speed";
      Modelica.Blocks.Interfaces.RealInput N_in(unit="1/min") if use_N_in 
        "Prescribed rotational speed";

    protected 
      Modelica.Blocks.Interfaces.RealInput N_in_internal(unit="1/min") 
        "Needed to connect to conditional connector";
    equation 
      // Connect statement active only if use_p_in = true
      connect(N_in, N_in_internal);
      // Internal connector value when use_p_in = false
      if not use_N_in then
        N_in_internal = N_const;
      end if;
      // Set N with a lower limit to avoid singularities at zero speed
      N = max(N_in_internal,1e-3) "Rotational speed";

    end PrescribedPump;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:16 2010.
