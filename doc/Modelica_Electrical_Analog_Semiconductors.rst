=========================================
Modelica.Electrical.Analog.Semiconductors
=========================================

`Modelica.Electrical.Analog <Modelica_Electrical_Analog.html#Modelica.Electrical.Analog>`_.Semiconductors
---------------------------------------------------------------------------------------------------------

**Semiconductor devices such as diode, MOS and bipolar transistor**

Information
~~~~~~~~~~~

::

This package contains semiconductor devices:

-  diode
-  MOS transistors
-  bipolar transistors
-  thyristor
-  triac

Most of the semiconductor devices contain a conditional heat port, which
is not active by default. If it is active the loss power is calculated
to be used in a thermal net. The heating variants of the semiconductor
devices are provided to use the thermal port temperature in the electric
calculation. That means that for a true thermal electric interaction the
heating device models have to be used.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                               | Description                                                                                                 |
+====================================================================================================================================================================================+=============================================================================================================+
| |image15| `Diode <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.Diode>`_                                                                | Simple diode                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image16| `ZDiode <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.ZDiode>`_                                                              | Zener diode with 3 working areas                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image17| `PMOS <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.PMOS>`_                                                                  | Simple MOS Transistor                                                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image18| `NMOS <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.NMOS>`_                                                                  | Simple MOS Transistor                                                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image19| `NPN <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.NPN>`_                                                                    | Simple BJT according to Ebers-Moll                                                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image20| `PNP <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.PNP>`_                                                                    | Simple BJT according to Ebers-Moll                                                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image21| `HeatingDiode <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.HeatingDiode>`_                                                  | Simple diode with heating port                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image22| `HeatingNMOS <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.HeatingNMOS>`_                                                    | Simple MOS Transistor with heating port                                                                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image23| `HeatingPMOS <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.HeatingPMOS>`_                                                    | Simple PMOS Transistor with heating port                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image24| `HeatingNPN <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.HeatingNPN>`_                                                      | Simple NPN BJT according to Ebers-Moll with heating port                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image25| `HeatingPNP <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.HeatingPNP>`_                                                      | Simple PNP BJT according to Ebers-Moll with heating port                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image26| `pow <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.pow>`_                                                                    | Just a helper function for x^y in order that a symbolic engine can apply some transformations more easily   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image27| `exlin <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.exlin>`_                                                                | Exponential function linearly continued for x > Maxexp                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image28| `Thyristor <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.Thyristor>`_                                                        | Simple Thyristor Model                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image29| `SimpleTriac <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors.SimpleTriac>`_                                                    | Simple triac, based on Semiconductors.Thyristor model                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+

--------------

|image30| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.Diode
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple diode**

.. figure:: Modelica.Electrical.Analog.Semiconductors.DiodeD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.Diode

   Modelica.Electrical.Analog.Semiconductors.Diode

Information
~~~~~~~~~~~

::

The simple diode is a one port. It consists of the diode itself and an
parallel ohmic resistance *R*. The diode formula is:

::

                    v/vt
      i  =  ids ( e      - 1).

If the exponent *v/vt* reaches the limit *maxex*, the diode
characterisic is linearly continued to avoid overflow.

**Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not**modelled yet. The parameters are
not temperature dependent.

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
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | Ids           | 1.e-6     | Saturation current [A]                                |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | Vt            | 0.04      | Voltage equivalent of temperature (kT/qn) [V]         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                  | Maxexp        | 15        | Max. exponent for linear continuation                 |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | R             | 1.e8      | Parallel ohmic resistance [Ohm]                       |
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

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Diode "Simple diode"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SIunits.Current Ids=1.e-6 "Saturation current";
      parameter SIunits.Voltage Vt=0.04 "Voltage equivalent of temperature (kT/qn)";
      parameter Real Maxexp(final min=Modelica.Constants.small) = 15 
        "Max. exponent for linear continuation";
      parameter SIunits.Resistance R=1.e8 "Parallel ohmic resistance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(
         T=293.15);
    equation 
      i = smooth(1,(if (v/Vt > Maxexp) then Ids*(exp(Maxexp)*(1 + v/Vt - Maxexp) - 1) +
        v/R else Ids*(exp(v/Vt) - 1) + v/R));
      LossPower = v*i;
    end Diode;

--------------

|image31| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.ZDiode
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Zener diode with 3 working areas**

.. figure:: Modelica.Electrical.Analog.Semiconductors.ZDiodeD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.ZDiode

   Modelica.Electrical.Analog.Semiconductors.ZDiode

Information
~~~~~~~~~~~

::

The simple zener diode is a one port. It consists of the diode itself
and an parallel ohmic resistance *R*. The diode formula is:

::

                    v/Vt                -(v+Bv)/(Nbv*Vt)
      i  =  Ids ( e      - 1) - Ibv ( e                  ).

If the exponent in one of the two branches reaches the limit *Maxexp*,
the diode characterisic is linearly continued to avoid overflow.

The zener diode model permits (in contrast to the simple diode model)
current in reverse direction if the breakdown voltage Bv (also known
zener knee voltage) is exceeded.

The thermal power is calculated by *i\*v*.

**Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not**modelled yet. The parameters are
not temperature dependent.

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
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | Ids           | 1.e-6     | Saturation current [A]                                |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | Vt            | 0.04      | Voltage equivalent of temperature (kT/qn) [V]         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                  | Maxexp        | 30        | Max. exponent for linear continuation                 |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | R             | 1.e8      | Parallel ohmic resistance [Ohm]                       |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | Bv            | 5.1       | Breakthrough voltage = Zener- or Z-voltage [V]        |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | Ibv           | 0.7       | Breakthrough knee current [A]                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                  | Nbv           | 0.74      | Breakthrough emission coefficient                     |
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

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ZDiode "Zener diode with 3 working areas"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Modelica.SIunits.Current Ids=1.e-6 "Saturation current";
      parameter Modelica.SIunits.Voltage Vt=0.04 
        "Voltage equivalent of temperature (kT/qn)";
      parameter Real Maxexp(final min=Modelica.Constants.small) = 30 
        "Max. exponent for linear continuation";
      parameter Modelica.SIunits.Resistance R=1.e8 "Parallel ohmic resistance";
      parameter Modelica.SIunits.Voltage Bv=5.1 
        "Breakthrough voltage = Zener- or Z-voltage";
      parameter Modelica.SIunits.Current Ibv=0.7 "Breakthrough knee current";
      parameter Real Nbv=0.74 "Breakthrough emission coefficient";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(
         T=293.15);

      Real maxexp=exp(Maxexp);
    equation 
       i = smooth(1, if (v>Maxexp*Vt) then 
                 Ids*( exp(Maxexp)*(1 + v/Vt - Maxexp)-1) + v/R else 
              if ( (v+Bv)<-Maxexp*(Nbv*Vt)) then 
                 -Ids -Ibv* exp(Maxexp)*(1 - (v+Bv)/(Nbv*Vt) - Maxexp) +v/R else 
                 Ids*(exp(v/Vt)-1) - Ibv*exp(-(v+Bv)/(Nbv*Vt)) + v/R);
       LossPower = v*i;
    end ZDiode;

--------------

|image32| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.PMOS
------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple MOS Transistor**

.. figure:: Modelica.Electrical.Analog.Semiconductors.PMOSD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.PMOS

   Modelica.Electrical.Analog.Semiconductors.PMOS

Information
~~~~~~~~~~~

::

The PMOS model is a simple model of a p-channel metal-oxide
semiconductor FET. It differs slightly from the device used in the SPICE
simulator. For more details please care for H. Spiro.

The model does not consider capacitances. A high drain-source resistance
RDS is included to avoid numerical difficulties.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled yet. The parameters are
not temperature dependent.

**References:**

Spiro, H.: Simulation integrierter Schaltungen. R. Oldenbourg Verlag
Muenchen Wien 1990.

Some typical parameter sets are:

::

      W       L      Beta        Vt    K2     K5      DW       DL
      m       m      A/V^2       V     -      -       m        m
      50.e-6  8.e-6  0.0085e-3  -0.15  0.41   0.839  -3.8e-6  -4.0e-6
      20.e-6  6.e-6  0.0105e-3  -1.0   0.41   0.839  -2.5e-6  -2.1e-6
      30.e-6  5.e-6  0.0059e-3  -0.3   0.98   1.01    0       -3.9e-6
      30.e-6  5.e-6  0.0152e-3  -0.69  0.104  1.1    -0.8e-6  -0.4e-6
      30.e-6  5.e-6  0.0163e-3  -0.69  0.104  1.1    -0.8e-6  -0.4e-6
      30.e-6  5.e-6  0.0182e-3  -0.69  0.086  1.06   -0.1e-6  -0.6e-6
      20.e-6  6.e-6  0.0074e-3  -1.    0.4    0.59    0        0

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| Type                                                                            | Name          | Default     | Description                                           |
+=================================================================================+===============+=============+=======================================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | W             | 20.0e-6     | Width [m]                                             |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | L             | 6.0e-6      | Length [m]                                            |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Transconductance <Modelica_SIunits.html#Modelica.SIunits.Transconductance>`_   | Beta          | 0.0105e-3   | Transconductance parameter [A/V2]                     |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Vt            | -1.0        | Zero bias threshold voltage [V]                       |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| Real                                                                            | K2            | 0.41        | Bulk threshold parameter                              |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| Real                                                                            | K5            | 0.839       | Reduction of pinch-off region                         |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | dW            | -2.5e-6     | Narrowing of channel [m]                              |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | dL            | -2.1e-6     | Shortening of channel [m]                             |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_               | RDS           | 1.e+7       | Drain-Source-Resistance [Ohm]                         |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| Boolean                                                                         | useHeatPort   | false       | =true, if HeatPort is enabled                         |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T             | 293.15      | Fixed device temperature if useHeatPort = false [K]   |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                 | Name       | Description   |
+======================================================================================================================+============+===============+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | D          | Drain         |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | G          | Gate          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | S          | Source        |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | B          | Bulk          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |               |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PMOS "Simple MOS Transistor"

      Interfaces.Pin D "Drain";
      Interfaces.Pin G "Gate";
      Interfaces.Pin S "Source";
      Interfaces.Pin B "Bulk";
      parameter SIunits.Length W=20.0e-6 "Width";
      parameter SIunits.Length L=6.0e-6 "Length";
      parameter SIunits.Transconductance Beta=0.0105e-3 
        "Transconductance parameter";
      parameter SIunits.Voltage Vt=-1.0 "Zero bias threshold voltage";
      parameter Real K2=0.41 "Bulk threshold parameter";
      parameter Real K5=0.839 "Reduction of pinch-off region";
      parameter SIunits.Length dW=-2.5e-6 "Narrowing of channel";
      parameter SIunits.Length dL=-2.1e-6 "Shortening of channel";
      parameter SIunits.Resistance RDS=1.e+7 "Drain-Source-Resistance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(
         T=293.15);
    protected 
      Real v;
      Real uds;
      Real ubs;
      Real ugst;
      Real ud;
      Real us;
      Real id;
      Real gds;

    equation 
      assert( L + dL > 0, "PMOS: Effective length must be positive");
      assert( W + dW > 0, "PMOS: Effective width  must be positive");
      gds = if (RDS < 1.e-20 and RDS > -1.e-20) then 1.e20 else 1/RDS;
      v = Beta*(W + dW)/(L + dL);
      ud = smooth(0,if (D.v > S.v) then S.v else D.v);
      us = smooth(0,if (D.v > S.v) then D.v else S.v);
      uds = ud - us;
      ubs = smooth(0,if (B.v < us) then 0 else B.v - us);
      ugst = (G.v - us - Vt + K2*ubs)*K5;
      id = smooth(0,if (ugst >= 0) then uds*gds else if (ugst < uds) then -v*uds*(
        ugst - uds/2) + uds*gds else -v*ugst*ugst/2 + uds*gds);
      G.i = 0;
      D.i = smooth(0,if (D.v > S.v) then -id else id);
      S.i = smooth(0,if (D.v > S.v) then id else -id);
      B.i = 0;
      LossPower = D.i * (D.v - S.v);
    end PMOS;

