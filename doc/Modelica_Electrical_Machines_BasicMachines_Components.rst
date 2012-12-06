=====================================================
Modelica.Electrical.Machines.BasicMachines.Components
=====================================================

`Modelica.Electrical.Machines.BasicMachines <Modelica_Electrical_Machines_BasicMachines.html#Modelica.Electrical.Machines.BasicMachines>`_.Components
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Machine components like AirGaps**

Information
~~~~~~~~~~~

::

This package contains components for modeling electrical machines,
specially threephase induction machines, based on space phasor theory.
These models use package SpacePhasors.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| Name                                                                                                                                                                                                                                           | Description                                                   |
+================================================================================================================================================================================================================================================+===============================================================+
| |image15| `PartialAirGap <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGap>`_                                                                                    | Partial airgap model                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image16| `AirGapS <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.AirGapS>`_                                                                                                | Airgap in stator-fixed coordinate system                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image17| `AirGapR <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.AirGapR>`_                                                                                                | Airgap in rotor-fixed coordinate system                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image18| `Inductor <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.Inductor>`_                                                                                              | Space phasor inductor                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image19| `SquirrelCage <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.SquirrelCage>`_                                                                                      | Squirrel Cage                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image20| `DamperCage <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.DamperCage>`_                                                                                          | Squirrel Cage                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image21| `ElectricalExcitation <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.ElectricalExcitation>`_                                                                      | Electrical excitation                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image22| `PermanentMagnet <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PermanentMagnet>`_                                                                                | Permanent magnet excitation                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image23| `InductorDC <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.InductorDC>`_                                                                                          | Ideal linear electrical inductor for electrical DC machines   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image24| `PartialAirGapDC <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDC>`_                                                                                | Partial airgap model of a DC machine                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image25| `AirGapDC <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.AirGapDC>`_                                                                                              | Linear airgap model of a DC machine                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image26| `CompoundDCExcitation <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.CompoundDCExcitation>`_                                                                      | Compound excitation = shunt + series                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image27| `PartialCore <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PartialCore>`_                                                                                        | Partial model of transformer core with 3 windings             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image28| `IdealCore <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.IdealCore>`_                                                                                            | Ideal transformer with 3 windings                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image29| `BasicTransformer <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.BasicTransformer>`_                                                                              | Partial model of threephase transformer                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+

--------------

|image30| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.PartialAirGap
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial airgap model**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGap

   Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGap

Information
~~~~~~~~~~~

::

Partial model of the airgap, using only equations.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------+
| Type      | Name   | Default   | Description            |
+===========+========+===========+========================+
| Integer   | m      | 3         | Number of phases       |
+-----------+--------+-----------+------------------------+
| Integer   | p      |           | Number of pole pairs   |
+-----------+--------+-----------+------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| Type                                                                                                                | Name             | Description                                      |
+=====================================================================================================================+==================+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_      | flange           |                                                  |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_      | support          | Support at which the reaction torque is acting   |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_s   |                                                  |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_r   |                                                  |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialAirGap "Partial airgap model"
      parameter Integer m=3 "Number of phases";
      parameter Integer p(min=1) "Number of pole pairs";
      output Modelica.SIunits.Torque tauElectrical;
      Modelica.SIunits.Angle gamma "Rotor displacement angle";
      Modelica.SIunits.Current i_ss[2] 
        "Stator current space phasor with respect to the stator fixed frame";
      Modelica.SIunits.Current i_sr[2] 
        "Stator current space phasor with respect to the rotor fixed frame";
      Modelica.SIunits.Current i_rs[2] 
        "Rotor current space phasor with respect to the stator fixed frame";
      Modelica.SIunits.Current i_rr[2] 
        "Rotor current space phasor with respect to the rotor fixed frame";
      Modelica.SIunits.MagneticFlux psi_ms[2] 
        "Magnetizing flux phasor with respect to the stator fixed frame";
      Modelica.SIunits.MagneticFlux psi_mr[2] 
        "Magnetizing flux phasor with respect to the rotor fixed frame";
      Real RotationMatrix[2,2] "Matrix of rotation from rotor to stator";
    public 
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange;
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support 
        "Support at which the reaction torque is acting";
      Machines.Interfaces.SpacePhasor spacePhasor_s;
      Machines.Interfaces.SpacePhasor spacePhasor_r;
    equation 
      // mechanical angle of the rotor of an equivalent 2-pole machine
      gamma=p*(flange.phi-support.phi);
      RotationMatrix={{+cos(gamma),-sin(gamma)},{+sin(gamma),+cos(gamma)}};
      i_ss = spacePhasor_s.i_;
      i_ss = RotationMatrix*i_sr;
      i_rr = spacePhasor_r.i_;
      i_rs = RotationMatrix*i_rr;
      // Stator voltage induction
      spacePhasor_s.v_ = der(psi_ms);
      // Rotor voltage induction
      spacePhasor_r.v_ = der(psi_mr);
      // Electromechanical torque (cross product of current and flux space phasor)
      tauElectrical = m/2*p*(spacePhasor_s.i_[2]*psi_ms[1] - spacePhasor_s.i_[1]*psi_ms[2]);
      flange.tau = -tauElectrical;
      support.tau = tauElectrical;
    end PartialAirGap;

