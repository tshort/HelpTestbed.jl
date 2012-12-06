% Modelica.Electrical.QuasiStationary.SinglePhase.Basic
% 
% 

[Modelica.Electrical.QuasiStationary.SinglePhase](Modelica_Electrical_QuasiStationary_SinglePhase.html#Modelica.Electrical.QuasiStationary.SinglePhase).Basic
=============================================================================================================================================================

**Basic components for AC singlephase models**

Information
-----------

::

This package hosts basic models for quasi stationary single phase
circuits. Quasi stationary theory for single phase circuits can be found
in the
[references](Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References).

### See also

[MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic)

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                           Descripti
                                                                 on
  -------------------------------------------------------------- ---------
  ![image9](Modelica.Electrical.QuasiStationary.SinglePhase.Basi Electrica
  c.GroundS.png)                                                 l
  [Ground](Modelica_Electrical_QuasiStationary_SinglePhase_Basic ground
  .html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Gr 
  ound)                                                          

  ![image10](Modelica.Electrical.QuasiStationary.SinglePhase.Bas Singlepha
  ic.ResistorS.png)                                              se
  [Resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Bas linear
  ic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic. resistor
  Resistor)                                                      

  ![image11](Modelica.Electrical.QuasiStationary.SinglePhase.Bas Singlepha
  ic.ResistorS.png)                                              se
  [Conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Ba linear
  sic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic conductor
  .Conductor)                                                    

  ![image12](Modelica.Electrical.QuasiStationary.SinglePhase.Bas Singlepha
  ic.CapacitorS.png)                                             se
  [Capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Ba linear
  sic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic capacitor
  .Capacitor)                                                    

  ![image13](Modelica.Electrical.QuasiStationary.SinglePhase.Bas Singlepha
  ic.InductorS.png)                                              se
  [Inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Bas linear
  ic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic. inductor
  Inductor)                                                      

  ![image14](Modelica.Electrical.QuasiStationary.SinglePhase.Bas Singlepha
  ic.VariableResistorS.png)                                      se
  [VariableResistor](Modelica_Electrical_QuasiStationary_SingleP variable
  hase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhas resistor
  e.Basic.VariableResistor)                                      

  ![image15](Modelica.Electrical.QuasiStationary.SinglePhase.Bas Singlepha
  ic.VariableResistorS.png)                                      se
  [VariableConductor](Modelica_Electrical_QuasiStationary_Single variable
  Phase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePha conductor
  se.Basic.VariableConductor)                                    

  ![image16](Modelica.Electrical.QuasiStationary.SinglePhase.Bas Singlepha
  ic.VariableCapacitorS.png)                                     se
  [VariableCapacitor](Modelica_Electrical_QuasiStationary_Single variable
  Phase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePha capacitor
  se.Basic.VariableCapacitor)                                    

  ![image17](Modelica.Electrical.QuasiStationary.SinglePhase.Bas Singlepha
  ic.VariableInductorS.png)                                      se
  [VariableInductor](Modelica_Electrical_QuasiStationary_SingleP variable
  hase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhas inductor
  e.Basic.VariableInductor)                                      
  ------------------------------------------------------------------------

* * * * *

![image18](Modelica.Electrical.QuasiStationary.SinglePhase.Basic.GroundI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Basic](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic).Ground
==============================================================================================================================================================================================================================================================

**Electrical ground**

Information
-----------

::

Ground of a single phase circuit. The potential at the ground node is
zero. Every electrical circuit, e.g., a series resonance
[example](Modelica_Electrical_QuasiStationary_SinglePhase_Examples.html#Modelica.Electrical.QuasiStationary.SinglePhase.Examples.SeriesResonance),
has to contain at least one ground object.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                           Nam Descri
                                                                 e   ption
  -------------------------------------------------------------- --- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_ pin 
  Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhas     
  e.Interfaces.PositivePin)                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Ground "Electrical ground"

      Interfaces.PositivePin pin;
    equation 
      Connections.potentialRoot(pin.reference, 256);
      if Connections.isRoot(pin.reference) then
        pin.reference.gamma = 0;
      end if;
      pin.v = Complex(0);
    end Ground;

* * * * *

![image19](Modelica.Electrical.QuasiStationary.SinglePhase.Basic.ResistorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Basic](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic).Resistor
==================================================================================================================================================================================================================================================================

**Singlephase linear resistor**

Information
-----------

::

The linear resistor connects the complex voltage *v* with the complex
current *i* by *i\*R = v*. The resistance *R* is allowed to be positive,
zero, or negative.

The resistor model also has an optional [conditional heat
port](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort).
A linear temperature dependency of the resistance for an enabled heat
port is also taken into account.

### See also

[Conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor)

::

Extends from
[Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through),
[Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name Def Description
                                       aul 
                                       t   
  ------------------------------- ---- --- --------------------------------
  [Resistance](Modelica_SIunits.h R\_r     Reference resistance at T\_ref
  tml#Modelica.SIunits.Resistance ef       [Ohm]
  )                                        

  [Temperature](Modelica_SIunits. T\_r 293 Reference temperature [K]
  html#Modelica.SIunits.Temperatu ef   .15 
  re)                                      

  [LinearTemperatureCoefficient]( alph 0   Temperature coefficient of
  Modelica_SIunits.html#Modelica. a\_r     resistance (R\_actual =
  SIunits.LinearTemperatureCoeffi ef       R\_ref\*(1 +
  cient)                                   alpha\_ref\*(heatPort.T -
                                           T\_ref)) [1/K]

  Boolean                         useH fal =true, if HeatPort is enabled
                                  eatP se  
                                  ort      

  [Temperature](Modelica_SIunits. T    T\_ Fixed device temperature if
  html#Modelica.SIunits.Temperatu      ref useHeatPort = false [K]
  re)                                      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name  Descri
                                                                     ption
  ------------------------------------------------------------ ----- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhas pin\_ Positi
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single p     ve
  Phase.Interfaces.PositivePin)                                      pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhas pin\_ Negati
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single n     ve
  Phase.Interfaces.NegativePin)                                      pin

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.html# heatP 
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)         ort   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Resistor "Singlephase linear resistor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Resistance R_ref(start=1) 
        "Reference resistance at T_ref";
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref=0 
        "Temperature coefficient of resistance (R_actual = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Resistance R_actual 
        "Resistance = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
    equation 
      assert((1 + alpha_ref*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      R_actual = R_ref*(1 + alpha_ref*(T_heatPort - T_ref));
      v = R_actual*i;
      LossPower = real(v*conj(i));
    end Resistor;

* * * * *

![image20](Modelica.Electrical.QuasiStationary.SinglePhase.Basic.ResistorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Basic](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic).Conductor
===================================================================================================================================================================================================================================================================

**Singlephase linear conductor**

Information
-----------

::

The linear conductor connects the voltage *v* with the current *i* by *i
= v\*G*. The conductance *G* is allowed to be positive, zero, or
negative.

The conductor model also has an optional [conditional heat
port](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort).
A linear temperature dependency of the resistance for an enabled heat
port is also taken into account.

### See also

[Resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor),
[Capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor)

::

Extends from
[Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through),
[Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name Def Description
                                       aul 
                                       t   
  ------------------------------- ---- --- --------------------------------
  [Conductance](Modelica_SIunits. G\_r     Reference conductance at T\_ref
  html#Modelica.SIunits.Conductan ef       [S]
  ce)                                      

  [Temperature](Modelica_SIunits. T\_r 293 Reference temperature [K]
  html#Modelica.SIunits.Temperatu ef   .15 
  re)                                      

  [LinearTemperatureCoefficient]( alph 0   Temperature coefficient of
  Modelica_SIunits.html#Modelica. a\_r     conductance (G\_actual =
  SIunits.LinearTemperatureCoeffi ef       G\_ref/(1 +
  cient)                                   alpha\_ref\*(heatPort.T -
                                           T\_ref)) [1/K]

  Boolean                         useH fal =true, if HeatPort is enabled
                                  eatP se  
                                  ort      

  [Temperature](Modelica_SIunits. T    T\_ Fixed device temperature if
  html#Modelica.SIunits.Temperatu      ref useHeatPort = false [K]
  re)                                      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name  Descri
                                                                     ption
  ------------------------------------------------------------ ----- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhas pin\_ Positi
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single p     ve
  Phase.Interfaces.PositivePin)                                      pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhas pin\_ Negati
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single n     ve
  Phase.Interfaces.NegativePin)                                      pin

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.html# heatP 
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)         ort   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Conductor "Singlephase linear conductor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Conductance G_ref(start=1) 
        "Reference conductance at T_ref";
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref=0 
        "Temperature coefficient of conductance (G_actual = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Conductance G_actual 
        "Conductance = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
    equation 
      assert((1 + alpha_ref*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      G_actual = G_ref/(1 + alpha_ref*(T_heatPort - T_ref));
      i = G_actual*v;
      LossPower = real(v*conj(i));
    end Conductor;

* * * * *

![image21](Modelica.Electrical.QuasiStationary.SinglePhase.Basic.CapacitorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Basic](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic).Capacitor
====================================================================================================================================================================================================================================================================

**Singlephase linear capacitor**

Information
-----------

::

The linear capacitor connects the voltage *v* with the current *i* by *i
= j\*ω\*C\*v*. The capacitance *C* is allowed to be positive, zero, or
negative.

### See also

[Resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor),
[Inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor)

::

Extends from
[Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Capacitance](Modelica_SIunits.html#Modelica. C             Capacitance
  SIunits.Capacitance)                                        [F]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Capacitor "Singlephase linear capacitor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.j;
      parameter Modelica.SIunits.Capacitance C(start=1) "Capacitance";
    equation 
      i = j*omega*C*v;
    end Capacitor;

* * * * *

![image22](Modelica.Electrical.QuasiStationary.SinglePhase.Basic.InductorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Basic](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic).Inductor
==================================================================================================================================================================================================================================================================

**Singlephase linear inductor**

Information
-----------

::

The linear inductor connects the voltage *v* with the current *i* by *v
= j\*ω\*L\*i*. The Inductance *L* is allowed to be positive, zero, or
negative.

### See also

[Resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor)

::

Extends from
[Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Inductance](Modelica_SIunits.html#Modelica.S L             Inductance
  Iunits.Inductance)                                          [H]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Inductor "Singlephase linear inductor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.j;
      parameter Modelica.SIunits.Inductance L(start=1) "Inductance";
    equation 
      v = j*omega*L*i;
    end Inductor;

* * * * *

![image23](Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Basic](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic).VariableResistor
==================================================================================================================================================================================================================================================================================

**Singlephase variable resistor**

Information
-----------

::

The linear resistor connects the voltage *v* with the current *i* by
*i\*R = v*. The resistance *R* is given as input signal.

The variable resistor model also has an optional [conditional heat
port](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort).
A linear temperature dependency of the resistance for an enabled heat
port is also taken into account.

### Note

A zero crossing of the R signal could cause singularities due to the
actual structure of the connected network.

The variable resistor model also has an optional [conditional heat
port](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort).
A linear temperature dependency of the resistance for an enabled heat
port is also taken into account.

### See also

[Resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor)

::

Extends from
[Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through),
[Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name Def Description
                                       aul 
                                       t   
  ------------------------------- ---- --- --------------------------------
  [Temperature](Modelica_SIunits. T\_r 293 Reference temperature [K]
  html#Modelica.SIunits.Temperatu ef   .15 
  re)                                      

  [LinearTemperatureCoefficient]( alph 0   Temperature coefficient of
  Modelica_SIunits.html#Modelica. a\_r     resistance (R\_actual =
  SIunits.LinearTemperatureCoeffi ef       R\_ref\*(1 +
  cient)                                   alpha\_ref\*(heatPort.T -
                                           T\_ref)) [1/K]

  Boolean                         useH fal =true, if HeatPort is enabled
                                  eatP se  
                                  ort      

  [Temperature](Modelica_SIunits. T    T\_ Fixed device temperature if
  html#Modelica.SIunits.Temperatu      ref useHeatPort = false [K]
  re)                                      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name  Descri
                                                                     ption
  ------------------------------------------------------------ ----- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhas pin\_ Positi
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single p     ve
  Phase.Interfaces.PositivePin)                                      pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhas pin\_ Negati
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single n     ve
  Phase.Interfaces.NegativePin)                                      pin

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.html# heatP 
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)         ort   

  input                                                        R\_re 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks. f     
  Interfaces.RealInput)                                              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableResistor "Singlephase variable resistor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref=0 
        "Temperature coefficient of resistance (R_actual = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Resistance R_actual 
        "Resistance = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
      Modelica.Blocks.Interfaces.RealInput R_ref;
    equation 
      assert((1 + alpha_ref*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      R_actual = R_ref*(1 + alpha_ref*(T_heatPort - T_ref));
      v = R_actual*i;
      LossPower = real(v*conj(i));
    end VariableResistor;

* * * * *

![image24](Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Basic](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic).VariableConductor
===================================================================================================================================================================================================================================================================================

**Singlephase variable conductor**

Information
-----------

::

The linear conductor connects the voltage *v* with the current *i* by *i
= G\*v*. The conductance *G* is given as input signal.

The variable conductor model also has an optional [conditional heat
port](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort).
A linear temperature dependency of the resistance for an enabled heat
port is also taken into account.

### See also

[Resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor)

::

Extends from
[Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through),
[Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name Def Description
                                       aul 
                                       t   
  ------------------------------- ---- --- --------------------------------
  [Temperature](Modelica_SIunits. T\_r 293 Reference temperature [K]
  html#Modelica.SIunits.Temperatu ef   .15 
  re)                                      

  [LinearTemperatureCoefficient]( alph 0   Temperature coefficient of
  Modelica_SIunits.html#Modelica. a\_r     conductance (G\_actual =
  SIunits.LinearTemperatureCoeffi ef       G\_ref/(1 +
  cient)                                   alpha\_ref\*(heatPort.T -
                                           T\_ref)) [1/K]

  Boolean                         useH fal =true, if HeatPort is enabled
                                  eatP se  
                                  ort      

  [Temperature](Modelica_SIunits. T    T\_ Fixed device temperature if
  html#Modelica.SIunits.Temperatu      ref useHeatPort = false [K]
  re)                                      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name  Descri
                                                                     ption
  ------------------------------------------------------------ ----- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhas pin\_ Positi
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single p     ve
  Phase.Interfaces.PositivePin)                                      pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhas pin\_ Negati
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single n     ve
  Phase.Interfaces.NegativePin)                                      pin

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.html# heatP 
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)         ort   

  input                                                        G\_re 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks. f     
  Interfaces.RealInput)                                              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableConductor "Singlephase variable conductor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref=0 
        "Temperature coefficient of conductance (G_actual = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Conductance G_actual 
        "Conductance = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
      Modelica.Blocks.Interfaces.RealInput G_ref;
    equation 
      assert((1 + alpha_ref*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      G_actual = G_ref/(1 + alpha_ref*(T_heatPort - T_ref));
      i = G_actual*v;
      LossPower = real(v*conj(i));
    end VariableConductor;

* * * * *

![image25](Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Basic](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic).VariableCapacitor
====================================================================================================================================================================================================================================================================================

**Singlephase variable capacitor**

Information
-----------

::

The linear capacitor connects the voltage *v* with the current *i* by *i
= j\*ω\*C\*v*. The capacitance *C* is given as input signal.

### Note

The abstraction of a variable capacitor at quasi stationary operation
assumes:
![image26](../Resources/Images/Electrical/QuasiStationary/SinglePhase/Basic/dc_dt.png).

### See also

[Resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor)

::

Extends from
[Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin

  input                                                         C    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks.I      
  nterfaces.RealInput)                                               
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableCapacitor "Singlephase variable capacitor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.j;
      Modelica.Blocks.Interfaces.RealInput C;
    equation 
      i = j*omega*C*v;
    end VariableCapacitor;

* * * * *

![image27](Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Basic](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic).VariableInductor
==================================================================================================================================================================================================================================================================================

**Singlephase variable inductor**

Information
-----------

::

The linear inductor connects the branch voltage *v* with the branch
current *i* by *v = j\*ω\*L\*i*. The inductance *L* is given as input
signal.

### Note

The abstraction of a variable inductor at quasi stationary operation
assumes:
![image28](../Resources/Images/Electrical/QuasiStationary/SinglePhase/Basic/dl_dt.png)

### See also

[Resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor)

::

Extends from
[Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin

  input                                                         L    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks.I      
  nterfaces.RealInput)                                               
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableInductor "Singlephase variable inductor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.j;
      Modelica.Blocks.Interfaces.RealInput L;
    equation 
      v = j*omega*L*i;
    end VariableInductor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:23 2010.
