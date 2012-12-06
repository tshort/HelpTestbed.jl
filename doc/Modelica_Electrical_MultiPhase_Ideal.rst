====================================
Modelica.Electrical.MultiPhase.Ideal
====================================

`Modelica.Electrical.MultiPhase <Modelica_Electrical_MultiPhase.html#Modelica.Electrical.MultiPhase>`_.Ideal
------------------------------------------------------------------------------------------------------------

**Multiphase components with idealized behaviour**

Information
~~~~~~~~~~~

::

This package contains analog electrical multiphase components with
idealized behaviour, like thyristor, diode, switch, transformer.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| Name                                                                                                                                                                                                 | Description                            |
+======================================================================================================================================================================================================+========================================+
| |image12| `IdealThyristor <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.IdealThyristor>`_                                                                          | Multiphase ideal thyristor             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image13| `IdealGTOThyristor <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.IdealGTOThyristor>`_                                                                    | Multiphase ideal GTO thyristor         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image14| `IdealCommutingSwitch <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSwitch>`_                                                              | Multiphase ideal commuting switch      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image15| `IdealIntermediateSwitch <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.IdealIntermediateSwitch>`_                                                        | Multiphase ideal intermediate switch   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image16| `IdealDiode <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.IdealDiode>`_                                                                                  | Multiphase ideal diode                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image17| `IdealTransformer <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.IdealTransformer>`_                                                                      | Multiphase ideal transformer           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image18| `Idle <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.Idle>`_                                                                                              | Multiphase idle branch                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image19| `Short <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.Short>`_                                                                                            | Multiphase short cut branch            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image20| `IdealOpeningSwitch <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.IdealOpeningSwitch>`_                                                                  | Multiphase ideal opener                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image21| `IdealClosingSwitch <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitch>`_                                                                  | Multiphase ideal closer                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image22| `OpenerWithArc <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.OpenerWithArc>`_                                                                            | Multiphase opener with arc             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image23| `CloserWithArc <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal.CloserWithArc>`_                                                                            | Multiphase closer with arc             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+

--------------

|image24| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.IdealThyristor
-------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal thyristor**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.IdealThyristorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.IdealThyristor

   Modelica.Electrical.MultiPhase.Ideal.IdealThyristor

Information
~~~~~~~~~~~

::

Contains m ideal thyristors
(Modelica.Electrical.Analog.Ideal.IdealThyristor).

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port),
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
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron[m]        |                   | Closed thyristor resistance [Ohm]                      |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff[m]       |                   | Opened thyristor conductance [S]                       |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | Vknee[m]      |                   | Treshold voltage [V]                                   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Integer                                                               | mh            | m                 | Number of heatPorts=number of phases                   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false             | =true, if all HeatPorts are enabled                    |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T[mh]         | fill(293.15, m)   | Fixed device temperatures if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                      | Name           | Description   |
+===========================================================================================================================+================+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                           | fire[m]        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealThyristor "Multiphase ideal thyristor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start= fill(1.E-5, m)) 
        "Closed thyristor resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened thyristor conductance";
      parameter Modelica.SIunits.Voltage Vknee[m](final min=zeros(m), start = zeros(m)) 
        "Treshold voltage";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput fire[m];
      Modelica.Electrical.Analog.Ideal.IdealThyristor idealThyristor[m](
        final Ron=Ron,
        final Goff=Goff,
        final Vknee=Vknee,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, idealThyristor.p);
      connect(idealThyristor.n, plug_n.pin);
      connect(fire, idealThyristor.fire);
      connect(idealThyristor.heatPort, heatPort);
    end IdealThyristor;

--------------

|image25| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.IdealGTOThyristor
----------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal GTO thyristor**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.IdealGTOThyristorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.IdealGTOThyristor

   Modelica.Electrical.MultiPhase.Ideal.IdealGTOThyristor

Information
~~~~~~~~~~~

::

