% Modelica.Electrical.Machines.Interfaces
% 
% 

[Modelica.Electrical.Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines).Interfaces
=========================================================================================================

**SpacePhasor connector and PartialMachines**

Information
-----------

::

This package contains the space phasor connector and partial models for
machine models.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image10](Modelica.Electrical.Machines.Interfaces.SpaceP Connector for
  hasorS.png)                                               Space Phasors
  [SpacePhasor](Modelica_Electrical_Machines_Interfaces.htm 
  l#Modelica.Electrical.Machines.Interfaces.SpacePhasor)    

  ![image11](Modelica.Electrical.Machines.Interfaces.Partia Partial model
  lBasicMachineS.png)                                       for all
  [PartialBasicMachine](Modelica_Electrical_Machines_Interf machines
  aces.html#Modelica.Electrical.Machines.Interfaces.Partial 
  BasicMachine)                                             

  ![image12](Modelica.Electrical.Machines.Interfaces.Partia Partial model
  lBasicInductionMachineS.png)                              for induction
  [PartialBasicInductionMachine](Modelica_Electrical_Machin machine
  es_Interfaces.html#Modelica.Electrical.Machines.Interface 
  s.PartialBasicInductionMachine)                           

  ![image13](Modelica.Electrical.Machines.Interfaces.Induct Interfaces and
  ionMachinesS.png)                                         partial models
  [InductionMachines](Modelica_Electrical_Machines_Interfac for induction
  es_InductionMachines.html#Modelica.Electrical.Machines.In machines
  terfaces.InductionMachines)                               

  ![image14](Modelica.Electrical.Machines.Interfaces.Partia Partial model
  lBasicDCMachineS.png)                                     for DC machine
  [PartialBasicDCMachine](Modelica_Electrical_Machines_Inte 
  rfaces.html#Modelica.Electrical.Machines.Interfaces.Parti 
  alBasicDCMachine)                                         

  ![image15](Modelica.Electrical.Machines.Interfaces.DCMach Thermal ports
  inesS.png)                                                of DC machines
  [DCMachines](Modelica_Electrical_Machines_Interfaces_DCMa 
  chines.html#Modelica.Electrical.Machines.Interfaces.DCMac 
  hines)                                                    

  ![image16](Modelica.Electrical.Machines.Interfaces.Partia Partial model
  lBasicTransformerS.png)                                   of threephase
  [PartialBasicTransformer](Modelica_Electrical_Machines_In transformer
  terfaces.html#Modelica.Electrical.Machines.Interfaces.Par 
  tialBasicTransformer)                                     

  ![image17](Modelica.Electrical.Machines.Interfaces.Therma Thermal port
  lPortTransformerS.png)                                    of
  [ThermalPortTransformer](Modelica_Electrical_Machines_Int transformers
  erfaces.html#Modelica.Electrical.Machines.Interfaces.Ther 
  malPortTransformer)                                       

  ![image18](Modelica.Electrical.Machines.Interfaces.PowerB Power balance
  alanceTransformerS.png)                                   of
  [PowerBalanceTransformer](Modelica_Electrical_Machines_In transformers
  terfaces.html#Modelica.Electrical.Machines.Interfaces.Pow 
  erBalanceTransformer)                                     

  ![image19](Modelica.Electrical.Machines.Interfaces.Flange Shaft and
  SupportS.png)                                             support
  [FlangeSupport](Modelica_Electrical_Machines_Interfaces.h 
  tml#Modelica.Electrical.Machines.Interfaces.FlangeSupport 
  )                                                         
  ------------------------------------------------------------------------

* * * * *

![image20](Modelica.Electrical.Machines.Interfaces.SpacePhasorI.png) [Modelica.Electrical.Machines.Interfaces](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces).SpacePhasor
================================================================================================================================================================================================================

**Connector for Space Phasors**

Information
-----------

::

Connector for Space Phasors:

-   Voltage v\_[2] ... Real and Imaginary part of voltage space phasor
-   Current i\_[2] ... Real and Imaginary part of current space phasor

::

Contents
--------

  -------------------------------------------------------------------------
  Type                                        Name    Description
  ------------------------------------------- ------- ---------------------
  [Voltage](Modelica_SIunits.html#Modelica.SI v\_[2]  1=real, 2=imaginary
  units.Voltage)                                      part [V]

  flow                                        i\_[2]  1=real, 2=imaginary
  [Current](Modelica_SIunits.html#Modelica.SI         part [A]
  units.Current)                                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector SpacePhasor "Connector for Space Phasors"
      Modelica.SIunits.Voltage v_[2] "1=real, 2=imaginary part";
      flow Modelica.SIunits.Current i_[2] "1=real, 2=imaginary part";
    end SpacePhasor;

* * * * *

![image21](Modelica.Electrical.Machines.Interfaces.PartialBasicMachineI.png) [Modelica.Electrical.Machines.Interfaces](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces).PartialBasicMachine
================================================================================================================================================================================================================================

**Partial model for all machines**

Information
-----------

::

Base partial model DC machines:

-   main parts of the icon
-   mechanical shaft
-   mechanical support

Besides the mechanical connector *flange* (i.e., the shaft) the machines
have a second mechanical connector *support*. If *useSupport* = false,
it is assumed that the stator is fixed. Otherwise reaction torque (i.e.,
airGap torque, minus acceleration torque for stator's moment of inertia)
can be measured at *support*. One may also fix the the shaft and let
rotate the stator; parameter Js is only of importance when the stator is
rotating.

::

Extends from
[Machines.Icons.TransientMachine](Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons.TransientMachine).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name    Defa Description
                                                    ult  
  ----------------------------------------- ------- ---- ------------------
  [Inertia](Modelica_SIunits.html#Modelica. Jr           Rotor's moment of
  SIunits.Inertia)                                       inertia [kg.m2]

  Boolean                                   useSupp fals Enable / disable
                                            ort     e    (=fixed stator)
                                                         support

  [Inertia](Modelica_SIunits.html#Modelica. Js           Stator's moment of
  SIunits.Inertia)                                       inertia [kg.m2]

  Boolean                                   useTher fals Enable / disable
                                            malPort e    (=fixed
                                                         temperatures)
                                                         thermal port

  **Losses**                                             

  [FrictionParameters](Modelica_Electrical_ frictio      Friction losses
  Machines_Losses.html#Modelica.Electrical. nParame      
  Machines.Losses.FrictionParameters)       ters         
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Inte flan Shaft
  rfaces.html#Modelica.Mechanics.Rotational.Inte ge   
  rfaces.Flange_a)                                    

  [Flange\_a](Modelica_Mechanics_Rotational_Inte supp Support at which the
  rfaces.html#Modelica.Mechanics.Rotational.Inte ort  reaction torque is
  rfaces.Flange_a)                                    acting
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialBasicMachine "Partial model for all machines"
      extends Machines.Icons.TransientMachine;
      constant Modelica.SIunits.Angle pi=Modelica.Constants.pi;
      parameter Modelica.SIunits.Inertia Jr "Rotor's moment of inertia";
      parameter Boolean useSupport=false "Enable / disable (=fixed stator) support";
      parameter Modelica.SIunits.Inertia Js(start=Jr) "Stator's moment of inertia";
      parameter Boolean useThermalPort=false 
        "Enable / disable (=fixed temperatures) thermal port";
      parameter Machines.Losses.FrictionParameters frictionParameters 
        "Friction losses";
      output Modelica.SIunits.Angle phiMechanical = flange.phi-internalSupport.phi 
        "Mechanical angle of rotor against stator";
      output Modelica.SIunits.AngularVelocity wMechanical(displayUnit="1/min") = der(phiMechanical) 
        "Mechanical angular velocity of rotor against stator";
      output Modelica.SIunits.Torque tauElectrical = inertiaRotor.flange_a.tau 
        "Electromagnetic torque";
      output Modelica.SIunits.Torque tauShaft = -flange.tau "Shaft torque";
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange "Shaft";
      Modelica.Mechanics.Rotational.Components.Inertia inertiaRotor(final J=Jr);
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support if useSupport 
        "Support at which the reaction torque is acting";
      Modelica.Mechanics.Rotational.Components.Inertia inertiaStator(final J=Js);
      Modelica.Mechanics.Rotational.Components.Fixed fixed if  (not useSupport);
      Machines.Losses.Friction friction(final frictionParameters=frictionParameters);
    protected 
      Modelica.Mechanics.Rotational.Interfaces.Support internalSupport;
    equation 
      connect(inertiaRotor.flange_b, flange);
      connect(inertiaStator.flange_b, support);
      connect(internalSupport, fixed.flange);
      connect(internalSupport, inertiaStator.flange_a);
      connect(inertiaRotor.flange_b, friction.flange);
      connect(friction.support, internalSupport);
    end PartialBasicMachine;

* * * * *

![image22](Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachineI.png) [Modelica.Electrical.Machines.Interfaces](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces).PartialBasicInductionMachine
==================================================================================================================================================================================================================================================

**Partial model for induction machine**

Information
-----------

::

Partial model for induction machine models

::

Extends from
[PartialBasicMachine](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicMachine)
(Partial model for all machines).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                         Name  Default Description
  -------------------------------------------- ----- ------- --------------
  Integer                                      p             Number of pole
                                                             pairs
                                                             (Integer)

  [Frequency](Modelica_SIunits.html#Modelica.S fsNom         Nominal
  Iunits.Frequency)                            inal          frequency [Hz]

  Boolean                                      useSu false   Enable /
                                               pport         disable
                                                             (=fixed
                                                             stator)
                                                             support

  [Inertia](Modelica_SIunits.html#Modelica.SIu Js            Stator's
  nits.Inertia)                                              moment of
                                                             inertia
                                                             [kg.m2]

  Boolean                                      useTh false   Enable /
                                               ermal         disable
                                               Port          (=fixed
                                                             temperatures)
                                                             thermal port

  [PartialPowerBalanceInductionMachines](Model power redecla Power balance
  ica_Electrical_Machines_Interfaces_Induction Balan re      
  Machines.html#Modelica.Electrical.Machines.I ce    output  
  nterfaces.InductionMachines.PartialPowerBala       Machine 
  nceInductionMachines)                              s.In... 

  [PartialThermalPortInductionMachines](Modeli therm redecla 
  ca_Electrical_Machines_Interfaces_InductionM alPor re      
  achines.html#Modelica.Electrical.Machines.In t     Machine 
  terfaces.InductionMachines.PartialThermalPor       s.Inter 
  tInductionMachines)                                face... 

  [PartialThermalAmbientInductionMachines](Mod therm redecla 
  elica_Electrical_Machines_Interfaces_Inducti alAmb re      
  onMachines.html#Modelica.Electrical.Machines ient  Machine 
  .Interfaces.InductionMachines.PartialThermal       s.Inter 
  AmbientInductionMachines)                          face... 

  Operational temperatures                                   

  [Temperature](Modelica_SIunits.html#Modelica TsOpe         Operational
  .SIunits.Temperature)                        ratio         temperature of
                                               nal           stator
                                                             resistance [K]

  **Nominal resistances and inductances**                    

  [Resistance](Modelica_SIunits.html#Modelica. Rs            Stator
  SIunits.Resistance)                                        resistance per
                                                             phase at TRef
                                                             [Ohm]

  [Temperature](Modelica_SIunits.html#Modelica TsRef         Reference
  .SIunits.Temperature)                                      temperature of
                                                             stator
                                                             resistance [K]

  [LinearTemperatureCoefficient20](Modelica_El alpha         Temperature
  ectrical_Machines_Thermal.html#Modelica.Elec 20s           coefficient of
  trical.Machines.Thermal.LinearTemperatureCoe               stator
  fficient20)                                                resistance at
                                                             20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelica. Lszer Lssigma Stator zero
  SIunits.Inductance)                          o             sequence
                                                             inductance [H]

  [Inductance](Modelica_SIunits.html#Modelica. Lssig         Stator stray
  SIunits.Inductance)                          ma            inductance per
                                                             phase [H]

  **Losses**                                                 

  [CoreParameters](Modelica_Electrical_Machine stato         Stator core
  s_Losses.html#Modelica.Electrical.Machines.L rCore         losses
  osses.CoreParameters)                        Param         
                                               eters         

  [StrayLoadParameters](Modelica_Electrical_Ma stray         Stray load
  chines_Losses.html#Modelica.Electrical.Machi LoadP         losses
  nes.Losses.StrayLoadParameters)              arame         
                                               ters          
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces.h flan Shaft
  tml#Modelica.Mechanics.Rotational.Interfaces.Flange_a) ge   

  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces.h supp Support at
  tml#Modelica.Mechanics.Rotational.Interfaces.Flange_a) ort  which the
                                                              reaction
                                                              torque is
                                                              acting

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfac plug Positive
  es.html#Modelica.Electrical.MultiPhase.Interfaces.Posi \_sp stator plug
  tivePlug)                                                   

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfac plug Negative
  es.html#Modelica.Electrical.MultiPhase.Interfaces.Nega \_sn stator plug
  tivePlug)                                                   

  [PartialThermalPortInductionMachines](Modelica_Electri ther 
  cal_Machines_Interfaces_InductionMachines.html#Modelic malP 
  a.Electrical.Machines.Interfaces.InductionMachines.Par ort  
  tialThermalPortInductionMachines)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialBasicInductionMachine 
      "Partial model for induction machine"
      final parameter Integer m=3 "Number of phases";
      parameter Integer p(min=1, start=2) "Number of pole pairs (Integer)";
      parameter Modelica.SIunits.Frequency fsNominal(start=50) "Nominal frequency";
      parameter Modelica.SIunits.Temperature TsOperational(start=293.15) 
        "Operational temperature of stator resistance";
      parameter Modelica.SIunits.Resistance Rs(start=0.03) 
        "Stator resistance per phase at TRef";
      parameter Modelica.SIunits.Temperature TsRef(start=293.15) 
        "Reference temperature of stator resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20s(
        start=0) "Temperature coefficient of stator resistance at 20 degC";
      parameter Modelica.SIunits.Inductance Lszero=Lssigma 
        "Stator zero sequence inductance";
      parameter Modelica.SIunits.Inductance Lssigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal)) 
        "Stator stray inductance per phase";
      extends PartialBasicMachine(Jr(start=0.29),
        frictionParameters(wRef(start=2*pi*fsNominal/p)));
      parameter Machines.Losses.CoreParameters statorCoreParameters(
        final m=3,
        VRef(start=100),
        wRef=2*pi*fsNominal) "Stator core losses";
      parameter Machines.Losses.StrayLoadParameters strayLoadParameters(
        IRef(start=100), wRef(start=2*pi*fsNominal/p)) "Stray load losses";
      replaceable output Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines
        powerBalance(
        final powerStator = Machines.SpacePhasors.Functions.activePower(vs, is),
        final powerMechanical = wMechanical*tauShaft,
        final powerInertiaStator = inertiaStator.J*inertiaStator.a*inertiaStator.w,
        final powerInertiaRotor = inertiaRotor.J*inertiaRotor.a*inertiaRotor.w,
        final lossPowerStatorWinding = -sum(rs.heatPort.Q_flow),
        final lossPowerStatorCore = -statorCore.heatPort.Q_flow,
        final lossPowerStrayLoad = -strayLoad.heatPort.Q_flow,
        final lossPowerFriction = -friction.heatPort.Q_flow) "Power balance";
      output Modelica.SIunits.Voltage vs[m] = plug_sp.pin.v - plug_sn.pin.v 
        "Stator instantaneous voltages";
      output Modelica.SIunits.Current is[m] = plug_sp.pin.i 
        "Stator instantaneous currents";
      output Modelica.SIunits.Current i_0_s( stateSelect=StateSelect.prefer) = spacePhasorS.zero.i 
        "Stator zero-sequence current";
    // to be defined in model that extends from this partial (since airgap isn't included here)
      input Modelica.SIunits.Current idq_ss[2] 
        "Stator space phasor current / stator fixed frame";
      input Modelica.SIunits.Current idq_sr[2](each stateSelect=StateSelect.prefer) 
        "Stator space phasor current / rotor fixed frame";
      input Modelica.SIunits.Current idq_rs[2] 
        "Rotor space phasor current / stator fixed frame";
      input Modelica.SIunits.Current idq_rr[2](each stateSelect=StateSelect.prefer) 
        "Rotor space phasor current / rotor fixed frame";
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_sp(final m=m) 
        "Positive stator plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_sn(final m=m) 
        "Negative stator plug";
      Modelica.Electrical.MultiPhase.Basic.Resistor rs(
        final m=m,
        final R=fill(Rs, m),
        final T_ref=fill(TsRef, m),
        final alpha=fill(Machines.Thermal.convertAlpha(alpha20s, TsRef), m),
        final useHeatPort=true,
        final T=fill(TsRef,m));
      Machines.BasicMachines.Components.Inductor lssigma(final L=fill(Lssigma, 2));
      Modelica.Electrical.Analog.Basic.Inductor lszero(final L=Lszero);
      Machines.Losses.InductionMachines.Core statorCore(final coreParameters=statorCoreParameters);
      Machines.SpacePhasors.Components.SpacePhasor spacePhasorS(final turnsRatio=1);
      Machines.Losses.InductionMachines.StrayLoad strayLoad(final strayLoadParameters=
            strayLoadParameters);
      replaceable Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines
        thermalPort(final m=m) if useThermalPort;
      replaceable Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines
        thermalAmbient(
        final useTemperatureInputs=false, final Ts=TsOperational,
        final m=m) if not useThermalPort;
    protected 
      replaceable Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines
        internalThermalPort(final m=m);
    equation 
      connect(spacePhasorS.plug_n, plug_sn);
      connect(thermalPort, internalThermalPort);
      connect(thermalAmbient.thermalPort, internalThermalPort);
      connect(strayLoad.plug_n, rs.plug_p);
      connect(strayLoad.plug_p, plug_sp);
      connect(strayLoad.flange, inertiaRotor.flange_b);
      connect(strayLoad.support, internalSupport);
      connect(spacePhasorS.plug_p, rs.plug_n);
      connect(spacePhasorS.zero,lszero. p);
      connect(lszero.n, spacePhasorS.ground);
      connect(spacePhasorS.spacePhasor, lssigma.spacePhasor_a);
      connect(statorCore.spacePhasor, lssigma.spacePhasor_a);
      connect(statorCore.heatPort, internalThermalPort.heatPortStatorCore);
      connect(strayLoad.heatPort, internalThermalPort.heatPortStrayLoad);
      connect(rs.heatPort, internalThermalPort.heatPortStatorWinding);
      connect(friction.heatPort, internalThermalPort.heatPortFriction);
    end PartialBasicInductionMachine;

