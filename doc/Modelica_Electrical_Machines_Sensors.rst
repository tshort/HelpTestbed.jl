====================================
Modelica.Electrical.Machines.Sensors
====================================

`Modelica.Electrical.Machines <Modelica_Electrical_Machines.html#Modelica.Electrical.Machines>`_.Sensors
--------------------------------------------------------------------------------------------------------

**Sensors for machine modelling**

Information
~~~~~~~~~~~

::

This package contains sensors that are usefull when modelling machines.

::

Extends from
`Modelica.Icons.SensorsPackage <Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage>`_
(Icon for packages containing sensors).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| Name                                                                                                                                                                                              | Description                              |
+===================================================================================================================================================================================================+==========================================+
| |image5| `VoltageQuasiRMSSensor <Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors.VoltageQuasiRMSSensor>`_                                                          | Length of space phasor -> RMS voltage    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image6| `CurrentQuasiRMSSensor <Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor>`_                                                          | Length of space phasor -> RMS current    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image7| `ElectricalPowerSensor <Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors.ElectricalPowerSensor>`_                                                          | Instantaneous power from space phasors   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image8| `MechanicalPowerSensor <Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors.MechanicalPowerSensor>`_                                                          | Mechanical power = torque x speed        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image9| `RotorDisplacementAngle <Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors.RotorDisplacementAngle>`_                                                        | Rotor lagging angle                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+

--------------

|image10| `Modelica.Electrical.Machines.Sensors <Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors>`_.VoltageQuasiRMSSensor
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Length of space phasor -> RMS voltage**

.. figure:: Modelica.Electrical.Machines.Sensors.VoltageQuasiRMSSensorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Sensors.VoltageQuasiRMSSensor

   Modelica.Electrical.Machines.Sensors.VoltageQuasiRMSSensor

Information
~~~~~~~~~~~

::

Measured 3-phase instantaneous voltages are transformed to the
corresponding space phasor;
 output is length of the space phasor divided by sqrt(2), thus giving in
sinusoidal stationary state RMS voltage.

::

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                              | V         |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VoltageQuasiRMSSensor 
      "Length of space phasor -> RMS voltage"
      constant Integer m(final min=1) = 3 "Number of phases";
      Modelica.Blocks.Interfaces.RealOutput V;
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Electrical.MultiPhase.Sensors.VoltageSensor VoltageSensor1(final m=m);
      Modelica.Blocks.Math.Gain Gain1(final k=1/sqrt(2));
      Machines.SpacePhasors.Blocks.ToSpacePhasor ToSpacePhasor1;
      Machines.SpacePhasors.Blocks.ToPolar ToPolar1;
    equation 
      connect(plug_p, VoltageSensor1.plug_p);
      connect(VoltageSensor1.plug_n, plug_n);
      connect(VoltageSensor1.v, ToSpacePhasor1.u);
      connect(ToSpacePhasor1.y, ToPolar1.u);
      connect(ToPolar1.y[1], Gain1.u);
      connect(Gain1.y, V);
    end VoltageQuasiRMSSensor;

--------------

|image11| `Modelica.Electrical.Machines.Sensors <Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors>`_.CurrentQuasiRMSSensor
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Length of space phasor -> RMS current**

.. figure:: Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor

   Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor

Information
~~~~~~~~~~~

::

Measured 3-phase instantaneous currents are transformed to the
corresponding space phasor;
 output is length of the space phasor divided by sqrt(2), thus giving in
sinusoidal stationary state RMS current.

::

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                              | I         |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CurrentQuasiRMSSensor 
      "Length of space phasor -> RMS current"
      constant Integer m(final min=1) = 3 "Number of phases";
      Modelica.Blocks.Interfaces.RealOutput I;
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Electrical.MultiPhase.Sensors.CurrentSensor CurrentSensor1(final m=m);
      Modelica.Blocks.Math.Gain Gain1(final k=1/sqrt(2));
      Machines.SpacePhasors.Blocks.ToSpacePhasor ToSpacePhasor1;
      Machines.SpacePhasors.Blocks.ToPolar ToPolar1;
    equation 
      connect(plug_p, CurrentSensor1.plug_p);
      connect(CurrentSensor1.plug_n, plug_n);
      connect(CurrentSensor1.i, ToSpacePhasor1.u);
      connect(ToSpacePhasor1.y, ToPolar1.u);
      connect(ToPolar1.y[1], Gain1.u);
      connect(Gain1.y,I);
    end CurrentQuasiRMSSensor;

--------------

|image12| `Modelica.Electrical.Machines.Sensors <Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors>`_.ElectricalPowerSensor
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Instantaneous power from space phasors**

.. figure:: Modelica.Electrical.Machines.Sensors.ElectricalPowerSensorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Sensors.ElectricalPowerSensor

   Modelica.Electrical.Machines.Sensors.ElectricalPowerSensor