Contains m ideal GTO thyristors
(Modelica.Electrical.Analog.Ideal.IdealGTOThyristor).

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port),
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
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron[m]        |                   | Closed thyristor resistance [Ohm]                      |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff[m]       |                   | Opened thyristor conductance [S]                       |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | Vknee[m]      |                   | Treshold voltage [V]                                   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Integer                                                               | mh            | m                 | Number of heatPorts=number of phases                   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false             | =true, if all HeatPorts are enabled                    |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T[mh]         | fill(293.15, m)   | Fixed device temperatures if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                      | Name           | Description   |
+===========================================================================================================================+================+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                           | fire[m]        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealGTOThyristor "Multiphase ideal GTO thyristor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed thyristor resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened thyristor conductance";
      parameter Modelica.SIunits.Voltage Vknee[m](final min=zeros(m), start = zeros(m)) 
        "Treshold voltage";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput fire[m];
      Modelica.Electrical.Analog.Ideal.IdealGTOThyristor idealGTOThyristor[m](
        final Ron=Ron,
        final Goff=Goff,
        final Vknee=Vknee,
        each final useHeatPort=useHeatPort);
    equation 
      connect(idealGTOThyristor.p, plug_p.pin);
      connect(idealGTOThyristor.n, plug_n.pin);
      connect(fire, idealGTOThyristor.fire);
      connect(idealGTOThyristor.heatPort, heatPort);
    end IdealGTOThyristor;

--------------

|image26| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.IdealCommutingSwitch
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal commuting switch**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSwitchD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSwitch

   Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSwitch

Information
~~~~~~~~~~~

::

Contains m ideal commuting switches
(Modelica.Electrical.Analog.Ideal.IdealCommutingSwitch).

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

+---------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+
| Type                                                                                                                      | Name           | Description                                         |
+===========================================================================================================================+================+=====================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |                                                     |
+---------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                           | control[m]     | true => p--n2 connected, false => p--n1 connected   |
+---------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |                                                     |
+---------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n2       |                                                     |
+---------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n1       |                                                     |
+---------------------------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------+

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
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n2(final m=m);
      Interfaces.NegativePlug plug_n1(final m=m);
      Modelica.Electrical.Analog.Ideal.IdealCommutingSwitch
        idealCommutingSwitch[                                                    m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, idealCommutingSwitch.p);
      connect(idealCommutingSwitch.n2, plug_n2.pin);
      connect(idealCommutingSwitch.n1, plug_n1.pin);
      connect(control, idealCommutingSwitch.control);
      connect(idealCommutingSwitch.heatPort, heatPort);
    end IdealCommutingSwitch;

--------------

|image27| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.IdealIntermediateSwitch
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal intermediate switch**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.IdealIntermediateSwitchD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.IdealIntermediateSwitch

   Modelica.Electrical.MultiPhase.Ideal.IdealIntermediateSwitch

Information
~~~~~~~~~~~

::

Contains m ideal intermediate switches
(Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitch).

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

+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| Type                                                                                                                      | Name           | Description                                                            |
+===========================================================================================================================+================+========================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                           | control[m]     | true => p1--n2, p2--n1 connected, otherwise p1--n1, p2--n2 connected   |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p1       |                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p2       |                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n2       |                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n1       |                                                                        |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------------------------------+

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
      Interfaces.PositivePlug plug_p1(final m=m);
      Interfaces.PositivePlug plug_p2(final m=m);
      Interfaces.NegativePlug plug_n2(final m=m);
      Interfaces.NegativePlug plug_n1(final m=m);
      Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitch
        idealIntermediateSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p2.pin, idealIntermediateSwitch.p2);
      connect(idealIntermediateSwitch.n2, plug_n2.pin);
      connect(idealIntermediateSwitch.p1, plug_p1.pin);
      connect(idealIntermediateSwitch.n1, plug_n1.pin);
      connect(control, idealIntermediateSwitch.control);
      connect(idealIntermediateSwitch.heatPort, heatPort);
    end IdealIntermediateSwitch;

--------------

|image28| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.IdealDiode
---------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal diode**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.IdealDiodeD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.IdealDiode

   Modelica.Electrical.MultiPhase.Ideal.IdealDiode

