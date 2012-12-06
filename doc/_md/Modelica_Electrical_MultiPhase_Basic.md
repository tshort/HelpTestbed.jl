% Modelica.Electrical.MultiPhase.Basic
% 
% 

[Modelica.Electrical.MultiPhase](Modelica_Electrical_MultiPhase.html#Modelica.Electrical.MultiPhase).Basic
==========================================================================================================

**Basic components for electrical multiphase models**

Information
-----------

::

This package contains basic analog electrical multiphase components.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                  Description
  ----------------------------------------------------- ------------------
  ![image18](Modelica.Electrical.MultiPhase.Basic.StarS Star-connection
  .png)                                                 
  [Star](Modelica_Electrical_MultiPhase_Basic.html#Mode 
  lica.Electrical.MultiPhase.Basic.Star)                

  ![image19](Modelica.Electrical.MultiPhase.Basic.Delta Delta (polygon)
  S.png)                                                connection
  [Delta](Modelica_Electrical_MultiPhase_Basic.html#Mod 
  elica.Electrical.MultiPhase.Basic.Delta)              

  ![image20](Modelica.Electrical.MultiPhase.Basic.PlugT Connect one
  oPin_pS.png)                                          (positive) Pin
  [PlugToPin\_p](Modelica_Electrical_MultiPhase_Basic.h 
  tml#Modelica.Electrical.MultiPhase.Basic.PlugToPin_p) 

  ![image21](Modelica.Electrical.MultiPhase.Basic.PlugT Connect one
  oPin_nS.png)                                          (negative) Pin
  [PlugToPin\_n](Modelica_Electrical_MultiPhase_Basic.h 
  tml#Modelica.Electrical.MultiPhase.Basic.PlugToPin_n) 

  ![image22](Modelica.Electrical.MultiPhase.Basic.PlugT Connect all
  oPins_pS.png)                                         (positive) Pins
  [PlugToPins\_p](Modelica_Electrical_MultiPhase_Basic. 
  html#Modelica.Electrical.MultiPhase.Basic.PlugToPins_ 
  p)                                                    

  ![image23](Modelica.Electrical.MultiPhase.Basic.PlugT Connect all
  oPins_nS.png)                                         (negative) Pins
  [PlugToPins\_n](Modelica_Electrical_MultiPhase_Basic. 
  html#Modelica.Electrical.MultiPhase.Basic.PlugToPins_ 
  n)                                                    

  ![image24](Modelica.Electrical.MultiPhase.Basic.Resis Ideal linear
  torS.png)                                             electrical
  [Resistor](Modelica_Electrical_MultiPhase_Basic.html# resistors
  Modelica.Electrical.MultiPhase.Basic.Resistor)        

  ![image25](Modelica.Electrical.MultiPhase.Basic.Resis Ideal linear
  torS.png)                                             electrical
  [Conductor](Modelica_Electrical_MultiPhase_Basic.html conductors
  #Modelica.Electrical.MultiPhase.Basic.Conductor)      

  ![image26](Modelica.Electrical.MultiPhase.Basic.Capac Ideal linear
  itorS.png)                                            electrical
  [Capacitor](Modelica_Electrical_MultiPhase_Basic.html capacitors
  #Modelica.Electrical.MultiPhase.Basic.Capacitor)      

  ![image27](Modelica.Electrical.MultiPhase.Basic.Induc Ideal linear
  torS.png)                                             electrical
  [Inductor](Modelica_Electrical_MultiPhase_Basic.html# inductors
  Modelica.Electrical.MultiPhase.Basic.Inductor)        

  ![image28](Modelica.Electrical.MultiPhase.Basic.Satur Simple model of
  atingInductorS.png)                                   inductors with
  [SaturatingInductor](Modelica_Electrical_MultiPhase_B saturation
  asic.html#Modelica.Electrical.MultiPhase.Basic.Satura 
  tingInductor)                                         

  ![image29](Modelica.Electrical.MultiPhase.Basic.Mutua Linear mutual
  lInductorS.png)                                       inductor
  [MutualInductor](Modelica_Electrical_MultiPhase_Basic 
  .html#Modelica.Electrical.MultiPhase.Basic.MutualIndu 
  ctor)                                                 

  ![image30](Modelica.Electrical.MultiPhase.Basic.ZeroI Linear zero
  nductorS.png)                                         sequence inductor
  [ZeroInductor](Modelica_Electrical_MultiPhase_Basic.h 
  tml#Modelica.Electrical.MultiPhase.Basic.ZeroInductor 
  )                                                     

  ![image31](Modelica.Electrical.MultiPhase.Basic.Trans Multiphase
  formerS.png)                                          Transformer
  [Transformer](Modelica_Electrical_MultiPhase_Basic.ht 
  ml#Modelica.Electrical.MultiPhase.Basic.Transformer)  

  ![image32](Modelica.Electrical.MultiPhase.Basic.Varia Ideal linear
  bleResistorS.png)                                     electrical
  [VariableResistor](Modelica_Electrical_MultiPhase_Bas resistors with
  ic.html#Modelica.Electrical.MultiPhase.Basic.Variable variable
  Resistor)                                             resistance

  ![image33](Modelica.Electrical.MultiPhase.Basic.Varia Ideal linear
  bleResistorS.png)                                     electrical
  [VariableConductor](Modelica_Electrical_MultiPhase_Ba conductors with
  sic.html#Modelica.Electrical.MultiPhase.Basic.Variabl variable
  eConductor)                                           conductance

  ![image34](Modelica.Electrical.MultiPhase.Basic.Varia Ideal linear
  bleCapacitorS.png)                                    electrical
  [VariableCapacitor](Modelica_Electrical_MultiPhase_Ba capacitors with
  sic.html#Modelica.Electrical.MultiPhase.Basic.Variabl variable
  eCapacitor)                                           capacitance

  ![image35](Modelica.Electrical.MultiPhase.Basic.Varia Ideal linear
  bleInductorS.png)                                     electrical
  [VariableInductor](Modelica_Electrical_MultiPhase_Bas inductors with
  ic.html#Modelica.Electrical.MultiPhase.Basic.Variable variable
  Inductor)                                             inductance
  ------------------------------------------------------------------------

* * * * *

![image36](Modelica.Electrical.MultiPhase.Basic.StarI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).Star
======================================================================================================================================================================================

**Star-connection**

Information
-----------

::

Connects all pins of plug\_p to pin\_n, thus establishing a so-called
star-connection.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html#M pin\_ 
  odelica.Electrical.Analog.Interfaces.NegativePin)          n     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Star "Star-connection"
      parameter Integer m(final min=1) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n;

    equation 
      for j in 1:m loop
        plug_p.pin[j].v = pin_n.v;
      end for;
      sum(plug_p.pin.i) + pin_n.i = 0;
    end Star;

* * * * *

![image37](Modelica.Electrical.MultiPhase.Basic.DeltaI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).Delta
========================================================================================================================================================================================

**Delta (polygon) connection**

Information
-----------

::

Connects in a cyclic way plug\_n.pin[j] to plug\_p.pin[j+1], thus
establishing a so-called delta (or polygon) connection when used in
parallel to another component.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Delta "Delta (polygon) connection"
      parameter Integer m(final min=2) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n(final m=m);

    equation 
      for j in 1:m loop
        if j<m then
          plug_n.pin[j].v = plug_p.pin[j+1].v;
          plug_n.pin[j].i + plug_p.pin[j+1].i = 0;
        else
          plug_n.pin[j].v = plug_p.pin[1].v;
          plug_n.pin[j].i + plug_p.pin[1].i = 0;
        end if;
      end for;
    end Delta;

* * * * *

![image38](Modelica.Electrical.MultiPhase.Basic.PlugToPin_pI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).PlugToPin\_p
=====================================================================================================================================================================================================

**Connect one (positive) Pin**

Information
-----------

::

Connects pin *k* of plug\_p to pin\_p, leaving the other pins of plug\_p
unconnected.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases
  Integer      k                      Phase index

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [PositivePin](Modelica_Electrical_Analog_Interfaces.html#M pin\_ 
  odelica.Electrical.Analog.Interfaces.PositivePin)          p     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model PlugToPin_p "Connect one (positive) Pin"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Integer k(final min=1, final max=m, start = 1) "Phase index";
      Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p;
    equation 
      pin_p.v = plug_p.pin[k].v;
      for j in 1:m loop
        plug_p.pin[j].i = if j == k then -pin_p.i else 0;
      end for;
    end PlugToPin_p;

* * * * *

![image39](Modelica.Electrical.MultiPhase.Basic.PlugToPin_nI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).PlugToPin\_n
=====================================================================================================================================================================================================

**Connect one (negative) Pin**

Information
-----------

::

Connects pin *k* of plug\_n to pin\_n, leaving the other pins of plug\_n
unconnected.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases
  Integer      k                      Phase index

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html#M pin\_ 
  odelica.Electrical.Analog.Interfaces.NegativePin)          n     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model PlugToPin_n "Connect one (negative) Pin"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Integer k(final min=1, final max=m, start = 1) "Phase index";
      Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n;
    equation 
      pin_n.v = plug_n.pin[k].v;
      for j in 1:m loop
        plug_n.pin[j].i = if j == k then -pin_n.i else 0;
      end for;
    end PlugToPin_n;

* * * * *

![image40](Modelica.Electrical.MultiPhase.Basic.PlugToPins_pI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).PlugToPins\_p
=======================================================================================================================================================================================================

**Connect all (positive) Pins**

Information
-----------

::

Connects all pins of plug\_p to the pin array pin\_p.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name   Descrip
                                                                   tion
  --------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces. plug\_ 
  html#Modelica.Electrical.MultiPhase.Interfaces.PositivePl p      
  ug)                                                              

  [PositivePin](Modelica_Electrical_Analog_Interfaces.html# pin\_p 
  Modelica.Electrical.Analog.Interfaces.PositivePin)        [m]    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model PlugToPins_p "Connect all (positive) Pins"
      parameter Integer m(final min=1) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p[m];
    equation 
      pin_p.v = plug_p.pin.v;
      plug_p.pin.i = -pin_p.i;
    end PlugToPins_p;

* * * * *

![image41](Modelica.Electrical.MultiPhase.Basic.PlugToPins_nI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).PlugToPins\_n
=======================================================================================================================================================================================================

**Connect all (negative) Pins**

Information
-----------

::

Connects all pins of plug\_n to the pin array pin\_n.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name   Descrip
                                                                   tion
  --------------------------------------------------------- ------ -------
  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces. plug\_ 
  html#Modelica.Electrical.MultiPhase.Interfaces.NegativePl n      
  ug)                                                              

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# pin\_n 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        [m]    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model PlugToPins_n "Connect all (negative) Pins"
      parameter Integer m(final min=1) = 3 "Number of phases";
      Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n[m];
    equation 
      pin_n.v = plug_n.pin.v;
      plug_n.pin.i = -pin_n.i;
    end PlugToPins_n;

* * * * *

![image42](Modelica.Electrical.MultiPhase.Basic.ResistorI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).Resistor
==============================================================================================================================================================================================

**Ideal linear electrical resistors**

Information
-----------

::

Contains m resistors (Modelica.Electrical.Analog.Basic.Resistor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                Name  Defaul Description
                                            t      
  ----------------------------------- ----- ------ -------------------------
  Integer                             m     3      Number of phases

  [Resistance](Modelica_SIunits.html# R[m]         Resistances R\_ref at
  Modelica.SIunits.Resistance)                     temperatures T\_ref [Ohm]

  [Temperature](Modelica_SIunits.html T\_re fill(3 Reference temperatures
  #Modelica.SIunits.Temperature)      f[m]  00.15, [K]
                                            m)     

  [LinearTemperatureCoefficient](Mode alpha zeros( Temperature coefficients
  lica_SIunits.html#Modelica.SIunits. [m]   m)     of resistances at
  LinearTemperatureCoefficient)                    reference temperatures
                                                   [1/K]

  Integer                             mh    m      Number of
                                                   heatPorts=number of
                                                   phases

  Boolean                             useHe false  =true, if all HeatPorts
                                      atPor        are enabled
                                      t            

  [Temperature](Modelica_SIunits.html T[mh] T\_ref Fixed device temperatures
  #Modelica.SIunits.Temperature)                   if useHeatPort = false
                                                   [K]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces plug\_p 
  .html#Modelica.Electrical.MultiPhase.Interfaces.Positive         
  Plug)                                                            

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces plug\_n 
  .html#Modelica.Electrical.MultiPhase.Interfaces.Negative         
  Plug)                                                            

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.h heatPor 
  tml#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a) t[mh]   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Resistor "Ideal linear electrical resistors"
      extends Interfaces.TwoPlug;
        parameter Modelica.SIunits.Resistance R[m](start=fill(1,m)) 
        "Resistances R_ref at temperatures T_ref";
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(300.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha[m]=zeros(m) 
        "Temperature coefficients of resistances at reference temperatures";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T = T_ref);
      Modelica.Electrical.Analog.Basic.Resistor resistor[m](
        final R=R,
        final T_ref=T_ref,
        final alpha=alpha,
        each final useHeatPort = useHeatPort,
        final T=T);
    equation 
      connect(resistor.p, plug_p.pin);
      connect(resistor.n, plug_n.pin);
      connect(resistor.heatPort, heatPort);
    end Resistor;

* * * * *

![image43](Modelica.Electrical.MultiPhase.Basic.ResistorI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).Conductor
===============================================================================================================================================================================================

**Ideal linear electrical conductors**

Information
-----------

::

Contains m conductors (Modelica.Electrical.Analog.Basic.Conductor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name  Defaul Description
                                           t      
  ---------------------------------- ----- ------ -------------------------
  Integer                            m     3      Number of phases

  [Conductance](Modelica_SIunits.htm G[m]         Conductances G\_ref at
  l#Modelica.SIunits.Conductance)                 temperatures T\_ref [S]

  [Temperature](Modelica_SIunits.htm T\_re fill(3 Reference temperatures
  l#Modelica.SIunits.Temperature)    f[m]  00.15, [K]
                                           m)     

  [LinearTemperatureCoefficient](Mod alpha zeros( Temperature coefficients
  elica_SIunits.html#Modelica.SIunit [m]   m)     of conductances at
  s.LinearTemperatureCoefficient)                 reference temperatures
                                                  [1/K]

  Integer                            mh    m      Number of
                                                  heatPorts=number of
                                                  phases

  Boolean                            useHe false  =true, if all HeatPorts
                                     atPor        are enabled
                                     t            

  [Temperature](Modelica_SIunits.htm T[mh] T\_ref Fixed device temperatures
  l#Modelica.SIunits.Temperature)                 if useHeatPort = false
                                                  [K]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces plug\_p 
  .html#Modelica.Electrical.MultiPhase.Interfaces.Positive         
  Plug)                                                            

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces plug\_n 
  .html#Modelica.Electrical.MultiPhase.Interfaces.Negative         
  Plug)                                                            

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.h heatPor 
  tml#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a) t[mh]   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Conductor "Ideal linear electrical conductors"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Conductance G[m](start=fill(1,m)) 
        "Conductances G_ref at temperatures T_ref";
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(300.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha[m]=zeros(m) 
        "Temperature coefficients of conductances at reference temperatures";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T = T_ref);
      Modelica.Electrical.Analog.Basic.Conductor conductor[m](
        final G=G,
        final T_ref=T_ref,
        final alpha=alpha,
        each final useHeatPort = useHeatPort,
        final T=T);
    equation 
      connect(plug_p.pin, conductor.p);
      connect(plug_n.pin, conductor.n);
      connect(conductor.heatPort, heatPort);
    end Conductor;

* * * * *

![image44](Modelica.Electrical.MultiPhase.Basic.CapacitorI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).Capacitor
================================================================================================================================================================================================

**Ideal linear electrical capacitors**

Information
-----------

::

Contains m capacitors (Modelica.Electrical.Analog.Basic.Capacitor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- -------------
  Integer                                       m     3       Number of
                                                              phases

  [Capacitance](Modelica_SIunits.html#Modelica. C[m]          Capacitance
  SIunits.Capacitance)                                        [F]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Capacitor "Ideal linear electrical capacitors"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Capacitance C[m](start=fill(1, m)) "Capacitance";
      Modelica.Electrical.Analog.Basic.Capacitor capacitor[m](final C=C);
    equation 
      connect(capacitor.p, plug_p.pin);
      connect(capacitor.n, plug_n.pin);
    end Capacitor;

* * * * *

![image45](Modelica.Electrical.MultiPhase.Basic.InductorI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).Inductor
==============================================================================================================================================================================================

**Ideal linear electrical inductors**

Information
-----------

::

Contains m inductors (Modelica.Electrical.Analog.Basic.Inductor)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- -------------
  Integer                                       m     3       Number of
                                                              phases

  [Inductance](Modelica_SIunits.html#Modelica.S L[m]          Inductance
  Iunits.Inductance)                                          [H]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Inductor "Ideal linear electrical inductors"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Inductance L[m](start=fill(1, m)) "Inductance";
      Modelica.Electrical.Analog.Basic.Inductor inductor[m](final L=L);
    equation 
      connect(inductor.p, plug_p.pin);
      connect(inductor.n, plug_n.pin);
    end Inductor;

* * * * *

![image46](Modelica.Electrical.MultiPhase.Basic.SaturatingInductorI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).SaturatingInductor
==================================================================================================================================================================================================================

**Simple model of inductors with saturation**

Information
-----------

::

Contains m saturating inductors
(Modelica.Electrical.Analog.Basic.SaturatingInductor)

**Attention!!!**
  ~ Each element of the array of saturatingInductors is only dependent
    on

the current flowing through this element.

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                 Name   Defaul Description
                                              t      
  ------------------------------------ ------ ------ -----------------------
  Integer                              m      3      Number of phases

  [Current](Modelica_SIunits.html#Mode Inom[m        Nominal current [A]
  lica.SIunits.Current)                ]             

  [Inductance](Modelica_SIunits.html#M Lnom[m        Nominal inductance at
  odelica.SIunits.Inductance)          ]             Nominal current [H]

  [Inductance](Modelica_SIunits.html#M Lzer[m        Inductance near
  odelica.SIunits.Inductance)          ]             current=0 [H]

  [Inductance](Modelica_SIunits.html#M Linf[m        Inductance at large
  odelica.SIunits.Inductance)          ]             currents [H]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SaturatingInductor "Simple model of inductors with saturation"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Current Inom[m](start=fill(1,m)) "Nominal current";
      parameter Modelica.SIunits.Inductance Lnom[m](start=fill(1,m)) 
        "Nominal inductance at Nominal current";
      parameter Modelica.SIunits.Inductance Lzer[m](start={2*Lnom[j] for j in 1:m}) 
        "Inductance near current=0";
      parameter Modelica.SIunits.Inductance Linf[m](start={Lnom[j]/2 for j in 1:m}) 
        "Inductance at large currents";
      Modelica.Electrical.Analog.Basic.SaturatingInductor saturatingInductor[m](
        final Inom=Inom,
        final Lnom=Lnom,
        final Lzer=Lzer,
        final Linf=Linf);
    equation 
      connect(saturatingInductor.p, plug_p.pin);
      connect(saturatingInductor.n, plug_n.pin);
    end SaturatingInductor;

* * * * *

![image47](Modelica.Electrical.MultiPhase.Basic.MutualInductorI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).MutualInductor
==========================================================================================================================================================================================================

**Linear mutual inductor**

Information
-----------

::

Model of a multi phase inductor providing a mutual inductance matrix
model.

### Implementation

    v[1] = L[1,1]*der(i[1]) + L[1,2]*der(i[2]) + ... + L[1,m]*der(i[m])
    v[2] = L[2,1]*der(i[1]) + L[2,2]*der(i[2]) + ... + L[2,m]*der(i[m])
      :              :                         :                                :
    v[m] = L[m,1]*der(i[1]) + L[m,2]*der(i[2]) + ... + L[m,m]*der(i[m])

::

Extends from
[Modelica.Electrical.MultiPhase.Interfaces.OnePort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.OnePort)
(Component with two electrical plugs and currents from plug\_p to
plug\_n).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                    Name   Defaul Description
                                                 t      
  --------------------------------------- ------ ------ ------------------
  Integer                                 m      3      Number of phases

  [Inductance](Modelica_SIunits.html#Mode L[m,          Mutual inductance
  lica.SIunits.Inductance)                m]            matrix [H]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model MutualInductor "Linear mutual inductor"
      extends Modelica.Electrical.MultiPhase.Interfaces.OnePort;
      constant Real epsilon = 1e-9 "Relative accuracy tolerance of matrix symmetry";
      parameter Integer m = 3 "Number of phases";
      parameter Modelica.SIunits.Inductance L[m,m] "Mutual inductance matrix";
    initial equation 
      if abs(Modelica.Math.Matrices.det(L))<epsilon then
        Modelica.Utilities.Streams.print("Warning: mutual inductance matrix singular!");
      end if;
    equation 
      assert(sum(abs(L-transpose(L)))<epsilon*sum(abs(L)),"Mutual inductance matrix is not symmetric");
      for j in 1:m loop
        v[j] = sum(L[j,k]*der(i[k]) for k in 1:m);
      end for;
    end MutualInductor;

* * * * *

![image48](Modelica.Electrical.MultiPhase.Basic.ZeroInductorI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).ZeroInductor
======================================================================================================================================================================================================

**Linear zero sequence inductor**

Information
-----------

::

Model of a multi phase zero sequence inductor.

### Implementation

    v = Lzero*sum(der(i)) = Lzero*der(sum(i))

::

Extends from
[Modelica.Electrical.MultiPhase.Interfaces.OnePort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.OnePort)
(Component with two electrical plugs and currents from plug\_p to
plug\_n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                     Name  Defaul Description
                                                 t      
  ---------------------------------------- ----- ------ -------------------
  Integer                                  m     3      Number of phases

  [Inductance](Modelica_SIunits.html#Model Lzero        Zero sequence
  ica.SIunits.Inductance)                               inductance [H]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ZeroInductor "Linear zero sequence inductor"
      extends Modelica.Electrical.MultiPhase.Interfaces.OnePort;
      parameter Modelica.SIunits.Inductance Lzero "Zero sequence inductance";
      Modelica.SIunits.Current i0;
      Modelica.SIunits.Voltage v0;
    equation 
      m*i0 = sum(i);
      v0 = Lzero*der(i0);
      v = fill(v0, m);
    end ZeroInductor;

* * * * *

![image49](Modelica.Electrical.MultiPhase.Basic.TransformerI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).Transformer
====================================================================================================================================================================================================

**Multiphase Transformer**

Information
-----------

::

Contains m transformers (Modelica.Electrical.Analog.Basic.Transformer)

::

Extends from
[Interfaces.FourPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.FourPlug)
(Component with two m-phase electric ports).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name  Default Description
  ----------------------------------------- ----- ------- -----------------
  Integer                                   m     3       Number of phases

  [Inductance](Modelica_SIunits.html#Modeli L1[m]         Primary
  ca.SIunits.Inductance)                                  inductance [H]

  [Inductance](Modelica_SIunits.html#Modeli L2[m]         Secondary
  ca.SIunits.Inductance)                                  inductance [H]

  [Inductance](Modelica_SIunits.html#Modeli M[m]          Coupling
  ca.SIunits.Inductance)                                  inductance [H]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug p1     
  )                                                                 

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug p2     
  )                                                                 

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug n1     
  )                                                                 

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug n2     
  )                                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Transformer "Multiphase Transformer"
      extends Interfaces.FourPlug;
      parameter Modelica.SIunits.Inductance L1[m](start=fill(1, m)) 
        "Primary inductance";
      parameter Modelica.SIunits.Inductance L2[m](start=fill(1, m)) 
        "Secondary inductance";
      parameter Modelica.SIunits.Inductance M[m](start=fill(1, m)) 
        "Coupling inductance";
      Modelica.Electrical.Analog.Basic.Transformer transformer[m](
        final L1=L1,
        final L2=L2,
        final M=M);
    equation 

      connect(plug_p1.pin, transformer.p1);
      connect(plug_p2.pin, transformer.p2);
      connect(plug_n1.pin, transformer.n1);
      connect(plug_n2.pin, transformer.n2);
    end Transformer;

