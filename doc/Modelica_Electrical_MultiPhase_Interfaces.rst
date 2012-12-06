=========================================
Modelica.Electrical.MultiPhase.Interfaces
=========================================

`Modelica.Electrical.MultiPhase <Modelica_Electrical_MultiPhase.html#Modelica.Electrical.MultiPhase>`_.Interfaces
-----------------------------------------------------------------------------------------------------------------

**Interfaces for electrical multiphase models**

Information
~~~~~~~~~~~

::

This package contains connectors and interfaces (partial models) for
electrical multiphase components, based on Modelica.Electrical.Analog.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                    | Description                                                                                                |
+=========================================================================================================================================================================================================+============================================================================================================+
| |image8| `Plug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.Plug>`_                                                                                        | Plug with m pins for an electric component                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image9| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                                                                        | Positive plug with m pins                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image10| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                                                                       | Negative plug with m pins                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image11| `ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_                                                         | Partial model to include conditional HeatPorts in order to describe the power loss via a thermal network   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image12| `TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_                                                                                 | Component with one m-phase electric port                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image13| `OnePort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.OnePort>`_                                                                                 | Component with two electrical plugs and currents from plug\_p to plug\_n                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image14| `FourPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.FourPlug>`_                                                                               | Component with two m-phase electric ports                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| |image15| `TwoPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPort>`_                                                                                 | Component with two m-phase electric ports, including currents                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Electrical.MultiPhase.Interfaces <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces>`_.Plug
--------------------------------------------------------------------------------------------------------------------------------------------

**Plug with m pins for an electric component**

.. figure:: Modelica.Electrical.MultiPhase.Interfaces.PlugD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Interfaces.Plug

   Modelica.Electrical.MultiPhase.Interfaces.Plug

Information
~~~~~~~~~~~

::

Connectors PositivePlug and NegativePlug are nearly identical. The only
difference is that the icons are different in order to identify more
easily the plugs of a component. Usually, connector PositivePlug is used
for the positive and connector NegativePlug for the negative plug of an
electrical component.
 Connector Plug is a composite connector containing m Pins
(Modelica.Electrical.Analog.Interfaces.Pin).

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------+----------+--------------------+
| Type                                                                                            | Name     | Description        |
+=================================================================================================+==========+====================+
| Integer                                                                                         | m        | Number of phases   |
+-------------------------------------------------------------------------------------------------+----------+--------------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | pin[m]   |                    |
+-------------------------------------------------------------------------------------------------+----------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Plug "Plug with m pins for an electric component"
      parameter Integer m(final min=1) = 3 "Number of phases";
      Modelica.Electrical.Analog.Interfaces.Pin pin[m];

    end Plug;

--------------

|image16| `Modelica.Electrical.MultiPhase.Interfaces <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces>`_.PositivePlug
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**Positive plug with m pins**

.. figure:: Modelica.Electrical.MultiPhase.Interfaces.PositivePlugD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Interfaces.PositivePlug

   Modelica.Electrical.MultiPhase.Interfaces.PositivePlug

Information
~~~~~~~~~~~

::

Connectors PositivePlug and NegativePlug are nearly identical. The only
difference is that the icons are different in order to identify more
easily the plugs of a component. Usually, connector PositivePlug is used
for the positive and connector NegativePlug for the negative plug of an
electrical component.
 Connector Plug is a composite connector containing m Pins
(Modelica.Electrical.Analog.Interfaces.Pin).

::

Extends from
`Plug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.Plug>`_
(Plug with m pins for an electric component).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------+----------+--------------------+
| Type                                                                                            | Name     | Description        |
+=================================================================================================+==========+====================+
| Integer                                                                                         | m        | Number of phases   |
+-------------------------------------------------------------------------------------------------+----------+--------------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | pin[m]   |                    |
+-------------------------------------------------------------------------------------------------+----------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector PositivePlug "Positive plug with m pins"
      extends Plug;

    end PositivePlug;

--------------

|image17| `Modelica.Electrical.MultiPhase.Interfaces <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces>`_.NegativePlug
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**Negative plug with m pins**

.. figure:: Modelica.Electrical.MultiPhase.Interfaces.NegativePlugD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Interfaces.NegativePlug

   Modelica.Electrical.MultiPhase.Interfaces.NegativePlug

Information
~~~~~~~~~~~

::

Connectors PositivePlug and NegativePlug are nearly identical. The only
difference is that the icons are different in order to identify more
easily the plugs of a component. Usually, connector PositivePlug is used
for the positive and connector NegativePlug for the negative plug of an
electrical component.
 Connector Plug is a composite connector containing m Pins
(Modelica.Electrical.Analog.Interfaces.Pin).

::

Extends from
`Plug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.Plug>`_
(Plug with m pins for an electric component).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------+----------+--------------------+
| Type                                                                                            | Name     | Description        |
+=================================================================================================+==========+====================+
| Integer                                                                                         | m        | Number of phases   |
+-------------------------------------------------------------------------------------------------+----------+--------------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | pin[m]   |                    |
+-------------------------------------------------------------------------------------------------+----------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector NegativePlug "Negative plug with m pins"
      extends Plug;
    end NegativePlug;

--------------

|image18| `Modelica.Electrical.MultiPhase.Interfaces <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces>`_.ConditionalHeatPort
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model to include conditional HeatPorts in order to describe
the power loss via a thermal network**

.. figure:: Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPortD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort

   Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort

Information
~~~~~~~~~~~

::

This partial model provides conditional heat ports for the connection to
a thermal network.

-  If **useHeatPort** is set to **false** (default), no heat port is
   available, and the thermal loss power flows internally to the ground.
   In this case, the parameter **T** specifies the fixed device
   temperatures.
-  If **useHeatPort** is set to **true**, all heat ports are available.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+--------------------+--------------------------------------------------------+
| Type                                                                  | Name          | Default            | Description                                            |
+=======================================================================+===============+====================+========================================================+
| Integer                                                               | mh            | 3                  | Number of heatPorts=number of phases                   |
+-----------------------------------------------------------------------+---------------+--------------------+--------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false              | =true, if all HeatPorts are enabled                    |
+-----------------------------------------------------------------------+---------------+--------------------+--------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T[mh]         | fill(293.15, mh)   | Fixed device temperatures if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+--------------------+--------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                 | Name           | Description   |
+======================================================================================================================+================+===============+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort[mh]   |               |
+----------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model ConditionalHeatPort 
      "Partial model to include conditional HeatPorts in order to describe the power loss via a thermal network"
      parameter Integer mh(min=1)=3 "Number of heatPorts=number of phases";
      parameter Boolean useHeatPort = false "=true, if all HeatPorts are enabled";
      parameter Modelica.SIunits.Temperature T[mh]=fill(293.15, mh) 
        "Fixed device temperatures if useHeatPort = false";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort[mh] if useHeatPort;
    end ConditionalHeatPort;

--------------

|image19| `Modelica.Electrical.MultiPhase.Interfaces <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces>`_.TwoPlug
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Component with one m-phase electric port**

.. figure:: Modelica.Electrical.MultiPhase.Interfaces.TwoPlugD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Interfaces.TwoPlug

   Modelica.Electrical.MultiPhase.Interfaces.TwoPlug

Information
~~~~~~~~~~~

::

Superclass of elements which have **two** electrical plugs: the positive
plug connector *plug\_p*, and the negative plug connector *plug\_n*. The
currents flowing into plug\_p are provided explicitly as currents i[m].

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image20| `Modelica.Electrical.MultiPhase.Interfaces <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces>`_.OnePort
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Component with two electrical plugs and currents from plug\_p to
plug\_n**

.. figure:: Modelica.Electrical.MultiPhase.Interfaces.TwoPlugD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Interfaces.OnePort

   Modelica.Electrical.MultiPhase.Interfaces.OnePort

Information
~~~~~~~~~~~

::

Superclass of elements which have **two** electrical plugs: the positive
plug connector *plug\_p*, and the negative plug connector *plug\_n*. The
currents flowing into plug\_p are provided explicitly as currents i[m].
It is assumed that the currents flowing into plug\_p are identical to
the currents flowing out of plug\_n.

::

Extends from
`TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model OnePort 
      "Component with two electrical plugs and currents from plug_p to plug_n"

      extends TwoPlug;
    equation 
      plug_p.pin.i + plug_n.pin.i = zeros(m);
    end OnePort;