* * * * *

![image23](Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachineI.png) [Modelica.Electrical.Machines.Interfaces](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces).PartialBasicDCMachine
====================================================================================================================================================================================================================================

**Partial model for DC machine**

Information
-----------

::

Partial model for DC machine models.

::

Extends from
[PartialBasicMachine](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicMachine)
(Partial model for all machines).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                        Name  Default  Description
  ------------------------------------------- ----- -------- --------------
  Boolean                                     useSu false    Enable /
                                              pport          disable
                                                             (=fixed
                                                             stator)
                                                             support

  [Inertia](Modelica_SIunits.html#Modelica.SI Js             Stator's
  units.Inertia)                                             moment of
                                                             inertia
                                                             [kg.m2]

  Boolean                                     useTh false    Enable /
                                              ermal          disable
                                              Port           (=fixed
                                                             temperatures)
                                                             thermal port

  [PartialPowerBalanceDCMachines](Modelica_El power redeclar Power balance
  ectrical_Machines_Interfaces_DCMachines.htm Balan e        
  l#Modelica.Electrical.Machines.Interfaces.D ce    output   
  CMachines.PartialPowerBalanceDCMachines)          Machines 
                                                    .In...   

  [PartialThermalPortDCMachines](Modelica_Ele therm redeclar 
  ctrical_Machines_Interfaces_DCMachines.html alPor e        
  #Modelica.Electrical.Machines.Interfaces.DC t     Machines 
  Machines.PartialThermalPortDCMachines)            .Interfa 
                                                    ce...    

  [PartialThermalAmbientDCMachines](Modelica_ therm redeclar 
  Electrical_Machines_Interfaces_DCMachines.h alAmb e        
  tml#Modelica.Electrical.Machines.Interfaces ient  Machines 
  .DCMachines.PartialThermalAmbientDCMachines       .Interfa 
  )                                                 ce...    

  Operational temperatures                                   

  [Temperature](Modelica_SIunits.html#Modelic TaOpe          Operational
  a.SIunits.Temperature)                      ratio          armature
                                              nal            temperature
                                                             [K]

  **Nominal parameters**                                     

  [Voltage](Modelica_SIunits.html#Modelica.SI VaNom          Nominal
  units.Voltage)                              inal           armature
                                                             voltage [V]

  [Current](Modelica_SIunits.html#Modelica.SI IaNom          Nominal
  units.Current)                              inal           armature
                                                             current
                                                             (\>0..Motor,
                                                             <0..Generator)
                                                             [A]

  [AngularVelocity](Modelica_SIunits.html#Mod wNomi          Nominal speed
  elica.SIunits.AngularVelocity)              nal            [rad/s]

  [Temperature](Modelica_SIunits.html#Modelic TaNom          Nominal
  a.SIunits.Temperature)                      inal           armature
                                                             temperature
                                                             [K]

  **Nominal resistances and inductances**                    

  [Resistance](Modelica_SIunits.html#Modelica Ra             Armature
  .SIunits.Resistance)                                       resistance at
                                                             TRef [Ohm]

  [Temperature](Modelica_SIunits.html#Modelic TaRef          Reference
  a.SIunits.Temperature)                                     temperature of
                                                             armature
                                                             resistance [K]

  [LinearTemperatureCoefficient20](Modelica_E alpha          Temperature
  lectrical_Machines_Thermal.html#Modelica.El 20a            coefficient of
  ectrical.Machines.Thermal.LinearTemperature                armature
  Coefficient20)                                             resistance
                                                             [1/K]

  [Inductance](Modelica_SIunits.html#Modelica La             Armature
  .SIunits.Inductance)                                       inductance [H]

  **Losses**                                                 

  [CoreParameters](Modelica_Electrical_Machin coreP          Armature core
  es_Losses.html#Modelica.Electrical.Machines arame          losses
  .Losses.CoreParameters)                     ters           

  [StrayLoadParameters](Modelica_Electrical_M stray          Stray load
  achines_Losses.html#Modelica.Electrical.Mac LoadP          losses
  hines.Losses.StrayLoadParameters)           arame          
                                              ters           

  [BrushParameters](Modelica_Electrical_Machi brush          Brush losses
  nes_Losses.html#Modelica.Electrical.Machine Param          
  s.Losses.BrushParameters)                   eters          
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ---------------
  [Flange\_a](Modelica_Mechanics_Rotational_Interface flan Shaft
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla ge   
  nge_a)                                                   

  [Flange\_a](Modelica_Mechanics_Rotational_Interface supp Support at
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla ort  which the
  nge_a)                                                   reaction torque
                                                           is acting

  [PositivePin](Modelica_Electrical_Analog_Interfaces pin\ Positive
  .html#Modelica.Electrical.Analog.Interfaces.Positiv _ap  armature pin
  ePin)                                                    

  [NegativePin](Modelica_Electrical_Analog_Interfaces pin\ Negative
  .html#Modelica.Electrical.Analog.Interfaces.Negativ _an  armature pin
  ePin)                                                    

  [PartialThermalPortDCMachines](Modelica_Electrical_ ther 
  Machines_Interfaces_DCMachines.html#Modelica.Electr malP 
  ical.Machines.Interfaces.DCMachines.PartialThermalP ort  
  ortDCMachines)                                           
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialBasicDCMachine "Partial model for DC machine"
      parameter Modelica.SIunits.Temperature TaOperational(start=293.15) 
        "Operational armature temperature";
      parameter Modelica.SIunits.Voltage VaNominal(start=100) 
        "Nominal armature voltage";
      parameter Modelica.SIunits.Current IaNominal(start=100) 
        "Nominal armature current (>0..Motor, <0..Generator)";
      parameter Modelica.SIunits.AngularVelocity wNominal(displayUnit="1/min", start=1425*2*pi/60) 
        "Nominal speed";
      parameter Modelica.SIunits.Temperature TaNominal(start=293.15) 
        "Nominal armature temperature";
      parameter Modelica.SIunits.Resistance Ra(start=0.05) 
        "Armature resistance at TRef";
      parameter Modelica.SIunits.Temperature TaRef(start=293.15) 
        "Reference temperature of armature resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20a(
         start=0) "Temperature coefficient of armature resistance";
      parameter Modelica.SIunits.Inductance La(start=0.0015) "Armature inductance";
      extends PartialBasicMachine(Jr(start=0.15),
        frictionParameters(wRef=wNominal));
      parameter Machines.Losses.CoreParameters coreParameters(final m=1,
        VRef=ViNominal, wRef=wNominal) "Armature core losses";
      parameter Machines.Losses.StrayLoadParameters strayLoadParameters(
        IRef=IaNominal, wRef=wNominal) "Stray load losses";
      parameter Machines.Losses.BrushParameters brushParameters(
        ILinear=0.01*IaNominal) "Brush losses";
      replaceable output Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines
        powerBalance(
        final powerArmature = va*ia,
        final powerMechanical = wMechanical*tauShaft,
        final powerInertiaStator = inertiaStator.J*inertiaStator.a*inertiaStator.w,
        final powerInertiaRotor = inertiaRotor.J*inertiaRotor.a*inertiaRotor.w,
        final lossPowerArmature = -ra.heatPort.Q_flow,
        final lossPowerCore = -core.heatPort.Q_flow,
        final lossPowerStrayLoad = -strayLoad.heatPort.Q_flow,
        final lossPowerFriction = -friction.heatPort.Q_flow,
        final lossPowerBrush = -brush.heatPort.Q_flow) "Power balance";
      output Modelica.SIunits.Voltage va = pin_ap.v-pin_an.v "Armature voltage";
      output Modelica.SIunits.Current ia = pin_ap.i "Armature current";
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ap 
        "Positive armature pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_an 
        "Negative armature pin";
      Modelica.Electrical.Analog.Basic.Resistor ra(
        final R=Ra,
        final T_ref=TaRef,
        final alpha=Machines.Thermal.convertAlpha(alpha20a, TaRef),
        final useHeatPort=true,
        final T=TaRef);
      Machines.BasicMachines.Components.InductorDC la(final L=La,
        final quasiStationary = quasiStationary);
      Machines.Losses.DCMachines.Brush brush(final brushParameters=brushParameters);
      Machines.Losses.DCMachines.Core core(final coreParameters=coreParameters);
      Machines.Losses.DCMachines.StrayLoad strayLoad(final strayLoadParameters=strayLoadParameters);
      replaceable Machines.Interfaces.DCMachines.PartialThermalPortDCMachines
        thermalPort if useThermalPort;
      replaceable Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines
        thermalAmbient(
        final useTemperatureInputs=false, final Ta=TaOperational) if not useThermalPort;
    protected 
      constant Boolean quasiStationary=false "No electrical transients if true";
      parameter Modelica.SIunits.Voltage ViNominal "Nominal induced Voltage";
      parameter Modelica.SIunits.MagneticFlux psi_eNominal "Nominal magnetic flux";
      parameter Real turnsRatio = ViNominal/(wNominal*psi_eNominal) 
        "Ratio of armature turns over number of turns of the excitation winding";
      replaceable Machines.Interfaces.DCMachines.PartialThermalPortDCMachines
        internalThermalPort;
    equation 
      assert(ViNominal > Modelica.Constants.eps, "VaNominal has to be > (Ra[+Rse])*IaNominal");
      connect(la.p,ra. n);
      connect(thermalPort, internalThermalPort);
      connect(thermalAmbient.thermalPort, internalThermalPort);
      connect(brush.n, pin_an);
      connect(pin_ap, strayLoad.p);
      connect(strayLoad.n, ra.p);
      connect(strayLoad.flange, inertiaRotor.flange_b);
      connect(strayLoad.support, internalSupport);
      connect(la.p, core.p);
      connect(core.n, brush.p);
      connect(core.heatPort, internalThermalPort.heatPortCore);
      connect(brush.heatPort, internalThermalPort.heatPortBrush);
      connect(strayLoad.heatPort, internalThermalPort.heatPortStrayLoad);
      connect(friction.heatPort, internalThermalPort.heatPortFriction);
      connect(ra.heatPort, internalThermalPort.heatPortArmature);
    end PartialBasicDCMachine;

