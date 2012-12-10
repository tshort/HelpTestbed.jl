% Modelica.Fluid.Vessels
% 
% 

[Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid).Vessels
============================================================

**Devices for storing fluid**

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
  ![image3](Modelica.Fluid.Vessels.ClosedVol Volume of fixed size, closed
  umeS.png)                                  to the ambient, with
  [ClosedVolume](Modelica_Fluid_Vessels.html inlet/outlet ports
  #Modelica.Fluid.Vessels.ClosedVolume)      

  ![image4](Modelica.Fluid.Vessels.OpenTankS Simple tank with inlet/outlet
  .png)                                      ports
  [OpenTank](Modelica_Fluid_Vessels.html#Mod 
  elica.Fluid.Vessels.OpenTank)              

  ![image5](Modelica.Fluid.Vessels.BaseClass Base classes used in the
  esS.png)                                   Vessels package (only of
  [BaseClasses](Modelica_Fluid_Vessels_BaseC interest to build new
  lasses.html#Modelica.Fluid.Vessels.BaseCla component models)
  sses)                                      
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Fluid.Vessels.ClosedVolumeI.png) [Modelica.Fluid.Vessels](Modelica_Fluid_Vessels.html#Modelica.Fluid.Vessels).ClosedVolume
=============================================================================================================================================

**Volume of fixed size, closed to the ambient, with inlet/outlet ports**

Information
-----------

::

Ideally mixed volume of constant size with two fluid ports and one
medium model. The flow properties are computed from the upstream
quantities, pressures are equal in both nodes and the medium model if
`use_portsData=false`. Heat transfer through a thermal port is possible,
it equals zero if the port remains unconnected. A spherical shape is
assumed for the heat transfer area, with V=4/3\*pi\*r\^3, A=4\*pi\*r\^2.
Ideal heat transfer is assumed per default; the thermal port temperature
is equal to the medium temperature.

If `use_portsData=true`, the port pressures represent the pressures just
after the outlet (or just before the inlet) in the attached pipe. The
hydraulic resistances `portsData.zeta_in` and `portsData.zeta_out`
determine the dissipative pressure drop between volume and port
depending on the direction of mass flow. See
[VesselPortsData](Modelica_Fluid_Vessels_BaseClasses.html#Modelica.Fluid.Vessels.BaseClasses.VesselPortsData)
and *[Idelchik, Handbook of Hydraulic Resistance, 2004]*.

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
  replaceable package       [PartialMedium](Modelica_Med Medium  
  Medium                    ia_Interfaces_PartialMedium. in the  
                            html#Modelica.Media.Interfac compone 
                            es.PartialMedium)            nt      

  [Volume](Modelica_SIunits fluidVolume                  V       Volume
  .html#Modelica.SIunits.Vo                                      [m3]
  lume)                                                          

  [Volume](Modelica_SIunits V                                    Volume
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

  -------------------------------------------------------------------------
  Type                                                 Name    Description
  ---------------------------------------------------- ------- ------------
  [VesselFluidPorts\_b](Modelica_Fluid_Vessels_BaseCla ports[n Fluid inlets
  sses.html#Modelica.Fluid.Vessels.BaseClasses.VesselF Ports]  and outlets
  luidPorts_b)                                                 

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfac heatPor 
  es.html#Modelica.Thermal.HeatTransfer.Interfaces.Hea t       
  tPort_a)                                                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ClosedVolume 
      "Volume of fixed size, closed to the ambient, with inlet/outlet ports"
    import Modelica.Constants.pi;

      // Mass and energy balance, ports
      extends Modelica.Fluid.Vessels.BaseClasses.PartialLumpedVessel(
        final fluidVolume = V,
        vesselArea = pi*(3/4*V)^(2/3),
        heatTransfer(surfaceAreas={4*pi*(3/4*V/pi)^(2/3)}));

      parameter SI.Volume V "Volume";

    equation 
      Wb_flow = 0;
      for i in 1:nPorts loop
        vessel_ps_static[i] = medium.p;
      end for;

    end ClosedVolume;

* * * * *

![image7](Modelica.Fluid.Vessels.OpenTankI.png) [Modelica.Fluid.Vessels](Modelica_Fluid_Vessels.html#Modelica.Fluid.Vessels).OpenTank
=====================================================================================================================================

**Simple tank with inlet/outlet ports**

Information
-----------

::

Model of a tank that is open to the ambient at the fixed pressure
`p_ambient`.

The vector of connectors **ports** represents fluid ports at
configurable heights, relative to the bottom of tank. Fluid can flow
either out of or in to each port.

The following assumptions are made:

-   The tank is filled with a single or multiple-substance medium having
    a density higher than the density of the ambient medium.
-   The fluid has uniform density, temperature and mass fractions
-   No liquid is leaving the tank through the open top; the simulation
    breaks with an assertion if the liquid level growths over the
    height.

The port pressures represent the pressures just after the outlet (or
just before the inlet) in the attached pipe. The hydraulic resistances
`portsData.zeta_in` and `portsData.zeta_out` determine the dissipative
pressure drop between tank and port depending on the direction of mass
flow. See
[VesselPortsData](Modelica_Fluid_Vessels_BaseClasses.html#Modelica.Fluid.Vessels.BaseClasses.VesselPortsData)
and *[Idelchik, Handbook of Hydraulic Resistance, 2004]*.

With the setting `use_portsData=false`, the port pressure represents the
static head at the height of the respective port. The relationship
between pressure drop and mass flow rate at the port must then be
provided by connected components; Heights of ports as well as kinetic
and potential energy of fluid enering or leaving are not taken into
account anymore.

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
  [Height](Modelica_SIunits height                               Height of
  .html#Modelica.SIunits.He                                      tank [m]
  ight)                                                          

  [Area](Modelica_SIunits.h crossArea                            Area of
  tml#Modelica.SIunits.Area                                      tank [m2]
  )                                                              

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

  Ambient                                                        

  [AbsolutePressure](Modeli p\_ambient                   system. Tank
  ca_Media_Interfaces_Parti                              p\_ambi surface
  alMedium.html#Modelica.Me                              ent     pressure
  dia.Interfaces.PartialMed                                      [Pa]
  ium.AbsolutePressure)                                          

  [Temperature](Modelica_Me T\_ambient                   system. Tank
  dia_Interfaces_PartialMed                              T\_ambi surface
  ium.html#Modelica.Media.I                              ent     Temperatur
  nterfaces.PartialMedium.T                                      e
  emperature)                                                    [K]

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

  [Height](Modelica_SIunits level\_start                 0.5\*he Start
  .html#Modelica.SIunits.He                              ight    value of
  ight)                                                          tank level
                                                                 [m]

  [AbsolutePressure](Modeli p\_start                     p\_ambi Start
  ca_Media_Interfaces_Parti                              ent     value of
  alMedium.html#Modelica.Me                                      pressure
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

  -------------------------------------------------------------------------
  Type                                                 Name    Description
  ---------------------------------------------------- ------- ------------
  [VesselFluidPorts\_b](Modelica_Fluid_Vessels_BaseCla ports[n Fluid inlets
  sses.html#Modelica.Fluid.Vessels.BaseClasses.VesselF Ports]  and outlets
  luidPorts_b)                                                 

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfac heatPor 
  es.html#Modelica.Thermal.HeatTransfer.Interfaces.Hea t       
  tPort_a)                                                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model OpenTank "Simple tank with inlet/outlet ports"
        import Modelica.Constants.pi;

      // Tank properties
      SI.Height level(stateSelect=StateSelect.prefer, start=max(level_start, Modelica.Constants.eps)) 
        "Level height of tank";
      SI.Volume V(stateSelect=StateSelect.never) "Actual tank volume";

      // Tank geometry
      parameter SI.Height height "Height of tank";
      parameter SI.Area crossArea "Area of tank";

      // Ambient
      parameter Medium.AbsolutePressure p_ambient=system.p_ambient 
        "Tank surface pressure";
      parameter Medium.Temperature T_ambient=system.T_ambient 
        "Tank surface Temperature";

      // Initialization
      parameter SI.Height level_start(min=0) = 0.5*height 
        "Start value of tank level";

      // Mass and energy balance, ports
      extends Modelica.Fluid.Vessels.BaseClasses.PartialLumpedVessel(
        final fluidVolume = V,
        final fluidLevel = level,
        final fluidLevel_max = height,
        final vesselArea = crossArea,
        heatTransfer(surfaceAreas={crossArea+2*sqrt(crossArea*pi)*level}),
        final initialize_p = false,
        final p_start = p_ambient);

    equation 
      // Total quantities
      V = crossArea*level "Volume of fluid";
      medium.p = p_ambient;

      // Source termsEnergy balance
      if Medium.singleState or energyDynamics == Types.Dynamics.SteadyState then
        Wb_flow = 0 
          "Mechanical work is neglected, since also neglected in medium model (otherwise unphysical small temperature change, if tank level changes)";
      else
        Wb_flow = -p_ambient*der(V);
      end if;

      //Determine port properties
      for i in 1:nPorts loop
        vessel_ps_static[i] = max(0, level - portsData_height[i])*system.g*medium.d + p_ambient;
      end for;

    initial equation 
      if massDynamics == Types.Dynamics.FixedInitial then
        level = level_start;
      elseif massDynamics == Types.Dynamics.SteadyStateInitial then
        der(level) = 0;
      end if;

    end OpenTank;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:12 2010.