--------------

|image21| `Modelica.Electrical.MultiPhase.Interfaces <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces>`_.FourPlug
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Component with two m-phase electric ports**

.. figure:: Modelica.Electrical.MultiPhase.Interfaces.FourPlugD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Interfaces.FourPlug

   Modelica.Electrical.MultiPhase.Interfaces.FourPlug

Information
~~~~~~~~~~~

::

Superclass of elements which have **four** electrical plugs.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                      | Name       | Description   |
+===========================================================================================================================+============+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p1   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p2   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n1   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n2   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image22| `Modelica.Electrical.MultiPhase.Interfaces <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces>`_.TwoPort
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Component with two m-phase electric ports, including currents**

.. figure:: Modelica.Electrical.MultiPhase.Interfaces.FourPlugD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Interfaces.TwoPort

   Modelica.Electrical.MultiPhase.Interfaces.TwoPort

Information
~~~~~~~~~~~

::

Superclass of elements which have **four** electrical plugs. It is
assumed that the currents flowing into plug\_p1 are identical to the
currents flowing out of plug\_n1, and that the currents flowing into
plug\_p2 are identical to the currents flowing out of plug\_n2.

::

Extends from
`FourPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.FourPlug>`_
(Component with two m-phase electric ports).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                      | Name       | Description   |
+===========================================================================================================================+============+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p1   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p2   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n1   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n2   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model TwoPort 
      "Component with two m-phase electric ports, including currents"
      extends FourPlug;
    equation 
      plug_p1.pin.i + plug_n1.pin.i = zeros(m);
      plug_p2.pin.i + plug_n2.pin.i = zeros(m);
    end TwoPort;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:22
