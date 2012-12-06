% Modelica.Electrical.QuasiStationary.MultiPhase.Ideal
% 
% 

[Modelica.Electrical.QuasiStationary.MultiPhase](Modelica_Electrical_QuasiStationary_MultiPhase.html#Modelica.Electrical.QuasiStationary.MultiPhase).Ideal
==========================================================================================================================================================

**Ideal components for AC multiphase models**

Information
-----------

::

This package hosts ideal models for quasi stationary multiphase
circuits. Quasi stationary theory can be found in the
[references](Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References).

### See also

[SinglePhase.Ideal](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal)

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                          Descriptio
                                                                n
  ------------------------------------------------------------- ----------
  ![image6](Modelica.Electrical.QuasiStationary.MultiPhase.Idea Idle
  l.IdleS.png)                                                  branch
  [Idle](Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.h 
  tml#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Idle 
  )                                                             

  ![image7](Modelica.Electrical.QuasiStationary.MultiPhase.Idea Short cut
  l.ShortS.png)                                                 branch
  [Short](Modelica_Electrical_QuasiStationary_MultiPhase_Ideal. 
  html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Sho 
  rt)                                                           

  ![image8](Modelica.Electrical.QuasiStationary.MultiPhase.Idea Multiphase
  l.IdealCommutingSwitchS.png)                                  ideal
  [IdealCommutingSwitch](Modelica_Electrical_QuasiStationary_Mu commuting
  ltiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.Multi switch
  Phase.Ideal.IdealCommutingSwitch)                             

  ![image9](Modelica.Electrical.QuasiStationary.MultiPhase.Idea Multiphase
  l.IdealIntermediateSwitchS.png)                               ideal
  [IdealIntermediateSwitch](Modelica_Electrical_QuasiStationary intermedia
  _MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.Mu te
  ltiPhase.Ideal.IdealIntermediateSwitch)                       switch

  ![image10](Modelica.Electrical.QuasiStationary.MultiPhase.Ide Multiphase
  al.IdealOpeningSwitchS.png)                                   ideal
  [IdealOpeningSwitch](Modelica_Electrical_QuasiStationary_Mult opener
  iPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPh 
  ase.Ideal.IdealOpeningSwitch)                                 

  ![image11](Modelica.Electrical.QuasiStationary.MultiPhase.Ide Multiphase
  al.IdealClosingSwitchS.png)                                   ideal
  [IdealClosingSwitch](Modelica_Electrical_QuasiStationary_Mult closer
  iPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPh 
  ase.Ideal.IdealClosingSwitch)                                 
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdleI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Ideal](Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal).Idle
======================================================================================================================================================================================================================================================

**Idle branch**

Information
-----------

::

This model describes *m* simple idle branches considering the complex
currents *i* = 0; it uses *m* [single phase idle
branches](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Idle).

### See also

[Idle](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Idle),
[Short](Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Short)

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
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Idle "Idle branch"
      extends Interfaces.TwoPlug;

    QuasiStationary.SinglePhase.Ideal.Idle idle[
                                m];

    equation 
    connect(plugToPins_p.pin_p, idle.pin_p);
    connect(idle.pin_n, plugToPins_n.pin_n);
    end Idle;

* * * * *

![image13](Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.ShortI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Ideal](Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal).Short
========================================================================================================================================================================================================================================================

**Short cut branch**

Information
-----------

::

This model describes *m* simple short branches considering the complex
voltages *v* = 0; it uses *m* [single phase short
branches](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Short).

### See also

[Short](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Short),
[Idle](Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Idle)

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
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Short "Short cut branch"
      extends Interfaces.TwoPlug;

    QuasiStationary.SinglePhase.Ideal.Short short[
                                  m];

    equation 
    connect(plugToPins_p.pin_p, short.pin_p);
    connect(short.pin_n, plugToPins_n.pin_n);
    end Short;

* * * * *

![image14](Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealCommutingSwitchI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Ideal](Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal).IdealCommutingSwitch
======================================================================================================================================================================================================================================================================================

**Multiphase ideal commuting switch**

