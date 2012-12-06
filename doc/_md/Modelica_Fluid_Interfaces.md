% Modelica.Fluid.Interfaces
% 
% 

[Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid).Interfaces
===============================================================

**Interfaces for steady state and unsteady, mixed-phase,
multi-substance, incompressible and compressible flow**

Information
-----------

::

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                   Description
  -------------------------------------- ---------------------------------
  ![image11](Modelica.Fluid.Interfaces.F Interface for quasi
  luidPortS.png)                         one-dimensional fluid flow in a
  [FluidPort](Modelica_Fluid_Interfaces. piping network (incompressible or
  html#Modelica.Fluid.Interfaces.FluidPo compressible, one or more phases,
  rt)                                    one or more substances)

  ![image12](Modelica.Fluid.Interfaces.F Generic fluid connector at design
  luidPort_aS.png)                       inlet
  [FluidPort\_a](Modelica_Fluid_Interfac 
  es.html#Modelica.Fluid.Interfaces.Flui 
  dPort_a)                               

  ![image13](Modelica.Fluid.Interfaces.F Generic fluid connector at design
  luidPort_bS.png)                       outlet
  [FluidPort\_b](Modelica_Fluid_Interfac 
  es.html#Modelica.Fluid.Interfaces.Flui 
  dPort_b)                               

  ![image14](Modelica.Fluid.Interfaces.F Fluid connector with filled,
  luidPorts_aS.png)                      large icon to be used for vectors
  [FluidPorts\_a](Modelica_Fluid_Interfa of FluidPorts (vector dimensions
  ces.html#Modelica.Fluid.Interfaces.Flu must be added after dragging)
  idPorts_a)                             

  ![image15](Modelica.Fluid.Interfaces.F Fluid connector with outlined,
  luidPorts_bS.png)                      large icon to be used for vectors
  [FluidPorts\_b](Modelica_Fluid_Interfa of FluidPorts (vector dimensions
  ces.html#Modelica.Fluid.Interfaces.Flu must be added after dragging)
  idPorts_b)                             

  ![image16](Modelica.Fluid.Interfaces.P Partial component with two ports
  artialTwoPortS.png)                    
  [PartialTwoPort](Modelica_Fluid_Interf 
  aces.html#Modelica.Fluid.Interfaces.Pa 
  rtialTwoPort)                          

  ![image17](Modelica.Fluid.Interfaces.P Partial element transporting
  artialTwoPortTransportS.png)           fluid between two ports without
  [PartialTwoPortTransport](Modelica_Flu storage of mass or energy
  id_Interfaces.html#Modelica.Fluid.Inte 
  rfaces.PartialTwoPortTransport)        

  ![image18](Modelica.Fluid.Interfaces.H HeatPort connector with filled,
  eatPorts_aS.png)                       large icon to be used for vectors
  [HeatPorts\_a](Modelica_Fluid_Interfac of HeatPorts (vector dimensions
  es.html#Modelica.Fluid.Interfaces.Heat must be added after dragging)
  Ports_a)                               

  ![image19](Modelica.Fluid.Interfaces.H HeatPort connector with filled,
  eatPorts_bS.png)                       large icon to be used for vectors
  [HeatPorts\_b](Modelica_Fluid_Interfac of HeatPorts (vector dimensions
  es.html#Modelica.Fluid.Interfaces.Heat must be added after dragging)
  Ports_b)                               

  ![image20](Modelica.Fluid.Interfaces.P Common interface for heat
  artialHeatTransferS.png)               transfer models
  [PartialHeatTransfer](Modelica_Fluid_I 
  nterfaces.html#Modelica.Fluid.Interfac 
  es.PartialHeatTransfer)                

  [PartialLumpedVolume](Modelica_Fluid_I Lumped volume with mass and
  nterfaces.html#Modelica.Fluid.Interfac energy balance
  es.PartialLumpedVolume)                

  [PartialLumpedFlow](Modelica_Fluid_Int Base class for a lumped momentum
  erfaces.html#Modelica.Fluid.Interfaces balance
  .PartialLumpedFlow)                    

  [PartialDistributedVolume](Modelica_Fl Base class for distributed volume
  uid_Interfaces.html#Modelica.Fluid.Int models
  erfaces.PartialDistributedVolume)      

  [PartialDistributedFlow](Modelica_Flui Base class for a distributed
  d_Interfaces.html#Modelica.Fluid.Inter momentum balance
  faces.PartialDistributedFlow)          

  ![image21](Modelica.Fluid.Interfaces.P Base flow model for pressure loss
  artialPressureLossS.png)               functions with the same area at
  [PartialPressureLoss](Modelica_Fluid_I port\_a and at port\_b
  nterfaces.html#Modelica.Fluid.Interfac 
  es.PartialPressureLoss)                
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).FluidPort
===============================================================================================

**Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)**

Contents
--------

  -------------------------------------------------------------------------
  Type                                  Name    Description
  ------------------------------------- ------- ---------------------------
  flow                                  m\_flow Mass flow rate from the
  [MassFlowRate](Modelica_Media_Interfa         connection point into the
  ces_PartialMedium.html#Modelica.Media         component [kg/s]
  .Interfaces.PartialMedium.MassFlowRat         
  e)                                            

  [AbsolutePressure](Modelica_Media_Int p       Thermodynamic pressure in
  erfaces_PartialMedium.html#Modelica.M         the connection point [Pa]
  edia.Interfaces.PartialMedium.Absolut         
  ePressure)                                    

  stream                                h\_outf Specific thermodynamic
  [SpecificEnthalpy](Modelica_Media_Int low     enthalpy close to the
  erfaces_PartialMedium.html#Modelica.M         connection point if m\_flow
  edia.Interfaces.PartialMedium.Specifi         < 0 [J/kg]
  cEnthalpy)                                    

  stream                                Xi\_out Independent mixture mass
  [MassFraction](Modelica_Media_Interfa flow[Me fractions m\_i/m close to
  ces_PartialMedium.html#Modelica.Media dium.nX the connection point if
  .Interfaces.PartialMedium.MassFractio i]      m\_flow < 0 [kg/kg]
  n)                                            

  stream                                C\_outf Properties c\_i/m close to
  [ExtraProperty](Modelica_Media_Interf low[Med the connection point if
  aces_PartialMedium.html#Modelica.Medi ium.nC] m\_flow < 0
  a.Interfaces.PartialMedium.ExtraPrope         
  rty)                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FluidPort 
      "Interface for quasi one-dimensional fluid flow in a piping network (incompressible or compressible, one or more phases, one or more substances)"

      replaceable package Medium = Modelica.Media.Interfaces.PartialMedium 
        "Medium model";

      flow Medium.MassFlowRate m_flow 
        "Mass flow rate from the connection point into the component";
      Medium.AbsolutePressure p "Thermodynamic pressure in the connection point";
      stream Medium.SpecificEnthalpy h_outflow 
        "Specific thermodynamic enthalpy close to the connection point if m_flow < 0";
      stream Medium.MassFraction Xi_outflow[Medium.nXi] 
        "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0";
      stream Medium.ExtraProperty C_outflow[Medium.nC] 
        "Properties c_i/m close to the connection point if m_flow < 0";
    end FluidPort;

* * * * *

![image22](Modelica.Fluid.Interfaces.FluidPort_aI.png) [Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).FluidPort\_a
=========================================================================================================================================================

**Generic fluid connector at design inlet**

Information
-----------

Extends from
[FluidPort](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort)
(Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)).

Parameters
----------

  -------------------------------------------------------------------------
  Type         Name                                         Default Descrip
                                                                    tion
  ------------ -------------------------------------------- ------- -------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_Pa Medium  
  package      rtialMedium.html#Modelica.Media.Interfaces.P model   
  Medium       artialMedium)                                        
  -------------------------------------------------------------------------

Contents
--------

  -------------------------------------------------------------------------
  Type                                  Name    Description
  ------------------------------------- ------- ---------------------------
  flow                                  m\_flow Mass flow rate from the
  [MassFlowRate](Modelica_Media_Interfa         connection point into the
  ces_PartialMedium.html#Modelica.Media         component [kg/s]
  .Interfaces.PartialMedium.MassFlowRat         
  e)                                            

  [AbsolutePressure](Modelica_Media_Int p       Thermodynamic pressure in
  erfaces_PartialMedium.html#Modelica.M         the connection point [Pa]
  edia.Interfaces.PartialMedium.Absolut         
  ePressure)                                    

  stream                                h\_outf Specific thermodynamic
  [SpecificEnthalpy](Modelica_Media_Int low     enthalpy close to the
  erfaces_PartialMedium.html#Modelica.M         connection point if m\_flow
  edia.Interfaces.PartialMedium.Specifi         < 0 [J/kg]
  cEnthalpy)                                    

  stream                                Xi\_out Independent mixture mass
  [MassFraction](Modelica_Media_Interfa flow[Me fractions m\_i/m close to
  ces_PartialMedium.html#Modelica.Media dium.nX the connection point if
  .Interfaces.PartialMedium.MassFractio i]      m\_flow < 0 [kg/kg]
  n)                                            

  stream                                C\_outf Properties c\_i/m close to
  [ExtraProperty](Modelica_Media_Interf low[Med the connection point if
  aces_PartialMedium.html#Modelica.Medi ium.nC] m\_flow < 0
  a.Interfaces.PartialMedium.ExtraPrope         
  rty)                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FluidPort_a "Generic fluid connector at design inlet"
      extends FluidPort;
    end FluidPort_a;

* * * * *

![image23](Modelica.Fluid.Interfaces.FluidPort_bI.png) [Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).FluidPort\_b
=========================================================================================================================================================

**Generic fluid connector at design outlet**

Information
-----------

Extends from
[FluidPort](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort)
(Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)).

Parameters
----------

  -------------------------------------------------------------------------
  Type         Name                                         Default Descrip
                                                                    tion
  ------------ -------------------------------------------- ------- -------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_Pa Medium  
  package      rtialMedium.html#Modelica.Media.Interfaces.P model   
  Medium       artialMedium)                                        
  -------------------------------------------------------------------------

