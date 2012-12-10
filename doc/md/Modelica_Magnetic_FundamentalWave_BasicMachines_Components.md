% Modelica.Magnetic.FundamentalWave.BasicMachines.Components
% 
% 

[Modelica.Magnetic.FundamentalWave.BasicMachines](Modelica_Magnetic_FundamentalWave_BasicMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines).Components
==================================================================================================================================================================

**Components specially for electric machines**

Information
-----------

::

This package contains components for [asynchronous induction
machines](Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines)
and [synchronous induction
machines](Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines).

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image5](Modelica.Magnetic.FundamentalWave.BasicMachines. Symmetric
  Components.SinglePhaseWindingS.png)                        winding model
  [SinglePhaseWinding](Modelica_Magnetic_FundamentalWave_Bas coupling
  icMachines_Components.html#Modelica.Magnetic.FundamentalWa electrical
  ve.BasicMachines.Components.SinglePhaseWinding)            and magnetic
                                                             domain

  ![image6](Modelica.Magnetic.FundamentalWave.BasicMachines. Symmetric
  Components.SymmetricMultiPhaseWindingS.png)                winding model
  [SymmetricMultiPhaseWinding](Modelica_Magnetic_Fundamental coupling
  Wave_BasicMachines_Components.html#Modelica.Magnetic.Funda electrical
  mentalWave.BasicMachines.Components.SymmetricMultiPhaseWin and magnetic
  ding)                                                      domain

  ![image7](Modelica.Magnetic.FundamentalWave.BasicMachines. Air gap model
  Components.RotorSaliencyAirGapS.png)                       with rotor
  [RotorSaliencyAirGap](Modelica_Magnetic_FundamentalWave_Ba saliency
  sicMachines_Components.html#Modelica.Magnetic.FundamentalW 
  ave.BasicMachines.Components.RotorSaliencyAirGap)          

  ![image8](Modelica.Magnetic.FundamentalWave.BasicMachines. Symmetrical
  Components.SymmetricMultiPhaseCageWindingS.png)            rotor cage
  [SymmetricMultiPhaseCageWinding](Modelica_Magnetic_Fundame 
  ntalWave_BasicMachines_Components.html#Modelica.Magnetic.F 
  undamentalWave.BasicMachines.Components.SymmetricMultiPhas 
  eCageWinding)                                              

  ![image9](Modelica.Magnetic.FundamentalWave.BasicMachines. Rotor cage
  Components.SymmetricMultiPhaseCageWindingS.png)            with saliency
  [SaliencyCageWinding](Modelica_Magnetic_FundamentalWave_Ba in d- and
  sicMachines_Components.html#Modelica.Magnetic.FundamentalW q-axis
  ave.BasicMachines.Components.SaliencyCageWinding)          
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWindingI.png) [Modelica.Magnetic.FundamentalWave.BasicMachines.Components](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components).SinglePhaseWinding
==========================================================================================================================================================================================================================================================================================================

**Symmetric winding model coupling electrical and magnetic domain**

Information
-----------

::

The single phase winding consists of a
[resistor](Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.Resistor),
a symmetrical [stray
inductor](Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.Inductor)
and a [single phase electro magnetic
coupling](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter).

### See also

[SymmetricMultiPhaseWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding),
[SymmetricMultiPhaseCageWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseCageWinding),
[SaliencyCageWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SaliencyCageWinding)
[RotorSaliencyAirGap](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.RotorSaliencyAirGap)

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                        Name  Def Description
                                                    aul 
                                                    t   
  ------------------------------------------- ----- --- -------------------
  Boolean                                     useHe fal Enable / disable
                                              atPor se  (=fixed
                                              t         temperatures)
                                                        thermal port

  [Resistance](Modelica_SIunits.html#Modelica RRef      Winding resistance
  .SIunits.Resistance)                                  per phase at TRef
                                                        [Ohm]

  [Temperature](Modelica_SIunits.html#Modelic TRef      Reference
  a.SIunits.Temperature)                                temperature of
                                                        winding [K]

  [LinearTemperatureCoefficient20](Modelica_E alpha     Temperature
  lectrical_Machines_Thermal.html#Modelica.El 20        coefficient of
  ectrical.Machines.Thermal.LinearTemperature           winding at 20 degC
  Coefficient20)                                        [1/K]

  [Temperature](Modelica_SIunits.html#Modelic TOper     Operational
  a.SIunits.Temperature)                      ation     temperature of
                                              al        winding [K]

  [Inductance](Modelica_SIunits.html#Modelica Lsigm     Winding stray
  .SIunits.Inductance)                        a         inductance per
                                                        phase [H]

  Real                                        effec 1   Effective number of
                                              tiveT     turns per phase
                                              urns      

  [Angle](Modelica_SIunits.html#Modelica.SIun orien     Orientation of the
  its.Angle)                                  tatio     resulting
                                              n         fundamental wave
                                                        field phasor [rad]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name    Description
  ---------------------------------------------------- ------- ------------
  [PositivePin](Modelica_Electrical_Analog_Interfaces. pin\_p  Positive pin
  html#Modelica.Electrical.Analog.Interfaces.PositiveP         
  in)                                                          

  [NegativePin](Modelica_Electrical_Analog_Interfaces. pin\_n  Negative pin
  html#Modelica.Electrical.Analog.Interfaces.NegativeP         
  in)                                                          

  [NegativeMagneticPort](Modelica_Magnetic_Fundamental port\_n Negative
  Wave_Interfaces.html#Modelica.Magnetic.FundamentalWa         complex
  ve.Interfaces.NegativeMagneticPort)                          magnetic
                                                               port

  [PositiveMagneticPort](Modelica_Magnetic_Fundamental port\_p Positive
  Wave_Interfaces.html#Modelica.Magnetic.FundamentalWa         complex
  ve.Interfaces.PositiveMagneticPort)                          magnetic
                                                               port

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfac heatPor Heat ports
  es.html#Modelica.Thermal.HeatTransfer.Interfaces.Hea tWindin of winding
  tPort_a)                                             g       resistor
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SinglePhaseWinding 
      "Symmetric winding model coupling electrical and magnetic domain"

      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p "Positive pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n "Negative pin";

      Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort
        port_n "Negative complex magnetic port";
      Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort
        port_p "Positive complex magnetic port";

      parameter Boolean useHeatPort=false 
        "Enable / disable (=fixed temperatures) thermal port";

      parameter Modelica.SIunits.Resistance RRef 
        "Winding resistance per phase at TRef";
      parameter Modelica.SIunits.Temperature TRef(start=293.15) 
        "Reference temperature of winding";
      parameter Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20
        alpha20(start=0) "Temperature coefficient of winding at 20 degC";
      final parameter Modelica.SIunits.LinearTemperatureCoefficient alphaRef=
        Modelica.Electrical.Machines.Thermal.convertAlpha(alpha20,TRef,293.15);
      parameter Modelica.SIunits.Temperature TOperational(start=293.15) 
        "Operational temperature of winding";
      parameter Modelica.SIunits.Inductance Lsigma 
        "Winding stray inductance per phase";
      parameter Real effectiveTurns = 1 "Effective number of turns per phase";
      parameter Modelica.SIunits.Angle orientation 
        "Orientation of the resulting fundamental wave field phasor";

      Modelica.Electrical.Analog.Basic.Resistor resistor(
        final useHeatPort=useHeatPort,
        final R=RRef,
        final T_ref=TRef,
        final alpha=alphaRef,
        final T=TOperational);
      Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter
        electroMagneticConverter(
        final effectiveTurns=effectiveTurns,
        final orientation=orientation);
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortWinding if 
        useHeatPort "Heat ports of winding resistor";
      Modelica.Magnetic.FundamentalWave.Components.Reluctance reluctance(
        final R_m(d=effectiveTurns^2/Lsigma, q=effectiveTurns^2/Lsigma));
    equation 
      connect(pin_p, resistor.p);
      connect(electroMagneticConverter.pin_n, pin_n);
      connect(electroMagneticConverter.port_p, port_p);
      connect(electroMagneticConverter.port_n, port_n);
      connect(heatPortWinding, resistor.heatPort);
      connect(resistor.n, electroMagneticConverter.pin_p);
      connect(electroMagneticConverter.port_p, reluctance.port_p);
      connect(electroMagneticConverter.port_n, reluctance.port_n);

    end SinglePhaseWinding;

* * * * *

![image11](Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWindingI.png) [Modelica.Magnetic.FundamentalWave.BasicMachines.Components](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components).SymmetricMultiPhaseWinding
==========================================================================================================================================================================================================================================================================================================================

**Symmetric winding model coupling electrical and magnetic domain**

Information
-----------

::

The symmetrical multi phase winding consists of a symmetrical winding
[resistor](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.Resistor),
a
[zero](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.MutualInductor)
and [stray
inductor](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.Inductor)
as well as a symmetrical [multi phase electro magnetic
coupling](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter)
and a [core
loss](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.EddyCurrent)
model including heat
[port](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a).

### See also

[SinglePhaseWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding),
[SymmetricMultiPhaseCageWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseCageWinding),
[SaliencyCageWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SaliencyCageWinding)
[RotorSaliencyAirGap](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.RotorSaliencyAirGap)

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                          Name  Def Description
                                                      aul 
                                                      t   
  --------------------------------------------- ----- --- -----------------
  Integer                                       m     3   Number of phases

  Boolean                                       useHe fal Enable / disable
                                                atPor se  (=fixed
                                                t         temperatures)
                                                          thermal port

  [Resistance](Modelica_SIunits.html#Modelica.S RRef      Winding
  Iunits.Resistance)                                      resistance per
                                                          phase at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Modelica. TRef      Reference
  SIunits.Temperature)                                    temperature of
                                                          winding [K]

  [LinearTemperatureCoefficient20](Modelica_Ele alpha     Temperature
  ctrical_Machines_Thermal.html#Modelica.Electr 20        coefficient of
  ical.Machines.Thermal.LinearTemperatureCoeffi           winding at 20
  cient20)                                                degC [1/K]

  [Temperature](Modelica_SIunits.html#Modelica. TOper     Operational
  SIunits.Temperature)                          ation     temperature of
                                                al        winding [K]

  [Inductance](Modelica_SIunits.html#Modelica.S Lsigm     Winding stray
  Iunits.Inductance)                            a         inductance per
                                                          phase [H]

  [Inductance](Modelica_SIunits.html#Modelica.S Lzero     Zero sequence
  Iunits.Inductance)                                      inductance of
                                                          winding [H]

  Real                                          effec 1   Effective number
                                                tiveT     of turns per
                                                urns      phase

  [Conductance](Modelica_SIunits.html#Modelica. GcRef     Electrical
  SIunits.Conductance)                                    reference core
                                                          loss reluctance
                                                          [S]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name     Description
  --------------------------------------------------- -------- ------------
  [PositivePlug](Modelica_Electrical_MultiPhase_Inter plug\_p  Positive
  faces.html#Modelica.Electrical.MultiPhase.Interface          plug
  s.PositivePlug)                                              

  [NegativePlug](Modelica_Electrical_MultiPhase_Inter plug\_n  Negative
  faces.html#Modelica.Electrical.MultiPhase.Interface          plug
  s.NegativePlug)                                              

  [NegativeMagneticPort](Modelica_Magnetic_Fundamenta port\_n  Negative
  lWave_Interfaces.html#Modelica.Magnetic.Fundamental          complex
  Wave.Interfaces.NegativeMagneticPort)                        magnetic
                                                               port

  [PositiveMagneticPort](Modelica_Magnetic_Fundamenta port\_p  Positive
  lWave_Interfaces.html#Modelica.Magnetic.Fundamental          complex
  Wave.Interfaces.PositiveMagneticPort)                        magnetic
                                                               port

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfa heatPort Heat ports
  ces.html#Modelica.Thermal.HeatTransfer.Interfaces.H Winding[ of winding
  eatPort_a)                                          m]       resistors

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfa heatPort Heat ports
  ces.html#Modelica.Thermal.HeatTransfer.Interfaces.H Core     of winding
  eatPort_a)                                                   resistor
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SymmetricMultiPhaseWinding 
      "Symmetric winding model coupling electrical and magnetic domain"

      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(
        final m=m) "Positive plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(
        final m=m) "Negative plug";
      Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort
        port_n "Negative complex magnetic port";
      Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort
        port_p "Positive complex magnetic port";

      parameter Integer m =  3 "Number of phases";
      parameter Boolean useHeatPort=false 
        "Enable / disable (=fixed temperatures) thermal port";

      // Resistor model
      parameter Modelica.SIunits.Resistance RRef 
        "Winding resistance per phase at TRef";
      parameter Modelica.SIunits.Temperature TRef(start=293.15) 
        "Reference temperature of winding";
      parameter Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20
        alpha20(start=0) "Temperature coefficient of winding at 20 degC";
      final parameter Modelica.SIunits.LinearTemperatureCoefficient alphaRef=
        Modelica.Electrical.Machines.Thermal.convertAlpha(alpha20,TRef,293.15);
      parameter Modelica.SIunits.Temperature TOperational(start=293.15) 
        "Operational temperature of winding";

      parameter Modelica.SIunits.Inductance Lsigma 
        "Winding stray inductance per phase";
      parameter Modelica.SIunits.Inductance Lzero 
        "Zero sequence inductance of winding";
      parameter Real effectiveTurns = 1 "Effective number of turns per phase";

      parameter Modelica.SIunits.Conductance GcRef 
        "Electrical reference core loss reluctance";

      Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter
        electroMagneticConverter(
        final m=m,
        final effectiveTurns=fill(effectiveTurns, m),
        final orientation=Functions.symmetricOrientation(m));
      Modelica.Electrical.MultiPhase.Basic.ZeroInductor zeroInductor(
        final m=m,
        final Lzero=Lzero) "Zero sequence inductance of winding";
      Modelica.Electrical.MultiPhase.Basic.Resistor resistor(
        final m=m,
        final useHeatPort=useHeatPort,
        final R=fill(RRef, m),
        final T_ref=fill(TRef,m),
        final alpha=fill(alphaRef,m),
        final T=fill(TOperational,m)) "Winding resistor";

      Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortWinding[m] if useHeatPort 
        "Heat ports of winding resistors";
      Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortCore if useHeatPort 
        "Heat ports of winding resistor";
      Modelica.Magnetic.FundamentalWave.Components.EddyCurrent core(final G=(
            m/2)*GcRef/effectiveTurns^2, final useHeatPort=useHeatPort) 
        "Core loss model (currently eddy currents only)";
      Modelica.Magnetic.FundamentalWave.Components.Reluctance strayReluctance(
          final R_m(d=3*effectiveTurns^2/2/Lsigma, q=3*effectiveTurns^2/2/
              Lsigma)) 
        "Stray reluctance equivalent to ideally coupled stray inductances";
    equation 
      connect(plug_p, resistor.plug_p);
      connect(resistor.plug_n, zeroInductor.plug_p);
      connect(zeroInductor.plug_n, electroMagneticConverter.plug_p);
      connect(electroMagneticConverter.plug_n, plug_n);
      connect(electroMagneticConverter.port_p, port_p);
      connect(resistor.heatPort, heatPortWinding);
      connect(electroMagneticConverter.port_n, core.port_p);
      connect(core.port_n, port_n);
      connect(core.heatPort, heatPortCore);
      connect(strayReluctance.port_n, core.port_n);
      connect(strayReluctance.port_p, electroMagneticConverter.port_p);
    end SymmetricMultiPhaseWinding;

