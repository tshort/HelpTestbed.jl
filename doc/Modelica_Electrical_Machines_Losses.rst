===================================
Modelica.Electrical.Machines.Losses
===================================

`Modelica.Electrical.Machines <Modelica_Electrical_Machines.html#Modelica.Electrical.Machines>`_.Losses
-------------------------------------------------------------------------------------------------------

**Loss models for electric machines**

Information
~~~~~~~~~~~

::

This package contains loss models and their parameter records used for
machine models.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| Name                                                                                                                                                                                              | Description                                           |
+===================================================================================================================================================================================================+=======================================================+
| |image7| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                                                                  | Parameter record for friction losses                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image8| `BrushParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.BrushParameters>`_                                                                        | Parameter record for brush losses                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image9| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                                                                | Parameter record for stray load losses                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image10| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                                                         | Parameter record for core losses                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image11| `Friction <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.Friction>`_                                                                                     | Model of angular velocity dependent friction losses   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image12| `InductionMachines <Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines>`_                                                 | Loss models for induction machines                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image13| `DCMachines <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines>`_                                                                      | Loss models for DC machines                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+

--------------

|image14| `Modelica.Electrical.Machines.Losses <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses>`_.FrictionParameters
--------------------------------------------------------------------------------------------------------------------------------------------------

**Parameter record for friction losses**

Information
~~~~~~~~~~~

::

Parameter record for
`Friction <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.Friction>`_
losses.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------+
| Type                                                                          | Name       | Default   | Description                                                 |
+===============================================================================+============+===========+=============================================================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_                       | PRef       |           | Reference friction losses at wRef [W]                       |
+-------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | wRef       |           | Reference angular velocity that the PRef refer to [rad/s]   |
+-------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------+
| Real                                                                          | power\_w   | 2         | Exponent of friction torque w.r.t. angular velocity         |
+-------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record FrictionParameters "Parameter record for friction losses"
      extends Modelica.Icons.Record;
      parameter Modelica.SIunits.Power PRef(min=0, start=0) 
        "Reference friction losses at wRef";
      parameter Modelica.SIunits.AngularVelocity wRef(displayUnit="1/min", min=Modelica.Constants.small) 
        "Reference angular velocity that the PRef refer to";
      parameter Real power_w(min=Modelica.Constants.small) = 2 
        "Exponent of friction torque w.r.t. angular velocity";
      final parameter Modelica.SIunits.Torque tauRef = if (PRef<=0) then 0 else PRef / wRef 
        "Reference friction torque at reference angular velocity";
      final parameter Real linear = 0.001 
        "Linear angular velocity range with respect to reference angular velocity";
      final parameter Modelica.SIunits.AngularVelocity wLinear = linear*wRef 
        "Linear angular velocity range";
      final parameter Modelica.SIunits.Torque tauLinear = if (PRef<=0) then 0 else tauRef*(wLinear/wRef)^power_w 
        "Torque corresponding with linear angular velocity range";
    end FrictionParameters;

--------------

|image15| `Modelica.Electrical.Machines.Losses <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses>`_.BrushParameters
-----------------------------------------------------------------------------------------------------------------------------------------------

**Parameter record for brush losses**

Information
~~~~~~~~~~~

::

Parameter record for `threephase
Brush <Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines.Brush>`_
and `DC
Brush <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.Brush>`_
losses.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------------+
| Type                                                          | Name      | Default   | Description                                                          |
+===============================================================+===========+===========+======================================================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | V         |           | Total voltage drop of brushes for currents > ILinear [V]             |
+---------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | ILinear   |           | Current indicating linear voltage region of brush voltage drop [A]   |
+---------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record BrushParameters "Parameter record for brush losses"
      extends Modelica.Icons.Record;
      parameter Modelica.SIunits.Voltage V(start=0) 
        "Total voltage drop of brushes for currents > ILinear";
      parameter Modelica.SIunits.Current ILinear(start=0.01) 
        "Current indicating linear voltage region of brush voltage drop";
    end BrushParameters;

--------------

|image16| `Modelica.Electrical.Machines.Losses <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses>`_.StrayLoadParameters
---------------------------------------------------------------------------------------------------------------------------------------------------

**Parameter record for stray load losses**

Information
~~~~~~~~~~~

::

