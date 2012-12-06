=====================================================
Modelica.Electrical.QuasiStationary.SinglePhase.Ideal
=====================================================

`Modelica.Electrical.QuasiStationary.SinglePhase <Modelica_Electrical_QuasiStationary_SinglePhase.html#Modelica.Electrical.QuasiStationary.SinglePhase>`_.Ideal
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal components for AC singlephase models**

Information
~~~~~~~~~~~

::

This package hosts ideal models for quasi stationary single phase
circuits. Quasi stationary theory for single phase circuits can be found
in the
`references <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_.

See also
^^^^^^^^

`MultiPhase.Ideal <Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal>`_

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| Name                                                                                                                                                                                                                                                    | Description                 |
+=========================================================================================================================================================================================================================================================+=============================+
| |image6| `Idle <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Idle>`_                                                                                                                | Idle branch                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| |image7| `Short <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Short>`_                                                                                                              | Short cut branch            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| |image8| `IdealCommutingSwitch <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitch>`_                                                                                | Ideal commuting switch      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| |image9| `IdealIntermediateSwitch <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitch>`_                                                                          | Ideal intermediate switch   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| |image10| `IdealOpeningSwitch <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitch>`_                                                                                   | Ideal electrical opener     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| |image11| `IdealClosingSwitch <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitch>`_                                                                                   | Ideal electrical closer     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+

--------------

|image12| `Modelica.Electrical.QuasiStationary.SinglePhase.Ideal <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal>`_.Idle
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Idle branch**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdleD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Idle

   Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Idle

Information
~~~~~~~~~~~

::

This model is a simple idle branch considering the complex current *i* =
0.

See also
^^^^^^^^

`Short <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Short>`_

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Idle "Idle branch"
      extends Interfaces.OnePort;
    equation 
      i = Complex(0);
    end Idle;

--------------

|image13| `Modelica.Electrical.QuasiStationary.SinglePhase.Ideal <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal>`_.Short
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Short cut branch**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdleD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Short

   Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Short

Information
~~~~~~~~~~~

::

This model is a simple short cut branch considering the complex voltage
*v* = 0.

See also
^^^^^^^^

`Idle <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Idle>`_

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Short "Short cut branch"
      extends Interfaces.OnePort;
    equation 
      v = Complex(0);
    end Short;

--------------

|image14| `Modelica.Electrical.QuasiStationary.SinglePhase.Ideal <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal>`_.IdealCommutingSwitch
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal commuting switch**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitchD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitch

   Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitch

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

**Use with care:** This switch is only intended to be used for
structural changes, not for fast switching sequences, due to the
quasistationary formulation.

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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name       | Description                                         |
+===========================================================================================================================================================+============+=====================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort   |                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | p          |                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | n2         |                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | n1         |                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                                                           | control    | true => p--n2 connected, false => p--n1 connected   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealCommutingSwitch "Ideal commuting switch"
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Resistance Ron(final min=0)=1.E-5 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff(final min=0)=1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(final T=293.15);
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin p;
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin n2;
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin n1;
      Modelica.Blocks.Interfaces.BooleanInput control 
        "true => p--n2 connected, false => p--n1 connected";
    protected 
      Complex s1(re(final unit="1"), im(final unit="1"));
      Complex s2(re(final unit="1"), im(final unit="1")) "Auxiliary variables";
      constant Modelica.SIunits.ComplexVoltage  unitVoltage=
                                                           Complex(1,0);
      constant Modelica.SIunits.ComplexCurrent  unitCurrent=
                                                           Complex(1,0);
    equation 
      Connections.branch(p.reference, n1.reference);
      p.reference.gamma = n1.reference.gamma;
      Connections.branch(p.reference, n2.reference);
      p.reference.gamma = n2.reference.gamma;
      p.i + n2.i + n1.i = Complex(0,0);
      p.v - n1.v = (s1*unitCurrent)*(if (control) then 1 else Ron);
      n1.i = -(s1*unitVoltage)*(if (control) then Goff else 1);
      p.v - n2.v = (s2*unitCurrent)*(if (control) then Ron else 1);
      n2.i = -(s2*unitVoltage)*(if (control) then 1 else Goff);
      LossPower = real(p.v*conj(p.i)) + real(n1.v*conj(n1.i)) + real(n2.v*conj(n2.i));
    end IdealCommutingSwitch;

--------------

|image15| `Modelica.Electrical.QuasiStationary.SinglePhase.Ideal <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal>`_.IdealIntermediateSwitch
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal intermediate switch**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitchD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitch

   Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitch

Information
~~~~~~~~~~~

::

The intermediate switch has four switching contact pins p1, p2, n1, and
n2. The switching behaviour is controlled by the input signal control.
If control is true, the pin p1 is connected to pin n2, and the pin p2 is
connected to the pin n2. Otherwise, the pin p1 is connected to n1, and
p2 is connected to n2.

.. figure:: ../Resources/Images/Electrical/QuasiStationary/SinglePhase/Ideal/IdealIntermediateSwitch1.png
   :align: center
   :alt: IdealIntermediateSwitch1

   IdealIntermediateSwitch1
In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron.

.. figure:: ../Resources/Images/Electrical/QuasiStationary/SinglePhase/Ideal/IdealIntermediateSwitch2.png
   :align: center
   :alt: IdealIntermediateSwitch2

   IdealIntermediateSwitch2
The limiting case is also allowed, i.e., the resistance Ron of the
closed switch could be exactly zero and the conductance Goff of the open
switch could be also exactly zero. Note, there are circuits, where a
description with zero Ron or zero Goff is not possible.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled. The parameters are not
temperature dependent.

**Use with care:** This switch is only intended to be used for
structural changes, not for fast switching sequences, due to the
quasistationary formulation.

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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| Type                                                                                                                                                      | Name       | Description                                                            |
+===========================================================================================================================================================+============+========================================================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort   |                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | p1         |                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | p2         |                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | n1         |                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | n2         |                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                                                           | control    | true => p1--n2, p2--n1 connected, otherwise p1--n1, p2--n2 connected   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealIntermediateSwitch "Ideal intermediate switch"
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Resistance Ron(final min=0)=1.E-5 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff(final min=0)=1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(final T=293.15);
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin p1;
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin p2;
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin n1;
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin n2;
      Modelica.Blocks.Interfaces.BooleanInput control 
        "true => p1--n2, p2--n1 connected, otherwise p1--n1, p2--n2  connected";
    protected 
      Complex s1(re(final unit="1"), im(final unit="1"));
      Complex s2(re(final unit="1"), im(final unit="1"));
      Complex s3(re(final unit="1"), im(final unit="1"));
      Complex s4(re(final unit="1"), im(final unit="1")) "Auxiliary variables";
      constant Modelica.SIunits.ComplexVoltage  unitVoltage=
                                                           Complex(1,0);
      constant Modelica.SIunits.ComplexCurrent  unitCurrent=
                                                           Complex(1,0);
    equation 
      Connections.branch(p1.reference, n1.reference);
      p1.reference.gamma = n1.reference.gamma;
      Connections.branch(p2.reference, n2.reference);
      p2.reference.gamma = n2.reference.gamma;
      Connections.branch(n1.reference, n2.reference);
      n1.reference.gamma = n2.reference.gamma;

      p1.v - n1.v = (s1*unitCurrent)*(if (control) then 1 else Ron);
      p2.v - n2.v = (s2*unitCurrent)*(if (control) then 1 else Ron);
      p1.v - n2.v = (s3*unitCurrent)*(if (control) then Ron else 1);
      p2.v - n1.v = (s4*unitCurrent)*(if (control) then Ron else 1);

      p1.i = if control then s1*unitVoltage*Goff + s3*unitCurrent else s1*unitCurrent + s3*unitVoltage*Goff;
      p2.i = if control then s2*unitVoltage*Goff + s4*unitCurrent else s2*unitCurrent + s4*unitVoltage*Goff;
      n1.i = if control then -s1*unitVoltage*Goff - s4*unitCurrent else -s1*unitCurrent - s4*unitVoltage*Goff;
      n2.i = if control then -s2*unitVoltage*Goff - s3*unitCurrent else -s2*unitCurrent - s3*unitVoltage*Goff;

      LossPower = real(p1.v*conj(p1.i)) + real(p2.v*conj(p2.i)) + real(n1.v*conj(n1.i)) + real(n2.v*conj(n2.i));
    end IdealIntermediateSwitch;

--------------

|image16| `Modelica.Electrical.QuasiStationary.SinglePhase.Ideal <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal>`_.IdealOpeningSwitch
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal electrical opener**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitchD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitch

   Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitch

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

**Use with care:** This switch is only intended to be used for
structural changes, not for fast switching sequences, due to the
quasistationary formulation.

::

Extends from
`Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through),
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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------+
| Type                                                                                                                                                      | Name       | Description                                    |
+===========================================================================================================================================================+============+================================================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p     | Positive pin                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n     | Negative pin                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort   |                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                                                           | control    | true => switch open, false => p--n connected   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealOpeningSwitch "Ideal electrical opener"
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
     extends Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort;
     parameter Modelica.SIunits.Resistance Ron(final min=0)=1.E-5 
        "Closed switch resistance";
     parameter Modelica.SIunits.Conductance Goff(final min=0)=1.E-5 
        "Opened switch conductance";
     extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(final T=293.15);
     Modelica.Blocks.Interfaces.BooleanInput control 
        "true => switch open, false => p--n connected";
    protected 
     Complex s(re(final unit="1"), im(final unit="1")) "Auxiliary variable";
     constant Modelica.SIunits.ComplexVoltage  unitVoltage=
                                                          Complex(1,0);
     constant Modelica.SIunits.ComplexCurrent  unitCurrent=
                                                          Complex(1,0);
    equation 
     v = (s*unitCurrent)*(if control then 1 else Ron);
     i = (s*unitVoltage)*(if control then Goff else 1);

     LossPower = real(v*conj(i));
    end IdealOpeningSwitch;