* * * * *

![image24](Modelica.Electrical.Machines.Interfaces.PartialBasicTransformerI.png) [Modelica.Electrical.Machines.Interfaces](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces).PartialBasicTransformer
========================================================================================================================================================================================================================================

**Partial model of threephase transformer**

Information
-----------

::

Partialmodel of a threephase transformer, containing primary and
secondary resistances and stray inductances, as well as the iron core.
Circuit layout (vector group) of primary and secondary windings have to
be defined. **Default values for transformer's parameters (a realistic
example) are:**

  ---------------------------------- ------ ------------------------------
  turns ratio n                      1      

  nominal frequency fNominal         50     Hz

  nominal voltage per phase          100    V RMS

  nominal current per phase          100    A RMS

  nominal apparent power             30     kVA

  primary resistance R1              0.005  Ohm per phase at reference
                                            temperature

  reference temperature T1Ref        20     °C

  temperature coefficient alpha20\_1 0      1/K

  primary stray inductance L1sigma   78E-6  H per phase

  secondary resistance R2            0.005  Ohm per phase at reference
                                            temperature

  reference temperature T2Ref        20     °C

  temperature coefficient alpha20\_2 0      1/K

  secondary stray inductance L2sigma 78E-6  H per phase

  operational temperature            20     °C
  T1Operational                             

  operational temperature            20     °C
  T2Operational                             

  These values give the operational         
  parameters:                               

  nominal voltage drop               0.05   p.u.

  nominal copper losses              300    W
  ---------------------------------- ------ ------------------------------