--------------

|image33| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.NMOS
------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple MOS Transistor**

.. figure:: Modelica.Electrical.Analog.Semiconductors.NMOSD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.NMOS

   Modelica.Electrical.Analog.Semiconductors.NMOS

Information
~~~~~~~~~~~

::

The NMos model is a simple model of a n-channel metal-oxide
semiconductor FET. It differs slightly from the device used in the SPICE
simulator. For more details please care for H. Spiro.

The model does not consider capacitances. A high drain-source resistance
RDS is included to avoid numerical difficulties.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled yet. The parameters are
not temperature dependent.

::

      W       L      Beta         Vt      K2     K5       DW       DL
      m       m      A/V^2        V       -      -        m        m
      12.e-6  4.e-6  0.062e-3    -4.5     0.24   0.61    -1.2e-6  -0.9e-6      depletion
      60.e-6  3.e-6  0.048e-3     0.1     0.08   0.68    -1.2e-6  -0.9e-6      enhancement
      12.e-6  4.e-6  0.0625e-3   -0.8     0.21   0.78    -1.2e-6  -0.9e-6      zero
      50.e-6  8.e-6  0.0299e-3    0.24    1.144  0.7311  -5.4e-6  -4.e-6
      20.e-6  6.e-6  0.041e-3     0.8     1.144  0.7311  -2.5e-6  -1.5e-6
      30.e-6  9.e-6  0.025e-3    -4.0     0.861  0.878   -3.4e-6  -1.74e-6
      30.e-6  5.e-6  0.031e-3     0.6     1.5    0.72     0       -3.9e-6
      50.e-6  6.e-6  0.0414e-3   -3.8     0.34   0.8     -1.6e-6  -2.e-6       depletion
      50.e-6  5.e-6  0.03e-3      0.37    0.23   0.86    -1.6e-6  -2.e-6       enhancement
      50.e-6  6.e-6  0.038e-3    -0.9     0.23   0.707   -1.6e-6  -2.e-6       zero
      20.e-6  4.e-6  0.06776e-3   0.5409  0.065  0.71    -0.8e-6  -0.2e-6
      20.e-6  4.e-6  0.06505e-3   0.6209  0.065  0.71    -0.8e-6  -0.2e-6
      20.e-6  4.e-6  0.05365e-3   0.6909  0.03   0.8     -0.3e-6  -0.2e-6
      20.e-6  4.e-6  0.05365e-3   0.4909  0.03   0.8     -0.3e-6  -0.2e-6
      12.e-6  4.e-6  0.023e-3    -4.5     0.29   0.6      0        0           depletion
      60.e-6  3.e-6  0.022e-3     0.1     0.11   0.65     0        0           enhancement
      12.e-6  4.e-6  0.038e-3    -0.8     0.33   0.6      0        0           zero
      20.e-6  6.e-6  0.022e-3     0.8     1      0.66     0        0

**References:**

Spiro, H.: Simulation integrierter Schaltungen. R. Oldenbourg Verlag
Muenchen Wien 1990.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| Type                                                                            | Name          | Default    | Description                                           |
+=================================================================================+===============+============+=======================================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | W             | 20.e-6     | Width [m]                                             |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | L             | 6.e-6      | Length [m]                                            |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Transconductance <Modelica_SIunits.html#Modelica.SIunits.Transconductance>`_   | Beta          | 0.041e-3   | Transconductance parameter [A/V2]                     |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Vt            | 0.8        | Zero bias threshold voltage [V]                       |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| Real                                                                            | K2            | 1.144      | Bulk threshold parameter                              |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| Real                                                                            | K5            | 0.7311     | Reduction of pinch-off region                         |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | dW            | -2.5e-6    | narrowing of channel [m]                              |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | dL            | -1.5e-6    | shortening of channel [m]                             |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_               | RDS           | 1.e+7      | Drain-Source-Resistance [Ohm]                         |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| Boolean                                                                         | useHeatPort   | false      | =true, if HeatPort is enabled                         |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T             | 293.15     | Fixed device temperature if useHeatPort = false [K]   |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                 | Name       | Description   |
+======================================================================================================================+============+===============+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | D          | Drain         |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | G          | Gate          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | S          | Source        |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | B          | Bulk          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |               |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model NMOS "Simple MOS Transistor"

      Interfaces.Pin D "Drain";
      Interfaces.Pin G "Gate";
      Interfaces.Pin S "Source";
      Interfaces.Pin B "Bulk";
      parameter SIunits.Length W=20.e-6 "Width";
      parameter SIunits.Length L=6.e-6 "Length";
      parameter SIunits.Transconductance Beta=0.041e-3 "Transconductance parameter";
      parameter SIunits.Voltage Vt=0.8 "Zero bias threshold voltage";
      parameter Real K2=1.144 "Bulk threshold parameter";
      parameter Real K5=0.7311 "Reduction of pinch-off region";
      parameter SIunits.Length dW=-2.5e-6 "narrowing of channel";
      parameter SIunits.Length dL=-1.5e-6 "shortening of channel";
      parameter SIunits.Resistance RDS=1.e+7 "Drain-Source-Resistance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    T=293.15);
    protected 
      Real v;
      Real uds;
      Real ubs;
      Real ugst;
      Real ud;
      Real us;
      Real id;
      Real gds;

    equation 
      assert( L + dL > 0, "NMOS: Effective length must be positive");
      assert( W + dW > 0, "NMOS: Effective width  must be positive");
      gds = if (RDS < 1.e-20 and RDS > -1.e-20) then 1.e20 else 1/RDS;
      v = Beta*(W + dW)/(L + dL);
      ud = smooth(0,if (D.v < S.v) then S.v else D.v);
      us = if (D.v < S.v) then D.v else S.v;
      uds = ud - us;
      ubs = smooth(0,if (B.v > us) then 0 else B.v - us);
      ugst = (G.v - us - Vt + K2*ubs)*K5;
      id = smooth(0,if (ugst <= 0) then uds*gds else if (ugst > uds) then v*uds*(ugst
         - uds/2) + uds*gds else v*ugst*ugst/2 + uds*gds);
      G.i = 0;
      D.i = smooth(0,if (D.v < S.v) then -id else id);
      S.i = smooth(0,if (D.v < S.v) then id else -id);
      B.i = 0;
      LossPower = D.i * (D.v - S.v);
    end NMOS;

--------------

|image34| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.NPN
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Simple BJT according to Ebers-Moll**

.. figure:: Modelica.Electrical.Analog.Semiconductors.NPND.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.NPN

   Modelica.Electrical.Analog.Semiconductors.NPN

Information
~~~~~~~~~~~

::

This model is a simple model of a bipolar npn junction transistor
according to Ebers-Moll.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled yet. The parameters are
not temperature dependent.

A typical parameter set is:

::

      Bf  Br  Is     Vak  Tauf    Taur  Ccs   Cje     Cjc     Phie  Me   PHic   Mc     Gbc    Gbe    Vt
      -   -   A      V    s       s     F     F       F       V     -    V      -      mS     mS     V
      50  0.1 1e-16  0.02 0.12e-9 5e-9  1e-12 0.4e-12 0.5e-12 0.8   0.4  0.8    0.333  1e-15  1e-15  0.02585

**References:**