Information
~~~~~~~~~~~

::

Contains m ideal diodes (Modelica.Electrical.Analog.Ideal.IdealDiode).

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port),
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
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron[m]        |                   | Closed diode resistance [Ohm]                          |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff[m]       |                   | Opened diode conductance [S]                           |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | Vknee[m]      |                   | Treshold voltage [V]                                   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Integer                                                               | mh            | m                 | Number of heatPorts=number of phases                   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false             | =true, if all HeatPorts are enabled                    |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T[mh]         | fill(293.15, m)   | Fixed device temperatures if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                      | Name           | Description   |
+===========================================================================================================================+================+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealDiode "Multiphase ideal diode"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed diode resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened diode conductance";
      parameter Modelica.SIunits.Voltage Vknee[m](final min=zeros(m), start = zeros(m)) 
        "Treshold voltage";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode[m](
        final Ron=Ron,
        final Goff=Goff,
        final Vknee=Vknee,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, idealDiode.p);
      connect(idealDiode.n, plug_n.pin);
    end IdealDiode;

--------------

|image29| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.IdealTransformer
---------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal transformer**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.IdealTransformerD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.IdealTransformer

   Modelica.Electrical.MultiPhase.Ideal.IdealTransformer

Information
~~~~~~~~~~~

::

Contains m ideal transformers
(Modelica.Electrical.Analog.Ideal.IdealTransformer).

**Note:** Due to the above equations, also DC signals will be
transformed!

::

Extends from
`Interfaces.FourPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.FourPlug>`_
(Component with two m-phase electric ports).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+-------------------------+-----------+-----------------------------------------------------+
| Type                                                                | Name                    | Default   | Description                                         |
+=====================================================================+=========================+===========+=====================================================+
| Integer                                                             | m                       | 3         | Number of phases                                    |
+---------------------------------------------------------------------+-------------------------+-----------+-----------------------------------------------------+
| Real                                                                | n[m]                    |           | Turns ratio                                         |
+---------------------------------------------------------------------+-------------------------+-----------+-----------------------------------------------------+
| Boolean                                                             | considerMagnetization   | false     | Choice of considering magnetization                 |
+---------------------------------------------------------------------+-------------------------+-----------+-----------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lm1[m]                  |           | Magnetization inductances w.r.t. primary side [H]   |
+---------------------------------------------------------------------+-------------------------+-----------+-----------------------------------------------------+

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

    model IdealTransformer "Multiphase ideal transformer"
      extends Interfaces.FourPlug;
      parameter Real n[m](start=fill(1, m)) "Turns ratio";
      parameter Boolean considerMagnetization=false 
        "Choice of considering magnetization";
      parameter SIunits.Inductance Lm1[m](start=fill(1,m)) 
        "Magnetization inductances w.r.t. primary side";
      Modelica.Electrical.Analog.Ideal.IdealTransformer idealTransformer[m](
          final n=n,
          each final considerMagnetization=considerMagnetization,
          final Lm1=Lm1);
    equation 
      connect(plug_p1.pin, idealTransformer.p1);
      connect(plug_p2.pin, idealTransformer.p2);
      connect(plug_n1.pin, idealTransformer.n1);
      connect(plug_n2.pin, idealTransformer.n2);
    end IdealTransformer;

--------------

|image30| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.Idle
---------------------------------------------------------------------------------------------------------------------------------------

**Multiphase idle branch**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.IdleD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.Idle

   Modelica.Electrical.MultiPhase.Ideal.Idle

Information
~~~~~~~~~~~

::

Contains m idles (Modelica.Electrical.Analog.Ideal.Idle)

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
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

    model Idle "Multiphase idle branch"
      extends Interfaces.TwoPlug;
      Modelica.Electrical.Analog.Ideal.Idle idle[m];
    equation 

      connect(plug_p.pin, idle.p);
      connect(idle.n, plug_n.pin);
    end Idle;

--------------

