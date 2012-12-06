=====================================================
Modelica.Electrical.Machines.Losses.InductionMachines
=====================================================

`Modelica.Electrical.Machines.Losses <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses>`_.InductionMachines
---------------------------------------------------------------------------------------------------------------------------------------

**Loss models for induction machines**

Information
~~~~~~~~~~~

::

This package contains loss models used for induction machine models.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| Name                                                                                                                                                                                                          | Description                                                 |
+===============================================================================================================================================================================================================+=============================================================+
| |image3| `Brush <Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines.Brush>`_                                                                    | Model considering voltage drop of carbon brushes            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image4| `StrayLoad <Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines.StrayLoad>`_                                                            | Model of stray load losses dependent on current and speed   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+
| |image5| `Core <Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines.Core>`_                                                                      | Model of core losses                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------+

--------------

|image6| `Modelica.Electrical.Machines.Losses.InductionMachines <Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines>`_.Brush
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Model considering voltage drop of carbon brushes**

.. figure:: Modelica.Electrical.Machines.Losses.InductionMachines.BrushD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Losses.InductionMachines.Brush

   Modelica.Electrical.Machines.Losses.InductionMachines.Brush

Information
~~~~~~~~~~~

::

Model of voltage drop and losses of carbon brushes. This threephase
model uses three `DC
Brush <Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.Brush>`_
loss models.

::

Extends from
`Modelica.Electrical.MultiPhase.Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+-------------------+-----------+-------------------------+
| Type                                                                                                                | Name              | Default   | Description             |
+=====================================================================================================================+===================+===========+=========================+
| Integer                                                                                                             | m                 | 3         | Number of phases        |
+---------------------------------------------------------------------------------------------------------------------+-------------------+-----------+-------------------------+
| `BrushParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.BrushParameters>`_   | brushParameters   |           | Brush loss parameters   |
+---------------------------------------------------------------------------------------------------------------------+-------------------+-----------+-------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------+
| Type                                                                                                                      | Name       | Description                 |
+===========================================================================================================================+============+=============================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p    |                             |
+---------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n    |                             |
+---------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort   | Heat port of the resistor   |
+---------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Brush "Model considering voltage drop of carbon brushes"
      extends Modelica.Electrical.MultiPhase.Interfaces.TwoPlug(final m=3);
      parameter Machines.Losses.BrushParameters brushParameters 
        "Brush loss parameters";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port of the resistor";
      DCMachines.Brush brush[3](each final brushParameters=brushParameters);
    equation 
      connect(plug_p.pin, brush.p);
      connect(brush.n, plug_n.pin);
      for j in 1:m loop
        connect(brush[j].heatPort, heatPort);
      end for;
    end Brush;

--------------

|image7| `Modelica.Electrical.Machines.Losses.InductionMachines <Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines>`_.StrayLoad
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Model of stray load losses dependent on current and speed**

.. figure:: Modelica.Electrical.Machines.Losses.InductionMachines.StrayLoadD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Losses.InductionMachines.StrayLoad

   Modelica.Electrical.Machines.Losses.InductionMachines.StrayLoad

Information
~~~~~~~~~~~

::

Stray load losses are modeled similar to standards EN 60034-2 and IEEE
512, i.e., they are dependent on square of current, but without scaling
them to zero at no-load current.

For an estimation of dependency on varying angular velocity see:
 W. Lang, Über die Bemessung verlustarmer Asynchronmotoren mit
Käfigläufer für Pulsumrichterspeisung, Doctoral Thesis, Technical
University of Vienna, 1984.

The stray load losses are modeled such way that they do not cause a
voltage drop in the electric circuit. Instead, the dissipated losses are
considered through an equivalent braking torque at the shaft.

The stray load loss torque is

::

      tau = PRef/wRef * (i/IRef)^2 * (w/wRef)^power_w

where ``i`` is the current of the machine and ``w`` is the actual
angular velocity. The dependency of the stray load torque on the angular
velocity is modeled by the exponent ``power_w``.

See also
^^^^^^^^

`StrayLoad
parameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_

If it is desired to neglect stray load losses, set
``strayLoadParameters.PRef = 0`` (this is the default).

::

Extends from
`Modelica.Electrical.MultiPhase.Interfaces.OnePort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.OnePort>`_
(Component with two electrical plugs and currents from plug\_p to
plug\_n),
`Machines.Interfaces.FlangeSupport <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.FlangeSupport>`_
(Shaft and support).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------+------------------------------+
| Type                                                                                                                        | Name                  | Default   | Description                  |
+=============================================================================================================================+=======================+===========+==============================+
| Integer                                                                                                                     | m                     | 3         | Number of phases             |
+-----------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------+------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_   | strayLoadParameters   |           | Stray load loss parameters   |
+-----------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------+------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------+
| Type                                                                                                                      | Name       | Description                            |
+===========================================================================================================================+============+========================================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p    |                                        |
+---------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n    |                                        |
+---------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | flange     | Shaft end                              |
+---------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | support    | Housing and support                    |
+---------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort   | Heat port for modeling the heat flow   |
+---------------------------------------------------------------------------------------------------------------------------+------------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model StrayLoad 
      "Model of stray load losses dependent on current and speed"
      extends Modelica.Electrical.MultiPhase.Interfaces.OnePort(final m=3);
      extends Machines.Interfaces.FlangeSupport;
      parameter Machines.Losses.StrayLoadParameters strayLoadParameters 
        "Stray load loss parameters";
      Modelica.SIunits.Current iRMS=Machines.SpacePhasors.Functions.quasiRMS(i);
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port for modeling the heat flow";
    equation 
      v = zeros(m);
      if (strayLoadParameters.PRef<=0) then
        tau = 0;
      else
        tau = -strayLoadParameters.tauRef*(iRMS/strayLoadParameters.IRef)^2*
               smooth(1,if w >= 0 then +(+w/strayLoadParameters.wRef)^strayLoadParameters.power_w else 
                                       -(-w/strayLoadParameters.wRef)^strayLoadParameters.power_w);
      end if;
      heatPort.Q_flow = tau*w;
    end StrayLoad;