Vlach, J.; Singal, K.: Computer methods for circuit analysis and design.
Van Nostrand Reinhold, New York 1983 on page 317 ff.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                            | Name          | Default   | Description                                           |
+=================================================================================+===============+===========+=======================================================+
| Real                                                                            | Bf            | 50        | Forward beta                                          |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                            | Br            | 0.1       | Reverse beta                                          |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                     | Is            | 1.e-16    | Transport saturation current [A]                      |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `InversePotential <Modelica_SIunits.html#Modelica.SIunits.InversePotential>`_   | Vak           | 0.02      | Early voltage (inverse), 1/Volt [1/V]                 |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                           | Tauf          | 0.12e-9   | Ideal forward transit time [s]                        |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                           | Taur          | 5e-9      | Ideal reverse transit time [s]                        |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Ccs           | 1e-12     | Collector-substrat(ground) cap. [F]                   |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Cje           | 0.4e-12   | Base-emitter zero bias depletion cap. [F]             |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Cjc           | 0.5e-12   | Base-coll. zero bias depletion cap. [F]               |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Phie          | 0.8       | Base-emitter diffusion voltage [V]                    |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                            | Me            | 0.4       | Base-emitter gradation exponent                       |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Phic          | 0.8       | Base-collector diffusion voltage [V]                  |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                            | Mc            | 0.333     | Base-collector gradation exponent                     |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_             | Gbc           | 1e-15     | Base-collector conductance [S]                        |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_             | Gbe           | 1e-15     | Base-emitter conductance [S]                          |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Vt            | 0.02585   | Voltage equivalent of temperature [V]                 |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                            | EMin          | -100      | if x < EMin, the exp(x) function is linearized        |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                            | EMax          | 40        | if x > EMax, the exp(x) function is linearized        |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                                         | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                 | Name       | Description   |
+======================================================================================================================+============+===============+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |               |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | C          | Collector     |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | B          | Base          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | E          | Emitter       |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model NPN "Simple BJT according to Ebers-Moll"
      parameter Real Bf=50 "Forward beta";
      parameter Real Br=0.1 "Reverse beta";
      parameter SIunits.Current Is=1.e-16 "Transport saturation current";
      parameter SIunits.InversePotential Vak=0.02 "Early voltage (inverse), 1/Volt";
      parameter SIunits.Time Tauf=0.12e-9 "Ideal forward transit time";
      parameter SIunits.Time Taur=5e-9 "Ideal reverse transit time";
      parameter SIunits.Capacitance Ccs=1e-12 "Collector-substrat(ground) cap.";
      parameter SIunits.Capacitance Cje=0.4e-12 
        "Base-emitter zero bias depletion cap.";
      parameter SIunits.Capacitance Cjc=0.5e-12 
        "Base-coll. zero bias depletion cap.";
      parameter SIunits.Voltage Phie=0.8 "Base-emitter diffusion voltage";
      parameter Real Me=0.4 "Base-emitter gradation exponent";
      parameter SIunits.Voltage Phic=0.8 "Base-collector diffusion voltage";
      parameter Real Mc=0.333 "Base-collector gradation exponent";
      parameter SIunits.Conductance Gbc=1e-15 "Base-collector conductance";
      parameter SIunits.Conductance Gbe=1e-15 "Base-emitter conductance";
      parameter SIunits.Voltage Vt=0.02585 "Voltage equivalent of temperature";
      parameter Real EMin=-100 "if x < EMin, the exp(x) function is linearized";
      parameter Real EMax=40 "if x > EMax, the exp(x) function is linearized";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(
         T=293.15);
    protected 
      Real vbc;
      Real vbe;
      Real qbk;
      Real ibc;
      Real ibe;
      Real cbc;
      Real cbe;
      Real ExMin;
      Real ExMax;
      Real Capcje;
      Real Capcjc;
      function pow "Just a helper function for x^y"
        input Real x;
        input Real y;
        output Real z;
      algorithm 
        z:=x^y;
      end pow;
    public 
      Modelica.Electrical.Analog.Interfaces.Pin C "Collector";
      Modelica.Electrical.Analog.Interfaces.Pin B "Base";
      Modelica.Electrical.Analog.Interfaces.Pin E "Emitter";

    equation 
      ExMin = exp(EMin);
      ExMax = exp(EMax);
      vbc = B.v - C.v;
      vbe = B.v - E.v;
      qbk = 1 - vbc*Vak;

      ibc = smooth(1,if (vbc/Vt < EMin) then Is*(ExMin*(vbc/Vt - EMin + 1) - 1) + vbc*Gbc else 
              if (vbc/Vt > EMax) then Is*(ExMax*(vbc/Vt - EMax + 1) - 1) + vbc*
        Gbc else Is*(exp(vbc/Vt) - 1) + vbc*Gbc);
      ibe = smooth(1,if (vbe/Vt < EMin) then Is*(ExMin*(vbe/Vt - EMin + 1) - 1) + vbe*Gbe else 
              if (vbe/Vt > EMax) then Is*(ExMax*(vbe/Vt - EMax + 1) - 1) + vbe*
        Gbe else Is*(exp(vbe/Vt) - 1) + vbe*Gbe);
      Capcjc = smooth(1,(if (vbc/Phic > 0) then Cjc*(1 + Mc*vbc/Phic) else Cjc*pow(1 - vbc
        /Phic, -Mc)));
      Capcje = smooth(1,(if (vbe/Phie > 0) then Cje*(1 + Me*vbe/Phie) else Cje*pow(1 - vbe
        /Phie, -Me)));
      cbc = smooth(1,(if (vbc/Vt < EMin) then Taur*Is/Vt*ExMin*(vbc/Vt - EMin + 1) +
        Capcjc else if (vbc/Vt > EMax) then Taur*Is/Vt*ExMax*(vbc/Vt - EMax + 1)
         + Capcjc else Taur*Is/Vt*exp(vbc/Vt) + Capcjc));
      cbe = smooth(1,(if (vbe/Vt < EMin) then Tauf*Is/Vt*ExMin*(vbe/Vt - EMin + 1) +
        Capcje else if (vbe/Vt > EMax) then Tauf*Is/Vt*ExMax*(vbe/Vt - EMax + 1)
         + Capcje else Tauf*Is/Vt*exp(vbe/Vt) + Capcje));
      C.i = (ibe - ibc)*qbk - ibc/Br - cbc*der(vbc) + Ccs*der(C.v);
      B.i = ibe/Bf + ibc/Br + cbc*der(vbc) + cbe*der(vbe);
      E.i = -B.i - C.i + Ccs*der(C.v);

      LossPower = (C.v-E.v)*(ibe-ibc)*qbk + vbc*ibc/Br + vbe*ibe/Bf;
    end NPN;

--------------

|image35| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.PNP
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Simple BJT according to Ebers-Moll**

.. figure:: Modelica.Electrical.Analog.Semiconductors.PNPD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.PNP

   Modelica.Electrical.Analog.Semiconductors.PNP

Information
~~~~~~~~~~~

::

This model is a simple model of a bipolar pnp junction transistor
according to Ebers-Moll.
 **Please note:** In case of useHeatPort=true the temperature dependence
of the electrical behavior is **not** modelled yet. The parameters are
not temperature dependent.

A typical parameter set is:

::

      Bf  Br  Is     Vak  Tauf    Taur  Ccs   Cje     Cjc     Phie  Me   PHic   Mc     Gbc    Gbe    Vt
      -   -   A      V    s       s     F     F       F       V     -    V      -      mS     mS     V
      50  0.1 1e-16  0.02 0.12e-9 5e-9  1e-12 0.4e-12 0.5e-12 0.8   0.4  0.8    0.333  1e-15  1e-15  0.02585

**References:**

Vlach, J.; Singal, K.: Computer methods for circuit analysis and design.
Van Nostrand Reinhold, New York 1983 on page 317 ff.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                            | Name          | Default   | Description                                           |
+=================================================================================+===============+===========+=======================================================+
| Real                                                                            | Bf            | 50        | Forward beta                                          |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                            | Br            | 0.1       | Reverse beta                                          |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                     | Is            | 1.e-16    | Transport saturation current [A]                      |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `InversePotential <Modelica_SIunits.html#Modelica.SIunits.InversePotential>`_   | Vak           | 0.02      | Early voltage (inverse), 1/Volt [1/V]                 |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                           | Tauf          | 0.12e-9   | Ideal forward transit time [s]                        |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                           | Taur          | 5e-9      | Ideal reverse transit time [s]                        |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Ccs           | 1e-12     | Collector-substrat(ground) cap. [F]                   |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Cje           | 0.4e-12   | Base-emitter zero bias depletion cap. [F]             |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Cjc           | 0.5e-12   | Base-coll. zero bias depletion cap. [F]               |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Phie          | 0.8       | Base-emitter diffusion voltage [V]                    |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                            | Me            | 0.4       | Base-emitter gradation exponent                       |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Phic          | 0.8       | Base-collector diffusion voltage [V]                  |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                            | Mc            | 0.333     | Base-collector gradation exponent                     |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_             | Gbc           | 1e-15     | Base-collector conductance [S]                        |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_             | Gbe           | 1e-15     | Base-emitter conductance [S]                          |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Vt            | 0.02585   | Voltage equivalent of temperature [V]                 |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                            | EMin          | -100      | if x < EMin, the exp(x) function is linearized        |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                            | EMax          | 40        | if x > EMax, the exp(x) function is linearized        |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                                         | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+---------------------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                 | Name       | Description   |
+======================================================================================================================+============+===============+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |               |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | C          | Collector     |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | B          | Base          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | E          | Emitter       |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PNP "Simple BJT according to Ebers-Moll"
      parameter Real Bf=50 "Forward beta";
      parameter Real Br=0.1 "Reverse beta";
      parameter SIunits.Current Is=1.e-16 "Transport saturation current";
      parameter SIunits.InversePotential Vak=0.02 "Early voltage (inverse), 1/Volt";
      parameter SIunits.Time Tauf=0.12e-9 "Ideal forward transit time";
      parameter SIunits.Time Taur=5e-9 "Ideal reverse transit time";
      parameter SIunits.Capacitance Ccs=1e-12 "Collector-substrat(ground) cap.";
      parameter SIunits.Capacitance Cje=0.4e-12 
        "Base-emitter zero bias depletion cap.";
      parameter SIunits.Capacitance Cjc=0.5e-12 
        "Base-coll. zero bias depletion cap.";
      parameter SIunits.Voltage Phie=0.8 "Base-emitter diffusion voltage";
      parameter Real Me=0.4 "Base-emitter gradation exponent";
      parameter SIunits.Voltage Phic=0.8 "Base-collector diffusion voltage";
      parameter Real Mc=0.333 "Base-collector gradation exponent";
      parameter SIunits.Conductance Gbc=1e-15 "Base-collector conductance";
      parameter SIunits.Conductance Gbe=1e-15 "Base-emitter conductance";
      parameter SIunits.Voltage Vt=0.02585 "Voltage equivalent of temperature";
      parameter Real EMin=-100 "if x < EMin, the exp(x) function is linearized";
      parameter Real EMax=40 "if x > EMax, the exp(x) function is linearized";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                     T=293.15);
    protected 
      Real vbc;
      Real vbe;
      Real qbk;
      Real ibc;
      Real ibe;
      Real cbc;
      Real cbe;
      Real ExMin;
      Real ExMax;
      Real Capcje;
      Real Capcjc;
      function pow "Just a helper function for x^y"
        input Real x;
        input Real y;
        output Real z;
      algorithm 
        z:=x^y;
      end pow;
    public 
      Modelica.Electrical.Analog.Interfaces.Pin C "Collector";
      Modelica.Electrical.Analog.Interfaces.Pin B "Base";
      Modelica.Electrical.Analog.Interfaces.Pin E "Emitter";
    equation 
      ExMin = exp(EMin);
      ExMax = exp(EMax);
      vbc = C.v - B.v;
      vbe = E.v - B.v;
      qbk = 1 - vbc*Vak;

      ibc = smooth(1,(if (vbc/Vt < EMin) then Is*(ExMin*(vbc/Vt - EMin + 1) - 1) + vbc*Gbc else 
              if (vbc/Vt > EMax) then Is*(ExMax*(vbc/Vt - EMax + 1) - 1) + vbc*
        Gbc else Is*(exp(vbc/Vt) - 1) + vbc*Gbc));

      ibe = smooth(1,(if (vbe/Vt < EMin) then Is*(ExMin*(vbe/Vt - EMin + 1) - 1) + vbe*Gbe else 
              if (vbe/Vt > EMax) then Is*(ExMax*(vbe/Vt - EMax + 1) - 1) + vbe*
        Gbe else Is*(exp(vbe/Vt) - 1) + vbe*Gbe));

      Capcjc = smooth(1,(if (vbc/Phic > 0) then Cjc*(1 + Mc*vbc/Phic) else Cjc*pow(1 - vbc
        /Phic, -Mc)));
      Capcje = smooth(1,if (vbe/Phie > 0) then Cje*(1 + Me*vbe/Phie) else Cje*pow(1 - vbe
        /Phie, -Me));
      cbc = smooth(1,(if (vbc/Vt < EMin) then Taur*Is/Vt*ExMin*(vbc/Vt - EMin + 1) +
        Capcjc else if (vbc/Vt > EMax) then Taur*Is/Vt*ExMax*(vbc/Vt - EMax + 1)
         + Capcjc else Taur*Is/Vt*exp(vbc/Vt) + Capcjc));
      cbe = smooth(1,(if (vbe/Vt < EMin) then Tauf*Is/Vt*ExMin*(vbe/Vt - EMin + 1) +
        Capcje else if (vbe/Vt > EMax) then Tauf*Is/Vt*ExMax*(vbe/Vt - EMax + 1)
         + Capcje else Tauf*Is/Vt*exp(vbe/Vt) + Capcje));
      C.i = -((ibe - ibc)*qbk - ibc/Br - cbc*der(vbc) - Ccs*der(C.v));
      B.i = -(ibe/Bf + ibc/Br + cbe*der(vbe) + cbc*der(vbc));
      E.i = -B.i - C.i + Ccs*der(C.v);

      LossPower = (E.v-C.v)*(ibe-ibc)*qbk + vbc*ibc/Br + vbe*ibe/Bf;
    end PNP;

