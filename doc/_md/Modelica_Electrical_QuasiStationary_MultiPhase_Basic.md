% Modelica.Electrical.QuasiStationary.MultiPhase.Basic
% 
% 

[Modelica.Electrical.QuasiStationary.MultiPhase](Modelica_Electrical_QuasiStationary_MultiPhase.html#Modelica.Electrical.QuasiStationary.MultiPhase).Basic
==========================================================================================================================================================

**Basic components for AC multiphase models**

Information
-----------

::

This package hosts basic models for quasi stationary multiphase
circuits. Quasi stationary theory can be found in the
[references](Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References).

### See also

[SinglePhase.Basic](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic)

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
  ![image14](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Star
  c.StarS.png)                                                   connectio
  [Star](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.ht n
  ml#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star)  

  ![image15](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Delta
  c.DeltaS.png)                                                  (polygon)
  [Delta](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.h connectio
  tml#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Delta n
  )                                                              

  ![image16](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Connect
  c.PlugToPin_pS.png)                                            one
  [PlugToPin\_p](Modelica_Electrical_QuasiStationary_MultiPhase_ (positive
  Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basi )
  c.PlugToPin_p)                                                 pin

  ![image17](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Connect
  c.PlugToPin_nS.png)                                            one
  [PlugToPin\_n](Modelica_Electrical_QuasiStationary_MultiPhase_ (negative
  Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basi )
  c.PlugToPin_n)                                                 pin

  ![image18](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Connect
  c.PlugToPins_pS.png)                                           all
  [PlugToPins\_p](Modelica_Electrical_QuasiStationary_MultiPhase (positive
  _Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Bas )
  ic.PlugToPins_p)                                               pins

  ![image19](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Connect
  c.PlugToPins_nS.png)                                           all
  [PlugToPins\_n](Modelica_Electrical_QuasiStationary_MultiPhase (negative
  _Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Bas )
  ic.PlugToPins_n)                                               pins

  ![image20](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Multiphas
  c.ResistorS.png)                                               e
  [Resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basi linear
  c.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Re resistor
  sistor)                                                        

  ![image21](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Multiphas
  c.ResistorS.png)                                               e
  [Conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Bas linear
  ic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.C conductor
  onductor)                                                      

  ![image22](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Multiphas
  c.CapacitorS.png)                                              e
  [Capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Bas linear
  ic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.C capacitor
  apacitor)                                                      

  ![image23](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Multiphas
  c.InductorS.png)                                               e
  [Inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basi linear
  c.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.In inductor
  ductor)                                                        

  ![image24](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Multiphas
  c.VariableResistorS.png)                                       e
  [VariableResistor](Modelica_Electrical_QuasiStationary_MultiPh variable
  ase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase. resistor
  Basic.VariableResistor)                                        

  ![image25](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Multiphas
  c.VariableResistorS.png)                                       e
  [VariableConductor](Modelica_Electrical_QuasiStationary_MultiP variable
  hase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase conductor
  .Basic.VariableConductor)                                      

  ![image26](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Multiphas
  c.VariableCapacitorS.png)                                      e
  [VariableCapacitor](Modelica_Electrical_QuasiStationary_MultiP variable
  hase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase capacitor
  .Basic.VariableCapacitor)                                      

  ![image27](Modelica.Electrical.QuasiStationary.MultiPhase.Basi Multiphas
  c.VariableInductorS.png)                                       e
  [VariableInductor](Modelica_Electrical_QuasiStationary_MultiPh variable
  ase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase. inductor
  Basic.VariableInductor)                                        
  ------------------------------------------------------------------------

* * * * *

![image28](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.StarI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).Star
======================================================================================================================================================================================================================================================

**Star connection**

Information
-----------

::

Star (wye) connection of a multi phase circuit. The potentials at the
star points are the same.

### See also

[Delta](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Delta)

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   
  ase.Interfaces.NegativePin)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Star "Star connection"
      parameter Integer m(final min=1) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin pin_n;
      PlugToPins_p plugToPins_p;
    equation 
      for j in 1:m loop
        connect(plugToPins_p.pin_p[j], pin_n);
      end for;
      connect(plug_p, plugToPins_p.plug_p);
    end Star;

* * * * *

![image29](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.DeltaI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).Delta
========================================================================================================================================================================================================================================================

**Delta (polygon) connection**

Information
-----------

::

Delta (polygon) connection of a multi phase circuit.

### See also

[Star](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star)

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Delta "Delta (polygon) connection"
      parameter Integer m(final min=2) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n(final m=m);

      PlugToPins_p plugToPins_p;
      PlugToPins_n plugToPins_n;
    equation 
      for j in 1:m loop
        if j<m then
          connect(plugToPins_p.pin_p[j], plugToPins_n.pin_n[j+1]);
        else
          connect(plugToPins_p.pin_p[j], plugToPins_n.pin_n[1]);
        end if;
      end for;
      connect(plug_p, plugToPins_p.plug_p);
      connect(plugToPins_n.plug_n, plug_n);
    end Delta;

* * * * *

![image30](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_pI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).PlugToPin\_p
=====================================================================================================================================================================================================================================================================

**Connect one (positive) pin**

Information
-----------

::

Connects the single phase (positive) pin *k* of the multi phase
(positive) plug to a single phase (positive) pin.

### See also

[PlugToPin\_n](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_n),
[PlutToPins\_p](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p),
[PlugToPins\_n](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n)

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases
  Integer      k         1            Phase index

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   
  ase.Interfaces.PositivePin)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PlugToPin_p "Connect one (positive) pin"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Integer k(
        final min=1,
        final max=m) = 1 "Phase index";
      Interfaces.PositivePlug plug_p(final m=m);
      QuasiStationary.SinglePhase.Interfaces.PositivePin pin_p;
    equation 
      Connections.branch(plug_p.reference, pin_p.reference);
    //Connections.potentialRoot(plug_p.reference);
    //Connections.potentialRoot(pin_p.reference);
      plug_p.reference.gamma = pin_p.reference.gamma;
      pin_p.v = plug_p.pin[k].v;
      for j in 1:m loop
        plug_p.pin[j].i = if j == k then -pin_p.i else Complex(0);
       end for;
    end PlugToPin_p;

