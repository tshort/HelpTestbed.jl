% Modelica.Fluid.Sensors
% 
% 

[Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid).Sensors
============================================================

**Ideal sensor components to extract signals from a fluid connector**

Information
-----------

::

Package **Sensors** consists of idealized sensor components that provide
variables of a medium model and/or fluid ports as output signals. These
signals can be, e.g., further processed with components of the
Modelica.Blocks library. Also more realistic sensor models can be built,
by further processing (e.g., by attaching block
Modelica.Blocks.FirstOrder to model the time constant of the sensor).

For the thermodynamic state variables temperature, specific entalpy,
specific entropy and density the fluid library provides two different
types of sensors: **regular one port** and **two port** sensors.

-   The **regular one port** sensors have the advantage of easy
    introduction and removal from a model, as no connections have to be
    broken. A potential drawback is that the obtained value jumps as
    flow reverts.
-   The **two port** sensors offer the advantages of an adjustable
    regularized step function around zero flow. Moreover the obtained
    result is restricted to the value flowing into port\_a if
    allowFlowReversal is false.

[Modelica.Fluid.Examples.Explanatory.MeasuringTemperature](Modelica_Fluid_Examples_Explanatory.html#Modelica.Fluid.Examples.Explanatory.MeasuringTemperature)
demonstrates the differences between one- and two-port sensor at hand of
a simple example.

::

Extends from
[Modelica.Icons.SensorsPackage](Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage)
(Icon for packages containing sensors).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  ![image16](Modelica.Fluid.Sensors.PressureS.p Ideal pressure sensor
  ng)                                           
  [Pressure](Modelica_Fluid_Sensors.html#Modeli 
  ca.Fluid.Sensors.Pressure)                    

  ![image17](Modelica.Fluid.Sensors.DensityS.pn Ideal one port density
  g)                                            sensor
  [Density](Modelica_Fluid_Sensors.html#Modelic 
  a.Fluid.Sensors.Density)                      

  ![image18](Modelica.Fluid.Sensors.DensityTwoP Ideal two port density
  ortS.png)                                     sensor
  [DensityTwoPort](Modelica_Fluid_Sensors.html# 
  Modelica.Fluid.Sensors.DensityTwoPort)        

  ![image19](Modelica.Fluid.Sensors.Temperature Ideal one port temperature
  S.png)                                        sensor
  [Temperature](Modelica_Fluid_Sensors.html#Mod 
  elica.Fluid.Sensors.Temperature)              

  ![image20](Modelica.Fluid.Sensors.Temperature Ideal two port temperature
  TwoPortS.png)                                 sensor
  [TemperatureTwoPort](Modelica_Fluid_Sensors.h 
  tml#Modelica.Fluid.Sensors.TemperatureTwoPort 
  )                                             

  ![image21](Modelica.Fluid.Sensors.SpecificEnt Ideal one port specific
  halpyS.png)                                   enthalpy sensor
  [SpecificEnthalpy](Modelica_Fluid_Sensors.htm 
  l#Modelica.Fluid.Sensors.SpecificEnthalpy)    

  ![image22](Modelica.Fluid.Sensors.SpecificEnt Ideal two port sensor for
  halpyTwoPortS.png)                            the specific enthalpy
  [SpecificEnthalpyTwoPort](Modelica_Fluid_Sens 
  ors.html#Modelica.Fluid.Sensors.SpecificEntha 
  lpyTwoPort)                                   

  ![image23](Modelica.Fluid.Sensors.SpecificEnt Ideal one port specific
  ropyS.png)                                    entropy sensor
  [SpecificEntropy](Modelica_Fluid_Sensors.html 
  #Modelica.Fluid.Sensors.SpecificEntropy)      

  ![image24](Modelica.Fluid.Sensors.SpecificEnt Ideal two port sensor for
  ropyTwoPortS.png)                             the specific entropy
  [SpecificEntropyTwoPort](Modelica_Fluid_Senso 
  rs.html#Modelica.Fluid.Sensors.SpecificEntrop 
  yTwoPort)                                     

  ![image25](Modelica.Fluid.Sensors.TraceSubsta Ideal one port trace
  ncesS.png)                                    substances sensor
  [TraceSubstances](Modelica_Fluid_Sensors.html 
  #Modelica.Fluid.Sensors.TraceSubstances)      

  ![image26](Modelica.Fluid.Sensors.TraceSubsta Ideal two port sensor for
  ncesTwoPortS.png)                             trace substance
  [TraceSubstancesTwoPort](Modelica_Fluid_Senso 
  rs.html#Modelica.Fluid.Sensors.TraceSubstance 
  sTwoPort)                                     

  ![image27](Modelica.Fluid.Sensors.MassFlowRat Ideal sensor for mass flow
  eS.png)                                       rate
  [MassFlowRate](Modelica_Fluid_Sensors.html#Mo 
  delica.Fluid.Sensors.MassFlowRate)            

  ![image28](Modelica.Fluid.Sensors.MassFlowRat Ideal sensor for volume
  eS.png)                                       flow rate
  [VolumeFlowRate](Modelica_Fluid_Sensors.html# 
  Modelica.Fluid.Sensors.VolumeFlowRate)        

  ![image29](Modelica.Fluid.Sensors.RelativePre Ideal relative pressure
  ssureS.png)                                   sensor
  [RelativePressure](Modelica_Fluid_Sensors.htm 
  l#Modelica.Fluid.Sensors.RelativePressure)    

  ![image30](Modelica.Fluid.Sensors.RelativeTem Ideal relative temperature
  peratureS.png)                                sensor
  [RelativeTemperature](Modelica_Fluid_Sensors. 
  html#Modelica.Fluid.Sensors.RelativeTemperatu 
  re)                                           

  ![image31](Modelica.Fluid.Sensors.BaseClasses Base classes used in the
  S.png)                                        Sensors package (only of
  [BaseClasses](Modelica_Fluid_Sensors_BaseClas interest to build new
  ses.html#Modelica.Fluid.Sensors.BaseClasses)  component models)
  ------------------------------------------------------------------------

* * * * *

![image32](Modelica.Fluid.Sensors.PressureI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).Pressure
======================================================================================================================================

**Ideal pressure sensor**

Information
-----------

::

This component monitors the absolute pressure at its fluid port. The
sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialAbsoluteSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor)
(Partial component to model a sensor that measures a potential
variable),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  --------------------------------------------------------------------------
  Type         Name                                        Default    Descri
                                                                      ption
  ------------ ------------------------------------------- ---------- ------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_P Medium in  
  package      artialMedium.html#Modelica.Media.Interfaces the sensor 
  Medium       .PartialMedium)                                        
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- --------------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Modeli port 
  ca.Fluid.Interfaces.FluidPort_a)                          

  output                                               p    Pressure at
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelic      port [Pa]
  a.Blocks.Interfaces.RealOutput)                           
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Pressure "Ideal pressure sensor"
      extends Sensors.BaseClasses.PartialAbsoluteSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput p(final quantity="Pressure",
                                              final unit="Pa",
                                              displayUnit="bar",
                                              min=0) "Pressure at port";
    equation 
      p = port.p;
    end Pressure;

* * * * *

![image33](Modelica.Fluid.Sensors.DensityI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).Density
====================================================================================================================================

**Ideal one port density sensor**

Information
-----------

::

This component monitors the density of the fluid passing its port. The
sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialAbsoluteSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor)
(Partial component to model a sensor that measures a potential
variable),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  --------------------------------------------------------------------------
  Type         Name                                        Default    Descri
                                                                      ption
  ------------ ------------------------------------------- ---------- ------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_P Medium in  
  package      artialMedium.html#Modelica.Media.Interfaces the sensor 
  Medium       .PartialMedium)                                        
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- -----------------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Mod port 
  elica.Fluid.Interfaces.FluidPort_a)                    

  output                                            d    Density in port
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      medium [kg/m3]
  lica.Blocks.Interfaces.RealOutput)                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Density "Ideal one port density sensor"
      extends Sensors.BaseClasses.PartialAbsoluteSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput d(final quantity="Density",
                                              final unit="kg/m3",
                                              displayUnit="g/cm3",
                                              min=0) "Density in port medium";

    equation 
      d = Medium.density(Medium.setState_phX(port.p, inStream(port.h_outflow), inStream(port.Xi_outflow)));
    end Density;