Parameter record for
`threephase <Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines.StrayLoad>`_
and
`DC <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.StrayLoad>`_
stray load losses.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------+------------+-----------+--------------------------------------------------------------+
| Type                                                                          | Name       | Default   | Description                                                  |
+===============================================================================+============+===========+==============================================================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_                       | PRef       |           | Reference stray load losses at IRef and wRef [W]             |
+-------------------------------------------------------------------------------+------------+-----------+--------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                   | IRef       |           | Reference RMS current that PRef refers to [A]                |
+-------------------------------------------------------------------------------+------------+-----------+--------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | wRef       |           | Reference angular velocity that PRef refers to [rad/s]       |
+-------------------------------------------------------------------------------+------------+-----------+--------------------------------------------------------------+
| Real                                                                          | power\_w   | 1         | Exponent of stray load loss torque w.r.t. angular velocity   |
+-------------------------------------------------------------------------------+------------+-----------+--------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record StrayLoadParameters "Parameter record for stray load  losses"
      extends Modelica.Icons.Record;
      parameter Modelica.SIunits.Power PRef(min=0, start=0) 
        "Reference stray load losses at IRef and wRef";
      parameter Modelica.SIunits.Current IRef(min=Modelica.Constants.small) 
        "Reference RMS current that PRef refers to";
      parameter Modelica.SIunits.AngularVelocity wRef(displayUnit="1/min", min=Modelica.Constants.small) 
        "Reference angular velocity that PRef refers to";
      parameter Real power_w(min=Modelica.Constants.small) = 1 
        "Exponent of stray load loss torque w.r.t. angular velocity";
      final parameter Modelica.SIunits.Torque tauRef = if (PRef<=0) then 0 else PRef / wRef 
        "Reference friction torque at reference angular velocity and reference current";
    end StrayLoadParameters;

--------------

|image17| `Modelica.Electrical.Machines.Losses <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses>`_.CoreParameters
----------------------------------------------------------------------------------------------------------------------------------------------

**Parameter record for core losses**

Information
~~~~~~~~~~~

::

Parameter record for `core losses of induction
machines <Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines.Core>`_
and `core losses of DC
machines <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.Core>`_.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------+--------+-----------+-------------------------------------------------------------------------------+
| Type                                                                          | Name   | Default   | Description                                                                   |
+===============================================================================+========+===========+===============================================================================+
| Integer                                                                       | m      |           | Number of phases (1 for DC, 3 for induction machines)                         |
+-------------------------------------------------------------------------------+--------+-----------+-------------------------------------------------------------------------------+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_                       | PRef   |           | Reference core losses at reference inner voltage VRef [W]                     |
+-------------------------------------------------------------------------------+--------+-----------+-------------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                   | VRef   |           | Reference inner RMS voltage that reference core losses PRef refer to [V]      |
+-------------------------------------------------------------------------------+--------+-----------+-------------------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | wRef   |           | Reference angular velocity that reference core losses PRef refer to [rad/s]   |
+-------------------------------------------------------------------------------+--------+-----------+-------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record CoreParameters "Parameter record for core losses"
      extends Modelica.Icons.Record;
      parameter Integer m "Number of phases (1 for DC, 3 for induction machines)";
      parameter Modelica.SIunits.Power PRef(min=0, start=0) 
        "Reference core losses at reference inner voltage VRef";
      parameter Modelica.SIunits.Voltage VRef(min=Modelica.Constants.small) 
        "Reference inner RMS voltage that reference core losses PRef refer to";
      parameter Modelica.SIunits.AngularVelocity wRef(min=Modelica.Constants.small) 
        "Reference angular velocity that reference core losses PRef refer to";
      // In the current implementation ratioHysterisis = 0 since hysteresis losses are not implemented yet
      final parameter Real ratioHysteresis(min=0, max=1, start=0.775) = 0 
        "Ratio of hysteresis losses with respect to the total core losses at VRef and fRef";
      final parameter Modelica.SIunits.Conductance GcRef =  if (PRef<=0) then 0 else PRef / VRef^2 / m 
        "Reference conductance at reference frequency and voltage";
      final parameter Modelica.SIunits.AngularVelocity wMin=1e-6*wRef;
    end CoreParameters;

--------------

|image18| `Modelica.Electrical.Machines.Losses <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses>`_.Friction
----------------------------------------------------------------------------------------------------------------------------------------

**Model of angular velocity dependent friction losses**

.. figure:: Modelica.Electrical.Machines.Losses.FrictionD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Losses.Friction

   Modelica.Electrical.Machines.Losses.Friction

Information
~~~~~~~~~~~

::

The friction losses are considered by the equations

::

       tau / tauRef = (+w / wRef) ^ power_w    for w > +wLinear
     - tau / tauRef = (-w / wRef) ^ power_w    for w < -wLinear

with

::

      tauRef * wRef = PRef

being the friction torque at the referenc angular velocity ``wRef``. The
exponent ``power_w`` is approximately 1.5 for axial ventilation and
approximately 2.0 for radial ventilation.

