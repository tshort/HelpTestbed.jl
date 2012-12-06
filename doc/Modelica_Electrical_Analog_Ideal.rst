================================
Modelica.Electrical.Analog.Ideal
================================

`Modelica.Electrical.Analog <Modelica_Electrical_Analog.html#Modelica.Electrical.Analog>`_.Ideal
------------------------------------------------------------------------------------------------

**Ideal electrical elements such as switches, diode, transformer,
operational amplifier**

Information
~~~~~~~~~~~

::

This package contains electrical components with idealized behaviour. To
enable more realistic applications than it is possible with pure
realistic behavior some components are improved by additional features.
E.g. the switches have resistances for the open or close case which can
be parametrized.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| Name                                                                                                                                                                                                                   | Description                                                       |
+========================================================================================================================================================================================================================+===================================================================+
| |image25| `IdealThyristor <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealThyristor>`_                                                                                                    | Ideal thyristor                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image26| `IdealGTOThyristor <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealGTOThyristor>`_                                                                                              | Ideal GTO thyristor                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image27| `IdealCommutingSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealCommutingSwitch>`_                                                                                        | Ideal commuting switch                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image28| `IdealIntermediateSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitch>`_                                                                                  | Ideal intermediate switch                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image29| `ControlledIdealCommutingSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.ControlledIdealCommutingSwitch>`_                                                                    | Controlled ideal commuting switch                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image30| `ControlledIdealIntermediateSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitch>`_                                                              | Controlled ideal intermediate switch                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image31| `IdealOpAmp <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealOpAmp>`_                                                                                                            | Ideal operational amplifier (norator-nullator pair)               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image32| `IdealOpAmp3Pin <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin>`_                                                                                                    | Ideal operational amplifier (norator-nullator pair), but 3 pins   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image33| `IdealOpAmpLimited <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealOpAmpLimited>`_                                                                                              | Ideal operational amplifier with limitation                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image34| `IdealDiode <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealDiode>`_                                                                                                            | Ideal diode                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image35| `IdealTransformer <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealTransformer>`_                                                                                                | Ideal transformer core with or without magnetization              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image36| `IdealGyrator <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealGyrator>`_                                                                                                        | Ideal gyrator                                                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image37| `Idle <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.Idle>`_                                                                                                                        | Idle branch                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image38| `Short <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.Short>`_                                                                                                                      | Short cut branch                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image39| `IdealOpeningSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch>`_                                                                                            | Ideal electrical opener                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image40| `IdealClosingSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealClosingSwitch>`_                                                                                            | Ideal electrical closer                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image41| `ControlledIdealOpeningSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.ControlledIdealOpeningSwitch>`_                                                                        | Controlled ideal electrical opener                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image42| `ControlledIdealClosingSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.ControlledIdealClosingSwitch>`_                                                                        | Controlled ideal electrical closer                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image43| `OpenerWithArc <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.OpenerWithArc>`_                                                                                                      | Ideal opening switch with simple arc model                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image44| `CloserWithArc <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.CloserWithArc>`_                                                                                                      | Ideal closing switch with simple arc model                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image45| `ControlledOpenerWithArc <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.ControlledOpenerWithArc>`_                                                                                  | Controlled ideal electrical opener with simple arc model          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image46| `ControlledCloserWithArc <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.ControlledCloserWithArc>`_                                                                                  | Controlled ideal electrical closer with simple arc model          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image47| `IdealTriac <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealTriac>`_                                                                                                            | Ideal triac, based on ideal thyristors                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image48| `AD\_Converter <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.AD_Converter>`_                                                                                                       | Simple n-bit analog to digital converter                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image49| `DA\_Converter <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.DA_Converter>`_                                                                                                       | Simple digital to analog converter                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+

--------------

|image50| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealThyristor
-------------------------------------------------------------------------------------------------------------------------------------

**Ideal thyristor**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealThyristorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealThyristor

   Modelica.Electrical.Analog.Ideal.IdealThyristor

Information
~~~~~~~~~~~

::

This is an ideal thyristor model which is
 **open**(off), if the voltage drop is less than 0 or fire is false
 **closed** (on), if the voltage drop is greater or equal 0 and fire is
true.

This is the behaviour if all parameters are exactly zero.
 Note, there are circuits, where this ideal description with zero
resistance and zero cinductance is not possible. In order to prevent
singularities during switching, the opened thyristor has a small
conductance *Goff* and the closed thyristor has a low resistance *Ron*
which is default.

The parameter *Vknee* which is the forward threshold voltage, allows to
displace the knee point
 along the *Goff*-characteristic until *v = Vknee*.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron           | 1.E-5     | Closed thyristor resistance [Ohm]                     |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff          | 1.E-5     | Opened thyristor conductance [S]                      |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | Vknee         |           | Forward threshold voltage [V]                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                      | fire       |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealThyristor "Ideal thyristor"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Modelica.SIunits.Resistance Ron(final min=0) = 1.E-5 
        "Closed thyristor resistance";
      parameter Modelica.SIunits.Conductance Goff(final min=0) = 1.E-5 
        "Opened thyristor conductance";
      parameter Modelica.SIunits.Voltage Vknee(final min=0, start=0) 
        "Forward threshold voltage";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(
         final T=293.15);
      Boolean off(start=true) "Switching state";
      Modelica.Blocks.Interfaces.BooleanInput fire;
    protected 
      Real s(final unit="1") 
        "Auxiliary variable: if on then current, if opened then voltage";
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
    equation 
      off = s < 0 or pre(off) and not fire;
      v = (s*unitCurrent)*(if off then 1 else Ron) + Vknee;
      i = (s*unitVoltage)*(if off then Goff else 1) + Goff*Vknee;
      LossPower = v*i;
    end IdealThyristor;

--------------

|image51| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealGTOThyristor
----------------------------------------------------------------------------------------------------------------------------------------

**Ideal GTO thyristor**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealThyristorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealGTOThyristor

   Modelica.Electrical.Analog.Ideal.IdealGTOThyristor

Information
~~~~~~~~~~~

::

This is an ideal GTO thyristor model which is
 **open**(off), if the voltage drop is less than 0 or fire is false
 **closed** (on), if the voltage drop is greater or equal 0 and fire is
true.

This is the behaviour if all parameters are exactly zero.
 Note, there are circuits, where this ideal description with zero
resistance and zero cinductance is not possible. In order to prevent
singularities during switching, the opened thyristor has a small
conductance *Goff* and the closed thyristor has a low resistance *Ron*
which is default.

The parameter *Vknee* which is the forward threshold voltage, allows to
displace the knee point
 along the *Goff*-characteristic until *v = Vknee*.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron           | 1.E-5     | Closed thyristor resistance [Ohm]                     |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff          | 1.E-5     | Opened thyristor conductance [S]                      |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | Vknee         |           | Forward threshold voltage [V]                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                      | fire       |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealGTOThyristor "Ideal GTO thyristor"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Modelica.SIunits.Resistance Ron(final min=0) = 1.E-5 
        "Closed thyristor resistance";
      parameter Modelica.SIunits.Conductance Goff(final min=0) = 1.E-5 
        "Opened thyristor conductance";
      parameter Modelica.SIunits.Voltage Vknee(final min=0, start=0) 
        "Forward threshold voltage";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(
         final T=293.15);
      Boolean off(start=true) "Switching state";
      Modelica.Blocks.Interfaces.BooleanInput fire;
    protected 
      Real s(final unit="1") 
        "Auxiliary variable: if on then current, if opened then voltage";
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
    equation 
      off = s < 0 or not fire;
      v = (s*unitCurrent)*(if off then 1 else Ron) + Vknee;
      i = (s*unitVoltage)*(if off then Goff else 1) + Goff*Vknee;
      LossPower = v*i;
    end IdealGTOThyristor;

--------------

|image52| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealCommutingSwitch
-------------------------------------------------------------------------------------------------------------------------------------------

**Ideal commuting switch**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealCommutingSwitchD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealCommutingSwitch

   Modelica.Electrical.Analog.Ideal.IdealCommutingSwitch

Information
~~~~~~~~~~~

::

The commuting switch has a positive pin p and two negative pins n1 and
n2. The switching behaviour is controlled by the inpug signal control.
If control is true, the pin p is connected with the negative pin n2.
Otherwise, the pin p is connected to the negative pin n1.

In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron. The limiting case is also allowed, i.e., the resistance
Ron of the closed switch could be exactly zero and the conductance Goff
of the open switch could be also exactly zero. Note, there are circuits,
where a description with zero Ron or zero Goff is not possible.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron           | 1.E-5     | Closed switch resistance [Ohm]                        |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff          | 1.E-5     | Opened switch conductance [S]                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                         |
+======================================================================================================================+============+=====================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          |                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n2         |                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n1         |                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                      | control    | true => p--n2 connected, false => p--n1 connected   |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealCommutingSwitch "Ideal commuting switch"
      parameter SI.Resistance Ron(final min=0) = 1.E-5 "Closed switch resistance";
      parameter SI.Conductance Goff(final min=0) = 1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Interfaces.PositivePin p;
      Interfaces.NegativePin n2;
      Interfaces.NegativePin n1;
      Modelica.Blocks.Interfaces.BooleanInput control 
        "true => p--n2 connected, false => p--n1 connected";
    protected 
      Real s1(final unit="1");
      Real s2(final unit="1") "Auxiliary variables";
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
    equation 
      0 = p.i + n2.i + n1.i;

      p.v - n1.v = (s1*unitCurrent)*(if (control) then 1 else Ron);
      n1.i = -(s1*unitVoltage)*(if (control) then Goff else 1);
      p.v - n2.v = (s2*unitCurrent)*(if (control) then Ron else 1);
      n2.i = -(s2*unitVoltage)*(if (control) then 1 else Goff);
      LossPower = p.i * p.v + n1.i *n1.v + n2.i * n2.v;
    end IdealCommutingSwitch;

