% Modelica.Magnetic.FundamentalWave.Components
% 
% 

[Modelica.Magnetic.FundamentalWave](Modelica_Magnetic_FundamentalWave.html#Modelica.Magnetic.FundamentalWave).Components
========================================================================================================================

**Basic fundamental wave components**

Information
-----------

::

Basic components of the FundamentalWave library for modeling magnetic
circuits. Machine specific components are located at
[Machines.Components](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components).

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image7](Modelica.Magnetic.FundamentalWave.Components.Gro Magnetic
  undS.png)                                                  ground
  [Ground](Modelica_Magnetic_FundamentalWave_Components.html 
  #Modelica.Magnetic.FundamentalWave.Components.Ground)      

  ![image8](Modelica.Magnetic.FundamentalWave.Components.Rel Salient
  uctanceS.png)                                              reluctance
  [Reluctance](Modelica_Magnetic_FundamentalWave_Components. 
  html#Modelica.Magnetic.FundamentalWave.Components.Reluctan 
  ce)                                                        

  ![image9](Modelica.Magnetic.FundamentalWave.Components.Edd Constant loss
  yCurrentS.png)                                             model under
  [EddyCurrent](Modelica_Magnetic_FundamentalWave_Components sinusoidal
  .html#Modelica.Magnetic.FundamentalWave.Components.EddyCur magnetic
  rent)                                                      conditions

  ![image10](Modelica.Magnetic.FundamentalWave.Components.Si Single phase
  nglePhaseElectroMagneticConverterS.png)                    electro
  [SinglePhaseElectroMagneticConverter](Modelica_Magnetic_Fu magnetic
  ndamentalWave_Components.html#Modelica.Magnetic.Fundamenta converter
  lWave.Components.SinglePhaseElectroMagneticConverter)      

  ![image11](Modelica.Magnetic.FundamentalWave.Components.Si Multi phase
  nglePhaseElectroMagneticConverterS.png)                    electro
  [MultiPhaseElectroMagneticConverter](Modelica_Magnetic_Fun magnetic
  damentalWave_Components.html#Modelica.Magnetic.Fundamental converter
  Wave.Components.MultiPhaseElectroMagneticConverter)        

  ![image12](Modelica.Magnetic.FundamentalWave.Components.Id Salient
  leS.png)                                                   reluctance
  [Idle](Modelica_Magnetic_FundamentalWave_Components.html#M 
  odelica.Magnetic.FundamentalWave.Components.Idle)          

  ![image13](Modelica.Magnetic.FundamentalWave.Components.Sh Salient
  ortS.png)                                                  reluctance
  [Short](Modelica_Magnetic_FundamentalWave_Components.html# 
  Modelica.Magnetic.FundamentalWave.Components.Short)        
  ------------------------------------------------------------------------

* * * * *

![image14](Modelica.Magnetic.FundamentalWave.Components.GroundI.png) [Modelica.Magnetic.FundamentalWave.Components](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components).Ground
==========================================================================================================================================================================================================================

**Magnetic ground**

Information
-----------

::

Grounding of the complex magnetic potential. Each magnetic circuit has
to be grounded at least one point of the circuit.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name Descriptio
                                                                 n
  --------------------------------------------------------- ---- ----------
  [PositiveMagneticPort](Modelica_Magnetic_FundamentalWave_ port Complex
  Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfa \_p  magnetic
  ces.PositiveMagneticPort)                                      port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Ground "Magnetic ground"

      Interfaces.PositiveMagneticPort port_p "Complex magnetic port";

    equation 
      port_p.V_m = Complex(0,0);
    end Ground;

* * * * *

![image15](Modelica.Magnetic.FundamentalWave.Components.ReluctanceI.png) [Modelica.Magnetic.FundamentalWave.Components](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components).Reluctance
==================================================================================================================================================================================================================================

**Salient reluctance**

Information
-----------

::

The salient reluctance models the relationship between the complex
magnetic potential difference
![image16](../Resources/Images/Magnetic/FundamentalWave/V_m.png) and the
complex magnetic flux
![image17](../Resources/Images/Magnetic/FundamentalWave/Phi.png),

which can also be expressed in terms complex phasors:

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary)
(Two magnetic ports for textual modeling).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                            Nam Defa Description
                                                  e   ult  
  ----------------------------------------------- --- ---- ----------------
  [SalientReluctance](Modelica_Magnetic_Fundament R\_      Magnetic
  alWave_Types.html#Modelica.Magnetic.Fundamental m        reluctance in
  Wave.Types.SalientReluctance)                            d=re and q=im
                                                           axis
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  [PositiveMagneticPort](Modelica_Magnetic_FundamentalWa port Positive
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_p  complex
  nterfaces.PositiveMagneticPort)                             magnetic port

  [NegativeMagneticPort](Modelica_Magnetic_FundamentalWa port Negative
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_n  complex
  nterfaces.NegativeMagneticPort)                             magnetic port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Reluctance "Salient reluctance"

      import Modelica.Constants.pi;

      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary;
      parameter Modelica.Magnetic.FundamentalWave.Types.SalientReluctance R_m(
        d(start=1), q(start=1)) "Magnetic reluctance in d=re and q=im axis";

    equation 
      (pi/2) * V_m.re = R_m.d * Phi.re;
      (pi/2) * V_m.im = R_m.q * Phi.im;
    end Reluctance;