* * * * *

![image34](Modelica.Fluid.Sensors.DensityTwoPortI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).DensityTwoPort
==================================================================================================================================================

**Ideal two port density sensor**

Information
-----------

::

This component monitors the density of the fluid flowing from port\_a to
port\_b. The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialFlowSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor)
(Partial component to model sensors that measure flow properties),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  -------------------------------------------------------------------------
  Type                   Name                Defau Description
                                             lt    
  ---------------------- ------------------- ----- ------------------------
  replaceable package    [PartialMedium](Mod Mediu 
  Medium                 elica_Media_Interfa m     
                         ces_PartialMedium.h in    
                         tml#Modelica.Media. the   
                         Interfaces.PartialM compo 
                         edium)              nent  

  **Assumptions**                                  

  Boolean                allowFlowReversal   syste = true to allow flow
                                             m.all reversal, false
                                             owFlo restricts to design
                                             wReve direction (port\_a -\>
                                             rsal  port\_b)

  **Advanced**                                     

  [MassFlowRate](Modelic m\_flow\_small      syste For bi-directional flow,
  a_Media_Interfaces_Par                     m.m\_ density is regularized
  tialMedium.html#Modeli                     flow\ in the region |m\_flow|
  ca.Media.Interfaces.Pa                     _smal < m\_flow\_small
  rtialMedium.MassFlowRa                     l     (m\_flow\_small \> 0
  te)                                              required) [kg/s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                 Name Description
  ------------------------------------ ---- ------------------------------
  [FluidPort\_a](Modelica_Fluid_Interf port Fluid connector a (positive
  aces.html#Modelica.Fluid.Interfaces. \_a  design flow direction is from
  FluidPort_a)                              port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Interf port Fluid connector b (positive
  aces.html#Modelica.Fluid.Interfaces. \_b  design flow direction is from
  FluidPort_b)                              port\_a to port\_b)

  output                               d    Density of the passing fluid
  [RealOutput](Modelica_Blocks_Interfa      [kg/m3]
  ces.html#Modelica.Blocks.Interfaces.      
  RealOutput)                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model DensityTwoPort "Ideal two port density sensor"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput d(final quantity="Density",
                                              final unit="kg/m3",
                                              displayUnit="g/cm3",
                                              min=0) "Density of the passing fluid";
      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, density is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";
    protected 
      Medium.Density rho_a_inflow "Density of inflowing fluid at port_a";
      Medium.Density rho_b_inflow 
        "Density of inflowing fluid at port_b or rho_a_inflow, if uni-directional flow";
    equation 
      if allowFlowReversal then
         rho_a_inflow = Medium.density(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         rho_b_inflow = Medium.density(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow));
         d = Modelica.Fluid.Utilities.regStep(port_a.m_flow, rho_a_inflow, rho_b_inflow, m_flow_small);
      else
         d = Medium.density(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         rho_a_inflow = d;
         rho_b_inflow = d;
      end if;
    end DensityTwoPort;

* * * * *

![image35](Modelica.Fluid.Sensors.TemperatureI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).Temperature
============================================================================================================================================

**Ideal one port temperature sensor**

Information
-----------

::

This component monitors the temperature of the fluid passing its port.
The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialAbsoluteSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor)
(Partial component to model a sensor that measures a potential
variable).

Parameters
----------

  --------------------------------------------------------------------------
  Type         Name                                        Default    Descri
                                                                      ption
  ------------ ------------------------------------------- ---------- ------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_P Medium in  
  package      artialMedium.html#Modelica.Media.Interfaces the sensor 
  Medium       .PartialMedium)                                        
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- -----------------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Mod port 
  elica.Fluid.Interfaces.FluidPort_a)                    

  output                                            T    Temperature in
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      port medium [K]
  lica.Blocks.Interfaces.RealOutput)                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Temperature "Ideal one port temperature sensor"
        extends Sensors.BaseClasses.PartialAbsoluteSensor;

      Modelica.Blocks.Interfaces.RealOutput T(final quantity="ThermodynamicTemperature",
                                              final unit = "K", displayUnit = "degC", min=0) 
        "Temperature in port medium";

    equation 
      T = Medium.temperature(Medium.setState_phX(port.p, inStream(port.h_outflow), inStream(port.Xi_outflow)));
    end Temperature;