--------------

|image53| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealIntermediateSwitch
----------------------------------------------------------------------------------------------------------------------------------------------

**Ideal intermediate switch**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitchD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitch

   Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitch

Information
~~~~~~~~~~~

::

The intermediate switch has four switching contact pins p1, p2, n1, and
n2. The switching behaviour is controlled by the input signal control.
If control is true, the pin p1 is connected to the pin n2, and the pin
p2 is connected to the pin n1. Otherwise,if control is false, the pin p1
is connected to n1, and the pin p2 is connected to n2.

.. figure:: ../Resources/Images/Electrical/Analog/IdealIntermediateSwitch1.png
   :align: center
   :alt: 

In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron.

.. figure:: ../Resources/Images/Electrical/Analog/IdealIntermediateSwitch2.png
   :align: center
   :alt: 

The limiting case is also allowed, i.e., the resistance Ron of the
closed switch could be exactly zero and the conductance Goff of the open
switch could be also exactly zero. Note, there are circuits, where a
description with zero Ron or zero Goff is not possible.

**Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not**modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron           | 1.E-5     | Closed switch resistance [Ohm]                        |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff          | 1.E-5     | Opened switch conductance [S]                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                            |
+======================================================================================================================+============+========================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p1         |                                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p2         |                                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n1         |                                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n2         |                                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                      | control    | true => p1--n2, p2--n1 connected, otherwise p1--n1, p2--n2 connected   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealIntermediateSwitch "Ideal intermediate switch"
      parameter SI.Resistance Ron(final min=0) = 1.E-5 "Closed switch resistance";
      parameter SI.Conductance Goff(final min=0) = 1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Interfaces.PositivePin p1;
      Interfaces.PositivePin p2;
      Interfaces.NegativePin n1;
      Interfaces.NegativePin n2;
      Modelica.Blocks.Interfaces.BooleanInput control 
        "true => p1--n2, p2--n1 connected, otherwise p1--n1, p2--n2  connected";
    protected 
      Real s1(final unit="1");
      Real s2(final unit="1");
      Real s3(final unit="1");
      Real s4(final unit="1") "Auxiliary variables";
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
    equation 
      p1.v - n1.v = (s1*unitCurrent)*(if (control) then 1 else Ron);
      p2.v - n2.v = (s2*unitCurrent)*(if (control) then 1 else Ron);
      p1.v - n2.v = (s3*unitCurrent)*(if (control) then Ron else 1);
      p2.v - n1.v = (s4*unitCurrent)*(if (control) then Ron else 1);

      p1.i = if control then s1*unitVoltage*Goff + s3*unitCurrent else s1*unitCurrent + s3*unitVoltage*Goff;
      p2.i = if control then s2*unitVoltage*Goff + s4*unitCurrent else s2*unitCurrent + s4*unitVoltage*Goff;
      n1.i = if control then -s1*unitVoltage*Goff - s4*unitCurrent else -s1*unitCurrent - s4*unitVoltage*Goff;
      n2.i = if control then -s2*unitVoltage*Goff - s3*unitCurrent else -s2*unitCurrent - s3*unitVoltage*Goff;

      LossPower = p1.i * p1.v + p2.i * p2.v + n1.i *n1.v + n2.i * n2.v;
    end IdealIntermediateSwitch;

--------------

|image54| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.ControlledIdealCommutingSwitch
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Controlled ideal commuting switch**

.. figure:: Modelica.Electrical.Analog.Ideal.ControlledIdealCommutingSwitchD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.ControlledIdealCommutingSwitch

   Modelica.Electrical.Analog.Ideal.ControlledIdealCommutingSwitch

Information
~~~~~~~~~~~

::

The commuting switch has a positive pin p and two negative pins n1 and
n2. The switching behaviour is controlled by the control pin. If its
voltage exceeds the value of the parameter level, the pin p is connected
with the negative pin n2. Otherwise, the pin p is connected the negative
pin n1.

In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron. The limiting case is also allowed, i.e., the resistance
Ron of the closed switch could be exactly zero and the conductance Goff
of the open switch could be also exactly zero. Note, there are circuits,
where a description with zero Ron or zero Goff is not possible.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | level         | 0.5       | Switch level [V]                                      |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron           | 1.E-5     | Closed switch resistance [Ohm]                        |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff          | 1.E-5     | Opened switch conductance [S]                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                                    |
+======================================================================================================================+============+================================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                                |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          |                                                                                |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n2         |                                                                                |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n1         |                                                                                |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | control    | Control pin: if control.v > level p--n2 connected, otherwise p--n1 connected   |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ControlledIdealCommutingSwitch 
      "Controlled ideal commuting switch"
      parameter SI.Voltage level=0.5 "Switch level";
      parameter SI.Resistance Ron(final min=0) = 1.E-5 "Closed switch resistance";
      parameter SI.Conductance Goff(final min=0) = 1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Interfaces.PositivePin p;
      Interfaces.NegativePin n2;
      Interfaces.NegativePin n1;
      Interfaces.Pin control 
        "Control pin: if control.v > level p--n2 connected, otherwise p--n1 connected";
    protected 
      Real s1(final unit="1");
      Real s2(final unit="1") "Auxiliary variables";
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
    equation 
      control.i = 0;
      0 = p.i + n2.i + n1.i;

      p.v - n1.v = (s1*unitCurrent)*(if (control.v > level) then 1 else Ron);
      n1.i = -(s1*unitVoltage)*(if (control.v > level) then Goff else 1);
      p.v - n2.v = (s2*unitCurrent)*(if (control.v > level) then Ron else 1);
      n2.i = -(s2*unitVoltage)*(if (control.v > level) then 1 else Goff);
      LossPower = p.i * p.v + n1.i *n1.v + n2.i * n2.v;
    end ControlledIdealCommutingSwitch;

--------------

|image55| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.ControlledIdealIntermediateSwitch
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Controlled ideal intermediate switch**

.. figure:: Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitchD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitch

   Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitch

Information
~~~~~~~~~~~

::

The intermediate switch has four switching contact pins p1, p2, n1, and
n2. The switching behaviour is controlled by the control pin. If its
voltage exceeds the value of the parameter level, the pin p1 is
connected to pin n2, and the pin p2 is connected to the pin n1.
Otherwise, the pin p1 is connected to the pin n1, and the pin p2 is
connected to the pin n2.
 |image56|
In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron.
 |image57|
The limiting case is also allowed, i.e., the resistance Ron of the
closed switch could be exactly zero and the conductance Goff of the open
switch could be also exactly zero. Note, there are circuits, where a
description with zero Ron or zero Goff is not possible.

**Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not**modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | level         | 0.5       | Switch level [V]                                      |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron           | 1.E-5     | Closed switch resistance [Ohm]                        |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff          | 1.E-5     | Opened switch conductance [S]                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                                                      |
+======================================================================================================================+============+==================================================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p1         |                                                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p2         |                                                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n1         |                                                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n2         |                                                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------------------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | control    | Control pin: if control.v > level p1--n2, p2--n1 connected, otherwise p1--n1, p2--n2 connected   |
+----------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ControlledIdealIntermediateSwitch 
      "Controlled ideal intermediate switch"
      parameter SI.Voltage level=0.5 "Switch level";
      parameter SI.Resistance Ron(final min=0) = 1.E-5 "Closed switch resistance";
      parameter SI.Conductance Goff(final min=0) = 1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Interfaces.PositivePin p1;
      Interfaces.PositivePin p2;
      Interfaces.NegativePin n1;
      Interfaces.NegativePin n2;
      Interfaces.Pin control "Control pin: if control.v > level p1--n2, p2--n1 connected,
             otherwise p1--n1, p2--n2  connected";
    protected 
      Real s1(final unit="1");
      Real s2(final unit="1");
      Real s3(final unit="1");
      Real s4(final unit="1") "Auxiliary variables";
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
    equation 
      control.i = 0;

      p1.v - n1.v = (s1*unitCurrent)*(if (control.v > level) then 1 else Ron);
      p2.v - n2.v = (s2*unitCurrent)*(if (control.v > level) then 1 else Ron);
      p1.v - n2.v = (s3*unitCurrent)*(if (control.v > level) then Ron else 1);
      p2.v - n1.v = (s4*unitCurrent)*(if (control.v > level) then Ron else 1);

      p1.i = if control.v > level then s1*unitVoltage*Goff + s3*unitCurrent else s1*unitCurrent + s3*unitVoltage*Goff;
      p2.i = if control.v > level then s2*unitVoltage*Goff + s4*unitCurrent else s2*unitCurrent + s4*unitVoltage*Goff;
      n1.i = if control.v > level then -s1*unitVoltage*Goff - s4*unitCurrent else -s1*unitCurrent - s4*unitVoltage*Goff;
      n2.i = if control.v > level then -s2*unitVoltage*Goff - s3*unitCurrent else -s2*unitCurrent - s3*unitVoltage*Goff;

      LossPower = p1.i * p1.v + p2.i * p2.v + n1.i *n1.v + n2.i * n2.v;
    end ControlledIdealIntermediateSwitch;

