=====================================
Modelica.Thermal.HeatTransfer.Sources
=====================================

`Modelica.Thermal.HeatTransfer <Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer>`_.Sources
-----------------------------------------------------------------------------------------------------------

**Thermal sources**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| Name                                                                                                                                                                                              | Description                                         |
+===================================================================================================================================================================================================+=====================================================+
| |image4| `FixedTemperature <Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources.FixedTemperature>`_                                                                  | Fixed temperature boundary condition in Kelvin      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image5| `PrescribedTemperature <Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature>`_                                                        | Variable temperature boundary condition in Kelvin   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image6| `FixedHeatFlow <Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow>`_                                                                        | Fixed heat flow boundary condition                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image7| `PrescribedHeatFlow <Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow>`_                                                              | Prescribed heat flow boundary condition             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+

--------------

|image8| `Modelica.Thermal.HeatTransfer.Sources <Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources>`_.FixedTemperature
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Fixed temperature boundary condition in Kelvin**

.. figure:: Modelica.Thermal.HeatTransfer.Sources.FixedTemperatureD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Sources.FixedTemperature

   Modelica.Thermal.HeatTransfer.Sources.FixedTemperature

Information
~~~~~~~~~~~

::

This model defines a fixed temperature T at its port in Kelvin, i.e., it
defines a fixed temperature as a boundary condition.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+-----------+---------------------------------+
| Type                                                                  | Name   | Default   | Description                     |
+=======================================================================+========+===========+=================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | Fixed temperature at port [K]   |
+-----------------------------------------------------------------------+--------+-----------+---------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                 | Name   | Description   |
+======================================================================================================================+========+===============+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port   |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FixedTemperature 
      "Fixed temperature boundary condition in Kelvin"

      parameter Modelica.SIunits.Temperature T "Fixed temperature at port";
      Interfaces.HeatPort_b port;
    equation 
      port.T = T;
    end FixedTemperature;

--------------

|image9| `Modelica.Thermal.HeatTransfer.Sources <Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources>`_.PrescribedTemperature
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Variable temperature boundary condition in Kelvin**

.. figure:: Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperatureD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature

   Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature

Information
~~~~~~~~~~~

::

This model represents a variable temperature boundary condition. The
temperature in [K] is given as input signal **T** to the model. The
effect is that an instance of this model acts as an infinite reservoir
able to absorb or generate as much energy as required to keep the
temperature at the specified value.

::

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                 | Name   | Description   |
+======================================================================================================================+========+===============+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port   |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                            | T      |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PrescribedTemperature 
      "Variable temperature boundary condition in Kelvin"

      Interfaces.HeatPort_b port;
      Modelica.Blocks.Interfaces.RealInput T;
    equation 
      port.T = T;
    end PrescribedTemperature;

--------------

|image10| `Modelica.Thermal.HeatTransfer.Sources <Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources>`_.FixedHeatFlow
---------------------------------------------------------------------------------------------------------------------------------------------------

**Fixed heat flow boundary condition**

.. figure:: Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlowD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow

   Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow

Information
~~~~~~~~~~~

::

This model allows a specified amount of heat flow rate to be "injected"
into a thermal system at a given port. The constant amount of heat flow
rate Q\_flow is given as a parameter. The heat flows into the component
to which the component FixedHeatFlow is connected, if parameter Q\_flow
is positive.

If parameter alpha is > 0, the heat flow is mulitplied by (1 +
alpha\*(port.T - T\_ref)) in order to simulate temperature dependent
losses (which are given an reference temperature T\_ref).

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------------+
| Type                                                                                                    | Name      | Default   | Description                                       |
+=========================================================================================================+===========+===========+===================================================+
| `HeatFlowRate <Modelica_SIunits.html#Modelica.SIunits.HeatFlowRate>`_                                   | Q\_flow   |           | Fixed heat flow rate at port [W]                  |
+---------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref    | 293.15    | Reference temperature [K]                         |
+---------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha     | 0         | Temperature coefficient of heat flow rate [1/K]   |
+---------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                 | Name   | Description   |
+======================================================================================================================+========+===============+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port   |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FixedHeatFlow "Fixed heat flow boundary condition"
      parameter Modelica.SIunits.HeatFlowRate Q_flow "Fixed heat flow rate at port";
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of heat flow rate";
      Interfaces.HeatPort_b port;
    equation 
      port.Q_flow = -Q_flow*(1 + alpha*(port.T - T_ref));
    end FixedHeatFlow;

--------------

|image11| `Modelica.Thermal.HeatTransfer.Sources <Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources>`_.PrescribedHeatFlow
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Prescribed heat flow boundary condition**

.. figure:: Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlowD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow

   Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow

Information
~~~~~~~~~~~

::

This model allows a specified amount of heat flow rate to be "injected"
into a thermal system at a given port. The amount of heat is given by
the input signal Q\_flow into the model. The heat flows into the
component to which the component PrescribedHeatFlow is connected, if the
input signal is positive.

If parameter alpha is > 0, the heat flow is mulitplied by (1 +
alpha\*(port.T - T\_ref)) in order to simulate temperature dependent
losses (which are given an reference temperature T\_ref).

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+----------+-----------+---------------------------------------------------+
| Type                                                                                                    | Name     | Default   | Description                                       |
+=========================================================================================================+==========+===========+===================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref   | 293.15    | Reference temperature [K]                         |
+---------------------------------------------------------------------------------------------------------+----------+-----------+---------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha    | 0         | Temperature coefficient of heat flow rate [1/K]   |
+---------------------------------------------------------------------------------------------------------+----------+-----------+---------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                 | Name      | Description   |
+======================================================================================================================+===========+===============+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                            | Q\_flow   |               |
+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port      |               |
+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PrescribedHeatFlow "Prescribed heat flow boundary condition"
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of heat flow rate";
      Modelica.Blocks.Interfaces.RealInput Q_flow;
      Interfaces.HeatPort_b port;
    equation 
      port.Q_flow = -Q_flow*(1 + alpha*(port.T - T_ref));
    end PrescribedHeatFlow;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:46
2010.

.. |Modelica.Thermal.HeatTransfer.Sources.FixedTemperature| image:: Modelica.Thermal.HeatTransfer.Sources.FixedTemperatureS.png
.. |Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature| image:: Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperatureS.png
.. |Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow| image:: Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlowS.png
.. |Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow| image:: Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlowS.png
.. |image4| image:: Modelica.Thermal.HeatTransfer.Sources.FixedTemperatureS.png
.. |image5| image:: Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperatureS.png
.. |image6| image:: Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlowS.png
.. |image7| image:: Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlowS.png
.. |image8| image:: Modelica.Thermal.HeatTransfer.Sources.FixedTemperatureI.png
.. |image9| image:: Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperatureI.png
.. |image10| image:: Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlowI.png
.. |image11| image:: Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlowI.png