* * * * *

![image31](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_nI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).PlugToPin\_n
=====================================================================================================================================================================================================================================================================

**Connect one (negative) pin**

Information
-----------

::

Connects the single phase (negative) pin *k* of the multi phase
(negative) plug to a single phase (negative) pin.

### See also

[PlugToPin\_p](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_p),
[PlutToPins\_p](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p),
[PlugToPins\_n](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n)

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases
  Integer      k         1            Phase index

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   
  ase.Interfaces.NegativePin)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PlugToPin_n "Connect one (negative) pin"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Integer k(
        final min=1,
        final max=m) = 1 "Phase index";
      Interfaces.NegativePlug plug_n(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin pin_n;
    equation 
      Connections.branch(plug_n.reference, pin_n.reference);
    //Connections.potentialRoot(plug_n.reference);
    //Connections.potentialRoot(pin_n.reference);
      plug_n.reference.gamma = pin_n.reference.gamma;
      pin_n.v = plug_n.pin[k].v;
      for j in 1:m loop
        plug_n.pin[j].i = if j == k then -pin_n.i else Complex(0);
      end for;
    end PlugToPin_n;

* * * * *

![image32](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_pI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).PlugToPins\_p
=======================================================================================================================================================================================================================================================================

**Connect all (positive) pins**

Information
-----------

::

Connects all *m* single phase (positive) pins of the multi phase
(positive) plug to an array of *m* single phase (positive) pins.

### See also

[PlugToPin\_p](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_p),
[PlugToPin\_n](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_n),
[PlugToPins\_n](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n)

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name  Descri
                                                                     ption
  ------------------------------------------------------------ ----- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhas plug\ 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiP _p    
  hase.Interfaces.PositivePlug)                                      

  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhas pin\_ 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single p[m]  
  Phase.Interfaces.PositivePin)                                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PlugToPins_p "Connect all (positive) pins"
      parameter Integer m(final min=1) = 3 "number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      QuasiStationary.SinglePhase.Interfaces.PositivePin pin_p[m];
      PlugToPin_p plugToPin_p[m](each final m=m, final k={j for j in 1:m});
    equation 
      for j in 1:m loop
    /*
        Connections.branch(plug_p.reference, pin_p[j].reference);
        plug_p.reference.gamma = pin_p[j].reference.gamma;
        plug_p.pin[j].v = pin_p[j].v;
        plug_p.pin[j].i = -pin_p[j].i;
    */
        connect(plug_p, plugToPin_p[j].plug_p);
        connect(plugToPin_p[j].pin_p, pin_p[j]);
      end for;
    end PlugToPins_p;