--------------

|image17| `Modelica.Electrical.QuasiStationary.SinglePhase.Ideal <Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal>`_.IdealClosingSwitch
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal electrical closer**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitchD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitch

   Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitch

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

**Use with care:** This switch is only intended to be used for
structural changes, not for fast switching sequences, due to the
quasistationary formulation.

::

Extends from
`Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through),
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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------+
| Type                                                                                                                                                      | Name       | Description                                    |
+===========================================================================================================================================================+============+================================================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p     | Positive pin                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n     | Negative pin                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort   |                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                                                           | control    | true => p--n connected, false => switch open   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealClosingSwitch "Ideal electrical closer"
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      extends Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort;
        parameter Modelica.SIunits.Resistance Ron(final min=0)=1.E-5 
        "Closed switch resistance";
        parameter Modelica.SIunits.Conductance Goff(final min=0)=1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(final T=293.15);
        Modelica.Blocks.Interfaces.BooleanInput control 
        "true => p--n connected, false => switch open";
    protected 
        Complex s(re(final unit="1"), im(final unit="1")) "Auxiliary variable";
        constant Modelica.SIunits.ComplexVoltage  unitVoltage=
                                                             Complex(1,0);
        constant Modelica.SIunits.ComplexCurrent  unitCurrent=
                                                             Complex(1,0);
    equation 
        v = (s*unitCurrent)*(if control then Ron else 1);
        i = (s*unitVoltage)*(if control then 1 else Goff);

        LossPower = real(v*conj(i));
    end IdealClosingSwitch;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:24
2010.

.. |Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Idle| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdleS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Short| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.ShortS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitch| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitchS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitch| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitchS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitch| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitchS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitch| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitchS.png
.. |image6| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdleS.png
.. |image7| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.ShortS.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitchS.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitchS.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitchS.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitchS.png
.. |image12| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdleI.png
.. |image13| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.ShortI.png
.. |image14| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitchI.png
.. |image15| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitchI.png
.. |image16| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitchI.png
.. |image17| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitchI.png