Contents
--------

  -------------------------------------------------------------------------
  Type                                  Name    Description
  ------------------------------------- ------- ---------------------------
  flow                                  m\_flow Mass flow rate from the
  [MassFlowRate](Modelica_Media_Interfa         connection point into the
  ces_PartialMedium.html#Modelica.Media         component [kg/s]
  .Interfaces.PartialMedium.MassFlowRat         
  e)                                            

  [AbsolutePressure](Modelica_Media_Int p       Thermodynamic pressure in
  erfaces_PartialMedium.html#Modelica.M         the connection point [Pa]
  edia.Interfaces.PartialMedium.Absolut         
  ePressure)                                    

  stream                                h\_outf Specific thermodynamic
  [SpecificEnthalpy](Modelica_Media_Int low     enthalpy close to the
  erfaces_PartialMedium.html#Modelica.M         connection point if m\_flow
  edia.Interfaces.PartialMedium.Specifi         < 0 [J/kg]
  cEnthalpy)                                    

  stream                                Xi\_out Independent mixture mass
  [MassFraction](Modelica_Media_Interfa flow[Me fractions m\_i/m close to
  ces_PartialMedium.html#Modelica.Media dium.nX the connection point if
  .Interfaces.PartialMedium.MassFractio i]      m\_flow < 0 [kg/kg]
  n)                                            

  stream                                C\_outf Properties c\_i/m close to
  [ExtraProperty](Modelica_Media_Interf low[Med the connection point if
  aces_PartialMedium.html#Modelica.Medi ium.nC] m\_flow < 0
  a.Interfaces.PartialMedium.ExtraPrope         
  rty)                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FluidPort_b "Generic fluid connector at design outlet"
      extends FluidPort;
    end FluidPort_b;

* * * * *

![image24](Modelica.Fluid.Interfaces.FluidPorts_aI.png) [Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).FluidPorts\_a
===========================================================================================================================================================

**Fluid connector with filled, large icon to be used for vectors of
FluidPorts (vector dimensions must be added after dragging)**

Information
-----------

Extends from
[FluidPort](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort)
(Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)).

Parameters
----------

  -------------------------------------------------------------------------
  Type         Name                                         Default Descrip
                                                                    tion
  ------------ -------------------------------------------- ------- -------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_Pa Medium  
  package      rtialMedium.html#Modelica.Media.Interfaces.P model   
  Medium       artialMedium)                                        
  -------------------------------------------------------------------------

Contents
--------

  -------------------------------------------------------------------------
  Type                                  Name    Description
  ------------------------------------- ------- ---------------------------
  flow                                  m\_flow Mass flow rate from the
  [MassFlowRate](Modelica_Media_Interfa         connection point into the
  ces_PartialMedium.html#Modelica.Media         component [kg/s]
  .Interfaces.PartialMedium.MassFlowRat         
  e)                                            

  [AbsolutePressure](Modelica_Media_Int p       Thermodynamic pressure in
  erfaces_PartialMedium.html#Modelica.M         the connection point [Pa]
  edia.Interfaces.PartialMedium.Absolut         
  ePressure)                                    

  stream                                h\_outf Specific thermodynamic
  [SpecificEnthalpy](Modelica_Media_Int low     enthalpy close to the
  erfaces_PartialMedium.html#Modelica.M         connection point if m\_flow
  edia.Interfaces.PartialMedium.Specifi         < 0 [J/kg]
  cEnthalpy)                                    

  stream                                Xi\_out Independent mixture mass
  [MassFraction](Modelica_Media_Interfa flow[Me fractions m\_i/m close to
  ces_PartialMedium.html#Modelica.Media dium.nX the connection point if
  .Interfaces.PartialMedium.MassFractio i]      m\_flow < 0 [kg/kg]
  n)                                            

  stream                                C\_outf Properties c\_i/m close to
  [ExtraProperty](Modelica_Media_Interf low[Med the connection point if
  aces_PartialMedium.html#Modelica.Medi ium.nC] m\_flow < 0
  a.Interfaces.PartialMedium.ExtraPrope         
  rty)                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FluidPorts_a 
      "Fluid connector with filled, large icon to be used for vectors of FluidPorts (vector dimensions must be added after dragging)"
      extends FluidPort;
    end FluidPorts_a;

* * * * *

![image25](Modelica.Fluid.Interfaces.FluidPorts_bI.png) [Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).FluidPorts\_b
===========================================================================================================================================================

**Fluid connector with outlined, large icon to be used for vectors of
FluidPorts (vector dimensions must be added after dragging)**

Information
-----------

Extends from
[FluidPort](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort)
(Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)).

Parameters
----------

  -------------------------------------------------------------------------
  Type         Name                                         Default Descrip
                                                                    tion
  ------------ -------------------------------------------- ------- -------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_Pa Medium  
  package      rtialMedium.html#Modelica.Media.Interfaces.P model   
  Medium       artialMedium)                                        
  -------------------------------------------------------------------------