* * * * *

![image36](Modelica.Fluid.Sensors.TemperatureTwoPortI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).TemperatureTwoPort
==========================================================================================================================================================

**Ideal two port temperature sensor**

Information
-----------

::

This component monitors the temperature of the passing fluid. The sensor
is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialFlowSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor)
(Partial component to model sensors that measure flow properties).

Parameters
----------

  ------------------------------------------------------------------------
  Type                  Name                Defau Description
                                            lt    
  --------------------- ------------------- ----- ------------------------
  replaceable package   [PartialMedium](Mod Mediu 
  Medium                elica_Media_Interfa m     
                        ces_PartialMedium.h in    
                        tml#Modelica.Media. the   
                        Interfaces.PartialM compo 
                        edium)              nent  

  **Assumptions**                                 

  Boolean               allowFlowReversal   syste = true to allow flow
                                            m.all reversal, false
                                            owFlo restricts to design
                                            wReve direction (port\_a -\>
                                            rsal  port\_b)

  **Advanced**                                    

  [MassFlowRate](Modeli m\_flow\_small      syste For bi-directional flow,
  ca_Media_Interfaces_P                     m.m\_ temperature is
  artialMedium.html#Mod                     flow\ regularized in the
  elica.Media.Interface                     _smal region |m\_flow| <
  s.PartialMedium.MassF                     l     m\_flow\_small
  lowRate)                                        (m\_flow\_small \> 0
                                                  required) [kg/s]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                 Name Description
  ------------------------------------ ---- ------------------------------
  [FluidPort\_a](Modelica_Fluid_Interf port Fluid connector a (positive
  aces.html#Modelica.Fluid.Interfaces. \_a  design flow direction is from
  FluidPort_a)                              port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Interf port Fluid connector b (positive
  aces.html#Modelica.Fluid.Interfaces. \_b  design flow direction is from
  FluidPort_b)                              port\_a to port\_b)

  output                               T    Temperature of the passing
  [RealOutput](Modelica_Blocks_Interfa      fluid [K]
  ces.html#Modelica.Blocks.Interfaces.      
  RealOutput)                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model TemperatureTwoPort "Ideal two port temperature sensor"
      extends Sensors.BaseClasses.PartialFlowSensor;

      Modelica.Blocks.Interfaces.RealOutput T( final quantity="ThermodynamicTemperature",
                                               final unit="K",
                                               min = 0,
                                               displayUnit="degC") 
        "Temperature of the passing fluid";
      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, temperature is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";

    protected 
      Medium.Temperature T_a_inflow "Temperature of inflowing fluid at port_a";
      Medium.Temperature T_b_inflow 
        "Temperature of inflowing fluid at port_b or T_a_inflow, if uni-directional flow";
    equation 
      if allowFlowReversal then
         T_a_inflow = Medium.temperature(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         T_b_inflow = Medium.temperature(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow));
         T = Modelica.Fluid.Utilities.regStep(port_a.m_flow, T_a_inflow, T_b_inflow, m_flow_small);
      else
         T = Medium.temperature(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         T_a_inflow = T;
         T_b_inflow = T;
      end if;
    end TemperatureTwoPort;

* * * * *

![image37](Modelica.Fluid.Sensors.SpecificEnthalpyI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).SpecificEnthalpy
======================================================================================================================================================

**Ideal one port specific enthalpy sensor**

Information
-----------

::

This component monitors the specific enthalpy of the fluid passing its
port. The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialAbsoluteSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor)
(Partial component to model a sensor that measures a potential
variable),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  --------------------------------------------------------------------------
  Type         Name                                        Default    Descri
                                                                      ption
  ------------ ------------------------------------------- ---------- ------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_P Medium in  
  package      artialMedium.html#Modelica.Media.Interfaces the sensor 
  Medium       .PartialMedium)                                        
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                          Name  Description
  --------------------------------------------- ----- --------------------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html port  
  #Modelica.Fluid.Interfaces.FluidPort_a)             

  output                                        h\_ou Specific enthalpy in
  [RealOutput](Modelica_Blocks_Interfaces.html# t     port medium [J/kg]
  Modelica.Blocks.Interfaces.RealOutput)              
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SpecificEnthalpy "Ideal one port specific enthalpy sensor"
      extends Sensors.BaseClasses.PartialAbsoluteSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput h_out(final quantity="SpecificEnergy",
                                                  final unit="J/kg") 
        "Specific enthalpy in port medium";

    equation 
      h_out = inStream(port.h_outflow);
    end SpecificEnthalpy;