|image31| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.Short
----------------------------------------------------------------------------------------------------------------------------------------

**Multiphase short cut branch**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.ShortD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.Short

   Modelica.Electrical.MultiPhase.Ideal.Short

Information
~~~~~~~~~~~

::

Contains m short cuts (Modelica.Electrical.Analog.Ideal.Short)

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
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

    model Short "Multiphase short cut branch"
      extends Interfaces.TwoPlug;
      Modelica.Electrical.Analog.Ideal.Short short[m];
    equation 

      connect(plug_p.pin, short.p);
      connect(short.n, plug_n.pin);
    end Short;

--------------

|image32| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.IdealOpeningSwitch
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal opener**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.IdealOpeningSwitchD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.IdealOpeningSwitch

   Modelica.Electrical.MultiPhase.Ideal.IdealOpeningSwitch

Information
~~~~~~~~~~~

::

Contains m ideal opening switches
(Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch).

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port),
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

+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| Type                                                                                                                      | Name           | Description                                    |
+===========================================================================================================================+================+================================================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                           | control[m]     | true => switch open, false => p--n connected   |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealOpeningSwitch "Multiphase ideal opener"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => switch open, false => p--n connected";
      Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch idealOpeningSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, idealOpeningSwitch.p);
      connect(idealOpeningSwitch.n, plug_n.pin);
      connect(control, idealOpeningSwitch.control);
      connect(idealOpeningSwitch.heatPort, heatPort);
    end IdealOpeningSwitch;

--------------

|image33| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.IdealClosingSwitch
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase ideal closer**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitchD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitch

   Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitch

Information
~~~~~~~~~~~

::

Contains m ideal closing switches
(Modelica.Electrical.Analog.Ideal.IdealClosingSwitch).

<

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port),
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

+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| Type                                                                                                                      | Name           | Description                                    |
+===========================================================================================================================+================+================================================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                           | control[m]     | true => p--n connected, false => switch open   |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealClosingSwitch "Multiphase ideal closer"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => p--n connected, false => switch open";
      Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch[m](
        final Ron=Ron,
        final Goff=Goff,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, idealClosingSwitch.p);
      connect(idealClosingSwitch.n, plug_n.pin);
      connect(control, idealClosingSwitch.control);
      connect(idealClosingSwitch.heatPort, heatPort);
    end IdealClosingSwitch;

--------------

|image34| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.OpenerWithArc
------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase opener with arc**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.OpenerWithArcD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.OpenerWithArc

   Modelica.Electrical.MultiPhase.Ideal.OpenerWithArc

Information
~~~~~~~~~~~

::

Contains m opening switches with arc
(Modelica.Electrical.Analog.Ideal.OpenerWithArc).

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Type                                                                    | Name          | Default           | Description                                            |
+=========================================================================+===============+===================+========================================================+
| Integer                                                                 | m             | 3                 | Number of phases                                       |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_       | Ron[m]        |                   | Closed switch resistance [Ohm]                         |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_     | Goff[m]       |                   | Opened switch conductance [S]                          |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | V0[m]         |                   | Initial arc voltage [V]                                |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `VoltageSlope <Modelica_SIunits.html#Modelica.SIunits.VoltageSlope>`_   | dVdt[m]       |                   | Arc voltage slope [V/s]                                |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | Vmax[m]       |                   | Max. arc voltage [V]                                   |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Integer                                                                 | mh            | m                 | Number of heatPorts=number of phases                   |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Boolean                                                                 | useHeatPort   | false             | =true, if all HeatPorts are enabled                    |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_     | T[mh]         | fill(293.15, m)   | Fixed device temperatures if useHeatPort = false [K]   |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| Type                                                                                                                      | Name           | Description                                    |
+===========================================================================================================================+================+================================================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                           | control[m]     | true => switch open, false => p--n connected   |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model OpenerWithArc "Multiphase opener with arc"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      parameter Modelica.SIunits.Voltage V0[m](start=fill(30,m)) 
        "Initial arc voltage";
      parameter Modelica.SIunits.VoltageSlope dVdt[m](start=fill(10E3,m)) 
        "Arc voltage slope";
      parameter Modelica.SIunits.Voltage Vmax[m](start=fill(60,m)) 
        "Max. arc voltage";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => switch open, false => p--n connected";
      Modelica.Electrical.Analog.Ideal.OpenerWithArc openerWithArc[m](
        final Ron=Ron,
        final Goff=Goff,
        final V0=V0,
        final dVdt=dVdt,
        final Vmax=Vmax,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin, openerWithArc.p);
      connect(openerWithArc.n, plug_n.pin);
      connect(control, openerWithArc.control);
      connect(openerWithArc.heatPort, heatPort);
    end OpenerWithArc;