* * * * *

![image12](Modelica.Magnetic.FundamentalWave.BasicMachines.Components.RotorSaliencyAirGapI.png) [Modelica.Magnetic.FundamentalWave.BasicMachines.Components](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components).RotorSaliencyAirGap
============================================================================================================================================================================================================================================================================================================

**Air gap model with rotor saliency**

Information
-----------

::

This salient air gap model can be used for machines with uniform airgaps
and for machines with rotor saliencies. The air gap model is not
symmetrical towards stator and rotor since it is assumed the saliency
always refers to the rotor. The saliency of the air gap is represented
by a main field inductance in the d- and q-axis.

For the mechanical interaction of the air gap model with the stator and
the rotor it is equipped with to [rotational
connectors](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a).
The torques acting on both connectors have the same absolute values but
different signs. The difference between the stator and the rotor angle,
![image13](../Resources/Images/Magnetic/FundamentalWave/gamma.png), is
required for the transformation of the magnetic stator quantities to the
rotor side.

The air gap model has two magnetic stator and two magnetic rotor
[ports](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort).
The magnetic potential difference and the magnetic flux of the stator
(superscript s) are transformed to the rotor fixed reference frame
(superscript r). The effective reluctances of the main field with
respect to the d- and q-axis are considered then in the balance
equations

according to the following figure.

**Fig:** Magnetic equivalent circuit of the air gap model

### See also

[SinglePhaseWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding),
[SymmetricMultiPhaseWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding),
[SymmetricMultiPhaseCageWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseCageWinding)
[SaliencyCageWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SaliencyCageWinding)

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                                     Na Def Description
                                           me aul 
                                              t   
  ---------------------------------------- -- --- ------------------------
  Integer                                  p      Number of pole pairs

  [SalientInductance](Modelica_Magnetic_Fu L0     Salient inductance of a
  ndamentalWave_Types.html#Modelica.Magnet        single unchorded coil
  ic.FundamentalWave.Types.SalientInductan        w.r.t. the fundamental
  ce)                                             wave
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- -----------------
  [PositiveMagneticPort](Modelica_Magnetic_Fundamen port Positive complex
  talWave_Interfaces.html#Modelica.Magnetic.Fundame \_sp magnetic stator
  ntalWave.Interfaces.PositiveMagneticPort)              port

  [NegativeMagneticPort](Modelica_Magnetic_Fundamen port Negative complex
  talWave_Interfaces.html#Modelica.Magnetic.Fundame \_sn magnetic stator
  ntalWave.Interfaces.NegativeMagneticPort)              port

  [PositiveMagneticPort](Modelica_Magnetic_Fundamen port Positive complex
  talWave_Interfaces.html#Modelica.Magnetic.Fundame \_rp magnetic rotor
  ntalWave.Interfaces.PositiveMagneticPort)              port

  [NegativeMagneticPort](Modelica_Magnetic_Fundamen port Negative complex
  talWave_Interfaces.html#Modelica.Magnetic.Fundame \_rn magnetic rotor
  ntalWave.Interfaces.NegativeMagneticPort)              port

  [Flange\_a](Modelica_Mechanics_Rotational_Interfa flan Flange of the
  ces.html#Modelica.Mechanics.Rotational.Interfaces ge\_ rotor
  .Flange_a)                                        a    

  [Flange\_a](Modelica_Mechanics_Rotational_Interfa supp Support at which
  ces.html#Modelica.Mechanics.Rotational.Interfaces ort  the reaction
  .Flange_a)                                             torque is acting
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model RotorSaliencyAirGap "Air gap model with rotor saliency"

      import Modelica.Constants.pi;

      Interfaces.PositiveMagneticPort port_sp 
        "Positive complex magnetic stator port";
      Interfaces.NegativeMagneticPort port_sn 
        "Negative complex magnetic stator port";
      Interfaces.PositiveMagneticPort port_rp 
        "Positive complex magnetic rotor port";
      Interfaces.NegativeMagneticPort port_rn 
        "Negative complex magnetic rotor port";

      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a 
        "Flange of the rotor";
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support 
        "Support at which the reaction torque is acting";

      parameter Integer p "Number of pole pairs";
      parameter Modelica.Magnetic.FundamentalWave.Types.SalientInductance L0(
        d(start=1), q(start=1)) 
        "Salient inductance of a single unchorded coil w.r.t. the fundamental wave";
      final parameter Modelica.Magnetic.FundamentalWave.Types.SalientReluctance R_m(
        d=1/L0.d, q=1/L0.q) "Reluctance of the air gap model";

      // Complex phasors of magnetic potential differences
      Modelica.SIunits.ComplexMagneticPotentialDifference  V_mss 
        "Complex magnetic potential difference of stator w.r.t. stator reference frame";
      Modelica.SIunits.ComplexMagneticPotentialDifference  V_msr 
        "Complex magnetic potential difference of stator w.r.t. rotor reference frame";
      Modelica.SIunits.ComplexMagneticPotentialDifference  V_mrr 
        "Complex magnetic potential difference of rotor w.r.t. rotor reference frame";
      // Modelica.SIunits.ComplexMagneticPotentialDifference V_mrs
      //   "Complex magnetic potential difference of rotor w.r.t. stator reference frame";

      // Complex phasors of magnetic fluxes
      Modelica.SIunits.ComplexMagneticFlux  Phi_ss 
        "Complex magnetic potential difference of stator w.r.t. stator reference frame";
      Modelica.SIunits.ComplexMagneticFlux  Phi_sr 
        "Complex magnetic potential difference of stator w.r.t. rotor reference frame";
      Modelica.SIunits.ComplexMagneticFlux  Phi_rr 
        "Complex magnetic potential difference of rotor w.r.t. rotor reference frame";
      // Modelica.SIunits.ComplexMagneticFlux Phi_rs
      //   "Complex magnetic potential difference of rotor w.r.t. stator reference frame";

      // Electrical torque and mechanical angle
      Modelica.SIunits.Torque tauElectrical "Electrical torque";
      // Modelica.SIunits.Torque tauTemp "Electrical torque";
      Modelica.SIunits.Angle gamma "Electrical angle between rotor and stator";

      Complex rotator "Equivalent vector representation of orientation";

    equation 
      // Stator flux into positive stator port
      port_sp.Phi = Phi_ss;
      // Balance of stator flux
      port_sp.Phi + port_sn.Phi = Complex(0,0);

      // Rotor flux into positive rotor port
      port_rp.Phi = Phi_rr;
      // Balance of rotor flux
      port_rp.Phi + port_rn.Phi = Complex(0,0);

      // Magneto motive force of stator
      port_sp.V_m - port_sn.V_m = V_mss;

      // Magneto motive force of stator
      port_rp.V_m - port_rn.V_m = V_mrr;

      // Transformation of fluxes between stator and rotor fixed frame, if wanted
      // Phi_rs.re = + Phi_rr.re * cos(gamma) - Phi_rr.im * sin(gamma);
      // Phi_rs.im = + Phi_rr.re * sin(gamma) + Phi_rr.im * cos(gamma);
      // Alternative transformation
      // Phi_rr.re = + Phi_rs.re * cos(gamma) + Phi_rs.im * sin(gamma);
      // Phi_rr.im = - Phi_rs.re * sin(gamma) + Phi_rs.im * cos(gamma);

      // Transformed stator flux is not needed
      // Phi_sr.re = + Phi_ss.re * cos(gamma) + Phi_ss.im * sin(gamma);
      // Phi_sr.im = - Phi_ss.re * sin(gamma) + Phi_ss.im * cos(gamma);
      Phi_sr = Phi_ss * Modelica.ComplexMath.conj(rotator);
      // Alternative transformation
      // Phi_ss.re = + Phi_sr.re * cos(gamma) - Phi_sr.im * sin(gamma);
      // Phi_ss.im = + Phi_sr.re * sin(gamma) + Phi_sr.im * cos(gamma);

      // Stator flux w.r.t. the rotor fixed frame and rotor flux are equal
      Phi_sr = Phi_rr;

      // Transformation of magnetic potential difference between stator and rotor fixed frame
      // V_mrs.re = + V_mrr.re * cos(gamma) - V_mrr.im * sin(gamma);
      // V_mrs.im = + V_mrr.re * sin(gamma) + V_mrr.im * cos(gamma);
      // V_mrr.re = + V_mrs.re * cos(gamma) + V_mrs.im * sin(gamma);
      // V_mrr.im = - V_mrs.re * sin(gamma) + V_mrs.im * cos(gamma);
      // V_msr.re = + V_mss.re * cos(gamma) + V_mss.im * sin(gamma);
      // V_msr.im = - V_mss.re * sin(gamma) + V_mss.im * cos(gamma);
      V_msr = V_mss * Modelica.ComplexMath.conj(rotator);
      // V_msr.re = + V_mss.re * cos(gamma) + V_mss.im * sin(gamma);
      // V_msr.im = - V_mss.re * sin(gamma) + V_mss.im * cos(gamma);

      // Local balance of maganeto motive force
      (pi/2.0) * (V_mrr.re + V_msr.re) = Phi_rr.re*R_m.d;
      (pi/2.0) * (V_mrr.im + V_msr.im) = Phi_rr.im*R_m.q;

      // Torque
      tauElectrical = - (pi*p/2.0)*(Phi_ss.im * V_mss.re - Phi_ss.re * V_mss.im);

      flange_a.tau = -tauElectrical;
      support.tau = tauElectrical;

      // Electrical angle between stator and rotor
      gamma = p*(flange_a.phi-support.phi);
      rotator = Modelica.ComplexMath.exp(Complex(0,gamma));

    end RotorSaliencyAirGap;