2010.

.. |Modelica.Electrical.MultiPhase.Interfaces.Plug| image:: Modelica.Electrical.MultiPhase.Interfaces.PlugS.png
.. |Modelica.Electrical.MultiPhase.Interfaces.PositivePlug| image:: Modelica.Electrical.MultiPhase.Interfaces.PositivePlugS.png
.. |Modelica.Electrical.MultiPhase.Interfaces.NegativePlug| image:: Modelica.Electrical.MultiPhase.Interfaces.NegativePlugS.png
.. |Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort| image:: Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPortS.png
.. |Modelica.Electrical.MultiPhase.Interfaces.TwoPlug| image:: Modelica.Electrical.MultiPhase.Interfaces.TwoPlugS.png
.. |Modelica.Electrical.MultiPhase.Interfaces.OnePort| image:: Modelica.Electrical.MultiPhase.Interfaces.TwoPlugS.png
.. |Modelica.Electrical.MultiPhase.Interfaces.FourPlug| image:: Modelica.Electrical.MultiPhase.Interfaces.FourPlugS.png
.. |Modelica.Electrical.MultiPhase.Interfaces.TwoPort| image:: Modelica.Electrical.MultiPhase.Interfaces.FourPlugS.png
.. |image8| image:: Modelica.Electrical.MultiPhase.Interfaces.PlugS.png
.. |image9| image:: Modelica.Electrical.MultiPhase.Interfaces.PositivePlugS.png
.. |image10| image:: Modelica.Electrical.MultiPhase.Interfaces.NegativePlugS.png
.. |image11| image:: Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPortS.png
.. |image12| image:: Modelica.Electrical.MultiPhase.Interfaces.TwoPlugS.png
.. |image13| image:: Modelica.Electrical.MultiPhase.Interfaces.TwoPlugS.png
.. |image14| image:: Modelica.Electrical.MultiPhase.Interfaces.FourPlugS.png
.. |image15| image:: Modelica.Electrical.MultiPhase.Interfaces.FourPlugS.png
.. |image16| image:: Modelica.Electrical.MultiPhase.Interfaces.PositivePlugI.png
.. |image17| image:: Modelica.Electrical.MultiPhase.Interfaces.NegativePlugI.png
.. |image18| image:: Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPortI.png
.. |image19| image:: Modelica.Electrical.MultiPhase.Interfaces.TwoPlugI.png
.. |image20| image:: Modelica.Electrical.MultiPhase.Interfaces.TwoPlugI.png
.. |image21| image:: Modelica.Electrical.MultiPhase.Interfaces.FourPlugI.png
.. |image22| image:: Modelica.Electrical.MultiPhase.Interfaces.FourPlugI.png
