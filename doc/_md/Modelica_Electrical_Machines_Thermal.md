% Modelica.Electrical.Machines.Thermal
% 
% 

[Modelica.Electrical.Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines).Thermal
======================================================================================================

**Library with models for connecting thermal models**

Information
-----------

::

### Thermal concept

Each machine model is equipped with a machine-specific conditional
`thermalPort`. If `useThermalPort == false`, a machine-specific thermal
ambient precribing constant temperatures is used inside the machine. If
`useThermalPort == true`, a thermal model or machine-specific thermal
ambient prescribing the temperatures has to be connected from outside.
On the other hand, all losses are dissipated to this internal or
external thermal ambient.

The machine specific thermal connector contains
[heatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)s
for all relevant loss sources of the machine type, although some of the
loss sources are not yet implemented; these heatPorts are left
unconnceted inside the machine, i.e., the HeatFlowRate is zero, but they
have to be connected to a constant temperature source in the internal or
external thermal ambient. Simple machine-specific thermal ambients for
constant temperatures (`useTemperatureInputs == false`) or temperatures
prescribed via signal inputs (`useTemperatureInputs == true`) are
provided in this package.

### Loss sources

Up to now, only Ohmic losses in stator and rotor windings are
implemented. They are modeled as [linearly temperature dependent
rsistors](Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.Resistor):

    ROperational = RRef * (1 + alphaRef * (TOperational - TRef))

#### Parameters:

-   Resistance `RRef` at reference temperature
-   Reference temperature `TRef`
-   Linear temperature coefficient `alpha20` at 20°C
-   Operational temperature `TOperational` (if
    `useThermalPort == false`; otherwise, the operational temperature is
    provided via the heatPort)
-   Nominal temperature `TNominal` (required for DC machines to
    calculate the turns ratio)

The linear temperature coefficient `alpha20` at 20°C = 293.15 K has to
be converted to reference temperature `TRef`:

    alpha20

> alphaRef = ------------------------------- 1 + alpha20 \* (TRef -
> 293.15)