--------------

|image36| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.HeatingDiode
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple diode with heating port**

.. figure:: Modelica.Electrical.Analog.Semiconductors.HeatingDiodeD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.HeatingDiode

   Modelica.Electrical.Analog.Semiconductors.HeatingDiode

Information
~~~~~~~~~~~

::

The simple diode is an electrical one port, where a heat port is added,
which is defined in the Modelica.Thermal library. It consists of the
diode itself and an parallel ohmic resistance *R*. The diode formula is:

::

                    v/vt_t
      i  =  ids ( e        - 1).

where vt\_t depends on the temperature of the heat port:

::

      vt_t = k*temp/q

If the exponent *v/vt\_t* reaches the limit *maxex*, the diode
characterisic is linearly continued to avoid overflow.
 The thermal power is calculated by *i\*v*.

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
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | Ids           | 1.e-6     | Saturation current [A]                                |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                  | Maxexp        | 15        | Max. exponent for linear continuation                 |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | R             | 1.e8      | Parallel ohmic resistance [Ohm]                       |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                  | EG            | 1.11      | activation energy                                     |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                  | N             | 1         | Emission coefficient                                  |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | TNOM          | 300.15    | Parameter measurement temperature [K]                 |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Real                                                                  | XTI           | 3         | Temperature exponent of saturation current            |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Boolean                                                               | useHeatPort   | true      | =true, if HeatPort is enabled                         |
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

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HeatingDiode "Simple diode with heating port"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Modelica.SIunits.Current Ids=1.e-6 "Saturation current";
      /* parameter Modelica.SIunits.Voltage Vt=0.04 "Voltage equivalent of temperature (kT/qn)"; */
      parameter Real Maxexp(final min=Modelica.Constants.small) = 15 
        "Max. exponent for linear continuation";
      parameter Modelica.SIunits.Resistance R=1.e8 "Parallel ohmic resistance";
      parameter Real EG=1.11 "activation energy";
      parameter Real N=1 "Emission coefficient";
      parameter Modelica.SIunits.Temperature TNOM=300.15 
        "Parameter measurement temperature";
      parameter Real XTI=3 "Temperature exponent of saturation current";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    useHeatPort=true);

      Modelica.SIunits.Temperature vt_t "Temperature voltage";
      Modelica.SIunits.Current id "diode current";
    protected 
      Real k=1.380662e-23 "Boltzmann's constant, J/K";
      Real q=1.6021892e-19 "Electron charge, As";
      Modelica.SIunits.Temperature htemp "auxiliary temperature";
      Real aux;
      Real auxp;
      Real maxexp=exp(Maxexp);
    equation 
      assert( T_heatPort > 0,"temperature must be positive");
      htemp = T_heatPort;
      vt_t = k*htemp/q;

      id = exlin((v/(N*vt_t)), Maxexp) - 1;

      aux = (htemp/TNOM - 1)*EG/(N*vt_t);
      auxp = exp(aux);

      i = Ids*id*pow(htemp/TNOM, XTI/N)*auxp + v/R;

      LossPower = i*v;
    end HeatingDiode;

--------------

|image37| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.HeatingNMOS
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple MOS Transistor with heating port**

.. figure:: Modelica.Electrical.Analog.Semiconductors.HeatingNMOSD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.HeatingNMOS

   Modelica.Electrical.Analog.Semiconductors.HeatingNMOS

Information
~~~~~~~~~~~

::

The NMos model is a simple model of a n-channel metal-oxide
semiconductor FET. It differs slightly from the device used in the SPICE
simulator. For more details please care for H. Spiro.
 A heating port is added for thermal electric simulation. The heating
port is defined in the Modelica.Thermal library.
The model does not consider capacitances. A high drain-source resistance
RDS is included to avoid numerical difficulties.

::

      W       L      Beta         Vt      K2     K5       DW       DL
      m       m      A/V^2        V       -      -        m        m
      12.e-6  4.e-6  0.062e-3    -4.5     0.24   0.61    -1.2e-6  -0.9e-6      depletion
      60.e-6  3.e-6  0.048e-3     0.1     0.08   0.68    -1.2e-6  -0.9e-6      enhancement
      12.e-6  4.e-6  0.0625e-3   -0.8     0.21   0.78    -1.2e-6  -0.9e-6      zero
      50.e-6  8.e-6  0.0299e-3    0.24    1.144  0.7311  -5.4e-6  -4.e-6
      20.e-6  6.e-6  0.041e-3     0.8     1.144  0.7311  -2.5e-6  -1.5e-6
      30.e-6  9.e-6  0.025e-3    -4.0     0.861  0.878   -3.4e-6  -1.74e-6
      30.e-6  5.e-6  0.031e-3     0.6     1.5    0.72     0       -3.9e-6
      50.e-6  6.e-6  0.0414e-3   -3.8     0.34   0.8     -1.6e-6  -2.e-6       depletion
      50.e-6  5.e-6  0.03e-3      0.37    0.23   0.86    -1.6e-6  -2.e-6       enhancement
      50.e-6  6.e-6  0.038e-3    -0.9     0.23   0.707   -1.6e-6  -2.e-6       zero
      20.e-6  4.e-6  0.06776e-3   0.5409  0.065  0.71    -0.8e-6  -0.2e-6
      20.e-6  4.e-6  0.06505e-3   0.6209  0.065  0.71    -0.8e-6  -0.2e-6
      20.e-6  4.e-6  0.05365e-3   0.6909  0.03   0.8     -0.3e-6  -0.2e-6
      20.e-6  4.e-6  0.05365e-3   0.4909  0.03   0.8     -0.3e-6  -0.2e-6
      12.e-6  4.e-6  0.023e-3    -4.5     0.29   0.6      0        0           depletion
      60.e-6  3.e-6  0.022e-3     0.1     0.11   0.65     0        0           enhancement
      12.e-6  4.e-6  0.038e-3    -0.8     0.33   0.6      0        0           zero
      20.e-6  6.e-6  0.022e-3     0.8     1      0.66     0        0

**References:**

Spiro, H.: Simulation integrierter Schaltungen. R. Oldenbourg Verlag
Muenchen Wien 1990.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| Type                                                                            | Name          | Default    | Description                                           |
+=================================================================================+===============+============+=======================================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | W             | 20.e-6     | Width [m]                                             |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | L             | 6.e-6      | Length [m]                                            |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Transconductance <Modelica_SIunits.html#Modelica.SIunits.Transconductance>`_   | Beta          | 0.041e-3   | Transconductance parameter [A/V2]                     |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Vt            | 0.8        | Zero bias threshold voltage [V]                       |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| Real                                                                            | K2            | 1.144      | Bulk threshold parameter                              |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| Real                                                                            | K5            | 0.7311     | Reduction of pinch-off region                         |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | dW            | -2.5e-6    | narrowing of channel [m]                              |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | dL            | -1.5e-6    | shortening of channel [m]                             |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_               | RDS           | 1.e+7      | Drain-Source-Resistance [Ohm]                         |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | Tnom          | 300.15     | Parameter measurement temperature [K]                 |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| Real                                                                            | kvt           | -6.96e-3   | fitting parameter for Vt                              |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| Real                                                                            | kk2           | 6.0e-4     | fitting parameter for K22                             |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| Boolean                                                                         | useHeatPort   | true       | =true, if HeatPort is enabled                         |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T             | 293.15     | Fixed device temperature if useHeatPort = false [K]   |
+---------------------------------------------------------------------------------+---------------+------------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                 | Name       | Description   |
+======================================================================================================================+============+===============+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | D          | Drain         |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | G          | Gate          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | S          | Source        |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | B          | Bulk          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |               |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HeatingNMOS "Simple MOS Transistor with heating port"

      Modelica.Electrical.Analog.Interfaces.Pin D "Drain";
      Modelica.Electrical.Analog.Interfaces.Pin G "Gate";
      Modelica.Electrical.Analog.Interfaces.Pin S "Source";
      Modelica.Electrical.Analog.Interfaces.Pin B "Bulk";
      parameter Modelica.SIunits.Length W=20.e-6 "Width";
      parameter Modelica.SIunits.Length L=6.e-6 "Length";
      parameter Modelica.SIunits.Transconductance Beta=0.041e-3 
        "Transconductance parameter";
      parameter Modelica.SIunits.Voltage Vt=0.8 "Zero bias threshold voltage";
      parameter Real K2=1.144 "Bulk threshold parameter";
      parameter Real K5=0.7311 "Reduction of pinch-off region";
      parameter Modelica.SIunits.Length dW=-2.5e-6 "narrowing of channel";
      parameter Modelica.SIunits.Length dL=-1.5e-6 "shortening of channel";
      parameter Modelica.SIunits.Resistance RDS=1.e+7 "Drain-Source-Resistance";
      parameter Modelica.SIunits.Temperature Tnom=300.15 
        "Parameter measurement temperature";
      parameter Real kvt=-6.96e-3 "fitting parameter for Vt";
      parameter Real kk2=6.0e-4 "fitting parameter for K22";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(
         useHeatPort=true);
    protected 
      Real v;
      Real uds;
      Real ubs;
      Real ugst;
      Real ud;
      Real us;
      Real id;
      Real gds;
      Real beta_t;
      Real vt_t;
      Real k2_t;
    equation 
      assert(L + dL > 0, "Heating NMOS: Effective length must be positive");
      assert(W + dW > 0, "Heating NMOS: Effective width  must be positive");
      assert(T_heatPort > 0,"Heating NMOS: Temperature must be positive");
      gds = if (RDS < 1.e-20 and RDS > -1.e-20) then 1.e20 else 1/RDS;
      v = beta_t*(W + dW)/(L + dL);
      ud = smooth(0,if (D.v < S.v) then S.v else D.v);
      us = smooth(0,if (D.v < S.v) then D.v else S.v);
      uds = ud - us;
      ubs = smooth(0,if (B.v > us) then 0 else B.v - us);
      ugst = (G.v - us - vt_t + k2_t*ubs)*K5;
      id = smooth(0,if (ugst <= 0) then uds*gds else if (ugst > uds) then v*uds*(
        ugst - uds/2) + uds*gds else v*ugst*ugst/2 + uds*gds);

      beta_t = Beta*pow((T_heatPort/Tnom), -1.5);
      vt_t = Vt*(1 + (T_heatPort - Tnom)*kvt);
      k2_t = K2*(1 + (T_heatPort - Tnom)*kk2);

      G.i = 0;
      D.i = smooth(0,if (D.v < S.v) then -id else id);
      S.i = smooth(0,if (D.v < S.v) then id else -id);
      B.i = 0;
      LossPower = D.i*(D.v - S.v);
    end HeatingNMOS;