::

Extends from
[Machines.Icons.TransientTransformer](Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons.TransientTransformer).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                       Name  Def Description
                                                   aul 
                                                   t   
  ------------------------------------------ ----- --- ---------------------
  Real                                       n         Ratio primary voltage
                                                       (line-to-line) /
                                                       secondary voltage
                                                       (line-to-line)

  Boolean                                    useTh fal Enable / disable
                                             ermal se  (=fixed temperatures)
                                             Port      thermal port

  Operational temperatures                             

  [Temperature](Modelica_SIunits.html#Modeli T1Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       primary resistance
                                                       [K]

  [Temperature](Modelica_SIunits.html#Modeli T2Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       secondary resistance
                                                       [K]

  **Nominal resistances and inductances**              

  [Resistance](Modelica_SIunits.html#Modelic R1        Primary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T1Ref     Reference temperature
  ca.SIunits.Temperature)                              of primary resistance
                                                       [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_1     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           primary resistance at
  ureCoefficient20)                                    20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L1sig     Primary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]

  [Resistance](Modelica_SIunits.html#Modelic R2        Secondary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T2Ref     Reference temperature
  ca.SIunits.Temperature)                              of secondary
                                                       resistance [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_2     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           secondary resistance
  ureCoefficient20)                                    at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L2sig     Secondary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name   Descrip
                                                                   tion
  --------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces. plug1  Primary
  html#Modelica.Electrical.MultiPhase.Interfaces.PositivePl        plug
  ug)                                                              

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces. plug2  Seconda
  html#Modelica.Electrical.MultiPhase.Interfaces.NegativePl        ry
  ug)                                                              plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Int therma 
  erfaces.html#Modelica.Electrical.Machines.Interfaces.Ther lPort  
  malPortTransformer)                                              
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialBasicTransformer 
      "Partial model of threephase transformer"
      extends Machines.Icons.TransientTransformer;
      final parameter Integer m(min=1) = 3 "Number of phases";
      constant String VectorGroup="Yy00";
      parameter Real n(start=1) 
        "Ratio primary voltage (line-to-line) / secondary voltage (line-to-line)";
      parameter Modelica.SIunits.Resistance R1(start=5E-3/(if C1=="D" then 1 else 3)) 
        "Primary resistance per phase at TRef";
      parameter Modelica.SIunits.Temperature T1Ref(start=293.15) 
        "Reference temperature of primary resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20_1(
                  start=0) 
        "Temperature coefficient of primary resistance at 20 degC";
      parameter Modelica.SIunits.Inductance L1sigma(start=78E-6/(if C1=="D" then 1 else 3)) 
        "Primary stray inductance per phase";
      parameter Modelica.SIunits.Resistance R2(start=5E-3/(if C2=="d" then 1 else 3)) 
        "Secondary resistance per phase at TRef";
      parameter Modelica.SIunits.Temperature T2Ref(start=293.15) 
        "Reference temperature of secondary resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20_2(start=0) 
        "Temperature coefficient of secondary resistance at 20 degC";
      parameter Modelica.SIunits.Inductance L2sigma(start=78E-6/(if C2=="d" then 1 else 3)) 
        "Secondary stray inductance per phase";
      parameter Boolean useThermalPort=false 
        "Enable / disable (=fixed temperatures) thermal port";
      parameter Modelica.SIunits.Temperature T1Operational(start=293.15) 
        "Operational temperature of primary resistance";
      parameter Modelica.SIunits.Temperature T2Operational(start=293.15) 
        "Operational temperature of secondary resistance";
      output Machines.Interfaces.PowerBalanceTransformer powerBalance(
        final power1 = Machines.SpacePhasors.Functions.activePower(v1, +i1),
        final power2 = Machines.SpacePhasors.Functions.activePower(v2, -i2),
        final lossPower1 = -sum(r1.heatPort.Q_flow),
        final lossPower2 = -sum(r2.heatPort.Q_flow),
        final lossPowerCore = 0) "Power balance";
      output Modelica.SIunits.Voltage v1[m]=plug1.pin.v "Primary voltage";
      output Modelica.SIunits.Current i1[m]=plug1.pin.i "Primary current";
      output Modelica.SIunits.Voltage v2[m]=plug2.pin.v "Secondary voltage";
      output Modelica.SIunits.Current i2[m]=plug2.pin.i "Secondary current";
    protected 
      constant String C1 = Modelica.Utilities.Strings.substring(VectorGroup,1,1);
      constant String C2 = Modelica.Utilities.Strings.substring(VectorGroup,2,2);
      parameter Real ni=n*(if C2=="z" then sqrt(3) else 2)*(if C2=="d" then 1 else sqrt(3))/(if C1=="D" then 1 else sqrt(3));
    public 
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug1(final m=m) 
        "Primary plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug2(final m=m) 
        "Secondary plug";
      Modelica.Electrical.MultiPhase.Basic.Resistor r1(
        final m=m,
        final R=fill(R1,m),
        final T_ref=fill(T1Ref,m),
        final alpha=fill(Machines.Thermal.convertAlpha(alpha20_1, T1Ref), m),
        final useHeatPort=true,
        final T=fill(T1Ref,m));
      Modelica.Electrical.MultiPhase.Basic.Inductor l1sigma(final m=m, final L=fill(L1sigma, m));
      Modelica.Electrical.MultiPhase.Basic.Resistor r2(
        final m=m,
        final R=fill(R2,m),
        final T_ref=fill(T2Ref,m),
        final alpha=fill(Machines.Thermal.convertAlpha(alpha20_2, T2Ref), m),
        final useHeatPort=true,
        final T=fill(T2Ref,m));
      Modelica.Electrical.MultiPhase.Basic.Inductor l2sigma(final m=m, final L=fill(L2sigma, m));
      Machines.BasicMachines.Components.IdealCore core(
        final m=m,
        final n12=ni,
        final n13=ni);
      Machines.Interfaces.ThermalPortTransformer thermalPort(final m=m) if useThermalPort;
     Machines.Thermal.ThermalAmbientTransformer thermalAmbient(final useTemperatureInputs=false,
        final T1=T1Operational,
        final T2=T2Operational,
        final m=m) if not useThermalPort;
    protected 
      Machines.Interfaces.ThermalPortTransformer internalThermalPort(final m=m);
    equation 
      connect(r1.plug_n,l1sigma.plug_p);
      connect(l2sigma.plug_n,r2.plug_p);
      connect(plug1, r1.plug_p);
      connect(r2.plug_n, plug2);
      connect(thermalPort, internalThermalPort);
      connect(thermalAmbient.thermalPort, internalThermalPort);
      connect(r1.heatPort, internalThermalPort.heatPort1);
      connect(r2.heatPort, internalThermalPort.heatPort2);
    end PartialBasicTransformer;