Information
-----------

::

Contains m singlephase ideal commuting switches
(Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitch).

**Use with care:** This switch is only intended to be used for
structural changes, not fast switching sequences, due to the
quasistationary formulation.

::

Extends from
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name   Default  Description
  ------------------------------- ------ -------- ------------------------
  Integer                         m      3        Number of phases

  [Resistance](Modelica_SIunits.h Ron[m]          Closed switch resistance
  tml#Modelica.SIunits.Resistance                 [Ohm]
  )                                               

  [Conductance](Modelica_SIunits. Goff[m          Opened switch
  html#Modelica.SIunits.Conductan ]               conductance [S]
  ce)                                             

  Integer                         mh     m        Number of
                                                  heatPorts=number of
                                                  phases

  Boolean                         useHea false    =true, if all HeatPorts
                                  tPort           are enabled

  [Temperature](Modelica_SIunits. T[mh]  fill(293 Fixed device
  html#Modelica.SIunits.Temperatu        .15,     temperatures if
  re)                                    m)       useHeatPort = false [K]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Inter heatP 
  faces.html#Modelica.Thermal.HeatTransfer.Interfac ort[m 
  es.HeatPort_a)                                    h]    

  input                                             contr true =\> p--n2
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mo ol[m] connected, false
  delica.Blocks.Interfaces.BooleanInput)                  =\> p--n1
                                                          connected

  [PositivePlug](Modelica_Electrical_QuasiStationar plug\ 
  y_MultiPhase_Interfaces.html#Modelica.Electrical. _p    
  QuasiStationary.MultiPhase.Interfaces.PositivePlu       
  g)                                                      

  [NegativePlug](Modelica_Electrical_QuasiStationar plug\ 
  y_MultiPhase_Interfaces.html#Modelica.Electrical. _n2   
  QuasiStationary.MultiPhase.Interfaces.NegativePlu       
  g)                                                      

  [NegativePlug](Modelica_Electrical_QuasiStationar plug\ 
  y_MultiPhase_Interfaces.html#Modelica.Electrical. _n1   
  QuasiStationary.MultiPhase.Interfaces.NegativePlu       
  g)                                                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealCommutingSwitch "Multiphase ideal commuting switch"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => p--n2 connected, false => p--n1 connected";
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug plug_n2(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug plug_n1(final m=m);
      Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitch
        idealCommutingSwitch[                                                    m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p
                         plugToPins_p(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPins_n1(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPins_n2(final m=m);
    equation 
      connect(control, idealCommutingSwitch.control);
      connect(idealCommutingSwitch.heatPort, heatPort);
      connect(plugToPins_n1.plug_n, plug_n1);
      connect(plugToPins_n2.plug_n, plug_n2);
      connect(plugToPins_n2.pin_n, idealCommutingSwitch.n2);
      connect(idealCommutingSwitch.n1, plugToPins_n1.pin_n);
      connect(plugToPins_p.plug_p, plug_p);
      connect(idealCommutingSwitch.p, plugToPins_p.pin_p);
    end IdealCommutingSwitch;

* * * * *

![image15](Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealIntermediateSwitchI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Ideal](Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal).IdealIntermediateSwitch
============================================================================================================================================================================================================================================================================================

**Multiphase ideal intermediate switch**

Information
-----------

::

Contains m ideal intermediate switches
(Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitch).

**Use with care:** This switch is only intended to be used for
structural changes, not fast switching sequences, due to the
quasistationary formulation.

::

Extends from
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name   Default  Description
  ------------------------------- ------ -------- ------------------------
  Integer                         m      3        Number of phases

  [Resistance](Modelica_SIunits.h Ron[m]          Closed switch resistance
  tml#Modelica.SIunits.Resistance                 [Ohm]
  )                                               

  [Conductance](Modelica_SIunits. Goff[m          Opened switch
  html#Modelica.SIunits.Conductan ]               conductance [S]
  ce)                                             

  Integer                         mh     m        Number of
                                                  heatPorts=number of
                                                  phases

  Boolean                         useHea false    =true, if all HeatPorts
                                  tPort           are enabled

  [Temperature](Modelica_SIunits. T[mh]  fill(293 Fixed device
  html#Modelica.SIunits.Temperatu        .15,     temperatures if
  re)                                    m)       useHeatPort = false [K]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                          Name Description
  --------------------------------------------- ---- ---------------------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_I heat 
  nterfaces.html#Modelica.Thermal.HeatTransfer. Port 
  Interfaces.HeatPort_a)                        [mh] 

  input                                         cont true =\> p1--n2,
  [BooleanInput](Modelica_Blocks_Interfaces.htm rol[ p2--n1 connected,
  l#Modelica.Blocks.Interfaces.BooleanInput)    m]   otherwise p1--n1,
                                                     p2--n2 connected

  [PositivePlug](Modelica_Electrical_QuasiStati plug 
  onary_MultiPhase_Interfaces.html#Modelica.Ele \_p1 
  ctrical.QuasiStationary.MultiPhase.Interfaces      
  .PositivePlug)                                     

  [PositivePlug](Modelica_Electrical_QuasiStati plug 
  onary_MultiPhase_Interfaces.html#Modelica.Ele \_p2 
  ctrical.QuasiStationary.MultiPhase.Interfaces      
  .PositivePlug)                                     

  [NegativePlug](Modelica_Electrical_QuasiStati plug 
  onary_MultiPhase_Interfaces.html#Modelica.Ele \_n2 
  ctrical.QuasiStationary.MultiPhase.Interfaces      
  .NegativePlug)                                     

  [NegativePlug](Modelica_Electrical_QuasiStati plug 
  onary_MultiPhase_Interfaces.html#Modelica.Ele \_n1 
  ctrical.QuasiStationary.MultiPhase.Interfaces      
  .NegativePlug)                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealIntermediateSwitch "Multiphase ideal intermediate switch"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => p1--n2, p2--n1 connected, otherwise p1--n1, p2--n2 connected";
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug plug_p1(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug plug_p2(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug plug_n2(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug plug_n1(final m=m);
      Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitch
        idealIntermediateSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p plugToPins_p1(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPins_n1(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p plugToPins_p2(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPins_n2(final m=m);
    equation 
      connect(control, idealIntermediateSwitch.control);
      connect(idealIntermediateSwitch.heatPort, heatPort);
      connect(plug_p1, plugToPins_p1.plug_p);
      connect(plug_p2, plugToPins_p2.plug_p);
      connect(plugToPins_n1.plug_n, plug_n1);
      connect(plugToPins_n2.plug_n, plug_n2);
      connect(idealIntermediateSwitch.p2, plugToPins_p2.pin_p);
      connect(idealIntermediateSwitch.n2, plugToPins_n2.pin_n);
      connect(idealIntermediateSwitch.n1, plugToPins_n1.pin_n);
      connect(idealIntermediateSwitch.p1, plugToPins_p1.pin_p);
    end IdealIntermediateSwitch;

* * * * *

![image16](Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealOpeningSwitchI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Ideal](Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal).IdealOpeningSwitch
==================================================================================================================================================================================================================================================================================

**Multiphase ideal opener**

Information
-----------

::

Contains m ideal opening switches
(Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitch).

**Use with care:** This switch is only intended to be used for
structural changes, not fast switching sequences, due to the
quasistationary formulation.

::

Extends from
[Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name   Default  Description
  ------------------------------- ------ -------- ------------------------
  Integer                         m      3        Number of phases

  [Resistance](Modelica_SIunits.h Ron[m]          Closed switch resistance
  tml#Modelica.SIunits.Resistance                 [Ohm]
  )                                               

  [Conductance](Modelica_SIunits. Goff[m          Opened switch
  html#Modelica.SIunits.Conductan ]               conductance [S]
  ce)                                             

  Integer                         mh     m        Number of
                                                  heatPorts=number of
                                                  phases

  Boolean                         useHea false    =true, if all HeatPorts
                                  tPort           are enabled

  [Temperature](Modelica_SIunits. T[mh]  fill(293 Fixed device
  html#Modelica.SIunits.Temperatu        .15,     temperatures if
  re)                                    m)       useHeatPort = false [K]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Name  Description
  -------------------------------------------------- ----- ---------------
  [PositivePlug](Modelica_Electrical_QuasiStationary plug\ 
  _MultiPhase_Interfaces.html#Modelica.Electrical.Qu _p    
  asiStationary.MultiPhase.Interfaces.PositivePlug)        

  [NegativePlug](Modelica_Electrical_QuasiStationary plug\ 
  _MultiPhase_Interfaces.html#Modelica.Electrical.Qu _n    
  asiStationary.MultiPhase.Interfaces.NegativePlug)        

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interf heatP 
  aces.html#Modelica.Thermal.HeatTransfer.Interfaces ort[m 
  .HeatPort_a)                                       h]    

  input                                              contr true =\> switch
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mod ol[m] open, false =\>
  elica.Blocks.Interfaces.BooleanInput)                    p--n connected
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealOpeningSwitch "Multiphase ideal opener"
      extends Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => switch open, false => p--n connected";
      Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitch
                                                          idealOpeningSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(control, idealOpeningSwitch.control);
      connect(idealOpeningSwitch.heatPort, heatPort);
      connect(idealOpeningSwitch.pin_n, plugToPins_n.pin_n);
      connect(plugToPins_p.pin_p, idealOpeningSwitch.pin_p);
    end IdealOpeningSwitch;

* * * * *

![image17](Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealClosingSwitchI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Ideal](Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal).IdealClosingSwitch
==================================================================================================================================================================================================================================================================================

**Multiphase ideal closer**

Information
-----------

::

Contains m ideal closing switches
(Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitch).

**Use with care:** This switch is only intended to be used for
structural changes, not fast switching sequences, due to the
quasistationary formulation.

::

Extends from
[Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name   Default  Description
  ------------------------------- ------ -------- ------------------------
  Integer                         m      3        Number of phases

  [Resistance](Modelica_SIunits.h Ron[m]          Closed switch resistance
  tml#Modelica.SIunits.Resistance                 [Ohm]
  )                                               

  [Conductance](Modelica_SIunits. Goff[m          Opened switch
  html#Modelica.SIunits.Conductan ]               conductance [S]
  ce)                                             

  Integer                         mh     m        Number of
                                                  heatPorts=number of
                                                  phases

  Boolean                         useHea false    =true, if all HeatPorts
                                  tPort           are enabled

  [Temperature](Modelica_SIunits. T[mh]  fill(293 Fixed device
  html#Modelica.SIunits.Temperatu        .15,     temperatures if
  re)                                    m)       useHeatPort = false [K]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Name  Description
  -------------------------------------------------- ----- ---------------
  [PositivePlug](Modelica_Electrical_QuasiStationary plug\ 
  _MultiPhase_Interfaces.html#Modelica.Electrical.Qu _p    
  asiStationary.MultiPhase.Interfaces.PositivePlug)        

  [NegativePlug](Modelica_Electrical_QuasiStationary plug\ 
  _MultiPhase_Interfaces.html#Modelica.Electrical.Qu _n    
  asiStationary.MultiPhase.Interfaces.NegativePlug)        

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interf heatP 
  aces.html#Modelica.Thermal.HeatTransfer.Interfaces ort[m 
  .HeatPort_a)                                       h]    

  input                                              contr true =\> p--n
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mod ol[m] connected,
  elica.Blocks.Interfaces.BooleanInput)                    false =\>
                                                           switch open
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealClosingSwitch "Multiphase ideal closer"
      extends Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => p--n connected, false => switch open";
      Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitch
                                                          idealClosingSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(control, idealClosingSwitch.control);
      connect(idealClosingSwitch.heatPort, heatPort);
      connect(idealClosingSwitch.pin_p, plugToPins_p.pin_p);
      connect(idealClosingSwitch.pin_n, plugToPins_n.pin_n);
    end IdealClosingSwitch;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:42 2010.