--------------

|image38| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.HeatingPMOS
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple PMOS Transistor with heating port**

.. figure:: Modelica.Electrical.Analog.Semiconductors.HeatingPMOSD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.HeatingPMOS

   Modelica.Electrical.Analog.Semiconductors.HeatingPMOS

Information
~~~~~~~~~~~

::

The PMOS model is a simple model of a p-channel metal-oxide
semiconductor FET. It differs slightly from the device used in the SPICE
simulator. For more details please care for H. Spiro.
A heating port is added for thermal electric simulation. The heating
port is defined in the Modelica.Thermal library.
The model does not consider capacitances. A high drain-source resistance
RDS is included to avoid numerical difficulties.

**References:**
    Spiro, H.: Simulation integrierter Schaltungen. R. Oldenbourg Verlag
    Muenchen Wien 1990.

Some typical parameter sets are:

::

      W       L      Beta        Vt    K2     K5      DW       DL
      m       m      A/V^2       V     -      -       m        m
      50.e-6  8.e-6  0.0085e-3  -0.15  0.41   0.839  -3.8e-6  -4.0e-6
      20.e-6  6.e-6  0.0105e-3  -1.0   0.41   0.839  -2.5e-6  -2.1e-6
      30.e-6  5.e-6  0.0059e-3  -0.3   0.98   1.01    0       -3.9e-6
      30.e-6  5.e-6  0.0152e-3  -0.69  0.104  1.1    -0.8e-6  -0.4e-6
      30.e-6  5.e-6  0.0163e-3  -0.69  0.104  1.1    -0.8e-6  -0.4e-6
      30.e-6  5.e-6  0.0182e-3  -0.69  0.086  1.06   -0.1e-6  -0.6e-6
      20.e-6  6.e-6  0.0074e-3  -1.    0.4    0.59    0        0

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| Type                                                                            | Name          | Default     | Description                                           |
+=================================================================================+===============+=============+=======================================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | W             | 20.0e-6     | Width [m]                                             |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | L             | 6.0e-6      | Length [m]                                            |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Transconductance <Modelica_SIunits.html#Modelica.SIunits.Transconductance>`_   | Beta          | 0.0105e-3   | Transconductance parameter [A/V2]                     |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Vt            | -1.0        | Zero bias threshold voltage [V]                       |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| Real                                                                            | K2            | 0.41        | Bulk threshold parameter                              |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| Real                                                                            | K5            | 0.839       | Reduction of pinch-off region                         |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | dW            | -2.5e-6     | Narrowing of channel [m]                              |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | dL            | -2.1e-6     | Shortening of channel [m]                             |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_               | RDS           | 1.e+7       | Drain-Source-Resistance [Ohm]                         |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | Tnom          | 300.15      | Parameter measurement temperature [K]                 |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| Real                                                                            | kvt           | -2.9e-3     | fitting parameter for Vt                              |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| Real                                                                            | kk2           | 6.2e-4      | fitting parameter for Kk2                             |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| Boolean                                                                         | useHeatPort   | true        | =true, if HeatPort is enabled                         |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T             | 293.15      | Fixed device temperature if useHeatPort = false [K]   |
+---------------------------------------------------------------------------------+---------------+-------------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                 | Name       | Description   |
+======================================================================================================================+============+===============+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | D          | Drain         |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | G          | Gate          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | S          | Source        |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | B          | Bulk          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |               |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HeatingPMOS "Simple PMOS Transistor with heating port"

      Modelica.Electrical.Analog.Interfaces.Pin D "Drain";
      Modelica.Electrical.Analog.Interfaces.Pin G "Gate";
      Modelica.Electrical.Analog.Interfaces.Pin S "Source";
      Modelica.Electrical.Analog.Interfaces.Pin B "Bulk";
      parameter Modelica.SIunits.Length W=20.0e-6 "Width";
      parameter Modelica.SIunits.Length L=6.0e-6 "Length";
      parameter Modelica.SIunits.Transconductance Beta=0.0105e-3 
        "Transconductance parameter";
      parameter Modelica.SIunits.Voltage Vt=-1.0 "Zero bias threshold voltage";
      parameter Real K2=0.41 "Bulk threshold parameter";
      parameter Real K5=0.839 "Reduction of pinch-off region";
      parameter Modelica.SIunits.Length dW=-2.5e-6 "Narrowing of channel";
      parameter Modelica.SIunits.Length dL=-2.1e-6 "Shortening of channel";
      parameter Modelica.SIunits.Resistance RDS=1.e+7 "Drain-Source-Resistance";
      parameter Modelica.SIunits.Temperature Tnom=300.15 
        "Parameter measurement temperature";
      parameter Real kvt=-2.9e-3 "fitting parameter for Vt";
      parameter Real kk2=6.2e-4 "fitting parameter for Kk2";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(
         useHeatPort=true);
    protected 
      Real v;
      Real uds;
      Real ubs;
      Real ugst;
      Real ud;
      Real us;
      Real id;
      Real gds;
      Real beta_t;
      Real vt_t;
      Real k2_t;
    equation 
      assert(L + dL > 0, "HeatingPMOS: Effective length must be positive");
      assert(W + dW > 0, "HeatingPMOS: Effective width  must be positive");
      assert( T_heatPort > 0,"HeatingPMOS: Temperature must be positive");
      gds = if (RDS < 1.e-20 and RDS > -1.e-20) then 1.e20 else 1/RDS;
      v = beta_t*(W + dW)/(L + dL);
      ud = smooth(0,if (D.v > S.v) then S.v else D.v);
      us = smooth(0,if (D.v > S.v) then D.v else S.v);
      uds = ud - us;
      ubs = smooth(0,if (B.v < us) then 0 else B.v - us);
      ugst = (G.v - us - vt_t + k2_t*ubs)*K5;
      id = smooth(0,if (ugst >= 0) then uds*gds else if (ugst < uds) then -v*uds*(
        ugst - uds/2) + uds*gds else -v*ugst*ugst/2 + uds*gds);

      beta_t = Beta*pow((T_heatPort/Tnom), -1.5);
      vt_t = Vt*(1 + (T_heatPort - Tnom)*kvt);
      k2_t = K2*(1 + (T_heatPort - Tnom)*kk2);

      G.i = 0;
      D.i = smooth(0,if (D.v > S.v) then -id else id);
      S.i = smooth(0,if (D.v > S.v) then id else -id);
      B.i = 0;
      LossPower = D.i*(D.v - S.v);
    end HeatingPMOS;

--------------

|image39| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.HeatingNPN
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple NPN BJT according to Ebers-Moll with heating port**

.. figure:: Modelica.Electrical.Analog.Semiconductors.HeatingNPND.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.HeatingNPN

   Modelica.Electrical.Analog.Semiconductors.HeatingNPN

Information
~~~~~~~~~~~

::

This model is a simple model of a bipolar npn junction transistor
according to Ebers-Moll.
A heating port is added for thermal electric simulation. The heating
port is defined in the Modelica.Thermal library.
A typical parameter set is (the parameter Vt is no longer used):

::

      Bf  Br  Is     Vak  Tauf    Taur  Ccs   Cje     Cjc     Phie  Me   PHic   Mc     Gbc    Gbe
      -   -   A      V    s       s     F     F       F       V     -    V      -      mS     mS
      50  0.1 1e-16  0.02 0.12e-9 5e-9  1e-12 0.4e-12 0.5e-12 0.8   0.4  0.8    0.333  1e-15  1e-15

**References:**