* * * * *

![image14](Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseCageWindingI.png) [Modelica.Magnetic.FundamentalWave.BasicMachines.Components](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components).SymmetricMultiPhaseCageWinding
==================================================================================================================================================================================================================================================================================================================================

**Symmetrical rotor cage**

Information
-----------

::

The symmetric rotor cage model of this library does not consist of rotor
bars and end rings. Instead the symmetric cage is modeled by an
equivalent symmetrical winding. The rotor cage model consists of
![image15](../Resources/Images/Magnetic/FundamentalWave/m.png) phases.
If the cage is modeled by equivalent stator winding parameters, the
number of effective turns,
![image16](../Resources/Images/Magnetic/FundamentalWave/effectiveTurns.png),
has to be chosen equivalent to the effective number of stator turns.

### See also

[SinglePhaseWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding),
[SymmetricMultiPhaseWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding),
[SaliencyCageWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SaliencyCageWinding),
[RotorSaliencyAirGap](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.RotorSaliencyAirGap)

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort)
(Two magnetic ports for graphical modeling).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                          Name  Def Description
                                                      aul 
                                                      t   
  --------------------------------------------- ----- --- -----------------
  Integer                                       m     3   Number of phases

  Boolean                                       useHe fal Enable / disable
                                                atPor se  (=fixed
                                                t         temperatures)
                                                          thermal port

  [Resistance](Modelica_SIunits.html#Modelica.S RRef      Winding
  Iunits.Resistance)                                      resistance per
                                                          phase at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Modelica. TRef      Reference
  SIunits.Temperature)                                    temperature of
                                                          winding [K]

  [LinearTemperatureCoefficient20](Modelica_Ele alpha     Temperature
  ctrical_Machines_Thermal.html#Modelica.Electr 20        coefficient of
  ical.Machines.Thermal.LinearTemperatureCoeffi           winding at 20
  cient20)                                                degC [1/K]

  [Temperature](Modelica_SIunits.html#Modelica. TOper     Operational
  SIunits.Temperature)                          ation     temperature of
                                                al        winding [K]

  [Inductance](Modelica_SIunits.html#Modelica.S Lsigm     Cage stray
  Iunits.Inductance)                            a         inductance [H]

  Real                                          effec 1   Effective number
                                                tiveT     of turns
                                                urns      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name    Description
  ---------------------------------------------------- ------- ------------
  [PositiveMagneticPort](Modelica_Magnetic_Fundamental port\_p Positive
  Wave_Interfaces.html#Modelica.Magnetic.FundamentalWa         complex
  ve.Interfaces.PositiveMagneticPort)                          magnetic
                                                               port

  [NegativeMagneticPort](Modelica_Magnetic_Fundamental port\_n Negative
  Wave_Interfaces.html#Modelica.Magnetic.FundamentalWa         complex
  ve.Interfaces.NegativeMagneticPort)                          magnetic
                                                               port

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfac heatPor Heat ports
  es.html#Modelica.Thermal.HeatTransfer.Interfaces.Hea tWindin of winding
  tPort_a)                                             g       resistor
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SymmetricMultiPhaseCageWinding "Symmetrical rotor cage"

      import Modelica.Constants.pi;

      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      parameter Integer m = 3 "Number of phases";

      parameter Boolean useHeatPort=false 
        "Enable / disable (=fixed temperatures) thermal port";

      parameter Modelica.SIunits.Resistance RRef 
        "Winding resistance per phase at TRef";
      parameter Modelica.SIunits.Temperature TRef(start=293.15) 
        "Reference temperature of winding";
      parameter Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20
        alpha20(start=0) "Temperature coefficient of winding at 20 degC";
      final parameter Modelica.SIunits.LinearTemperatureCoefficient alphaRef=
        Modelica.Electrical.Machines.Thermal.convertAlpha(alpha20,TRef,293.15);
      parameter Modelica.SIunits.Temperature TOperational(start=293.15) 
        "Operational temperature of winding";

      parameter Modelica.SIunits.Inductance Lsigma "Cage stray inductance";
      parameter Real effectiveTurns = 1 "Effective number of turns";

      Modelica.SIunits.Current i[m](each start=0)=strayInductor.i "Cage currents";

      Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter
        winding(
        final m=m,
        final orientation={2*pi*(k - 1)/m for k in 1:m},
        final effectiveTurns=fill(effectiveTurns, m)) "Symmetric winding";
      Modelica.Electrical.MultiPhase.Basic.Inductor strayInductor(
        final m=m,
        final L=fill(Lsigma, m));
      Modelica.Electrical.MultiPhase.Basic.Resistor resistor(
        final useHeatPort=useHeatPort,
        final m=m,
        final R=fill(RRef, m),
        final T_ref=fill(TRef, m),
        final alpha=fill(alphaRef, m),
        final T=fill(TRef, m));
      Modelica.Electrical.MultiPhase.Basic.Star star(
        final m=m);
      Modelica.Electrical.Analog.Basic.Ground ground;

      Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortWinding if useHeatPort 
        "Heat ports of winding resistor";
      Thermal.HeatTransfer.Components.ThermalCollector thermalCollector(
        final m=m) if useHeatPort 
        "Connector of thermal rotor resistance heat ports";
      Modelica.Electrical.MultiPhase.Basic.Star starAuxiliary(
        final m=m);

    equation 
      connect(port_p, winding.port_p);
      connect(winding.port_n, port_n);
      connect(ground.p,star. pin_n);
      connect(strayInductor.plug_n, resistor.plug_p);
      connect(strayInductor.plug_p, winding.plug_p);
      connect(star.plug_p, winding.plug_n);
      connect(thermalCollector.port_a, resistor.heatPort);
      connect(thermalCollector.port_b, heatPortWinding);
      connect(resistor.plug_n, starAuxiliary.plug_p);
    end SymmetricMultiPhaseCageWinding;

