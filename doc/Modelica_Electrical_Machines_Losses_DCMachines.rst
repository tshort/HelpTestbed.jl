==============================================
Modelica.Electrical.Machines.Losses.DCMachines
==============================================

`Modelica.Electrical.Machines.Losses <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses>`_.DCMachines
--------------------------------------------------------------------------------------------------------------------------------

**Loss models for DC machines**

Information
~~~~~~~~~~~

::

This package contains loss models used for DC machine models.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| Name                                                                                                                                                                                                          | Description                                                 |
+===============================================================================================================================================================================================================+=============================================================+
| |image4| `Brush <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.Brush>`_                                                                                  | Model considering voltage drop of carbon brushes            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image5| `brushVoltageDrop <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.brushVoltageDrop>`_                                                            | Voltage drop of carbon brushes                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image6| `StrayLoad <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.StrayLoad>`_                                                                          | Model of stray load losses dependent on current and speed   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image7| `Core <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.Core>`_                                                                                    | Model of core losses                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+

--------------

|image8| `Modelica.Electrical.Machines.Losses.DCMachines <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines>`_.Brush
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Model considering voltage drop of carbon brushes**

.. figure:: Modelica.Electrical.Machines.Losses.DCMachines.BrushD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Losses.DCMachines.Brush

   Modelica.Electrical.Machines.Losses.DCMachines.Brush

Information
~~~~~~~~~~~

::

Model of voltage drop and losses of carbon brushes. For currents between
``-ILinear`` and ``ILinear`` the voltage drop shows a linear behavior as
depicted in Fig. 1. For positive currents greater or equal than
``ILinear`` the voltage drop equals ``V``. For negative currents less or
equal than ``-ILinear`` the voltage drop equals ``-V``.

+------------------------------------------------------+
| |image10|                                            |
+------------------------------------------------------+
| **Fig. 1:**Model of voltage drop of carbon brushes   |
+------------------------------------------------------+

Note:
^^^^^

The voltage drop ``v`` is the total voltage drop of all series connected
brushes.

See also
^^^^^^^^

`BrushParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.BrushParameters>`_

If it is desired to neglect brush losses, set ``brushParameters.V = 0``
(this is the default).

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+-------------------+-----------+-------------------------+
| Type                                                                                                                | Name              | Default   | Description             |
+=====================================================================================================================+===================+===========+=========================+
| `BrushParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.BrushParameters>`_   | brushParameters   |           | Brush loss parameters   |
+---------------------------------------------------------------------------------------------------------------------+-------------------+-----------+-------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   | Heat port of the resistor                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Brush "Model considering voltage drop of carbon brushes"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Machines.Losses.BrushParameters brushParameters 
        "Brush loss parameters";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port of the resistor";
    equation 
      if (brushParameters.V<=0) then
        v = 0;
      else
        v = smooth(1, if (i>+brushParameters.ILinear) then +brushParameters.V else 
                      if (i<-brushParameters.ILinear) then -brushParameters.V else 
                      brushParameters.V*i/brushParameters.ILinear);
      end if;
      heatPort.Q_flow = -v*i;
    end Brush;

--------------

|image11| `Modelica.Electrical.Machines.Losses.DCMachines <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines>`_.brushVoltageDrop
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Voltage drop of carbon brushes**

Information
~~~~~~~~~~~

::