* * * * *

![image25](Modelica.Electrical.Machines.Interfaces.ThermalPortTransformerI.png) [Modelica.Electrical.Machines.Interfaces](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces).ThermalPortTransformer
======================================================================================================================================================================================================================================

**Thermal port of transformers**

Information
-----------

::

Thermal port for transformers

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            number of phases

Contents
--------

  ------------------------------------------------------------------------
  Type                                             Name   Description
  ------------------------------------------------ ------ ----------------
  Integer                                          m      number of phases

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Inte heatPo Heat port of
  rfaces.html#Modelica.Thermal.HeatTransfer.Interf rt1[m] primary windings
  aces.HeatPort_a)                                        

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Inte heatPo Heat port of
  rfaces.html#Modelica.Thermal.HeatTransfer.Interf rt2[m] secondary
  aces.HeatPort_a)                                        windings

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Inte heatPo Heat port of
  rfaces.html#Modelica.Thermal.HeatTransfer.Interf rtCore (optional) core
  aces.HeatPort_a)                                        losses
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector ThermalPortTransformer "Thermal port of transformers"
      parameter Integer m=3 "number of phases";

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort1[m] 
        "Heat port of primary windings";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort2[m] 
        "Heat port of secondary windings";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortCore 
        "Heat port of (optional) core losses";
    end ThermalPortTransformer;

