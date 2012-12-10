% Modelica.Electrical.MultiPhase.Ideal
% 
% 

[Modelica.Electrical.MultiPhase](Modelica_Electrical_MultiPhase.html#Modelica.Electrical.MultiPhase).Ideal
==========================================================================================================

**Multiphase components with idealized behaviour**

Information
-----------

::

This package contains analog electrical multiphase components with
idealized behaviour, like thyristor, diode, switch, transformer.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                        Description
  ----------------------------------------------------------- ------------
  ![image12](Modelica.Electrical.MultiPhase.Ideal.IdealThyris Multiphase
  torS.png)                                                   ideal
  [IdealThyristor](Modelica_Electrical_MultiPhase_Ideal.html# thyristor
  Modelica.Electrical.MultiPhase.Ideal.IdealThyristor)        

  ![image13](Modelica.Electrical.MultiPhase.Ideal.IdealThyris Multiphase
  torS.png)                                                   ideal GTO
  [IdealGTOThyristor](Modelica_Electrical_MultiPhase_Ideal.ht thyristor
  ml#Modelica.Electrical.MultiPhase.Ideal.IdealGTOThyristor)  

  ![image14](Modelica.Electrical.MultiPhase.Ideal.IdealCommut Multiphase
  ingSwitchS.png)                                             ideal
  [IdealCommutingSwitch](Modelica_Electrical_MultiPhase_Ideal commuting
  .html#Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSw switch
  itch)                                                       

  ![image15](Modelica.Electrical.MultiPhase.Ideal.IdealInterm Multiphase
  ediateSwitchS.png)                                          ideal
  [IdealIntermediateSwitch](Modelica_Electrical_MultiPhase_Id intermediate
  eal.html#Modelica.Electrical.MultiPhase.Ideal.IdealIntermed switch
  iateSwitch)                                                 

  ![image16](Modelica.Electrical.MultiPhase.Ideal.IdealDiodeS Multiphase
  .png)                                                       ideal diode
  [IdealDiode](Modelica_Electrical_MultiPhase_Ideal.html#Mode 
  lica.Electrical.MultiPhase.Ideal.IdealDiode)                

  ![image17](Modelica.Electrical.MultiPhase.Ideal.IdealTransf Multiphase
  ormerS.png)                                                 ideal
  [IdealTransformer](Modelica_Electrical_MultiPhase_Ideal.htm transformer
  l#Modelica.Electrical.MultiPhase.Ideal.IdealTransformer)    

  ![image18](Modelica.Electrical.MultiPhase.Ideal.IdleS.png)  Multiphase
  [Idle](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.E idle branch
  lectrical.MultiPhase.Ideal.Idle)                            

  ![image19](Modelica.Electrical.MultiPhase.Ideal.ShortS.png) Multiphase
  [Short](Modelica_Electrical_MultiPhase_Ideal.html#Modelica. short cut
  Electrical.MultiPhase.Ideal.Short)                          branch

  ![image20](Modelica.Electrical.MultiPhase.Ideal.IdealOpenin Multiphase
  gSwitchS.png)                                               ideal opener
  [IdealOpeningSwitch](Modelica_Electrical_MultiPhase_Ideal.h 
  tml#Modelica.Electrical.MultiPhase.Ideal.IdealOpeningSwitch 
  )                                                           

  ![image21](Modelica.Electrical.MultiPhase.Ideal.IdealClosin Multiphase
  gSwitchS.png)                                               ideal closer
  [IdealClosingSwitch](Modelica_Electrical_MultiPhase_Ideal.h 
  tml#Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitch 
  )                                                           

  ![image22](Modelica.Electrical.MultiPhase.Ideal.OpenerWithA Multiphase
  rcS.png)                                                    opener with
  [OpenerWithArc](Modelica_Electrical_MultiPhase_Ideal.html#M arc
  odelica.Electrical.MultiPhase.Ideal.OpenerWithArc)          

  ![image23](Modelica.Electrical.MultiPhase.Ideal.CloserWithA Multiphase
  rcS.png)                                                    closer with
  [CloserWithArc](Modelica_Electrical_MultiPhase_Ideal.html#M arc
  odelica.Electrical.MultiPhase.Ideal.CloserWithArc)          
  ------------------------------------------------------------------------

* * * * *

![image24](Modelica.Electrical.MultiPhase.Ideal.IdealThyristorI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).IdealThyristor
==========================================================================================================================================================================================================

**Multiphase ideal thyristor**

Information
-----------

::

Contains m ideal thyristors
(Modelica.Electrical.Analog.Ideal.IdealThyristor).

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name   Default  Description
  ------------------------------- ------ -------- ------------------------
  Integer                         m      3        Number of phases

  [Resistance](Modelica_SIunits.h Ron[m]          Closed thyristor
  tml#Modelica.SIunits.Resistance                 resistance [Ohm]
  )                                               

  [Conductance](Modelica_SIunits. Goff[m          Opened thyristor
  html#Modelica.SIunits.Conductan ]               conductance [S]
  ce)                                             

  [Voltage](Modelica_SIunits.html Vknee[          Treshold voltage [V]
  #Modelica.SIunits.Voltage)      m]              

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

  input                                                    fire[m] 
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modelica.         
  Blocks.Interfaces.BooleanInput)                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealThyristor "Multiphase ideal thyristor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start= fill(1.E-5, m)) 
        "Closed thyristor resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened thyristor conductance";
      parameter Modelica.SIunits.Voltage Vknee[m](final min=zeros(m), start = zeros(m)) 
        "Treshold voltage";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput fire[m];
      Modelica.Electrical.Analog.Ideal.IdealThyristor idealThyristor[m](
        final Ron=Ron,
        final Goff=Goff,
        final Vknee=Vknee,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, idealThyristor.p);
      connect(idealThyristor.n, plug_n.pin);
      connect(fire, idealThyristor.fire);
      connect(idealThyristor.heatPort, heatPort);
    end IdealThyristor;

* * * * *

![image25](Modelica.Electrical.MultiPhase.Ideal.IdealThyristorI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).IdealGTOThyristor
=============================================================================================================================================================================================================

**Multiphase ideal GTO thyristor**

Information
-----------

::

Contains m ideal GTO thyristors
(Modelica.Electrical.Analog.Ideal.IdealGTOThyristor).

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name   Default  Description
  ------------------------------- ------ -------- ------------------------
  Integer                         m      3        Number of phases

  [Resistance](Modelica_SIunits.h Ron[m]          Closed thyristor
  tml#Modelica.SIunits.Resistance                 resistance [Ohm]
  )                                               

  [Conductance](Modelica_SIunits. Goff[m          Opened thyristor
  html#Modelica.SIunits.Conductan ]               conductance [S]
  ce)                                             

  [Voltage](Modelica_SIunits.html Vknee[          Treshold voltage [V]
  #Modelica.SIunits.Voltage)      m]              

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

  input                                                    fire[m] 
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modelica.         
  Blocks.Interfaces.BooleanInput)                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealGTOThyristor "Multiphase ideal GTO thyristor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed thyristor resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened thyristor conductance";
      parameter Modelica.SIunits.Voltage Vknee[m](final min=zeros(m), start = zeros(m)) 
        "Treshold voltage";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput fire[m];
      Modelica.Electrical.Analog.Ideal.IdealGTOThyristor idealGTOThyristor[m](
        final Ron=Ron,
        final Goff=Goff,
        final Vknee=Vknee,
        each final useHeatPort=useHeatPort);
    equation 
      connect(idealGTOThyristor.p, plug_p.pin);
      connect(idealGTOThyristor.n, plug_n.pin);
      connect(fire, idealGTOThyristor.fire);
      connect(idealGTOThyristor.heatPort, heatPort);
    end IdealGTOThyristor;

* * * * *

![image26](Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSwitchI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).IdealCommutingSwitch
======================================================================================================================================================================================================================

**Multiphase ideal commuting switch**

Information
-----------

::

Contains m ideal commuting switches
(Modelica.Electrical.Analog.Ideal.IdealCommutingSwitch).

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
  Type                                          Name   Description
  --------------------------------------------- ------ -------------------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_I heatPo 
  nterfaces.html#Modelica.Thermal.HeatTransfer. rt[mh] 
  Interfaces.HeatPort_a)                               

  input                                         contro true =\> p--n2
  [BooleanInput](Modelica_Blocks_Interfaces.htm l[m]   connected, false
  l#Modelica.Blocks.Interfaces.BooleanInput)           =\> p--n1 connected

  [PositivePlug](Modelica_Electrical_MultiPhase plug\_ 
  _Interfaces.html#Modelica.Electrical.MultiPha p      
  se.Interfaces.PositivePlug)                          

  [NegativePlug](Modelica_Electrical_MultiPhase plug\_ 
  _Interfaces.html#Modelica.Electrical.MultiPha n2     
  se.Interfaces.NegativePlug)                          

  [NegativePlug](Modelica_Electrical_MultiPhase plug\_ 
  _Interfaces.html#Modelica.Electrical.MultiPha n1     
  se.Interfaces.NegativePlug)                          
  ------------------------------------------------------------------------

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
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n2(final m=m);
      Interfaces.NegativePlug plug_n1(final m=m);
      Modelica.Electrical.Analog.Ideal.IdealCommutingSwitch
        idealCommutingSwitch[                                                    m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, idealCommutingSwitch.p);
      connect(idealCommutingSwitch.n2, plug_n2.pin);
      connect(idealCommutingSwitch.n1, plug_n1.pin);
      connect(control, idealCommutingSwitch.control);
      connect(idealCommutingSwitch.heatPort, heatPort);
    end IdealCommutingSwitch;

* * * * *

![image27](Modelica.Electrical.MultiPhase.Ideal.IdealIntermediateSwitchI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).IdealIntermediateSwitch
============================================================================================================================================================================================================================

**Multiphase ideal intermediate switch**

Information
-----------

::

Contains m ideal intermediate switches
(Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitch).

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
  Type                                      Name  Description
  ----------------------------------------- ----- ------------------------
  [HeatPort\_a](Modelica_Thermal_HeatTransf heatP 
  er_Interfaces.html#Modelica.Thermal.HeatT ort[m 
  ransfer.Interfaces.HeatPort_a)            h]    

  input                                     contr true =\> p1--n2, p2--n1
  [BooleanInput](Modelica_Blocks_Interfaces ol[m] connected, otherwise
  .html#Modelica.Blocks.Interfaces.BooleanI       p1--n1, p2--n2 connected
  nput)                                           

  [PositivePlug](Modelica_Electrical_MultiP plug\ 
  hase_Interfaces.html#Modelica.Electrical. _p1   
  MultiPhase.Interfaces.PositivePlug)             

  [PositivePlug](Modelica_Electrical_MultiP plug\ 
  hase_Interfaces.html#Modelica.Electrical. _p2   
  MultiPhase.Interfaces.PositivePlug)             

  [NegativePlug](Modelica_Electrical_MultiP plug\ 
  hase_Interfaces.html#Modelica.Electrical. _n2   
  MultiPhase.Interfaces.NegativePlug)             

  [NegativePlug](Modelica_Electrical_MultiP plug\ 
  hase_Interfaces.html#Modelica.Electrical. _n1   
  MultiPhase.Interfaces.NegativePlug)             
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
      Interfaces.PositivePlug plug_p1(final m=m);
      Interfaces.PositivePlug plug_p2(final m=m);
      Interfaces.NegativePlug plug_n2(final m=m);
      Interfaces.NegativePlug plug_n1(final m=m);
      Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitch
        idealIntermediateSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p2.pin, idealIntermediateSwitch.p2);
      connect(idealIntermediateSwitch.n2, plug_n2.pin);
      connect(idealIntermediateSwitch.p1, plug_p1.pin);
      connect(idealIntermediateSwitch.n1, plug_n1.pin);
      connect(control, idealIntermediateSwitch.control);
      connect(idealIntermediateSwitch.heatPort, heatPort);
    end IdealIntermediateSwitch;

* * * * *

![image28](Modelica.Electrical.MultiPhase.Ideal.IdealDiodeI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).IdealDiode
==================================================================================================================================================================================================

**Multiphase ideal diode**

Information
-----------

::

Contains m ideal diodes (Modelica.Electrical.Analog.Ideal.IdealDiode).

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port),
[Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort)
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name   Default  Description
  ------------------------------- ------ -------- ------------------------
  Integer                         m      3        Number of phases

  [Resistance](Modelica_SIunits.h Ron[m]          Closed diode resistance
  tml#Modelica.SIunits.Resistance                 [Ohm]
  )                                               

  [Conductance](Modelica_SIunits. Goff[m          Opened diode conductance
  html#Modelica.SIunits.Conductan ]               [S]
  ce)                                             

  [Voltage](Modelica_SIunits.html Vknee[          Treshold voltage [V]
  #Modelica.SIunits.Voltage)      m]              

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

    model IdealDiode "Multiphase ideal diode"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed diode resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened diode conductance";
      parameter Modelica.SIunits.Voltage Vknee[m](final min=zeros(m), start = zeros(m)) 
        "Treshold voltage";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode[m](
        final Ron=Ron,
        final Goff=Goff,
        final Vknee=Vknee,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, idealDiode.p);
      connect(idealDiode.n, plug_n.pin);
    end IdealDiode;

* * * * *

![image29](Modelica.Electrical.MultiPhase.Ideal.IdealTransformerI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).IdealTransformer
==============================================================================================================================================================================================================

**Multiphase ideal transformer**

Information
-----------

::

Contains m ideal transformers
(Modelica.Electrical.Analog.Ideal.IdealTransformer).

**Note:** Due to the above equations, also DC signals will be
transformed!

::

Extends from
[Interfaces.FourPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.FourPlug)
(Component with two m-phase electric ports).

Parameters
----------

  --------------------------------------------------------------------------
  Type                            Name        Defau Description
                                              lt    
  ------------------------------- ----------- ----- ------------------------
  Integer                         m           3     Number of phases

  Real                            n[m]              Turns ratio

  Boolean                         considerMag false Choice of considering
                                  netization        magnetization

  [Inductance](Modelica_SIunits.h Lm1[m]            Magnetization
  tml#Modelica.SIunits.Inductance                   inductances w.r.t.
  )                                                 primary side [H]
  --------------------------------------------------------------------------

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

    model IdealTransformer "Multiphase ideal transformer"
      extends Interfaces.FourPlug;
      parameter Real n[m](start=fill(1, m)) "Turns ratio";
      parameter Boolean considerMagnetization=false 
        "Choice of considering magnetization";
      parameter SIunits.Inductance Lm1[m](start=fill(1,m)) 
        "Magnetization inductances w.r.t. primary side";
      Modelica.Electrical.Analog.Ideal.IdealTransformer idealTransformer[m](
          final n=n,
          each final considerMagnetization=considerMagnetization,
          final Lm1=Lm1);
    equation 
      connect(plug_p1.pin, idealTransformer.p1);
      connect(plug_p2.pin, idealTransformer.p2);
      connect(plug_n1.pin, idealTransformer.n1);
      connect(plug_n2.pin, idealTransformer.n2);
    end IdealTransformer;

* * * * *

![image30](Modelica.Electrical.MultiPhase.Ideal.IdleI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).Idle
======================================================================================================================================================================================

**Multiphase idle branch**

Information
-----------

::

Contains m idles (Modelica.Electrical.Analog.Ideal.Idle)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

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

    model Idle "Multiphase idle branch"
      extends Interfaces.TwoPlug;
      Modelica.Electrical.Analog.Ideal.Idle idle[m];
    equation 

      connect(plug_p.pin, idle.p);
      connect(idle.n, plug_n.pin);
    end Idle;

* * * * *

![image31](Modelica.Electrical.MultiPhase.Ideal.ShortI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).Short
========================================================================================================================================================================================

**Multiphase short cut branch**

Information
-----------

::

Contains m short cuts (Modelica.Electrical.Analog.Ideal.Short)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

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

    model Short "Multiphase short cut branch"
      extends Interfaces.TwoPlug;
      Modelica.Electrical.Analog.Ideal.Short short[m];
    equation 

      connect(plug_p.pin, short.p);
      connect(short.n, plug_n.pin);
    end Short;

* * * * *

![image32](Modelica.Electrical.MultiPhase.Ideal.IdealOpeningSwitchI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).IdealOpeningSwitch
==================================================================================================================================================================================================================

**Multiphase ideal opener**

Information
-----------

::

Contains m ideal opening switches
(Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch).

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port),
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
  Type                                           Name   Description
  ---------------------------------------------- ------ ------------------
  [PositivePlug](Modelica_Electrical_MultiPhase_ plug\_ 
  Interfaces.html#Modelica.Electrical.MultiPhase p      
  .Interfaces.PositivePlug)                             

  [NegativePlug](Modelica_Electrical_MultiPhase_ plug\_ 
  Interfaces.html#Modelica.Electrical.MultiPhase n      
  .Interfaces.NegativePlug)                             

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPo 
  terfaces.html#Modelica.Thermal.HeatTransfer.In rt[mh] 
  terfaces.HeatPort_a)                                  

  input                                          contro true =\> switch
  [BooleanInput](Modelica_Blocks_Interfaces.html l[m]   open, false =\>
  #Modelica.Blocks.Interfaces.BooleanInput)             p--n connected
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealOpeningSwitch "Multiphase ideal opener"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => switch open, false => p--n connected";
      Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch idealOpeningSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, idealOpeningSwitch.p);
      connect(idealOpeningSwitch.n, plug_n.pin);
      connect(control, idealOpeningSwitch.control);
      connect(idealOpeningSwitch.heatPort, heatPort);
    end IdealOpeningSwitch;

* * * * *

![image33](Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitchI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).IdealClosingSwitch
==================================================================================================================================================================================================================

**Multiphase ideal closer**

Information
-----------

::

Contains m ideal closing switches
(Modelica.Electrical.Analog.Ideal.IdealClosingSwitch).

<

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port),
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
  Type                                           Name   Description
  ---------------------------------------------- ------ ------------------
  [PositivePlug](Modelica_Electrical_MultiPhase_ plug\_ 
  Interfaces.html#Modelica.Electrical.MultiPhase p      
  .Interfaces.PositivePlug)                             

  [NegativePlug](Modelica_Electrical_MultiPhase_ plug\_ 
  Interfaces.html#Modelica.Electrical.MultiPhase n      
  .Interfaces.NegativePlug)                             

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPo 
  terfaces.html#Modelica.Thermal.HeatTransfer.In rt[mh] 
  terfaces.HeatPort_a)                                  

  input                                          contro true =\> p--n
  [BooleanInput](Modelica_Blocks_Interfaces.html l[m]   connected, false
  #Modelica.Blocks.Interfaces.BooleanInput)             =\> switch open
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealClosingSwitch "Multiphase ideal closer"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => p--n connected, false => switch open";
      Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, idealClosingSwitch.p);
      connect(idealClosingSwitch.n, plug_n.pin);
      connect(control, idealClosingSwitch.control);
      connect(idealClosingSwitch.heatPort, heatPort);
    end IdealClosingSwitch;

* * * * *

![image34](Modelica.Electrical.MultiPhase.Ideal.OpenerWithArcI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).OpenerWithArc
========================================================================================================================================================================================================

**Multiphase opener with arc**

Information
-----------

::

Contains m opening switches with arc
(Modelica.Electrical.Analog.Ideal.OpenerWithArc).

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port),
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

  [Voltage](Modelica_SIunits.html V0[m]           Initial arc voltage [V]
  #Modelica.SIunits.Voltage)                      

  [VoltageSlope](Modelica_SIunits dVdt[m          Arc voltage slope [V/s]
  .html#Modelica.SIunits.VoltageS ]               
  lope)                                           

  [Voltage](Modelica_SIunits.html Vmax[m          Max. arc voltage [V]
  #Modelica.SIunits.Voltage)      ]               

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
  Type                                           Name   Description
  ---------------------------------------------- ------ ------------------
  [PositivePlug](Modelica_Electrical_MultiPhase_ plug\_ 
  Interfaces.html#Modelica.Electrical.MultiPhase p      
  .Interfaces.PositivePlug)                             

  [NegativePlug](Modelica_Electrical_MultiPhase_ plug\_ 
  Interfaces.html#Modelica.Electrical.MultiPhase n      
  .Interfaces.NegativePlug)                             

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPo 
  terfaces.html#Modelica.Thermal.HeatTransfer.In rt[mh] 
  terfaces.HeatPort_a)                                  

  input                                          contro true =\> switch
  [BooleanInput](Modelica_Blocks_Interfaces.html l[m]   open, false =\>
  #Modelica.Blocks.Interfaces.BooleanInput)             p--n connected
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model OpenerWithArc "Multiphase opener with arc"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      parameter Modelica.SIunits.Voltage V0[m](start=fill(30,m)) 
        "Initial arc voltage";
      parameter Modelica.SIunits.VoltageSlope dVdt[m](start=fill(10E3,m)) 
        "Arc voltage slope";
      parameter Modelica.SIunits.Voltage Vmax[m](start=fill(60,m)) 
        "Max. arc voltage";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => switch open, false => p--n connected";
      Modelica.Electrical.Analog.Ideal.OpenerWithArc openerWithArc[m](
        final Ron=Ron,
        final Goff=Goff,
        final V0=V0,
        final dVdt=dVdt,
        final Vmax=Vmax,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, openerWithArc.p);
      connect(openerWithArc.n, plug_n.pin);
      connect(control, openerWithArc.control);
      connect(openerWithArc.heatPort, heatPort);
    end OpenerWithArc;

* * * * *

![image35](Modelica.Electrical.MultiPhase.Ideal.CloserWithArcI.png) [Modelica.Electrical.MultiPhase.Ideal](Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal).CloserWithArc
========================================================================================================================================================================================================

**Multiphase closer with arc**

Information
-----------

::

Contains m closing switches with arc
(Modelica.Electrical.Analog.Ideal.CloserWithArc).

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port),
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

  [Voltage](Modelica_SIunits.html V0[m]           Initial arc voltage [V]
  #Modelica.SIunits.Voltage)                      

  [VoltageSlope](Modelica_SIunits dVdt[m          Arc voltage slope [V/s]
  .html#Modelica.SIunits.VoltageS ]               
  lope)                                           

  [Voltage](Modelica_SIunits.html Vmax[m          Max. arc voltage [V]
  #Modelica.SIunits.Voltage)      ]               

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
  Type                                           Name   Description
  ---------------------------------------------- ------ ------------------
  [PositivePlug](Modelica_Electrical_MultiPhase_ plug\_ 
  Interfaces.html#Modelica.Electrical.MultiPhase p      
  .Interfaces.PositivePlug)                             

  [NegativePlug](Modelica_Electrical_MultiPhase_ plug\_ 
  Interfaces.html#Modelica.Electrical.MultiPhase n      
  .Interfaces.NegativePlug)                             

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPo 
  terfaces.html#Modelica.Thermal.HeatTransfer.In rt[mh] 
  terfaces.HeatPort_a)                                  

  input                                          contro true =\> switch
  [BooleanInput](Modelica_Blocks_Interfaces.html l[m]   open, false =\>
  #Modelica.Blocks.Interfaces.BooleanInput)             p--n connected
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model CloserWithArc "Multiphase closer with arc"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      parameter Modelica.SIunits.Voltage V0[m](start=fill(30,m)) 
        "Initial arc voltage";
      parameter Modelica.SIunits.VoltageSlope dVdt[m](start=fill(10E3,m)) 
        "Arc voltage slope";
      parameter Modelica.SIunits.Voltage Vmax[m](start=fill(60,m)) 
        "Max. arc voltage";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => switch open, false => p--n connected";
      Modelica.Electrical.Analog.Ideal.CloserWithArc closerWithArc[m](
        final Ron=Ron,
        final Goff=Goff,
        final V0=V0,
        final dVdt=dVdt,
        final Vmax=Vmax,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin,closerWithArc. p);
      connect(closerWithArc.n, plug_n.pin);
      connect(control,closerWithArc. control);
      connect(closerWithArc.heatPort, heatPort);
    end CloserWithArc;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:20 2010.