Vlach, J.; Singal, K.: Computer methods for circuit analysis and design.
Van Nostrand Reinhold, New York 1983 on page 317 ff.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Type                                                                            | Name          | Default         | Description                                           |
+=================================================================================+===============+=================+=======================================================+
| Real                                                                            | Bf            | 50              | Forward beta                                          |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | Br            | 0.1             | Reverse beta                                          |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                     | Is            | 1.e-16          | Transport saturation current [A]                      |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `InversePotential <Modelica_SIunits.html#Modelica.SIunits.InversePotential>`_   | Vak           | 0.02            | Early voltage (inverse), 1/Volt [1/V]                 |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                           | Tauf          | 0.12e-9         | Ideal forward transit time [s]                        |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                           | Taur          | 5e-9            | Ideal reverse transit time [s]                        |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Ccs           | 1e-12           | Collector-substrat(ground) cap. [F]                   |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Cje           | 0.4e-12         | Base-emitter zero bias depletion cap. [F]             |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Cjc           | 0.5e-12         | Base-coll. zero bias depletion cap. [F]               |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Phie          | 0.8             | Base-emitter diffusion voltage [V]                    |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | Me            | 0.4             | Base-emitter gradation exponent                       |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Phic          | 0.8             | Base-collector diffusion voltage [V]                  |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | Mc            | 0.333           | Base-collector gradation exponent                     |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_             | Gbc           | 1e-15           | Base-collector conductance [S]                        |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_             | Gbe           | 1e-15           | Base-emitter conductance [S]                          |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | EMin          | -100            | if x < EMin, the exp(x) function is linearized        |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | EMax          | 40              | if x > EMax, the exp(x) function is linearized        |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | Tnom          | 300.15          | Parameter measurement temperature [K]                 |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | XTI           | 3               | Temperature exponent for effect on Is                 |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | XTB           | 0               | Forward and reverse beta temperature exponent         |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | EG            | 1.11            | Energy gap for temperature effect on Is               |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | NF            | 1.0             | Forward current emission coefficient                  |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | NR            | 1.0             | Reverse current emission coefficient                  |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | K             | 1.3806226e-23   | Boltzmann's constant                                  |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | q             | 1.6021918e-19   | Elementary electronic charge                          |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Boolean                                                                         | useHeatPort   | true            | =true, if HeatPort is enabled                         |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T             | 293.15          | Fixed device temperature if useHeatPort = false [K]   |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                 | Name       | Description   |
+======================================================================================================================+============+===============+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |               |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | C          | Collector     |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | B          | Base          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | E          | Emitter       |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HeatingNPN 
      "Simple NPN BJT according to Ebers-Moll with heating port"
      parameter Real Bf=50 "Forward beta";
      parameter Real Br=0.1 "Reverse beta";
      parameter Modelica.SIunits.Current Is=1.e-16 "Transport saturation current";
      parameter Modelica.SIunits.InversePotential Vak=0.02 
        "Early voltage (inverse), 1/Volt";
      parameter Modelica.SIunits.Time Tauf=0.12e-9 "Ideal forward transit time";
      parameter Modelica.SIunits.Time Taur=5e-9 "Ideal reverse transit time";
      parameter Modelica.SIunits.Capacitance Ccs=1e-12 
        "Collector-substrat(ground) cap.";
      parameter Modelica.SIunits.Capacitance Cje=0.4e-12 
        "Base-emitter zero bias depletion cap.";
      parameter Modelica.SIunits.Capacitance Cjc=0.5e-12 
        "Base-coll. zero bias depletion cap.";
      parameter Modelica.SIunits.Voltage Phie=0.8 "Base-emitter diffusion voltage";
      parameter Real Me=0.4 "Base-emitter gradation exponent";
      parameter Modelica.SIunits.Voltage Phic=0.8 
        "Base-collector diffusion voltage";
      parameter Real Mc=0.333 "Base-collector gradation exponent";
      parameter Modelica.SIunits.Conductance Gbc=1e-15 "Base-collector conductance";
      parameter Modelica.SIunits.Conductance Gbe=1e-15 "Base-emitter conductance";
      parameter Real EMin=-100 "if x < EMin, the exp(x) function is linearized";
      parameter Real EMax=40 "if x > EMax, the exp(x) function is linearized";
      parameter Modelica.SIunits.Temperature Tnom=300.15 
        "Parameter measurement temperature";
      parameter Real XTI=3 "Temperature exponent for effect on Is";
      parameter Real XTB=0 "Forward and reverse beta temperature exponent";
      parameter Real EG=1.11 "Energy gap for temperature effect on Is";
      parameter Real NF=1.0 "Forward current emission coefficient";
      parameter Real NR=1.0 "Reverse current emission coefficient";
      parameter Real K=1.3806226e-23 "Boltzmann's constant";
      parameter Real q=1.6021918e-19 "Elementary electronic charge";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(
         useHeatPort=true);
      /*protected*/
      Real vbc;
      Real vbe;
      Real qbk;
      Real ibc;
      Real ibe;
      Real cbc;
      Real cbe;
      Real ExMin;
      Real ExMax;
      Real Capcje;
      Real Capcjc;
      Real is_t;
      Real br_t;
      Real bf_t;
      Real vt_t;
      Real hexp;
      Real htempexp;
    public 
      Modelica.Electrical.Analog.Interfaces.Pin C "Collector";
      Modelica.Electrical.Analog.Interfaces.Pin B "Base";
      Modelica.Electrical.Analog.Interfaces.Pin E "Emitter";
    equation 
      assert( T_heatPort > 0,"temperature must be positive");
      ExMin = exp(EMin);
      ExMax = exp(EMax);
      vbc = B.v - C.v;
      vbe = B.v - E.v;
      qbk = 1 - vbc*Vak;

      hexp = (T_heatPort/Tnom - 1)*EG/vt_t;
      htempexp = smooth(1,if (hexp < EMin) then ExMin*(hexp - EMin + 1) else if (
        hexp > EMax) then ExMax*(hexp - EMax + 1) else exp(hexp));

      is_t = Is*pow((T_heatPort/Tnom), XTI)*htempexp;
      br_t = Br*pow((T_heatPort/Tnom), XTB);
      bf_t = Bf*pow((T_heatPort/Tnom), XTB);
      vt_t = (K/q)*T_heatPort;

      ibc = smooth(1,(if (vbc/(NR*vt_t) < EMin) then is_t*(ExMin*(vbc/(NR*vt_t) -
        EMin + 1) - 1) + vbc*Gbc else if (vbc/(NR*vt_t) > EMax) then is_t*(
        ExMax*(vbc/(NR*vt_t) - EMax + 1) - 1) + vbc*Gbc else is_t*(exp(vbc/
        (NR*vt_t)) - 1) + vbc*Gbc));
      ibe = smooth(1,(if (vbe/(NF*vt_t) < EMin) then is_t*(ExMin*(vbe/(NF*vt_t) -
        EMin + 1) - 1) + vbe*Gbe else if (vbe/(NF*vt_t) > EMax) then is_t*(
        ExMax*(vbe/(NF*vt_t) - EMax + 1) - 1) + vbe*Gbe else is_t*(exp(vbe/
        (NF*vt_t)) - 1) + vbe*Gbe));
      Capcjc = smooth(1,(if (vbc/Phic > 0) then Cjc*(1 + Mc*vbc/Phic) else Cjc*pow(1
         - vbc/Phic, -Mc)));
      Capcje = smooth(1,(if (vbe/Phie > 0) then Cje*(1 + Me*vbe/Phie) else Cje*pow(1
         - vbe/Phie, -Me)));
      cbc = smooth(1,(if (vbc/(NR*vt_t) < EMin) then Taur*is_t/(NR*vt_t)*ExMin*(vbc/(
        NR*vt_t) - EMin + 1) + Capcjc else if (vbc/(NR*vt_t) > EMax) then 
        Taur*is_t/(NR*vt_t)*ExMax*(vbc/(NR*vt_t) - EMax + 1) + Capcjc else 
        Taur*is_t/(NR*vt_t)*exp(vbc/(NR*vt_t)) + Capcjc));
      cbe = smooth(1,(if (vbe/(NF*vt_t) < EMin) then Tauf*is_t/(NF*vt_t)*ExMin*(vbe/(
        NF*vt_t) - EMin + 1) + Capcje else if (vbe/(NF*vt_t) > EMax) then 
        Tauf*is_t/(NF*vt_t)*ExMax*(vbe/(NF*vt_t) - EMax + 1) + Capcje else 
        Tauf*is_t/(NF*vt_t)*exp(vbe/(NF*vt_t)) + Capcje));
      C.i = (ibe - ibc)*qbk - ibc/br_t - cbc*der(vbc) + Ccs*der(C.v);
      B.i = ibe/bf_t + ibc/br_t + cbc*der(vbc) + cbe*der(vbe);
      E.i = -B.i - C.i + Ccs*der(C.v);

      LossPower = (vbc*ibc/br_t + vbe*ibe/bf_t + (ibe - ibc)*qbk*(C.v - E.v));
    end HeatingNPN;

--------------

|image40| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.HeatingPNP
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple PNP BJT according to Ebers-Moll with heating port**

.. figure:: Modelica.Electrical.Analog.Semiconductors.HeatingPNPD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.HeatingPNP

   Modelica.Electrical.Analog.Semiconductors.HeatingPNP

Information
~~~~~~~~~~~

::

This model is a simple model of a bipolar pnp junction transistor
according to Ebers-Moll.
A heating port is added for thermal electric simulation. The heating
port is defined in the Modelica.Thermal library.
A typical parameter set is (the parameter Vt is no longer used):

::

      Bf  Br  Is     Vak  Tauf    Taur  Ccs   Cje     Cjc     Phie  Me   PHic   Mc     Gbc    Gbe
      -   -   A      V    s       s     F     F       F       V     -    V      -      mS     mS
      50  0.1 1e-16  0.02 0.12e-9 5e-9  1e-12 0.4e-12 0.5e-12 0.8   0.4  0.8    0.333  1e-15  1e-15

**References:**