--------------

|image35| `Modelica.Electrical.MultiPhase.Ideal <Modelica_Electrical_MultiPhase_Ideal.html#Modelica.Electrical.MultiPhase.Ideal>`_.CloserWithArc
------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase closer with arc**

.. figure:: Modelica.Electrical.MultiPhase.Ideal.CloserWithArcD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Ideal.CloserWithArc

   Modelica.Electrical.MultiPhase.Ideal.CloserWithArc

Information
~~~~~~~~~~~

::

Contains m closing switches with arc
(Modelica.Electrical.Analog.Ideal.CloserWithArc).

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Type                                                                    | Name          | Default           | Description                                            |
+=========================================================================+===============+===================+========================================================+
| Integer                                                                 | m             | 3                 | Number of phases                                       |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_       | Ron[m]        |                   | Closed switch resistance [Ohm]                         |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_     | Goff[m]       |                   | Opened switch conductance [S]                          |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | V0[m]         |                   | Initial arc voltage [V]                                |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `VoltageSlope <Modelica_SIunits.html#Modelica.SIunits.VoltageSlope>`_   | dVdt[m]       |                   | Arc voltage slope [V/s]                                |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | Vmax[m]       |                   | Max. arc voltage [V]                                   |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Integer                                                                 | mh            | m                 | Number of heatPorts=number of phases                   |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| Boolean                                                                 | useHeatPort   | false             | =true, if all HeatPorts are enabled                    |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_     | T[mh]         | fill(293.15, m)   | Fixed device temperatures if useHeatPort = false [K]   |
+-------------------------------------------------------------------------+---------------+-------------------+--------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| Type                                                                                                                      | Name           | Description                                    |
+===========================================================================================================================+================+================================================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                           | control[m]     | true => switch open, false => p--n connected   |
+---------------------------------------------------------------------------------------------------------------------------+----------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CloserWithArc "Multiphase closer with arc"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance Ron[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff[m](final min=zeros(m), start = fill(1.E-5, m)) 
        "Opened switch conductance";
      parameter Modelica.SIunits.Voltage V0[m](start=fill(30,m)) 
        "Initial arc voltage";
      parameter Modelica.SIunits.VoltageSlope dVdt[m](start=fill(10E3,m)) 
        "Arc voltage slope";
      parameter Modelica.SIunits.Voltage Vmax[m](start=fill(60,m)) 
        "Max. arc voltage";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, final T=fill(293.15,m));
      Modelica.Blocks.Interfaces.BooleanInput control[m] 
        "true => switch open, false => p--n connected";
      Modelica.Electrical.Analog.Ideal.CloserWithArc closerWithArc[m](
        final Ron=Ron,
        final Goff=Goff,
        final V0=V0,
        final dVdt=dVdt,
        final Vmax=Vmax,
        each final useHeatPort=useHeatPort);
    equation 
      connect(plug_p.pin,closerWithArc. p);
      connect(closerWithArc.n, plug_n.pin);
      connect(control,closerWithArc. control);
      connect(closerWithArc.heatPort, heatPort);
    end CloserWithArc;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:20
2010.

