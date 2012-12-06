========================================
Modelica.Thermal.HeatTransfer.Interfaces
========================================

`Modelica.Thermal.HeatTransfer <Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer>`_.Interfaces
--------------------------------------------------------------------------------------------------------------

**Connectors and partial models**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                            | Description                                                                                                                                           |
+=================================================================================================================================================================================================================================================================================+=======================================================================================================================================================+
| |image7| `HeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort>`_                                                                                                                                                          | Thermal port for 1-dim. heat transfer                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image8| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                                                                                                                                     | Thermal port for 1-dim. heat transfer (filled rectangular icon)                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image9| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_                                                                                                                                                     | Thermal port for 1-dim. heat transfer (unfilled rectangular icon)                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image10| `Element1D <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.Element1D>`_                                                                                                                                                       | Partial heat transfer element with two HeatPort connectors that does not store energy                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image11| `PartialElementaryConditionalHeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort>`_                                                                                                 | Partial model to include a conditional HeatPort in order to dissipate losses, used for textual modeling, i.e., for elementary models                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image12| `PartialElementaryConditionalHeatPortWithoutT <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT>`_                                                                                 | Partial model to include a conditional HeatPort in order to dissipate losses, used for textual modeling, i.e., for elementary models                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image13| `PartialConditionalHeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialConditionalHeatPort>`_                                                                                                                     | Partial model to include a conditional HeatPort in order to dissipate losses, used for graphical modeling, i.e., for bulding modelsby drag-and-drop   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Thermal.HeatTransfer.Interfaces <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces>`_.HeatPort
---------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port for 1-dim. heat transfer**

Information
~~~~~~~~~~~

::

::

Contents
~~~~~~~~

+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+
| Type                                                                         | Name      | Description                                                                |
+==============================================================================+===========+============================================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_          | T         | Port temperature [K]                                                       |
+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+
| flow `HeatFlowRate <Modelica_SIunits.html#Modelica.SIunits.HeatFlowRate>`_   | Q\_flow   | Heat flow rate (positive if flowing from outside into the component) [W]   |
+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial connector HeatPort "Thermal port for 1-dim. heat transfer"
      Modelica.SIunits.Temperature T "Port temperature";
      flow Modelica.SIunits.HeatFlowRate Q_flow 
        "Heat flow rate (positive if flowing from outside into the component)";
    end HeatPort;

--------------

|image14| `Modelica.Thermal.HeatTransfer.Interfaces <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces>`_.HeatPort\_a
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port for 1-dim. heat transfer (filled rectangular icon)**

.. figure:: Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_aD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Interfaces.HeatPort\_a

   Modelica.Thermal.HeatTransfer.Interfaces.HeatPort\_a

Information
~~~~~~~~~~~

::

This connector is used for 1-dimensional heat flow between components.
The variables in the connector are:

::

       T       Temperature in [Kelvin].
       Q_flow  Heat flow rate in [Watt].

According to the Modelica sign convention, a **positive** heat flow rate
**Q\_flow** is considered to flow **into** a component. This convention
has to be used whenever this connector is used in a model class.

Note, that the two connector classes **HeatPort\_a** and **HeatPort\_b**
are identical with the only exception of the different **icon layout**.

::

Extends from
`HeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort>`_
(Thermal port for 1-dim. heat transfer).

Contents
~~~~~~~~

+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+
| Type                                                                         | Name      | Description                                                                |
+==============================================================================+===========+============================================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_          | T         | Port temperature [K]                                                       |
+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+
| flow `HeatFlowRate <Modelica_SIunits.html#Modelica.SIunits.HeatFlowRate>`_   | Q\_flow   | Heat flow rate (positive if flowing from outside into the component) [W]   |
+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector HeatPort_a 
      "Thermal port for 1-dim. heat transfer (filled rectangular icon)"

      extends HeatPort;

    end HeatPort_a;

--------------

|image15| `Modelica.Thermal.HeatTransfer.Interfaces <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces>`_.HeatPort\_b
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port for 1-dim. heat transfer (unfilled rectangular icon)**

.. figure:: Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_bD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Interfaces.HeatPort\_b

   Modelica.Thermal.HeatTransfer.Interfaces.HeatPort\_b

Information
~~~~~~~~~~~

::

This connector is used for 1-dimensional heat flow between components.
The variables in the connector are:

::

       T       Temperature in [Kelvin].
       Q_flow  Heat flow rate in [Watt].

According to the Modelica sign convention, a **positive** heat flow rate
**Q\_flow** is considered to flow **into** a component. This convention
has to be used whenever this connector is used in a model class.

Note, that the two connector classes **HeatPort\_a** and **HeatPort\_b**
are identical with the only exception of the different **icon layout**.

::

Extends from
`HeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort>`_
(Thermal port for 1-dim. heat transfer).

Contents
~~~~~~~~

+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+
| Type                                                                         | Name      | Description                                                                |
+==============================================================================+===========+============================================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_          | T         | Port temperature [K]                                                       |
+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+
| flow `HeatFlowRate <Modelica_SIunits.html#Modelica.SIunits.HeatFlowRate>`_   | Q\_flow   | Heat flow rate (positive if flowing from outside into the component) [W]   |
+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector HeatPort_b 
      "Thermal port for 1-dim. heat transfer (unfilled rectangular icon)"

      extends HeatPort;

    end HeatPort_b;

--------------

|image16| `Modelica.Thermal.HeatTransfer.Interfaces <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces>`_.Element1D
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial heat transfer element with two HeatPort connectors that does
not store energy**

.. figure:: Modelica.Thermal.HeatTransfer.Interfaces.Element1DD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Interfaces.Element1D

   Modelica.Thermal.HeatTransfer.Interfaces.Element1D