Calculates the voltage drop of carbon brushes, according to
`Brush <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.Brush>`_
losses, e.g., used for initial equations.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------+-------------------+-----------+-------------------------+
| Type                                                                                                                | Name              | Default   | Description             |
+=====================================================================================================================+===================+===========+=========================+
| `BrushParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.BrushParameters>`_   | brushParameters   |           | Brush loss parameters   |
+---------------------------------------------------------------------------------------------------------------------+-------------------+-----------+-------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                         | i                 |           | Actual current [A]      |
+---------------------------------------------------------------------------------------------------------------------+-------------------+-----------+-------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+--------------------+
| Type                                                          | Name   | Description        |
+===============================================================+========+====================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | v      | Voltage drop [V]   |
+---------------------------------------------------------------+--------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function brushVoltageDrop "Voltage drop of carbon brushes"
      extends Modelica.Icons.Function;
      input Machines.Losses.BrushParameters
        brushParameters "Brush loss parameters";
      input Modelica.SIunits.Current i "Actual current";
      output Modelica.SIunits.Voltage v "Voltage drop";
    algorithm 
      if (brushParameters.V<=0) then
        v := 0;
      else
        v :=if (i > +brushParameters.ILinear) then +brushParameters.V else 
            if (i < -brushParameters.ILinear) then -brushParameters.V else 
                     brushParameters.V*i/brushParameters.ILinear;
      end if;
    end brushVoltageDrop;

--------------

|image12| `Modelica.Electrical.Machines.Losses.DCMachines <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines>`_.StrayLoad
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Model of stray load losses dependent on current and speed**

.. figure:: Modelica.Electrical.Machines.Losses.DCMachines.StrayLoadD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Losses.DCMachines.StrayLoad

   Modelica.Electrical.Machines.Losses.DCMachines.StrayLoad

Information
~~~~~~~~~~~

::

The stray load loss torque is

::

      tau = PRef/wRef * (i/IRef)^2 * (w/wRef)^power_w

where ``i`` is the current of the machine and ``w`` is the actual
angular velocity. The dependency of the stray load torque on the angular
velocity is modeled by the exponent ``power_w``.

The stray load losses are modeled such way that they do not cause a
voltage drop in the electric circuit. Instead, the dissipated losses are
considered through an equivalent braking torque at the shaft.

See also
^^^^^^^^

`StrayLoad
parameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_

If it is desired to neglect stray load losses, set
``strayLoadParameters.PRef = 0`` (this is the default).

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Machines.Interfaces.FlangeSupport <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.FlangeSupport>`_
(Shaft and support).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------+------------------------------+
| Type                                                                                                                        | Name                  | Default   | Description                  |
+=============================================================================================================================+=======================+===========+==============================+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_   | strayLoadParameters   |           | Stray load loss parameters   |
+-----------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------+------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_       | flange     | Shaft end                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_       | support    | Housing and support                                              |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   | Heat port for modeling the heat flow                             |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model StrayLoad 
      "Model of stray load losses dependent on current and speed"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      extends Machines.Interfaces.FlangeSupport;
      parameter Machines.Losses.StrayLoadParameters strayLoadParameters 
        "Stray load loss parameters";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port for modeling the heat flow";
    equation 
      v = 0;
      if (strayLoadParameters.PRef<=0) then
        tau = 0;
      else
        tau = -strayLoadParameters.tauRef*(i/strayLoadParameters.IRef)^2*
               smooth(1,if w >= 0 then +(+w/strayLoadParameters.wRef)^strayLoadParameters.power_w else 
                                       -(-w/strayLoadParameters.wRef)^strayLoadParameters.power_w);
      end if;
      heatPort.Q_flow = tau*w;
    end StrayLoad;

--------------

|image13| `Modelica.Electrical.Machines.Losses.DCMachines <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines>`_.Core
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Model of core losses**

.. figure:: Modelica.Electrical.Machines.Losses.DCMachines.CoreD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Losses.DCMachines.Core

   Modelica.Electrical.Machines.Losses.DCMachines.Core

Information
~~~~~~~~~~~

::

Core losses can be separated into *eddy current* and *hysteresis*
losses. The total core losses can thus be expressed as

::

      p = PRef * (ratioHysteresis * (wRef / w) + 1 - ratioHysteresis) * (v / VRef)^2

where ``w`` is the actual angular velocity and ``v`` is the actual
voltage. The term ``ratioHysteresis`` is the ratio of the hysteresis
losses with respect to the total core losses for reference inner voltage
and reference angular velocity.

For the voltage and angular velocity range with respect to Fig. 1, the
dependency of total core losses on the parameter ``ratioHysteresis`` is
depicted in Fig. 2.