For stability reasons the friction torque ``tau`` is approximated by a
linear curve

::

      tau / tauLinear = w / wLinear

with

::

      tauLinear = tauRef*(wLinear/wRef) ^ power_w

in the range `` -wLinear ≤ w ≤ wLinear`` with
``wLinear = 0.001 * wRef``. The relationship of torque and angular
velocity is depicted in Fig. 1

+-------------------------------------------------------------------------------+
| |image20|                                                                     |
+-------------------------------------------------------------------------------+
| **Fig. 1:**Friction loss torque versus angular velocity for ``power_w = 2``   |
+-------------------------------------------------------------------------------+

See also
^^^^^^^^

`FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_

If it is desired to neglect friction losses, set
``frictionParameters.PRef = 0`` (this is the default).

::

Extends from
`Machines.Interfaces.FlangeSupport <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.FlangeSupport>`_
(Shaft and support).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+----------------------+-----------+----------------------------+
| Type                                                                                                                      | Name                 | Default   | Description                |
+===========================================================================================================================+======================+===========+============================+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_   | frictionParameters   |           | Friction loss parameters   |
+---------------------------------------------------------------------------------------------------------------------------+----------------------+-----------+----------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------+
| Type                                                                                                                 | Name       | Description                    |
+======================================================================================================================+============+================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_       | flange     | Shaft end                      |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_       | support    | Housing and support            |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   | Heat port to model heat flow   |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Friction "Model of angular velocity dependent friction losses"
      extends Machines.Interfaces.FlangeSupport;
      parameter FrictionParameters frictionParameters "Friction loss parameters";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port to model heat flow";
    equation 
      if (frictionParameters.PRef<=0) then
        tau = 0;
      else
        tau = -smooth(1,if w >= +frictionParameters.wLinear then 
                          +frictionParameters.tauRef*(+w/frictionParameters.wRef)^frictionParameters.power_w else 
                        if w <= -frictionParameters.wLinear then 
                          -frictionParameters.tauRef*(-w/frictionParameters.wRef)^frictionParameters.power_w else 
                          frictionParameters.tauLinear*(w/frictionParameters.wLinear));
      end if;
      heatPort.Q_flow = tau*w;
    end Friction;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:03
2010.

.. |Modelica.Electrical.Machines.Losses.FrictionParameters| image:: Modelica.Electrical.Machines.Losses.FrictionParametersS.png
.. |Modelica.Electrical.Machines.Losses.BrushParameters| image:: Modelica.Electrical.Machines.Losses.FrictionParametersS.png
.. |Modelica.Electrical.Machines.Losses.StrayLoadParameters| image:: Modelica.Electrical.Machines.Losses.FrictionParametersS.png
.. |Modelica.Electrical.Machines.Losses.CoreParameters| image:: Modelica.Electrical.Machines.Losses.FrictionParametersS.png
.. |Modelica.Electrical.Machines.Losses.Friction| image:: Modelica.Electrical.Machines.Losses.FrictionS.png
.. |Modelica.Electrical.Machines.Losses.InductionMachines| image:: Modelica.Electrical.Machines.Losses.InductionMachinesS.png
.. |Modelica.Electrical.Machines.Losses.DCMachines| image:: Modelica.Electrical.Machines.Losses.InductionMachinesS.png
.. |image7| image:: Modelica.Electrical.Machines.Losses.FrictionParametersS.png
.. |image8| image:: Modelica.Electrical.Machines.Losses.FrictionParametersS.png
.. |image9| image:: Modelica.Electrical.Machines.Losses.FrictionParametersS.png
.. |image10| image:: Modelica.Electrical.Machines.Losses.FrictionParametersS.png
.. |image11| image:: Modelica.Electrical.Machines.Losses.FrictionS.png
.. |image12| image:: Modelica.Electrical.Machines.Losses.InductionMachinesS.png
.. |image13| image:: Modelica.Electrical.Machines.Losses.InductionMachinesS.png
.. |image14| image:: Modelica.Electrical.Machines.Losses.FrictionParametersI.png
.. |image15| image:: Modelica.Electrical.Machines.Losses.FrictionParametersI.png
.. |image16| image:: Modelica.Electrical.Machines.Losses.FrictionParametersI.png
.. |image17| image:: Modelica.Electrical.Machines.Losses.FrictionParametersI.png
.. |image18| image:: Modelica.Electrical.Machines.Losses.FrictionI.png
.. |image19| image:: ../Resources/Images/Electrical/Machines/frictiontorque.png
.. |image20| image:: ../Resources/Images/Electrical/Machines/frictiontorque.png