Information
~~~~~~~~~~~

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
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                 | Name      | Description   |
+======================================================================================================================+===========+===============+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | port\_a   |               |
+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port\_b   |               |
+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image17| `Modelica.Thermal.HeatTransfer.Interfaces <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces>`_.PartialElementaryConditionalHeatPort
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models**

.. figure:: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort

   Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort

Information
~~~~~~~~~~~

::

This partial model provides a conditional heat port for dissipating
losses.

-  If **useHeatPort** is set to **false** (default), no heat port is
   available, and the thermal loss power is dissipated internally. In
   this case, the parameter **T** specifies the fixed device temperature
   (the default for T = 20°C)
-  If **useHeatPort** is set to **true**, the heat port is available.

If this model is used, the loss power has to be provided by an equation
in the model which inherits from PartialElementaryConditionalHeatPort
model (**lossPower = ...**). The device temperature **TheatPort** can be
used to describe the influence of the device temperature on the model
behaviour.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| Boolean                                                               | useHeatPort   | false     | =true, if heatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                                |
+======================================================================================================================+============+============================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   | Optional port to which dissipated losses are transported in form of heat   |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image18| `Modelica.Thermal.HeatTransfer.Interfaces <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces>`_.PartialElementaryConditionalHeatPortWithoutT
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models**

.. figure:: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT

   Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT

Information
~~~~~~~~~~~

::

This partial model provides a conditional heat port for dissipating
losses.

-  If **useHeatPort** is set to **false** (default), no heat port is
   available, and the thermal loss power is dissipated internally. In
   this case, the parameter **T** specifies the fixed device temperature
   (the default for T = 20°C)
-  If **useHeatPort** is set to **true**, the heat port is available.

If this model is used, the loss power has to be provided by an equation
in the model which inherits from PartialElementaryConditionalHeatPort
model (**lossPower = ...**). The device temperature **TheatPort** can be
used to describe the influence of the device temperature on the model
behaviour.

::

Parameters
~~~~~~~~~~

+-----------+---------------+-----------+---------------------------------+
| Type      | Name          | Default   | Description                     |
+===========+===============+===========+=================================+
| Boolean   | useHeatPort   | false     | =true, if heatPort is enabled   |
+-----------+---------------+-----------+---------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                                |
+======================================================================================================================+============+============================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   | Optional port to which dissipated losses are transported in form of heat   |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialElementaryConditionalHeatPortWithoutT 
      "Partial model to include a conditional HeatPort in order to dissipate losses, used for textual modeling, i.e., for elementary models"
      parameter Boolean useHeatPort = false "=true, if heatPort is enabled";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort(
        final Q_flow=-lossPower) if useHeatPort 
        "Optional port to which dissipated losses are transported in form of heat";
      Modelica.SIunits.Power lossPower 
        "Loss power leaving component via heatPort (> 0, if heat is flowing out of component)";
    end PartialElementaryConditionalHeatPortWithoutT;

--------------

|image19| `Modelica.Thermal.HeatTransfer.Interfaces <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces>`_.PartialConditionalHeatPort
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model to include a conditional HeatPort in order to dissipate
losses, used for graphical modeling, i.e., for bulding modelsby
drag-and-drop**

.. figure:: Modelica.Thermal.HeatTransfer.Interfaces.PartialConditionalHeatPortD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Interfaces.PartialConditionalHeatPort

   Modelica.Thermal.HeatTransfer.Interfaces.PartialConditionalHeatPort

Information
~~~~~~~~~~~

::

This partial model provides a conditional heat port for dissipating
losses.

-  If **useHeatPort** is set to **false** (default), no heat port is
   available, and the thermal loss power is dissipated internally. In
   this case, the parameter **T** specifies the fixed device temperature
   (the default for T = 20°C)
-  If **useHeatPort** is set to **true**, the heat port is available.

If this model is used, the **internalHeatPort** has to be connected in
the model which inherits from PartialElementaryConditionalHeatPort
model. The device temperature **internalHeatPort.T** can be used to
describe the influence of the device temperature on the model behaviour.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                                |
+======================================================================================================================+============+============================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   | Optional port to which dissipated losses are transported in form of heat   |
+----------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:47
2010.

.. |Modelica.Thermal.HeatTransfer.Interfaces.HeatPort| image:: Modelica.Thermal.HeatTransfer.Interfaces.HeatPortS.png
.. |Modelica.Thermal.HeatTransfer.Interfaces.HeatPort\_a| image:: Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_aS.png
.. |Modelica.Thermal.HeatTransfer.Interfaces.HeatPort\_b| image:: Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_bS.png
.. |Modelica.Thermal.HeatTransfer.Interfaces.Element1D| image:: Modelica.Thermal.HeatTransfer.Interfaces.Element1DS.png
.. |Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort| image:: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortS.png
.. |Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT| image:: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortS.png
.. |Modelica.Thermal.HeatTransfer.Interfaces.PartialConditionalHeatPort| image:: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortS.png
.. |image7| image:: Modelica.Thermal.HeatTransfer.Interfaces.HeatPortS.png
.. |image8| image:: Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_aS.png
.. |image9| image:: Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_bS.png
.. |image10| image:: Modelica.Thermal.HeatTransfer.Interfaces.Element1DS.png
.. |image11| image:: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortS.png
.. |image12| image:: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortS.png
.. |image13| image:: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortS.png
.. |image14| image:: Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_aI.png
.. |image15| image:: Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_bI.png
.. |image16| image:: Modelica.Thermal.HeatTransfer.Interfaces.Element1DI.png
.. |image17| image:: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortI.png
.. |image18| image:: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortI.png
.. |image19| image:: Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortI.png
