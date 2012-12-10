% Modelica.Fluid.Pipes
% 
% 

[Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid).Pipes
==========================================================

**Devices for conveying fluid**

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
  Name                                      Description
  ----------------------------------------- ------------------------------
  ![image3](Modelica.Fluid.Pipes.StaticPipe Basic pipe flow model without
  S.png)                                    storage of mass or energy
  [StaticPipe](Modelica_Fluid_Pipes.html#Mo 
  delica.Fluid.Pipes.StaticPipe)            

  ![image4](Modelica.Fluid.Pipes.DynamicPip Dynamic pipe model with
  eS.png)                                   storage of mass and energy
  [DynamicPipe](Modelica_Fluid_Pipes.html#M 
  odelica.Fluid.Pipes.DynamicPipe)          

  ![image5](Modelica.Fluid.Pipes.BaseClasse Base classes used in the Pipes
  sS.png)                                   package (only of interest to
  [BaseClasses](Modelica_Fluid_Pipes_BaseCl build new component models)
  asses.html#Modelica.Fluid.Pipes.BaseClass 
  es)                                       
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Fluid.Pipes.StaticPipeI.png) [Modelica.Fluid.Pipes](Modelica_Fluid_Pipes.html#Modelica.Fluid.Pipes).StaticPipe
=================================================================================================================================

**Basic pipe flow model without storage of mass or energy**

Information
-----------

::

Model of a straight pipe with constant cross section and with
steady-state mass, momentum and energy balances, i.e., the model does
not store mass or energy. There exist two thermodynamic states, one at
each fluid port. The momentum balance is formulated for the two states,
taking into account momentum flows, friction and gravity. The same
result can be obtained by using
[DynamicPipe](Modelica_Fluid_Pipes.html#Modelica.Fluid.Pipes.DynamicPipe)
with steady-state dynamic settings. The intended use is to provide
simple connections of vessels or other devices with storage, as it is
done in:

-   [Examples.Tanks.EmptyTanks](Modelica_Fluid_Examples_Tanks.html#Modelica.Fluid.Examples.Tanks.EmptyTanks)
-   [Examples.InverseParameterization](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples.InverseParameterization)

### Numerical Issues

With the stream connectors the thermodynamic states on the ports are
generally defined by models with storage or by sources placed upstream
and downstream of the static pipe. Other non storage components in the
flow path may yield to state transformation. Note that this generally
leads to nonlinear equation systems if multiple static pipes, or other
flow models without storage, are directly connected.

::

Extends from
[Modelica.Fluid.Pipes.BaseClasses.PartialStraightPipe](Modelica_Fluid_Pipes_BaseClasses.html#Modelica.Fluid.Pipes.BaseClasses.PartialStraightPipe)
(Base class for straight pipe models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                    Name                     Default Description
  ----------------------- ------------------------ ------- ----------------
  replaceable package     [PartialMedium](Modelica Medium  
  Medium                  _Media_Interfaces_Partia in the  
                          lMedium.html#Modelica.Me compone 
                          dia.Interfaces.PartialMe nt      
                          dium)                            

  Geometry                                                 

  Real                    nParallel                1       Number of
                                                           identical
                                                           parallel pipes

  [Length](Modelica_SIuni length                           Length [m]
  ts.html#Modelica.SIunit                                  
  s.Length)                                                

  Boolean                 isCircular               true    = true if cross
                                                           sectional area
                                                           is circular

  [Diameter](Modelica_SIu diameter                         Diameter of
  nits.html#Modelica.SIun                                  circular pipe
  its.Diameter)                                            [m]

  [Area](Modelica_SIunits crossArea                Modelic Inner cross
  .html#Modelica.SIunits.                          a.Const section area
  Area)                                            ants.pi [m2]
                                                   \*diame 
                                                   t...    

  [Length](Modelica_SIuni perimeter                Modelic Inner perimeter
  ts.html#Modelica.SIunit                          a.Const [m]
  s.Length)                                        ants.pi 
                                                   \*diame 
                                                   ter     

  [Height](Modelica_SIuni roughness                2.5e-5  Average height
  ts.html#Modelica.SIunit                                  of surface
  s.Height)                                                asperities
                                                           (default: smooth
                                                           steel pipe) [m]

  Static head                                              

  [Length](Modelica_SIuni height\_ab               0       Height(port\_b)
  ts.html#Modelica.SIunit                                  -
  s.Length)                                                Height(port\_a)
                                                           [m]

  Pressure loss                                            

  replaceable model       [DetailedPipeFlow](Model Wall    
  FlowModel               ica_Fluid_Pipes_BaseClas frictio 
                          ses_FlowModels.html#Mode n,      
                          lica.Fluid.Pipes.BaseCla gravity 
                          sses.FlowModels.Detailed ,       
                          PipeFlow)                momentu 
                                                   m       
                                                   flow    

  **Assumptions**                                          

  Boolean                 allowFlowReversal        system. = true to allow
                                                   allowFl flow reversal,
                                                   owRever false restricts
                                                   sal     to design
                                                           direction
                                                           (port\_a -\>
                                                           port\_b)

  **Initialization**                                       

  [AbsolutePressure](Mode p\_a\_start              system. Start value of
  lica_Media_Interfaces_P                          p\_star pressure at port
  artialMedium.html#Model                          t       a [Pa]
  ica.Media.Interfaces.Pa                                  
  rtialMedium.AbsolutePre                                  
  ssure)                                                   

  [AbsolutePressure](Mode p\_b\_start              p\_a\_s Start value of
  lica_Media_Interfaces_P                          tart    pressure at port
  artialMedium.html#Model                                  b [Pa]
  ica.Media.Interfaces.Pa                                  
  rtialMedium.AbsolutePre                                  
  ssure)                                                   

  [MassFlowRate](Modelica m\_flow\_start           system. Start value for
  _Media_Interfaces_Parti                          m\_flow mass flow rate
  alMedium.html#Modelica.                          \_start [kg/s]
  Media.Interfaces.Partia                                  
  lMedium.MassFlowRate)                                    
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                Name Description
  ----------------------------------- ---- -------------------------------
  [FluidPort\_a](Modelica_Fluid_Inter port Fluid connector a (positive
  faces.html#Modelica.Fluid.Interface \_a  design flow direction is from
  s.FluidPort_a)                           port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Inter port Fluid connector b (positive
  faces.html#Modelica.Fluid.Interface \_b  design flow direction is from
  s.FluidPort_b)                           port\_a to port\_b)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model StaticPipe 
      "Basic pipe flow model without storage of mass or energy"

      // extending PartialStraightPipe
      extends Modelica.Fluid.Pipes.BaseClasses.PartialStraightPipe;

      // Initialization
      parameter Medium.AbsolutePressure p_a_start=system.p_start 
        "Start value of pressure at port a";
      parameter Medium.AbsolutePressure p_b_start=p_a_start 
        "Start value of pressure at port b";
      parameter Medium.MassFlowRate m_flow_start = system.m_flow_start 
        "Start value for mass flow rate";

      FlowModel flowModel(
              redeclare final package Medium = Medium,
              final n=2,
              states={Medium.setState_phX(port_a.p, inStream(port_a.h_outflow), inStream(port_a.Xi_outflow)),
                     Medium.setState_phX(port_b.p, inStream(port_b.h_outflow), inStream(port_b.Xi_outflow))},
              vs={port_a.m_flow/Medium.density(flowModel.states[1])/flowModel.crossAreas[1],
                  -port_b.m_flow/Medium.density(flowModel.states[2])/flowModel.crossAreas[2]}/nParallel,
              final momentumDynamics=Types.Dynamics.SteadyState,
              final allowFlowReversal=allowFlowReversal,
              final p_a_start=p_a_start,
              final p_b_start=p_b_start,
              final m_flow_start=m_flow_start,
              final nParallel=nParallel,
              final pathLengths={length},
              final crossAreas={crossArea, crossArea},
              final dimensions={4*crossArea/perimeter, 4*crossArea/perimeter},
              final roughnesses={roughness, roughness},
              final dheights={height_ab},
              final g=system.g) "Flow model";
    equation 
      // Mass balance
      port_a.m_flow = flowModel.m_flows[1];
      0 = port_a.m_flow + port_b.m_flow;
      port_a.Xi_outflow = inStream(port_b.Xi_outflow);
      port_b.Xi_outflow = inStream(port_a.Xi_outflow);
      port_a.C_outflow = inStream(port_b.C_outflow);
      port_b.C_outflow = inStream(port_a.C_outflow);

      // Energy balance, considering change of potential energy
      // Wb_flow = v*A*dpdx + v*F_fric
      //         = m_flow/d/A * (A*dpdx + A*pressureLoss.dp_fg - F_grav)
      //         = m_flow/d/A * (-A*g*height_ab*d)
      //         = -m_flow*g*height_ab
      port_b.h_outflow = inStream(port_a.h_outflow) - system.g*height_ab;
      port_a.h_outflow = inStream(port_b.h_outflow) + system.g*height_ab;

    end StaticPipe;

* * * * *

![image7](Modelica.Fluid.Pipes.DynamicPipeI.png) [Modelica.Fluid.Pipes](Modelica_Fluid_Pipes.html#Modelica.Fluid.Pipes).DynamicPipe
===================================================================================================================================

**Dynamic pipe model with storage of mass and energy**

Information
-----------

::

Model of a straight pipe with distributed mass, energy and momentum
balances. It provides the complete balance equations for one-dimensional
fluid flow as formulated in
[UsersGuide.ComponentDefinition.BalanceEquations](Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.BalanceEquations).

The partial differential equations are treated with the finite volume
method and a staggered grid scheme for momentum balances. The pipe is
split into nNodes equally spaced segments along the flow path. The
default value is nNodes=2. This results in two lumped mass and energy
balances and one lumped momentum balance across the dynamic pipe.

Note that this generally leads to high-index DAEs for pressure states if
dynamic pipes are directly connected to each other, or generally to
models with storage exposing a thermodynamic state through the port.
This may not be valid if the dynamic pipe is connected to a model with
non-differentiable pressure, like a Sources.Boundary\_pT with prescribed
jumping pressure. The **`modelStructure`** can be configured as
appropriate in such situations, in order to place a momentum balance
between a pressure state of the pipe and a non-differentiable boundary
condition.

The default **`modelStructure`** is `av_vb` (see Advanced tab). The
simplest possible alternative symetric configuration, avoiding potential
high-index DAEs at the cost of the potential introduction of nonlinear
equation systems, is obtained with the setting
`nNodes=1, modelStructure=a_v_b`. Depending on the configured model
structure, the first and the last pipe segment, or the flow path length
of the first and the last momentum balance, are of half size. See the
documentation of the base class
[Pipes.BaseClasses.PartialTwoPortFlow](Modelica_Fluid_Pipes_BaseClasses.html#Modelica.Fluid.Pipes.BaseClasses.PartialTwoPortFlow),
also covering asymmetric configurations.

The **`HeatTransfer`** component specifies the source term `Qb_flows` of
the energy balance. The default component uses a constant coefficient
for the heat transfer between the bulk flow and the segment boundaries
exposed through the `heatPorts`. The `HeatTransfer` model is replaceable
and can be exchanged with any model extended from
[BaseClasses.HeatTransfer.PartialFlowHeatTransfer](Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer).

The intended use is for complex networks of pipes and other flow
devices, like valves. See e.g.

-   [Examples.BranchingDynamicPipes](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples.BranchingDynamicPipes),
    or
-   [Examples.IncompressibleFluidNetwork](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples.IncompressibleFluidNetwork).

::

Extends from
[Modelica.Fluid.Pipes.BaseClasses.PartialStraightPipe](Modelica_Fluid_Pipes_BaseClasses.html#Modelica.Fluid.Pipes.BaseClasses.PartialStraightPipe)
(Base class for straight pipe models),
[BaseClasses.PartialTwoPortFlow](Modelica_Fluid_Pipes_BaseClasses.html#Modelica.Fluid.Pipes.BaseClasses.PartialTwoPortFlow)
(Base class for distributed flow models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                    Name                     Default Description
  ----------------------- ------------------------ ------- ----------------
  replaceable package     [PartialMedium](Modelica Medium  
  Medium                  _Media_Interfaces_Partia in the  
                          lMedium.html#Modelica.Me compone 
                          dia.Interfaces.PartialMe nt      
                          dium)                            

  Geometry                                                 

  Real                    nParallel                1       Number of
                                                           identical
                                                           parallel pipes

  [Length](Modelica_SIuni length                           Length [m]
  ts.html#Modelica.SIunit                                  
  s.Length)                                                

  Boolean                 isCircular               true    = true if cross
                                                           sectional area
                                                           is circular

  [Diameter](Modelica_SIu diameter                         Diameter of
  nits.html#Modelica.SIun                                  circular pipe
  its.Diameter)                                            [m]

  [Area](Modelica_SIunits crossArea                Modelic Inner cross
  .html#Modelica.SIunits.                          a.Const section area
  Area)                                            ants.pi [m2]
                                                   \*diame 
                                                   t...    

  [Length](Modelica_SIuni perimeter                Modelic Inner perimeter
  ts.html#Modelica.SIunit                          a.Const [m]
  s.Length)                                        ants.pi 
                                                   \*diame 
                                                   ter     

  [Height](Modelica_SIuni roughness                2.5e-5  Average height
  ts.html#Modelica.SIunit                                  of surface
  s.Height)                                                asperities
                                                           (default: smooth
                                                           steel pipe) [m]

  [Length](Modelica_SIuni lengths[n]               if n == lengths of flow
  ts.html#Modelica.SIunit                          1 then  segments [m]
  s.Length)                                        {length 
                                                   }       
                                                   else... 

  [Area](Modelica_SIunits crossAreas[n]            fill(cr cross flow areas
  .html#Modelica.SIunits.                          ossArea of flow segments
  Area)                                            ,       [m2]
                                                   n)      

  [Length](Modelica_SIuni dimensions[n]            fill(4\ hydraulic
  ts.html#Modelica.SIunit                          *crossA diameters of
  s.Length)                                        rea/per flow segments
                                                   imeter, [m]
                                                   n)      

  [Height](Modelica_SIuni roughnesses[n]           fill(ro Average heights
  ts.html#Modelica.SIunit                          ughness of surface
  s.Height)                                        ,       asperities [m]
                                                   n)      

  Static head                                              

  [Length](Modelica_SIuni height\_ab               0       Height(port\_b)
  ts.html#Modelica.SIunit                                  -
  s.Length)                                                Height(port\_a)
                                                           [m]

  [Length](Modelica_SIuni dheights[n]              height\ Differences in
  ts.html#Modelica.SIunit                          _ab\*dx heigths of flow
  s.Length)                                        s       segments [m]

  Pressure loss                                            

  replaceable model       [DetailedPipeFlow](Model Wall    
  FlowModel               ica_Fluid_Pipes_BaseClas frictio 
                          ses_FlowModels.html#Mode n,      
                          lica.Fluid.Pipes.BaseCla gravity 
                          sses.FlowModels.Detailed ,       
                          PipeFlow)                momentu 
                                                   m       
                                                   flow    

  **Assumptions**                                          

  Boolean                 allowFlowReversal        system. = true to allow
                                                   allowFl flow reversal,
                                                   owRever false restricts
                                                   sal     to design
                                                           direction
                                                           (port\_a -\>
                                                           port\_b)

  Dynamics                                                 

  [Dynamics](Modelica_Flu energyDynamics           system. Formulation of
  id_Types.html#Modelica.                          energyD energy balances
  Fluid.Types.Dynamics)                            ynamics 

  [Dynamics](Modelica_Flu massDynamics             system. Formulation of
  id_Types.html#Modelica.                          massDyn mass balances
  Fluid.Types.Dynamics)                            amics   

  [Dynamics](Modelica_Flu momentumDynamics         system. Formulation of
  id_Types.html#Modelica.                          momentu momentum
  Fluid.Types.Dynamics)                            mDynami balances
                                                   cs      

  Heat transfer                                            

  Boolean                 use\_HeatTransfer        false   = true to use
                                                           the HeatTransfer
                                                           model

  **Initialization**                                       

  [AbsolutePressure](Mode p\_a\_start              system. Start value of
  lica_Media_Interfaces_P                          p\_star pressure at port
  artialMedium.html#Model                          t       a [Pa]
  ica.Media.Interfaces.Pa                                  
  rtialMedium.AbsolutePre                                  
  ssure)                                                   

  [AbsolutePressure](Mode p\_b\_start              p\_a\_s Start value of
  lica_Media_Interfaces_P                          tart    pressure at port
  artialMedium.html#Model                                  b [Pa]
  ica.Media.Interfaces.Pa                                  
  rtialMedium.AbsolutePre                                  
  ssure)                                                   

  Boolean                 use\_T\_start            true    Use T\_start if
                                                           true, otherwise
                                                           h\_start

  [Temperature](Modelica_ T\_start                 if      Start value of
  Media_Interfaces_Partia                          use\_T\ temperature [K]
  lMedium.html#Modelica.M                          _start  
  edia.Interfaces.Partial                          then    
  Medium.Temperature)                              system. 
                                                   T...    

  [SpecificEnthalpy](Mode h\_start                 if      Start value of
  lica_Media_Interfaces_P                          use\_T\ specific
  artialMedium.html#Model                          _start  enthalpy [J/kg]
  ica.Media.Interfaces.Pa                          then    
  rtialMedium.SpecificEnt                          Medium. 
  halpy)                                           s...    

  [MassFraction](Modelica X\_start[Medium.nX]      Medium. Start value of
  _Media_Interfaces_Parti                          X\_defa mass fractions
  alMedium.html#Modelica.                          ult     m\_i/m [kg/kg]
  Media.Interfaces.Partia                                  
  lMedium.MassFraction)                                    

  [ExtraProperty](Modelic C\_start[Medium.nC]      fill(0, Start value of
  a_Media_Interfaces_Part                          Medium. trace substances
  ialMedium.html#Modelica                          nC)     
  .Media.Interfaces.Parti                                  
  alMedium.ExtraProperty)                                  

  [MassFlowRate](Modelica m\_flow\_start           system. Start value for
  _Media_Interfaces_Parti                          m\_flow mass flow rate
  alMedium.html#Modelica.                          \_start [kg/s]
  Media.Interfaces.Partia                                  
  lMedium.MassFlowRate)                                    

  **Advanced**                                             

  Integer                 nNodes                   2       Number of
                                                           discrete flow
                                                           volumes

  [ModelStructure](Modeli modelStructure           Types.M Determines
  ca_Fluid_Types.html#Mod                          odelStr whether flow or
  elica.Fluid.Types.Model                          ucture. volume models
  Structure)                                       av\_vb  are present at
                                                           the ports

  Boolean                 useLumpedPressure        false   =true to lump
                                                           pressure states
                                                           together

  Boolean                 useInnerPortProperties   false   =true to take
                                                           port properties
                                                           for flow models
                                                           from internal
                                                           control volumes
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                              Name     Description
  --------------------------------- -------- ------------------------------
  [FluidPort\_a](Modelica_Fluid_Int port\_a  Fluid connector a (positive
  erfaces.html#Modelica.Fluid.Inter          design flow direction is from
  faces.FluidPort_a)                         port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Int port\_b  Fluid connector b (positive
  erfaces.html#Modelica.Fluid.Inter          design flow direction is from
  faces.FluidPort_b)                         port\_a to port\_b)

  [HeatPorts\_a](Modelica_Fluid_Int heatPort 
  erfaces.html#Modelica.Fluid.Inter s[nNodes 
  faces.HeatPorts_a)                ]        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model DynamicPipe 
      "Dynamic pipe model with storage of mass and energy"

      import Modelica.Fluid.Types.ModelStructure;

      // extending PartialStraightPipe
      extends Modelica.Fluid.Pipes.BaseClasses.PartialStraightPipe(
        final port_a_exposesState = (modelStructure == ModelStructure.av_b) or (modelStructure == ModelStructure.av_vb),
        final port_b_exposesState = (modelStructure == ModelStructure.a_vb) or (modelStructure == ModelStructure.av_vb));

      // extending PartialTwoPortFlow
      extends BaseClasses.PartialTwoPortFlow(
        final lengths=if n == 1 then 
                          {length} else 
                      if modelStructure == ModelStructure.av_vb then 
                          cat(1, {length/(n-1)/2}, fill(length/(n-1), n-2), {length/(n-1)/2}) else 
                      if modelStructure == ModelStructure.av_b then 
                          cat(1, {length/n/2}, fill(length*(1-1/n/2)/(n-1), n-1)) else 
                      if modelStructure == ModelStructure.a_vb then 
                          cat(1, fill(length*(1-1/n/2)/(n-1), n-1), {length/n/2}) else 
                          fill(length/n, n),
        final crossAreas=fill(crossArea, n),
        final dimensions=fill(4*crossArea/perimeter, n),
        final roughnesses=fill(roughness, n),
        final dheights=height_ab*dxs);

      // Wall heat transfer
      parameter Boolean use_HeatTransfer = false 
        "= true to use the HeatTransfer model";
      replaceable model HeatTransfer =
          Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer
        constrainedby 
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer 
        "Wall heat transfer";
      Interfaces.HeatPorts_a[nNodes] heatPorts if use_HeatTransfer;

      HeatTransfer heatTransfer(
        redeclare each final package Medium = Medium,
        final n=n,
        final nParallel=nParallel,
        final surfaceAreas=perimeter*lengths,
        final lengths=lengths,
        final dimensions=dimensions,
        final roughnesses=roughnesses,
        final states=mediums.state,
        final vs = vs,
        final use_k = use_HeatTransfer) "Heat transfer model";
      final parameter Real[n] dxs = lengths/sum(lengths);
    equation 
      Qb_flows = heatTransfer.Q_flows;
      // Wb_flow = v*A*dpdx + v*F_fric
      //         = v*A*dpdx + v*A*flowModel.dp_fg - v*A*dp_grav
      if n == 1 or useLumpedPressure then
        Wb_flows = dxs * ((vs*dxs)*(crossAreas*dxs)*((port_b.p - port_a.p) + sum(flowModel.dps_fg) - system.g*(dheights*mediums.d)))*nParallel;
      else
        if modelStructure == ModelStructure.av_vb or modelStructure == ModelStructure.av_b then
          Wb_flows[2:n-1] = {vs[i]*crossAreas[i]*((mediums[i+1].p - mediums[i-1].p)/2 + (flowModel.dps_fg[i-1]+flowModel.dps_fg[i])/2 - system.g*dheights[i]*mediums[i].d) for i in 2:n-1}*nParallel;
        else
          Wb_flows[2:n-1] = {vs[i]*crossAreas[i]*((mediums[i+1].p - mediums[i-1].p)/2 + (flowModel.dps_fg[i]+flowModel.dps_fg[i+1])/2 - system.g*dheights[i]*mediums[i].d) for i in 2:n-1}*nParallel;
        end if;
        if modelStructure == ModelStructure.av_vb then
          Wb_flows[1] = vs[1]*crossAreas[1]*((mediums[2].p - mediums[1].p)/2 + flowModel.dps_fg[1]/2 - system.g*dheights[1]*mediums[1].d)*nParallel;
          Wb_flows[n] = vs[n]*crossAreas[n]*((mediums[n].p - mediums[n-1].p)/2 + flowModel.dps_fg[n-1]/2 - system.g*dheights[n]*mediums[n].d)*nParallel;
        elseif modelStructure == ModelStructure.av_b then
          Wb_flows[1] = vs[1]*crossAreas[1]*((mediums[2].p - mediums[1].p)/2 + flowModel.dps_fg[1]/2 - system.g*dheights[1]*mediums[1].d)*nParallel;
          Wb_flows[n] = vs[n]*crossAreas[n]*((port_b.p - mediums[n-1].p)/1.5 + flowModel.dps_fg[n-1]/2+flowModel.dps_fg[n] - system.g*dheights[n]*mediums[n].d)*nParallel;
        elseif modelStructure == ModelStructure.a_vb then
          Wb_flows[1] = vs[1]*crossAreas[1]*((mediums[2].p - port_a.p)/1.5 + flowModel.dps_fg[1]+flowModel.dps_fg[2]/2 - system.g*dheights[1]*mediums[1].d)*nParallel;
          Wb_flows[n] = vs[n]*crossAreas[n]*((mediums[n].p - mediums[n-1].p)/2 + flowModel.dps_fg[n]/2 - system.g*dheights[n]*mediums[n].d)*nParallel;
        elseif modelStructure == ModelStructure.a_v_b then
          Wb_flows[1] = vs[1]*crossAreas[1]*((mediums[2].p - port_a.p)/1.5 + flowModel.dps_fg[1]+flowModel.dps_fg[2]/2 - system.g*dheights[1]*mediums[1].d)*nParallel;
          Wb_flows[n] = vs[n]*crossAreas[n]*((port_b.p - mediums[n-1].p)/1.5 + flowModel.dps_fg[n]/2+flowModel.dps_fg[n+1] - system.g*dheights[n]*mediums[n].d)*nParallel;
        else
          assert(true, "Unknown model structure");
        end if;
      end if;

      connect(heatPorts, heatTransfer.heatPorts);
    end DynamicPipe;

* * * * *

![Modelica.Fluid.Pipes.DynamicPipe.HeatTransfer](Modelica.Fluid.Pipes.DynamicPipe.HeatTransferI.png) [Modelica.Fluid.Pipes.DynamicPipe](Modelica_Fluid_Pipes.html#Modelica.Fluid.Pipes.DynamicPipe).HeatTransfer
================================================================================================================================================================================================================

**Wall heat transfer**

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

    replaceable model HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer
      constrainedby 
      Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer 
      "Wall heat transfer";

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:13 2010.