--------------

|image58| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealOpAmp
---------------------------------------------------------------------------------------------------------------------------------

**Ideal operational amplifier (norator-nullator pair)**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealOpAmpD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealOpAmp

   Modelica.Electrical.Analog.Ideal.IdealOpAmp

Information
~~~~~~~~~~~

::

The ideal OpAmp is a two-port. The left port is fixed to *v1=0* and
*i1=0* (nullator). At the right port both any voltage *v2* and any
current *i2* are possible (norator).

::

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------+
| Type                                                                                                            | Name   | Description                      |
+=================================================================================================================+========+==================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port    |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port    |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealOpAmp 
      "Ideal operational amplifier (norator-nullator pair)"
      SI.Voltage v1 "Voltage drop over the left port";
      SI.Voltage v2 "Voltage drop over the right port";
      SI.Current i1 "Current flowing from pos. to neg. pin of the left port";
      SI.Current i2 "Current flowing from pos. to neg. pin of the right port";
      Interfaces.PositivePin p1 "Positive pin of the left port";
      Interfaces.NegativePin n1 "Negative pin of the left port";
      Interfaces.PositivePin p2 "Positive pin of the right port";
      Interfaces.NegativePin n2 "Negative pin of the right port";
    equation 
      v1 = p1.v - n1.v;
      v2 = p2.v - n2.v;
      0 = p1.i + n1.i;
      0 = p2.i + n2.i;
      i1 = p1.i;
      i2 = p2.i;
      v1 = 0;
      i1 = 0;
    end IdealOpAmp;

--------------

|image59| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealOpAmp3Pin
-------------------------------------------------------------------------------------------------------------------------------------

**Ideal operational amplifier (norator-nullator pair), but 3 pins**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealOpAmp3PinD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin

   Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin

Information
~~~~~~~~~~~

::

The ideal OpAmp with three pins is of exactly the same behaviour as the
ideal OpAmp with four pins. Only the negative output pin is left out.
Both the input voltage and current are fixed to zero (nullator). At the
output pin both any voltage *v2* and any current *i2* are possible.

::

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+---------+----------------------------------+
| Type                                                                                                            | Name    | Description                      |
+=================================================================================================================+=========+==================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | in\_p   | Positive pin of the input port   |
+-----------------------------------------------------------------------------------------------------------------+---------+----------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | in\_n   | Negative pin of the input port   |
+-----------------------------------------------------------------------------------------------------------------+---------+----------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | out     | Output pin                       |
+-----------------------------------------------------------------------------------------------------------------+---------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealOpAmp3Pin 
      "Ideal operational amplifier (norator-nullator pair), but 3 pins"

      Interfaces.PositivePin in_p "Positive pin of the input port";
      Interfaces.NegativePin in_n "Negative pin of the input port";
      Interfaces.PositivePin out "Output pin";
    equation 
      in_p.v = in_n.v;
      in_p.i = 0;
      in_n.i = 0;
    end IdealOpAmp3Pin;

--------------

|image60| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealOpAmpLimited
----------------------------------------------------------------------------------------------------------------------------------------

**Ideal operational amplifier with limitation**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealOpAmpLimitedD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealOpAmpLimited

   Modelica.Electrical.Analog.Ideal.IdealOpAmpLimited

Information
~~~~~~~~~~~

::

The ideal OpAmp with limitation behaves like an ideal OpAmp without
limitation, if the output voltage is within the limits VMin and VMax. In
this case the input voltage vin = in\_p.v - in\_n.v is zero. If the
input voltage vin less than 0, the output voltage is out.v = VMin. If
the input voltage is vin larger than 0, the output voltage is out.v =
VMax.

::

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+
| Type                                                                                                            | Name    | Description                          |
+=================================================================================================================+=========+======================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | in\_p   | Positive pin of the input port       |
+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | in\_n   | Negative pin of the input port       |
+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | out     | Output pin                           |
+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | VMax    | Positive output voltage limitation   |
+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | VMin    | Negative output voltage limitation   |
+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealOpAmpLimited "Ideal operational amplifier with limitation"

      Interfaces.PositivePin in_p "Positive pin of the input port";
      Interfaces.NegativePin in_n "Negative pin of the input port";
      Interfaces.PositivePin out "Output pin";
      Interfaces.PositivePin VMax "Positive output voltage limitation";
      Interfaces.NegativePin VMin "Negative output voltage limitation";
      SI.Voltage vin "input voltage";
    protected 
      Real s(final unit="1") "Auxiliary variable";
      constant Modelica.SIunits.Voltage unitVoltage= 1;

    equation 
      in_p.i = 0;
      in_n.i = 0;
      VMax.i = 0;
      VMin.i = 0;
      vin = in_p.v - in_n.v;
      in_p.v - in_n.v = unitVoltage*smooth(0,(if s < -1 then s + 1 else if s > 1 then s - 1 else 0));
      out.v = smooth(0,if s < -1 then VMin.v else if s > 1 then VMax.v else (VMax.v - VMin.v)*s/2 + (VMax.v + VMin.v)/2);
    end IdealOpAmpLimited;

--------------

|image61| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealDiode
---------------------------------------------------------------------------------------------------------------------------------

**Ideal diode**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealDiodeD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealDiode

   Modelica.Electrical.Analog.Ideal.IdealDiode

Information
~~~~~~~~~~~

::

This is an ideal switch which is
 **open**(off), if it is reversed biased (voltage drop less than 0)
 **closed** (on), if it is conducting (current > 0).
 This is the behaviour if all parameters are exactly zero.
 Note, there are circuits, where this ideal description with zero
resistance and zero cinductance is not possible. In order to prevent
singularities during switching, the opened diode has a small conductance
*Gon* and the closed diode has a low resistance *Roff* which is default.

The parameter *Vknee* which is the forward threshold voltage, allows to
displace the knee point
 along the *Gon*-characteristic until *v = Vknee*.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+----------------------------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                                                |
+=======================================================================+===============+===========+============================================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron           | 1.E-5     | Forward state-on differential resistance (closed diode resistance) [Ohm]   |
+-----------------------------------------------------------------------+---------------+-----------+----------------------------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff          | 1.E-5     | Backward state-off conductance (opened diode conductance) [S]              |
+-----------------------------------------------------------------------+---------------+-----------+----------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | Vknee         |           | Forward threshold voltage [V]                                              |
+-----------------------------------------------------------------------+---------------+-----------+----------------------------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                                              |
+-----------------------------------------------------------------------+---------------+-----------+----------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]                        |
+-----------------------------------------------------------------------+---------------+-----------+----------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealDiode "Ideal diode"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Modelica.SIunits.Resistance Ron(final min=0) = 1.E-5 
        "Forward state-on differential resistance (closed diode resistance)";
      parameter Modelica.SIunits.Conductance Goff(final min=0) = 1.E-5 
        "Backward state-off conductance (opened diode conductance)";
      parameter Modelica.SIunits.Voltage Vknee(final min=0, start=0) 
        "Forward threshold voltage";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort;
      Boolean off(start=true) "Switching state";
    protected 
      Real s(final unit="1") 
        "Auxiliary variable for actual position on the ideal diode characteristic";
      /* s = 0: knee point
         s < 0: below knee point, diode conducting
         s > 0: above knee point, diode locking */
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
    equation 
      off = s < 0;
      v = (s*unitCurrent)*(if off then 1 else Ron) + Vknee;
      i = (s*unitVoltage)*(if off then Goff else 1) + Goff*Vknee;

      LossPower = v*i;
    end IdealDiode;

--------------

|image62| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealTransformer
---------------------------------------------------------------------------------------------------------------------------------------

**Ideal transformer core with or without magnetization**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealTransformerD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealTransformer

   Modelica.Electrical.Analog.Ideal.IdealTransformer

Information
~~~~~~~~~~~

::

The ideal transformer is a two-port circuit element; in case of Boolean
parameter ``considerMagnetization = false`` it is characterized by the
following equations:

::

     i2 = -i1*n;
     v2 =  v1/n;

where ``n`` is a real number called the turns ratio. Due to this
equations, also DC voltages and currents are transformed - which is not
the case for technical transformers.

In case of Boolean parameter ``considerMagnetization = true`` it is
characterized by the following equations:

::

     im1  = i1 + i2/n "Magnetizing current w.r.t. primary side";
     psim1= Lm1*im1   "Magnetic flux w.r.t. primary side";
     v1 = der(psim1)  "Primary voltage";
     v2 = v1/n        "Secondary voltage";

where ``Lm`` denotes the magnetizing inductance. Due to this equations,
the DC offset of secondary voltages and currents decrement according to
the time constant defined by the connected circuit.

Taking primary ``L1sigma`` and secondary ``L2ssigma`` leakage
inductances into account, compared with the `basic
transformer <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.Transformer>`_
the following parameter conversion can be applied (which leads to
identical results):

::

     L1 = L1sigma + M*n "Primary inductance at secondary no-load";
     L2 = L2sigma + M/n "Secondary inductance at primary no-load";
      M  = Lm1/n         "Mutual inductance";

