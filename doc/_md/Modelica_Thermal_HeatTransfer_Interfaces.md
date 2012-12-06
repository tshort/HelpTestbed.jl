% Modelica.Thermal.HeatTransfer.Interfaces
% 
% 

[Modelica.Thermal.HeatTransfer](Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer).Interfaces
============================================================================================================

**Connectors and partial models**

Information
-----------

::

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                           Description
  ---------------------------------------------- -------------------------
  ![image7](Modelica.Thermal.HeatTransfer.Interf Thermal port for 1-dim.
  aces.HeatPortS.png)                            heat transfer
  [HeatPort](Modelica_Thermal_HeatTransfer_Inter 
  faces.html#Modelica.Thermal.HeatTransfer.Inter 
  faces.HeatPort)                                

  ![image8](Modelica.Thermal.HeatTransfer.Interf Thermal port for 1-dim.
  aces.HeatPort_aS.png)                          heat transfer (filled
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In rectangular icon)
  terfaces.html#Modelica.Thermal.HeatTransfer.In 
  terfaces.HeatPort_a)                           

  ![image9](Modelica.Thermal.HeatTransfer.Interf Thermal port for 1-dim.
  aces.HeatPort_bS.png)                          heat transfer (unfilled
  [HeatPort\_b](Modelica_Thermal_HeatTransfer_In rectangular icon)
  terfaces.html#Modelica.Thermal.HeatTransfer.In 
  terfaces.HeatPort_b)                           

  ![image10](Modelica.Thermal.HeatTransfer.Inter Partial heat transfer
  faces.Element1DS.png)                          element with two HeatPort
  [Element1D](Modelica_Thermal_HeatTransfer_Inte connectors that does not
  rfaces.html#Modelica.Thermal.HeatTransfer.Inte store energy
  rfaces.Element1D)                              

  ![image11](Modelica.Thermal.HeatTransfer.Inter Partial model to include
  faces.PartialElementaryConditionalHeatPortS.pn a conditional HeatPort in
  g)                                             order to dissipate
  [PartialElementaryConditionalHeatPort](Modelic losses, used for textual
  a_Thermal_HeatTransfer_Interfaces.html#Modelic modeling, i.e., for
  a.Thermal.HeatTransfer.Interfaces.PartialEleme elementary models
  ntaryConditionalHeatPort)                      

  ![image12](Modelica.Thermal.HeatTransfer.Inter Partial model to include
  faces.PartialElementaryConditionalHeatPortS.pn a conditional HeatPort in
  g)                                             order to dissipate
  [PartialElementaryConditionalHeatPortWithoutT] losses, used for textual
  (Modelica_Thermal_HeatTransfer_Interfaces.html modeling, i.e., for
  #Modelica.Thermal.HeatTransfer.Interfaces.Part elementary models
  ialElementaryConditionalHeatPortWithoutT)      

  ![image13](Modelica.Thermal.HeatTransfer.Inter Partial model to include
  faces.PartialElementaryConditionalHeatPortS.pn a conditional HeatPort in
  g)                                             order to dissipate
  [PartialConditionalHeatPort](Modelica_Thermal_ losses, used for
  HeatTransfer_Interfaces.html#Modelica.Thermal. graphical modeling, i.e.,
  HeatTransfer.Interfaces.PartialConditionalHeat for bulding modelsby
  Port)                                          drag-and-drop
  ------------------------------------------------------------------------

* * * * *

[Modelica.Thermal.HeatTransfer.Interfaces](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces).HeatPort
===========================================================================================================================================

**Thermal port for 1-dim. heat transfer**

Information
-----------

::

::