Vlach, J.; Singal, K.: Computer methods for circuit analysis and design.
Van Nostrand Reinhold, New York 1983 on page 317 ff.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Type                                                                            | Name          | Default         | Description                                           |
+=================================================================================+===============+=================+=======================================================+
| Real                                                                            | Bf            | 50              | Forward beta                                          |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | Br            | 0.1             | Reverse beta                                          |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                     | Is            | 1.e-16          | Transport saturation current [A]                      |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `InversePotential <Modelica_SIunits.html#Modelica.SIunits.InversePotential>`_   | Vak           | 0.02            | Early voltage (inverse), 1/Volt [1/V]                 |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                           | Tauf          | 0.12e-9         | Ideal forward transit time [s]                        |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                           | Taur          | 5e-9            | Ideal reverse transit time [s]                        |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Ccs           | 1e-12           | Collector-substrat(ground) cap. [F]                   |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Cje           | 0.4e-12         | Base-emitter zero bias depletion cap. [F]             |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | Cjc           | 0.5e-12         | Base-coll. zero bias depletion cap. [F]               |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Phie          | 0.8             | Base-emitter diffusion voltage [V]                    |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | Me            | 0.4             | Base-emitter gradation exponent                       |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | Phic          | 0.8             | Base-collector diffusion voltage [V]                  |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | Mc            | 0.333           | Base-collector gradation exponent                     |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_             | Gbc           | 1e-15           | Base-collector conductance [S]                        |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_             | Gbe           | 1e-15           | Base-emitter conductance [S]                          |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | EMin          | -100            | if x < EMin, the exp(x) function is linearized        |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | EMax          | 40              | if x > EMax, the exp(x) function is linearized        |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | Tnom          | 300.15          | Parameter measurement temperature [K]                 |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | XTI           | 3               | Temperature exponent for effect on Is                 |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | XTB           | 0               | Forward and reverse beta temperature exponent         |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | EG            | 1.11            | Energy gap for temperature effect on Is               |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | NF            | 1.0             | Forward current emission coefficient                  |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | NR            | 1.0             | Reverse current emission coefficient                  |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | K             | 1.3806226e-23   | Boltzmann's constant                                  |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Real                                                                            | q             | 1.6021918e-19   | Elementary electronic charge                          |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| Boolean                                                                         | useHeatPort   | true            | =true, if HeatPort is enabled                         |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T             | 293.15          | Fixed device temperature if useHeatPort = false [K]   |
+---------------------------------------------------------------------------------+---------------+-----------------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                 | Name       | Description   |
+======================================================================================================================+============+===============+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |               |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | C          | Collector     |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | B          | Base          |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                        | E          | Emitter       |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HeatingPNP 
      "Simple PNP BJT according to Ebers-Moll with heating port"
      parameter Real Bf=50 "Forward beta";
      parameter Real Br=0.1 "Reverse beta";
      parameter Modelica.SIunits.Current Is=1.e-16 "Transport saturation current";
      parameter Modelica.SIunits.InversePotential Vak=0.02 
        "Early voltage (inverse), 1/Volt";
      parameter Modelica.SIunits.Time Tauf=0.12e-9 "Ideal forward transit time";
      parameter Modelica.SIunits.Time Taur=5e-9 "Ideal reverse transit time";
      parameter Modelica.SIunits.Capacitance Ccs=1e-12 
        "Collector-substrat(ground) cap.";
      parameter Modelica.SIunits.Capacitance Cje=0.4e-12 
        "Base-emitter zero bias depletion cap.";
      parameter Modelica.SIunits.Capacitance Cjc=0.5e-12 
        "Base-coll. zero bias depletion cap.";
      parameter Modelica.SIunits.Voltage Phie=0.8 "Base-emitter diffusion voltage";
      parameter Real Me=0.4 "Base-emitter gradation exponent";
      parameter Modelica.SIunits.Voltage Phic=0.8 
        "Base-collector diffusion voltage";
      parameter Real Mc=0.333 "Base-collector gradation exponent";
      parameter Modelica.SIunits.Conductance Gbc=1e-15 "Base-collector conductance";
      parameter Modelica.SIunits.Conductance Gbe=1e-15 "Base-emitter conductance";
      parameter Real EMin=-100 "if x < EMin, the exp(x) function is linearized";
      parameter Real EMax=40 "if x > EMax, the exp(x) function is linearized";
      parameter Modelica.SIunits.Temperature Tnom=300.15 
        "Parameter measurement temperature";
      parameter Real XTI=3 "Temperature exponent for effect on Is";
      parameter Real XTB=0 "Forward and reverse beta temperature exponent";
      parameter Real EG=1.11 "Energy gap for temperature effect on Is";
      parameter Real NF=1.0 "Forward current emission coefficient";
      parameter Real NR=1.0 "Reverse current emission coefficient";
      parameter Real K=1.3806226e-23 "Boltzmann's constant";
      parameter Real q=1.6021918e-19 "Elementary electronic charge";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(
         useHeatPort=true);
    protected 
      Real vcb;
      Real veb;
      Real qbk;
      Real icb;
      Real ieb;
      Real ccb;
      Real ceb;
      Real ExMin;
      Real ExMax;
      Real Capcje;
      Real Capcjc;
      Real is_t;
      Real br_t;
      Real bf_t;
      Real vt_t;
      Real hexp;
      Real htempexp;
    public 
      Modelica.Electrical.Analog.Interfaces.Pin C "Collector";
      Modelica.Electrical.Analog.Interfaces.Pin B "Base";
      Modelica.Electrical.Analog.Interfaces.Pin E "Emitter";
    equation 
      assert( T_heatPort > 0,"temperature must be positive");
      ExMin = exp(EMin);
      ExMax = exp(EMax);
      vcb = C.v - B.v;
      veb = E.v - B.v;
      qbk = 1 - vcb*Vak;

      hexp = (T_heatPort/Tnom - 1)*EG/vt_t;
      htempexp = smooth(1,if (hexp < EMin) then ExMin*(hexp - EMin + 1) else if (
        hexp > EMax) then ExMax*(hexp - EMax + 1) else exp(hexp));

      is_t = Is*pow((T_heatPort/Tnom), XTI)*htempexp;
      br_t = Br*pow((T_heatPort/Tnom), XTB);
      bf_t = Bf*pow((T_heatPort/Tnom), XTB);
      vt_t = (K/q)*T_heatPort;

      icb = smooth(1,(if (vcb/(NR*vt_t) < EMin) then is_t*(ExMin*(vcb/(NR*vt_t) -
        EMin + 1) - 1) + vcb*Gbc else if (vcb/(NR*vt_t) > EMax) then is_t*(
        ExMax*(vcb/(NR*vt_t) - EMax + 1) - 1) + vcb*Gbc else is_t*(exp(vcb/
        (NR*vt_t)) - 1) + vcb*Gbc));

      ieb = smooth(1,(if (veb/(NF*vt_t) < EMin) then is_t*(ExMin*(veb/(NF*vt_t) -
        EMin + 1) - 1) + veb*Gbe else if (veb/(NF*vt_t) > EMax) then is_t*(
        ExMax*(veb/(NF*vt_t) - EMax + 1) - 1) + veb*Gbe else is_t*(exp(veb/
        (NF*vt_t)) - 1) + veb*Gbe));

      Capcjc = smooth(1,(if (vcb/Phic > 0) then Cjc*(1 + Mc*vcb/Phic) else Cjc*pow(1
         - vcb/Phic, -Mc)));
      Capcje = smooth(1,(if (veb/Phie > 0) then Cje*(1 + Me*veb/Phie) else Cje*pow(1
         - veb/Phie, -Me)));
      ccb = smooth(1,(if (vcb/(NR*vt_t) < EMin) then Taur*is_t/(NR*vt_t)*ExMin*(vcb/(
        NR*vt_t) - EMin + 1) + Capcjc else if (vcb/(NR*vt_t) > EMax) then 
        Taur*is_t/(NR*vt_t)*ExMax*(vcb/(NR*vt_t) - EMax + 1) + Capcjc else 
        Taur*is_t/(NR*vt_t)*exp(vcb/(NR*vt_t)) + Capcjc));
      ceb = smooth(1,(if (veb/(NF*vt_t) < EMin) then Tauf*is_t/(NF*vt_t)*ExMin*(veb/(
        NF*vt_t) - EMin + 1) + Capcje else if (veb/(NF*vt_t) > EMax) then 
        Tauf*is_t/(NF*vt_t)*ExMax*(veb/(NF*vt_t) - EMax + 1) + Capcje else 
        Tauf*is_t/(NF*vt_t)*exp(veb/(NF*vt_t)) + Capcje));
      C.i = icb/br_t + ccb*der(vcb) + Ccs*der(C.v) + (icb - ieb)*qbk;
      B.i = -ieb/bf_t - icb/br_t - ceb*der(veb) - ccb*der(vcb);
      E.i = -B.i - C.i + Ccs*der(C.v);

      LossPower = (vcb*icb/br_t + veb*ieb/bf_t + (icb - ieb)*qbk*(C.v- E.v));
    end HeatingPNP;

--------------

`Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.pow
-------------------------------------------------------------------------------------------------------------------------------------------

**Just a helper function for x^y in order that a symbolic engine can
apply some transformations more easily**

Inputs
~~~~~~

+--------+--------+-----------+---------------+
| Type   | Name   | Default   | Description   |
+========+========+===========+===============+
| Real   | x      |           |               |
+--------+--------+-----------+---------------+
| Real   | y      |           |               |
+--------+--------+-----------+---------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | z      |               |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function pow 
      "Just a helper function for x^y in order that a symbolic engine can apply some transformations more easily"

      input Real x;
      input Real y;
      output Real z;
    algorithm 
      z := x^y;
    end pow;

--------------

`Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.exlin
---------------------------------------------------------------------------------------------------------------------------------------------

**Exponential function linearly continued for x > Maxexp**

Inputs
~~~~~~

+--------+----------+-----------+---------------+
| Type   | Name     | Default   | Description   |
+========+==========+===========+===============+
| Real   | x        |           |               |
+--------+----------+-----------+---------------+
| Real   | Maxexp   |           |               |
+--------+----------+-----------+---------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | z      |               |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function exlin 
      "Exponential function linearly continued for x > Maxexp"

      input Real x;
      input Real Maxexp;
      output Real z;
    algorithm 
      z := if x > Maxexp then exp(Maxexp)*(1 + x - Maxexp) else exp(x);
    end exlin;

--------------

|image41| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.Thyristor
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple Thyristor Model**

.. figure:: Modelica.Electrical.Analog.Semiconductors.ThyristorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.Thyristor

   Modelica.Electrical.Analog.Semiconductors.Thyristor

Information
~~~~~~~~~~~

::

This is a simple thyristor model with three pins: Anode, Cathode and
Gate. There are three operating modes:conducting, blocking and reverse
breakthrough.
As long as the thyristor is in blocking mode it behaves like a linear
resistance Roff=VDRM^2/(VTM\*IH). But if the voltage between anode and
cathode exceeds VDRM or a positive gate current flows for a sufficient
time the mode changes to conducting mode. The model stays in conducting
mode until the anode current falls below the holding current IH. There
is no way to switch off the thyristor via the gate. If the voltage
between anode and cathode is negative, the model represents a diode
(parameters Vt, Nbv) with reverse breakthrough voltage VRRM.

The dV/dt switch on is not taken into account in this model. The gate
circuit is not influenced by the main circuit.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| Type                                                          | Name   | Default   | Description                                     |
+===============================================================+========+===========+=================================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | VDRM   | 100       | Forward breakthrough voltage [V]                |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | VRRM   | 100       | Reverse breakthrough voltage [V]                |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | IDRM   | 0.1       | Saturation current [A]                          |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | VTM    | 1.7       | Conducting voltage [V]                          |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | IH     | 6e-3      | Holding current [A]                             |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | ITM    | 25        | Conducting current [A]                          |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | VGT    | 0.7       | Gate trigger voltage [V]                        |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | IGT    | 5e-3      | Gate trigger current [A]                        |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | TON    | 1e-6      | Switch on time [s]                              |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | TOFF   | 15e-6     | Switch off time [s]                             |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | Vt     | 0.04      | Voltage equivalent of temperature (kT/qn) [V]   |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| Real                                                          | Nbv    | 0.74      | Reverse Breakthrough emission coefficient       |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                            | Name      | Description   |
+=================================================================================================================+===========+===============+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | Anode     |               |
+-----------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | Cathode   |               |
+-----------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | Gate      |               |
+-----------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Thyristor "Simple Thyristor Model"
      parameter Modelica.SIunits.Voltage VDRM(final min=0) = 100 
        "Forward breakthrough voltage";
      parameter Modelica.SIunits.Voltage VRRM(final min=0) = 100 
        "Reverse breakthrough voltage";
      parameter Modelica.SIunits.Current IDRM=0.1 "Saturation current";
      parameter Modelica.SIunits.Voltage VTM= 1.7 "Conducting voltage";
      parameter Modelica.SIunits.Current IH=6e-3 "Holding current";
      parameter Modelica.SIunits.Current ITM= 25 "Conducting current";

      parameter Modelica.SIunits.Voltage VGT= 0.7 "Gate trigger voltage";
      parameter Modelica.SIunits.Current IGT= 5e-3 "Gate trigger current";

      parameter Modelica.SIunits.Time TON = 1e-6 "Switch on time";
      parameter Modelica.SIunits.Time TOFF = 15e-6 "Switch off time";
      parameter Modelica.SIunits.Voltage Vt=0.04 
        "Voltage equivalent of temperature (kT/qn)";
      parameter Real Nbv=0.74 "Reverse Breakthrough emission coefficient";

      Real iGK "gate current";
      Real vGK "voltage between gate and cathode";
      Real vAK "voltage between anode and cathode";
      Real vControl(start=0);
      Real vContot;
      Real vConmain;

    public 
      Modelica.Electrical.Analog.Interfaces.PositivePin Anode;
      Modelica.Electrical.Analog.Interfaces.NegativePin Cathode;
      Modelica.Electrical.Analog.Interfaces.PositivePin Gate;

    protected 
      parameter Modelica.SIunits.Voltage Von=5;
      parameter Modelica.SIunits.Voltage Voff= 1.5;
      parameter Modelica.SIunits.Resistance Ron=(VTM-0.7)/ITM 
        "Forward conducting mode resistance";
      parameter Modelica.SIunits.Resistance Roff=(VDRM^2)/VTM/IH 
        "Blocking mode resistance";

    equation 
      //Kirchhoff's equations
      Anode.i+Gate.i+Cathode.i=0;
      vGK=Gate.v-Cathode.v;
      vAK=Anode.v-Cathode.v;

      // Gate and Control voltage
      iGK = Gate.i;
      vGK = smooth(0,(if vGK < 0.65 then VGT/IGT*iGK else 
            0.65^2/VGT+iGK*(VGT-0.65)/IGT));
      vContot = vConmain + smooth(0, if iGK < 0.95 * IGT then 0 else if iGK < 0.95*IGT + 1e-3 then 10000*(iGK-0.95*IGT)*vAK else 10* vAK);
      der(vControl)= (vContot - vControl) / (if (vContot - vControl) > 0 then 1.87*TON else 0.638*TOFF);

      // Anode-Cathode characteristics
      Anode.i= smooth(1, if vAK < -VRRM then -VRRM/Roff*exp(-(vAK+VRRM)/(Nbv*Vt)) else 
             if vControl<Voff then vAK/Roff else 
             if vControl<Von then vAK/(sqrt(Ron*Roff)*(Ron/Roff)^((3*((2*vControl-Von-Voff)/(2*(Von-Voff)))-4*((2*vControl-Von-Voff)/(2*(Von-Voff)))^3)/2)) else 
              vAK/Ron);

      // holding effect and forward breakthrough
      vConmain = (if Anode.i>IH or vAK>VDRM then Von else 0);

    end Thyristor;