--------------

|image31| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.AirGapS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Airgap in stator-fixed coordinate system**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.AirGapS

   Modelica.Electrical.Machines.BasicMachines.Components.AirGapS

Information
~~~~~~~~~~~

::

Model of the airgap in stator-fixed coordinate system, using only
equations.

::

Extends from
`PartialAirGap <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGap>`_
(Partial airgap model).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+-----------------------------+
| Type                                                                | Name   | Default   | Description                 |
+=====================================================================+========+===========+=============================+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lm     |           | Main field inductance [H]   |
+---------------------------------------------------------------------+--------+-----------+-----------------------------+
| Integer                                                             | m      | 3         | Number of phases            |
+---------------------------------------------------------------------+--------+-----------+-----------------------------+
| Integer                                                             | p      |           | Number of pole pairs        |
+---------------------------------------------------------------------+--------+-----------+-----------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| Type                                                                                                                | Name             | Description                                      |
+=====================================================================================================================+==================+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_      | flange           |                                                  |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_      | support          | Support at which the reaction torque is acting   |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_s   |                                                  |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_r   |                                                  |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model AirGapS "Airgap in stator-fixed coordinate system"
      parameter Modelica.SIunits.Inductance Lm "Main field inductance";
      extends PartialAirGap;
      Modelica.SIunits.Current i_ms[2] 
        "Magnetizing current space phasor with respect to the stator fixed frame";
    protected 
      parameter Modelica.SIunits.Inductance L[2,2]={{Lm,0},{0,Lm}} 
        "Inductance matrix";
    equation 
      // Magnetizing current with respect to the stator reference frame
      i_ms = i_ss + i_rs;
      // Magnetizing flux linkage with respect to the stator reference frame
      psi_ms = L*i_ms;
      // Magnetizing flux linkage with respect to the rotor reference frame
      psi_mr = transpose(RotationMatrix)*psi_ms;
    end AirGapS;

--------------

|image32| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.AirGapR
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Airgap in rotor-fixed coordinate system**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.AirGapR

   Modelica.Electrical.Machines.BasicMachines.Components.AirGapR

Information
~~~~~~~~~~~

::

Model of the airgap in rotor-fixed coordinate system, using only
equations.

::

Extends from
`PartialAirGap <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGap>`_
(Partial airgap model).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+------------------------------------+
| Type                                                                | Name   | Default   | Description                        |
+=====================================================================+========+===========+====================================+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lmd    |           | Main field inductance d-axis [H]   |
+---------------------------------------------------------------------+--------+-----------+------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lmq    |           | Main field inductance q-axis [H]   |
+---------------------------------------------------------------------+--------+-----------+------------------------------------+
| Integer                                                             | m      | 3         | Number of phases                   |
+---------------------------------------------------------------------+--------+-----------+------------------------------------+
| Integer                                                             | p      |           | Number of pole pairs               |
+---------------------------------------------------------------------+--------+-----------+------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| Type                                                                                                                | Name             | Description                                      |
+=====================================================================================================================+==================+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_      | flange           |                                                  |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_      | support          | Support at which the reaction torque is acting   |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_s   |                                                  |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_r   |                                                  |
+---------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model AirGapR "Airgap in rotor-fixed coordinate system"
      parameter Modelica.SIunits.Inductance Lmd "Main field inductance d-axis";
      parameter Modelica.SIunits.Inductance Lmq "Main field inductance q-axis";
      extends PartialAirGap;
      Modelica.SIunits.Current i_mr[2] 
        "Magnetizing current space phasor with respect to the rotor fixed frame";
    protected 
      parameter Modelica.SIunits.Inductance L[2,2]={{Lmd,0},{0,Lmq}} 
        "Inductance matrix";
    equation 
      // Magnetizing current with respect to the rotor reference frame
      i_mr = i_sr + i_rr;
      // Main flux linkage with respect to the rotor reference frame
      psi_mr = L*i_mr;
      // Main flux linkage with respect to the stator reference frame
      psi_ms = RotationMatrix*psi_mr;
    end AirGapR;