Information
~~~~~~~~~~~

::

3-phase instantaneous voltages (plug\_p - plug\_nv) and currents
(plug\_p - plug\_ni) are transformed to the corresponding space phasors,
 which are used to calculate power quantities:
 P = instantaneous power, thus giving in stationary state active power.
 Q = giving in stationary state reactive power.

::

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                      | Name       | Description   |
+===========================================================================================================================+============+===============+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                              | P          |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                              | Q          |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p    |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_ni   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_nv   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ElectricalPowerSensor "Instantaneous power from space phasors"
      constant Integer m(final min=1) = 3 "Number of phases";
      Modelica.Blocks.Interfaces.RealOutput P;
      Modelica.Blocks.Interfaces.RealOutput Q;
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_ni(final m=m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_nv(final m=m);

    protected 
      Modelica.SIunits.Voltage v_[2];
      Modelica.SIunits.Current i_[2];
    equation 
      plug_p.pin.v = plug_ni.pin.v;
      plug_p.pin.i + plug_ni.pin.i = zeros(m);
      plug_nv.pin.i = zeros(m);
      v_ = Machines.SpacePhasors.Functions.ToSpacePhasor(plug_p.pin.v - plug_nv.pin.v);
      i_ = Machines.SpacePhasors.Functions.ToSpacePhasor(plug_p.pin.i);
      2/3*P = +v_[1]*i_[1]+v_[2]*i_[2];
      2/3*Q = -v_[1]*i_[2]+v_[2]*i_[1];
    end ElectricalPowerSensor;

--------------

|image13| `Modelica.Electrical.Machines.Sensors <Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors>`_.MechanicalPowerSensor
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Mechanical power = torque x speed**

.. figure:: Modelica.Electrical.Machines.Sensors.MechanicalPowerSensorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Sensors.MechanicalPowerSensor

   Modelica.Electrical.Machines.Sensors.MechanicalPowerSensor

Information
~~~~~~~~~~~

::

Calculates (mechanical) power from torque times angular speed.

::

Extends from
`Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges>`_
(Partial model for a component with two rotational 1-dim. shaft
flanges).

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------+
| Type      | Name         | Default   | Description                    |
+===========+==============+===========+================================+
| Boolean   | useSupport   | false     | Use support or fixed housing   |
+-----------+--------------+-----------+--------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------+
| Type                                                                                                             | Name        | Description                                      |
+==================================================================================================================+=============+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange\_a   | Flange of left shaft                             |
+------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange\_b   | Flange of right shaft                            |
+------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                     | P           |                                                  |
+------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | support     | Support at which the reaction torque is acting   |
+------------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MechanicalPowerSensor "Mechanical power = torque x speed"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges;
      parameter Boolean useSupport=false "Use support or fixed housing";
      Modelica.Blocks.Interfaces.RealOutput P;
      Modelica.Mechanics.Rotational.Sensors.TorqueSensor torqueSensor;
      Modelica.Blocks.Math.Product product;
      Modelica.Mechanics.Rotational.Sensors.RelSpeedSensor relSpeedSensor;
      Modelica.Mechanics.Rotational.Components.Fixed fixed if 
                                                            (not useSupport);
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support if          useSupport 
        "Support at which the reaction torque is acting";
    equation 
      connect(flange_a, torqueSensor.flange_a);
      connect(torqueSensor.flange_b, flange_b);
      connect(product.y, P);
      connect(torqueSensor.tau, product.u2);
      connect(flange_a, relSpeedSensor.flange_b);
      connect(relSpeedSensor.w_rel, product.u1);
      connect(relSpeedSensor.flange_a, fixed.flange);
      connect(relSpeedSensor.flange_a, support);
    end MechanicalPowerSensor;

--------------

|image14| `Modelica.Electrical.Machines.Sensors <Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors>`_.RotorDisplacementAngle
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Rotor lagging angle**

.. figure:: Modelica.Electrical.Machines.Sensors.RotorDisplacementAngleD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Sensors.RotorDisplacementAngle

   Modelica.Electrical.Machines.Sensors.RotorDisplacementAngle

Information
~~~~~~~~~~~

::

Calculates rotor lagging angle by measuring the stator phase voltages,
transforming them to the correspondig space phasor in stator-fixed
coordinate system,
 rotating the space phasor to the rotor-fixed coordinate system and
calculating the angle of this space phasor.

The sensor's housing can be implicitely fixed (useSupport=false).
 If the machine's stator also implicitely fixed (useSupport=false), the
angle at the flange is equal to the angle of the machine's rotor against
the stator.
 Otherwise, the sensor's support has to be connected to the machine's
support.

::

Parameters
~~~~~~~~~~

+-----------+--------------+-----------+--------------------------------+
| Type      | Name         | Default   | Description                    |
+===========+==============+===========+================================+
| Integer   | p            |           | Number of pole pairs           |
+-----------+--------------+-----------+--------------------------------+
| Boolean   | useSupport   | false     | Use support or fixed housing   |
+-----------+--------------+-----------+--------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+--------------------------+--------------------------------------------------+
| Type                                                                                                                      | Name                     | Description                                      |
+===========================================================================================================================+==========================+==================================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                              | rotorDisplacementAngle   |                                                  |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+--------------------------------------------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p                  |                                                  |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+--------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n                  |                                                  |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | flange                   |                                                  |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | support                  | support at which the reaction torque is acting   |
+---------------------------------------------------------------------------------------------------------------------------+--------------------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RotorDisplacementAngle "Rotor lagging angle"
      constant Integer m=3 "Number of phases";
      parameter Integer p(min=1) "Number of pole pairs";
      parameter Boolean useSupport=false "Use support or fixed housing";
      Modelica.Blocks.Interfaces.RealOutput rotorDisplacementAngle;
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Electrical.MultiPhase.Sensors.VoltageSensor VoltageSensor1(final m=m);
      Machines.SpacePhasors.Blocks.ToSpacePhasor ToSpacePhasorVS;
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange;
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relativeAngleSensor;
      Modelica.Blocks.Sources.Constant constant_(final k=Modelica.Constants.pi/2);
      Modelica.Blocks.Math.Add add(final k2=1, final k1=p);
      Machines.SpacePhasors.Blocks.Rotator rotatorVS2R;
      Machines.SpacePhasors.Blocks.ToPolar ToPolarVSR;
      Modelica.Blocks.Routing.DeMultiplex2 deMultiplex2(final n1=1,
           final n2=1);
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support if useSupport 
        "support at which the reaction torque is acting";
      Modelica.Mechanics.Rotational.Components.Fixed fixed if 
                                                   (not useSupport);
    equation 
      connect(constant_.y, add.u2);
      connect(add.y, rotatorVS2R.angle);
      connect(ToSpacePhasorVS.y, rotatorVS2R.u);
      connect(rotatorVS2R.y, ToPolarVSR.u);
      connect(ToPolarVSR.y, deMultiplex2.u);
      connect(plug_p, VoltageSensor1.plug_p);
      connect(plug_n, VoltageSensor1.plug_n);
      connect(VoltageSensor1.v, ToSpacePhasorVS.u);
      connect(deMultiplex2.y2[1], rotorDisplacementAngle);
      connect(relativeAngleSensor.phi_rel, add.u1);
      connect(relativeAngleSensor.flange_b, flange);
      connect(relativeAngleSensor.flange_a, support);
      connect(relativeAngleSensor.flange_a, fixed.flange);
    end RotorDisplacementAngle;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:03
2010.

.. |Modelica.Electrical.Machines.Sensors.VoltageQuasiRMSSensor| image:: Modelica.Electrical.Machines.Sensors.VoltageQuasiRMSSensorS.png
.. |Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensor| image:: Modelica.Electrical.Machines.Sensors.VoltageQuasiRMSSensorS.png
.. |Modelica.Electrical.Machines.Sensors.ElectricalPowerSensor| image:: Modelica.Electrical.Machines.Sensors.ElectricalPowerSensorS.png
.. |Modelica.Electrical.Machines.Sensors.MechanicalPowerSensor| image:: Modelica.Electrical.Machines.Sensors.MechanicalPowerSensorS.png
.. |Modelica.Electrical.Machines.Sensors.RotorDisplacementAngle| image:: Modelica.Electrical.Machines.Sensors.RotorDisplacementAngleS.png
.. |image5| image:: Modelica.Electrical.Machines.Sensors.VoltageQuasiRMSSensorS.png
.. |image6| image:: Modelica.Electrical.Machines.Sensors.VoltageQuasiRMSSensorS.png
.. |image7| image:: Modelica.Electrical.Machines.Sensors.ElectricalPowerSensorS.png
.. |image8| image:: Modelica.Electrical.Machines.Sensors.MechanicalPowerSensorS.png
.. |image9| image:: Modelica.Electrical.Machines.Sensors.RotorDisplacementAngleS.png
.. |image10| image:: Modelica.Electrical.Machines.Sensors.VoltageQuasiRMSSensorI.png
.. |image11| image:: Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensorI.png
.. |image12| image:: Modelica.Electrical.Machines.Sensors.ElectricalPowerSensorI.png
.. |image13| image:: Modelica.Electrical.Machines.Sensors.MechanicalPowerSensorI.png
.. |image14| image:: Modelica.Electrical.Machines.Sensors.RotorDisplacementAngleI.png