--------------

|image42| `Modelica.Electrical.Analog.Semiconductors <Modelica_Electrical_Analog_Semiconductors.html#Modelica.Electrical.Analog.Semiconductors>`_.SimpleTriac
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple triac, based on Semiconductors.Thyristor model**

.. figure:: Modelica.Electrical.Analog.Semiconductors.SimpleTriacD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Semiconductors.SimpleTriac

   Modelica.Electrical.Analog.Semiconductors.SimpleTriac

Information
~~~~~~~~~~~

::

This is a simple TRIAC model based on the extended thyristor model
Modelica.Electrical.Analog.Semiconductors.Thyristor.
Two thyristors are contrarily connected in parallel, whereas each
transistor is connected with a diode.
Further information regarding the electrical component TRIAC can be
detected in documentation of the ideal TRIAC model.
As an additional information: this model is based on the
Modelica.Electrical.Analog.Semiconductors.Thyristor.

**Attention:** The model seems to be very sensitive with respect to the
choice of some parameters (e.g., VDRM, VRRM). This is caused by the
thyristor model. Further investigations are necessary.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| Type                                                          | Name   | Default   | Description                                     |
+===============================================================+========+===========+=================================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | VDRM   | 100       | Forward breakthrough voltage [V]                |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | VRRM   | 100       | Reverse breakthrough voltage [V]                |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | IDRM   | 0.1       | Saturation current [A]                          |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | VTM    | 1.7       | Conducting voltage [V]                          |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | IH     | 6e-3      | Holding current [A]                             |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | ITM    | 25        | Conducting current [A]                          |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | VGT    | 0.7       | Gate trigger voltage [V]                        |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | IGT    | 5e-3      | Gate trigger current [A]                        |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | TON    | 1e-6      | Switch on time [s]                              |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | TOFF   | 15e-6     | Switch off time [s]                             |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | Vt     | 0.04      | Voltage equivalent of temperature (kT/qn) [V]   |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+
| Real                                                          | Nbv    | 0.74      | Reverse Breakthrough emission coefficient       |
+---------------------------------------------------------------+--------+-----------+-------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                            | Name   | Description   |
+=================================================================================================================+========+===============+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      | Cathode       |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Anode         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | g      | Gate          |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SimpleTriac 
      "Simple triac, based on Semiconductors.Thyristor model"

      parameter Modelica.SIunits.Voltage VDRM(final min=0) = 100 
        "Forward breakthrough voltage";
      parameter Modelica.SIunits.Voltage VRRM(final min=0) = 100 
        "Reverse breakthrough voltage";
      parameter Modelica.SIunits.Current IDRM=0.1 "Saturation current";
      parameter Modelica.SIunits.Voltage VTM= 1.7 "Conducting voltage";
      parameter Modelica.SIunits.Current IH=6e-3 "Holding current";
      parameter Modelica.SIunits.Current ITM= 25 "Conducting current";

      parameter Modelica.SIunits.Voltage VGT= 0.7 "Gate trigger voltage";
      parameter Modelica.SIunits.Current IGT= 5e-3 "Gate trigger current";

      parameter Modelica.SIunits.Time TON = 1e-6 "Switch on time";
      parameter Modelica.SIunits.Time TOFF = 15e-6 "Switch off time";
      parameter Modelica.SIunits.Voltage Vt=0.04 
        "Voltage equivalent of temperature (kT/qn)";
      parameter Real Nbv=0.74 "Reverse Breakthrough emission coefficient";

      Modelica.Electrical.Analog.Interfaces.NegativePin n "Cathode";
      Modelica.Electrical.Analog.Interfaces.PositivePin p "Anode";
      Modelica.Electrical.Analog.Interfaces.PositivePin g "Gate";
      Modelica.Electrical.Analog.Semiconductors.Thyristor thyristor(VDRM=VDRM, VRRM=VRRM);
      Modelica.Electrical.Analog.Semiconductors.Thyristor thyristor1(VDRM=VDRM, VRRM=VRRM);

      Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode(Vknee=0);
      Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode1(Vknee=0);
    equation 
      connect(thyristor.Anode, n);
      connect(thyristor1.Anode, p);
      connect(thyristor1.Anode, thyristor.Cathode);
      connect(thyristor1.Cathode, thyristor.Anode);
      connect(thyristor.Gate, idealDiode.n);
      connect(idealDiode.p, g);
      connect(idealDiode1.n, thyristor1.Gate);
      connect(idealDiode1.p, g);
    end SimpleTriac;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:10
2010.

.. |Modelica.Electrical.Analog.Semiconductors.Diode| image:: Modelica.Electrical.Analog.Semiconductors.DiodeS.png
.. |Modelica.Electrical.Analog.Semiconductors.ZDiode| image:: Modelica.Electrical.Analog.Semiconductors.DiodeS.png
.. |Modelica.Electrical.Analog.Semiconductors.PMOS| image:: Modelica.Electrical.Analog.Semiconductors.PMOSS.png
.. |Modelica.Electrical.Analog.Semiconductors.NMOS| image:: Modelica.Electrical.Analog.Semiconductors.NMOSS.png
.. |Modelica.Electrical.Analog.Semiconductors.NPN| image:: Modelica.Electrical.Analog.Semiconductors.NPNS.png
.. |Modelica.Electrical.Analog.Semiconductors.PNP| image:: Modelica.Electrical.Analog.Semiconductors.PNPS.png
.. |Modelica.Electrical.Analog.Semiconductors.HeatingDiode| image:: Modelica.Electrical.Analog.Semiconductors.HeatingDiodeS.png
.. |Modelica.Electrical.Analog.Semiconductors.HeatingNMOS| image:: Modelica.Electrical.Analog.Semiconductors.HeatingNMOSS.png
.. |Modelica.Electrical.Analog.Semiconductors.HeatingPMOS| image:: Modelica.Electrical.Analog.Semiconductors.HeatingNMOSS.png
.. |Modelica.Electrical.Analog.Semiconductors.HeatingNPN| image:: Modelica.Electrical.Analog.Semiconductors.HeatingNPNS.png
.. |Modelica.Electrical.Analog.Semiconductors.HeatingPNP| image:: Modelica.Electrical.Analog.Semiconductors.HeatingPNPS.png
.. |Modelica.Electrical.Analog.Semiconductors.pow| image:: Modelica.Electrical.Analog.Semiconductors.powS.png
.. |Modelica.Electrical.Analog.Semiconductors.exlin| image:: Modelica.Electrical.Analog.Semiconductors.powS.png
.. |Modelica.Electrical.Analog.Semiconductors.Thyristor| image:: Modelica.Electrical.Analog.Semiconductors.ThyristorS.png
.. |Modelica.Electrical.Analog.Semiconductors.SimpleTriac| image:: Modelica.Electrical.Analog.Semiconductors.SimpleTriacS.png
.. |image15| image:: Modelica.Electrical.Analog.Semiconductors.DiodeS.png
.. |image16| image:: Modelica.Electrical.Analog.Semiconductors.DiodeS.png
.. |image17| image:: Modelica.Electrical.Analog.Semiconductors.PMOSS.png
.. |image18| image:: Modelica.Electrical.Analog.Semiconductors.NMOSS.png
.. |image19| image:: Modelica.Electrical.Analog.Semiconductors.NPNS.png
.. |image20| image:: Modelica.Electrical.Analog.Semiconductors.PNPS.png
.. |image21| image:: Modelica.Electrical.Analog.Semiconductors.HeatingDiodeS.png
.. |image22| image:: Modelica.Electrical.Analog.Semiconductors.HeatingNMOSS.png
.. |image23| image:: Modelica.Electrical.Analog.Semiconductors.HeatingNMOSS.png
.. |image24| image:: Modelica.Electrical.Analog.Semiconductors.HeatingNPNS.png
.. |image25| image:: Modelica.Electrical.Analog.Semiconductors.HeatingPNPS.png
.. |image26| image:: Modelica.Electrical.Analog.Semiconductors.powS.png
.. |image27| image:: Modelica.Electrical.Analog.Semiconductors.powS.png
.. |image28| image:: Modelica.Electrical.Analog.Semiconductors.ThyristorS.png
.. |image29| image:: Modelica.Electrical.Analog.Semiconductors.SimpleTriacS.png
.. |image30| image:: Modelica.Electrical.Analog.Semiconductors.DiodeI.png
.. |image31| image:: Modelica.Electrical.Analog.Semiconductors.DiodeI.png
.. |image32| image:: Modelica.Electrical.Analog.Semiconductors.PMOSI.png
.. |image33| image:: Modelica.Electrical.Analog.Semiconductors.NMOSI.png
.. |image34| image:: Modelica.Electrical.Analog.Semiconductors.NPNI.png
.. |image35| image:: Modelica.Electrical.Analog.Semiconductors.PNPI.png
.. |image36| image:: Modelica.Electrical.Analog.Semiconductors.HeatingDiodeI.png
.. |image37| image:: Modelica.Electrical.Analog.Semiconductors.HeatingNMOSI.png
.. |image38| image:: Modelica.Electrical.Analog.Semiconductors.HeatingPMOSI.png
.. |image39| image:: Modelica.Electrical.Analog.Semiconductors.HeatingNPNI.png
.. |image40| image:: Modelica.Electrical.Analog.Semiconductors.HeatingPNPI.png
.. |image41| image:: Modelica.Electrical.Analog.Semiconductors.ThyristorI.png
.. |image42| image:: Modelica.Electrical.Analog.Semiconductors.SimpleTriacI.png