For the backward conversion, one has to decide about the partitioning of
the leakage to primary and secondary side.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_
(Component with two electrical ports, including current).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+-------------------------+-----------+----------------------------------------------------+
| Type                                                                | Name                    | Default   | Description                                        |
+=====================================================================+=========================+===========+====================================================+
| Real                                                                | n                       |           | Turns ratio primary:secondary voltage              |
+---------------------------------------------------------------------+-------------------------+-----------+----------------------------------------------------+
| Boolean                                                             | considerMagnetization   | false     | Choice of considering magnetization                |
+---------------------------------------------------------------------+-------------------------+-----------+----------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lm1                     |           | Magnetization inductance w.r.t. primary side [H]   |
+---------------------------------------------------------------------+-------------------------+-----------+----------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealTransformer 
      "Ideal transformer core with or without magnetization"
      extends Modelica.Electrical.Analog.Interfaces.TwoPort;
      parameter Real n(start=1) "Turns ratio primary:secondary voltage";
      parameter Boolean considerMagnetization=false 
        "Choice of considering magnetization";
      parameter Modelica.SIunits.Inductance Lm1(start=1) 
        "Magnetization inductance w.r.t. primary side";
    protected 
      Modelica.SIunits.Current im1 "Magnetization current w.r.t. primary side";
      Modelica.SIunits.MagneticFlux psim1 "Magnetic flux w.r.t. primary side";
    equation 
      im1 = i1 + i2/n;
      if considerMagnetization then
        psim1 = Lm1*im1;
        v1 = der(psim1);
      else
        psim1= 0;
        im1 = 0;
      end if;
      v1 =  n*v2;
    end IdealTransformer;

--------------

|image63| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealGyrator
-----------------------------------------------------------------------------------------------------------------------------------

**Ideal gyrator**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealGyratorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealGyrator

   Modelica.Electrical.Analog.Ideal.IdealGyrator

Information
~~~~~~~~~~~

::

A gyrator is an ideal two-port element defined by the following
equations:
 ``     i1 =  G * v2     i2 = -G * v1``
 where the constant *G* is called the gyration conductance.

::

Extends from
`Interfaces.TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_
(Component with two electrical ports, including current).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                  | Name   | Default   | Description                |
+=======================================================================+========+===========+============================+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | G      |           | Gyration conductance [S]   |
+-----------------------------------------------------------------------+--------+-----------+----------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealGyrator "Ideal gyrator"
      extends Interfaces.TwoPort;
      parameter SI.Conductance G(start=1) "Gyration conductance";

    equation 
      i1 = G*v2;
      i2 = -G*v1;
    end IdealGyrator;

--------------

|image64| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.Idle
---------------------------------------------------------------------------------------------------------------------------

**Idle branch**

.. figure:: Modelica.Electrical.Analog.Ideal.IdleD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.Idle

   Modelica.Electrical.Analog.Ideal.Idle

Information
~~~~~~~~~~~

::

The model Idle is a simple idle running branch. That means between both
pins no current is running. This ideal device is of no influence on the
circuit. Therefore, it can be neglected in each case. For purposes of
completness this component is part of the MSL, as an opposite of the
short cut.

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

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

    model Idle "Idle branch"
      extends Interfaces.OnePort;
    equation 
      i = 0;
    end Idle;

--------------

|image65| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.Short
----------------------------------------------------------------------------------------------------------------------------

**Short cut branch**

.. figure:: Modelica.Electrical.Analog.Ideal.ShortD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.Short

   Modelica.Electrical.Analog.Ideal.Short

Information
~~~~~~~~~~~

::

The model Short is a simple short cut branch. That means the voltage
drop between both pins is zero. This device could be nelected if both
pins are combined to one node. Besides connecting the nodes of both pins
this device has no further function.

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

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

    model Short "Short cut branch"
      extends Interfaces.OnePort;
    equation 
      v = 0;
    end Short;

--------------

|image66| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealOpeningSwitch
-----------------------------------------------------------------------------------------------------------------------------------------

**Ideal electrical opener**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealOpeningSwitchD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch

   Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch

Information
~~~~~~~~~~~

::

The ideal opening switch has a positive pin p and a negative pin n. The
switching behaviour is controlled by the input signal control. If
control is true, pin p is not connected with negative pin n. Otherwise,
pin p is connected with negative pin n.
 In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron. The limiting case is also allowed, i.e., the resistance
Ron of the closed switch could be exactly zero and the conductance Goff
of the open switch could be also exactly zero. Note, there are circuits,
where a description with zero Ron or zero Goff is not possible.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron           | 1.E-5     | Closed switch resistance [Ohm]                        |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff          | 1.E-5     | Opened switch conductance [S]                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                      | control    | true => switch open, false => p--n connected                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealOpeningSwitch "Ideal electrical opener"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Resistance Ron(final min=0) = 1.E-5 "Closed switch resistance";
      parameter SI.Conductance Goff(final min=0) = 1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Modelica.Blocks.Interfaces.BooleanInput control 
        "true => switch open, false => p--n connected";
    protected 
      Real s(final unit="1") "Auxiliary variable";
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
    equation 
      v = (s*unitCurrent)*(if control then 1 else Ron);
      i = (s*unitVoltage)*(if control then Goff else 1);

      LossPower = v*i;
    end IdealOpeningSwitch;

--------------

|image67| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealClosingSwitch
-----------------------------------------------------------------------------------------------------------------------------------------

**Ideal electrical closer**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealClosingSwitchD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealClosingSwitch

   Modelica.Electrical.Analog.Ideal.IdealClosingSwitch

Information
~~~~~~~~~~~

::

The ideal closing switch has a positive pin p and a negative pin n. The
switching behaviour is controlled by input signal control. If control is
true, pin p is connected with negative pin n. Otherwise, pin p is not
connected with negative pin n.
 In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron. The limiting case is also allowed, i.e., the resistance
Ron of the closed switch could be exactly zero and the conductance Goff
of the open switch could be also exactly zero. Note, there are circuits,
where a description with zero Ron or zero Goff is not possible.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron           | 1.E-5     | Closed switch resistance [Ohm]                        |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff          | 1.E-5     | Opened switch conductance [S]                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                      | control    | true => p--n connected, false => switch open                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealClosingSwitch "Ideal electrical closer"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Resistance Ron(final min=0) = 1.E-5 "Closed switch resistance";
      parameter SI.Conductance Goff(final min=0) = 1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Modelica.Blocks.Interfaces.BooleanInput control 
        "true => p--n connected, false => switch open";
    protected 
      Real s(final unit="1") "Auxiliary variable";
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
    equation 
      v = (s*unitCurrent)*(if control then Ron else 1);
      i = (s*unitVoltage)*(if control then 1 else Goff);

      LossPower = v*i;
    end IdealClosingSwitch;

--------------

|image68| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.ControlledIdealOpeningSwitch
---------------------------------------------------------------------------------------------------------------------------------------------------

**Controlled ideal electrical opener**

.. figure:: Modelica.Electrical.Analog.Ideal.ControlledIdealOpeningSwitchD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.ControlledIdealOpeningSwitch

   Modelica.Electrical.Analog.Ideal.ControlledIdealOpeningSwitch

Information
~~~~~~~~~~~

::

The ideal switch has a positive pin p and a negative pin n. The
switching behaviour is controlled by the control pin. If its voltage
exceeds the voltage of the parameter level, pin p is not connected with
negative pin n. Otherwise, pin p is connected with negative pin n.
 In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron. The limiting case is also allowed, i.e., the resistance
Ron of the closed switch could be exactly zero and the conductance Goff
of the open switch could be also exactly zero. Note, there are circuits,
where a description with zero Ron or zero Goff is not possible.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | level         | 0.5       | Switch level [V]                                      |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron           | 1.E-5     | Closed switch resistance [Ohm]                        |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff          | 1.E-5     | Opened switch conductance [S]                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                            |
+======================================================================================================================+============+========================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          |                                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          |                                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | control    | Control pin: control.v > level switch open, otherwise p--n connected   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ControlledIdealOpeningSwitch 
      "Controlled ideal electrical opener"

      parameter SI.Voltage level=0.5 "Switch level";
      parameter SI.Resistance Ron(final min=0) = 1.E-5 "Closed switch resistance";
      parameter SI.Conductance Goff(final min=0) = 1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Interfaces.PositivePin p;
      Interfaces.NegativePin n;
      Interfaces.Pin control 
        "Control pin: control.v > level switch open, otherwise p--n connected";
    protected 
      Real s(final unit="1") "Auxiliary variable";
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
    equation 
      control.i = 0;
      0 = p.i + n.i;
      p.v - n.v = (s*unitCurrent)*(if (control.v > level) then 1 else Ron);
      p.i = (s*unitVoltage)*(if (control.v > level) then Goff else 1);

      LossPower = (p.v - n.v)*p.i;
    end ControlledIdealOpeningSwitch;

--------------

|image69| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.ControlledIdealClosingSwitch
---------------------------------------------------------------------------------------------------------------------------------------------------

**Controlled ideal electrical closer**

.. figure:: Modelica.Electrical.Analog.Ideal.ControlledIdealClosingSwitchD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.ControlledIdealClosingSwitch

   Modelica.Electrical.Analog.Ideal.ControlledIdealClosingSwitch

Information
~~~~~~~~~~~

::

The closing ideal switch has a positive pin p and a negative pin n. The
switching behaviour is controlled by the control pin. If its voltage
exceeds the voltage of the parameter level, pin p is connected with
negative pin n. Otherwise, pin p is not connected with negative pin n.
 In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron. The limiting case is also allowed, i.e., the resistance
Ron of the closed switch could be exactly zero and the conductance Goff
of the open switch could be also exactly zero. Note, there are circuits,
where a description with zero Ron or zero Goff is not possible.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | level         | 0.5       | Switch level [V]                                      |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron           | 1.E-5     | Closed switch resistance [Ohm]                        |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff          | 1.E-5     | Opened switch conductance [S]                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                           |
+======================================================================================================================+============+=======================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                       |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          |                                                                       |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          |                                                                       |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------------------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | control    | Control pin: control.v > level switch closed, otherwise switch open   |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ControlledIdealClosingSwitch 
      "Controlled ideal electrical closer"

      parameter SI.Voltage level=0.5 "Switch level";
      parameter SI.Resistance Ron(final min=0) = 1.E-5 "Closed switch resistance";
      parameter SI.Conductance Goff(final min=0) = 1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Modelica.Electrical.Analog.Interfaces.PositivePin p;
      Modelica.Electrical.Analog.Interfaces.NegativePin n;
      Modelica.Electrical.Analog.Interfaces.Pin control 
        "Control pin: control.v > level switch closed, otherwise switch open";
    protected 
      Real s(final unit="1") "Auxiliary variable";
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
    equation 
      control.i = 0;
      0 = p.i + n.i;
      p.v - n.v = (s*unitCurrent)*(if (control.v > level) then Ron else 1);
      p.i = (s*unitVoltage)*(if (control.v > level) then 1 else Goff);

      LossPower = (p.v - n.v)*p.i;
    end ControlledIdealClosingSwitch;

--------------

|image70| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.OpenerWithArc
------------------------------------------------------------------------------------------------------------------------------------

**Ideal opening switch with simple arc model**

.. figure:: Modelica.Electrical.Analog.Ideal.OpenerWithArcD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.OpenerWithArc

   Modelica.Electrical.Analog.Ideal.OpenerWithArc

Information
~~~~~~~~~~~

::

This model is an extension to the
`IdealOpeningSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch>`_.

The basic model interupts the current through the switch in an
infinitesimal time span. If an inductive circuit is connected, the
voltage across the swicth is limited only by numerics. In order to give
a better idea for the voltage across the switch, a simple arc model is
added:

When the Boolean input ``control`` signals to open the switch, a voltage
across the opened switch is impressed. This voltage starts with ``V0``
(simulating the voltage drop of the arc roots), then rising with slope
``dVdt`` (simulating the rising voltage of an extending arc) until a
maximum voltage ``Vmax`` is reached.

::

         | voltage
    Vmax |      +-----
         |     /
         |    /
    V0   |   +
         |   |
         +---+-------- time

This arc voltage tends to lower the current following through the
switch; it depends on the connected circuit, when the arc is quenched.
Once the arc is quenched, i.e., the current flowing through the switch
gets zero, the equation for the off-state is activated ``i=Goff*v``.

When the Boolean input ``control`` signals to close the switch again,
the switch is closed immediately, i.e., the equation for the on-state is
activated ``v=Ron*i``.

Please note: In an AC circuit, at least the arc quenches when the next
natural zero-crossing of the current occurs. In a DC circuit, the arc
will not quench if the arc voltage is not sufficient that a
zero-crossing of the current occurs.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                    | Name          | Default   | Description                                           |
+=========================================================================+===============+===========+=======================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_       | Ron           | 1E-5      | Closed switch resistance [Ohm]                        |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_     | Goff          | 1E-5      | Opened switch conductance [S]                         |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | V0            |           | Initial arc voltage [V]                               |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `VoltageSlope <Modelica_SIunits.html#Modelica.SIunits.VoltageSlope>`_   | dVdt          |           | Arc voltage slope [V/s]                               |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | Vmax          |           | Max. arc voltage [V]                                  |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_     | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                      | control    | false => p--n connected, true => switch open                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model OpenerWithArc "Ideal opening switch with simple arc model"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Modelica.SIunits.Resistance Ron= 1E-5 "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff=1E-5 "Opened switch conductance";
      parameter Modelica.SIunits.Voltage V0(start=30) "Initial arc voltage";
      parameter Modelica.SIunits.VoltageSlope dVdt(start=10E3) "Arc voltage slope";
      parameter Modelica.SIunits.Voltage Vmax(start=60) "Max. arc voltage";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Modelica.Blocks.Interfaces.BooleanInput control 
        "false => p--n connected, true => switch open";

    protected 
      Boolean off=control;
      Boolean on=not off;
      discrete Modelica.SIunits.Time tSwitch(start=-Modelica.Constants.inf);
      Boolean quenched(start=true);
    equation 
      when edge(off) then
        tSwitch=time;
      end when;
      quenched=off and (abs(i)<=abs(v)*Goff or pre(quenched));
      if on then
        v=Ron*i;
      else
        if quenched then
          i=Goff*v;
        else
          v=min(Vmax, V0 + dVdt*(time - tSwitch))*sign(i);
        end if;
      end if;
     LossPower = v*i;
    end OpenerWithArc;