For this reason, the function
[convertAlpha](Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.convertAlpha)
is provided. In sub-package
[Constants](Modelica_Electrical_Machines_Thermal_Constants.html#Modelica.Electrical.Machines.Thermal.Constants)
linear temperature coefficients at 20°C for commonly used materials are
defined.

### Backwards compatibilty

-   The default / start values of all resistances are left unchanged.
-   The default / start values of all reference temperatures are set to
    20°C.
-   The default / start values of all linear temperature coefficents are
    set to 0.
-   The default / start values of all operational temperatures are set
    to 20°C.
-   The default / start values of all nominal temperatures are set to
    20°C.

### Machine specific thermalPorts

#### [Asynchronous induction machine with squirrel cage](Modelica_Electrical_Machines_BasicMachines_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCage)

-   `heatPortStatorWinding[m]`: m=3 heatPorts for the m=3 stator phases
-   `heatPortRotorWinding`: heatPort for the rotor cage
-   `heatPortStatorCore`: stator core losses (not yet fully implemented)
-   `heatPortRotorCore`: rotor core losses (not yet
    connected/implemented)
-   `heatPortStrayLoad`: stray load losses
-   `heatPortFriction`: friction losses

#### [Asynchronous induction machine with slipring rotor](Modelica_Electrical_Machines_BasicMachines_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SlipRing)

-   `heatPortStatorWinding[m]`: m=3 heatPorts for the m=3 stator phases
-   `heatPortRotorWinding[m]`: m=3 heatPorts for the m=3 rotor phases
-   `heatPortBrush`: brush losses (not yet connected/implemented)
-   `heatPortStatorCore`: stator core losses (not yet fully implemented)
-   `heatPortRotorCore`: rotor core losses (not yet fully implemented)
-   `heatPortStrayLoad`: stray load losses
-   `heatPortFriction`: friction losses

#### [Synchronous induction machine with permanent magnets](Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnet)

-   `heatPortStatorWinding[m]`: m=3 heatPorts for the m=3 stator phases
-   `heatPortRotorWinding`: conditional (`useDamperCage=true/false`)
    heatPort for the damper cage
-   `heatPortPermanentMagnet`: permanet magnet losses (not yet
    connected/implemented)
-   `heatPortStatorCore`: stator core losses (not yet fully implemented)
-   `heatPortRotorCore`: rotor core losses (not yet
    connected/implemented)
-   `heatPortStrayLoad`: stray load losses
-   `heatPortFriction`: friction losses

#### [Synchronous induction machine with electrical excitation](Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcited)

-   `heatPortStatorWinding[m]`: m=3 heatPorts for the m=3 stator phases
-   `heatPortRotorWinding`: conditional (`useDamperCage=true/false`)
    heatPort for the damper cage
-   `heatPortExcitation`: electrical excitation
-   `heatPortBrush`: brush losses
-   `heatPortStatorCore`: stator core losses (not yet fully implemented)
-   `heatPortRotorCore`: rotor core losses (not yet
    connected/implemented)
-   `heatPortStrayLoad`: stray load losses
-   `heatPortFriction`: friction losses

#### [Synchronous induction machine with reluctance rotor](Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ReluctanceRotor)

-   `heatPortStatorWinding[m]`: m=3 heatPorts for the m=3 stator phases
-   `heatPortRotorWinding`: conditional (`useDamperCage=true/false`)
    heatPort for the damper cage
-   `heatPortStatorCore`: stator core losses (not yet fully implemented)
-   `heatPortRotorCore`: rotor core losses (not yet
    connected/implemented)
-   `heatPortStrayLoad`: stray load losses
-   `heatPortFriction`: friction losses

#### [DC machine with permanent magnets](Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet)

-   `heatPortArmature`: armature losses
-   `heatPortPermanentMagnet`: permanet magnet losses (not yet
    connected/implemented)
-   `heatPortBrush`: brush losses
-   `heatPortCore`: armature core losses
-   `heatPortStrayLoad`: stray load losses
-   `heatPortFriction`: friction losses

#### [DC machine with electrical (shunt) excitation](Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_ElectricalExcited)

-   `heatPortArmature`: armature losses
-   `heatPortExcitation`: electrical (shunt) excitation
-   `heatPortBrush`: brush losses
-   `heatPortCore`: armature core losses
-   `heatPortStrayLoad`: stray load losses
-   `heatPortFriction`: friction losses

#### [DC machine with serial excitation](Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_SeriesExcited)

-   `heatPortArmature`: armature losses
-   `heatPortSeriesExcitation`: electrical series excitation
-   `heatPortBrush`: brush losses
-   `heatPortCore`: armature core losses
-   `heatPortStrayLoad`: stray load losses
-   `heatPortFriction`: friction losses

#### DC machine with compound excitation (not yet implemented)

-   `heatPortArmature`: armature losses
-   `heatPortShuntExcitation`: electrical (shunt) excitation
-   `heatPortSeriesExcitation`: electrical series excitation
-   `heatPortBrush`: brush losses
-   `heatPortCore`: armature core losses
-   `heatPortStrayLoad`: stray load losses
-   `heatPortFriction`: friction losses

#### [Transformers](Modelica_Electrical_Machines_BasicMachines_Transformers.html#Modelica.Electrical.Machines.BasicMachines.Transformers)

-   `heatPort1[m]`: m=3 heatPorts for the m=3 primary phases
-   `heatPort2[m]`: m=3 heatPorts for the m=3 secondary phases
-   `heatPortCore`: iron core losses (not yet connected/implemented)

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  [LinearTemperatureCoefficient20](Modelica_Electrical_Ma Linear
  chines_Thermal.html#Modelica.Electrical.Machines.Therma temperature
  l.LinearTemperatureCoefficient20)                       coefficient with
                                                          choices

  ![image7](Modelica.Electrical.Machines.Thermal.Constant Material
  sS.png)                                                 Constants
  [Constants](Modelica_Electrical_Machines_Thermal_Consta 
  nts.html#Modelica.Electrical.Machines.Thermal.Constants 
  )                                                       

  ![image8](Modelica.Electrical.Machines.Thermal.convertA Converts alpha
  lphaS.png)                                              from temperature
  [convertAlpha](Modelica_Electrical_Machines_Thermal.htm 1 (default 20
  l#Modelica.Electrical.Machines.Thermal.convertAlpha)    degC) to
                                                          temperature 2

  ![image9](Modelica.Electrical.Machines.Thermal.convertA Converts
  lphaS.png)                                              resistance from
  [convertResistance](Modelica_Electrical_Machines_Therma reference
  l.html#Modelica.Electrical.Machines.Thermal.convertResi temperature to
  stance)                                                 an actual
                                                          temperature

  ![image10](Modelica.Electrical.Machines.Thermal.Asynchr Thermal parts of
  onousInductionMachinesS.png)                            asynchronous
  [AsynchronousInductionMachines](Modelica_Electrical_Mac induction
  hines_Thermal_AsynchronousInductionMachines.html#Modeli machines
  ca.Electrical.Machines.Thermal.AsynchronousInductionMac 
  hines)                                                  

  ![image11](Modelica.Electrical.Machines.Thermal.Asynchr Thermal parts of
  onousInductionMachinesS.png)                            synchronous
  [SynchronousInductionMachines](Modelica_Electrical_Mach induction
  ines_Thermal_SynchronousInductionMachines.html#Modelica machines
  .Electrical.Machines.Thermal.SynchronousInductionMachin 
  es)                                                     

  ![image12](Modelica.Electrical.Machines.Thermal.Asynchr Thermal parts of
  onousInductionMachinesS.png)                            DC machines
  [DCMachines](Modelica_Electrical_Machines_Thermal_DCMac 
  hines.html#Modelica.Electrical.Machines.Thermal.DCMachi 
  nes)                                                    

  ![image13](Modelica.Electrical.Machines.Thermal.Thermal Thermal ambient
  AmbientTransformerS.png)                                for transformers
  [ThermalAmbientTransformer](Modelica_Electrical_Machine 
  s_Thermal.html#Modelica.Electrical.Machines.Thermal.The 
  rmalAmbientTransformer)                                 
  ------------------------------------------------------------------------

Types and constants
-------------------

    type LinearTemperatureCoefficient20 =
        Modelica.SIunits.LinearTemperatureCoefficient 
    "Linear temperature coefficient with choices";

* * * * *

![image14](Modelica.Electrical.Machines.Thermal.convertAlphaI.png) [Modelica.Electrical.Machines.Thermal](Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal).convertAlpha
======================================================================================================================================================================================================

**Converts alpha from temperature 1 (default 20 degC) to temperature 2**

Information
-----------

::

From the temperature coefficient `alpha1` at temperature `T1` (default
20 degC = 293.15 K) the temperature coefficient `alpha2` at temperature
`T2` is calculated:

    alpha1

> alpha2 = ------------------------ 1 + alpha1 \* (T2 - T1)

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                   Nam Defa Description
                                         e   ult  
  -------------------------------------- --- ---- -------------------------
  [LinearTemperatureCoefficient](Modelic alp      Temperature coefficient
  a_SIunits.html#Modelica.SIunits.Linear ha1      at temperature 1
  TemperatureCoefficient)                         (default: 20 degC) [1/K]

  [Temperature](Modelica_SIunits.html#Mo T2       Temperature 2 [K]
  delica.SIunits.Temperature)                     

  [Temperature](Modelica_SIunits.html#Mo T1  293. Temperature 1 (default:
  delica.SIunits.Temperature)                15   20 degC) [K]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  [LinearTemperatureCoefficient](Modelica_SIunits. alph Temperature
  html#Modelica.SIunits.LinearTemperatureCoefficie a2   coefficient at TRef
  nt)                                                   [1/K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function convertAlpha 
      "Converts alpha from temperature 1 (default 20 degC) to temperature 2"
      extends Modelica.Icons.Function;
      input Modelica.SIunits.LinearTemperatureCoefficient alpha1 
        "Temperature coefficient at temperature 1 (default: 20 degC)";
      input Modelica.SIunits.Temperature T2 "Temperature 2";
      input Modelica.SIunits.Temperature T1=293.15 
        "Temperature 1 (default: 20 degC)";
      output Modelica.SIunits.LinearTemperatureCoefficient alpha2 
        "Temperature coefficient at TRef";
    algorithm 
      alpha2 :=  alpha1 / (1 + alpha1*(T2 - T1));
    end convertAlpha;

* * * * *

![image15](Modelica.Electrical.Machines.Thermal.convertAlphaI.png) [Modelica.Electrical.Machines.Thermal](Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal).convertResistance
===========================================================================================================================================================================================================

**Converts resistance from reference temperature to an actual
temperature**

Information
-----------

::

From the temperature coefficient `alpha20` at 20 degC (equals to 293.15
K) the parameter `alphaRef` at `TRef`

    alpha20

> alphaRef = ------------------------------- 1 + alpha20 \* (TRef -
> 293.15)

is determined; using this value, actual resistance `R` with respect to
the actual temperature `T` is calculated by

    R

> ------ = 1 + alphaRef \* (T - TRef)
>   ~ RRef
>
where `RRef` is the resistance at the reference temperature `TRef`.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                        Name Defa Description
                                                   ult  
  ------------------------------------------- ---- ---- ------------------
  [Resistance](Modelica_SIunits.html#Modelica RRef      Resistance at TRef
  .SIunits.Resistance)                                  [Ohm]

  [Temperature](Modelica_SIunits.html#Modelic TRef      Reference
  a.SIunits.Temperature)                                temperature [K]

  [LinearTemperatureCoefficient](Modelica_SIu alph      Temperature
  nits.html#Modelica.SIunits.LinearTemperatur a20       coefficient at 20
  eCoefficient)                                         degC [1/K]

  [Temperature](Modelica_SIunits.html#Modelic T         Actual temperature
  a.SIunits.Temperature)                                [K]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                          Name  Description
  --------------------------------------------- ----- ---------------------
  [Resistance](Modelica_SIunits.html#Modelica.S R     Actual resistance at
  Iunits.Resistance)                                  T [Ohm]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function convertResistance 
      "Converts resistance from reference temperature to an actual temperature"
      extends Modelica.Icons.Function;
      input Modelica.SIunits.Resistance RRef "Resistance at TRef";
      input Modelica.SIunits.Temperature TRef "Reference temperature";
      input Modelica.SIunits.LinearTemperatureCoefficient alpha20 
        "Temperature coefficient at 20 degC";
      input Modelica.SIunits.Temperature T "Actual temperature";
      output Modelica.SIunits.Resistance R "Actual resistance at T";
    algorithm 
      R :=  RRef * (1 + Machines.Thermal.convertAlpha(alpha20, TRef)*(T - TRef));
    end convertResistance;

* * * * *

![image16](Modelica.Electrical.Machines.Thermal.ThermalAmbientTransformerI.png) [Modelica.Electrical.Machines.Thermal](Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal).ThermalAmbientTransformer
================================================================================================================================================================================================================================

**Thermal ambient for transformers**

Information
-----------

::

Thermal ambient for transformers to prescribe winding temperatures
either constant or via signal connectors. Additionally, all losses =
heat flows are recorded.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name      Defa Description
                                         ult  
  ---------------------------- --------- ---- -----------------------------
  Integer                      m         3    Number of phases

  Boolean                      useTemper fals If true, temperature inputs
                               atureInpu e    are used; else, temperatures
                               ts             are constant

  [Temperature](Modelica_SIuni T1             Temperature of primary
  ts.html#Modelica.SIunits.Tem                windings [K]
  perature)                                   

  [Temperature](Modelica_SIuni T2             Temperature of secondary
  ts.html#Modelica.SIunits.Tem                windings [K]
  perature)                                   
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                Name  Description
  --------------------------------------------------- ----- --------------
  [ThermalPortTransformer](Modelica_Electrical_Machin therm 
  es_Interfaces.html#Modelica.Electrical.Machines.Int alPor 
  erfaces.ThermalPortTransformer)                     t     

  input                                               TPrim Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#Modelic ary   primary
  a.Blocks.Interfaces.RealInput)                            windings

  input                                               TSeco Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#Modelic ndary secondary
  a.Blocks.Interfaces.RealInput)                            windings
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ThermalAmbientTransformer "Thermal ambient for transformers"
      parameter Integer m(min=1) = 3 "Number of phases";
      parameter Boolean useTemperatureInputs=false 
        "If true, temperature inputs are used; else, temperatures are constant";
      constant Modelica.SIunits.Temperature TDefault=293.15 "Default temperature";
      parameter Modelica.SIunits.Temperature T1(start=TDefault) 
        "Temperature of primary windings";
      parameter Modelica.SIunits.Temperature T2(start=TDefault) 
        "Temperature of secondary windings";
      output Modelica.SIunits.HeatFlowRate Q_flow1 = temperature1.port.Q_flow 
        "Heat flow rate of primary windings";
      output Modelica.SIunits.HeatFlowRate Q_flow2 = temperature2.port.Q_flow 
        "Heat flow rate of secondary windings";
      output Modelica.SIunits.HeatFlowRate Q_flowCore = temperatureCore.port.Q_flow 
        "Heat flow rate of core losses";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=Q_flow1 + Q_flow2 + Q_flowCore;
      Machines.Interfaces.ThermalPortTransformer thermalPort(final m=m);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperature1;
      Modelica.Blocks.Sources.Constant constT1(final k=T1) if  not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput TPrimary if 
                                                  useTemperatureInputs 
        "Temperature of primary windings";
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperature2;
      Modelica.Blocks.Sources.Constant constT2(final k=T1) if  not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput TSecondary if 
                                                  useTemperatureInputs 
        "Temperature of secondary windings";
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature temperatureCore(final T=
            TDefault);
      Modelica.Thermal.HeatTransfer.Components.ThermalCollector
        thermalCollector1(final m=m);
      Modelica.Thermal.HeatTransfer.Components.ThermalCollector
        thermalCollector2(final m=m);
    equation 
      connect(TPrimary, temperature1.T);
      connect(constT1.y, temperature1.T);
      connect(TSecondary, temperature2.T);
      connect(constT2.y, temperature2.T);
      connect(temperatureCore.port, thermalPort.heatPortCore);
      connect(thermalCollector1.port_b, temperature1.port);
      connect(thermalCollector2.port_b, temperature2.port);
      connect(thermalCollector1.port_a, thermalPort.heatPort1);
      connect(thermalCollector2.port_a, thermalPort.heatPort2);
    end ThermalAmbientTransformer;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:04 2010.