* * * * *

![image38](Modelica.Fluid.Sensors.SpecificEnthalpyTwoPortI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).SpecificEnthalpyTwoPort
====================================================================================================================================================================

**Ideal two port sensor for the specific enthalpy**

Information
-----------

::

This component monitors the specific enthalpy of a passing fluid. The
sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialFlowSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor)
(Partial component to model sensors that measure flow properties),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  -------------------------------------------------------------------------
  Type                  Name                Defau Description
                                            lt    
  --------------------- ------------------- ----- -------------------------
  replaceable package   [PartialMedium](Mod Mediu 
  Medium                elica_Media_Interfa m     
                        ces_PartialMedium.h in    
                        tml#Modelica.Media. the   
                        Interfaces.PartialM compo 
                        edium)              nent  

  **Assumptions**                                 

  Boolean               allowFlowReversal   syste = true to allow flow
                                            m.all reversal, false restricts
                                            owFlo to design direction
                                            wReve (port\_a -\> port\_b)
                                            rsal  

  **Advanced**                                    

  [MassFlowRate](Modeli m\_flow\_small      syste For bi-directional flow,
  ca_Media_Interfaces_P                     m.m\_ specific enthalpy is
  artialMedium.html#Mod                     flow\ regularized in the region
  elica.Media.Interface                     _smal |m\_flow| <
  s.PartialMedium.MassF                     l     m\_flow\_small
  lowRate)                                        (m\_flow\_small \> 0
                                                  required) [kg/s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                 Name Description
  ------------------------------------ ---- ------------------------------
  [FluidPort\_a](Modelica_Fluid_Interf port Fluid connector a (positive
  aces.html#Modelica.Fluid.Interfaces. \_a  design flow direction is from
  FluidPort_a)                              port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Interf port Fluid connector b (positive
  aces.html#Modelica.Fluid.Interfaces. \_b  design flow direction is from
  FluidPort_b)                              port\_a to port\_b)

  output                               h\_o Specific enthalpy of the
  [RealOutput](Modelica_Blocks_Interfa ut   passing fluid [J/kg]
  ces.html#Modelica.Blocks.Interfaces.      
  RealOutput)                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SpecificEnthalpyTwoPort 
      "Ideal two port sensor for the specific enthalpy"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput h_out(final quantity="SpecificEnergy",
                                                  final unit="J/kg") 
        "Specific enthalpy of the passing fluid";

      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, specific enthalpy is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";

    equation 
      if allowFlowReversal then
         h_out = Modelica.Fluid.Utilities.regStep(port_a.m_flow, port_b.h_outflow, port_a.h_outflow, m_flow_small);
      else
         h_out = port_b.h_outflow;
      end if;
    end SpecificEnthalpyTwoPort;

* * * * *

![image39](Modelica.Fluid.Sensors.SpecificEntropyI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).SpecificEntropy
====================================================================================================================================================

**Ideal one port specific entropy sensor**

Information
-----------

::

This component monitors the specific entropy of the fluid passing its
port. The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialAbsoluteSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor)
(Partial component to model a sensor that measures a potential
variable),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  --------------------------------------------------------------------------
  Type         Name                                        Default    Descri
                                                                      ption
  ------------ ------------------------------------------- ---------- ------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_P Medium in  
  package      artialMedium.html#Modelica.Media.Interfaces the sensor 
  Medium       .PartialMedium)                                        
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name Description
  --------------------------------------------- ---- ----------------------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html port 
  #Modelica.Fluid.Interfaces.FluidPort_a)            

  output                                        s    Specific entropy in
  [RealOutput](Modelica_Blocks_Interfaces.html#      port medium [J/(kg.K)]
  Modelica.Blocks.Interfaces.RealOutput)             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SpecificEntropy "Ideal one port specific entropy sensor"
      extends Sensors.BaseClasses.PartialAbsoluteSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput s(final quantity="SpecificEntropy",
                                              final unit="J/(kg.K)") 
        "Specific entropy in port medium";

    equation 
      s = Medium.specificEntropy(Medium.setState_phX(port.p, inStream(port.h_outflow), inStream(port.Xi_outflow)));
    end SpecificEntropy;