--------------

|image8| `Modelica.Electrical.Machines.Losses.InductionMachines <Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines>`_.Core
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Model of core losses**

.. figure:: Modelica.Electrical.Machines.Losses.InductionMachines.CoreD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Losses.InductionMachines.Core

   Modelica.Electrical.Machines.Losses.InductionMachines.Core

Information
~~~~~~~~~~~

::

Core losses can be separated into **eddy current** and **hysteresis**
losses. The total core losses can thus be expressed as

::

      P = PRef * (ratioHysteresis * (wRef / w) + 1 - ratioHysteresis) * (V / VRef)^2

where ``w`` is the actual angular remagnetization velocity and ``V`` is
the actual voltage. The term ``ratioHysteresis`` is the ratio of the
hysteresis losses with respect to the total core losses for the
reference voltage and frequency.

In the current implemenation hysteresis losses are **not considered**
since complex numbers are not provided in Modelica. Therefore,
implicitly ``ratioHysteresis = 0`` is set. For the voltage and frequency
range with respect to Fig. 1, the dependency of total core losses on the
parameter ``ratioHysteresis`` is depicted in Fig. 2. The current
implementation has thus the drawback over a model that considers
``ratioHysteresis > 0``:

-  underestimation of the losses in the constant field region (``w`` <
   ``wRef``)
-  overestimation of the losses in the field weakening region (``w`` >
   ``wRef``)

+----------------------------------------------+
| |image10|                                    |
+----------------------------------------------+
| **Fig. 1:**Voltage versus angular velocity   |
+----------------------------------------------+

+-------------------------------------------------------------------------------------+
| |image12|                                                                           |
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

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+--------------------------------------------+
| Type                                                                                                              | Name             | Default   | Description                                |
+===================================================================================================================+==================+===========+============================================+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_   | coreParameters   |           |                                            |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+--------------------------------------------+
| Losses                                                                                                            |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+--------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                       | w                |           | Remagnetization angular velocity [rad/s]   |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+--------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+---------------+----------------------------------------+
| Type                                                                                                                 | Name          | Description                            |
+======================================================================================================================+===============+========================================+
| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_    | spacePhasor   |                                        |
+----------------------------------------------------------------------------------------------------------------------+---------------+----------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort      | Heat port for modeling the heat flow   |
+----------------------------------------------------------------------------------------------------------------------+---------------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Core "Model of core losses"
      parameter Machines.Losses.CoreParameters coreParameters(final m=3);
      Machines.Interfaces.SpacePhasor spacePhasor;
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
        spacePhasor.i_ = zeros(2);
      else
        Gc = coreParameters.GcRef;
        //  * (coreParameters.wRef/wsLimit*coreParameters.ratioHysteresis + 1 - coreParameters.ratioHysteresis);
        spacePhasor.i_ = Gc*spacePhasor.v_;
      end if;
      heatPort.Q_flow = -3/2*(+spacePhasor.v_[1]*spacePhasor.i_[1]+spacePhasor.v_[2]*spacePhasor.i_[2]);
    end Core;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:04
2010.

.. |Modelica.Electrical.Machines.Losses.InductionMachines.Brush| image:: Modelica.Electrical.Machines.Losses.InductionMachines.BrushS.png
.. |Modelica.Electrical.Machines.Losses.InductionMachines.StrayLoad| image:: Modelica.Electrical.Machines.Losses.InductionMachines.StrayLoadS.png
.. |Modelica.Electrical.Machines.Losses.InductionMachines.Core| image:: Modelica.Electrical.Machines.Losses.InductionMachines.CoreS.png
.. |image3| image:: Modelica.Electrical.Machines.Losses.InductionMachines.BrushS.png
.. |image4| image:: Modelica.Electrical.Machines.Losses.InductionMachines.StrayLoadS.png
.. |image5| image:: Modelica.Electrical.Machines.Losses.InductionMachines.CoreS.png
.. |image6| image:: Modelica.Electrical.Machines.Losses.InductionMachines.BrushI.png
.. |image7| image:: Modelica.Electrical.Machines.Losses.InductionMachines.StrayLoadI.png
.. |image8| image:: Modelica.Electrical.Machines.Losses.InductionMachines.CoreI.png
.. |image9| image:: ../Resources/Images/Electrical/Machines/corelossesVw.png
.. |image10| image:: ../Resources/Images/Electrical/Machines/corelossesVw.png
.. |image11| image:: ../Resources/Images/Electrical/Machines/corelossesPcw.png
.. |image12| image:: ../Resources/Images/Electrical/Machines/corelossesPcw.png