--------------

|image33| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.Inductor
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Space phasor inductor**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.InductorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.Inductor

   Modelica.Electrical.Machines.BasicMachines.Components.Inductor

Information
~~~~~~~~~~~

::

This is a model of an inductor, described with space phasors.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+-------------------------------+
| Type                                                                | Name   | Default   | Description                   |
+=====================================================================+========+===========+===============================+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L[2]   |           | Inductance of both axes [H]   |
+---------------------------------------------------------------------+--------+-----------+-------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| Type                                                                                                                | Name             | Description   |
+=====================================================================================================================+==================+===============+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_a   |               |
+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_b   |               |
+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Inductor "Space phasor inductor"
      parameter Modelica.SIunits.Inductance L[2] "Inductance of both axes";
      Modelica.SIunits.Voltage v_[2];
      Modelica.SIunits.Current i_[2];
      Machines.Interfaces.SpacePhasor spacePhasor_a;
      Machines.Interfaces.SpacePhasor spacePhasor_b;
    equation 
      spacePhasor_a.i_ + spacePhasor_b.i_ = zeros(2);
      v_ = spacePhasor_a.v_ - spacePhasor_b.v_;
      i_ = spacePhasor_a.i_;
      v_[1] = L[1]*der(i_[1]);
      v_[2] = L[2]*der(i_[2]);
    end Inductor;

--------------

|image34| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.SquirrelCage
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Squirrel Cage**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.SquirrelCageD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.SquirrelCage

   Modelica.Electrical.Machines.BasicMachines.Components.SquirrelCage

Information
~~~~~~~~~~~

::

Model of a squirrel cage / symmetrical damper cage in two axis.

