% Modelica.Electrical.Machines.Examples.Transformers
% 
% 

[Modelica.Electrical.Machines.Examples](Modelica_Electrical_Machines_Examples.html#Modelica.Electrical.Machines.Examples).Transformers
======================================================================================================================================

**Test examples of transformers**

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

  ------------------------------------------------------------------------
  Name                                                  Description
  ----------------------------------------------------- ------------------
  ![image5](Modelica.Electrical.Machines.Examples.Async Transformer
  hronousInductionMachines.AIMC_DOLS.png)               Testbench
  [TransformerTestbench](Modelica_Electrical_Machines_E 
  xamples_Transformers.html#Modelica.Electrical.Machine 
  s.Examples.Transformers.TransformerTestbench)         

  ![image6](Modelica.Electrical.Machines.Examples.Async AsymmetricalLoad
  hronousInductionMachines.AIMC_DOLS.png)               
  [AsymmetricalLoad](Modelica_Electrical_Machines_Examp 
  les_Transformers.html#Modelica.Electrical.Machines.Ex 
  amples.Transformers.AsymmetricalLoad)                 

  ![image7](Modelica.Electrical.Machines.Examples.Async 6-pulse rectifier
  hronousInductionMachines.AIMC_DOLS.png)               with 1 transformer
  [Rectifier6pulse](Modelica_Electrical_Machines_Exampl 
  es_Transformers.html#Modelica.Electrical.Machines.Exa 
  mples.Transformers.Rectifier6pulse)                   

  ![image8](Modelica.Electrical.Machines.Examples.Async 12-pulse rectifier
  hronousInductionMachines.AIMC_DOLS.png)               with 2
  [Rectifier12pulse](Modelica_Electrical_Machines_Examp transformers
  les_Transformers.html#Modelica.Electrical.Machines.Ex 
  amples.Transformers.Rectifier12pulse)                 

  ![image9](Modelica.Electrical.Machines.Examples.Async Test example:
  hronousInductionMachines.AIMC_DOLS.png)               AsynchronousInduct
  [AIMC\_Transformer](Modelica_Electrical_Machines_Exam ionMachineSquirrel
  ples_Transformers.html#Modelica.Electrical.Machines.E Cage
  xamples.Transformers.AIMC_Transformer)                transformer
                                                        starting
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Electrical.Machines.Examples.Transformers.TransformerTestbenchI.png) [Modelica.Electrical.Machines.Examples.Transformers](Modelica_Electrical_Machines_Examples_Transformers.html#Modelica.Electrical.Machines.Examples.Transformers).TransformerTestbench
==============================================================================================================================================================================================================================================================================

**Transformer Testbench**

Information
-----------

::

### Transformer testbench:

You may choose different connections as well as vary the load (even not
symmetrical).

**Please pay attention** to proper grounding of the primary and
secondary part of the whole circuit. The primary and secondary starpoint
are available as connectors, if the connection is not delta (D or d).

In some cases it may be necessary to ground the transformer's starpoint
even though the source's or load's starpoint are grounded:

-   Yy ... Grounding of transformer's primary or secondary starpoint
    with reasonable high earthing resistance is necessary.
-   Yd ... No grounding necessary.
-   Yz ... Grounding of transformer's primary starpoint with reasonable
    high earthing resistance is necessary.
-   Dy ... No grounding necessary.
-   Dd ... No grounding necessary.
-   Dz ... No grounding necessary.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                     Name  Default   Description
  ---------------------------------------- ----- --------- ---------------
  [Resistance](Modelica_SIunits.html#Model RL[3] fill(1/3, Load resistance
  ica.SIunits.Resistance)                        3)        [Ohm]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model TransformerTestbench "Transformer Testbench"
      extends Modelica.Icons.Example;
      parameter Modelica.SIunits.Resistance RL[3]=fill(1/3,3) "Load resistance";
      Modelica.Electrical.MultiPhase.Sources.SineVoltage source(freqHz=fill(50, 3),
          V=fill(sqrt(2/3)*100, 3));
      Modelica.Electrical.MultiPhase.Basic.Star starS;
      Modelica.Electrical.Analog.Basic.Ground groundS;
      Machines.Sensors.ElectricalPowerSensor electricalPowerSensorS;
      Machines.Sensors.CurrentQuasiRMSSensor currentQuasiRMSSensorS;
      Machines.Sensors.VoltageQuasiRMSSensor voltageQuasiRMSSensorS;
      Modelica.Electrical.MultiPhase.Basic.Delta deltaS;
      Modelica.Electrical.Analog.Basic.Resistor earth(R=1e6);
      Modelica.Electrical.Analog.Basic.Ground groundT;
      Machines.Sensors.VoltageQuasiRMSSensor voltageRMSSensorL;
      Modelica.Electrical.MultiPhase.Basic.Delta deltaL;
      Machines.Sensors.CurrentQuasiRMSSensor currentQuasiRMSSensorL;
      Machines.Sensors.ElectricalPowerSensor electricalPowerSensorL;
      Modelica.Electrical.MultiPhase.Basic.Resistor load(R=RL);
      Modelica.Electrical.MultiPhase.Basic.Star starL;
      Modelica.Electrical.Analog.Basic.Ground groundL;
      Machines.Utilities.TransformerData transformerData(
        C1=Modelica.Utilities.Strings.substring(transformer.VectorGroup,1,1),
        C2=Modelica.Utilities.Strings.substring(transformer.VectorGroup,2,2));
      BasicMachines.Transformers.Dy.Dy01          transformer(
        n=transformerData.n,
        R1=transformerData.R1,
        L1sigma=transformerData.L1sigma,
        R2=transformerData.R2,
        L2sigma=transformerData.L2sigma);
    equation 
      connect(starS.pin_n, groundS.p);
      connect(source.plug_n, starS.plug_p);
      connect(starL.pin_n, groundL.p);
      connect(load.plug_n, starL.plug_p);
      connect(earth.n, groundT.p);
      connect(electricalPowerSensorS.plug_nv, starS.plug_p);
      connect(source.plug_p, electricalPowerSensorS.plug_p);
      connect(electricalPowerSensorS.plug_ni, currentQuasiRMSSensorS.plug_p);
      connect(currentQuasiRMSSensorL.plug_n, electricalPowerSensorL.plug_p);
      connect(electricalPowerSensorL.plug_ni, load.plug_p);
      connect(electricalPowerSensorL.plug_nv, starL.plug_p);
      connect(currentQuasiRMSSensorS.plug_n, transformer.plug1);
      connect(transformer.plug2, currentQuasiRMSSensorL.plug_p);
      connect(deltaS.plug_p, voltageQuasiRMSSensorS.plug_n);
      connect(deltaS.plug_n, voltageQuasiRMSSensorS.plug_p);
      connect(currentQuasiRMSSensorS.plug_n, deltaS.plug_n);
      connect(currentQuasiRMSSensorL.plug_p, deltaL.plug_n);
      connect(deltaL.plug_n, voltageRMSSensorL.plug_p);
      connect(deltaL.plug_p, voltageRMSSensorL.plug_n);
    end TransformerTestbench;