* * * * *

![image17](Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseCageWindingI.png) [Modelica.Magnetic.FundamentalWave.BasicMachines.Components](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components).SaliencyCageWinding
=======================================================================================================================================================================================================================================================================================================================

**Rotor cage with saliency in d- and q-axis**

Information
-----------

::

The salient cage model is a two axis model with two phases. The electro
magnetic coupling therefore is also two phase coupling model. The angles
of the two orientations are 0 and
![image18](../Resources/Images/Magnetic/FundamentalWave/pi_over_2.png).
This way an asymmetrical rotor cage with different resistances and stray
inductances in d- and q-axis can be modeled.

### See also

[SinglePhaseWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding),
[SymmetricMultiPhaseWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding),
[SymmetricMultiPhaseCageWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseCageWinding)
[RotorSaliencyAirGap](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.RotorSaliencyAirGap)

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort)
(Two magnetic ports for graphical modeling).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                          Name  Def Description
                                                      aul 
                                                      t   
  --------------------------------------------- ----- --- -----------------
  Boolean                                       useHe fal Enable / disable
                                                atPor se  (=fixed
                                                t         temperatures)
                                                          thermal port

  [SalientResistance](Modelica_Magnetic_Fundame RRef      Salient cage
  ntalWave_Types.html#Modelica.Magnetic.Fundame           resistance
  ntalWave.Types.SalientResistance)                       

  [Temperature](Modelica_SIunits.html#Modelica. TRef      Reference
  SIunits.Temperature)                                    temperature of
                                                          winding [K]

  [LinearTemperatureCoefficient20](Modelica_Ele alpha     Temperature
  ctrical_Machines_Thermal.html#Modelica.Electr 20        coefficient of
  ical.Machines.Thermal.LinearTemperatureCoeffi           winding at 20
  cient20)                                                degC [1/K]

  [Temperature](Modelica_SIunits.html#Modelica. TOper     Operational
  SIunits.Temperature)                          ation     temperature of
                                                al        winding [K]

  [SalientInductance](Modelica_Magnetic_Fundame Lsigm     Salient cage
  ntalWave_Types.html#Modelica.Magnetic.Fundame a         stray inductance
  ntalWave.Types.SalientInductance)                       

  Real                                          effec 1   Effective number
                                                tiveT     of turns
                                                urns      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name    Description
  ---------------------------------------------------- ------- ------------
  [PositiveMagneticPort](Modelica_Magnetic_Fundamental port\_p Positive
  Wave_Interfaces.html#Modelica.Magnetic.FundamentalWa         complex
  ve.Interfaces.PositiveMagneticPort)                          magnetic
                                                               port

  [NegativeMagneticPort](Modelica_Magnetic_Fundamental port\_n Negative
  Wave_Interfaces.html#Modelica.Magnetic.FundamentalWa         complex
  ve.Interfaces.NegativeMagneticPort)                          magnetic
                                                               port

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfac heatPor Heat ports
  es.html#Modelica.Thermal.HeatTransfer.Interfaces.Hea tWindin of winding
  tPort_a)                                             g       resistor
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SaliencyCageWinding "Rotor cage with saliency in d- and q-axis"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      parameter Boolean useHeatPort=false 
        "Enable / disable (=fixed temperatures) thermal port";

      parameter Modelica.Magnetic.FundamentalWave.Types.SalientResistance
        RRef(
        d(start=1), q(start=1)) "Salient cage resistance";
      parameter Modelica.SIunits.Temperature TRef(start=293.15) 
        "Reference temperature of winding";
      parameter Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20
        alpha20(start=0) "Temperature coefficient of winding at 20 degC";
      final parameter Modelica.SIunits.LinearTemperatureCoefficient alphaRef=
        Modelica.Electrical.Machines.Thermal.convertAlpha(alpha20,TRef,293.15);
      parameter Modelica.SIunits.Temperature TOperational(start=293.15) 
        "Operational temperature of winding";

      parameter Modelica.Magnetic.FundamentalWave.Types.SalientInductance
        Lsigma(
        d(start=1), q(start=1)) "Salient cage stray inductance";
      parameter Real effectiveTurns = 1 "Effective number of turns";

      Modelica.Magnetic.FundamentalWave.Types.SalientCurrent i(
        d(start=0, fixed=true)=strayInductor.i[1],
        q(start=0, fixed=true)=strayInductor.i[2]) "Cage current";

      Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter
        winding(
        final m=2,
        final orientation={0,Modelica.Constants.pi/2},
        final effectiveTurns=fill(effectiveTurns, 2)) "Symmetric winding";
      Modelica.Electrical.MultiPhase.Basic.Inductor strayInductor(
        final m=2,
        final L={Lsigma.d,Lsigma.q});
      Modelica.Electrical.MultiPhase.Basic.Resistor resistor(
        final useHeatPort=useHeatPort,
        final m=2,
        final R={RRef.d,RRef.q},
        final T_ref=fill(TRef, 2),
        final alpha=fill(alphaRef, 2),
        final T=fill(TOperational, 2));
      Modelica.Electrical.MultiPhase.Basic.Star star(
        final m=2);
      Modelica.Electrical.Analog.Basic.Ground ground;

      Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortWinding if 
                                                             useHeatPort 
        "Heat ports of winding resistor";
      Thermal.HeatTransfer.Components.ThermalCollector thermalCollector(final m=2) if useHeatPort 
        "Connector of thermal rotor resistance heat ports";
    equation 

      connect(port_p, winding.port_p);
      connect(winding.port_n, port_n);
      connect(ground.p,star. pin_n);
      connect(strayInductor.plug_n, resistor.plug_p);
      connect(winding.plug_n, resistor.plug_n);
      connect(star.plug_p, winding.plug_n);
      connect(strayInductor.plug_p, winding.plug_p);
      connect(thermalCollector.port_b, heatPortWinding);
      connect(resistor.heatPort, thermalCollector.port_a);
    end SaliencyCageWinding;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:02 2010.