.. |Modelica.Electrical.MultiPhase.Ideal.IdealThyristor| image:: Modelica.Electrical.MultiPhase.Ideal.IdealThyristorS.png
.. |Modelica.Electrical.MultiPhase.Ideal.IdealGTOThyristor| image:: Modelica.Electrical.MultiPhase.Ideal.IdealThyristorS.png
.. |Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSwitch| image:: Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSwitchS.png
.. |Modelica.Electrical.MultiPhase.Ideal.IdealIntermediateSwitch| image:: Modelica.Electrical.MultiPhase.Ideal.IdealIntermediateSwitchS.png
.. |Modelica.Electrical.MultiPhase.Ideal.IdealDiode| image:: Modelica.Electrical.MultiPhase.Ideal.IdealDiodeS.png
.. |Modelica.Electrical.MultiPhase.Ideal.IdealTransformer| image:: Modelica.Electrical.MultiPhase.Ideal.IdealTransformerS.png
.. |Modelica.Electrical.MultiPhase.Ideal.Idle| image:: Modelica.Electrical.MultiPhase.Ideal.IdleS.png
.. |Modelica.Electrical.MultiPhase.Ideal.Short| image:: Modelica.Electrical.MultiPhase.Ideal.ShortS.png
.. |Modelica.Electrical.MultiPhase.Ideal.IdealOpeningSwitch| image:: Modelica.Electrical.MultiPhase.Ideal.IdealOpeningSwitchS.png
.. |Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitch| image:: Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitchS.png
.. |Modelica.Electrical.MultiPhase.Ideal.OpenerWithArc| image:: Modelica.Electrical.MultiPhase.Ideal.OpenerWithArcS.png
.. |Modelica.Electrical.MultiPhase.Ideal.CloserWithArc| image:: Modelica.Electrical.MultiPhase.Ideal.CloserWithArcS.png
.. |image12| image:: Modelica.Electrical.MultiPhase.Ideal.IdealThyristorS.png
.. |image13| image:: Modelica.Electrical.MultiPhase.Ideal.IdealThyristorS.png
.. |image14| image:: Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSwitchS.png
.. |image15| image:: Modelica.Electrical.MultiPhase.Ideal.IdealIntermediateSwitchS.png
.. |image16| image:: Modelica.Electrical.MultiPhase.Ideal.IdealDiodeS.png
.. |image17| image:: Modelica.Electrical.MultiPhase.Ideal.IdealTransformerS.png
.. |image18| image:: Modelica.Electrical.MultiPhase.Ideal.IdleS.png
.. |image19| image:: Modelica.Electrical.MultiPhase.Ideal.ShortS.png
.. |image20| image:: Modelica.Electrical.MultiPhase.Ideal.IdealOpeningSwitchS.png
.. |image21| image:: Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitchS.png
.. |image22| image:: Modelica.Electrical.MultiPhase.Ideal.OpenerWithArcS.png
.. |image23| image:: Modelica.Electrical.MultiPhase.Ideal.CloserWithArcS.png
.. |image24| image:: Modelica.Electrical.MultiPhase.Ideal.IdealThyristorI.png
.. |image25| image:: Modelica.Electrical.MultiPhase.Ideal.IdealThyristorI.png
.. |image26| image:: Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSwitchI.png
.. |image27| image:: Modelica.Electrical.MultiPhase.Ideal.IdealIntermediateSwitchI.png
.. |image28| image:: Modelica.Electrical.MultiPhase.Ideal.IdealDiodeI.png
.. |image29| image:: Modelica.Electrical.MultiPhase.Ideal.IdealTransformerI.png
.. |image30| image:: Modelica.Electrical.MultiPhase.Ideal.IdleI.png
.. |image31| image:: Modelica.Electrical.MultiPhase.Ideal.ShortI.png
.. |image32| image:: Modelica.Electrical.MultiPhase.Ideal.IdealOpeningSwitchI.png
.. |image33| image:: Modelica.Electrical.MultiPhase.Ideal.IdealClosingSwitchI.png
.. |image34| image:: Modelica.Electrical.MultiPhase.Ideal.OpenerWithArcI.png
.. |image35| image:: Modelica.Electrical.MultiPhase.Ideal.CloserWithArcI.png