Contents
--------

  -------------------------------------------------------------------------
  Type                                  Name    Description
  ------------------------------------- ------- ---------------------------
  flow                                  m\_flow Mass flow rate from the
  [MassFlowRate](Modelica_Media_Interfa         connection point into the
  ces_PartialMedium.html#Modelica.Media         component [kg/s]
  .Interfaces.PartialMedium.MassFlowRat         
  e)                                            

  [AbsolutePressure](Modelica_Media_Int p       Thermodynamic pressure in
  erfaces_PartialMedium.html#Modelica.M         the connection point [Pa]
  edia.Interfaces.PartialMedium.Absolut         
  ePressure)                                    

  stream                                h\_outf Specific thermodynamic
  [SpecificEnthalpy](Modelica_Media_Int low     enthalpy close to the
  erfaces_PartialMedium.html#Modelica.M         connection point if m\_flow
  edia.Interfaces.PartialMedium.Specifi         < 0 [J/kg]
  cEnthalpy)                                    

  stream                                Xi\_out Independent mixture mass
  [MassFraction](Modelica_Media_Interfa flow[Me fractions m\_i/m close to
  ces_PartialMedium.html#Modelica.Media dium.nX the connection point if
  .Interfaces.PartialMedium.MassFractio i]      m\_flow < 0 [kg/kg]
  n)                                            

  stream                                C\_outf Properties c\_i/m close to
  [ExtraProperty](Modelica_Media_Interf low[Med the connection point if
  aces_PartialMedium.html#Modelica.Medi ium.nC] m\_flow < 0
  a.Interfaces.PartialMedium.ExtraPrope         
  rty)                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FluidPorts_b 
      "Fluid connector with outlined, large icon to be used for vectors of FluidPorts (vector dimensions must be added after dragging)"
      extends FluidPort;
    end FluidPorts_b;

* * * * *

![image26](Modelica.Fluid.Interfaces.PartialTwoPortI.png) [Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).PartialTwoPort
==============================================================================================================================================================

**Partial component with two ports**

Information
-----------

::

This partial model defines an interface for components with two ports.
The treatment of the design flow direction and of flow reversal are
predefined based on the parameter `allowFlowReversal`. The component may
transport fluid and may have internal storage for a given fluid
`Medium`.

An extending model providing direct access to internal storage of mass
or energy through port\_a or port\_b should redefine the protected
parameters `port_a_exposesState` and `port_b_exposesState`
appropriately. This will be visualized at the port icons, in order to
improve the understanding of fluid model diagrams.

::

Parameters
----------

  ------------------------------------------------------------------------
  Type     Name      Default      Description
  -------- --------- ------------ ----------------------------------------
  **Assump                        
  tions**                         

  Boolean  allowFlow system.allow = true to allow flow reversal, false
           Reversal  FlowReversal restricts to design direction (port\_a
                                  -\> port\_b)
  ------------------------------------------------------------------------

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

    partial model PartialTwoPort "Partial component with two ports"
      import Modelica.Constants;
      outer Modelica.Fluid.System system "System wide properties";

      replaceable package Medium =
          Modelica.Media.Interfaces.PartialMedium "Medium in the component";

      parameter Boolean allowFlowReversal = system.allowFlowReversal 
        "= true to allow flow reversal, false restricts to design direction (port_a -> port_b)";

      Modelica.Fluid.Interfaces.FluidPort_a port_a(
                                    redeclare package Medium = Medium,
                         m_flow(min=if allowFlowReversal then -Constants.inf else 0)) 
        "Fluid connector a (positive design flow direction is from port_a to port_b)";
      Modelica.Fluid.Interfaces.FluidPort_b port_b(
                                    redeclare package Medium = Medium,
                         m_flow(max=if allowFlowReversal then +Constants.inf else 0)) 
        "Fluid connector b (positive design flow direction is from port_a to port_b)";
      // Model structure, e.g., used for visualization
    protected 
      parameter Boolean port_a_exposesState = false 
        "= true if port_a exposes the state of a fluid volume";
      parameter Boolean port_b_exposesState = false 
        "= true if port_b.p exposes the state of a fluid volume";
      parameter Boolean showDesignFlowDirection = true 
        "= false to hide the arrow in the model icon";

    end PartialTwoPort;

* * * * *

![image27](Modelica.Fluid.Interfaces.PartialTwoPortTransportI.png) [Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).PartialTwoPortTransport
================================================================================================================================================================================

**Partial element transporting fluid between two ports without storage
of mass or energy**

Information
-----------

::

This component transports fluid between its two ports, without storing
mass or energy. Energy may be exchanged with the environment though,
e.g., in the form of work. `PartialTwoPortTransport` is intended as base
class for devices like orifices, valves and simple fluid machines.

Three equations need to be added by an extending class using this
component:

-   the momentum balance specifying the relationship between the
    pressure drop `dp` and the mass flow rate `m_flow`
-   `port_b.h_outflow` for flow in design direction, and
-   `port_a.h_outflow` for flow in reverse direction.

::

Extends from
[PartialTwoPort](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPort)
(Partial component with two ports).

Parameters
----------

  ------------------------------------------------------------------------
  Type                      Name                  Defau Description
                                                  lt    
  ------------------------- --------------------- ----- ------------------
  replaceable package       [PartialMedium](Model Mediu 
  Medium                    ica_Media_Interfaces_ m     
                            PartialMedium.html#Mo in    
                            delica.Media.Interfac the   
                            es.PartialMedium)     compo 
                                                  nent  

  **Assumptions**                                       

  Boolean                   allowFlowReversal     syste = true to allow
                                                  m.all flow reversal,
                                                  owFlo false restricts to
                                                  wReve design direction
                                                  rsal  (port\_a -\>
                                                        port\_b)

  **Advanced**                                          

  [AbsolutePressure](Modeli dp\_start             0.01\ Guess value of dp
  ca_Media_Interfaces_Parti                       *syst = port\_a.p -
  alMedium.html#Modelica.Me                       em.p\ port\_b.p [Pa]
  dia.Interfaces.PartialMed                       _star 
  ium.AbsolutePressure)                           t     

  [MassFlowRate](Modelica_M m\_flow\_start        syste Guess value of
  edia_Interfaces_PartialMe                       m.m\_ m\_flow =
  dium.html#Modelica.Media.                       flow\ port\_a.m\_flow
  Interfaces.PartialMedium.                       _star [kg/s]
  MassFlowRate)                                   t     

  [MassFlowRate](Modelica_M m\_flow\_small        syste Small mass flow
  edia_Interfaces_PartialMe                       m.m\_ rate for
  dium.html#Modelica.Media.                       flow\ regularization of
  Interfaces.PartialMedium.                       _smal zero flow [kg/s]
  MassFlowRate)                                   l     

  Diagnostics                                           

  Boolean                   show\_T               true  = true, if
                                                        temperatures at
                                                        port\_a and
                                                        port\_b are
                                                        computed

  Boolean                   show\_V\_flow         true  = true, if volume
                                                        flow rate at
                                                        inflowing port is
                                                        computed
  ------------------------------------------------------------------------

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

    partial model PartialTwoPortTransport 
      "Partial element transporting fluid between two ports without storage of mass or energy"

      extends PartialTwoPort(
        final port_a_exposesState=false,
        final port_b_exposesState=false);

      // Advanced
      parameter Medium.AbsolutePressure dp_start = 0.01*system.p_start 
        "Guess value of dp = port_a.p - port_b.p";
      parameter Medium.MassFlowRate m_flow_start = system.m_flow_start 
        "Guess value of m_flow = port_a.m_flow";
      parameter Medium.MassFlowRate m_flow_small = system.m_flow_small 
        "Small mass flow rate for regularization of zero flow";

      // Diagnostics
      parameter Boolean show_T = true 
        "= true, if temperatures at port_a and port_b are computed";
      parameter Boolean show_V_flow = true 
        "= true, if volume flow rate at inflowing port is computed";

      // Variables
      Medium.MassFlowRate m_flow(
         min=if allowFlowReversal then -Modelica.Constants.inf else 0,
         start = m_flow_start) "Mass flow rate in design flow direction";
      Modelica.SIunits.Pressure dp(start=dp_start) 
        "Pressure difference between port_a and port_b (= port_a.p - port_b.p)";

      Modelica.SIunits.VolumeFlowRate V_flow=
          m_flow/Modelica.Fluid.Utilities.regStep(m_flow,
                      Medium.density(state_a),
                      Medium.density(state_b),
                      m_flow_small) if show_V_flow 
        "Volume flow rate at inflowing port (positive when flow from port_a to port_b)";

      Medium.Temperature port_a_T=
          Modelica.Fluid.Utilities.regStep(port_a.m_flow,
                      Medium.temperature(state_a),
                      Medium.temperature(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow)),
                      m_flow_small) if show_T 
        "Temperature close to port_a, if show_T = true";
      Medium.Temperature port_b_T=
          Modelica.Fluid.Utilities.regStep(port_b.m_flow,
                      Medium.temperature(state_b),
                      Medium.temperature(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow)),
                      m_flow_small) if show_T 
        "Temperature close to port_b, if show_T = true";
    protected 
      Medium.ThermodynamicState state_a "state for medium inflowing through port_a";
      Medium.ThermodynamicState state_b "state for medium inflowing through port_b";
    equation 
      // medium states
      state_a = Medium.setState_phX(port_a.p, inStream(port_a.h_outflow), inStream(port_a.Xi_outflow));
      state_b = Medium.setState_phX(port_b.p, inStream(port_b.h_outflow), inStream(port_b.Xi_outflow));

      // Pressure drop in design flow direction
      dp = port_a.p - port_b.p;

      // Design direction of mass flow rate
      m_flow = port_a.m_flow;
      assert(m_flow > -m_flow_small or allowFlowReversal, "Reverting flow occurs even though allowFlowReversal is false");

      // Mass balance (no storage)
      port_a.m_flow + port_b.m_flow = 0;

      // Transport of substances
      port_a.Xi_outflow = inStream(port_b.Xi_outflow);
      port_b.Xi_outflow = inStream(port_a.Xi_outflow);

      port_a.C_outflow = inStream(port_b.C_outflow);
      port_b.C_outflow = inStream(port_a.C_outflow);

    end PartialTwoPortTransport;