--------------

|image71| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.CloserWithArc
------------------------------------------------------------------------------------------------------------------------------------

**Ideal closing switch with simple arc model**

.. figure:: Modelica.Electrical.Analog.Ideal.OpenerWithArcD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.CloserWithArc

   Modelica.Electrical.Analog.Ideal.CloserWithArc

Information
~~~~~~~~~~~

::

This model is an extension to the
`IdealClosingSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealClosingSwitch>`_.

The basic model interupts the current through the switch in an
infinitesimal time span. If an inductive circuit is connected, the
voltage across the swicth is limited only by numerics. In order to give
a better idea for the voltage across the switch, a simple arc model is
added:

When the Boolean input ``control`` signals to open the switch, a voltage
across the opened switch is impressed. This voltage starts with ``V0``
(simulating the voltage drop of the arc roots), then rising with slope
``dVdt`` (simulating the rising voltage of an extending arc) until a
maximum voltage ``Vmax`` is reached.

::

         | voltage
    Vmax |      +-----
         |     /
         |    /
    V0   |   +
         |   |
         +---+-------- time

This arc voltage tends to lower the current following through the
switch; it depends on the connected circuit, when the arc is quenched.
Once the arc is quenched, i.e., the current flowing through the switch
gets zero, the equation for the off-state is activated ``i=Goff*v``.

When the Boolean input ``control`` signals to close the switch again,
the switch is closed immediately, i.e., the equation for the on-state is
activated ``v=Ron*i``.

Please note: In an AC circuit, at least the arc quenches when the next
natural zero-crossing of the current occurs. In a DC circuit, the arc
will not quench if the arc voltage is not sufficient that a
zero-crossing of the current occurs.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                    | Name          | Default   | Description                                           |
+=========================================================================+===============+===========+=======================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_       | Ron           | 1E-5      | Closed switch resistance [Ohm]                        |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_     | Goff          | 1E-5      | Opened switch conductance [S]                         |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | V0            |           | Initial arc voltage [V]                               |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `VoltageSlope <Modelica_SIunits.html#Modelica.SIunits.VoltageSlope>`_   | dVdt          |           | Arc voltage slope [V/s]                               |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | Vmax          |           | Max. arc voltage [V]                                  |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_     | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                      | control    | true => p--n connected, false => switch open                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CloserWithArc "Ideal closing switch with simple arc model"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Modelica.SIunits.Resistance Ron= 1E-5 "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff=1E-5 "Opened switch conductance";
      parameter Modelica.SIunits.Voltage V0(start=30) "Initial arc voltage";
      parameter Modelica.SIunits.VoltageSlope dVdt(start=10E3) "Arc voltage slope";
      parameter Modelica.SIunits.Voltage Vmax(start=60) "Max. arc voltage";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Modelica.Blocks.Interfaces.BooleanInput control 
        "true => p--n connected, false => switch open";

    protected 
      Boolean on=control;
      Boolean off=not on;
      discrete Modelica.SIunits.Time tSwitch(start=-Modelica.Constants.inf);
      Boolean quenched(start=true);
    equation 
      when edge(off) then
        tSwitch=time;
      end when;
      quenched=off and (abs(i)<=abs(v)*Goff or pre(quenched));
      if on then
        v=Ron*i;
      else
        if quenched then
          i=Goff*v;
        else
          v=min(Vmax, V0 + dVdt*(time - tSwitch))*sign(i);
        end if;
      end if;
    LossPower = v*i;
    end CloserWithArc;

--------------

|image72| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.ControlledOpenerWithArc
----------------------------------------------------------------------------------------------------------------------------------------------

**Controlled ideal electrical opener with simple arc model**

.. figure:: Modelica.Electrical.Analog.Ideal.ControlledOpenerWithArcD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.ControlledOpenerWithArc

   Modelica.Electrical.Analog.Ideal.ControlledOpenerWithArc

Information
~~~~~~~~~~~

::

This model is an extension to the
`IdealOpeningSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch>`_.

The basic model interupts the current through the switch in an
infinitesimal time span. If an inductive circuit is connected, the
voltage across the swicth is limited only by numerics. In order to give
a better idea for the voltage across the switch, a simple arc model is
added:

When the control pin voltage ``control.v`` signals to open the switch, a
voltage across the opened switch is impressed. This voltage starts with
``V0`` (simulating the voltage drop of the arc roots), then rising with
slope ``dVdt`` (simulating the rising voltage of an extending arc) until
a maximum voltage ``Vmax`` is reached.

