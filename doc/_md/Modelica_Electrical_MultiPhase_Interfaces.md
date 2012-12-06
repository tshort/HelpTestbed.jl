% Modelica.Electrical.MultiPhase.Interfaces
% 
% 

[Modelica.Electrical.MultiPhase](Modelica_Electrical_MultiPhase.html#Modelica.Electrical.MultiPhase).Interfaces
===============================================================================================================

**Interfaces for electrical multiphase models**

Information
-----------

::

This package contains connectors and interfaces (partial models) for
electrical multiphase components, based on Modelica.Electrical.Analog.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                           Description
  ---------------------------------------------- -------------------------
  ![image8](Modelica.Electrical.MultiPhase.Inter Plug with m pins for an
  faces.PlugS.png)                               electric component
  [Plug](Modelica_Electrical_MultiPhase_Interfac 
  es.html#Modelica.Electrical.MultiPhase.Interfa 
  ces.Plug)                                      

  ![image9](Modelica.Electrical.MultiPhase.Inter Positive plug with m pins
  faces.PositivePlugS.png)                       
  [PositivePlug](Modelica_Electrical_MultiPhase_ 
  Interfaces.html#Modelica.Electrical.MultiPhase 
  .Interfaces.PositivePlug)                      

  ![image10](Modelica.Electrical.MultiPhase.Inte Negative plug with m pins
  rfaces.NegativePlugS.png)                      
  [NegativePlug](Modelica_Electrical_MultiPhase_ 
  Interfaces.html#Modelica.Electrical.MultiPhase 
  .Interfaces.NegativePlug)                      

  ![image11](Modelica.Electrical.MultiPhase.Inte Partial model to include
  rfaces.ConditionalHeatPortS.png)               conditional HeatPorts in
  [ConditionalHeatPort](Modelica_Electrical_Mult order to describe the
  iPhase_Interfaces.html#Modelica.Electrical.Mul power loss via a thermal
  tiPhase.Interfaces.ConditionalHeatPort)        network

  ![image12](Modelica.Electrical.MultiPhase.Inte Component with one
  rfaces.TwoPlugS.png)                           m-phase electric port
  [TwoPlug](Modelica_Electrical_MultiPhase_Inter 
  faces.html#Modelica.Electrical.MultiPhase.Inte 
  rfaces.TwoPlug)                                

  ![image13](Modelica.Electrical.MultiPhase.Inte Component with two
  rfaces.TwoPlugS.png)                           electrical plugs and
  [OnePort](Modelica_Electrical_MultiPhase_Inter currents from plug\_p to
  faces.html#Modelica.Electrical.MultiPhase.Inte plug\_n
  rfaces.OnePort)                                

  ![image14](Modelica.Electrical.MultiPhase.Inte Component with two
  rfaces.FourPlugS.png)                          m-phase electric ports
  [FourPlug](Modelica_Electrical_MultiPhase_Inte 
  rfaces.html#Modelica.Electrical.MultiPhase.Int 
  erfaces.FourPlug)                              

  ![image15](Modelica.Electrical.MultiPhase.Inte Component with two
  rfaces.FourPlugS.png)                          m-phase electric ports,
  [TwoPort](Modelica_Electrical_MultiPhase_Inter including currents
  faces.html#Modelica.Electrical.MultiPhase.Inte 
  rfaces.TwoPort)                                
  ------------------------------------------------------------------------

* * * * *

[Modelica.Electrical.MultiPhase.Interfaces](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces).Plug
==========================================================================================================================================

**Plug with m pins for an electric component**

Information
-----------

::

Connectors PositivePlug and NegativePlug are nearly identical. The only
difference is that the icons are different in order to identify more
easily the plugs of a component. Usually, connector PositivePlug is used
for the positive and connector NegativePlug for the negative plug of an
electrical component. Connector Plug is a composite connector containing
m Pins (Modelica.Electrical.Analog.Interfaces.Pin).

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Contents
--------

  -------------------------------------------------------------------------
  Type                                                   Name   Description
  ------------------------------------------------------ ------ -----------
  Integer                                                m      Number of
                                                                phases

  [Pin](Modelica_Electrical_Analog_Interfaces.html#Model pin[m] 
  ica.Electrical.Analog.Interfaces.Pin)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector Plug "Plug with m pins for an electric component"
      parameter Integer m(final min=1) = 3 "Number of phases";
      Modelica.Electrical.Analog.Interfaces.Pin pin[m];

    end Plug;

* * * * *

![image16](Modelica.Electrical.MultiPhase.Interfaces.PositivePlugI.png) [Modelica.Electrical.MultiPhase.Interfaces](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces).PositivePlug
==========================================================================================================================================================================================================================

**Positive plug with m pins**

Information
-----------

::

Connectors PositivePlug and NegativePlug are nearly identical. The only
difference is that the icons are different in order to identify more
easily the plugs of a component. Usually, connector PositivePlug is used
for the positive and connector NegativePlug for the negative plug of an
electrical component. Connector Plug is a composite connector containing
m Pins (Modelica.Electrical.Analog.Interfaces.Pin).

::

Extends from
[Plug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.Plug)
(Plug with m pins for an electric component).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Contents
--------

  -------------------------------------------------------------------------
  Type                                                   Name   Description
  ------------------------------------------------------ ------ -----------
  Integer                                                m      Number of
                                                                phases

  [Pin](Modelica_Electrical_Analog_Interfaces.html#Model pin[m] 
  ica.Electrical.Analog.Interfaces.Pin)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector PositivePlug "Positive plug with m pins"
      extends Plug;

    end PositivePlug;

* * * * *

![image17](Modelica.Electrical.MultiPhase.Interfaces.NegativePlugI.png) [Modelica.Electrical.MultiPhase.Interfaces](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces).NegativePlug
==========================================================================================================================================================================================================================

**Negative plug with m pins**

Information
-----------

::

Connectors PositivePlug and NegativePlug are nearly identical. The only
difference is that the icons are different in order to identify more
easily the plugs of a component. Usually, connector PositivePlug is used
for the positive and connector NegativePlug for the negative plug of an
electrical component. Connector Plug is a composite connector containing
m Pins (Modelica.Electrical.Analog.Interfaces.Pin).

::

Extends from
[Plug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.Plug)
(Plug with m pins for an electric component).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Contents
--------

  -------------------------------------------------------------------------
  Type                                                   Name   Description
  ------------------------------------------------------ ------ -----------
  Integer                                                m      Number of
                                                                phases

  [Pin](Modelica_Electrical_Analog_Interfaces.html#Model pin[m] 
  ica.Electrical.Analog.Interfaces.Pin)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector NegativePlug "Negative plug with m pins"
      extends Plug;
    end NegativePlug;

* * * * *

![image18](Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPortI.png) [Modelica.Electrical.MultiPhase.Interfaces](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces).ConditionalHeatPort
========================================================================================================================================================================================================================================

**Partial model to include conditional HeatPorts in order to describe
the power loss via a thermal network**

Information
-----------

::

This partial model provides conditional heat ports for the connection to
a thermal network.

-   If **useHeatPort** is set to **false** (default), no heat port is
    available, and the thermal loss power flows internally to the
    ground. In this case, the parameter **T** specifies the fixed device
    temperatures.
-   If **useHeatPort** is set to **true**, all heat ports are available.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name   Default   Description
  ------------------------------- ------ --------- ------------------------
  Integer                         mh     3         Number of
                                                   heatPorts=number of
                                                   phases

  Boolean                         useHea false     =true, if all HeatPorts
                                  tPort            are enabled

  [Temperature](Modelica_SIunits. T[mh]  fill(293. Fixed device
  html#Modelica.SIunits.Temperatu        15,       temperatures if
  re)                                    mh)       useHeatPort = false [K]
  -------------------------------------------------------------------------

Connectors
----------

  --------------------------------------------------------------------------
  Type                                                     Name     Descript
                                                                    ion
  -------------------------------------------------------- -------- --------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.h heatPort 
  tml#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a) [mh]     
  --------------------------------------------------------------------------

Modelica definition
-------------------

    partial model ConditionalHeatPort 
      "Partial model to include conditional HeatPorts in order to describe the power loss via a thermal network"
      parameter Integer mh(min=1)=3 "Number of heatPorts=number of phases";
      parameter Boolean useHeatPort = false "=true, if all HeatPorts are enabled";
      parameter Modelica.SIunits.Temperature T[mh]=fill(293.15, mh) 
        "Fixed device temperatures if useHeatPort = false";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort[mh] if useHeatPort;
    end ConditionalHeatPort;

* * * * *

![image19](Modelica.Electrical.MultiPhase.Interfaces.TwoPlugI.png) [Modelica.Electrical.MultiPhase.Interfaces](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces).TwoPlug
================================================================================================================================================================================================================

**Component with one m-phase electric port**

Information
-----------

::

Superclass of elements which have **two** electrical plugs: the positive
plug connector *plug\_p*, and the negative plug connector *plug\_n*. The
currents flowing into plug\_p are provided explicitly as currents i[m].

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

    partial model TwoPlug "Component with one m-phase electric port"
      parameter Integer m(min=1) = 3 "Number of phases";
      Modelica.SIunits.Voltage v[m] "Voltage drops between the two plugs";
      Modelica.SIunits.Current i[m] "Currents flowing into positive plugs";
      PositivePlug plug_p(final m=m);
      NegativePlug plug_n(final m=m);
    equation 
      v = plug_p.pin.v - plug_n.pin.v;
      i = plug_p.pin.i;
    end TwoPlug;

* * * * *

![image20](Modelica.Electrical.MultiPhase.Interfaces.TwoPlugI.png) [Modelica.Electrical.MultiPhase.Interfaces](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces).OnePort
================================================================================================================================================================================================================

**Component with two electrical plugs and currents from plug\_p to
plug\_n**

Information
-----------

::

Superclass of elements which have **two** electrical plugs: the positive
plug connector *plug\_p*, and the negative plug connector *plug\_n*. The
currents flowing into plug\_p are provided explicitly as currents i[m].
It is assumed that the currents flowing into plug\_p are identical to
the currents flowing out of plug\_n.

::

Extends from
[TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
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

    partial model OnePort 
      "Component with two electrical plugs and currents from plug_p to plug_n"

      extends TwoPlug;
    equation 
      plug_p.pin.i + plug_n.pin.i = zeros(m);
    end OnePort;

* * * * *

![image21](Modelica.Electrical.MultiPhase.Interfaces.FourPlugI.png) [Modelica.Electrical.MultiPhase.Interfaces](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces).FourPlug
==================================================================================================================================================================================================================

**Component with two m-phase electric ports**

Information
-----------

::

Superclass of elements which have **four** electrical plugs.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

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

    partial model FourPlug "Component with two m-phase electric ports"
      parameter Integer m(final min=1) = 3 "Number of phases";
      Modelica.SIunits.Voltage v1[m] "Voltage drops over the left port";
      Modelica.SIunits.Voltage v2[m] "Voltage drops over the right port";
      Modelica.SIunits.Current i1[m] 
        "Current flowing into positive plug of the left port";
      Modelica.SIunits.Current i2[m] 
        "Current flowing into positive plug of the right port";
      PositivePlug plug_p1(final m=m);
      PositivePlug plug_p2(final m=m);
      NegativePlug plug_n1(final m=m);
      NegativePlug plug_n2(final m=m);
    equation 
      v1 = plug_p1.pin.v - plug_n1.pin.v;
      v2 = plug_p2.pin.v - plug_n2.pin.v;
      i1 = plug_p1.pin.i;
      i2 = plug_p2.pin.i;
    end FourPlug;

* * * * *

![image22](Modelica.Electrical.MultiPhase.Interfaces.FourPlugI.png) [Modelica.Electrical.MultiPhase.Interfaces](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces).TwoPort
=================================================================================================================================================================================================================

**Component with two m-phase electric ports, including currents**

Information
-----------

::

Superclass of elements which have **four** electrical plugs. It is
assumed that the currents flowing into plug\_p1 are identical to the
currents flowing out of plug\_n1, and that the currents flowing into
plug\_p2 are identical to the currents flowing out of plug\_n2.

::

Extends from
[FourPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.FourPlug)
(Component with two m-phase electric ports).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

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

    partial model TwoPort 
      "Component with two m-phase electric ports, including currents"
      extends FourPlug;
    equation 
      plug_p1.pin.i + plug_n1.pin.i = zeros(m);
      plug_p2.pin.i + plug_n2.pin.i = zeros(m);
    end TwoPort;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:22 2010.