* * * * *

![image28](Modelica.Fluid.Interfaces.HeatPorts_aI.png) [Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).HeatPorts\_a
=========================================================================================================================================================

**HeatPort connector with filled, large icon to be used for vectors of
HeatPorts (vector dimensions must be added after dragging)**

Information
-----------

Extends from
[Modelica.Thermal.HeatTransfer.Interfaces.HeatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort)
(Thermal port for 1-dim. heat transfer).

Contents
--------

  -------------------------------------------------------------------------
  Type                              Name  Description
  --------------------------------- ----- ---------------------------------
  [Temperature](Modelica_SIunits.ht T     Port temperature [K]
  ml#Modelica.SIunits.Temperature)        

  flow                              Q\_fl Heat flow rate (positive if
  [HeatFlowRate](Modelica_SIunits.h ow    flowing from outside into the
  tml#Modelica.SIunits.HeatFlowRate       component) [W]
  )                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector HeatPorts_a 
      "HeatPort connector with filled, large icon to be used for vectors of HeatPorts (vector dimensions must be added after dragging)"
      extends Modelica.Thermal.HeatTransfer.Interfaces.HeatPort;
    end HeatPorts_a;

* * * * *

![image29](Modelica.Fluid.Interfaces.HeatPorts_bI.png) [Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).HeatPorts\_b
=========================================================================================================================================================

**HeatPort connector with filled, large icon to be used for vectors of
HeatPorts (vector dimensions must be added after dragging)**

Information
-----------

Extends from
[Modelica.Thermal.HeatTransfer.Interfaces.HeatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort)
(Thermal port for 1-dim. heat transfer).

Contents
--------

  -------------------------------------------------------------------------
  Type                              Name  Description
  --------------------------------- ----- ---------------------------------
  [Temperature](Modelica_SIunits.ht T     Port temperature [K]
  ml#Modelica.SIunits.Temperature)        

  flow                              Q\_fl Heat flow rate (positive if
  [HeatFlowRate](Modelica_SIunits.h ow    flowing from outside into the
  tml#Modelica.SIunits.HeatFlowRate       component) [W]
  )                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector HeatPorts_b 
      "HeatPort connector with filled, large icon to be used for vectors of HeatPorts (vector dimensions must be added after dragging)"
      extends Modelica.Thermal.HeatTransfer.Interfaces.HeatPort;
    end HeatPorts_b;

* * * * *

![image30](Modelica.Fluid.Interfaces.PartialHeatTransferI.png) [Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).PartialHeatTransfer
========================================================================================================================================================================

**Common interface for heat transfer models**

Information
-----------

::

This component is a common interface for heat transfer models. The heat
flow rates `Q_flows[n]` through the boundaries of n flow segments are
obtained as function of the thermodynamic `states` of the flow segments
for a given fluid `Medium`, the `surfaceAreas[n]` and the boundary
temperatures `heatPorts[n].T`.

The heat loss coefficient `k` can be used to model a thermal isolation
between `heatPorts.T` and `T_ambient`.

An extending model implementing this interface needs to define one
equation: the relation between the predefined fluid temperatures
`Ts[n]`, the boundary temperatures `heatPorts[n].T`, and the heat flow
rates `Q_flows[n]`.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name  Default  Description
  -------------------------------------- ----- -------- -------------------
  Ambient                                               

  [CoefficientOfHeatTransfer](Modelica_S k     0        Heat transfer
  Iunits.html#Modelica.SIunits.Coefficie                coefficient to
  ntOfHeatTransfer)                                     ambient [W/(m2.K)]

  [Temperature](Modelica_SIunits.html#Mo T\_am system.T Ambient temperature
  delica.SIunits.Temperature)            bient \_ambien [K]
                                               t        

  **Internal Interface**                                

  Integer                                n     1        Number of heat
                                                        transfer segments

  Boolean                                use\_ false    = true to use k
                                         k              value for thermal
                                                        isolation
  -------------------------------------------------------------------------

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

    partial model PartialHeatTransfer 
      "Common interface for heat transfer models"

      // Parameters
      replaceable package Medium=Modelica.Media.Interfaces.PartialMedium 
        "Medium in the component";

      parameter Integer n=1 "Number of heat transfer segments";

      // Inputs provided to heat transfer model
      input Medium.ThermodynamicState[n] states 
        "Thermodynamic states of flow segments";

      input SI.Area[n] surfaceAreas "Heat transfer areas";

      // Outputs defined by heat transfer model
      output SI.HeatFlowRate[n] Q_flows "Heat flow rates";

      // Parameters
      parameter Boolean use_k = false "= true to use k value for thermal isolation";
      parameter SI.CoefficientOfHeatTransfer k = 0 
        "Heat transfer coefficient to ambient";
      parameter SI.Temperature T_ambient = system.T_ambient "Ambient temperature";
      outer Modelica.Fluid.System system "System wide properties";

      // Heat ports
      Modelica.Fluid.Interfaces.HeatPorts_a[n] heatPorts 
        "Heat port to component boundary";

      // Variables
      SI.Temperature[n] Ts = Medium.temperature(states) 
        "Temperatures defined by fluid states";

    equation 
      if use_k then
        Q_flows = heatPorts.Q_flow + {k*surfaceAreas[i]*(T_ambient - heatPorts[i].T) for i in 1:n};
      else
        Q_flows = heatPorts.Q_flow;
      end if;

    end PartialHeatTransfer;

* * * * *

[Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).PartialLumpedVolume
=========================================================================================================

**Lumped volume with mass and energy balance**

Information
-----------

::

Interface and base class for an ideally mixed fluid volume with the
ability to store mass and energy. The following boundary flow and source
terms are part of the energy balance and must be specified in an
extending class:

-   `Qb_flow`, e.g., convective or latent heat flow rate across segment
    boundary, and
-   `Wb_flow`, work term, e.g., p\*der(fluidVolume) if the volume is not
    constant.

The component volume `fluidVolume` is an input that needs to be set in
the extending class to complete the model.

Further source terms must be defined by an extending class for fluid
flow across the segment boundary:

-   `Hb_flow`, enthalpy flow,
-   `mb_flow`, mass flow,
-   `mbXi_flow`, substance mass flow, and
-   `mbC_flow`, trace substance mass flow.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name    Default     Description
  -------------------------------------- ------- ----------- --------------
  **Assumptions**                                            

  Dynamics                                                   

  [Dynamics](Modelica_Fluid_Types.html#M energyD system.ener Formulation of
  odelica.Fluid.Types.Dynamics)          ynamics gyDynamics  energy balance

  [Dynamics](Modelica_Fluid_Types.html#M massDyn system.mass Formulation of
  odelica.Fluid.Types.Dynamics)          amics   Dynamics    mass balance

  **Initialization**                                         

  [AbsolutePressure](Modelica_Media_Inte p\_star system.p\_s Start value of
  rfaces_PartialMedium.html#Modelica.Med t       tart        pressure [Pa]
  ia.Interfaces.PartialMedium.AbsolutePr                     
  essure)                                                    

  Boolean                                use\_T\ true        = true, use
                                         _start              T\_start,
                                                             otherwise
                                                             h\_start

  [Temperature](Modelica_Media_Interface T\_star if          Start value of
  s_PartialMedium.html#Modelica.Media.In t       use\_T\_sta temperature
  terfaces.PartialMedium.Temperature)            rt          [K]
                                                 then        
                                                 system.T... 

  [SpecificEnthalpy](Modelica_Media_Inte h\_star if          Start value of
  rfaces_PartialMedium.html#Modelica.Med t       use\_T\_sta specific
  ia.Interfaces.PartialMedium.SpecificEn         rt          enthalpy
  thalpy)                                        then        [J/kg]
                                                 Medium.s... 

  [MassFraction](Modelica_Media_Interfac X\_star Medium.X\_d Start value of
  es_PartialMedium.html#Modelica.Media.I t[Mediu efault      mass fractions
  nterfaces.PartialMedium.MassFraction)  m.nX]               m\_i/m [kg/kg]

  [ExtraProperty](Modelica_Media_Interfa C\_star fill(0,     Start value of
  ces_PartialMedium.html#Modelica.Media. t[Mediu Medium.nC)  trace
  Interfaces.PartialMedium.ExtraProperty m.nC]               substances
  )                                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialLumpedVolume 
      "Lumped volume with mass and energy balance"
      import Modelica.Fluid.Types;
      import Modelica.Fluid.Types.Dynamics;
      import Modelica.Media.Interfaces.PartialMedium.Choices.IndependentVariables;

      outer Modelica.Fluid.System system "System properties";
      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the component";

      // Inputs provided to the volume model
      input SI.Volume fluidVolume "Volume";

      // Assumptions
      parameter Types.Dynamics energyDynamics=system.energyDynamics 
        "Formulation of energy balance";
      parameter Types.Dynamics massDynamics=system.massDynamics 
        "Formulation of mass balance";
      final parameter Types.Dynamics substanceDynamics=massDynamics 
        "Formulation of substance balance";
      final parameter Types.Dynamics traceDynamics=massDynamics 
        "Formulation of trace substance balance";

      // Initialization
      parameter Medium.AbsolutePressure p_start = system.p_start 
        "Start value of pressure";
      parameter Boolean use_T_start = true "= true, use T_start, otherwise h_start";
      parameter Medium.Temperature T_start=
        if use_T_start then system.T_start else Medium.temperature_phX(p_start,h_start,X_start) 
        "Start value of temperature";
      parameter Medium.SpecificEnthalpy h_start=
        if use_T_start then Medium.specificEnthalpy_pTX(p_start, T_start, X_start) else Medium.h_default 
        "Start value of specific enthalpy";
      parameter Medium.MassFraction X_start[Medium.nX] = Medium.X_default 
        "Start value of mass fractions m_i/m";
      parameter Medium.ExtraProperty C_start[Medium.nC](
           quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC) 
        "Start value of trace substances";

      Medium.BaseProperties medium(
        preferredMediumStates=true,
        p(start=p_start),
        h(start=h_start),
        T(start=T_start),
        Xi(start=X_start[1:Medium.nXi]));
      SI.Energy U "Internal energy of fluid";
      SI.Mass m "Mass of fluid";
      SI.Mass[Medium.nXi] mXi "Masses of independent components in the fluid";
      SI.Mass[Medium.nC] mC "Masses of trace substances in the fluid";
      // C need to be added here because unlike for Xi, which has medium.Xi,
      // there is no variable medium.C
      Medium.ExtraProperty C[Medium.nC] "Trace substance mixture content";

      // variables that need to be defined by an extending class
      SI.MassFlowRate mb_flow "Mass flows across boundaries";
      SI.MassFlowRate[Medium.nXi] mbXi_flow 
        "Substance mass flows across boundaries";
      Medium.ExtraPropertyFlowRate[Medium.nC] mbC_flow 
        "Trace substance mass flows across boundaries";
      SI.EnthalpyFlowRate Hb_flow 
        "Enthalpy flow across boundaries or energy source/sink";
      SI.HeatFlowRate Qb_flow "Heat flow across boundaries or energy source/sink";
      SI.Power Wb_flow "Work flow across boundaries or source term";
    protected 
      parameter Boolean initialize_p = not Medium.singleState 
        "= true to set up initial equations for pressure";
      Real[Medium.nC] mC_scaled(min=fill(Modelica.Constants.eps, Medium.nC)) 
        "Scaled masses of trace substances in the fluid";
    equation 
      assert(not (energyDynamics<>Dynamics.SteadyState and massDynamics==Dynamics.SteadyState) or Medium.singleState,
             "Bad combination of dynamics options and Medium not conserving mass if fluidVolume is fixed.");

      // Total quantities
      m = fluidVolume*medium.d;
      mXi = m*medium.Xi;
      U = m*medium.u;
      mC = m*C;

      // Energy and mass balances
      if energyDynamics == Dynamics.SteadyState then
        0 = Hb_flow + Qb_flow + Wb_flow;
      else
        der(U) = Hb_flow + Qb_flow + Wb_flow;
      end if;

      if massDynamics == Dynamics.SteadyState then
        0 = mb_flow;
      else
        der(m) = mb_flow;
      end if;

      if substanceDynamics == Dynamics.SteadyState then
        zeros(Medium.nXi) = mbXi_flow;
      else
        der(mXi) = mbXi_flow;
      end if;

      if traceDynamics == Dynamics.SteadyState then
        zeros(Medium.nC)  = mbC_flow;
      else
        der(mC_scaled) = mbC_flow./Medium.C_nominal;
      end if;
        mC = mC_scaled.*Medium.C_nominal;

    initial equation 
      // initialization of balances
      if energyDynamics == Dynamics.FixedInitial then
        /*
        if use_T_start then
          medium.T = T_start;
        else
          medium.h = h_start;
        end if;
        */
        if Medium.ThermoStates == IndependentVariables.ph or 
           Medium.ThermoStates == IndependentVariables.phX then
           medium.h = h_start;
        else
           medium.T = T_start;
        end if;
      elseif energyDynamics == Dynamics.SteadyStateInitial then
        /*
        if use_T_start then
          der(medium.T) = 0;
        else
          der(medium.h) = 0;
        end if;
        */
        if Medium.ThermoStates == IndependentVariables.ph or 
           Medium.ThermoStates == IndependentVariables.phX then
           der(medium.h) = 0;
        else
           der(medium.T) = 0;
        end if;
      end if;

      if massDynamics == Dynamics.FixedInitial then
        if initialize_p then
          medium.p = p_start;
        end if;
      elseif massDynamics == Dynamics.SteadyStateInitial then
        if initialize_p then
          der(medium.p) = 0;
        end if;
      end if;

      if substanceDynamics == Dynamics.FixedInitial then
        medium.Xi = X_start[1:Medium.nXi];
      elseif substanceDynamics == Dynamics.SteadyStateInitial then
        der(medium.Xi) = zeros(Medium.nXi);
      end if;

      if traceDynamics == Dynamics.FixedInitial then
        mC_scaled = m*C_start[1:Medium.nC]./Medium.C_nominal;
      elseif traceDynamics == Dynamics.SteadyStateInitial then
        der(mC_scaled) = zeros(Medium.nC);
      end if;

    end PartialLumpedVolume;

* * * * *

[Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).PartialLumpedFlow
=======================================================================================================

**Base class for a lumped momentum balance**

Information
-----------

::

Interface and base class for a momentum balance, defining the mass flow
rate `m_flow` of a given `Medium` in a flow model.

The following boundary flow and force terms are part of the momentum
balance and must be specified in an extending model (to zero if not
considered):

-   `Ib_flow`, the flow of momentum across model boundaries,
-   `F_p[m]`, pressure force, and
-   `F_fg[m]`, friction and gravity forces.

The length of the flow path `pathLength` is an input that needs to be
set in an extending class to complete the model.

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name      Default Description
  ------------------------------- --------- ------- ----------------------
  replaceable package Medium      Modelica. Medium  
                                  Media.Int in the  
                                  erfaces.P compone 
                                  a...      nt      

  **Assumptions**                                   

  Boolean                         allowFlow system. = true to allow flow
                                  Reversal  allowFl reversal, false
                                            owRever restricts to design
                                            sal     direction (m\_flow \>=
                                                    0)

  Dynamics                                          

  [Dynamics](Modelica_Fluid_Types momentumD system. Formulation of
  .html#Modelica.Fluid.Types.Dyna ynamics   momentu momentum balance
  mics)                                     mDynami 
                                            cs      

  **Initialization**                                

  [MassFlowRate](Modelica_Media_I m\_flow\_ system. Start value of mass
  nterfaces_PartialMedium.html#Mo start     m\_flow flow rates [kg/s]
  delica.Media.Interfaces.Partial           \_start 
  Medium.MassFlowRate)                              
  ------------------------------------------------------------------------

Connectors
----------

  Type                          Name                       Description
  ----------------------------- -------------------------- ---------------
  replaceable package Medium    Medium in the component    

Modelica definition
-------------------

    partial model PartialLumpedFlow 
      "Base class for a lumped momentum balance"

      outer Modelica.Fluid.System system "System properties";

      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the component";

      parameter Boolean allowFlowReversal = system.allowFlowReversal 
        "= true to allow flow reversal, false restricts to design direction (m_flow >= 0)";

      // Inputs provided to the flow model
      input SI.Length pathLength "Length flow path";

      // Variables defined by the flow model
      Medium.MassFlowRate m_flow(
         min=if allowFlowReversal then -Modelica.Constants.inf else 0,
         start = m_flow_start,
         stateSelect = if momentumDynamics == Types.Dynamics.SteadyState then StateSelect.default else 
                                   StateSelect.prefer) 
        "mass flow rates between states";

      // Parameters
      parameter Modelica.Fluid.Types.Dynamics momentumDynamics=system.momentumDynamics 
        "Formulation of momentum balance";

      parameter Medium.MassFlowRate m_flow_start=system.m_flow_start 
        "Start value of mass flow rates";

      // Total quantities
      SI.Momentum I "Momentums of flow segments";

      // Source terms and forces to be defined by an extending model (zero if not used)
      SI.Force Ib_flow "Flow of momentum across boudaries";
      SI.Force F_p "Pressure force";
      SI.Force F_fg "Friction and gravity force";

    equation 
      // Total quantities
      I = m_flow*pathLength;

      // Momentum balances
      if momentumDynamics == Types.Dynamics.SteadyState then
        0 = Ib_flow - F_p - F_fg;
      else
        der(I) = Ib_flow - F_p - F_fg;
      end if;

    initial equation 
      if momentumDynamics == Types.Dynamics.FixedInitial then
        m_flow = m_flow_start;
      elseif momentumDynamics == Types.Dynamics.SteadyStateInitial then
        der(m_flow) = 0;
      end if;

    end PartialLumpedFlow;

* * * * *

[Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).PartialDistributedVolume
==============================================================================================================

**Base class for distributed volume models**

Information
-----------

::

Interface and base class for `n` ideally mixed fluid volumes with the
ability to store mass and energy. It is inteded to model a
one-dimensional spatial discretization of fluid flow according to the
finite volume method. The following boundary flow and source terms are
part of the energy balance and must be specified in an extending class:

-   `Qb_flows[n]`, heat flow term, e.g., conductive heat flows across
    segment boundaries, and
-   `Wb_flows[n]`, work term.

The component volumes `fluidVolumes[n]` are an input that needs to be
set in an extending class to complete the model.

Further source terms must be defined by an extending class for fluid
flow across the segment boundary:

-   `Hb_flows[n]`, enthalpy flow,
-   `mb_flows[n]`, mass flow,
-   `mbXi_flows[n]`, substance mass flow, and
-   `mbC_flows[n]`, trace substance mass flow.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name    Default     Description
  -------------------------------------- ------- ----------- --------------
  Integer                                n       2           Number of
                                                             discrete
                                                             volumes

  **Assumptions**                                            

  Dynamics                                                   

  [Dynamics](Modelica_Fluid_Types.html#M energyD system.ener Formulation of
  odelica.Fluid.Types.Dynamics)          ynamics gyDynamics  energy
                                                             balances

  [Dynamics](Modelica_Fluid_Types.html#M massDyn system.mass Formulation of
  odelica.Fluid.Types.Dynamics)          amics   Dynamics    mass balances

  **Initialization**                                         

  [AbsolutePressure](Modelica_Media_Inte p\_a\_s system.p\_s Start value of
  rfaces_PartialMedium.html#Modelica.Med tart    tart        pressure at
  ia.Interfaces.PartialMedium.AbsolutePr                     port a [Pa]
  essure)                                                    

  [AbsolutePressure](Modelica_Media_Inte p\_b\_s p\_a\_start Start value of
  rfaces_PartialMedium.html#Modelica.Med tart                pressure at
  ia.Interfaces.PartialMedium.AbsolutePr                     port b [Pa]
  essure)                                                    

  Boolean                                use\_T\ true        Use T\_start
                                         _start              if true,
                                                             otherwise
                                                             h\_start

  [Temperature](Modelica_Media_Interface T\_star if          Start value of
  s_PartialMedium.html#Modelica.Media.In t       use\_T\_sta temperature
  terfaces.PartialMedium.Temperature)            rt          [K]
                                                 then        
                                                 system.T... 

  [SpecificEnthalpy](Modelica_Media_Inte h\_star if          Start value of
  rfaces_PartialMedium.html#Modelica.Med t       use\_T\_sta specific
  ia.Interfaces.PartialMedium.SpecificEn         rt          enthalpy
  thalpy)                                        then        [J/kg]
                                                 Medium.s... 

  [MassFraction](Modelica_Media_Interfac X\_star Medium.X\_d Start value of
  es_PartialMedium.html#Modelica.Media.I t[Mediu efault      mass fractions
  nterfaces.PartialMedium.MassFraction)  m.nX]               m\_i/m [kg/kg]

  [ExtraProperty](Modelica_Media_Interfa C\_star fill(0,     Start value of
  ces_PartialMedium.html#Modelica.Media. t[Mediu Medium.nC)  trace
  Interfaces.PartialMedium.ExtraProperty m.nC]               substances
  )                                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialDistributedVolume 
      "Base class for distributed volume models"
        import Modelica.Fluid.Types;
        import Modelica.Fluid.Types.Dynamics;
        import Modelica.Media.Interfaces.PartialMedium.Choices.IndependentVariables;
      outer Modelica.Fluid.System system "System properties";

      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the component";

      // Discretization
      parameter Integer n=2 "Number of discrete volumes";

      // Inputs provided to the volume model
      input SI.Volume[n] fluidVolumes 
        "Discretized volume, determine in inheriting class";

      // Assumptions
      parameter Types.Dynamics energyDynamics=system.energyDynamics 
        "Formulation of energy balances";
      parameter Types.Dynamics massDynamics=system.massDynamics 
        "Formulation of mass balances";
      final parameter Types.Dynamics substanceDynamics=massDynamics 
        "Formulation of substance balances";
      final parameter Types.Dynamics traceDynamics=massDynamics 
        "Formulation of trace substance balances";

      //Initialization
      parameter Medium.AbsolutePressure p_a_start=system.p_start 
        "Start value of pressure at port a";
      parameter Medium.AbsolutePressure p_b_start=p_a_start 
        "Start value of pressure at port b";
      final parameter Medium.AbsolutePressure[n] ps_start=if n > 1 then linspace(
            p_a_start, p_b_start, n) else {(p_a_start + p_b_start)/2} 
        "Start value of pressure";

      parameter Boolean use_T_start=true "Use T_start if true, otherwise h_start";

      parameter Medium.Temperature T_start=if use_T_start then system.T_start else 
                  Medium.temperature_phX(
            (p_a_start + p_b_start)/2,
            h_start,
            X_start) "Start value of temperature";
      parameter Medium.SpecificEnthalpy h_start=if use_T_start then 
            Medium.specificEnthalpy_pTX(
            (p_a_start + p_b_start)/2,
            T_start,
            X_start) else Medium.h_default "Start value of specific enthalpy";
      parameter Medium.MassFraction X_start[Medium.nX]=Medium.X_default 
        "Start value of mass fractions m_i/m";
      parameter Medium.ExtraProperty C_start[Medium.nC](
           quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC) 
        "Start value of trace substances";

      // Total quantities
      SI.Energy[n] Us "Internal energy of fluid";
      SI.Mass[n] ms "Fluid mass";
      SI.Mass[n,Medium.nXi] mXis "Substance mass";
      SI.Mass[n,Medium.nC] mCs "Trace substance mass";
      // C need to be added here because unlike for Xi, which has medium[:].Xi,
      // there is no variable medium[:].C
      SI.Mass[n,Medium.nC] mCs_scaled "Scaled trace substance mass";
      Medium.ExtraProperty Cs[n, Medium.nC] "Trace substance mixture content";

      Medium.BaseProperties[n] mediums(
        each preferredMediumStates=true,
        p(start=ps_start),
        each h(start=h_start),
        each T(start=T_start),
        each Xi(start=X_start[1:Medium.nXi]));

      //Source terms, have to be defined by an extending model (to zero if not used)
      Medium.MassFlowRate[n] mb_flows "Mass flow rate, source or sink";
      Medium.MassFlowRate[n,Medium.nXi] mbXi_flows 
        "Independent mass flow rates, source or sink";
      Medium.ExtraPropertyFlowRate[n,Medium.nC] mbC_flows 
        "Trace substance mass flow rates, source or sink";
      SI.EnthalpyFlowRate[n] Hb_flows "Enthalpy flow rate, source or sink";
      SI.HeatFlowRate[n] Qb_flows "Heat flow rate, source or sink";
      SI.Power[n] Wb_flows "Mechanical power, p*der(V) etc.";

    protected 
      parameter Boolean initialize_p = not Medium.singleState 
        "= true to set up initial equations for pressure";

    equation 
      assert(not (energyDynamics<>Dynamics.SteadyState and massDynamics==Dynamics.SteadyState) or Medium.singleState,
             "Bad combination of dynamics options and Medium not conserving mass if fluidVolumes are fixed.");

      // Total quantities
      for i in 1:n loop
        ms[i] =fluidVolumes[i]*mediums[i].d;
        mXis[i, :] = ms[i]*mediums[i].Xi;
        mCs[i, :]  = ms[i]*Cs[i, :];
        Us[i] = ms[i]*mediums[i].u;
      end for;

      // Energy and mass balances
      if energyDynamics == Dynamics.SteadyState then
        for i in 1:n loop
          0 = Hb_flows[i] + Wb_flows[i] + Qb_flows[i];
        end for;
      else
        for i in 1:n loop
          der(Us[i]) = Hb_flows[i] + Wb_flows[i] + Qb_flows[i];
        end for;
      end if;
      if massDynamics == Dynamics.SteadyState then
        for i in 1:n loop
          0 = mb_flows[i];
        end for;
      else
        for i in 1:n loop
          der(ms[i]) = mb_flows[i];
        end for;
      end if;
      if substanceDynamics == Dynamics.SteadyState then
        for i in 1:n loop
          zeros(Medium.nXi) = mbXi_flows[i, :];
        end for;
      else
        for i in 1:n loop
          der(mXis[i, :]) = mbXi_flows[i, :];
        end for;
      end if;
      if traceDynamics == Dynamics.SteadyState then
        for i in 1:n loop
          zeros(Medium.nC)  = mbC_flows[i, :];
        end for;
      else
        for i in 1:n loop
          der(mCs_scaled[i, :])  = mbC_flows[i, :]./Medium.C_nominal;
          mCs[i, :] = mCs_scaled[i, :].*Medium.C_nominal;
        end for;
      end if;

    initial equation 
      // initialization of balances
      if energyDynamics == Dynamics.FixedInitial then
        /*
        if use_T_start then
          mediums.T = fill(T_start, n);
        else
          mediums.h = fill(h_start, n);
        end if;
        */
        if Medium.ThermoStates == IndependentVariables.ph or 
           Medium.ThermoStates == IndependentVariables.phX then
           mediums.h = fill(h_start, n);
        else
           mediums.T = fill(T_start, n);
        end if;

      elseif energyDynamics == Dynamics.SteadyStateInitial then
        /*
        if use_T_start then
          der(mediums.T) = zeros(n);
        else
          der(mediums.h) = zeros(n);
        end if;
        */
        if Medium.ThermoStates == IndependentVariables.ph or 
           Medium.ThermoStates == IndependentVariables.phX then
           der(mediums.h) = zeros(n);
        else
           der(mediums.T) = zeros(n);
        end if;
      end if;

      if massDynamics == Dynamics.FixedInitial then
        if initialize_p then
          mediums.p = ps_start;
        end if;
      elseif massDynamics == Dynamics.SteadyStateInitial then
        if initialize_p then
          der(mediums.p) = zeros(n);
        end if;
      end if;

      if substanceDynamics == Dynamics.FixedInitial then
        mediums.Xi = fill(X_start[1:Medium.nXi], n);
      elseif substanceDynamics == Dynamics.SteadyStateInitial then
        for i in 1:n loop
          der(mediums[i].Xi) = zeros(Medium.nXi);
        end for;
      end if;

      if traceDynamics == Dynamics.FixedInitial then
        Cs = fill(C_start[1:Medium.nC], n);
      elseif traceDynamics == Dynamics.SteadyStateInitial then
        for i in 1:n loop
          der(mCs[i,:])      = zeros(Medium.nC);
        end for;
      end if;

    end PartialDistributedVolume;

* * * * *

[Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).PartialDistributedFlow
============================================================================================================

**Base class for a distributed momentum balance**

Information
-----------

::

Interface and base class for `m` momentum balances, defining the mass
flow rates `m_flows[m]` of a given `Medium` in `m` flow segments.

The following boundary flow and force terms are part of the momentum
balances and must be specified in an extending model (to zero if not
considered):

-   `Ib_flows[m]`, the flows of momentum across segment boundaries,
-   `Fs_p[m]`, pressure forces, and
-   `Fs_fg[m]`, friction and gravity forces.

The lengths along the flow path `pathLengths[m]` are an input that needs
to be set in an extending class to complete the model.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name      Default Description
  ------------------------------ --------- ------- ------------------------
  replaceable package Medium     Modelica. Medium  
                                 Media.Int in the  
                                 erfaces.P compone 
                                 a...      nt      

  Integer                        m         1       Number of flow segments

  **Assumptions**                                  

  Boolean                        allowFlow system. = true to allow flow
                                 Reversal  allowFl reversal, false
                                           owRever restricts to design
                                           sal     direction (m\_flows \>=
                                                   zeros(m))

  Dynamics                                         

  [Dynamics](Modelica_Fluid_Type momentumD system. Formulation of momentum
  s.html#Modelica.Fluid.Types.Dy ynamics   momentu balance
  namics)                                  mDynami 
                                           cs      

  **Initialization**                               

  [MassFlowRate](Modelica_Media_ m\_flow\_ system. Start value of mass flow
  Interfaces_PartialMedium.html# start     m\_flow rates [kg/s]
  Modelica.Media.Interfaces.Part           \_start 
  ialMedium.MassFlowRate)                          
  -------------------------------------------------------------------------

Connectors
----------

  Type                          Name                       Description
  ----------------------------- -------------------------- ---------------
  replaceable package Medium    Medium in the component    

Modelica definition
-------------------

    partial model PartialDistributedFlow 
      "Base class for a distributed momentum balance"

      outer Modelica.Fluid.System system "System properties";

      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the component";

      parameter Boolean allowFlowReversal = system.allowFlowReversal 
        "= true to allow flow reversal, false restricts to design direction (m_flows >= zeros(m))";

      // Discretization
      parameter Integer m=1 "Number of flow segments";

      // Inputs provided to the flow model
      input SI.Length[m] pathLengths "Lengths along flow path";

      // Variables defined by momentum model
      Medium.MassFlowRate[m] m_flows(
         each min=if allowFlowReversal then -Modelica.Constants.inf else 0,
         each start = m_flow_start,
         each stateSelect = if momentumDynamics == Types.Dynamics.SteadyState then StateSelect.default else 
                                   StateSelect.prefer) 
        "mass flow rates between states";

      // Parameters
      parameter Modelica.Fluid.Types.Dynamics momentumDynamics=system.momentumDynamics 
        "Formulation of momentum balance";

      parameter Medium.MassFlowRate m_flow_start=system.m_flow_start 
        "Start value of mass flow rates";

      // Total quantities
      SI.Momentum[m] Is "Momentums of flow segments";

      // Source terms and forces to be defined by an extending model (zero if not used)
      SI.Force[m] Ib_flows "Flow of momentum across boudaries";
      SI.Force[m] Fs_p "Pressure forces";
      SI.Force[m] Fs_fg "Friction and gravity forces";

    equation 
      // Total quantities
      Is = {m_flows[i]*pathLengths[i] for i in 1:m};

      // Momentum balances
      if momentumDynamics == Types.Dynamics.SteadyState then
        zeros(m) = Ib_flows - Fs_p - Fs_fg;
      else
        der(Is) = Ib_flows - Fs_p - Fs_fg;
      end if;

    initial equation 
      if momentumDynamics == Types.Dynamics.FixedInitial then
        m_flows = fill(m_flow_start, m);
      elseif momentumDynamics == Types.Dynamics.SteadyStateInitial then
        der(m_flows) = zeros(m);
      end if;

    end PartialDistributedFlow;

* * * * *

![image31](Modelica.Fluid.Interfaces.PartialPressureLossI.png) [Modelica.Fluid.Interfaces](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces).PartialPressureLoss
========================================================================================================================================================================

**Base flow model for pressure loss functions with the same area at
port\_a and at port\_b**

Information
-----------

Extends from
[Modelica.Fluid.Interfaces.PartialTwoPortTransport](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport)
(Partial element transporting fluid between two ports without storage of
mass or energy).

Parameters
----------

  ------------------------------------------------------------------------
  Type                      Name                  Defau Description
                                                  lt    
  ------------------------- --------------------- ----- ------------------
  replaceable package       [PartialMedium](Model Mediu 
  Medium                    ica_Media_Interfaces_ m     
                            PartialMedium.html#Mo in    
                            delica.Media.Interfac the   
                            es.PartialMedium)     compo 
                                                  nent  

  **Assumptions**                                       

  Boolean                   allowFlowReversal     syste = true to allow
                                                  m.all flow reversal,
                                                  owFlo false restricts to
                                                  wReve design direction
                                                  rsal  (port\_a -\>
                                                        port\_b)

  **Advanced**                                          

  [AbsolutePressure](Modeli dp\_start             0.01\ Guess value of dp
  ca_Media_Interfaces_Parti                       *syst = port\_a.p -
  alMedium.html#Modelica.Me                       em.p\ port\_b.p [Pa]
  dia.Interfaces.PartialMed                       _star 
  ium.AbsolutePressure)                           t     

  [MassFlowRate](Modelica_M m\_flow\_start        syste Guess value of
  edia_Interfaces_PartialMe                       m.m\_ m\_flow =
  dium.html#Modelica.Media.                       flow\ port\_a.m\_flow
  Interfaces.PartialMedium.                       _star [kg/s]
  MassFlowRate)                                   t     

  [MassFlowRate](Modelica_M m\_flow\_small        syste Small mass flow
  edia_Interfaces_PartialMe                       m.m\_ rate for
  dium.html#Modelica.Media.                       flow\ regularization of
  Interfaces.PartialMedium.                       _smal zero flow [kg/s]
  MassFlowRate)                                   l     

  Diagnostics                                           

  Boolean                   show\_T               true  = true, if
                                                        temperatures at
                                                        port\_a and
                                                        port\_b are
                                                        computed

  Boolean                   show\_V\_flow         true  = true, if volume
                                                        flow rate at
                                                        inflowing port is
                                                        computed
  ------------------------------------------------------------------------

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

    partial model PartialPressureLoss 
      "Base flow model for pressure loss functions with the same area at port_a and at port_b"
      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport;
    protected 
      parameter Medium.ThermodynamicState state_dp_small=Medium.setState_pTX(
                           Medium.reference_p,
                           Medium.reference_T,
                           Medium.reference_X) "Medium state to compute dp_small";
      Medium.Density d_a 
        "Density at port_a when fluid is flowing from port_a to port_b";
      Medium.Density d_b 
        "If allowFlowReversal=true then Density at port_b when fluid is flowing from port_b to port_a else d_a";
      Medium.DynamicViscosity eta_a 
        "Dynamic viscosity at port_a when fluid is flowing from port_a to port_b";
      Medium.DynamicViscosity eta_b 
        "If allowFlowReversal=true then Dynamic viscosity at port_b when fluid is flowing from port_b to port_a else eta_a";
    equation 
      // Isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

      // Medium properties
      d_a   = Medium.density(state_a);
      eta_a = Medium.dynamicViscosity(state_a);
      if allowFlowReversal then
        d_b   = Medium.density(state_b);
        eta_b = Medium.dynamicViscosity(state_b);
      else
        d_b   = d_a;
        eta_b = eta_a;
      end if;

    end PartialPressureLoss;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:19 2010.