The squirrel cage has an optional (conditional) HeatPort, which can be
enabled or disabled by the Boolean parameter useHeatPort. Temperatures
of both axis are the same, both losses are added. Material properties
alpha of both axis are the same.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default   | Description                                                       |
+=========================================================================================================+===============+===========+===================================================================+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                       | Lrsigma       |           | Rotor stray inductance per phase translated to stator [H]         |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                       | Rr            |           | Rotor resistance per phase translated to stator at T\_ref [Ohm]   |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref        | 293.15    | Reference temperature [K]                                         |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha         | 0         | Temperature coefficient of resistance at T\_ref [1/K]             |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                                     |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T             | T\_ref    | Fixed device temperature if useHeatPort = false [K]               |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| Type                                                                                                                 | Name             | Description   |
+======================================================================================================================+==================+===============+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort         |               |
+----------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_    | spacePhasor\_r   |               |
+----------------------------------------------------------------------------------------------------------------------+------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SquirrelCage "Squirrel Cage"
      parameter Modelica.SIunits.Inductance Lrsigma 
        "Rotor stray inductance per phase translated to stator";
      parameter Modelica.SIunits.Resistance Rr 
        "Rotor resistance per phase translated to stator at T_ref";
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of resistance at T_ref";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Resistance Rr_actual 
        "Actual resistance = Rr*(1 + alpha*(T_heatPort - T_ref))";
      Machines.Interfaces.SpacePhasor spacePhasor_r;
    equation 
      assert((1 + alpha*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      Rr_actual = Rr*(1 + alpha*(T_heatPort - T_ref));
      spacePhasor_r.v_ = Rr_actual*spacePhasor_r.i_ + Lrsigma*der(spacePhasor_r.i_);
      2/3*LossPower = Rr_actual*(spacePhasor_r.i_[1]*spacePhasor_r.i_[1] + spacePhasor_r.i_[2]*spacePhasor_r.i_[2]);
    end SquirrelCage;

--------------

|image35| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.DamperCage
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Squirrel Cage**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.SquirrelCageD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.DamperCage

   Modelica.Electrical.Machines.BasicMachines.Components.DamperCage

Information
~~~~~~~~~~~

::

Model of an usymmetrical damper cage in two axis.

The damper cage has an optional (conditional) HeatPort, which can be
enabled or disabled by the Boolean parameter useHeatPort. Temperatures
of both axis are the same, both losses are added. Material properties
alpha can be set differently for both d- and q-axis, although reference
temperature for both resistances is the same.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default   | Description                                                                    |
+=========================================================================================================+===============+===========+================================================================================+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                       | Lrsigmad      |           | Stray inductance in d-axis per phase translated to stator [H]                  |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                       | Lrsigmaq      |           | Stray inductance in q-axis per phase translated to stator [H]                  |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                       | Rrd           |           | Resistance in d-axis per phase translated to stator at T\_ref [Ohm]            |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                       | Rrq           |           | Resistance in q-axis per phase translated to stator at T\_ref [Ohm]            |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref        | 293.15    | Reference temperature of both resistances in d- and q-axis [K]                 |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha         | 0         | Temperature coefficient of both resistances in d- and q-axis at T\_ref [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                                                  |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T             | T\_ref    | Fixed device temperature if useHeatPort = false [K]                            |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| Type                                                                                                                 | Name             | Description   |
+======================================================================================================================+==================+===============+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort         |               |
+----------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_    | spacePhasor\_r   |               |
+----------------------------------------------------------------------------------------------------------------------+------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DamperCage "Squirrel Cage"
      parameter Modelica.SIunits.Inductance Lrsigmad 
        "Stray inductance in d-axis per phase translated to stator";
      parameter Modelica.SIunits.Inductance Lrsigmaq 
        "Stray inductance in q-axis per phase translated to stator";
      parameter Modelica.SIunits.Resistance Rrd 
        "Resistance in d-axis per phase translated to stator at T_ref";
      parameter Modelica.SIunits.Resistance Rrq 
        "Resistance in q-axis per phase translated to stator at T_ref";
      parameter Modelica.SIunits.Temperature T_ref=293.15 
        "Reference temperature of both resistances in d- and q-axis";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of both resistances in d- and q-axis at T_ref";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Resistance Rrd_actual 
        "Actual resistance = Rrd*(1 + alpha*(T_heatPort - T_ref))";
      Modelica.SIunits.Resistance Rrq_actual 
        "Actual resistance = Rrq*(1 + alpha*(T_heatPort - T_ref))";
      Machines.Interfaces.SpacePhasor spacePhasor_r;
    equation 
      assert((1 + alpha*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      Rrd_actual = Rrd*(1 + alpha*(T_heatPort - T_ref));
      Rrq_actual = Rrq*(1 + alpha*(T_heatPort - T_ref));
      spacePhasor_r.v_[1] = Rrd_actual * spacePhasor_r.i_[1] + Lrsigmad * der(spacePhasor_r.i_[1]);
      spacePhasor_r.v_[2] = Rrq_actual * spacePhasor_r.i_[2] + Lrsigmaq * der(spacePhasor_r.i_[2]);
      2/3*LossPower = Rrd_actual*spacePhasor_r.i_[1]*spacePhasor_r.i_[1] + Rrq_actual*spacePhasor_r.i_[2]*spacePhasor_r.i_[2];
    end DamperCage;

--------------

|image36| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.ElectricalExcitation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Electrical excitation**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.ElectricalExcitationD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.ElectricalExcitation

   Modelica.Electrical.Machines.BasicMachines.Components.ElectricalExcitation

Information
~~~~~~~~~~~

::

Model of an electrical excitation, converting excitation to space
phasor.

::

Parameters
~~~~~~~~~~

+--------+--------------+-----------+---------------------------------------------+
| Type   | Name         | Default   | Description                                 |
+========+==============+===========+=============================================+
| Real   | turnsRatio   |           | Ratio stator current / excitation current   |
+--------+--------------+-----------+---------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| Type                                                                                                                | Name             | Description   |
+=====================================================================================================================+==================+===============+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_r   |               |
+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_       | pin\_ep          |               |
+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_       | pin\_en          |               |
+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ElectricalExcitation "Electrical excitation"
      parameter Real turnsRatio(start=1) 
        "Ratio stator current / excitation current";
      Modelica.SIunits.Current ie "Excitation current";
      Modelica.SIunits.Voltage ve "Excitation voltage";
      Machines.Interfaces.SpacePhasor spacePhasor_r;
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ep;
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_en;
    equation 
      pin_ep.i + pin_en.i = 0;
      ie = +pin_ep.i;
      ve = pin_ep.v - pin_en.v;
      spacePhasor_r.i_ = {-ie*turnsRatio,0};
      ve = spacePhasor_r.v_[1]*turnsRatio*3/2;
    end ElectricalExcitation;

--------------

|image37| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.PermanentMagnet
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Permanent magnet excitation**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.PermanentMagnetD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.PermanentMagnet

   Modelica.Electrical.Machines.BasicMachines.Components.PermanentMagnet

Information
~~~~~~~~~~~

::

Model of a permanent magnet excitation, characterized by an equivalent
excitation current.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+--------+-----------+-------------------------------------+
| Type                                                          | Name   | Default   | Description                         |
+===============================================================+========+===========+=====================================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | Ie     |           | Equivalent excitation current [A]   |
+---------------------------------------------------------------+--------+-----------+-------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+
| Type                                                                                                                | Name             | Description   |
+=====================================================================================================================+==================+===============+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_   | spacePhasor\_r   |               |
+---------------------------------------------------------------------------------------------------------------------+------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PermanentMagnet "Permanent magnet excitation"
      parameter Modelica.SIunits.Current Ie "Equivalent excitation current";
      Machines.Interfaces.SpacePhasor spacePhasor_r;
    equation 
      spacePhasor_r.i_ = {-Ie,0};
    end PermanentMagnet;

--------------

|image38| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.InductorDC
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical inductor for electrical DC machines**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.InductorDCD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.InductorDC

   Modelica.Electrical.Machines.BasicMachines.Components.InductorDC

Information
~~~~~~~~~~~

::

The linear inductor connects the branch voltage *v* with the branch
current *i* by *v = L \* di/dt*. If ``quasiStationary == false``, the
electrical transients are neglected, i.e., the voltage drop is zero.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+-------------------+-----------+------------------------------------+
| Type                                                                | Name              | Default   | Description                        |
+=====================================================================+===================+===========+====================================+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L                 |           | Inductance [H]                     |
+---------------------------------------------------------------------+-------------------+-----------+------------------------------------+
| Boolean                                                             | quasiStationary   |           | No electrical transients if true   |
+---------------------------------------------------------------------+-------------------+-----------+------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                      |
+=================================================================================================================+========+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      | Negative pin                                                     |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model InductorDC 
      "Ideal linear electrical inductor for electrical DC machines"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Modelica.SIunits.Inductance L(start=1) "Inductance";
      parameter Boolean quasiStationary(start=false) 
        "No electrical transients if true";
    equation 
      v = if quasiStationary then 0 else L*der(i);
    end InductorDC;

--------------

|image39| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.PartialAirGapDC
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial airgap model of a DC machine**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDCD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDC

   Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDC

Information
~~~~~~~~~~~

::

Linear model of the airgap (without saturation effects) of a DC machine,
using only equations.
 Induced excitation voltage is calculated from der(flux), where flux is
defined by excitation inductance times excitation current. If
``quasiStationary == false``, the electrical transients are neglected,
i.e., the induced excitation voltage is zero.
 Induced armature voltage is calculated from flux times angular
velocity.

::

Parameters
~~~~~~~~~~

+-----------+-------------------+-----------+--------------------------------------------------------------------------+
| Type      | Name              | Default   | Description                                                              |
+===========+===================+===========+==========================================================================+
| Boolean   | quasiStationary   |           | No electrical transients if true                                         |
+-----------+-------------------+-----------+--------------------------------------------------------------------------+
| Real      | turnsRatio        |           | Ratio of armature turns over number of turns of the excitation winding   |
+-----------+-------------------+-----------+--------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| Type                                                                                                             | Name      | Description                                      |
+==================================================================================================================+===========+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange    |                                                  |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | support   | Support at which the reaction torque is acting   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_    | pin\_ap   |                                                  |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_    | pin\_ep   |                                                  |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_    | pin\_an   |                                                  |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_    | pin\_en   |                                                  |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialAirGapDC "Partial airgap model of a DC machine"
      parameter Boolean quasiStationary(start=false) 
        "No electrical transients if true";
      parameter Real turnsRatio 
        "Ratio of armature turns over number of turns of the excitation winding";
      output Modelica.SIunits.AngularVelocity w "Angluar velocity";
      Modelica.SIunits.Voltage vei 
        "Voltage drop across field excitation inductance";
      Modelica.SIunits.Current ie "Excitation current";
      Modelica.SIunits.MagneticFlux psi_e "Excitation flux";
      Modelica.SIunits.Voltage vai "Induced armature voltage";
      Modelica.SIunits.Current ia "Armature current";
      output Modelica.SIunits.Torque tauElectrical;
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange;
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support 
        "Support at which the reaction torque is acting";
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ap;
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ep;
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_an;
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_en;
    equation 
      // armature pins
      vai = pin_ap.v - pin_an.v;
      ia = + pin_ap.i;
      ia = - pin_an.i;
      // excitation pins
      vei = pin_ep.v - pin_en.v;
      ie = + pin_ep.i;
      ie = - pin_en.i;
      // induced voltage across field excitation inductance
      vei = if quasiStationary then 0 else der(psi_e);
      // mechanical speed
      w = der(flange.phi)-der(support.phi);
      // induced armature voltage
      vai = turnsRatio * psi_e * w;
      // electrical torque (ia is perpendicular to flux)
      tauElectrical = turnsRatio * psi_e * ia;
      flange.tau = -tauElectrical;
      support.tau = tauElectrical;
    end PartialAirGapDC;

--------------

|image40| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.AirGapDC
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Linear airgap model of a DC machine**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDCD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.AirGapDC

   Modelica.Electrical.Machines.BasicMachines.Components.AirGapDC

Information
~~~~~~~~~~~

::

Linear model of the airgap (without saturation effects) of a DC machine,
using only equations.
 Induced excitation voltage is calculated from der(flux), where flux is
defined by excitation inductance times excitation current.
 Induced armature voltage is calculated from flux times angular
velocity.

::

Extends from
`PartialAirGapDC <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDC>`_
(Partial airgap model of a DC machine).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------------+
| Type                                                                | Name              | Default   | Description                                                              |
+=====================================================================+===================+===========+==========================================================================+
| Boolean                                                             | quasiStationary   |           | No electrical transients if true                                         |
+---------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------------+
| Real                                                                | turnsRatio        |           | Ratio of armature turns over number of turns of the excitation winding   |
+---------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Le                |           | Excitation inductance [H]                                                |
+---------------------------------------------------------------------+-------------------+-----------+--------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| Type                                                                                                             | Name      | Description                                      |
+==================================================================================================================+===========+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange    |                                                  |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | support   | Support at which the reaction torque is acting   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_    | pin\_ap   |                                                  |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_    | pin\_ep   |                                                  |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_    | pin\_an   |                                                  |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_    | pin\_en   |                                                  |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model AirGapDC "Linear airgap model of a DC machine"
      extends PartialAirGapDC;
      parameter Modelica.SIunits.Inductance Le "Excitation inductance";
    equation 
      // excitation flux: linearly dependent on excitation current
      psi_e = Le * ie;
    end AirGapDC;

--------------

|image41| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.CompoundDCExcitation
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Compound excitation = shunt + series**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.CompoundDCExcitationD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.CompoundDCExcitation

   Modelica.Electrical.Machines.BasicMachines.Components.CompoundDCExcitation

Information
~~~~~~~~~~~

::

Model to compound the shunt excitation current and the series excitation
current to the total excitation current w.r.t. shunt excitation. This
model is intended to be placed between shunt and series excitation pins
and the airgap; the connection to airgap has to be grounded at one
point.

::

Parameters
~~~~~~~~~~

+--------+------------------------+-----------+----------------------------------------------------------------+
| Type   | Name                   | Default   | Description                                                    |
+========+========================+===========+================================================================+
| Real   | excitationTurnsRatio   |           | Ratio of series excitation turns over shunt excitation turns   |
+--------+------------------------+-----------+----------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+------------+-------------------------------------+
| Type                                                                                                            | Name       | Description                         |
+=================================================================================================================+============+=====================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | pin\_p     | Positive pin to airgap              |
+-----------------------------------------------------------------------------------------------------------------+------------+-------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | pin\_n     | Negative pin to airgap              |
+-----------------------------------------------------------------------------------------------------------------+------------+-------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | pin\_ep    | Positive pin to shunt excitation    |
+-----------------------------------------------------------------------------------------------------------------+------------+-------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | pin\_en    | Negative pin to shunt excitation    |
+-----------------------------------------------------------------------------------------------------------------+------------+-------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | pin\_sep   | Positive pin to series excitation   |
+-----------------------------------------------------------------------------------------------------------------+------------+-------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | pin\_sen   | Negative pin to series excitation   |
+-----------------------------------------------------------------------------------------------------------------+------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CompoundDCExcitation "Compound excitation = shunt + series"
      parameter Real excitationTurnsRatio 
        "Ratio of series excitation turns over shunt excitation turns";
      Modelica.SIunits.Voltage v = pin_p.v - pin_n.v;
      Modelica.SIunits.Current i = pin_p.i;
      Modelica.SIunits.Voltage ve = pin_ep.v - pin_en.v;
      Modelica.SIunits.Current ie = pin_ep.i;
      Modelica.SIunits.Voltage vse = pin_sep.v - pin_sen.v;
      Modelica.SIunits.Current ise = pin_sep.i;
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p 
        "Positive pin to airgap";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n 
        "Negative pin to airgap";
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ep 
        "Positive pin to shunt excitation";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_en 
        "Negative pin to shunt excitation";
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_sep 
        "Positive pin to series excitation";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_sen 
        "Negative pin to series excitation";
    equation 
    //current balances
      pin_p.i + pin_n.i = 0;
      pin_ep.i + pin_en.i = 0;
      pin_sep.i + pin_sen.i = 0;
    //compound currents
      -i = ie + excitationTurnsRatio*ise;
    //induced voltages
      ve = v;
      vse = v*excitationTurnsRatio;
    end CompoundDCExcitation;

--------------

|image42| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.PartialCore
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model of transformer core with 3 windings**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.PartialCoreD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.PartialCore

   Modelica.Electrical.Machines.BasicMachines.Components.PartialCore

Information
~~~~~~~~~~~

::

Partial model of transformer core with 3 windings; saturation function
flux versus magentizing current has to be defined.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+
| Real      | n12    |           | Turns ratio 1:2    |
+-----------+--------+-----------+--------------------+
| Real      | n13    |           | Turns ratio 1:3    |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                      | Name       | Description   |
+===========================================================================================================================+============+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p1   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n1   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p2   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n2   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p3   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n3   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialCore 
      "Partial model of transformer core with 3 windings"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Real n12(start=1) "Turns ratio 1:2";
      parameter Real n13(start=1) "Turns ratio 1:3";
      Modelica.SIunits.Voltage v1[m] = plug_p1.pin.v  - plug_n1.pin.v;
      Modelica.SIunits.Current i1[m] = plug_p1.pin.i;
      Modelica.SIunits.Voltage v2[m] = plug_p2.pin.v  - plug_n2.pin.v;
      Modelica.SIunits.Current i2[m] = plug_p2.pin.i;
      Modelica.SIunits.Voltage v3[m] = plug_p3.pin.v  - plug_n3.pin.v;
      Modelica.SIunits.Current i3[m] = plug_p3.pin.i;
      Modelica.SIunits.Current im[m] = i1 + i2/n12 + i3/n13 "Magnetizing current";
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p1(final m=
            m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n1(final m=
            m);
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p2(final m=
            m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n2(final m=
            m);
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p3(final m=
            m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n3(final m=
            m);
    equation 
      plug_p1.pin.i + plug_n1.pin.i = zeros(m);
      plug_p2.pin.i + plug_n2.pin.i = zeros(m);
      plug_p3.pin.i + plug_n3.pin.i = zeros(m);
    end PartialCore;

--------------

|image43| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.IdealCore
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal transformer with 3 windings**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.PartialCoreD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.IdealCore

   Modelica.Electrical.Machines.BasicMachines.Components.IdealCore

Information
~~~~~~~~~~~

::

Ideal transformer with 3 windings: no magnetizing current.

::

Extends from
`PartialCore <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PartialCore>`_
(Partial model of transformer core with 3 windings).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+
| Real      | n12    |           | Turns ratio 1:2    |
+-----------+--------+-----------+--------------------+
| Real      | n13    |           | Turns ratio 1:3    |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                      | Name       | Description   |
+===========================================================================================================================+============+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p1   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n1   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p2   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n2   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p3   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n3   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealCore "Ideal transformer with 3 windings"

      extends PartialCore;
    equation 
      im = zeros(m);
      v1 = n12*v2;
      v1 = n13*v3;
    end IdealCore;

--------------

|image44| `Modelica.Electrical.Machines.BasicMachines.Components <Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components>`_.BasicTransformer
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model of threephase transformer**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Components.BasicTransformerD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Components.BasicTransformer

   Modelica.Electrical.Machines.BasicMachines.Components.BasicTransformer

Information
~~~~~~~~~~~

::

Partialmodel of a threephase transformer, containing primary and
secondary resistances and stray inductances, as well as the iron core.
Circuit layout (vector group) of primary and secondary windings have to
be defined.
 Exactly the same as Interfaces.PartialBasicTransformer, included for
compatibility reasons.

::

Extends from
`Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_
(Partial model of threephase transformer).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Type                                                                                                                                                | Name             | Default   | Description                                                               |
+=====================================================================================================================================================+==================+===========+===========================================================================+
| Real                                                                                                                                                | n                |           | Ratio primary voltage (line-to-line) / secondary voltage (line-to-line)   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort   | false     | Enable / disable (=fixed temperatures) thermal port                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Operational    |           | Operational temperature of primary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Operational    |           | Operational temperature of secondary resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R1               |           | Primary resistance per phase at TRef [Ohm]                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Ref            |           | Reference temperature of primary resistance [K]                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_1       |           | Temperature coefficient of primary resistance at 20 degC [1/K]            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L1sigma          |           | Primary stray inductance per phase [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R2               |           | Secondary resistance per phase at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Ref            |           | Reference temperature of secondary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_2       |           | Temperature coefficient of secondary resistance at 20 degC [1/K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L2sigma          |           | Secondary stray inductance per phase [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                   | plug1         | Primary plug     |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                   | plug2         | Secondary plug   |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_   | thermalPort   |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model BasicTransformer 
      "Partial model of threephase transformer"
      extends Machines.Interfaces.PartialBasicTransformer;
    //dummy will be removed when conversion script is applicable
    end BasicTransformer;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:01
2010.

.. |Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGap| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.AirGapS| image:: Modelica.Electrical.Machines.BasicMachines.Components.AirGapSS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.AirGapR| image:: Modelica.Electrical.Machines.BasicMachines.Components.AirGapRS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.Inductor| image:: Modelica.Electrical.Machines.BasicMachines.Components.InductorS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.SquirrelCage| image:: Modelica.Electrical.Machines.BasicMachines.Components.SquirrelCageS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.DamperCage| image:: Modelica.Electrical.Machines.BasicMachines.Components.DamperCageS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.ElectricalExcitation| image:: Modelica.Electrical.Machines.BasicMachines.Components.ElectricalExcitationS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.PermanentMagnet| image:: Modelica.Electrical.Machines.BasicMachines.Components.PermanentMagnetS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.InductorDC| image:: Modelica.Electrical.Machines.BasicMachines.Components.InductorDCS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDC| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDCS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.AirGapDC| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDCS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.CompoundDCExcitation| image:: Modelica.Electrical.Machines.BasicMachines.Components.CompoundDCExcitationS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.PartialCore| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialCoreS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.IdealCore| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialCoreS.png
.. |Modelica.Electrical.Machines.BasicMachines.Components.BasicTransformer| image:: Modelica.Electrical.Machines.BasicMachines.Components.BasicTransformerS.png
.. |image15| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapS.png
.. |image16| image:: Modelica.Electrical.Machines.BasicMachines.Components.AirGapSS.png
.. |image17| image:: Modelica.Electrical.Machines.BasicMachines.Components.AirGapRS.png
.. |image18| image:: Modelica.Electrical.Machines.BasicMachines.Components.InductorS.png
.. |image19| image:: Modelica.Electrical.Machines.BasicMachines.Components.SquirrelCageS.png
.. |image20| image:: Modelica.Electrical.Machines.BasicMachines.Components.DamperCageS.png
.. |image21| image:: Modelica.Electrical.Machines.BasicMachines.Components.ElectricalExcitationS.png
.. |image22| image:: Modelica.Electrical.Machines.BasicMachines.Components.PermanentMagnetS.png
.. |image23| image:: Modelica.Electrical.Machines.BasicMachines.Components.InductorDCS.png
.. |image24| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDCS.png
.. |image25| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDCS.png
.. |image26| image:: Modelica.Electrical.Machines.BasicMachines.Components.CompoundDCExcitationS.png
.. |image27| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialCoreS.png
.. |image28| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialCoreS.png
.. |image29| image:: Modelica.Electrical.Machines.BasicMachines.Components.BasicTransformerS.png
.. |image30| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapI.png
.. |image31| image:: Modelica.Electrical.Machines.BasicMachines.Components.AirGapSI.png
.. |image32| image:: Modelica.Electrical.Machines.BasicMachines.Components.AirGapRI.png
.. |image33| image:: Modelica.Electrical.Machines.BasicMachines.Components.InductorI.png
.. |image34| image:: Modelica.Electrical.Machines.BasicMachines.Components.SquirrelCageI.png
.. |image35| image:: Modelica.Electrical.Machines.BasicMachines.Components.DamperCageI.png
.. |image36| image:: Modelica.Electrical.Machines.BasicMachines.Components.ElectricalExcitationI.png
.. |image37| image:: Modelica.Electrical.Machines.BasicMachines.Components.PermanentMagnetI.png
.. |image38| image:: Modelica.Electrical.Machines.BasicMachines.Components.InductorDCI.png
.. |image39| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDCI.png
.. |image40| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDCI.png
.. |image41| image:: Modelica.Electrical.Machines.BasicMachines.Components.CompoundDCExcitationI.png
.. |image42| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialCoreI.png
.. |image43| image:: Modelica.Electrical.Machines.BasicMachines.Components.PartialCoreI.png
.. |image44| image:: Modelica.Electrical.Machines.BasicMachines.Components.BasicTransformerI.png