* * * * *

![image11](Modelica.Electrical.Machines.Examples.Transformers.TransformerTestbenchI.png) [Modelica.Electrical.Machines.Examples.Transformers](Modelica_Electrical_Machines_Examples_Transformers.html#Modelica.Electrical.Machines.Examples.Transformers).AsymmetricalLoad
==========================================================================================================================================================================================================================================================================

**AsymmetricalLoad**

Information
-----------

::

### Asymmetrical (singlephase) load:

You may choose different connections.

**Please pay attention** to proper grounding of the primary and
secondary part of the whole circuit. The primary and secondary starpoint
are available as connectors, if the connection is not delta (D or d).

In some cases it may be necessary to ground the transformer's starpoint
even though the source's or load's starpoint are grounded:

-   Yy with primary starpoint connected to source's starpoint: primary
    current in only one phase
-   Yy primary starpoint not connected to source's starpoint: secondary
    voltage breaks down
-   Yz ... Grounding of transformer's primary starpoint with reasonable
    high earthing resistance is necessary.
-   Dy ... Load current in two primary phases.
-   Dz ... Load current in three primary phases.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                        Name  Default Description
  ------------------------------------------- ----- ------- ----------------
  [Resistance](Modelica_SIunits.html#Modelica RL    1       Load resistance
  .SIunits.Resistance)                                      [Ohm]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    model AsymmetricalLoad "AsymmetricalLoad"
      extends Modelica.Icons.Example;
      parameter Modelica.SIunits.Resistance RL=1 "Load resistance";
      Modelica.Electrical.MultiPhase.Sources.SineVoltage source(freqHz=fill(50, 3),
          V=fill(sqrt(2/3)*100, 3));
      Modelica.Electrical.MultiPhase.Basic.Star starS;
      Modelica.Electrical.Analog.Basic.Ground groundS;
      MultiPhase.Sensors.CurrentSensor currentSensorS;
      Modelica.Electrical.Analog.Basic.Ground groundL;
      Machines.Utilities.TransformerData transformerData(
        C1=Modelica.Utilities.Strings.substring(transformer.VectorGroup,1,1),
        C2=Modelica.Utilities.Strings.substring(transformer.VectorGroup,2,2));
      BasicMachines.Transformers.Dy.Dy01          transformer(
        n=transformerData.n,
        R1=transformerData.R1,
        L1sigma=transformerData.L1sigma,
        R2=transformerData.R2,
        L2sigma=transformerData.L2sigma);
      MultiPhase.Basic.PlugToPin_n plugToPin_n(     k=1);
      Analog.Basic.Resistor load(R=RL);
      Analog.Basic.Resistor                     earth(R=1e6);
      Analog.Basic.Ground                     groundT;
    equation 
      connect(starS.pin_n, groundS.p);
      connect(source.plug_n, starS.plug_p);
      connect(currentSensorS.plug_n, transformer.plug1);
      connect(transformer.plug2, plugToPin_n.plug_n);
      connect(transformer.starpoint2, groundL.p);
      connect(load.p, plugToPin_n.pin_n);
      connect(transformer.starpoint2, load.n);
      connect(source.plug_p, currentSensorS.plug_p);
      connect(earth.n,groundT. p);
    end AsymmetricalLoad;

* * * * *

![image12](Modelica.Electrical.Machines.Examples.Transformers.TransformerTestbenchI.png) [Modelica.Electrical.Machines.Examples.Transformers](Modelica_Electrical_Machines_Examples_Transformers.html#Modelica.Electrical.Machines.Examples.Transformers).Rectifier6pulse
=========================================================================================================================================================================================================================================================================

**6-pulse rectifier with 1 transformer**

Information
-----------

::

Test example with multiphase components:
  ~ Star-connected voltage source feeds via a transformer a diode bridge

rectifier with a DC burden.
  ~ Using f=50 Hz, simulate for 0.1 seconds (5 periods) and compare

voltages and currents of source and DC burden, neglecting initial
transient.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name Default   Description
  ------------------------------------- ---- --------- --------------------
  [Voltage](Modelica_SIunits.html#Model V    100\*sqrt Amplitude of
  ica.SIunits.Voltage)                       (2/3)     star-voltage [V]

  [Frequency](Modelica_SIunits.html#Mod f    50        Frequency [Hz]
  elica.SIunits.Frequency)                             

  [Resistance](Modelica_SIunits.html#Mo RL   0.4       Load resistance
  delica.SIunits.Resistance)                           [Ohm]

  [Capacitance](Modelica_SIunits.html#M C    0.005     Total DC-capacitance
  odelica.SIunits.Capacitance)                         [F]

  [Voltage](Modelica_SIunits.html#Model VC0  sqrt(3)\* Initial voltage of
  ica.SIunits.Voltage)                       V         capacitance [V]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Rectifier6pulse "6-pulse rectifier with 1 transformer"
      extends Modelica.Icons.Example;
      constant Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage V=100*sqrt(2/3) 
        "Amplitude of star-voltage";
      parameter Modelica.SIunits.Frequency f=50 "Frequency";
      parameter Modelica.SIunits.Resistance RL=0.4 "Load resistance";
      parameter Modelica.SIunits.Capacitance C=0.005 "Total DC-capacitance";
      parameter Modelica.SIunits.Voltage VC0=sqrt(3)*V 
        "Initial voltage of capacitance";
      Modelica.Electrical.MultiPhase.Sources.SineVoltage source(
        m=m,
        V=fill(V, m),
        freqHz=fill(f, m));
      Modelica.Electrical.MultiPhase.Basic.Star starAC(m=m);
      Modelica.Electrical.Analog.Basic.Ground groundAC;
      Modelica.Electrical.MultiPhase.Sensors.CurrentSensor currentSensor(m=m);
      Modelica.Electrical.MultiPhase.Ideal.IdealDiode diode1(m=m);
      Modelica.Electrical.MultiPhase.Basic.Star star1(m=m);
      Modelica.Electrical.MultiPhase.Ideal.IdealDiode diode2(m=m);
      Modelica.Electrical.MultiPhase.Basic.Star star2(m=m);
      Modelica.Electrical.Analog.Basic.Resistor load(R=RL);
      Modelica.Electrical.Analog.Basic.Capacitor cDC1(C=2*C, v(start=VC0/2));
      Modelica.Electrical.Analog.Basic.Capacitor cDC2(C=2*C, v(start=VC0/2));
      Modelica.Electrical.Analog.Basic.Ground groundDC;
      Machines.Utilities.TransformerData transformerData1(
        C1=Modelica.Utilities.Strings.substring(transformer1.VectorGroup,1,1),
        C2=Modelica.Utilities.Strings.substring(transformer1.VectorGroup,2,2));
      Machines.BasicMachines.Transformers.Dy.Dy01 transformer1(
        n=transformerData1.n,
        R1=transformerData1.R1,
        L1sigma=transformerData1.L1sigma,
        R2=transformerData1.R2,
        L2sigma=transformerData1.L2sigma);
    equation 
      connect(cDC1.n, cDC2.p);
      connect(cDC1.n, groundDC.p);
      connect(starAC.plug_p, source.plug_n);
      connect(diode1.plug_n, star1.plug_p);
      connect(diode2.plug_p, star2.plug_p);
      connect(diode2.plug_n, diode1.plug_p);
      connect(starAC.pin_n, groundAC.p);
      connect(source.plug_p, currentSensor.plug_p);
      connect(load.p, cDC1.p);
      connect(load.n, cDC2.n);
      connect(star1.pin_n, cDC1.p);
      connect(star2.pin_n, cDC2.n);
      connect(transformer1.plug1, currentSensor.plug_n);
      connect(transformer1.plug2, diode1.plug_p);
    end Rectifier6pulse;

* * * * *

![image13](Modelica.Electrical.Machines.Examples.Transformers.TransformerTestbenchI.png) [Modelica.Electrical.Machines.Examples.Transformers](Modelica_Electrical_Machines_Examples_Transformers.html#Modelica.Electrical.Machines.Examples.Transformers).Rectifier12pulse
==========================================================================================================================================================================================================================================================================

**12-pulse rectifier with 2 transformers**

Information
-----------

::

Test example with multiphase components:
  ~ Star-connected voltage source feeds via two transformers (Dd0 and
    Dy1)

two diode bridge rectifiers with a single DC burden.
  ~ Using f=50 Hz, simulate for 0.1 seconds (5 periods) and compare

voltages and currents of source and DC burden, neglecting initial
transient.

::

Extends from
[Machines.Examples.Transformers.Rectifier6pulse](Modelica_Electrical_Machines_Examples_Transformers.html#Modelica.Electrical.Machines.Examples.Transformers.Rectifier6pulse)
(6-pulse rectifier with 1 transformer).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name Default   Description
  ------------------------------------- ---- --------- --------------------
  [Voltage](Modelica_SIunits.html#Model V    100\*sqrt Amplitude of
  ica.SIunits.Voltage)                       (2/3)     star-voltage [V]

  [Frequency](Modelica_SIunits.html#Mod f    50        Frequency [Hz]
  elica.SIunits.Frequency)                             

  [Resistance](Modelica_SIunits.html#Mo RL   0.2       Load resistance
  delica.SIunits.Resistance)                           [Ohm]

  [Capacitance](Modelica_SIunits.html#M C    0.005     Total DC-capacitance
  odelica.SIunits.Capacitance)                         [F]

  [Voltage](Modelica_SIunits.html#Model VC0  sqrt(3)\* Initial voltage of
  ica.SIunits.Voltage)                       V         capacitance [V]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Rectifier12pulse "12-pulse rectifier with 2 transformers"
      extends Machines.Examples.Transformers.Rectifier6pulse(RL=0.2);
      Modelica.Electrical.MultiPhase.Ideal.IdealDiode diode3(m=m);
      Modelica.Electrical.MultiPhase.Basic.Star star3(m=m);
      Modelica.Electrical.MultiPhase.Ideal.IdealDiode diode4(m=m);
      Modelica.Electrical.MultiPhase.Basic.Star star4(m=m);
      Machines.BasicMachines.Transformers.Dd.Dd00 transformer2(
        n=transformerData2.n,
        R1=transformerData2.R1,
        L1sigma=transformerData2.L1sigma,
        R2=transformerData2.R2,
        L2sigma=transformerData2.L2sigma);
      Machines.Utilities.TransformerData transformerData2(
        C1=Modelica.Utilities.Strings.substring(transformer2.VectorGroup,1,1),
        C2=Modelica.Utilities.Strings.substring(transformer2.VectorGroup,2,2));
    equation 
      connect(diode3.plug_n, star3.plug_p);
      connect(diode4.plug_p, star4.plug_p);
      connect(diode4.plug_n, diode3.plug_p);
      connect(star4.pin_n, cDC2.n);
      connect(star3.pin_n, cDC1.p);
      connect(transformer2.plug2, diode4.plug_n);
      connect(transformer2.plug1, currentSensor.plug_n);
    end Rectifier12pulse;

* * * * *

![image14](Modelica.Electrical.Machines.Examples.Transformers.TransformerTestbenchI.png) [Modelica.Electrical.Machines.Examples.Transformers](Modelica_Electrical_Machines_Examples_Transformers.html#Modelica.Electrical.Machines.Examples.Transformers).AIMC\_Transformer
===========================================================================================================================================================================================================================================================================

**Test example: AsynchronousInductionMachineSquirrelCage transformer
starting**

Information
-----------

::

**Test example: Asynchronous induction machine with squirrel cage
-transformer starting**
  ~ At start time tStart1 three phase voltage is supplied to the

asynchronous induction machine with squirrel cage via the transformer;
the machine starts from standstill, accelerating inertias against load
torque quadratic dependent on speed; at start time tStart2 the machine
is fed directly from the voltage source, finally reaching nominal speed.
Simulate for 2.5 seconds and plot (versus time):

-   currentQuasiRMSSensor.I: stator current RMS
-   aimc.wMechanical: motor's speed
-   aimc.tauElectrical: motor's torque

Default machine parameters of model *AIM\_SquirrelCage* are used.

::

Extends from
[Machines.Examples.AsynchronousInductionMachines.AIMC\_Transformer](Modelica_Electrical_Machines_Examples_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.Examples.AsynchronousInductionMachines.AIMC_Transformer)
(Test example: AsynchronousInductionMachineSquirrelCage transformer
starting).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name  Default         Description
  --------------------------------- ----- --------------- -----------------
  [Voltage](Modelica_SIunits.html#M VNomi 100             Nominal RMS
  odelica.SIunits.Voltage)          nal                   voltage per phase
                                                          [V]

  [Frequency](Modelica_SIunits.html fNomi 50              Nominal frequency
  #Modelica.SIunits.Frequency)      nal                   [Hz]

  [Time](Modelica_SIunits.html#Mode tStar 0.1             Start time [s]
  lica.SIunits.Time)                t1                    

  [Time](Modelica_SIunits.html#Mode tStar 2.0             Start time of
  lica.SIunits.Time)                t2                    bypass
                                                          transformer [s]

  [Torque](Modelica_SIunits.html#Mo TLoad 161.4           Nominal load
  delica.SIunits.Torque)                                  torque [N.m]

  [AngularVelocity](Modelica_SIunit wLoad 1440.45\*2\*Mod Nominal load
  s.html#Modelica.SIunits.AngularVe       elica.Constants speed [rad/s]
  locity)                                 ...             

  [Inertia](Modelica_SIunits.html#M JLoad 0.29            Load's moment of
  odelica.SIunits.Inertia)                                inertia [kg.m2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model AIMC_Transformer 
      "Test example: AsynchronousInductionMachineSquirrelCage transformer starting"
      extends Machines.Examples.AsynchronousInductionMachines.AIMC_Transformer;
    end AIMC_Transformer;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:40 2010.
