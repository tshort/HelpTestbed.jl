% Modelica.Electrical.Machines.Examples.DCMachines
% 
% 

[Modelica.Electrical.Machines.Examples](Modelica_Electrical_Machines_Examples.html#Modelica.Electrical.Machines.Examples).DCMachines
====================================================================================================================================

**Test examples of DC machines**

Information
-----------

::

This package contains test examples of DC machines.

::

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  -------------------------------------------------------------------------
  Name                                                   Description
  ------------------------------------------------------ ------------------
  ![image8](Modelica.Electrical.Machines.Examples.Asynch Test example: DC
  ronousInductionMachines.AIMC_DOLS.png)                 with permanent
  [DCPM\_Start](Modelica_Electrical_Machines_Examples_DC magnet starting
  Machines.html#Modelica.Electrical.Machines.Examples.DC with voltage ramp
  Machines.DCPM_Start)                                   

  ![image9](Modelica.Electrical.Machines.Examples.Asynch Test example: DC
  ronousInductionMachines.AIMC_DOLS.png)                 with electrical
  [DCEE\_Start](Modelica_Electrical_Machines_Examples_DC ecxitation
  Machines.html#Modelica.Electrical.Machines.Examples.DC starting with
  Machines.DCEE_Start)                                   voltage ramp

  ![image10](Modelica.Electrical.Machines.Examples.Async Test example: DC
  hronousInductionMachines.AIMC_DOLS.png)                with serial
  [DCSE\_Start](Modelica_Electrical_Machines_Examples_DC excitation
  Machines.html#Modelica.Electrical.Machines.Examples.DC starting with
  Machines.DCSE_Start)                                   voltage ramp

  ![image11](Modelica.Electrical.Machines.Examples.Async Test example: DC
  hronousInductionMachines.AIMC_DOLS.png)                with serial
  [DCSE\_SinglePhase](Modelica_Electrical_Machines_Examp excitation
  les_DCMachines.html#Modelica.Electrical.Machines.Examp starting with
  les.DCMachines.DCSE_SinglePhase)                       voltage ramp

  ![image12](Modelica.Electrical.Machines.Examples.Async Test example:
  hronousInductionMachines.AIMC_DOLS.png)                Investigate
  [DCPM\_Temperature](Modelica_Electrical_Machines_Examp temperature
  les_DCMachines.html#Modelica.Electrical.Machines.Examp dependecy of a
  les.DCMachines.DCPM_Temperature)                       DCPM motor

  ![image13](Modelica.Electrical.Machines.Examples.Async Test example:
  hronousInductionMachines.AIMC_DOLS.png)                Cooling of a DCPM
  [DCPM\_Cooling](Modelica_Electrical_Machines_Examples_ motor
  DCMachines.html#Modelica.Electrical.Machines.Examples. 
  DCMachines.DCPM_Cooling)                               

  ![image14](Modelica.Electrical.Machines.Examples.Async Test example:
  hronousInductionMachines.AIMC_DOLS.png)                Compare DCPM
  [DCPM\_QuasiStationary](Modelica_Electrical_Machines_E motors transient -
  xamples_DCMachines.html#Modelica.Electrical.Machines.E quasistationary
  xamples.DCMachines.DCPM_QuasiStationary)               

  ![image15](Modelica.Electrical.Machines.Examples.Async Test example:
  hronousInductionMachines.AIMC_DOLS.png)                Investigate
  [DCPM\_withLosses](Modelica_Electrical_Machines_Exampl influence of
  es_DCMachines.html#Modelica.Electrical.Machines.Exampl losses on DCPM
  es.DCMachines.DCPM_withLosses)                         motor performance
  -------------------------------------------------------------------------

* * * * *

![image16](Modelica.Electrical.Machines.Examples.DCMachines.DCPM_StartI.png) [Modelica.Electrical.Machines.Examples.DCMachines](Modelica_Electrical_Machines_Examples_DCMachines.html#Modelica.Electrical.Machines.Examples.DCMachines).DCPM\_Start
===================================================================================================================================================================================================================================================

**Test example: DC with permanent magnet starting with voltage ramp**

Information
-----------

::

**Test example: Permanent magnet DC machine started with an armature
voltage ramp**
  ~ A voltage ramp is applied to the armature, causing the DC machine to

start, and accelerating inertias. At time tStep a load step is applied.
Simulate for 2 seconds and plot (versus time):

-   dcpm.ia: armature current
-   dcpm.wMechanical: motor's speed
-   dcpm.tauElectrical: motor's torque

Default machine parameters of model *DC\_PermanentMagnet* are used.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                 Name   Defaul Description
                                              t      
  ------------------------------------ ------ ------ ----------------------
  [Voltage](Modelica_SIunits.html#Mode Va     100    Actual armature
  lica.SIunits.Voltage)                              voltage [V]

  [Time](Modelica_SIunits.html#Modelic tStart 0.2    Start of armature
  a.SIunits.Time)                                    voltage ramp [s]

  [Time](Modelica_SIunits.html#Modelic tRamp  0.8    Armature voltage ramp
  a.SIunits.Time)                                    [s]

  [Torque](Modelica_SIunits.html#Model TLoad  63.66  Nominal load torque
  ica.SIunits.Torque)                                [N.m]

  [Time](Modelica_SIunits.html#Modelic tStep  1.5    Time of load torque
  a.SIunits.Time)                                    step [s]

  [Inertia](Modelica_SIunits.html#Mode JLoad  0.15   Load's moment of
  lica.SIunits.Inertia)                              inertia [kg.m2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model DCPM_Start 
      "Test example: DC with permanent magnet starting with voltage ramp"
      extends Modelica.Icons.Example;
      parameter Modelica.SIunits.Voltage Va=100 "Actual armature voltage";
      parameter Modelica.SIunits.Time tStart=0.2 "Start of armature voltage ramp";
      parameter Modelica.SIunits.Time tRamp=0.8 "Armature voltage ramp";
      parameter Modelica.SIunits.Torque TLoad=63.66 "Nominal load torque";
      parameter Modelica.SIunits.Time tStep=1.5 "Time of load torque step";
      parameter Modelica.SIunits.Inertia JLoad=0.15 "Load's moment of inertia";

      Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm;
      Modelica.Blocks.Sources.Ramp ramp(
        duration=tRamp,
        height=Va,
        startTime=tStart);
      Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage;
      Modelica.Electrical.Analog.Basic.Ground ground;
      Modelica.Mechanics.Rotational.Components.Inertia loadInertia(
                                                        J=JLoad);
      Modelica.Mechanics.Rotational.Sources.TorqueStep loadTorqueStep(
                                                              startTime=tStep,
          stepTorque=-TLoad,
        useSupport=false);
    equation 
      connect(ramp.y, signalVoltage.v);
      connect(signalVoltage.p, dcpm.pin_ap);
      connect(signalVoltage.n, ground.p);
      connect(dcpm.pin_an, signalVoltage.n);
      connect(loadInertia.flange_b, loadTorqueStep.flange);
      connect(dcpm.flange, loadInertia.flange_a);
    end DCPM_Start;

* * * * *

![image17](Modelica.Electrical.Machines.Examples.DCMachines.DCPM_StartI.png) [Modelica.Electrical.Machines.Examples.DCMachines](Modelica_Electrical_Machines_Examples_DCMachines.html#Modelica.Electrical.Machines.Examples.DCMachines).DCEE\_Start
===================================================================================================================================================================================================================================================

**Test example: DC with electrical ecxitation starting with voltage
ramp**

Information
-----------

::

**Test example: Electrically separate excited DC machine started with an
armature voltage ramp**
  ~ A voltage ramp is applied to the armature, causing the DC machine to

start, and accelerating inertias. At time tStep a load step is applied.
Simulate for 2 seconds and plot (versus time):

-   dcee.ia: armature current
-   dcee.wMechanical: motor's speed
-   dcee.tauElectrical: motor's torque
-   dcee.ie: excitation current

Default machine parameters of model *DC\_ElectricalExcited* are used.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                 Name   Defaul Description
                                              t      
  ------------------------------------ ------ ------ ----------------------
  [Voltage](Modelica_SIunits.html#Mode Va     100    Actual armature
  lica.SIunits.Voltage)                              voltage [V]

  [Time](Modelica_SIunits.html#Modelic tStart 0.2    Start of armature
  a.SIunits.Time)                                    voltage ramp [s]

  [Time](Modelica_SIunits.html#Modelic tRamp  0.8    Armature voltage ramp
  a.SIunits.Time)                                    [s]

  [Voltage](Modelica_SIunits.html#Mode Ve     100    Actual excitation
  lica.SIunits.Voltage)                              voltage [V]

  [Torque](Modelica_SIunits.html#Model TLoad  63.66  Nominal load torque
  ica.SIunits.Torque)                                [N.m]

  [Time](Modelica_SIunits.html#Modelic tStep  1.5    Time of load torque
  a.SIunits.Time)                                    step [s]

  [Inertia](Modelica_SIunits.html#Mode JLoad  0.15   Load's moment of
  lica.SIunits.Inertia)                              inertia [kg.m2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model DCEE_Start 
      "Test example: DC with electrical ecxitation starting with voltage ramp"
      extends Modelica.Icons.Example;
      parameter Modelica.SIunits.Voltage Va=100 "Actual armature voltage";
      parameter Modelica.SIunits.Time tStart=0.2 "Start of armature voltage ramp";
      parameter Modelica.SIunits.Time tRamp=0.8 "Armature voltage ramp";
      parameter Modelica.SIunits.Voltage Ve=100 "Actual excitation voltage";
      parameter Modelica.SIunits.Torque TLoad=63.66 "Nominal load torque";
      parameter Modelica.SIunits.Time tStep=1.5 "Time of load torque step";
      parameter Modelica.SIunits.Inertia JLoad=0.15 "Load's moment of inertia";

      Machines.BasicMachines.DCMachines.DC_ElectricalExcited dcee;
      Modelica.Blocks.Sources.Ramp ramp(
        duration=tRamp,
        height=Va,
        startTime=tStart);
      Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage;
      Modelica.Electrical.Analog.Basic.Ground ground;
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V=Ve);
      Modelica.Electrical.Analog.Basic.Ground groundExcitation;
      Modelica.Mechanics.Rotational.Components.Inertia loadInertia(
                                                        J=JLoad);
      Modelica.Mechanics.Rotational.Sources.TorqueStep loadTorqueStep(
                                                              startTime=tStep,
          stepTorque=-TLoad,
        useSupport=false);
    equation 
      connect(ramp.y, signalVoltage.v);
      connect(signalVoltage.p, dcee.pin_ap);
      connect(signalVoltage.n, ground.p);
      connect(dcee.pin_an, ground.p);
      connect(constantVoltage.n, groundExcitation.p);
      connect(dcee.pin_ep, constantVoltage.p);
      connect(dcee.pin_en, constantVoltage.n);
      connect(loadInertia.flange_b, loadTorqueStep.flange);
      connect(dcee.flange, loadInertia.flange_a);
    end DCEE_Start;

* * * * *

![image18](Modelica.Electrical.Machines.Examples.DCMachines.DCPM_StartI.png) [Modelica.Electrical.Machines.Examples.DCMachines](Modelica_Electrical_Machines_Examples_DCMachines.html#Modelica.Electrical.Machines.Examples.DCMachines).DCSE\_Start
===================================================================================================================================================================================================================================================

**Test example: DC with serial excitation starting with voltage ramp**

Information
-----------

::

**Test example: Series excited DC machine started with a series
resistor**
  ~ At constant source voltage, a series resistor limiting the armature

current, is reduced according to a ramp, causing the DC machine to
start, and accelerating inertias against load torque quadratic dependent
on speed, finally reaching nominal speed. Simulate for 2 seconds and
plot (versus time):

-   dcse.ia: armature current
-   dcse.wMechanical: motor's speed
-   dcse.tauElectrical: motor's torque

Default machine parameters of model *DC\_SeriesExcited* are used.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name Default          Description
  ---------------------------------- ---- ---------------- ----------------
  [Voltage](Modelica_SIunits.html#Mo Va   100              Actual armature
  delica.SIunits.Voltage)                                  voltage [V]

  [Time](Modelica_SIunits.html#Model tSta 0.1              Start of
  ica.SIunits.Time)                  rt                    resistance ramp
                                                           [s]

  [Time](Modelica_SIunits.html#Model tRam 0.9              Resistance ramp
  ica.SIunits.Time)                  p                     [s]

  [Torque](Modelica_SIunits.html#Mod TLoa 63.66            Nominal load
  elica.SIunits.Torque)              d                     torque [N.m]

  [AngularVelocity](Modelica_SIunits wLoa 1410\*2\*Modelic Nominal load
  .html#Modelica.SIunits.AngularVelo d    a.Constants.pi.. speed [rad/s]
  city)                                   .                

  [Inertia](Modelica_SIunits.html#Mo JLoa 0.15             Load's moment of
  delica.SIunits.Inertia)            d                     inertia [kg.m2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model DCSE_Start 
      "Test example: DC with serial excitation starting with voltage ramp"
      extends Modelica.Icons.Example;
      parameter Modelica.SIunits.Voltage Va=100 "Actual armature voltage";
      parameter Modelica.SIunits.Time tStart=0.1 "Start of resistance ramp";
      parameter Modelica.SIunits.Time tRamp=0.9 "Resistance ramp";
      parameter Modelica.SIunits.Torque TLoad=63.66 "Nominal load torque";
      parameter Modelica.SIunits.AngularVelocity wLoad(displayUnit="1/min")=1410*2*Modelica.Constants.pi/60 
        "Nominal load speed";
      parameter Modelica.SIunits.Inertia JLoad=0.15 "Load's moment of inertia";

      Machines.BasicMachines.DCMachines.DC_SeriesExcited dcse;
      Modelica.Blocks.Sources.Ramp ramp(
        duration=tRamp,
        startTime=tStart,
        height=-1,
        offset=1);
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V=Va);
      Modelica.Electrical.Analog.Basic.Ground ground;
      Modelica.Mechanics.Rotational.Components.Inertia loadInertia(
                                                        J=JLoad);
      Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque
        quadraticLoadTorque(
        w_nominal=wLoad,
        TorqueDirection=false,
        tau_nominal=-TLoad,
        useSupport=false);
      Modelica.Electrical.Analog.Basic.VariableResistor variableResistor;
    equation 
      connect(constantVoltage.n, ground.p);
      connect(loadInertia.flange_b, quadraticLoadTorque.flange);
      connect(dcse.pin_an, dcse.pin_ep);
      connect(dcse.pin_en, constantVoltage.n);
      connect(dcse.flange, loadInertia.flange_a);
      connect(constantVoltage.p, variableResistor.p);
      connect(variableResistor.n, dcse.pin_ap);
      connect(ramp.y, variableResistor.R);
    end DCSE_Start;

* * * * *

![image19](Modelica.Electrical.Machines.Examples.DCMachines.DCPM_StartI.png) [Modelica.Electrical.Machines.Examples.DCMachines](Modelica_Electrical_Machines_Examples_DCMachines.html#Modelica.Electrical.Machines.Examples.DCMachines).DCSE\_SinglePhase
=========================================================================================================================================================================================================================================================

**Test example: DC with serial excitation starting with voltage ramp**

Information
-----------

::

**Test example: Series excited DC machine at singlephase AC voltage
started with a series resistor**
  ~ At sinusoidal source voltage, a series resistor limiting the
    armature

current, is reduced according to a ramp, causing the DC machine to
start, and accelerating inertias against load torque quadratic dependent
on speed, finally reaching nominal speed. Simulate for 2 seconds and
plot (versus time):

-   dcse.ia: armature current
-   dcse.wMechanical: motor's speed
-   dcse.tauElectrical: motor's torque

Default machine parameters of model *DC\_SeriesExcited* are used.
  ~ **Note:** Since both the field and the armature current are
    sinusoidal, the

waveform of the torque is the square of sine. Due to the additional
inductive voltage drops, output of the motor is lower, compared to the
same motor (DCSE\_Start) at DC voltage.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name Default          Description
  ---------------------------------- ---- ---------------- ----------------
  [Voltage](Modelica_SIunits.html#Mo Va   100              Actual armature
  delica.SIunits.Voltage)                                  voltage RMS [V]

  [Time](Modelica_SIunits.html#Model tSta 0.1              Start of
  ica.SIunits.Time)                  rt                    resistance ramp
                                                           [s]

  [Time](Modelica_SIunits.html#Model tRam 0.9              Resistance ramp
  ica.SIunits.Time)                  p                     [s]

  [Torque](Modelica_SIunits.html#Mod TLoa 63.66            Nominal load
  elica.SIunits.Torque)              d                     torque [N.m]

  [AngularVelocity](Modelica_SIunits wLoa 1410\*2\*Modelic Nominal load
  .html#Modelica.SIunits.AngularVelo d    a.Constants.pi.. speed [rad/s]
  city)                                   .                

  [Inertia](Modelica_SIunits.html#Mo JLoa 0.15             Load's moment of
  delica.SIunits.Inertia)            d                     inertia [kg.m2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model DCSE_SinglePhase 
      "Test example: DC with serial excitation starting with voltage ramp"
      extends Modelica.Icons.Example;
      parameter Modelica.SIunits.Voltage Va=100 "Actual armature voltage RMS";
      parameter Modelica.SIunits.Time tStart=0.1 "Start of resistance ramp";
      parameter Modelica.SIunits.Time tRamp=0.9 "Resistance ramp";
      parameter Modelica.SIunits.Torque TLoad=63.66 "Nominal load torque";
      parameter Modelica.SIunits.AngularVelocity wLoad(displayUnit="1/min")=1410*2*Modelica.Constants.pi/60 
        "Nominal load speed";
      parameter Modelica.SIunits.Inertia JLoad=0.15 "Load's moment of inertia";

      Machines.BasicMachines.DCMachines.DC_SeriesExcited dcse;
      Modelica.Blocks.Sources.Ramp ramp(
        duration=tRamp,
        startTime=tStart,
        height=-1,
        offset=1);
      Modelica.Electrical.Analog.Sources.SineVoltage constantVoltage(V=sqrt(2)*Va, freqHz=50);
      Modelica.Electrical.Analog.Basic.Ground ground;
      Modelica.Mechanics.Rotational.Components.Inertia loadInertia(
                                                        J=JLoad);
      Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque
        quadraticLoadTorque(
        w_nominal=wLoad,
        TorqueDirection=false,
        tau_nominal=-TLoad,
        useSupport=false);
      Modelica.Electrical.Analog.Basic.VariableResistor variableResistor;
    equation 
      connect(constantVoltage.n, ground.p);
      connect(loadInertia.flange_b, quadraticLoadTorque.flange);
      connect(dcse.pin_an, dcse.pin_ep);
      connect(dcse.pin_en, constantVoltage.n);
      connect(dcse.flange, loadInertia.flange_a);
      connect(constantVoltage.p, variableResistor.p);
      connect(variableResistor.n, dcse.pin_ap);
      connect(ramp.y, variableResistor.R);
    end DCSE_SinglePhase;

* * * * *

![image20](Modelica.Electrical.Machines.Examples.DCMachines.DCPM_StartI.png) [Modelica.Electrical.Machines.Examples.DCMachines](Modelica_Electrical_Machines_Examples_DCMachines.html#Modelica.Electrical.Machines.Examples.DCMachines).DCPM\_Temperature
=========================================================================================================================================================================================================================================================

**Test example: Investigate temperature dependecy of a DCPM motor**

Information
-----------

::

**Test example: Investigate influence of armature temperature on a DCPM
motor**
  ~ The motor starts at no-load speed, then a load step is applied.
    Beginning with the load step, the armature temperature rises

exponentially from 20 degC to 80 degC.
  ~ Simulate for 3 seconds and plot (versus time):

-   dcpm.ia: armature current
-   dcpm.wMechanical: motor's speed
-   dcpm.tauElectrical: motor's torque
-   thermalAmbientDCPM.Q\_flow\_a: motor's armature losses

Default machine parameters are used, but:

-   The aramature winding material is set to Copper.
-   Armature reference temperature is set to 80 degC.
-   Nominal armature temperature is set to 80 degC.

So the machine is at the beginning in cold condition, ending in warm
condition (with the same armature resistance as the unmodified machine).

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name Default         Description
  ----------------------------------- ---- --------------- ----------------
  [Voltage](Modelica_SIunits.html#Mod Va   100             Actual armature
  elica.SIunits.Voltage)                                   voltage [V]

  [Voltage](Modelica_SIunits.html#Mod Ve   100             Actual
  elica.SIunits.Voltage)                                   excitation
                                                           voltage [V]

  [AngularVelocity](Modelica_SIunits. w0   Modelica.SIunit No-load speed
  html#Modelica.SIunits.AngularVeloci      s.Conversions.. [rad/s]
  ty)                                      .               

  [Torque](Modelica_SIunits.html#Mode TLoa 63.66           Nominal load
  lica.SIunits.Torque)                d                    torque [N.m]

  [Inertia](Modelica_SIunits.html#Mod JLoa 0.15            Load's moment of
  elica.SIunits.Inertia)              d                    inertia [kg.m2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model DCPM_Temperature 
      "Test example: Investigate temperature dependecy of a DCPM motor"
      extends Modelica.Icons.Example;
      parameter Modelica.SIunits.Voltage Va=100 "Actual armature voltage";
      parameter Modelica.SIunits.Voltage Ve=100 "Actual excitation voltage";
      parameter Modelica.SIunits.AngularVelocity w0=Modelica.SIunits.Conversions.from_rpm(1500) 
        "No-load speed";
      parameter Modelica.SIunits.Torque TLoad=63.66 "Nominal load torque";
      parameter Modelica.SIunits.Inertia JLoad=0.15 "Load's moment of inertia";

      Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm(           wMechanical(start=
             w0, fixed=true),
        alpha20a(displayUnit="1/K") = Machines.Thermal.Constants.alpha20Copper,
        useThermalPort=true,
        TaNominal=353.15,
        TaRef=353.15);

      Modelica.Electrical.Analog.Sources.ConstantVoltage armatureVoltage(V=Va);
      Modelica.Electrical.Analog.Basic.Ground groundArmature;
      Modelica.Mechanics.Rotational.Components.Inertia loadInertia(J=JLoad);
      Modelica.Mechanics.Rotational.Sources.TorqueStep loadTorque(
        useSupport=false,
        stepTorque=-TLoad,
        offsetTorque=0,
        startTime=0.1);
      Machines.Thermal.DCMachines.ThermalAmbientDCPM thermalAmbientDCPM(useTemperatureInputs=true);
      Modelica.Blocks.Sources.Exponentials exponential(
        offset=293.15,
        outMax=60,
        riseTime=3600,
        riseTimeConst=0.5,
        fallTimeConst=0.5,
        startTime=0.1);
      Blocks.Sources.Constant const(k=293.15);
    equation 
      connect(loadInertia.flange_b, loadTorque.flange);
      connect(dcpm.flange, loadInertia.flange_a);

      connect(armatureVoltage.n, groundArmature.p);
      connect(armatureVoltage.p,dcpm. pin_ap);
      connect(armatureVoltage.n,dcpm. pin_an);
      connect(exponential.y, thermalAmbientDCPM.TArmature);
      connect(const.y, thermalAmbientDCPM.TPermanentMagnet);
      connect(dcpm.thermalPort, thermalAmbientDCPM.thermalPort);
    end DCPM_Temperature;

* * * * *

![image21](Modelica.Electrical.Machines.Examples.DCMachines.DCPM_StartI.png) [Modelica.Electrical.Machines.Examples.DCMachines](Modelica_Electrical_Machines_Examples_DCMachines.html#Modelica.Electrical.Machines.Examples.DCMachines).DCPM\_Cooling
=====================================================================================================================================================================================================================================================

**Test example: Cooling of a DCPM motor**

Information
-----------

::

**Test example: Demonstrate cooling of a DCPM motor**
  ~ The motor starts at no-load speed, then load pulses are applied. The
    cooling circuit consists of armature's thermal capacitance, a

thermal conductance between armature and core, core's thermal
capacitance and a thermal conductance between core and coolant. The
coolant flow circuit consists of inlet, volume flow, a pipe connected to
the core and the outlet. **Please note:**

-   All unused heat ports of the thermal port (i.e., without loss
    sources in the machine: brush, stray, friction, permanent magnet)
    have to be connected to a constant temperature source.
-   The thermal capacitances (i.e., time constants) are unusual small to
    provide short simulation time!
-   The coolant is a theoretical coolant with specific mass = 1 kg/m3
    and cp = 1 J/kg.K.
-   The thermal conductances as well as the coolant flow are
    parametrized such way, that:
-   

1.  the total coolant's temperature rise is 10 K (over coolant inlet)
2.  the core's temperature rise is 27.5 K (over coolant's average
    temperature between inlet and outlet)
3.  the armature's temperature rise is 55 K (over coolant's average
    temperature between inlet and outlet)

Simulate for 25 seconds and plot (versus time):

-   armature.T: armature temperature
-   core.T: core temperature
-   cooling.T: coolant temperature at outlet

Therefore the armature temperature would reach nominal armature
temperature at constant nominal load. Default machine parameters are
used, but:

-   The aramature winding material is set to Copper.
-   Armature reference temperature is set to 80 degC.
-   Nominal armature temperature is set to 80 degC.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name     Default       Description
  --------------------------------- -------- ------------- ----------------
  [Voltage](Modelica_SIunits.html#M Va       100           Actual armature
  odelica.SIunits.Voltage)                                 voltage [V]

  [Voltage](Modelica_SIunits.html#M Ve       100           Actual
  odelica.SIunits.Voltage)                                 excitation
                                                           voltage [V]

  [AngularVelocity](Modelica_SIunit w0       Modelica.SIun No-load speed
  s.html#Modelica.SIunits.AngularVe          its.Conversio [rad/s]
  locity)                                    ns...         

  [Torque](Modelica_SIunits.html#Mo TLoad    63.66         Nominal load
  delica.SIunits.Torque)                                   torque [N.m]

  [Inertia](Modelica_SIunits.html#M JLoad    0.15          Load's moment of
  odelica.SIunits.Inertia)                                 inertia [kg.m2]

  [Temperature](Modelica_SIunits.ht TAmbient 293.15        Ambient
  ml#Modelica.SIunits.Temperature)                         temperature [K]

  [HeatCapacity](Modelica_SIunits.h Ca       20            Armature's heat
  tml#Modelica.SIunits.HeatCapacity                        capacity [J/K]
  )                                                        

  [HeatCapacity](Modelica_SIunits.h Cc       50            Core's heat
  tml#Modelica.SIunits.HeatCapacity                        capacity [J/K]
  )                                                        

  [ThermalConductance](Modelica_SIu G\_armat 2\*Losses/dTA Heat conductance
  nits.html#Modelica.SIunits.Therma ure\_cor rmature       armature - core
  lConductance)                     e                      [W/K]

  [ThermalConductance](Modelica_SIu G\_core\ 2\*Losses/dTA Heat conductance
  nits.html#Modelica.SIunits.Therma _cooling rmature       core - cooling
  lConductance)                                            [W/K]

  [VolumeFlowRate](Modelica_SIunits CoolantF 50            Coolant flow
  .html#Modelica.SIunits.VolumeFlow low                    [m3/s]
  Rate)                                                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model DCPM_Cooling "Test example: Cooling of a DCPM motor"
      extends Modelica.Icons.Example;
      parameter Modelica.SIunits.Voltage Va=100 "Actual armature voltage";
      parameter Modelica.SIunits.Voltage Ve=100 "Actual excitation voltage";
      parameter Modelica.SIunits.AngularVelocity w0=Modelica.SIunits.Conversions.from_rpm(1500) 
        "No-load speed";
      parameter Modelica.SIunits.Torque TLoad=63.66 "Nominal load torque";
      parameter Modelica.SIunits.Inertia JLoad=0.15 "Load's moment of inertia";
      parameter Modelica.SIunits.Temperature TAmbient=293.15 "Ambient temperature";
      parameter Modelica.SIunits.HeatCapacity Ca=20 "Armature's heat capacity";
      parameter Modelica.SIunits.HeatCapacity Cc=50 "Core's heat capacity";
      final parameter Modelica.SIunits.Power Losses=dcpm.Ra*dcpm.IaNominal^2 
        "Nominal Losses";
      final parameter Modelica.SIunits.Temperature T0=293.15 
        "Reference temperature 20 degC";
      final parameter Modelica.SIunits.TemperatureDifference dTCoolant=10 
        "Coolant's temperature rise";
      final parameter Modelica.SIunits.TemperatureDifference dTArmature=dcpm.TaNominal-T0-dTCoolant/2 
        "Armature's temperature rise over coolant";
      parameter Modelica.SIunits.ThermalConductance G_armature_core=2*Losses/dTArmature 
        "Heat conductance armature - core";
      parameter Modelica.SIunits.ThermalConductance G_core_cooling=2*Losses/dTArmature 
        "Heat conductance core - cooling";
      parameter Modelica.SIunits.VolumeFlowRate CoolantFlow=50 "Coolant flow";
      Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm(
        wMechanical(start=w0, fixed=true),
        alpha20a(displayUnit="1/K") = Machines.Thermal.Constants.alpha20Copper,
        useThermalPort=true,
        TaNominal=353.15,
        TaRef=353.15);

      Modelica.Electrical.Analog.Sources.ConstantVoltage armatureVoltage(V=Va);
      Modelica.Electrical.Analog.Basic.Ground groundArmature;
      Modelica.Mechanics.Rotational.Components.Inertia loadInertia(J=JLoad);
      Modelica.Mechanics.Rotational.Sources.Torque loadTorque(
        useSupport=false);
      Modelica.Blocks.Sources.Pulse pulse(
        amplitude=-1.5*TLoad,
        offset=0,
        period=1);
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor armature(C=Ca, T(start=
             TAmbient, fixed=true));
      Modelica.Thermal.HeatTransfer.Components.ThermalConductor armatureCore(G=
            G_armature_core);
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor core(C=Cc, T(start=
              TAmbient, fixed=true));
      Modelica.Thermal.HeatTransfer.Components.ThermalConductor coreCooling(G=
            G_core_cooling);
      Modelica.Thermal.FluidHeatFlow.Sources.Ambient inlet(
          constantAmbientTemperature=TAmbient);
      Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlow volumeFlow(
                               T0=TAmbient, constantVolumeFlow=CoolantFlow);
      Modelica.Thermal.FluidHeatFlow.Components.HeatedPipe cooling(tapT=0.5, T0=
            TAmbient);
      Modelica.Thermal.FluidHeatFlow.Sources.Ambient outlet(
          constantAmbientTemperature=TAmbient);
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T=
            TAmbient);
    protected 
      Machines.Interfaces.DCMachines.ThermalPortDCPM thermalPort;
    equation 
      connect(loadInertia.flange_b, loadTorque.flange);
      connect(dcpm.flange, loadInertia.flange_a);

      connect(armatureVoltage.n, groundArmature.p);
      connect(armatureVoltage.p,dcpm. pin_ap);
      connect(armatureVoltage.n,dcpm. pin_an);
      connect(armature.port, armatureCore.port_a);
      connect(armatureCore.port_b, core.port);
      connect(core.port, coreCooling.port_a);
      connect(pulse.y, loadTorque.tau);
      connect(coreCooling.port_b, cooling.heatPort);
      connect(cooling.flowPort_b, outlet.flowPort);
      connect(inlet.flowPort, volumeFlow.flowPort_a);
      connect(volumeFlow.flowPort_b, cooling.flowPort_a);
      connect(dcpm.thermalPort, thermalPort);
      connect(armature.port, thermalPort.heatPortArmature);
      connect(core.port, thermalPort.heatPortCore);
      connect(fixedTemperature.port, thermalPort.heatPortStrayLoad);
      connect(fixedTemperature.port, thermalPort.heatPortFriction);
      connect(fixedTemperature.port, thermalPort.heatPortBrush);
      connect(fixedTemperature.port, thermalPort.heatPortPermanentMagnet);
    end DCPM_Cooling;

* * * * *

![image22](Modelica.Electrical.Machines.Examples.DCMachines.DCPM_StartI.png) [Modelica.Electrical.Machines.Examples.DCMachines](Modelica_Electrical_Machines_Examples_DCMachines.html#Modelica.Electrical.Machines.Examples.DCMachines).DCPM\_QuasiStationary
=============================================================================================================================================================================================================================================================

**Test example: Compare DCPM motors transient - quasistationary**

Information
-----------

::

**Test example: Compare DCPM motors transient and quasistationary**
  ~ The motors start at no-load speed, then load pulses are applied.
    Simulate for 2 seconds and plot (versus time):

-   dcpm1.ia: armature current of transient model
-   dcpm1.wMechanical: motor's speed of transient model
-   dcpm1.tauElectrical: motor's torque of transient model
-   dcpm2.ia: armature current of quasistationary model
-   dcpm2.wMechanical: motor's speed of quasistationary model
-   dcpm2.tauElectrical: motor's torque of quasistationary model

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name Default         Description
  ----------------------------------- ---- --------------- ----------------
  [Voltage](Modelica_SIunits.html#Mod Va   100             Actual armature
  elica.SIunits.Voltage)                                   voltage [V]

  [Voltage](Modelica_SIunits.html#Mod Ve   100             Actual
  elica.SIunits.Voltage)                                   excitation
                                                           voltage [V]

  [AngularVelocity](Modelica_SIunits. w0   Modelica.SIunit No-load speed
  html#Modelica.SIunits.AngularVeloci      s.Conversions.. [rad/s]
  ty)                                      .               

  [Torque](Modelica_SIunits.html#Mode TLoa 63.66           Nominal load
  lica.SIunits.Torque)                d                    torque [N.m]

  [Inertia](Modelica_SIunits.html#Mod JLoa 0.15            Load's moment of
  elica.SIunits.Inertia)              d                    inertia [kg.m2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model DCPM_QuasiStationary 
      "Test example: Compare DCPM motors transient - quasistationary"
      extends Modelica.Icons.Example;
      parameter Modelica.SIunits.Voltage Va=100 "Actual armature voltage";
      parameter Modelica.SIunits.Voltage Ve=100 "Actual excitation voltage";
      parameter Modelica.SIunits.AngularVelocity w0=Modelica.SIunits.Conversions.from_rpm(1500) 
        "No-load speed";
      parameter Modelica.SIunits.Torque TLoad=63.66 "Nominal load torque";
      parameter Modelica.SIunits.Inertia JLoad=0.15 "Load's moment of inertia";
      Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm1(
              wMechanical(start=w0, fixed=true), alpha20a(displayUnit="1/K"));

      Modelica.Electrical.Analog.Sources.ConstantVoltage armatureVoltage(V=Va);
      Modelica.Electrical.Analog.Basic.Ground groundArmature;
      Modelica.Mechanics.Rotational.Components.Inertia loadInertia1(J=JLoad);
      Modelica.Mechanics.Rotational.Sources.Torque loadTorque1(useSupport=false);
      Modelica.Blocks.Sources.Pulse pulse(
        amplitude=-1.5*TLoad,
        offset=0,
        period=1);
      Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnet
        dcpm2(wMechanical(start=w0, fixed=true), alpha20a(displayUnit="1/K"));
      Modelica.Mechanics.Rotational.Components.Inertia loadInertia2(J=JLoad);
      Modelica.Mechanics.Rotational.Sources.Torque loadTorque2(useSupport=false);
    equation 
      connect(loadInertia1.flange_b, loadTorque1.flange);
      connect(dcpm1.flange, loadInertia1.flange_a);

      connect(armatureVoltage.n, groundArmature.p);
      connect(armatureVoltage.p, dcpm1.pin_ap);
      connect(armatureVoltage.n, dcpm1.pin_an);
      connect(pulse.y, loadTorque1.tau);
      connect(loadInertia2.flange_b,loadTorque2. flange);
      connect(dcpm2.flange,loadInertia2. flange_a);
      connect(pulse.y, loadTorque2.tau);
      connect(armatureVoltage.p, dcpm2.pin_ap);
      connect(armatureVoltage.n, dcpm2.pin_an);
    end DCPM_QuasiStationary;

* * * * *

![image23](Modelica.Electrical.Machines.Examples.DCMachines.DCPM_StartI.png) [Modelica.Electrical.Machines.Examples.DCMachines](Modelica_Electrical_Machines_Examples_DCMachines.html#Modelica.Electrical.Machines.Examples.DCMachines).DCPM\_withLosses
========================================================================================================================================================================================================================================================

**Test example: Investigate influence of losses on DCPM motor
performance**

Information
-----------

::

**Test example: Investigate influence of losses on DCPM motor
performance**
  ~ Both motors are started with a voltage ramp applied to the armature,

causing the DC machines to start, and accelerating inertias. Both
machines are loading with a quadratic speed depenedent load torque. The
first machine `dcpm1` uses default machine parameters of model
*DC\_PermanentMagnet*, the second machine `dcpm2` is parametrized with
additional losses:

  ---------------------------- ------------ ------------ ---------
                               dcpm1        dcpm2        
  Armature voltage             100          100          V
  Armature current             100          100          A
  Inner voltage                95.0         94.5         V
  Nominal speed                1425.0       1417.5       rpm
  Armature resistance          0.05000      0.03864      Ohm
  Temperature coefficient      n/a          0.00392      1/K
  Reference temperature        n/a          20           degC
  Operation temperature        n/a          95           degC
  Brush voltage drop           n/a          0.5          V
  Electrical input             10,000       10,000       W
  Armature copper losses       500          500          W
  Core losses                  n/a          200          W
  Stray load losses            n/a          50           W
  Friction losses              n/a          100          W
  Brush losses                 n/a          50           W
  Mechanical output            9,500        9,100        W
  Nominal torque               63,66        61,30        Nm
  ---------------------------- ------------ ------------ ---------

> Note: The reference values (voltage, current, speed) are already

propagated to the loss records, using the nominal operation point.
  ~ See: Anton Haumer, Christian Kral, Hansjörg Kapeller, Thomas Bäuml,
    Johannes

V. Gragger
  ~ \`The AdvancedMachines Library: Loss Models for Electric

Machines
<[http://www.modelica.org/events/modelica2009/Proceedings/memorystick/pages/papers/0103/0103.pdf](http://www.modelica.org/events/modelica2009/Proceedings/memorystick/pages/papers/0103/0103.pdf)\>\`\_
  ~ Modelica 2009, 7^th^ International Modelica Conference

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name  Default    Description
  -------------------------------------- ----- ---------- ------------------
  [Voltage](Modelica_SIunits.html#Modeli Va    100        Actual armature
  ca.SIunits.Voltage)                                     voltage [V]

  [Time](Modelica_SIunits.html#Modelica. tStar 0.2        Start of armature
  SIunits.Time)                          t                voltage ramp [s]

  [Time](Modelica_SIunits.html#Modelica. tRamp 0.8        Armature voltage
  SIunits.Time)                                           ramp [s]

  [Torque](Modelica_SIunits.html#Modelic TLoad 63.66      Nominal load
  a.SIunits.Torque)                      1                torque [N.m]

  [AngularVelocity](Modelica_SIunits.htm wLoad 1425\*2\*p Nominal load speed
  l#Modelica.SIunits.AngularVelocity)    1     i/60       [rad/s]

  [Torque](Modelica_SIunits.html#Modelic TLoad 61.30      Nominal load
  a.SIunits.Torque)                      2                torque [N.m]

  [AngularVelocity](Modelica_SIunits.htm wLoad 1417.5\*2\ Nominal load speed
  l#Modelica.SIunits.AngularVelocity)    2     *pi/60     [rad/s]

  [Inertia](Modelica_SIunits.html#Modeli JLoad 0.15       Load's moment of
  ca.SIunits.Inertia)                                     inertia [kg.m2]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    model DCPM_withLosses 
      "Test example: Investigate influence of losses on DCPM motor performance"
      extends Modelica.Icons.Example;
      import Modelica.Constants.pi;
      parameter Modelica.SIunits.Voltage Va=100 "Actual armature voltage";
      parameter Modelica.SIunits.Time tStart=0.2 "Start of armature voltage ramp";
      parameter Modelica.SIunits.Time tRamp=0.8 "Armature voltage ramp";
      parameter Modelica.SIunits.Torque TLoad1=63.66 "Nominal load torque";
      parameter Modelica.SIunits.AngularVelocity wLoad1=1425*2*pi/60 
        "Nominal load speed";
      parameter Modelica.SIunits.Torque TLoad2=61.30 "Nominal load torque";
      parameter Modelica.SIunits.AngularVelocity wLoad2=1417.5*2*pi/60 
        "Nominal load speed";
      parameter Modelica.SIunits.Inertia JLoad=0.15 "Load's moment of inertia";

      Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm1;
      Modelica.Blocks.Sources.Ramp ramp(
        duration=tRamp,
        height=Va,
        startTime=tStart);
      Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage;
      Modelica.Electrical.Analog.Basic.Ground ground;
      Modelica.Mechanics.Rotational.Components.Inertia loadInertia1(J=JLoad);
      Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque
        loadTorque1(
          useSupport=false,
        tau_nominal=-TLoad1,
        TorqueDirection=false,
        w_nominal=wLoad1);
      Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm2(
        frictionParameters(PRef=100),
        alpha20a(displayUnit="1/K") = Modelica.Electrical.Machines.Thermal.Constants.alpha20Copper,
        coreParameters(PRef=200),
        strayLoadParameters(PRef=50),
        brushParameters(V=0.5),
        TaOperational=368.15,
        wNominal=148.44025288212,
        TaNominal=368.15,
        Ra=0.03864,
        TaRef=293.15);

      Modelica.Mechanics.Rotational.Components.Inertia loadInertia2(J=JLoad);
      Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque
        loadTorque2(
          useSupport=false,
        tau_nominal=-TLoad2,
        TorqueDirection=false,
        w_nominal=wLoad2);
    equation 
      connect(ramp.y, signalVoltage.v);
      connect(signalVoltage.n, ground.p);
      connect(loadInertia1.flange_b, loadTorque1.flange);
      connect(dcpm1.flange, loadInertia1.flange_a);
      connect(loadInertia2.flange_b, loadTorque2.flange);
      connect(dcpm2.flange, loadInertia2.flange_a);
      connect(signalVoltage.p, dcpm1.pin_ap);
      connect(signalVoltage.p, dcpm2.pin_ap);
      connect(signalVoltage.n, dcpm1.pin_an);
      connect(signalVoltage.n, dcpm2.pin_an);
    end DCPM_withLosses;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:38 2010.