* * * * *

![image33](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_nI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).PlugToPins\_n
=======================================================================================================================================================================================================================================================================

**Connect all (negative) pins**

Information
-----------

::

Connects all *m* single phase (negative) pins of the multi phase
(negative) plug to an array of *m* single phase (negative) pins.

### See also

[PlugToPin\_p](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_p),
[PlugToPin\_n](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_n),
[PlugToPins\_p](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p)

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name  Descri
                                                                     ption
  ------------------------------------------------------------ ----- ------
  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhas plug\ 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiP _n    
  hase.Interfaces.NegativePlug)                                      

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhas pin\_ 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single n[m]  
  Phase.Interfaces.NegativePin)                                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PlugToPins_n "Connect all (negative) pins"
      parameter Integer m(final min=1) = 3 "number of phases";
      Interfaces.NegativePlug plug_n(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin pin_n[m];
      PlugToPin_n plugToPin_n[m](each final m=m, final k={j for j in 1:m});
    equation 
      for j in 1:m loop
    /*
        Connections.branch(plug_n.reference, pin_n[j].reference);
        plug_n.reference.gamma = pin_n[j].reference.gamma;
        plug_n.pin[j].v = pin_n[j].v;
        plug_n.pin[j].i = -pin_n[j].i;
    */
        connect(plug_n, plugToPin_n[j].plug_n);
        connect(plugToPin_n[j].pin_n, pin_n[j]);
      end for;
    end PlugToPins_n;

* * * * *

![image34](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.ResistorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).Resistor
==============================================================================================================================================================================================================================================================

**Multiphase linear resistor**

Information
-----------

::

The linear resistor connects the complex voltages *v* with the complex
currents *i* by *i\*R = v*, using *m* [single phase
Resistors](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor).

The resistor model also has *m* optional [conditional heat
ports](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort).
A linear temperature dependency of the resistances for enabled heat
ports is also taken into account.

### See also

[Resistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  --------------------------------------------------------------------------
  Type                           Name  Defau Description
                                       lt    
  ------------------------------ ----- ----- -------------------------------
  Integer                        m     3     Number of phases

  [Resistance](Modelica_SIunits. R\_re       Reference resistances at T\_ref
  html#Modelica.SIunits.Resistan f[m]        [Ohm]
  ce)                                        

  [Temperature](Modelica_SIunits T\_re fill( Reference temperatures [K]
  .html#Modelica.SIunits.Tempera f[m]  293.1 
  ture)                                5,    
                                       m)    

  [LinearTemperatureCoefficient] alpha zeros Temperature coefficient of
  (Modelica_SIunits.html#Modelic \_ref (m)   resistance (R\_actual =
  a.SIunits.LinearTemperatureCoe [m]         R\_ref\*(1 +
  fficient)                                  alpha\_ref\*(heatPort.T -
                                             T\_ref)) [1/K]

  Integer                        mh    m     Number of heatPorts=number of
                                             phases

  Boolean                        useHe false =true, if all HeatPorts are
                                 atPor       enabled
                                 t           

  [Temperature](Modelica_SIunits T[mh] T\_re Fixed device temperatures if
  .html#Modelica.SIunits.Tempera       f     useHeatPort = false [K]
  ture)                                      
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name   Descri
                                                                     ption
  ----------------------------------------------------------- ------ ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPha plug\_ 
  se_Interfaces.html#Modelica.Electrical.QuasiStationary.Mult p      
  iPhase.Interfaces.PositivePlug)                                    

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPha plug\_ 
  se_Interfaces.html#Modelica.Electrical.QuasiStationary.Mult n      
  iPhase.Interfaces.NegativePlug)                                    

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.html heatPo 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)       rt[mh] 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Resistor "Multiphase linear resistor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance R_ref[m](start=fill(1,m)) 
        "Reference resistances at T_ref";
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(293.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref[m]=zeros(m) 
        "Temperature coefficient of resistance (R_actual = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T=T_ref);
      QuasiStationary.SinglePhase.Basic.Resistor resistor[
                                          m](
        final R_ref=R_ref,
        final T_ref=T_ref,
        final alpha_ref=alpha_ref,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 
      connect(plugToPins_p.pin_p, resistor.pin_p);
      connect(resistor.pin_n, plugToPins_n.pin_n);
      connect(resistor.heatPort, heatPort);
    end Resistor;

* * * * *

![image35](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.ResistorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).Conductor
===============================================================================================================================================================================================================================================================

**Multiphase linear conductor**

Information
-----------

::

The linear resistor connects the complex currents *i* with the complex
voltages *v* by *v\*G = i*, using *m* [single phase
Conductors](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor).

The conductor model also has *m* optional [conditional heat
ports](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort).
A linear temperature dependency of the conductances for enabled heat
ports is also taken into account.

### See also

[Conductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor),
[Resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor),
[Capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  --------------------------------------------------------------------------
  Type                           Name  Defau Description
                                       lt    
  ------------------------------ ----- ----- -------------------------------
  Integer                        m     3     Number of phases

  [Conductance](Modelica_SIunits G\_re       Reference conductances at
  .html#Modelica.SIunits.Conduct f[m]        T\_ref [S]
  ance)                                      

  [Temperature](Modelica_SIunits T\_re fill( Reference temperatures [K]
  .html#Modelica.SIunits.Tempera f[m]  293.1 
  ture)                                5,    
                                       m)    

  [LinearTemperatureCoefficient] alpha zeros Temperature coefficient of
  (Modelica_SIunits.html#Modelic \_ref (m)   conductance (G\_actual =
  a.SIunits.LinearTemperatureCoe [m]         G\_ref/(1 +
  fficient)                                  alpha\_ref\*(heatPort.T -
                                             T\_ref)) [1/K]

  Integer                        mh    m     Number of heatPorts=number of
                                             phases

  Boolean                        useHe false =true, if all HeatPorts are
                                 atPor       enabled
                                 t           

  [Temperature](Modelica_SIunits T[mh] T\_re Fixed device temperatures if
  .html#Modelica.SIunits.Tempera       f     useHeatPort = false [K]
  ture)                                      
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name   Descri
                                                                     ption
  ----------------------------------------------------------- ------ ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPha plug\_ 
  se_Interfaces.html#Modelica.Electrical.QuasiStationary.Mult p      
  iPhase.Interfaces.PositivePlug)                                    

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPha plug\_ 
  se_Interfaces.html#Modelica.Electrical.QuasiStationary.Mult n      
  iPhase.Interfaces.NegativePlug)                                    

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.html heatPo 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)       rt[mh] 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Conductor "Multiphase linear conductor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Conductance G_ref[m](start=fill(1,m)) 
        "Reference conductances at T_ref";
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(293.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref[m]=zeros(m) 
        "Temperature coefficient of conductance (G_actual = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T=T_ref);
      QuasiStationary.SinglePhase.Basic.Conductor conductor[
                                            m](
        final G_ref=G_ref,
        final T_ref=T_ref,
        final alpha_ref=alpha_ref,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 
      connect(plugToPins_p.pin_p, conductor.pin_p);
      connect(conductor.pin_n, plugToPins_n.pin_n);
      connect(conductor.heatPort, heatPort);
    end Conductor;

* * * * *

![image36](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.CapacitorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).Capacitor
================================================================================================================================================================================================================================================================

**Multiphase linear capacitor**

Information
-----------

::

The linear capacitor connects the complex currents *i* with the complex
voltages *v* by *v\*j\*ω\*C = i*, using *m* [single phase
Capacitors](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor).

### See also

[Capacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor),
[Resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor),
[Inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- -------------
  Integer                                       m     3       Number of
                                                              phases

  [Capacitance](Modelica_SIunits.html#Modelica. C[m]          Capacitances
  SIunits.Capacitance)                                        [F]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Capacitor "Multiphase linear capacitor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Capacitance C[m](start=fill(1,m)) "Capacitances";
      QuasiStationary.SinglePhase.Basic.Capacitor capacitor[
                                            m](final C=C);
    equation 
      connect(plugToPins_p.pin_p, capacitor.pin_p);
      connect(capacitor.pin_n, plugToPins_n.pin_n);
    end Capacitor;

* * * * *

![image37](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.InductorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).Inductor
==============================================================================================================================================================================================================================================================

**Multiphase linear inductor**

Information
-----------

::

The linear inductor connects the complex voltages *v* with the complex
currents *i* by *i\*j\*ω\*L = v*, using *m* [single phase
Inductors](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor).

### See also

[Inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor),
[Resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- -------------
  Integer                                       m     3       Number of
                                                              phases

  [Inductance](Modelica_SIunits.html#Modelica.S L[m]          Inductances
  Iunits.Inductance)                                          [H]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Inductor "Multiphase linear inductor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Inductance L[m](start=fill(1,m)) "Inductances";
      QuasiStationary.SinglePhase.Basic.Inductor inductor[
                                          m](final L=L);
    equation 

      connect(plugToPins_p.pin_p, inductor.pin_p);
      connect(inductor.pin_n, plugToPins_n.pin_n);
    end Inductor;

* * * * *

![image38](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).VariableResistor
==============================================================================================================================================================================================================================================================================

**Multiphase variable resistor**

Information
-----------

::

The linear resistor connects the complex voltages *v* with the complex
currents *i* by *i\*R = v*, using *m* [single phase variable
Resistors](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor).
The resistances *R* are given as *m* input signals.

The resistor model also has *m* optional [conditional heat
ports](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort).
A linear temperature dependency of the resistances for enabled heat
ports is also taken into account.

### See also

[VariableResistor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor),
[Resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  --------------------------------------------------------------------------
  Type                           Name  Defau Description
                                       lt    
  ------------------------------ ----- ----- -------------------------------
  Integer                        m     3     Number of phases

  [Temperature](Modelica_SIunits T\_re fill( Reference temperatures [K]
  .html#Modelica.SIunits.Tempera f[m]  293.1 
  ture)                                5,    
                                       m)    

  [LinearTemperatureCoefficient] alpha zeros Temperature coefficient of
  (Modelica_SIunits.html#Modelic \_ref (m)   resistance (R\_actual =
  a.SIunits.LinearTemperatureCoe [m]         R\_ref\*(1 +
  fficient)                                  alpha\_ref\*(heatPort.T -
                                             T\_ref)) [1/K]

  Integer                        mh    m     Number of heatPorts=number of
                                             phases

  Boolean                        useHe false =true, if all HeatPorts are
                                 atPor       enabled
                                 t           

  [Temperature](Modelica_SIunits T[mh] T\_re Fixed device temperatures if
  .html#Modelica.SIunits.Tempera       f     useHeatPort = false [K]
  ture)                                      
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name   Descri
                                                                     ption
  ----------------------------------------------------------- ------ ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPha plug\_ 
  se_Interfaces.html#Modelica.Electrical.QuasiStationary.Mult p      
  iPhase.Interfaces.PositivePlug)                                    

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPha plug\_ 
  se_Interfaces.html#Modelica.Electrical.QuasiStationary.Mult n      
  iPhase.Interfaces.NegativePlug)                                    

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.html heatPo 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)       rt[mh] 

  input                                                       R\_ref 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks [m]    
  .Interfaces.RealInput)                                             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableResistor "Multiphase variable resistor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(293.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref[m]=zeros(m) 
        "Temperature coefficient of resistance (R_actual = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T=T_ref);
      Modelica.Blocks.Interfaces.RealInput R_ref[m];
      QuasiStationary.SinglePhase.Basic.VariableResistor variableResistor[
                                                          m](
        final T_ref=T_ref,
        final alpha_ref=alpha_ref,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 

      connect(variableResistor.pin_p, plugToPins_p.pin_p);
      connect(variableResistor.pin_n, plugToPins_n.pin_n);
      connect(variableResistor.heatPort, heatPort);
      connect(R_ref, variableResistor.R_ref);
    end VariableResistor;

* * * * *

![image39](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).VariableConductor
===============================================================================================================================================================================================================================================================================

**Multiphase variable conductor**

Information
-----------

::

The linear resistor connects the complex currents *i* with the complex
voltages *v* by *v\*G = i*, using *m* [single phase variable
Conductors](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor).
The conductances *G* are given as *m* input signals.

The conductor model also has *m* optional [conditional heat
ports](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort).
A linear temperature dependency of the conductances for enabled heat
ports is also taken into account.

### See also

[VariableConductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor),
[Resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name  Defau Description
                                       lt    
  ------------------------------ ----- ----- ------------------------------
  Integer                        m     3     Number of phases

  [Temperature](Modelica_SIunits T\_re fill( Reference temperatures [K]
  .html#Modelica.SIunits.Tempera f[m]  293.1 
  ture)                                5,    
                                       m)    

  [LinearTemperatureCoefficient] alpha zeros Temperature coefficient of
  (Modelica_SIunits.html#Modelic \_ref (m)   resistance (G\_actual =
  a.SIunits.LinearTemperatureCoe [m]         G\_ref/(1 +
  fficient)                                  alpha\_ref\*(heatPort.T -
                                             T\_ref)) [1/K]

  Integer                        mh    m     Number of heatPorts=number of
                                             phases

  Boolean                        useHe false =true, if all HeatPorts are
                                 atPor       enabled
                                 t           

  [Temperature](Modelica_SIunits T[mh] T\_re Fixed device temperatures if
  .html#Modelica.SIunits.Tempera       f     useHeatPort = false [K]
  ture)                                      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name   Descri
                                                                     ption
  ----------------------------------------------------------- ------ ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPha plug\_ 
  se_Interfaces.html#Modelica.Electrical.QuasiStationary.Mult p      
  iPhase.Interfaces.PositivePlug)                                    

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPha plug\_ 
  se_Interfaces.html#Modelica.Electrical.QuasiStationary.Mult n      
  iPhase.Interfaces.NegativePlug)                                    

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.html heatPo 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)       rt[mh] 

  input                                                       G\_ref 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks [m]    
  .Interfaces.RealInput)                                             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableConductor "Multiphase variable conductor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(293.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref[m]=zeros(m) 
        "Temperature coefficient of resistance (G_actual = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T=T_ref);
      Modelica.Blocks.Interfaces.RealInput G_ref[m];
      QuasiStationary.SinglePhase.Basic.VariableConductor variableResistor[
                                                           m](
        final T_ref=T_ref,
        final alpha_ref=alpha_ref,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 
      connect(variableResistor.pin_p, plugToPins_p.pin_p);
      connect(variableResistor.pin_n, plugToPins_n.pin_n);
      connect(variableResistor.heatPort, heatPort);
      connect(G_ref, variableResistor.G_ref);
    end VariableConductor;

* * * * *

![image40](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).VariableCapacitor
================================================================================================================================================================================================================================================================================

**Multiphase variable capacitor**

Information
-----------

::

The linear capacitor connects the complex currents *i* with the complex
voltages *v* by *v\*j\*ω\*C = i*, using *m* [single phase variable
Capacitors](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor).
The capacitances *C* are given as *m* input signals.

### See also

[VariableCapacitor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor),
[Resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor),
[Variable
inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        

  input                                                         C[m] 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks.I      
  nterfaces.RealInput)                                               
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableCapacitor "Multiphase variable capacitor"
      extends Interfaces.TwoPlug;
      Modelica.Blocks.Interfaces.RealInput C[m];
      QuasiStationary.SinglePhase.Basic.VariableCapacitor variableCapacitor[
                                                            m];
    equation 
      connect(variableCapacitor.pin_p, plugToPins_p.pin_p);
      connect(variableCapacitor.pin_n, plugToPins_n.pin_n);
      connect(C, variableCapacitor.C);
    end VariableCapacitor;

* * * * *

![image41](Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Basic](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic).VariableInductor
==============================================================================================================================================================================================================================================================================

**Multiphase variable inductor**

Information
-----------

::

The linear inductor connects the complex voltages *v* with the complex
currents *i* by *i\*j\*ω\*L = v*, using *m* [single phase variable
Inductors](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor).
The inductances *L* are given as *m* input signals.

### See also

[Inductor](Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor),
[Resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor),
[Conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor),
[Capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor),
[Inductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor),
[Variable
resistor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor),
[Variable
conductor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor),
[Variable
capacitor](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        

  input                                                         L[m] 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks.I      
  nterfaces.RealInput)                                               
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableInductor "Multiphase variable inductor"
      extends Interfaces.TwoPlug;
      Modelica.Blocks.Interfaces.RealInput L[m];
      QuasiStationary.SinglePhase.Basic.VariableInductor variableInductor[
                                                          m];
    equation 
      connect(variableInductor.pin_p, plugToPins_p.pin_p);
      connect(variableInductor.pin_n, plugToPins_n.pin_n);
      connect(variableInductor.L, L);
    end VariableInductor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:41 2010.