* * * * *

![image40](Modelica.Fluid.Sensors.SpecificEntropyTwoPortI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).SpecificEntropyTwoPort
==================================================================================================================================================================

**Ideal two port sensor for the specific entropy**

Information
-----------

::

This component monitors the specific entropy of the passing fluid. The
sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialFlowSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor)
(Partial component to model sensors that measure flow properties),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  -------------------------------------------------------------------------
  Type                  Name                Defau Description
                                            lt    
  --------------------- ------------------- ----- -------------------------
  replaceable package   [PartialMedium](Mod Mediu 
  Medium                elica_Media_Interfa m     
                        ces_PartialMedium.h in    
                        tml#Modelica.Media. the   
                        Interfaces.PartialM compo 
                        edium)              nent  

  **Assumptions**                                 

  Boolean               allowFlowReversal   syste = true to allow flow
                                            m.all reversal, false restricts
                                            owFlo to design direction
                                            wReve (port\_a -\> port\_b)
                                            rsal  

  **Advanced**                                    

  [MassFlowRate](Modeli m\_flow\_small      syste For bi-directional flow,
  ca_Media_Interfaces_P                     m.m\_ specific entropy is
  artialMedium.html#Mod                     flow\ regularized in the region
  elica.Media.Interface                     _smal |m\_flow| <
  s.PartialMedium.MassF                     l     m\_flow\_small
  lowRate)                                        (m\_flow\_small \> 0
                                                  required) [kg/s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                 Name Description
  ------------------------------------ ---- ------------------------------
  [FluidPort\_a](Modelica_Fluid_Interf port Fluid connector a (positive
  aces.html#Modelica.Fluid.Interfaces. \_a  design flow direction is from
  FluidPort_a)                              port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Interf port Fluid connector b (positive
  aces.html#Modelica.Fluid.Interfaces. \_b  design flow direction is from
  FluidPort_b)                              port\_a to port\_b)

  output                               s    Specific entropy of the
  [RealOutput](Modelica_Blocks_Interfa      passing fluid [J/(kg.K)]
  ces.html#Modelica.Blocks.Interfaces.      
  RealOutput)                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SpecificEntropyTwoPort 
      "Ideal two port sensor for the specific entropy"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput s(final quantity="SpecificEntropy",
                                              final unit="J/(kg.K)") 
        "Specific entropy of the passing fluid";
      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, specific entropy is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";

    protected 
      Medium.SpecificEntropy s_a_inflow 
        "Specific entropy of inflowing fluid at port_a";
      Medium.SpecificEntropy s_b_inflow 
        "Specific entropy of inflowing fluid at port_b or s_a_inflow, if uni-directional flow";
    equation 
      if allowFlowReversal then
         s_a_inflow = Medium.specificEntropy(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         s_b_inflow = Medium.specificEntropy(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow));
         s = Modelica.Fluid.Utilities.regStep(port_a.m_flow, s_a_inflow, s_b_inflow, m_flow_small);
      else
         s = Medium.specificEntropy(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         s_a_inflow = s;
         s_b_inflow = s;
      end if;
    end SpecificEntropyTwoPort;

* * * * *

![image41](Modelica.Fluid.Sensors.TraceSubstancesI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).TraceSubstances
====================================================================================================================================================

**Ideal one port trace substances sensor**

Information
-----------

::

This component monitors the trace substances contained in the fluid
passing its port. The sensor is ideal, i.e., it does not influence the
fluid.

::

Extends from
[Sensors.BaseClasses.PartialAbsoluteSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor)
(Partial component to model a sensor that measures a potential
variable),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  -------------------------------------------------------------------------
  Type        Name                                     Default   Descriptio
                                                                 n
  ----------- ---------------------------------------- --------- ----------
  replaceable [PartialMedium](Modelica_Media_Interface Medium in 
  package     s_PartialMedium.html#Modelica.Media.Inte the       
  Medium      rfaces.PartialMedium)                    sensor    

  String      substanceName                            "CO2"     Name of
                                                                 trace
                                                                 substance
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- -----------------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Mod port 
  elica.Fluid.Interfaces.FluidPort_a)                    

  output                                            C    Trace substance
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      in port medium
  lica.Blocks.Interfaces.RealOutput)                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model TraceSubstances "Ideal one port trace substances sensor"
      extends Sensors.BaseClasses.PartialAbsoluteSensor;
      extends Modelica.Icons.RotationalSensor;
      parameter String substanceName = "CO2" "Name of trace substance";

      Modelica.Blocks.Interfaces.RealOutput C "Trace substance in port medium";

    protected 
      parameter Integer ind(fixed=false) 
        "Index of species in vector of auxiliary substances";
      Medium.ExtraProperty CVec[Medium.nC](
          quantity=Medium.extraPropertiesNames) 
        "Trace substances vector, needed because indexed argument for the operator inStream is not supported";
    initial algorithm 
      ind:= -1;
      for i in 1:Medium.nC loop
        if ( Modelica.Utilities.Strings.isEqual(Medium.extraPropertiesNames[i], substanceName)) then
          ind := i;
        end if;
      end for;
      assert(ind > 0, "Trace substance '" + substanceName + "' is not present in medium '"
             + Medium.mediumName + "'.\n"
             + "Check sensor parameter and medium model.");
    equation 
      CVec = inStream(port.C_outflow);
      C = CVec[ind];
    end TraceSubstances;