+----------------------------------------------+
| |image15|                                    |
+----------------------------------------------+
| **Fig. 1:**Voltage versus angular velocity   |
+----------------------------------------------+

+-------------------------------------------------------------------------------------+
| |image17|                                                                           |
+-------------------------------------------------------------------------------------+
| **Fig. 2:**Core losses versus angular velocity with parameter ``ratioHysteresis``   |
+-------------------------------------------------------------------------------------+

Note
^^^^

In the current implementation it is assumed that
``ratioHysteresis = 0``. This parameter cannot be changed due to
compatibility reasons.

See also
^^^^^^^^

`Core loss
parameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+--------------------------------------------+
| Type                                                                                                              | Name             | Default   | Description                                |
+===================================================================================================================+==================+===========+============================================+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_   | coreParameters   |           | Armature core losses                       |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+--------------------------------------------+
| Losses                                                                                                            |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+--------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                       | w                |           | Remagnetization angular velocity [rad/s]   |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+--------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   | Heat port for modeling the heat flow                             |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Core "Model of core losses"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Machines.Losses.CoreParameters coreParameters(final m=1) 
        "Armature core losses";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port for modeling the heat flow";
      input Modelica.SIunits.AngularVelocity w "Remagnetization angular velocity";
      Modelica.SIunits.Conductance Gc "Variable core loss conductance";
    protected 
      Modelica.SIunits.AngularVelocity wLimit = noEvent(max(noEvent(abs(w)),coreParameters.wMin)) 
        "Limited angular velocity";
    equation 
      if (coreParameters.PRef<=0) then
        Gc = 0;
        i = 0;
      else
        Gc = coreParameters.GcRef;
        // * (coreParameters.wRef/wLimit*coreParameters.ratioHysteresis + 1 - coreParameters.ratioHysteresis);
        i = Gc*v;
      end if;
      heatPort.Q_flow = -v*i;
    end Core;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:04
2010.

.. |Modelica.Electrical.Machines.Losses.DCMachines.Brush| image:: Modelica.Electrical.Machines.Losses.DCMachines.BrushS.png
.. |Modelica.Electrical.Machines.Losses.DCMachines.brushVoltageDrop| image:: Modelica.Electrical.Machines.Losses.DCMachines.brushVoltageDropS.png
.. |Modelica.Electrical.Machines.Losses.DCMachines.StrayLoad| image:: Modelica.Electrical.Machines.Losses.DCMachines.StrayLoadS.png
.. |Modelica.Electrical.Machines.Losses.DCMachines.Core| image:: Modelica.Electrical.Machines.Losses.DCMachines.CoreS.png
.. |image4| image:: Modelica.Electrical.Machines.Losses.DCMachines.BrushS.png
.. |image5| image:: Modelica.Electrical.Machines.Losses.DCMachines.brushVoltageDropS.png
.. |image6| image:: Modelica.Electrical.Machines.Losses.DCMachines.StrayLoadS.png
.. |image7| image:: Modelica.Electrical.Machines.Losses.DCMachines.CoreS.png
.. |image8| image:: Modelica.Electrical.Machines.Losses.DCMachines.BrushI.png
.. |image9| image:: ../Resources/Images/Electrical/Machines/brush.png
.. |image10| image:: ../Resources/Images/Electrical/Machines/brush.png
.. |image11| image:: Modelica.Electrical.Machines.Losses.DCMachines.brushVoltageDropI.png
.. |image12| image:: Modelica.Electrical.Machines.Losses.DCMachines.StrayLoadI.png
.. |image13| image:: Modelica.Electrical.Machines.Losses.DCMachines.CoreI.png
.. |image14| image:: ../Resources/Images/Electrical/Machines/corelossesVw.png
.. |image15| image:: ../Resources/Images/Electrical/Machines/corelossesVw.png
.. |image16| image:: ../Resources/Images/Electrical/Machines/corelossesPcw.png
.. |image17| image:: ../Resources/Images/Electrical/Machines/corelossesPcw.png