::

         | voltage
    Vmax |      +-----
         |     /
         |    /
    V0   |   +
         |   |
         +---+-------- time

This arc voltage tends to lower the current following through the
switch; it depends on the connected circuit, when the arc is quenched.
Once the arc is quenched, i.e., the current flowing through the switch
gets zero, the equation for the off-state is activated ``i=Goff*v``.

When the control pin ``control.v`` signals to close the switch again,
the switch is closed immediately, i.e., the equation for the on-state is
activated ``v=Ron*i``.

Please note: In an AC circuit, at least the arc quenches when the next
natural zero-crossing of the current occurs. In a DC circuit, the arc
will not quench if the arc voltage is not sufficient that a
zero-crossing of the current occurs.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                    | Name          | Default   | Description                                           |
+=========================================================================+===============+===========+=======================================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | level         | 0.5       | Switch level [V]                                      |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_       | Ron           | 1.E-5     | Closed switch resistance [Ohm]                        |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_     | Goff          | 1.E-5     | Opened switch conductance [S]                         |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | V0            |           | Initial arc voltage [V]                               |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `VoltageSlope <Modelica_SIunits.html#Modelica.SIunits.VoltageSlope>`_   | dVdt          |           | Arc voltage slope [V/s]                               |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | Vmax          |           | Max. arc voltage [V]                                  |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_     | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                            |
+======================================================================================================================+============+========================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          |                                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          |                                                                        |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | control    | Control pin: control.v > level switch open, otherwise p--n connected   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ControlledOpenerWithArc 
      "Controlled ideal electrical opener with simple arc model"

      parameter Modelica.SIunits.Voltage level=0.5 "Switch level";
      parameter Modelica.SIunits.Resistance Ron(final min=0)=1.E-5 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff(final min=0)=1.E-5 
        "Opened switch conductance";
      parameter Modelica.SIunits.Voltage V0(start=30) "Initial arc voltage";
      parameter Modelica.SIunits.VoltageSlope dVdt(start=10E3) "Arc voltage slope";
      parameter Modelica.SIunits.Voltage Vmax(start=60) "Max. arc voltage";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Modelica.Electrical.Analog.Interfaces.PositivePin p;
      Modelica.Electrical.Analog.Interfaces.NegativePin n;
      Modelica.Electrical.Analog.Interfaces.Pin control 
        "Control pin: control.v > level switch open, otherwise p--n connected";
      Modelica.SIunits.Current i;
      Modelica.SIunits.Voltage v;
    protected 
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
      Boolean off=(control.v > level);
      Boolean on=not off;
      discrete Modelica.SIunits.Time tSwitch(start=-Modelica.Constants.inf);
      Boolean quenched(start=true);
    equation 
      control.i = 0;
      0 = p.i + n.i;
      i = p.i;
      p.v - n.v = v;

      when edge(off) then
        tSwitch=time;
      end when;
      quenched=off and (abs(i)<=abs(v)*Goff or pre(quenched));
      if on then
        v=Ron*i;
      else
        if quenched then
          i=Goff*v;
        else
          v=min(Vmax, V0 + dVdt*(time - tSwitch))*sign(i);
        end if;
      end if;
     LossPower = v*i;
    end ControlledOpenerWithArc;

--------------

|image73| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.ControlledCloserWithArc
----------------------------------------------------------------------------------------------------------------------------------------------

**Controlled ideal electrical closer with simple arc model**

.. figure:: Modelica.Electrical.Analog.Ideal.ControlledCloserWithArcD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.ControlledCloserWithArc

   Modelica.Electrical.Analog.Ideal.ControlledCloserWithArc

Information
~~~~~~~~~~~

::

This model is an extension to the
`IdealClosingSwitch <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal.IdealClosingSwitch>`_.

The basic model interupts the current through the switch in an
infinitesimal time span. If an inductive circuit is connected, the
voltage across the swicth is limited only by numerics. In order to give
a better idea for the voltage across the switch, a simple arc model is
added:

When the control pin voltage ``control.v`` signals to open the switch, a
voltage across the opened switch is impressed. This voltage starts with
``V0`` (simulating the voltage drop of the arc roots), then rising with
slope ``dVdt`` (simulating the rising voltage of an extending arc) until
a maximum voltage ``Vmax`` is reached.

::

         | voltage
    Vmax |      +-----
         |     /
         |    /
    V0   |   +
         |   |
         +---+-------- time

This arc voltage tends to lower the current following through the
switch; it depends on the connected circuit, when the arc is quenched.
Once the arc is quenched, i.e., the current flowing through the switch
gets zero, the equation for the off-state is activated ``i=Goff*v``.

When the control pin ``control.v`` signals to close the switch again,
the switch is closed immediately, i.e., the equation for the on-state is
activated ``v=Ron*i``.

Please note: In an AC circuit, at least the arc quenches when the next
natural zero-crossing of the current occurs. In a DC circuit, the arc
will not quench if the arc voltage is not sufficient that a
zero-crossing of the current occurs.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                    | Name          | Default   | Description                                           |
+=========================================================================+===============+===========+=======================================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | level         | 0.5       | Switch level [V]                                      |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_       | Ron           | 1.E-5     | Closed switch resistance [Ohm]                        |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_     | Goff          | 1.E-5     | Opened switch conductance [S]                         |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | V0            |           | Initial arc voltage [V]                               |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `VoltageSlope <Modelica_SIunits.html#Modelica.SIunits.VoltageSlope>`_   | dVdt          |           | Arc voltage slope [V/s]                               |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | Vmax          |           | Max. arc voltage [V]                                  |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_     | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                           |
+======================================================================================================================+============+=======================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                       |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          |                                                                       |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          |                                                                       |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------------------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | control    | Control pin: control.v > level switch closed, otherwise switch open   |
+----------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ControlledCloserWithArc 
      "Controlled ideal electrical closer with simple arc model"

      parameter Modelica.SIunits.Voltage level=0.5 "Switch level";
      parameter Modelica.SIunits.Resistance Ron(final min=0)=1.E-5 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff(final min=0)=1.E-5 
        "Opened switch conductance";
      parameter Modelica.SIunits.Voltage V0(start=30) "Initial arc voltage";
      parameter Modelica.SIunits.VoltageSlope dVdt(start=10E3) "Arc voltage slope";
      parameter Modelica.SIunits.Voltage Vmax(start=60) "Max. arc voltage";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    final T=293.15);
      Modelica.Electrical.Analog.Interfaces.PositivePin p;
      Modelica.Electrical.Analog.Interfaces.NegativePin n;
      Modelica.Electrical.Analog.Interfaces.Pin control 
        "Control pin: control.v > level switch closed, otherwise switch open";
      Modelica.SIunits.Current i;
      Modelica.SIunits.Voltage v;
    protected 
      constant Modelica.SIunits.Voltage unitVoltage= 1;
      constant Modelica.SIunits.Current unitCurrent= 1;
      Boolean off=(control.v < level);
      Boolean on=not off;
      discrete Modelica.SIunits.Time tSwitch(start=-Modelica.Constants.inf);
      Boolean quenched(start=true);
    equation 
      control.i = 0;
      0 = p.i + n.i;
      i = p.i;
      p.v - n.v = v;

      when edge(off) then
        tSwitch=time;
      end when;
      quenched=off and (abs(i)<=abs(v)*Goff or pre(quenched));
      if on then
        v=Ron*i;
      else
        if quenched then
          i=Goff*v;
        else
          v=min(Vmax, V0 + dVdt*(time - tSwitch))*sign(i);
        end if;
      end if;
     LossPower = v*i;
    end ControlledCloserWithArc;

--------------

|image74| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.IdealTriac
---------------------------------------------------------------------------------------------------------------------------------

**Ideal triac, based on ideal thyristors**

.. figure:: Modelica.Electrical.Analog.Ideal.IdealTriacD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.IdealTriac

   Modelica.Electrical.Analog.Ideal.IdealTriac

Information
~~~~~~~~~~~

::

This is an ideal triac model based on an ideal thyristor model.

Two ideal thyristors (Modelica.Electrical.Analog.Ideal.IdealThyristor)
are contrarily connected in parallel and additionally eliminated
interference with a resistor (Rdis=100) and a capacitor (Cdis=0.005),
which are connected in series.

The electrical component triac (TRIode Alternating Current switch) is,
due to whose complex structure, a multifunctional applicable
construction unit. The application area of this element is the
manipulation of alternating current signals in frequency, voltage and/or
current and also general blocking or filtering. However, compared to a
thyristor the triac is only applied for substantial lesser currents,
what is justified by whose sensitive structure. Generally one is limited
to maximal voltages from 800 volt and currents from 40 ampere. For
comparison maximal voltages of a thyristor are 8.000 volt and currents
5.000 ampere.

Structure and functionality:

Functionality of a triac is in principle the same like functionality of
a thyristor, even connecting through of current starting from a certain
voltage (knee voltage), but only if the current at anode and cathode is
caused by a impulse current in the gate electrode. In case of the triac
this process is also possible with reverse polarity, wherefore it is
possible to control both half-waves of alternating currents. By means of
gate electrodes, which are connected in a triac and why only one gate
electrode is necessary, the point of time can be determined, at which
the triac lets the alternating current signal pass. Thereby it is
possible to affect the phase, at which the alternating current signal is
cut. One speaks also of phase-angle control. Also depending on doping
and specific structure knee voltage and maximal current carrying are
alterable.