* * * * *

![image42](Modelica.Fluid.Sensors.TraceSubstancesTwoPortI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).TraceSubstancesTwoPort
==================================================================================================================================================================

**Ideal two port sensor for trace substance**

Information
-----------

::

This component monitors the trace substance of the passing fluid. The
sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialFlowSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor)
(Partial component to model sensors that measure flow properties),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  -------------------------------------------------------------------------
  Type                  Name                Defau Description
                                            lt    
  --------------------- ------------------- ----- -------------------------
  replaceable package   [PartialMedium](Mod Mediu 
  Medium                elica_Media_Interfa m     
                        ces_PartialMedium.h in    
                        tml#Modelica.Media. the   
                        Interfaces.PartialM compo 
                        edium)              nent  

  String                substanceName       "CO2" Name of trace substance

  **Assumptions**                                 

  Boolean               allowFlowReversal   syste = true to allow flow
                                            m.all reversal, false restricts
                                            owFlo to design direction
                                            wReve (port\_a -\> port\_b)
                                            rsal  

  **Advanced**                                    

  [MassFlowRate](Modeli m\_flow\_small      syste For bi-directional flow,
  ca_Media_Interfaces_P                     m.m\_ trace substance is
  artialMedium.html#Mod                     flow\ regularized in the region
  elica.Media.Interface                     _smal |m\_flow| <
  s.PartialMedium.MassF                     l     m\_flow\_small
  lowRate)                                        (m\_flow\_small \> 0
                                                  required) [kg/s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                 Name Description
  ------------------------------------ ---- ------------------------------
  [FluidPort\_a](Modelica_Fluid_Interf port Fluid connector a (positive
  aces.html#Modelica.Fluid.Interfaces. \_a  design flow direction is from
  FluidPort_a)                              port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Interf port Fluid connector b (positive
  aces.html#Modelica.Fluid.Interfaces. \_b  design flow direction is from
  FluidPort_b)                              port\_a to port\_b)

  output                               C    Trace substance of the passing
  [RealOutput](Modelica_Blocks_Interfa      fluid
  ces.html#Modelica.Blocks.Interfaces.      
  RealOutput)                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model TraceSubstancesTwoPort 
      "Ideal two port sensor for trace substance"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput C 
        "Trace substance of the passing fluid";
      parameter String substanceName = "CO2" "Name of trace substance";
      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, trace substance is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";

    protected 
      parameter Integer ind(fixed=false) 
        "Index of species in vector of auxiliary substances";
    initial algorithm 
      ind:= -1;
      for i in 1:Medium.nC loop
        if ( Modelica.Utilities.Strings.isEqual(Medium.extraPropertiesNames[i], substanceName)) then
          ind := i;
        end if;
      end for;
      assert(ind > 0, "Trace substance '" + substanceName + "' is not present in medium '"
             + Medium.mediumName + "'.\n"
             + "Check sensor parameter and medium model.");
    equation 
      if allowFlowReversal then
         C = Modelica.Fluid.Utilities.regStep(port_a.m_flow, port_b.C_outflow[ind], port_a.C_outflow[ind], m_flow_small);
      else
         C = port_b.C_outflow[ind];
      end if;
    end TraceSubstancesTwoPort;

* * * * *

![image43](Modelica.Fluid.Sensors.MassFlowRateI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).MassFlowRate
==============================================================================================================================================

**Ideal sensor for mass flow rate**

Information
-----------

::

This component monitors the mass flow rate flowing from port\_a to
port\_b. The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialFlowSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor)
(Partial component to model sensors that measure flow properties),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  -------------------------------------------------------------------------
  Type     Name                          Default  Description
  -------- ----------------------------- -------- -------------------------
  replacea [PartialMedium](Modelica_Medi Medium   
  ble      a_Interfaces_PartialMedium.ht in the   
  package  ml#Modelica.Media.Interfaces. componen 
  Medium   PartialMedium)                t        

  **Assump                                        
  tions**                                         

  Boolean  allowFlowReversal             system.a = true to allow flow
                                         llowFlow reversal, false restricts
                                         Reversal to design direction
                                                  (port\_a -\> port\_b)
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                 Name Description
  ------------------------------------ ---- ------------------------------
  [FluidPort\_a](Modelica_Fluid_Interf port Fluid connector a (positive
  aces.html#Modelica.Fluid.Interfaces. \_a  design flow direction is from
  FluidPort_a)                              port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Interf port Fluid connector b (positive
  aces.html#Modelica.Fluid.Interfaces. \_b  design flow direction is from
  FluidPort_b)                              port\_a to port\_b)

  output                               m\_f Mass flow rate from port\_a to
  [RealOutput](Modelica_Blocks_Interfa low  port\_b [kg/s]
  ces.html#Modelica.Blocks.Interfaces.      
  RealOutput)                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model MassFlowRate "Ideal sensor for mass flow rate"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput m_flow(quantity="MassFlowRate",
                                                   final unit="kg/s") 
        "Mass flow rate from port_a to port_b";

    equation 
      m_flow = port_a.m_flow;
    end MassFlowRate;