* * * * *

![image18](Modelica.Magnetic.FundamentalWave.Components.EddyCurrentI.png) [Modelica.Magnetic.FundamentalWave.Components](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components).EddyCurrent
====================================================================================================================================================================================================================================

**Constant loss model under sinusoidal magnetic conditions**

Information
-----------

::

The eddy current loss model with respect to fundamental wave effects is
designed in accordance to
[FluxTubes.Basic.EddyCurrent](Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic.EddyCurrent).

![image19](../Resources/Images/Magnetic/FundamentalWave/Components/eddycurrent.png).

Fig. 1: equivalent models of eddy current losses

Due to the nature of eddy current losses, which can be represented by
symmetric conductors in an equivalent electric circuit (Fig. 1), the
respective number of phases
![image20](../Resources/Images/Magnetic/FundamentalWave/m.png) has to be
taken into account. Assume that the
![image21](../Resources/Images/Magnetic/FundamentalWave/m.png)
conductances of the equivalent circuit are
![image22](../Resources/Images/Magnetic/FundamentalWave/Components/Gc.png),
the conductance for the eddy current loss model is determined by

where ![image23](../Resources/Images/Magnetic/FundamentalWave/N.png) is
the number of turns of the symmetric electro magnetic coupling.

For such an
![image24](../Resources/Images/Magnetic/FundamentalWave/m.png) phase
system the relationship between the voltage and current [space
phasors](http://www.haumer.at/refimg/SpacePhasors.pdf) and the magnetic
flux and magnetic potential difference phasor is

![image25](../Resources/Images/Magnetic/FundamentalWave/Components/vPhi.png),
  ~ ![image26](../Resources/Images/Magnetic/FundamentalWave/Components/iV_m.png),

where ![image27](../Resources/Images/Magnetic/FundamentalWave/v_k.png)
and ![image28](../Resources/Images/Magnetic/FundamentalWave/i_k.png) are
the phase voltages and currents, respectively.

The dissipated loss power

can be determined for the [space
phasor](http://www.haumer.at/refimg/SpacePhasors.pdf) relationship of
the voltage and current space phasor.

### See also

[FluxTubes.Basic.EddyCurrent](Modelica_Magnetic_FluxTubes_Basic.html#Modelica.Magnetic.FluxTubes.Basic.EddyCurrent)

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary)
(Two magnetic ports for textual modeling),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name    Defau Description
                                            lt    
  --------------------------------- ------- ----- -------------------------
  [Conductance](Modelica_SIunits.ht G             Eqivalent symmetric loss
  ml#Modelica.SIunits.Conductance)                conductance [S]

  Boolean                           useHeat false =true, if heatPort is
                                    Port          enabled

  [Temperature](Modelica_SIunits.ht T       273.1 Fixed device temperature
  ml#Modelica.SIunits.Temperature)          5     if useHeatPort = false
                                                  [K]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                         Nam Description
                                               e   
  -------------------------------------------- --- -----------------------
  [PositiveMagneticPort](Modelica_Magnetic_Fun por Positive complex
  damentalWave_Interfaces.html#Modelica.Magnet t\_ magnetic port
  ic.FundamentalWave.Interfaces.PositiveMagnet p   
  icPort)                                          

  [NegativeMagneticPort](Modelica_Magnetic_Fun por Negative complex
  damentalWave_Interfaces.html#Modelica.Magnet t\_ magnetic port
  ic.FundamentalWave.Interfaces.NegativeMagnet n   
  icPort)                                          

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ hea Optional port to which
  Interfaces.html#Modelica.Thermal.HeatTransfe tPo dissipated losses are
  r.Interfaces.HeatPort_a)                     rt  transported in form of
                                                   heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model EddyCurrent 
      "Constant loss model under sinusoidal magnetic conditions"

      import Modelica.Constants.pi;

      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary;
      parameter Modelica.SIunits.Conductance G(min=0) 
        "Eqivalent symmetric loss conductance";
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort
        (final T = 273.15);

    equation 
      lossPower = (pi/2)*(V_m.re*der(Phi.re) + V_m.im*der(Phi.im));
      if G>0 then
        (pi/2) * V_m.re = G * der(Phi.re);
        (pi/2) * V_m.im = G * der(Phi.im);
      else
        V_m.re = 0;
        V_m.im = 0;
      end if;
    end EddyCurrent;

* * * * *

![image29](Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverterI.png) [Modelica.Magnetic.FundamentalWave.Components](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components).SinglePhaseElectroMagneticConverter
====================================================================================================================================================================================================================================================================================

**Single phase electro magnetic converter**

Information
-----------

::

The single phase winding has an effective number of turns,
![image30](../Resources/Images/Magnetic/FundamentalWave/effectiveTurns.png)
and a respective orientation of the winding,
![image31](../Resources/Images/Magnetic/FundamentalWave/orientation.png).
The current in winding is
![image32](../Resources/Images/Magnetic/FundamentalWave/i.png).

The total complex magnetic potential difference of the single phase
winding is determined by:

In this equation the magneto motive force is aligned with the
orientation of the winding.

The voltage
![image33](../Resources/Images/Magnetic/FundamentalWave/v.png) induced
in the winding depends on the cosine between the orientation of the
winding and the angle of the complex magnetic flux. Additionally, the
magnitudes of the induced voltages are propotional to the respective
number of turns. This relationship can be modeled by means of

The single phase electro magnetic converter is a special case of the
[MultiPhaseElectroMagneticConverter](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter)

### See also

[MultiPhaseElectroMagneticConverter](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter)

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                        Name     Defau Description
                                       lt    
  --------------------------- -------- ----- ------------------------------
  Real                        effectiv       Effective number of turns
                              eTurns         

  [Angle](Modelica_SIunits.ht orientat       Orientation of the resulting
  ml#Modelica.SIunits.Angle)  ion            fundamental wave V\_m phasor
                                             [rad]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  [PositivePin](Modelica_Electrical_Analog_Interfaces.ht pin\ Positive pin
  ml#Modelica.Electrical.Analog.Interfaces.PositivePin)  _p   

  [NegativePin](Modelica_Electrical_Analog_Interfaces.ht pin\ Negative pin
  ml#Modelica.Electrical.Analog.Interfaces.NegativePin)  _n   

  [PositiveMagneticPort](Modelica_Magnetic_FundamentalWa port Positive
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_p  complex
  nterfaces.PositiveMagneticPort)                             magnetic port

  [NegativeMagneticPort](Modelica_Magnetic_FundamentalWa port Negative
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_n  complex
  nterfaces.NegativeMagneticPort)                             magnetic port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SinglePhaseElectroMagneticConverter 
      "Single phase electro magnetic converter"

      import Modelica.Constants.pi;

      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p "Positive pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n "Negative pin";

      Interfaces.PositiveMagneticPort port_p "Positive complex magnetic port";
      Interfaces.NegativeMagneticPort port_n "Negative complex magnetic port";

      parameter Real effectiveTurns "Effective number of turns";
      parameter Modelica.SIunits.Angle orientation 
        "Orientation of the resulting fundamental wave V_m phasor";

      // Local electric single phase quantities
      Modelica.SIunits.Voltage v "Voltage drop";
      Modelica.SIunits.Current i "Current";

      // Local electromagnetic fundamental wave quantities
      Modelica.SIunits.ComplexMagneticPotentialDifference  V_m 
        "Complex magnetic potential difference";
      Modelica.SIunits.ComplexMagneticFlux  Phi "Complex magnetic flux";

      final parameter Complex N=
        effectiveTurns * Modelica.ComplexMath.exp(Complex(0,orientation)) 
        "Complex number of turns";

    equation 
      // Magnetic flux and flux balance of the magnetic ports
      port_p.Phi = Phi;
      port_p.Phi + port_n.Phi = Complex(0,0);

      // Magnetic potential difference of the magnetic ports
      port_p.V_m - port_n.V_m = V_m;

      // Voltage drop between the electrical pins
      v = pin_p.v - pin_n.v;

      // Current and current balance of the electric pins
      i = pin_p.i;
      pin_p.i + pin_n.i = 0;

      // Complex magnetic potential difference is determined from currents, number
      // of turns and angles of orientation of winding
      // V_m.re = (2/pi) * effectiveTurns*cos(orientation)*i;
      // V_m.im = (2/pi) * effectiveTurns*sin(orientation)*i;
      V_m = (2.0/pi) * N * i;

      // Induced voltages is determined from complex magnetic flux, number of turns
      // and angles of orientation of winding
      // -v = effectiveTurns*cos(orientation)*der(Phi.re)
      //    + effectiveTurns*sin(orientation)*der(Phi.im);
      -v = Modelica.ComplexMath.real(Modelica.ComplexMath.conj(N)*Complex(der(Phi.re),der(Phi.im)));

    end SinglePhaseElectroMagneticConverter;

* * * * *

![image34](Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverterI.png) [Modelica.Magnetic.FundamentalWave.Components](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components).MultiPhaseElectroMagneticConverter
==================================================================================================================================================================================================================================================================================

**Multi phase electro magnetic converter**

Information
-----------

::

Each phase
![image35](../Resources/Images/Magnetic/FundamentalWave/k.png) of an
![image36](../Resources/Images/Magnetic/FundamentalWave/m.png) phase
winding has an effective number of turns,
![image37](../Resources/Images/Magnetic/FundamentalWave/effectiveTurns_k.png)
and an respective winging angle
![image38](../Resources/Images/Magnetic/FundamentalWave/orientation_k.png)
and a phase current
![image39](../Resources/Images/Magnetic/FundamentalWave/i_k.png).

The total complex magnetic potential difference of the mutli phase
winding is determined by:

In this equation each contribution of a winding magneto motive force on
the total complex magnetic potential difference is aligned with the
respective orientation of the winding.

The voltages
![image40](../Resources/Images/Magnetic/FundamentalWave/v_k.png) induced
in each winding depend on the cosinus between the orientation of the
winding and the angle of the complex magnetic flux. Additionally, the
magnitudes of the induced voltages are propotional to the respective
number of turns. This relationship can be modeled by means of

for
![image41](../Resources/Images/Magnetic/FundamentalWave/k_in_1_m.png)
and is also illustrated by the following figure:

**Fig:** Orientation of winding and location of complex magnetic flux

### See also

[SinglePhaseElectroMagneticConverter](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter)

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                       Name      Defau Description
                                       lt    
  -------------------------- --------- ----- ------------------------------
  Integer                    m         3     Number of phases

  Real                       effective       Effective number of turns
                             Turns[m]        

  [Angle](Modelica_SIunits.h orientati       Orientation of the resulting
  tml#Modelica.SIunits.Angle on[m]           fundamental wave field phasor
  )                                          [rad]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfac plug Positive plug
  es.html#Modelica.Electrical.MultiPhase.Interfaces.Posi \_p  
  tivePlug)                                                   

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfac plug Negative plug
  es.html#Modelica.Electrical.MultiPhase.Interfaces.Nega \_n  
  tivePlug)                                                   

  [PositiveMagneticPort](Modelica_Magnetic_FundamentalWa port Positive
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_p  complex
  nterfaces.PositiveMagneticPort)                             magnetic port

  [NegativeMagneticPort](Modelica_Magnetic_FundamentalWa port Negative
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_n  complex
  nterfaces.NegativeMagneticPort)                             magnetic port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model MultiPhaseElectroMagneticConverter 
      "Multi phase electro magnetic converter"

      import Modelica.Constants.pi;

      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(
        final m=m) "Positive plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(
        final m=m) "Negative plug";

      Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort port_p 
        "Positive complex magnetic port";
      Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort port_n 
        "Negative complex magnetic port";

      parameter Integer m = 3 "Number of phases";
      parameter Real effectiveTurns[m] "Effective number of turns";
      parameter Modelica.SIunits.Angle orientation[m] 
        "Orientation of the resulting fundamental wave field phasor";

      Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter
        singlePhaseElectroMagneticConverter[m](
          final effectiveTurns=effectiveTurns,
          final orientation=orientation);
    equation 
      connect(plug_p.pin, singlePhaseElectroMagneticConverter.pin_p);
      connect(singlePhaseElectroMagneticConverter.pin_n, plug_n.pin);
      connect(singlePhaseElectroMagneticConverter[1].port_p, port_p);
      for k in 2:m loop
        connect(singlePhaseElectroMagneticConverter[k-1].port_n,singlePhaseElectroMagneticConverter[k].port_p);
      end for;
      connect(singlePhaseElectroMagneticConverter[m].port_n, port_n);

    end MultiPhaseElectroMagneticConverter;

* * * * *

![image42](Modelica.Magnetic.FundamentalWave.Components.IdleI.png) [Modelica.Magnetic.FundamentalWave.Components](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components).Idle
======================================================================================================================================================================================================================

**Salient reluctance**

Information
-----------

::

This is a simple idle running branch.

### See also

[Short](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.Short)

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary)
(Two magnetic ports for textual modeling).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  [PositiveMagneticPort](Modelica_Magnetic_FundamentalWa port Positive
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_p  complex
  nterfaces.PositiveMagneticPort)                             magnetic port

  [NegativeMagneticPort](Modelica_Magnetic_FundamentalWa port Negative
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_n  complex
  nterfaces.NegativeMagneticPort)                             magnetic port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Idle "Salient reluctance"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary;
    equation 
      Phi = Complex(0,0);
    end Idle;

* * * * *

![image43](Modelica.Magnetic.FundamentalWave.Components.ShortI.png) [Modelica.Magnetic.FundamentalWave.Components](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components).Short
========================================================================================================================================================================================================================

**Salient reluctance**

Information
-----------

::

This is a simple short cut branch.

### See also

[Idle](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.Idle)

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort)
(Two magnetic ports for graphical modeling).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  [PositiveMagneticPort](Modelica_Magnetic_FundamentalWa port Positive
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_p  complex
  nterfaces.PositiveMagneticPort)                             magnetic port

  [NegativeMagneticPort](Modelica_Magnetic_FundamentalWa port Negative
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_n  complex
  nterfaces.NegativeMagneticPort)                             magnetic port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Short "Salient reluctance"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

    equation 
      connect(port_p, port_n);
    end Short;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:58 2010.