Characteristics:

-  high switching times between on-state and off state up to activation
   of the reverse current phase
-  gate electrode are activated with (positive) impulse (called
   thyristor/triac firing), after firing thyristor path holds itself in
   state of low resistance or conductive state up to holding voltage is
   fallen below, it follows change to off state and next thyristor path
   can fire
-  in particular by switching of inductive components triacs generate
   harmonic waves, whose frequency ranges into broadcast sector and
   could there cause transmission disturbances; therefore triacs have to
   eliminate interference by inductors and capacitors

Applications:

-  any stepless exposure (dimmer)
-  engine speed adjustment of electric motors
-  further applications of phase-angle control (power electronics)
-  power packs

As an additional information: this model is based on the
Modelica.Electrical.Analog.Ideal.IdealThyristor.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+
| Type                                                                  | Name    | Default   | Description                                             |
+=======================================================================+=========+===========+=========================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Ron     | 1.e-5     | Closed triac resistance [Ohm]                           |
+-----------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Goff    | 1.e-5     | Opened triac conductance [S]                            |
+-----------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | Vknee   | 0.8       | Threshold voltage for positive and negative phase [V]   |
+-----------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | Rdis    | 100       | Resistance of disturbance elimination [Ohm]             |
+-----------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | Cdis    | 0.005     | Capacity of disturbance elimination [F]                 |
+-----------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+---------+---------------+
| Type                                                                                                            | Name    | Description   |
+=================================================================================================================+=========+===============+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                 | fire1   | Gate          |
+-----------------------------------------------------------------------------------------------------------------+---------+---------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n       | Cathode       |
+-----------------------------------------------------------------------------------------------------------------+---------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p       | Anode         |
+-----------------------------------------------------------------------------------------------------------------+---------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealTriac "Ideal triac, based on ideal thyristors"

      parameter Modelica.SIunits.Resistance Ron(final min=0) = 1.e-5 
        "Closed triac resistance";
      parameter Modelica.SIunits.Conductance Goff(final min=0) = 1.e-5 
        "Opened triac conductance";
      parameter Modelica.SIunits.Voltage Vknee(final min=0, start=0) = 0.8 
        "Threshold voltage for positive and negative phase";

      parameter Modelica.SIunits.Resistance Rdis = 100 
        "Resistance of disturbance elimination";
      parameter Modelica.SIunits.Capacitance Cdis = 0.005 
        "Capacity of disturbance elimination";

      Modelica.Electrical.Analog.Ideal.IdealThyristor idealThyristor(
        Ron=Ron,
        Goff=Goff,
        Vknee=Vknee);
      Modelica.Electrical.Analog.Ideal.IdealThyristor idealThyristor1(
        Ron=Ron,
        Goff=Goff,
        Vknee=Vknee);
      Modelica.Electrical.Analog.Basic.Resistor resistor(R=Rdis);
      Modelica.Electrical.Analog.Basic.Capacitor capacitor(C=Cdis);
      Modelica.Blocks.Interfaces.BooleanInput fire1 "Gate";
      Modelica.Electrical.Analog.Interfaces.NegativePin n "Cathode";
      Modelica.Electrical.Analog.Interfaces.PositivePin p "Anode";
    equation 

      connect(idealThyristor.n, capacitor.n);
      connect(capacitor.n, idealThyristor1.p);
      connect(idealThyristor1.n, resistor.p);
      connect(resistor.p, idealThyristor.p);
      connect(resistor.n, capacitor.p);
      connect(idealThyristor1.fire, fire1);
      connect(idealThyristor.fire, fire1);
      connect(n, idealThyristor.p);
      connect(idealThyristor1.p, p);
    end IdealTriac;

--------------

|image75| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.AD\_Converter
------------------------------------------------------------------------------------------------------------------------------------

**Simple n-bit analog to digital converter**

.. figure:: Modelica.Electrical.Analog.Ideal.AD_ConverterD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.AD\_Converter

   Modelica.Electrical.Analog.Ideal.AD\_Converter

Information
~~~~~~~~~~~

::

Simple analog to digital converter with a variable resolution of n bits.
It converts the input voltage ``ppin.v-npin.v`` to an n-vector of type
Logic (9-valued logic according to IEEE 1164 STD\_ULOGIC). The input
resistance between positive and negative pin is determined by ``Rin``.
Further effects (like input capacities) have to be modeled outside the
converter, since this should be a general model.

The input singnal range (VRefLo,VRefHi) is divided into 2^n-1 equally
spaced stages of lenght Vlsb:=(VRefHi-VRefLo)/(2^n-1). The output signal
is the binary code of `` k `` as long as the input voltage takes values
in the k-th stage, namely in the range from `` Vlsb*(k-0.5) `` to
`` m*(k+0.5) ``. This is called mid-tread operation. Additionally the
output can only change its value if the trigger signal `` trig `` of
type Logic changes to '1' (forced or weak).

The output vector is a 'little-endian'. i.e., that the first bit y[1] is
the least significant one (LSB).

This is an abstract model of an ADC. Therefore, it can not cover the
dynamic behaviour of the converter. Hence the output will change
instantaniously when the trigger signal rises.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+------------+-----------+--------------------------------------------+
| Type                                                                | Name       | Default   | Description                                |
+=====================================================================+============+===========+============================================+
| Integer                                                             | N          |           | Resolution in bits - output signal width   |
+---------------------------------------------------------------------+------------+-----------+--------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_         | VRefHigh   |           | High reference voltage [V]                 |
+---------------------------------------------------------------------+------------+-----------+--------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_         | VRefLow    |           | Low reference voltage [V]                  |
+---------------------------------------------------------------------+------------+-----------+--------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_   | Rin        |           | Input resistance [Ohm]                     |
+---------------------------------------------------------------------+------------+-----------+--------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                                                         | Name   | Description                       |
+==============================================================================================================================+========+===================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_                | p      | Positive electrical pin (input)   |
+------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_                | n      | Negative electrical pin (input)   |
+------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y[N]   | Digital output                    |
+------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | trig   | Trigger input                     |
+------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model AD_Converter "Simple n-bit analog to digital converter"
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      Modelica.Electrical.Analog.Interfaces.PositivePin p 
        "Positive electrical pin (input)";
      Modelica.Electrical.Analog.Interfaces.NegativePin n 
        "Negative electrical pin (input)";
      Modelica.Electrical.Digital.Interfaces.DigitalOutput y[N] "Digital output";
        Modelica.Electrical.Digital.Interfaces.DigitalInput trig "Trigger input";
      parameter Integer N(final min=1, start = 8) 
        "Resolution in bits - output signal width";
      parameter Modelica.SIunits.Voltage VRefHigh(start = 10) 
        "High reference voltage";
      parameter Modelica.SIunits.Voltage VRefLow(final max=VRefHigh, start = 0) 
        "Low reference voltage";
      parameter Modelica.SIunits.Resistance Rin(start = 10^6) "Input resistance";
      Integer z;
      Real u;

    initial equation 
     for i in 1:N loop
      y[i]=L.'X';
     end for;

    algorithm 
      when (trig==4 or trig==8) then
        z:=if u>VRefLow then integer((u-VRefLow)/(VRefHigh-VRefLow)*(2^N - 1) + 0.5) else 0;
        for i in 1:N loop
          y[i] :=if mod(z, 2) > 0 then L.'1' else L.'0';
          z:=div(z, 2);
        end for;
      end when;
    equation 
          p.v - n.v = u;
          p.i*Rin = u;
          p.i + n.i = 0;
    end AD_Converter;

--------------

|image76| `Modelica.Electrical.Analog.Ideal <Modelica_Electrical_Analog_Ideal.html#Modelica.Electrical.Analog.Ideal>`_.DA\_Converter
------------------------------------------------------------------------------------------------------------------------------------

**Simple digital to analog converter**

.. figure:: Modelica.Electrical.Analog.Ideal.DA_ConverterD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Ideal.DA\_Converter

   Modelica.Electrical.Analog.Ideal.DA\_Converter

Information
~~~~~~~~~~~

::

Simple digital to analog converter with a variable input signal width of
N bits. The input signal is an N-vector of type Logic (9-valued logic
according to IEEE 1164 STD\_ULOGIC). The output voltage of value ``y``
is generated by an ideal voltage source. The output can only change if
the trigger signal ``trig`` of type Logic changes to ';1'; (forced or
weak). In this case, the output voltage is calculated in the following
way:

::

           N
      y = SUM ( x[i]*2^(i-1) )*Vref/(2^N-1),
          i=1

where x[i], i=1,...,N is 1 or 0. and Vref is the reference value.
Therefore, the first bit in the input vector x[1] is the least
significant one (LSB) and x[N] is the most significant bit (MSB).

