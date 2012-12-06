====================================================
Modelica.Electrical.QuasiStationary.MultiPhase.Ideal
====================================================

`Modelica.Electrical.QuasiStationary.MultiPhase <Modelica_Electrical_QuasiStationary_MultiPhase.html#Modelica.Electrical.QuasiStationary.MultiPhase>`_.Ideal
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal components for AC multiphase models**

Information
~~~~~~~~~~~

::

This package hosts ideal models for quasi stationary multiphase
circuits. Quasi stationary theory can be found in the
`references <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_.

See also
^^^^^^^^

`SinglePhase.Ideal <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal>`_

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| Name                                                                                                                                                                                                                                                 | Description                            |
+======================================================================================================================================================================================================================================================+========================================+
| |image6| `Idle <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Idle>`_                                                                                                               | Idle branch                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image7| `Short <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Short>`_                                                                                                             | Short cut branch                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image8| `IdealCommutingSwitch <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealCommutingSwitch>`_                                                                               | Multiphase ideal commuting switch      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image9| `IdealIntermediateSwitch <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealIntermediateSwitch>`_                                                                         | Multiphase ideal intermediate switch   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image10| `IdealOpeningSwitch <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealOpeningSwitch>`_                                                                                  | Multiphase ideal opener                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image11| `IdealClosingSwitch <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealClosingSwitch>`_                                                                                  | Multiphase ideal closer                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+

--------------

|image12| `Modelica.Electrical.QuasiStationary.MultiPhase.Ideal <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal>`_.Idle
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Idle branch**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdleD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Idle

   Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Idle

Information
~~~~~~~~~~~

::

This model describes *m* simple idle branches considering the complex
currents *i* = 0; it uses *m* `single phase idle
branches <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Idle>`_.

See also
^^^^^^^^

`Idle <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Idle>`_,
`Short <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Short>`_

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Idle "Idle branch"
      extends Interfaces.TwoPlug;

    QuasiStationary.SinglePhase.Ideal.Idle idle[
                                m];

    equation 
    connect(plugToPins_p.pin_p, idle.pin_p);
    connect(idle.pin_n, plugToPins_n.pin_n);
    end Idle;

--------------

|image13| `Modelica.Electrical.QuasiStationary.MultiPhase.Ideal <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal>`_.Short
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Short cut branch**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.ShortD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Short

   Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Short

Information
~~~~~~~~~~~

::

This model describes *m* simple short branches considering the complex
voltages *v* = 0; it uses *m* `single phase short
branches <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Short>`_.

See also
^^^^^^^^

`Short <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Short>`_,
`Idle <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Idle>`_

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Short "Short cut branch"
      extends Interfaces.TwoPlug;

    QuasiStationary.SinglePhase.Ideal.Short short[
                                  m];

    equation 
    connect(plugToPins_p.pin_p, short.pin_p);
    connect(short.pin_n, plugToPins_n.pin_n);
    end Short;

--------------

|image14| `Modelica.Electrical.QuasiStationary.MultiPhase.Ideal <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal>`_.IdealCommutingSwitch
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal commuting switch**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealCommutingSwitchD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealCommutingSwitch

   Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealCommutingSwitch

Information
~~~~~~~~~~~

::

Contains m singlephase ideal commuting switches
(Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitch).

**Use with care:** This switch is only intended to be used for
structural changes, not fast switching sequences, due to the
quasistationary formulation.

::

Extends from
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Type                                                                  | Name          | Default           | Description                                            |
+=======================================================================+===============+===================+========================================================+
| Integer                                                               | m             | 3                 | Number of phases                                       |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron[m]        |                   | Closed switch resistance [Ohm]                         |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff[m]       |                   | Opened switch conductance [S]                          |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Integer                                                               | mh            | m                 | Number of heatPorts=number of phases                   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false             | =true, if all HeatPorts are enabled                    |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T[mh]         | fill(293.15, m)   | Fixed device temperatures if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name           | Description                                         |
+===========================================================================================================================================================+================+=====================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort[mh]   |                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                                                           | control[m]     | true => p--n2 connected, false => p--n1 connected   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n2       |                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n1       |                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealCommutingSwitch "Multiphase ideal commuting switch"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => p--n2 connected, false => p--n1 connected";
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug plug_n2(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug plug_n1(final m=m);
      Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitch
        idealCommutingSwitch[                                                    m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p
                         plugToPins_p(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPins_n1(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPins_n2(final m=m);
    equation 
      connect(control, idealCommutingSwitch.control);
      connect(idealCommutingSwitch.heatPort, heatPort);
      connect(plugToPins_n1.plug_n, plug_n1);
      connect(plugToPins_n2.plug_n, plug_n2);
      connect(plugToPins_n2.pin_n, idealCommutingSwitch.n2);
      connect(idealCommutingSwitch.n1, plugToPins_n1.pin_n);
      connect(plugToPins_p.plug_p, plug_p);
      connect(idealCommutingSwitch.p, plugToPins_p.pin_p);
    end IdealCommutingSwitch;

--------------

|image15| `Modelica.Electrical.QuasiStationary.MultiPhase.Ideal <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal>`_.IdealIntermediateSwitch
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal intermediate switch**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealIntermediateSwitchD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealIntermediateSwitch

   Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealIntermediateSwitch

Information
~~~~~~~~~~~

::

Contains m ideal intermediate switches
(Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitch).

**Use with care:** This switch is only intended to be used for
structural changes, not fast switching sequences, due to the
quasistationary formulation.

::

Extends from
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Type                                                                  | Name          | Default           | Description                                            |
+=======================================================================+===============+===================+========================================================+
| Integer                                                               | m             | 3                 | Number of phases                                       |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron[m]        |                   | Closed switch resistance [Ohm]                         |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff[m]       |                   | Opened switch conductance [S]                          |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Integer                                                               | mh            | m                 | Number of heatPorts=number of phases                   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false             | =true, if all HeatPorts are enabled                    |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T[mh]         | fill(293.15, m)   | Fixed device temperatures if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| Type                                                                                                                                                      | Name           | Description                                                            |
+===========================================================================================================================================================+================+========================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort[mh]   |                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                                                           | control[m]     | true => p1--n2, p2--n1 connected, otherwise p1--n1, p2--n2 connected   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p1       |                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p2       |                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n2       |                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n1       |                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealIntermediateSwitch "Multiphase ideal intermediate switch"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => p1--n2, p2--n1 connected, otherwise p1--n1, p2--n2 connected";
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug plug_p1(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug plug_p2(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug plug_n2(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug plug_n1(final m=m);
      Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitch
        idealIntermediateSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p plugToPins_p1(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPins_n1(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p plugToPins_p2(final m=m);
      Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n plugToPins_n2(final m=m);
    equation 
      connect(control, idealIntermediateSwitch.control);
      connect(idealIntermediateSwitch.heatPort, heatPort);
      connect(plug_p1, plugToPins_p1.plug_p);
      connect(plug_p2, plugToPins_p2.plug_p);
      connect(plugToPins_n1.plug_n, plug_n1);
      connect(plugToPins_n2.plug_n, plug_n2);
      connect(idealIntermediateSwitch.p2, plugToPins_p2.pin_p);
      connect(idealIntermediateSwitch.n2, plugToPins_n2.pin_n);
      connect(idealIntermediateSwitch.n1, plugToPins_n1.pin_n);
      connect(idealIntermediateSwitch.p1, plugToPins_p1.pin_p);
    end IdealIntermediateSwitch;

--------------

|image16| `Modelica.Electrical.QuasiStationary.MultiPhase.Ideal <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal>`_.IdealOpeningSwitch
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal opener**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealOpeningSwitchD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealOpeningSwitch

   Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealOpeningSwitch

Information
~~~~~~~~~~~

::

Contains m ideal opening switches
(Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitch).

**Use with care:** This switch is only intended to be used for
structural changes, not fast switching sequences, due to the
quasistationary formulation.

::

Extends from
`Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Type                                                                  | Name          | Default           | Description                                            |
+=======================================================================+===============+===================+========================================================+
| Integer                                                               | m             | 3                 | Number of phases                                       |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron[m]        |                   | Closed switch resistance [Ohm]                         |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff[m]       |                   | Opened switch conductance [S]                          |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Integer                                                               | mh            | m                 | Number of heatPorts=number of phases                   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false             | =true, if all HeatPorts are enabled                    |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T[mh]         | fill(293.15, m)   | Fixed device temperatures if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| Type                                                                                                                                                      | Name           | Description                                    |
+===========================================================================================================================================================+================+================================================+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort[mh]   |                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                                                           | control[m]     | true => switch open, false => p--n connected   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealOpeningSwitch "Multiphase ideal opener"
      extends Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => switch open, false => p--n connected";
      Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitch
                                                          idealOpeningSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(control, idealOpeningSwitch.control);
      connect(idealOpeningSwitch.heatPort, heatPort);
      connect(idealOpeningSwitch.pin_n, plugToPins_n.pin_n);
      connect(plugToPins_p.pin_p, idealOpeningSwitch.pin_p);
    end IdealOpeningSwitch;