* * * * *

![image26](Modelica.Electrical.Machines.Interfaces.PowerBalanceTransformerI.png) [Modelica.Electrical.Machines.Interfaces](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces).PowerBalanceTransformer
========================================================================================================================================================================================================================================

**Power balance of transformers**

Information
-----------

::

Power balance of transformers.

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Modelica definition
-------------------

    record PowerBalanceTransformer "Power balance of transformers"
      extends Modelica.Icons.Record;
      Modelica.SIunits.Power power1 "Primary power";
      Modelica.SIunits.Power power2 "Secondary power";
      Modelica.SIunits.Power lossPowerTotal = lossPower1 + lossPower2 + lossPowerCore 
        "Total loss power";
      Modelica.SIunits.Power lossPower1 "Primary copper losses";
      Modelica.SIunits.Power lossPower2 "Secondary copper losses";
      Modelica.SIunits.Power lossPowerCore "Core losses";
    end PowerBalanceTransformer;

* * * * *

![image27](Modelica.Electrical.Machines.Interfaces.FlangeSupportI.png) [Modelica.Electrical.Machines.Interfaces](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces).FlangeSupport
====================================================================================================================================================================================================================

**Shaft and support**

Information
-----------

::

This partial model defines shaft and housing connector for loss models.
Positive torque `tau` acts as braking torque.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- -----------
  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces.h flang Shaft end
  tml#Modelica.Mechanics.Rotational.Interfaces.Flange_a) e     

  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces.h suppo Housing and
  tml#Modelica.Mechanics.Rotational.Interfaces.Flange_a) rt    support
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model FlangeSupport "Shaft and support"

      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange "Shaft end";
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support 
        "Housing and support";

      Modelica.SIunits.Angle phi "Angle between shaft and support";
      Modelica.SIunits.Torque tau "Torque";
      Modelica.SIunits.AngularVelocity w 
        "Relative angular velocity of flange and support";
    equation 
      phi = flange.phi - support.phi;
      w = der(phi);
      tau = -flange.tau;
      tau = support.tau;
    end FlangeSupport;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:13 2010.