This is an abstract model of a DAC. Hence, it can not cover the dynamic
behaviour of the converter. Therefore the output will change
instantaniously when the trigger signal rises.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+--------+-----------+-----------------------------------+
| Type                                                          | Name   | Default   | Description                       |
+===============================================================+========+===========+===================================+
| Integer                                                       | N      |           | Resolution - input signal width   |
+---------------------------------------------------------------+--------+-----------+-----------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | Vref   |           | Reference voltage [V]             |
+---------------------------------------------------------------+--------+-----------+-----------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                                                      | Name   | Description                        |
+===========================================================================================================================+========+====================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_   | trig   | Trigger input                      |
+---------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_   | x[N]   | Digital input                      |
+---------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_             | p      | Positive electrical pin (output)   |
+---------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_             | n      | Negative electrical pin (output)   |
+---------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DA_Converter "Simple digital to analog converter"
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      Modelica.Electrical.Digital.Interfaces.DigitalInput trig "Trigger input";
      Modelica.Electrical.Digital.Interfaces.DigitalInput x[N] "Digital input";
      Modelica.Electrical.Analog.Interfaces.PositivePin p 
        "Positive electrical pin (output)";
      Modelica.Electrical.Analog.Interfaces.NegativePin n 
        "Negative electrical pin (output)";

      Modelica.SIunits.Voltage vout;
      Real y(start=0);
      parameter Integer N(final min=1, start = 8) "Resolution - input signal width";
      parameter Modelica.SIunits.Voltage Vref(start = 10) "Reference voltage";

    algorithm 
       when trig==4 or trig==8 then
         y:=0;
         for i in 1:N loop
           y := if ( x[i] == 4 or x[i] == 8) then  y + 2^(i-1) else y;
         end for;
         vout := y*Vref/(2^N - 1);
       end when;

    equation 
      p.v - n.v = vout;
      p.i + n.i = 0;

    end DA_Converter;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:09
2010.

.. |Modelica.Electrical.Analog.Ideal.IdealThyristor| image:: Modelica.Electrical.Analog.Ideal.IdealThyristorS.png
.. |Modelica.Electrical.Analog.Ideal.IdealGTOThyristor| image:: Modelica.Electrical.Analog.Ideal.IdealThyristorS.png
.. |Modelica.Electrical.Analog.Ideal.IdealCommutingSwitch| image:: Modelica.Electrical.Analog.Ideal.IdealCommutingSwitchS.png
.. |Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitch| image:: Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitchS.png
.. |Modelica.Electrical.Analog.Ideal.ControlledIdealCommutingSwitch| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealCommutingSwitchS.png
.. |Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitch| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitchS.png
.. |Modelica.Electrical.Analog.Ideal.IdealOpAmp| image:: Modelica.Electrical.Analog.Ideal.IdealOpAmpS.png
.. |Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin| image:: Modelica.Electrical.Analog.Ideal.IdealOpAmp3PinS.png
.. |Modelica.Electrical.Analog.Ideal.IdealOpAmpLimited| image:: Modelica.Electrical.Analog.Ideal.IdealOpAmpLimitedS.png
.. |Modelica.Electrical.Analog.Ideal.IdealDiode| image:: Modelica.Electrical.Analog.Ideal.IdealDiodeS.png
.. |Modelica.Electrical.Analog.Ideal.IdealTransformer| image:: Modelica.Electrical.Analog.Ideal.IdealTransformerS.png
.. |Modelica.Electrical.Analog.Ideal.IdealGyrator| image:: Modelica.Electrical.Analog.Ideal.IdealGyratorS.png
.. |Modelica.Electrical.Analog.Ideal.Idle| image:: Modelica.Electrical.Analog.Ideal.IdleS.png
.. |Modelica.Electrical.Analog.Ideal.Short| image:: Modelica.Electrical.Analog.Ideal.ShortS.png
.. |Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch| image:: Modelica.Electrical.Analog.Ideal.IdealOpeningSwitchS.png
.. |Modelica.Electrical.Analog.Ideal.IdealClosingSwitch| image:: Modelica.Electrical.Analog.Ideal.IdealClosingSwitchS.png
.. |Modelica.Electrical.Analog.Ideal.ControlledIdealOpeningSwitch| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealOpeningSwitchS.png
.. |Modelica.Electrical.Analog.Ideal.ControlledIdealClosingSwitch| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealClosingSwitchS.png
.. |Modelica.Electrical.Analog.Ideal.OpenerWithArc| image:: Modelica.Electrical.Analog.Ideal.OpenerWithArcS.png
.. |Modelica.Electrical.Analog.Ideal.CloserWithArc| image:: Modelica.Electrical.Analog.Ideal.CloserWithArcS.png
.. |Modelica.Electrical.Analog.Ideal.ControlledOpenerWithArc| image:: Modelica.Electrical.Analog.Ideal.ControlledOpenerWithArcS.png
.. |Modelica.Electrical.Analog.Ideal.ControlledCloserWithArc| image:: Modelica.Electrical.Analog.Ideal.ControlledCloserWithArcS.png
.. |Modelica.Electrical.Analog.Ideal.IdealTriac| image:: Modelica.Electrical.Analog.Ideal.IdealTriacS.png
.. |Modelica.Electrical.Analog.Ideal.AD\_Converter| image:: Modelica.Electrical.Analog.Ideal.AD_ConverterS.png
.. |Modelica.Electrical.Analog.Ideal.DA\_Converter| image:: Modelica.Electrical.Analog.Ideal.DA_ConverterS.png
.. |image25| image:: Modelica.Electrical.Analog.Ideal.IdealThyristorS.png
.. |image26| image:: Modelica.Electrical.Analog.Ideal.IdealThyristorS.png
.. |image27| image:: Modelica.Electrical.Analog.Ideal.IdealCommutingSwitchS.png
.. |image28| image:: Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitchS.png
.. |image29| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealCommutingSwitchS.png
.. |image30| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitchS.png
.. |image31| image:: Modelica.Electrical.Analog.Ideal.IdealOpAmpS.png
.. |image32| image:: Modelica.Electrical.Analog.Ideal.IdealOpAmp3PinS.png
.. |image33| image:: Modelica.Electrical.Analog.Ideal.IdealOpAmpLimitedS.png
.. |image34| image:: Modelica.Electrical.Analog.Ideal.IdealDiodeS.png
.. |image35| image:: Modelica.Electrical.Analog.Ideal.IdealTransformerS.png
.. |image36| image:: Modelica.Electrical.Analog.Ideal.IdealGyratorS.png
.. |image37| image:: Modelica.Electrical.Analog.Ideal.IdleS.png
.. |image38| image:: Modelica.Electrical.Analog.Ideal.ShortS.png
.. |image39| image:: Modelica.Electrical.Analog.Ideal.IdealOpeningSwitchS.png
.. |image40| image:: Modelica.Electrical.Analog.Ideal.IdealClosingSwitchS.png
.. |image41| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealOpeningSwitchS.png
.. |image42| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealClosingSwitchS.png
.. |image43| image:: Modelica.Electrical.Analog.Ideal.OpenerWithArcS.png
.. |image44| image:: Modelica.Electrical.Analog.Ideal.CloserWithArcS.png
.. |image45| image:: Modelica.Electrical.Analog.Ideal.ControlledOpenerWithArcS.png
.. |image46| image:: Modelica.Electrical.Analog.Ideal.ControlledCloserWithArcS.png
.. |image47| image:: Modelica.Electrical.Analog.Ideal.IdealTriacS.png
.. |image48| image:: Modelica.Electrical.Analog.Ideal.AD_ConverterS.png
.. |image49| image:: Modelica.Electrical.Analog.Ideal.DA_ConverterS.png
.. |image50| image:: Modelica.Electrical.Analog.Ideal.IdealThyristorI.png
.. |image51| image:: Modelica.Electrical.Analog.Ideal.IdealThyristorI.png
.. |image52| image:: Modelica.Electrical.Analog.Ideal.IdealCommutingSwitchI.png
.. |image53| image:: Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitchI.png
.. |image54| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealCommutingSwitchI.png
.. |image55| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitchI.png
.. |image56| image:: ../Resources/Images/Electrical/Analog/ControlledIdealIntermediateSwitch1.png
.. |image57| image:: ../Resources/Images/Electrical/Analog/ControlledIdealIntermediateSwitch2.png
.. |image58| image:: Modelica.Electrical.Analog.Ideal.IdealOpAmpI.png
.. |image59| image:: Modelica.Electrical.Analog.Ideal.IdealOpAmp3PinI.png
.. |image60| image:: Modelica.Electrical.Analog.Ideal.IdealOpAmpLimitedI.png
.. |image61| image:: Modelica.Electrical.Analog.Ideal.IdealDiodeI.png
.. |image62| image:: Modelica.Electrical.Analog.Ideal.IdealTransformerI.png
.. |image63| image:: Modelica.Electrical.Analog.Ideal.IdealGyratorI.png
.. |image64| image:: Modelica.Electrical.Analog.Ideal.IdleI.png
.. |image65| image:: Modelica.Electrical.Analog.Ideal.ShortI.png
.. |image66| image:: Modelica.Electrical.Analog.Ideal.IdealOpeningSwitchI.png
.. |image67| image:: Modelica.Electrical.Analog.Ideal.IdealClosingSwitchI.png
.. |image68| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealOpeningSwitchI.png
.. |image69| image:: Modelica.Electrical.Analog.Ideal.ControlledIdealClosingSwitchI.png
.. |image70| image:: Modelica.Electrical.Analog.Ideal.OpenerWithArcI.png
.. |image71| image:: Modelica.Electrical.Analog.Ideal.CloserWithArcI.png
.. |image72| image:: Modelica.Electrical.Analog.Ideal.ControlledOpenerWithArcI.png
.. |image73| image:: Modelica.Electrical.Analog.Ideal.ControlledCloserWithArcI.png
.. |image74| image:: Modelica.Electrical.Analog.Ideal.IdealTriacI.png
.. |image75| image:: Modelica.Electrical.Analog.Ideal.AD_ConverterI.png
.. |image76| image:: Modelica.Electrical.Analog.Ideal.DA_ConverterI.png