--------------

|image17| `Modelica.Electrical.QuasiStationary.MultiPhase.Ideal <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal>`_.IdealClosingSwitch
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal closer**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealClosingSwitchD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealClosingSwitch

   Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealClosingSwitch

Information
~~~~~~~~~~~

::

Contains m ideal closing switches
(Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitch).

**Use with care:** This switch is only intended to be used for
structural changes, not fast switching sequences, due to the
quasistationary formulation.

::

Extends from
`Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Type                                                                  | Name          | Default           | Description                                            |
+=======================================================================+===============+===================+========================================================+
| Integer                                                               | m             | 3                 | Number of phases                                       |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron[m]        |                   | Closed switch resistance [Ohm]                         |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff[m]       |                   | Opened switch conductance [S]                          |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Integer                                                               | mh            | m                 | Number of heatPorts=number of phases                   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false             | =true, if all HeatPorts are enabled                    |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T[mh]         | fill(293.15, m)   | Fixed device temperatures if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| Type                                                                                                                                                      | Name           | Description                                    |
+===========================================================================================================================================================+================+================================================+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort[mh]   |                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                                                           | control[m]     | true => p--n connected, false => switch open   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealClosingSwitch "Multiphase ideal closer"
      extends Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => p--n connected, false => switch open";
      Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitch
                                                          idealClosingSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(control, idealClosingSwitch.control);
      connect(idealClosingSwitch.heatPort, heatPort);
      connect(idealClosingSwitch.pin_p, plugToPins_p.pin_p);
      connect(idealClosingSwitch.pin_n, plugToPins_n.pin_n);
    end IdealClosingSwitch;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:42
2010.

.. |Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Idle| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdleS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.Short| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.ShortS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealCommutingSwitch| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealCommutingSwitchS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealIntermediateSwitch| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealIntermediateSwitchS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealOpeningSwitch| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealOpeningSwitchS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealClosingSwitch| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealClosingSwitchS.png
.. |image6| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdleS.png
.. |image7| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.ShortS.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealCommutingSwitchS.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealIntermediateSwitchS.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealOpeningSwitchS.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealClosingSwitchS.png
.. |image12| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdleI.png
.. |image13| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.ShortI.png
.. |image14| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealCommutingSwitchI.png
.. |image15| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealIntermediateSwitchI.png
.. |image16| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealOpeningSwitchI.png
.. |image17| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Ideal.IdealClosingSwitchI.png