* * * * *

![image44](Modelica.Fluid.Sensors.VolumeFlowRateI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).VolumeFlowRate
==================================================================================================================================================

**Ideal sensor for volume flow rate**

Information
-----------

::

This component monitors the volume flow rate flowing from port\_a to
port\_b. The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
[Sensors.BaseClasses.PartialFlowSensor](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor)
(Partial component to model sensors that measure flow properties),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  -------------------------------------------------------------------------
  Type                   Name                Defau Description
                                             lt    
  ---------------------- ------------------- ----- ------------------------
  replaceable package    [PartialMedium](Mod Mediu 
  Medium                 elica_Media_Interfa m     
                         ces_PartialMedium.h in    
                         tml#Modelica.Media. the   
                         Interfaces.PartialM compo 
                         edium)              nent  

  **Assumptions**                                  

  Boolean                allowFlowReversal   syste = true to allow flow
                                             m.all reversal, false
                                             owFlo restricts to design
                                             wReve direction (port\_a -\>
                                             rsal  port\_b)

  **Advanced**                                     

  [MassFlowRate](Modelic m\_flow\_small      syste For bi-directional flow,
  a_Media_Interfaces_Par                     m.m\_ density is regularized
  tialMedium.html#Modeli                     flow\ in the region |m\_flow|
  ca.Media.Interfaces.Pa                     _smal < m\_flow\_small
  rtialMedium.MassFlowRa                     l     (m\_flow\_small \> 0
  te)                                              required) [kg/s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                 Name Description
  ------------------------------------ ---- ------------------------------
  [FluidPort\_a](Modelica_Fluid_Interf port Fluid connector a (positive
  aces.html#Modelica.Fluid.Interfaces. \_a  design flow direction is from
  FluidPort_a)                              port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Interf port Fluid connector b (positive
  aces.html#Modelica.Fluid.Interfaces. \_b  design flow direction is from
  FluidPort_b)                              port\_a to port\_b)

  output                               V\_f Volume flow rate from port\_a
  [RealOutput](Modelica_Blocks_Interfa low  to port\_b [m3/s]
  ces.html#Modelica.Blocks.Interfaces.      
  RealOutput)                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model VolumeFlowRate "Ideal sensor for volume flow rate"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput V_flow(final quantity="VolumeFlowRate",
                                                   final unit="m3/s") 
        "Volume flow rate from port_a to port_b";
      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, density is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";

    protected 
      Medium.Density rho_a_inflow "Density of inflowing fluid at port_a";
      Medium.Density rho_b_inflow 
        "Density of inflowing fluid at port_b or rho_a_inflow, if uni-directional flow";
      Medium.Density d "Density of the passing fluid";
    equation 
      if allowFlowReversal then
         rho_a_inflow = Medium.density(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         rho_b_inflow = Medium.density(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow));
         d = Modelica.Fluid.Utilities.regStep(port_a.m_flow, rho_a_inflow, rho_b_inflow, m_flow_small);
      else
         d = Medium.density(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         rho_a_inflow = d;
         rho_b_inflow = d;
      end if;
      V_flow = port_a.m_flow/d;
    end VolumeFlowRate;

* * * * *

![image45](Modelica.Fluid.Sensors.RelativePressureI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).RelativePressure
======================================================================================================================================================

**Ideal relative pressure sensor**

Information
-----------

::

The relative pressure "port\_a.p - port\_b.p" is determined between the
two ports of this component and is provided as output signal. The sensor
should be connected in parallel with other equipment, no flow through
the sensor is allowed.

::

Extends from
[Modelica.Icons.TranslationalSensor](Modelica_Icons.html#Modelica.Icons.TranslationalSensor)
(Icon representing a linear measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Name   Description
  ------------------------------------------------ ------ -----------------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Mo port\_ 
  delica.Fluid.Interfaces.FluidPort_a)             a      

  [FluidPort\_b](Modelica_Fluid_Interfaces.html#Mo port\_ 
  delica.Fluid.Interfaces.FluidPort_b)             b      

  output                                           p\_rel Relative pressure
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod        signal [Pa]
  elica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model RelativePressure "Ideal relative pressure sensor"
      extends Modelica.Icons.TranslationalSensor;
      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the sensor";

      Modelica.Fluid.Interfaces.FluidPort_a port_a(m_flow(min=0),
                                    redeclare package Medium = Medium);
      Modelica.Fluid.Interfaces.FluidPort_b port_b(m_flow(min=0),
                                    redeclare package Medium = Medium);

      Modelica.Blocks.Interfaces.RealOutput p_rel(final quantity="Pressure",
                                                  final unit="Pa",
                                                  displayUnit="bar") 
        "Relative pressure signal";
    equation 
      // Zero flow equations for connectors
      port_a.m_flow = 0;
      port_b.m_flow = 0;

      // No contribution of specific quantities
      port_a.h_outflow = 0;
      port_b.h_outflow = 0;
      port_a.Xi_outflow = zeros(Medium.nXi);
      port_b.Xi_outflow = zeros(Medium.nXi);
      port_a.C_outflow  = zeros(Medium.nC);
      port_b.C_outflow  = zeros(Medium.nC);

      // Relative pressure
      p_rel = port_a.p - port_b.p;
    end RelativePressure;

* * * * *

![image46](Modelica.Fluid.Sensors.RelativeTemperatureI.png) [Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).RelativeTemperature
============================================================================================================================================================

**Ideal relative temperature sensor**

Information
-----------

::

The relative temperature "T(port\_a) - T(port\_b)" is determined between
the two ports of this component and is provided as output signal. The
sensor should be connected in parallel with other equipment, no flow
through the sensor is allowed.

::

Extends from
[Modelica.Icons.TranslationalSensor](Modelica_Icons.html#Modelica.Icons.TranslationalSensor)
(Icon representing a linear measurement device).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- -----------------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Mo port\ 
  delica.Fluid.Interfaces.FluidPort_a)             _a    

  [FluidPort\_b](Modelica_Fluid_Interfaces.html#Mo port\ 
  delica.Fluid.Interfaces.FluidPort_b)             _b    

  output                                           T\_re Relative
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod l     temperature
  elica.Blocks.Interfaces.RealOutput)                    signal [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model RelativeTemperature "Ideal relative temperature sensor"
      extends Modelica.Icons.TranslationalSensor;
      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the sensor";
      Modelica.Fluid.Interfaces.FluidPort_a port_a(m_flow(min=0),
                                    redeclare package Medium = Medium);
      Modelica.Fluid.Interfaces.FluidPort_b port_b(m_flow(min=0),
                                    redeclare package Medium = Medium);

      Modelica.Blocks.Interfaces.RealOutput T_rel(final quantity="ThermodynamicTemperature",
                                                  final unit = "K", displayUnit = "degC", min=0) 
        "Relative temperature signal";
    equation 
      // Zero flow equations for connectors
      port_a.m_flow = 0;
      port_b.m_flow = 0;

      // No contribution of specific quantities
      port_a.h_outflow = 0;
      port_b.h_outflow = 0;
      port_a.Xi_outflow = zeros(Medium.nXi);
      port_b.Xi_outflow = zeros(Medium.nXi);
      port_a.C_outflow  = zeros(Medium.nC);
      port_b.C_outflow  = zeros(Medium.nC);

      // Relative temperature
      T_rel = Medium.temperature(Medium.setState_phX(port_a.p, inStream(port_a.h_outflow), inStream(port_a.Xi_outflow))) -
              Medium.temperature(Medium.setState_phX(port_b.p, inStream(port_b.h_outflow), inStream(port_b.Xi_outflow)));
    end RelativeTemperature;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:19 2010.