Contents
--------

  -------------------------------------------------------------------------
  Type                              Name  Description
  --------------------------------- ----- ---------------------------------
  [Temperature](Modelica_SIunits.ht T     Port temperature [K]
  ml#Modelica.SIunits.Temperature)        

  flow                              Q\_fl Heat flow rate (positive if
  [HeatFlowRate](Modelica_SIunits.h ow    flowing from outside into the
  tml#Modelica.SIunits.HeatFlowRate       component) [W]
  )                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial connector HeatPort "Thermal port for 1-dim. heat transfer"
      Modelica.SIunits.Temperature T "Port temperature";
      flow Modelica.SIunits.HeatFlowRate Q_flow 
        "Heat flow rate (positive if flowing from outside into the component)";
    end HeatPort;

* * * * *

![image14](Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_aI.png) [Modelica.Thermal.HeatTransfer.Interfaces](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces).HeatPort\_a
===================================================================================================================================================================================================================

**Thermal port for 1-dim. heat transfer (filled rectangular icon)**

Information
-----------

::

This connector is used for 1-dimensional heat flow between components.
The variables in the connector are:

    T       Temperature in [Kelvin].
    Q_flow  Heat flow rate in [Watt].

According to the Modelica sign convention, a **positive** heat flow rate
**Q\_flow** is considered to flow **into** a component. This convention
has to be used whenever this connector is used in a model class.

Note, that the two connector classes **HeatPort\_a** and **HeatPort\_b**
are identical with the only exception of the different **icon layout**.

::

Extends from
[HeatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort)
(Thermal port for 1-dim. heat transfer).

Contents
--------

  -------------------------------------------------------------------------
  Type                              Name  Description
  --------------------------------- ----- ---------------------------------
  [Temperature](Modelica_SIunits.ht T     Port temperature [K]
  ml#Modelica.SIunits.Temperature)        

  flow                              Q\_fl Heat flow rate (positive if
  [HeatFlowRate](Modelica_SIunits.h ow    flowing from outside into the
  tml#Modelica.SIunits.HeatFlowRate       component) [W]
  )                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector HeatPort_a 
      "Thermal port for 1-dim. heat transfer (filled rectangular icon)"

      extends HeatPort;

    end HeatPort_a;

* * * * *

![image15](Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_bI.png) [Modelica.Thermal.HeatTransfer.Interfaces](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces).HeatPort\_b
===================================================================================================================================================================================================================

**Thermal port for 1-dim. heat transfer (unfilled rectangular icon)**

Information
-----------

::

This connector is used for 1-dimensional heat flow between components.
The variables in the connector are:

    T       Temperature in [Kelvin].
    Q_flow  Heat flow rate in [Watt].

According to the Modelica sign convention, a **positive** heat flow rate
**Q\_flow** is considered to flow **into** a component. This convention
has to be used whenever this connector is used in a model class.

Note, that the two connector classes **HeatPort\_a** and **HeatPort\_b**
are identical with the only exception of the different **icon layout**.

::

Extends from
[HeatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort)
(Thermal port for 1-dim. heat transfer).

Contents
--------

  -------------------------------------------------------------------------
  Type                              Name  Description
  --------------------------------- ----- ---------------------------------
  [Temperature](Modelica_SIunits.ht T     Port temperature [K]
  ml#Modelica.SIunits.Temperature)        

  flow                              Q\_fl Heat flow rate (positive if
  [HeatFlowRate](Modelica_SIunits.h ow    flowing from outside into the
  tml#Modelica.SIunits.HeatFlowRate       component) [W]
  )                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector HeatPort_b 
      "Thermal port for 1-dim. heat transfer (unfilled rectangular icon)"

      extends HeatPort;

    end HeatPort_b;

* * * * *

![image16](Modelica.Thermal.HeatTransfer.Interfaces.Element1DI.png) [Modelica.Thermal.HeatTransfer.Interfaces](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces).Element1D
================================================================================================================================================================================================================

**Partial heat transfer element with two HeatPort connectors that does
not store energy**

Information
-----------

::

This partial model contains the basic connectors and variables to allow
heat transfer models to be created that **do not store energy**, This
model defines and includes equations for the temperature drop across the
element, **dT**, and the heat flow rate through the element from port\_a
to port\_b, **Q\_flow**.

By extending this model, it is possible to write simple constitutive
equations for many types of heat transfer components.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.htm port\ 
  l#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)     _a    

  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.htm port\ 
  l#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)     _b    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model Element1D 
      "Partial heat transfer element with two HeatPort connectors that does not store energy"

      Modelica.SIunits.HeatFlowRate Q_flow "Heat flow rate from port_a -> port_b";
      Modelica.SIunits.TemperatureDifference dT "port_a.T - port_b.T";
    public 
      HeatPort_a port_a;
      HeatPort_b port_b;
    equation 
      dT = port_a.T - port_b.T;
      port_a.Q_flow = Q_flow;
      port_b.Q_flow = -Q_flow;
    end Element1D;

* * * * *

![image17](Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortI.png) [Modelica.Thermal.HeatTransfer.Interfaces](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces).PartialElementaryConditionalHeatPort
======================================================================================================================================================================================================================================================================

**Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models**

Information
-----------

::

This partial model provides a conditional heat port for dissipating
losses.

-   If **useHeatPort** is set to **false** (default), no heat port is
    available, and the thermal loss power is dissipated internally. In
    this case, the parameter **T** specifies the fixed device
    temperature (the default for T = 20°C)
-   If **useHeatPort** is set to **true**, the heat port is available.

If this model is used, the loss power has to be provided by an equation
in the model which inherits from PartialElementaryConditionalHeatPort
model (**lossPower = ...**). The device temperature **TheatPort** can be
used to describe the influence of the device temperature on the model
behaviour.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name    Defau Description
                                            lt    
  --------------------------------- ------- ----- -------------------------
  Boolean                           useHeat false =true, if heatPort is
                                    Port          enabled

  [Temperature](Modelica_SIunits.ht T       293.1 Fixed device temperature
  ml#Modelica.SIunits.Temperature)          5     if useHeatPort = false
                                                  [K]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- --------------------------
  [HeatPort\_a](Modelica_Thermal_HeatTrans heat Optional port to which
  fer_Interfaces.html#Modelica.Thermal.Hea Port dissipated losses are
  tTransfer.Interfaces.HeatPort_a)              transported in form of
                                                heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialElementaryConditionalHeatPort 
      "Partial model to include a conditional HeatPort in order to dissipate losses, used for textual modeling, i.e., for elementary models"
      parameter Boolean useHeatPort = false "=true, if heatPort is enabled";
      parameter Modelica.SIunits.Temperature T=293.15 
        "Fixed device temperature if useHeatPort = false";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort(
        final T=TheatPort,
        final Q_flow=-lossPower) if useHeatPort 
        "Optional port to which dissipated losses are transported in form of heat";
      Modelica.SIunits.Power lossPower 
        "Loss power leaving component via heatPort (> 0, if heat is flowing out of component)";
      Modelica.SIunits.Temperature TheatPort "Temperature of heatPort";
    equation 
      if not useHeatPort then
         TheatPort = T;
      end if;
    end PartialElementaryConditionalHeatPort;

* * * * *

![image18](Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortI.png) [Modelica.Thermal.HeatTransfer.Interfaces](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces).PartialElementaryConditionalHeatPortWithoutT
==============================================================================================================================================================================================================================================================================

**Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models**

Information
-----------

::

This partial model provides a conditional heat port for dissipating
losses.

-   If **useHeatPort** is set to **false** (default), no heat port is
    available, and the thermal loss power is dissipated internally. In
    this case, the parameter **T** specifies the fixed device
    temperature (the default for T = 20°C)
-   If **useHeatPort** is set to **true**, the heat port is available.

If this model is used, the loss power has to be provided by an equation
in the model which inherits from PartialElementaryConditionalHeatPort
model (**lossPower = ...**). The device temperature **TheatPort** can be
used to describe the influence of the device temperature on the model
behaviour.

::

Parameters
----------

  Type        Name            Default     Description
  ----------- --------------- ----------- ---------------------------------
  Boolean     useHeatPort     false       =true, if heatPort is enabled

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- --------------------------
  [HeatPort\_a](Modelica_Thermal_HeatTrans heat Optional port to which
  fer_Interfaces.html#Modelica.Thermal.Hea Port dissipated losses are
  tTransfer.Interfaces.HeatPort_a)              transported in form of
                                                heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialElementaryConditionalHeatPortWithoutT 
      "Partial model to include a conditional HeatPort in order to dissipate losses, used for textual modeling, i.e., for elementary models"
      parameter Boolean useHeatPort = false "=true, if heatPort is enabled";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort(
        final Q_flow=-lossPower) if useHeatPort 
        "Optional port to which dissipated losses are transported in form of heat";
      Modelica.SIunits.Power lossPower 
        "Loss power leaving component via heatPort (> 0, if heat is flowing out of component)";
    end PartialElementaryConditionalHeatPortWithoutT;

* * * * *

![image19](Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortI.png) [Modelica.Thermal.HeatTransfer.Interfaces](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces).PartialConditionalHeatPort
============================================================================================================================================================================================================================================================

**Partial model to include a conditional HeatPort in order to dissipate
losses, used for graphical modeling, i.e., for bulding modelsby
drag-and-drop**

Information
-----------

::

This partial model provides a conditional heat port for dissipating
losses.

-   If **useHeatPort** is set to **false** (default), no heat port is
    available, and the thermal loss power is dissipated internally. In
    this case, the parameter **T** specifies the fixed device
    temperature (the default for T = 20°C)
-   If **useHeatPort** is set to **true**, the heat port is available.

If this model is used, the **internalHeatPort** has to be connected in
the model which inherits from PartialElementaryConditionalHeatPort
model. The device temperature **internalHeatPort.T** can be used to
describe the influence of the device temperature on the model behaviour.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name    Defau Description
                                            lt    
  --------------------------------- ------- ----- -------------------------
  Boolean                           useHeat false =true, if HeatPort is
                                    Port          enabled

  [Temperature](Modelica_SIunits.ht T       293.1 Fixed device temperature
  ml#Modelica.SIunits.Temperature)          5     if useHeatPort = false
                                                  [K]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- --------------------------
  [HeatPort\_a](Modelica_Thermal_HeatTrans heat Optional port to which
  fer_Interfaces.html#Modelica.Thermal.Hea Port dissipated losses are
  tTransfer.Interfaces.HeatPort_a)              transported in form of
                                                heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialConditionalHeatPort 
      "Partial model to include a conditional HeatPort in order to dissipate losses, used for graphical modeling, i.e., for bulding modelsby drag-and-drop"
      parameter Boolean useHeatPort = false "=true, if HeatPort is enabled";
      parameter Modelica.SIunits.Temperature T=293.15 
        "Fixed device temperature if useHeatPort = false";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort if useHeatPort 
        "Optional port to which dissipated losses are transported in form of heat";
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(final T=T) if not useHeatPort;
    protected 
      HeatPort_a internalHeatPort;
    equation 
      connect(heatPort, internalHeatPort);
      connect(fixedTemperature.port, internalHeatPort);
    end PartialConditionalHeatPort;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:47 2010.