* * * * *

![image50](Modelica.Electrical.MultiPhase.Basic.VariableResistorI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).VariableResistor
==============================================================================================================================================================================================================

**Ideal linear electrical resistors with variable resistance**

Information
-----------

::

Contains m variable resistors
(Modelica.Electrical.Analog.Basic.VariableResistor)

**Attention!!!**
  ~ It is recomended that none of the R\_Port signals should not cross
    the

zero value. Otherwise depending on the surrounding circuit the
probability of singularities is high.

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                Name  Defaul Description
                                            t      
  ----------------------------------- ----- ------ -------------------------
  Integer                             m     3      Number of phases

  [Temperature](Modelica_SIunits.html T\_re fill(3 Reference temperatures
  #Modelica.SIunits.Temperature)      f[m]  00.15, [K]
                                            m)     

  [LinearTemperatureCoefficient](Mode alpha zeros( Temperature coefficients
  lica_SIunits.html#Modelica.SIunits. [m]   m)     of resistances at
  LinearTemperatureCoefficient)                    reference temperatures
                                                   [1/K]

  Integer                             mh    m      Number of
                                                   heatPorts=number of
                                                   phases

  Boolean                             useHe false  =true, if all HeatPorts
                                      atPor        are enabled
                                      t            

  [Temperature](Modelica_SIunits.html T[mh] T\_ref Fixed device temperatures
  #Modelica.SIunits.Temperature)                   if useHeatPort = false
                                                   [K]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces plug\_p 
  .html#Modelica.Electrical.MultiPhase.Interfaces.Positive         
  Plug)                                                            

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces plug\_n 
  .html#Modelica.Electrical.MultiPhase.Interfaces.Negative         
  Plug)                                                            

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.h heatPor 
  tml#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a) t[mh]   

  input                                                    R[m]    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blo         
  cks.Interfaces.RealInput)                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableResistor 
      "Ideal linear electrical resistors with variable resistance"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(300.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha[m]=zeros(m) 
        "Temperature coefficients of resistances at reference temperatures";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T = T_ref);
      Modelica.Blocks.Interfaces.RealInput R[m];
      Modelica.Electrical.Analog.Basic.VariableResistor variableResistor[m](
        final T_ref=T_ref,
        final alpha=alpha,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 
      connect(variableResistor.p, plug_p.pin);
      connect(variableResistor.n, plug_n.pin);
      connect(R, variableResistor.R);
      connect(variableResistor.heatPort, heatPort);
    end VariableResistor;

* * * * *

![image51](Modelica.Electrical.MultiPhase.Basic.VariableResistorI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).VariableConductor
===============================================================================================================================================================================================================

**Ideal linear electrical conductors with variable conductance**

Information
-----------

::

Contains m variable conductors
(Modelica.Electrical.Analog.Basic.VariableConductor)

**Attention!!!**
  ~ It is recomended that none of the G\_Port signals should not cross
    the

zero value. Otherwise depending on the surrounding circuit the
probability of singularities is high.

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name  Defaul Description
                                           t      
  ---------------------------------- ----- ------ -------------------------
  Integer                            m     3      Number of phases

  [Temperature](Modelica_SIunits.htm T\_re fill(3 Reference temperatures
  l#Modelica.SIunits.Temperature)    f[m]  00.15, [K]
                                           m)     

  [LinearTemperatureCoefficient](Mod alpha zeros( Temperature coefficients
  elica_SIunits.html#Modelica.SIunit [m]   m)     of conductances at
  s.LinearTemperatureCoefficient)                 reference temperatures
                                                  [1/K]

  Integer                            mh    m      Number of
                                                  heatPorts=number of
                                                  phases

  Boolean                            useHe false  =true, if all HeatPorts
                                     atPor        are enabled
                                     t            

  [Temperature](Modelica_SIunits.htm T[mh] T\_ref Fixed device temperatures
  l#Modelica.SIunits.Temperature)                 if useHeatPort = false
                                                  [K]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces plug\_p 
  .html#Modelica.Electrical.MultiPhase.Interfaces.Positive         
  Plug)                                                            

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces plug\_n 
  .html#Modelica.Electrical.MultiPhase.Interfaces.Negative         
  Plug)                                                            

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.h heatPor 
  tml#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a) t[mh]   

  input                                                    G[m]    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blo         
  cks.Interfaces.RealInput)                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableConductor 
      "Ideal linear electrical conductors with variable conductance"
      extends Interfaces.TwoPlug;
     parameter Modelica.SIunits.Temperature T_ref[m]=fill(300.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha[m]=zeros(m) 
        "Temperature coefficients of conductances at reference temperatures";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T = T_ref);
      Modelica.Blocks.Interfaces.RealInput G[m];
      Modelica.Electrical.Analog.Basic.VariableConductor variableConductor[m](
        final T_ref=T_ref,
        final alpha=alpha,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 
      connect(variableConductor.p, plug_p.pin);
      connect(variableConductor.n, plug_n.pin);
      connect(G, variableConductor.G);
      connect(variableConductor.heatPort, heatPort);
    end VariableConductor;

* * * * *

![image52](Modelica.Electrical.MultiPhase.Basic.VariableCapacitorI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).VariableCapacitor
================================================================================================================================================================================================================

**Ideal linear electrical capacitors with variable capacitance**

Information
-----------

::

Contains m variable capacitors
(Modelica.Electrical.Analog.Basic.VariableCapacitor)

It is required that each C\_Port.signal ≥ 0, otherwise an assertion is
raised. To avoid a variable index system, C = Cmin, if 0 ≤
C\_Port.signal < Cmin, where Cmin is a parameter with default value
Modelica.Constants.eps.

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name  Default           Description
  ----------------------------------- ----- ----------------- -------------
  Integer                             m     3                 Number of
                                                              phases

  [Capacitance](Modelica_SIunits.html Cmin[ fill(Modelica.Con minimum
  #Modelica.SIunits.Capacitance)      m]    stants.eps,...    Capacitance
                                                              [F]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                

  input                                                      C[m]  
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Block       
  s.Interfaces.RealInput)                                          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableCapacitor 
      "Ideal linear electrical capacitors with variable capacitance"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Capacitance Cmin[m]=fill(Modelica.Constants.eps,m) 
        "minimum Capacitance";
      Modelica.Blocks.Interfaces.RealInput C[m];
      Modelica.Electrical.Analog.Basic.VariableCapacitor variableCapacitor[m](final Cmin = Cmin);
    equation 
      connect(variableCapacitor.p, plug_p.pin);
      connect(variableCapacitor.n, plug_n.pin);
      connect(C, variableCapacitor.C);
    end VariableCapacitor;

* * * * *

![image53](Modelica.Electrical.MultiPhase.Basic.VariableInductorI.png) [Modelica.Electrical.MultiPhase.Basic](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic).VariableInductor
==============================================================================================================================================================================================================

**Ideal linear electrical inductors with variable inductance**

Information
-----------

::

Contains m variable inductors
(Modelica.Electrical.Analog.Basic.VariableInductor)

It is required that each L\_Port.signal ≥ 0, otherwise an assertion is
raised. To avoid a variable index system, L = Lmin, if 0 ≤
L\_Port.signal < Lmin, where Lmin is a parameter with default value
Modelica.Constants.eps.

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

Parameters
----------

  ------------------------------------------------------------------------
  Type                               Name  Default           Description
  ---------------------------------- ----- ----------------- -------------
  Integer                            m     3                 Number of
                                                             phases

  [Inductance](Modelica_SIunits.html Lmin[ fill(Modelica.Con minimum
  #Modelica.SIunits.Inductance)      m]    stants.eps,...    Inductance
                                                             [H]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                

  input                                                      L[m]  
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Block       
  s.Interfaces.RealInput)                                          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableInductor 
      "Ideal linear electrical inductors with variable inductance"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Inductance Lmin[m]=fill(Modelica.Constants.eps,m) 
        "minimum Inductance";
      Modelica.Blocks.Interfaces.RealInput L[m];
      Modelica.Electrical.Analog.Basic.VariableInductor variableInductor[m](final Lmin=
               Lmin);

    equation 
      connect(variableInductor.p, plug_p.pin);
      connect(variableInductor.n, plug_n.pin);
      connect(L, variableInductor.L);
    end VariableInductor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:18 2010.
