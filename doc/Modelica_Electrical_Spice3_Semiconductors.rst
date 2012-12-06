=========================================
Modelica.Electrical.Spice3.Semiconductors
=========================================

`Modelica.Electrical.Spice3 <Modelica_Electrical_Spice3.html#Modelica.Electrical.Spice3>`_.Semiconductors
---------------------------------------------------------------------------------------------------------

**Semiconductor devices and model cards**

Information
~~~~~~~~~~~

::

This package contains both the semiconductor devices models of SPICE3,
which are available, and their modelcards. The user should apply the
models of this package.

All models of this package extend models of the package Repository,
which contains the functions, parameters and data which are necessary to
model the behaviour of the semiconductor devices.The modelcard records
contain the SPICE3 technology parameters, which can be adjusted for more
than one MOS simultaneously.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| Name                                                                                                                                                                                              | Description                                            |
+===================================================================================================================================================================================================+========================================================+
| |image10| `M\_PMOS <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors.M_PMOS>`_                                                                            | PMOS MOSFET device                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image11| `M\_NMOS <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors.M_NMOS>`_                                                                            | NMOS MOSFET device                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image12| `ModelcardMOS <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors.ModelcardMOS>`_                                                                 | Record for the specification of modelcard parameters   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image13| `Q\_NPNBJT <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors.Q_NPNBJT>`_                                                                        | Bipolar junction transistor                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image14| `Q\_PNPBJT <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors.Q_PNPBJT>`_                                                                        | Bipolar junction transistor                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image15| `ModelcardBJT <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors.ModelcardBJT>`_                                                                 | Record for the specification of modelcard parameters   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image16| `D\_DIODE <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors.D_DIODE>`_                                                                          | Diode model                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image17| `ModelcardDIODE <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors.ModelcardDIODE>`_                                                             | Record for the specification of modelcard parameters   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image18| `R\_Resistor <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors.R_Resistor>`_                                                                    | Semiconductor resistor from SPICE3                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image19| `ModelcardRESISTOR <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors.ModelcardRESISTOR>`_                                                       | Record for the specification of modelcard parameters   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+

--------------

|image20| `Modelica.Electrical.Spice3.Semiconductors <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors>`_.M\_PMOS
---------------------------------------------------------------------------------------------------------------------------------------------------------

**PMOS MOSFET device**

.. figure:: Modelica.Electrical.Spice3.Semiconductors.M_PMOSD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Semiconductors.M\_PMOS

   Modelica.Electrical.Spice3.Semiconductors.M\_PMOS

Information
~~~~~~~~~~~

::

The model M\_PMOS is a P channel MOSFET transistor with fixed level 1:
Shichman-Hodges model

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
`Modelica.Electrical.Spice3.Internal.MOS <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.MOS>`_
(Metal-Oxide Semiconductor Field-Effect Transistor).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                                          | Name        | Default   | Description                                                                     |
+===============================================================================================================+=============+===========+=================================================================================+
| Integer                                                                                                       | mtype       | 1         | MOSFET type: 0 - N channel, 1 - P channel                                       |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                     | L           | 1e-4      | Length [m]                                                                      |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                     | W           | 1e-4      | Width [m]                                                                       |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                         | AD          | 0         | Area of the drain diffusion [m2]                                                |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                         | AS          | 0         | Area of the source diffusion [m2]                                               |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                     | PD          | 0         | Perimeter of the drain junction [m]                                             |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                     | PS          | 0         | Perimeter of the source junction [m]                                            |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| Real                                                                                                          | NRD         | 1         | Number of squares of the drain diffusions                                       |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| Real                                                                                                          | NRS         | 1         | Number of squares of the source diffusions                                      |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| Integer                                                                                                       | OFF         | 0         | Optional initial condition: 0 - IC not used, 1 - IC used, not implemented yet   |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                   | IC          |           | Initial condition values, not implemented yet [V]                               |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_                                                    | TEMP        | 27        | Operating temperature of the device [degC]                                      |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `ModelcardMOS <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardMOS>`_   | modelcard   |           | MOSFET modelcard                                                                |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                            | Name   | Description   |
+=================================================================================================================+========+===============+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | G      | gate node     |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | D      | drain node    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | S      | source node   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | B      | bulk node     |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model M_PMOS "PMOS MOSFET device"
      extends Modelica.Electrical.Spice3.Internal.MOS(
                              final mtype=1);
    equation 

    end M_PMOS;

--------------

|image21| `Modelica.Electrical.Spice3.Semiconductors <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors>`_.M\_NMOS
---------------------------------------------------------------------------------------------------------------------------------------------------------

**NMOS MOSFET device**

.. figure:: Modelica.Electrical.Spice3.Semiconductors.M_PMOSD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Semiconductors.M\_NMOS

   Modelica.Electrical.Spice3.Semiconductors.M\_NMOS

Information
~~~~~~~~~~~

::

The model M\_NMOS is a N channel MOSFET transistor with fixed level 1:
Shichman-Hodges model

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
`Modelica.Electrical.Spice3.Internal.MOS <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.MOS>`_
(Metal-Oxide Semiconductor Field-Effect Transistor).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                                          | Name        | Default   | Description                                                                     |
+===============================================================================================================+=============+===========+=================================================================================+
| Integer                                                                                                       | mtype       | 0         | MOSFET type: 0 - N channel, 1 - P channel                                       |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                     | L           | 1e-4      | Length [m]                                                                      |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                     | W           | 1e-4      | Width [m]                                                                       |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                         | AD          | 0         | Area of the drain diffusion [m2]                                                |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                         | AS          | 0         | Area of the source diffusion [m2]                                               |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                     | PD          | 0         | Perimeter of the drain junction [m]                                             |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                     | PS          | 0         | Perimeter of the source junction [m]                                            |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| Real                                                                                                          | NRD         | 1         | Number of squares of the drain diffusions                                       |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| Real                                                                                                          | NRS         | 1         | Number of squares of the source diffusions                                      |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| Integer                                                                                                       | OFF         | 0         | Optional initial condition: 0 - IC not used, 1 - IC used, not implemented yet   |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                   | IC          |           | Initial condition values, not implemented yet [V]                               |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_                                                    | TEMP        | 27        | Operating temperature of the device [degC]                                      |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+
| `ModelcardMOS <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardMOS>`_   | modelcard   |           | MOSFET modelcard                                                                |
+---------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                            | Name   | Description   |
+=================================================================================================================+========+===============+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | G      | gate node     |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | D      | drain node    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | S      | source node   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | B      | bulk node     |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model M_NMOS "NMOS MOSFET device"
      extends Modelica.Electrical.Spice3.Internal.MOS(
                              final mtype=0);
    equation 

    end M_NMOS;

--------------

`Modelica.Electrical.Spice3.Semiconductors <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors>`_.ModelcardMOS
----------------------------------------------------------------------------------------------------------------------------------------------------

**Record for the specification of modelcard parameters**

Information
~~~~~~~~~~~

::

Technology model parameters of MOSFET transistor with fixed level 1:
Shichman-Hodges model

In modelcards, that are typical for SPICE3, the so called technology
parameters are stored. These parameters are usually set for more than
one semiconductor device in a circuit, e.g., the temperature of a whole
electrical circuit.

::

Extends from
`Modelica.Electrical.Spice3.Internal.ModelcardMOS <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardMOS>`_
(Record with technological parameters (.model)).

Parameters
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| Type                                                                                                                                         | Name     | Default   | Description                                                                    |
+==============================================================================================================================================+==========+===========+================================================================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                  | VTO      | -1e40     | Zero-bias threshold voltage, default 0 [V]                                     |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Transconductance <Modelica_SIunits.html#Modelica.SIunits.Transconductance>`_                                                                | KP       | -1e40     | Transconductance parameter, default 2e-5 [A/V2]                                |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| Real                                                                                                                                         | GAMMA    | -1e40     | Bulk threshold parameter, default 0                                            |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                  | PHI      | -1e40     | Surface potential, default 0.6 [V]                                             |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `InversePotential <Modelica_SIunits.html#Modelica.SIunits.InversePotential>`_                                                                | LAMBDA   | 0         | Channel-length modulation, default 0 [1/V]                                     |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                            | RD       | -1e40     | Drain ohmic resistance, default 0 [Ohm]                                        |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                            | RS       | -1e40     | Source ohmic resistance, default 0 [Ohm]                                       |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_                                                                          | CBD      | -1e40     | Zero-bias B-D junction capacitance, default 0 [F]                              |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_                                                                          | CBS      | -1e40     | Zero-bias B-S junction capacitance, default 0 [F]                              |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                  | IS       | 1.e-14    | Bulk junction saturation current [A]                                           |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                  | PB       | 0.8       | Bulk junction potential [V]                                                    |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Permittivity <Modelica_SIunits.html#Modelica.SIunits.Permittivity>`_                                                                        | CGSO     | 0.0       | Gate-source overlap capacitance per meter channel width [F/m]                  |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Permittivity <Modelica_SIunits.html#Modelica.SIunits.Permittivity>`_                                                                        | CGDO     | 0.0       | Gate-drain overlap capacitance per meter channel width [F/m]                   |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Permittivity <Modelica_SIunits.html#Modelica.SIunits.Permittivity>`_                                                                        | CGBO     | 0.0       | Gate-bulk overlap capacitance per meter channel width [F/m]                    |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                            | RSH      | 0.0       | Drain and source diffusion sheet resistance [Ohm]                              |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `CapacitancePerArea <Modelica_SIunits.html#Modelica.SIunits.CapacitancePerArea>`_                                                            | CJ       | 0.0       | Zero-bias bulk junction bottom cap. per sq-meter of junction area [F/m2]       |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| Real                                                                                                                                         | MJ       | 0.5       | Bulk junction bottom grading coefficient                                       |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Permittivity <Modelica_SIunits.html#Modelica.SIunits.Permittivity>`_                                                                        | CJSW     | 0.0       | Zero-bias junction sidewall cap. per meter of junction perimeter [F/m]         |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| Real                                                                                                                                         | MJSW     | 0.5       | Bulk junction sidewall grading coefficient                                     |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `CurrentDensity <Modelica_SIunits.html#Modelica.SIunits.CurrentDensity>`_                                                                    | JS       | 0.0       | Bulk junction saturation current per sq-meter of junction area [A/m2]          |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                    | TOX      | -1e40     | Oxide thickness, default 1e-7 [m]                                              |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| Real                                                                                                                                         | NSUB     | -1e40     | Substrate doping, default 0                                                    |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `PerArea\_cm <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.PerArea_cm>`_                             | NSS      | 0.0       | Surface state density [1/cm2]                                                  |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| Real                                                                                                                                         | TPG      | 1.0       | Type of gate material: +1 opp. to substrate, -1 same as substrate, 0 Al gate   |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                    | LD       | 0.0       | Lateral diffusion [m]                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Area\_cmPerVoltageSecond <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Area_cmPerVoltageSecond>`_   | UO       | 600       | Surface mobility [cm2/(V.s)]                                                   |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| Real                                                                                                                                         | KF       | 0         | Flicker noise coefficient                                                      |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| Real                                                                                                                                         | AF       | 1.0       | Flicker noise exponent                                                         |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| Real                                                                                                                                         | FC       | 0.5       | Coefficient for forward-bias depletion capacitance formula                     |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_                                                                                   | TNOM     | -1e40     | Parameter measurement temperature, default 27 [degC]                           |
+----------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record ModelcardMOS 
      "Record for the specification of modelcard parameters"
      extends Modelica.Electrical.Spice3.Internal.ModelcardMOS;
    end ModelcardMOS;

--------------

|image22| `Modelica.Electrical.Spice3.Semiconductors <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors>`_.Q\_NPNBJT
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**Bipolar junction transistor**

.. figure:: Modelica.Electrical.Spice3.Semiconductors.Q_NPNBJTD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Semiconductors.Q\_NPNBJT

   Modelica.Electrical.Spice3.Semiconductors.Q\_NPNBJT

Information
~~~~~~~~~~~

::

The model Q\_NPNBJT is a NPN bipolar junction transistor model: Modified
Gummel-Poon.

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
`Modelica.Electrical.Spice3.Internal.BJT <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.BJT>`_
(Bipolar junction transistor).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| Type                                                                                                              | Name         | Default   | Description                                                                            |
+===================================================================================================================+==============+===========+========================================================================================+
| Real                                                                                                              | TBJT         | 1         | Type of transistor (NPN=1, PNP=-1)                                                     |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| Real                                                                                                              | AREA         | 1.0       | Area factor                                                                            |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| Boolean                                                                                                           | OFF          | false     | Optional initial condition: false - IC not used, true - IC used, not implemented yet   |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                       | IC\_VCE      |           | Initial condition value (VBE, not implemented yet [V]                                  |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                       | IC\_VBE      |           | Initial condition value (VBC, not implemented yet [V]                                  |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_                                                        | TEMP         | 27        | Operating temperature of the device [degC]                                             |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| Boolean                                                                                                           | SENS\_AREA   | false     | Flag to request sensitivity WRT area, not implemented yet                              |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| `ModelcardBJT <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardBJT>`_       | modelcard    |           | BJT modelcard                                                                          |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| `SpiceConstants <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.SpiceConstants>`_   | Con          |           | General constants of SPICE simulator                                                   |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+------------------+
| Type                                                                                                            | Name   | Description      |
+=================================================================================================================+========+==================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | B      | Base node        |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | C      | Collector node   |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | E      | Emitter node     |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Q_NPNBJT "Bipolar junction transistor"
     extends Modelica.Electrical.Spice3.Internal.BJT(
                            final TBJT=1);


    end Q_NPNBJT;

--------------

|image23| `Modelica.Electrical.Spice3.Semiconductors <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors>`_.Q\_PNPBJT
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**Bipolar junction transistor**

.. figure:: Modelica.Electrical.Spice3.Semiconductors.Q_NPNBJTD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Semiconductors.Q\_PNPBJT

   Modelica.Electrical.Spice3.Semiconductors.Q\_PNPBJT

Information
~~~~~~~~~~~

::

The model Q\_PNPBJT is a PNP bipolar junction transistor model: Modified
Gummel-Poon.

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
`Modelica.Electrical.Spice3.Internal.BJT <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.BJT>`_
(Bipolar junction transistor).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| Type                                                                                                              | Name         | Default   | Description                                                                            |
+===================================================================================================================+==============+===========+========================================================================================+
| Real                                                                                                              | TBJT         | -1        | Type of transistor (NPN=1, PNP=-1)                                                     |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| Real                                                                                                              | AREA         | 1.0       | Area factor                                                                            |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| Boolean                                                                                                           | OFF          | false     | Optional initial condition: false - IC not used, true - IC used, not implemented yet   |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                       | IC\_VCE      |           | Initial condition value (VBE, not implemented yet [V]                                  |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                       | IC\_VBE      |           | Initial condition value (VBC, not implemented yet [V]                                  |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_                                                        | TEMP         | 27        | Operating temperature of the device [degC]                                             |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| Boolean                                                                                                           | SENS\_AREA   | false     | Flag to request sensitivity WRT area, not implemented yet                              |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| `ModelcardBJT <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardBJT>`_       | modelcard    |           | BJT modelcard                                                                          |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+
| `SpiceConstants <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.SpiceConstants>`_   | Con          |           | General constants of SPICE simulator                                                   |
+-------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+------------------+
| Type                                                                                                            | Name   | Description      |
+=================================================================================================================+========+==================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | B      | Base node        |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | C      | Collector node   |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | E      | Emitter node     |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Q_PNPBJT "Bipolar junction transistor"
     extends Modelica.Electrical.Spice3.Internal.BJT(
                            final TBJT=-1);


    end Q_PNPBJT;

--------------

`Modelica.Electrical.Spice3.Semiconductors <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors>`_.ModelcardBJT
----------------------------------------------------------------------------------------------------------------------------------------------------

**Record for the specification of modelcard parameters**

Information
~~~~~~~~~~~

::

In modelcards, that are typical for SPICE3, the so called technology
parameters are stored. These parameters are usually set for more than
one semiconductor device in a circuit, e.g., the temperature of a whole
electrical circuit.

Technology parameters of the modified Gummel-Poon bipolar junction
transistor model

::

Extends from
`Modelica.Electrical.Spice3.Internal.ModelcardBJT <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardBJT>`_
(Record with technological parameters (.model)).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Type                                                                  | Name   | Default   | Description                                            |
+=======================================================================+========+===========+========================================================+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_            | TNOM   | -1e40     | Parameter measurement temperature, default 27 [degC]   |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | IS     | 1e-16     | Transport saturation current [A]                       |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | BF     | 100.00    | Ideal maximum forward beta F                           |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | NF     | 1.0       | Forward current emission coefficientF                  |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | NE     | 1.5       | B-E leakage emission coefficient                       |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | ISE    | -1e40     | B-E leakage saturation current, default = 0 [A]        |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | ISC    | -1e40     | B-C leakage saturation current, default = 0 [A]        |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | BR     | 1.0       | Ideal maximum reverse beta                             |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | NR     | 1.0       | Reverse current emission coefficient                   |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | NC     | 2.0       | B-C leakage emission coefficient                       |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | VAF    | 0.0       | Forward Early voltage [V]                              |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | IKF    | 0.0       | Forward beta roll-off corner current [A]               |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | VAR    | 0.0       | Reverse Early voltage [V]                              |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | IKR    | 0.0       | Reverse beta roll-off corner current [A]               |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | RE     | 0.0       | Emitter resistance [Ohm]                               |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | RC     | 0.0       | Collector resistance [Ohm]                             |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | IRB    | 0.0       | Current for base resistance = (rb+rbm)/2 [A]           |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | RB     | 0.0       | Zero bias base resistance [Ohm]                        |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | RBM    | -1e40     | Minimum base resistance, default = 0.0 [Ohm]           |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | CJE    | 0.0       | Zero bias B-E depletion capacitance [F]                |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | VJE    | 0.75      | B-E built in potential [V]                             |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | MJE    | 0.33      | B-E junction exponential faktor                        |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                 | TF     | 0.0       | Ideal forward transit time [s]                         |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | XTF    | 0.0       | Coefficient for bias dependence of TF                  |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_           | ITF    | 0.0       | High current dependence of TF, [A]                     |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | VTF    | 0.0       | Voltage giving VBC dependence of TF [V]                |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_            | PTF    | 0.0       | Excess phase at freq=1/(TF\*2\*Pi) Hz [degC]           |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | CJC    | 0.0       | Zero bias B-C depletion capacitance [F]                |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | VJC    | 0.75      | B-C built in potential [V]                             |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | MJC    | 0.33      | B-C junction grading coefficient                       |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | XCJC   | 1.0       | Fraction of B-C cap to internal base                   |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                 | TR     | 0.0       | Ideal reverse transit time [s]                         |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | CJS    | 0.0       | Zero bias C-S capacitance [F]                          |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | VJS    | 0.75      | Substrate junction built-in potential [V]              |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | MJS    | 0.0       | Substrate junction grading coefficient                 |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | XTB    | 0.0       | Forward and reverse beta temperature exponent          |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| `GapEnergy <Modelica_SIunits.html#Modelica.SIunits.GapEnergy>`_       | EG     | 1.11      | Energy gap for IS temperature effect on IS [eV]        |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | XTI    | 3.0       | Temperature exponent for IS                            |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | KF     | 0.0       | Flicker Noise Coefficient                              |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | AF     | 1.0       | Flicker Noise Exponent                                 |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+
| Real                                                                  | FC     | 0.5       | Forward bias junction fit parameter                    |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record ModelcardBJT 
      "Record for the specification of modelcard parameters"
      extends Modelica.Electrical.Spice3.Internal.ModelcardBJT;
    end ModelcardBJT;

--------------

|image24| `Modelica.Electrical.Spice3.Semiconductors <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors>`_.D\_DIODE
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Diode model**

.. figure:: Modelica.Electrical.Spice3.Semiconductors.D_DIODED.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Semiconductors.D\_DIODE

   Modelica.Electrical.Spice3.Semiconductors.D\_DIODE

Information
~~~~~~~~~~~

::

The model D\_DIODE is a Junction diode model

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
`Modelica.Electrical.Spice3.Internal.DIODE <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.DIODE>`_
(Diode model).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------------------------------------+
| Type                                                                                                              | Name             | Default   | Description                                                                            |
+===================================================================================================================+==================+===========+========================================================================================+
| Real                                                                                                              | AREA             | 1         | Area factor                                                                            |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------------------------------------+
| Boolean                                                                                                           | OFF              | false     | Optional initial condition: false - IC not used, true - IC used, not implemented yet   |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                       | IC               |           | Initial condition value (VD, not implemented yet [V]                                   |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------------------------------------+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_                                                        | TEMP             | 27        | Operating temperature of the device [degC]                                             |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------------------------------------+
| Boolean                                                                                                           | SENS\_AREA       |           | Flag to request sensitivity WRT area, not implemented yet                              |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------------------------------------+
| `ModelcardDIODE <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardDIODE>`_   | modelcarddiode   |           | DIODE modelcard                                                                        |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                   |
+=================================================================================================================+========+===============================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Positive pin Positive pin (potential p.v > n.v for positive voltage drop v)   |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      | Negative pin                                                                  |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model D_DIODE "Diode model"
      extends Modelica.Electrical.Spice3.Internal.DIODE;


    end D_DIODE;

--------------

`Modelica.Electrical.Spice3.Semiconductors <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors>`_.ModelcardDIODE
------------------------------------------------------------------------------------------------------------------------------------------------------

**Record for the specification of modelcard parameters**

Information
~~~~~~~~~~~

::

In modelcards, that are typical for SPICE3, the so called technology
parameters are stored. These parameters are usually set for more than
one semiconductor device in a circuit, e.g., the temperature of a whole
electrical circuit.

Technology parameters of the junction diode model

::

Extends from
`Modelica.Electrical.Spice3.Internal.ModelcardDIODE <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardDIODE>`_
(Record with technological parameters (.model)).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| Type                                                                            | Name   | Default   | Description                                       |
+=================================================================================+========+===========+===================================================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                     | IS     | 1e-14     | Saturation Current [A]                            |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_               | RS     | 0.0       | Ohmic resistance [Ohm]                            |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| Real                                                                            | N      | 1.0       | Emission coefficient                              |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                           | TT     | 0.0       | Transit time [s]                                  |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_             | CJO    | 0.0       | Junction capacitance [F]                          |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | VJ     | 1.0       | Junction Potential [V]                            |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| Real                                                                            | M      | 0.5       | Grading coefficient                               |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| `ActivationEnergy <Modelica_SIunits.html#Modelica.SIunits.ActivationEnergy>`_   | EG     | 1.11      | Activation Energy [eV]                            |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| Real                                                                            | XTI    | 3.0       | Saturation current temperature exponent           |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| Real                                                                            | FC     | 0.5       | Forward bias junction fit parameter               |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                     | BV     | -1e40     | Reverse breakdown voltage, default infinity [V]   |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                     | IBV    | 1e-3      | Current at reverse breakdown voltage [A]          |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_                      | TNOM   | 27        | Parameter measurement temperature [degC]          |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| Real                                                                            | KF     | 0.0       | Flicker noise coefficient                         |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| Real                                                                            | AF     | 1.0       | Flicker noise exponent                            |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_             | G      | 0         | Ohmic conductance [S]                             |
+---------------------------------------------------------------------------------+--------+-----------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record ModelcardDIODE 
      "Record for the specification of modelcard parameters"
      extends Modelica.Electrical.Spice3.Internal.ModelcardDIODE;
    end ModelcardDIODE;

--------------

|image25| `Modelica.Electrical.Spice3.Semiconductors <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors>`_.R\_Resistor
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Semiconductor resistor from SPICE3**

.. figure:: Modelica.Electrical.Spice3.Semiconductors.R_ResistorD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Semiconductors.R\_Resistor

   Modelica.Electrical.Spice3.Semiconductors.R\_Resistor

Information
~~~~~~~~~~~

::

The model R\_Resistor is a Semiconductor resistor model.

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
`Modelica.Electrical.Spice3.Internal.R\_SEMI <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.R_SEMI>`_
(Semiconductor resistor).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------+
| Type                                                                                                      | Name         | Default   | Description                                                              |
+===========================================================================================================+==============+===========+==========================================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                         | R            | -1e40     | Resistance, if specified, geometrical information is overwritten [Ohm]   |
+-----------------------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_                                                | TEMP         | -1e40     | Temperature of resistor [degC]                                           |
+-----------------------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                 | L            | -1e40     | Lenght of the resistor [m]                                               |
+-----------------------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                 | W            | -1e40     | Width of the resistor, default DEFW (modelcard) [m]                      |
+-----------------------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------+
| Boolean                                                                                                   | SENS\_AREA   | false     | Parameter for sensitivity analyses, not implemented yet                  |
+-----------------------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------+
| `ModelcardR <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardR>`_   | modelcard    |           | Resistor modelcard                                                       |
+-----------------------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------------+

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

    model R_Resistor "Semiconductor resistor from SPICE3"
    extends Modelica.Electrical.Spice3.Internal.R_SEMI;
    end R_Resistor;

--------------

`Modelica.Electrical.Spice3.Semiconductors <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors>`_.ModelcardRESISTOR
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Record for the specification of modelcard parameters**

Information
~~~~~~~~~~~

::

In modelcards, that are typical for SPICE3, the so called technology
parameters are stored. These parameters are usually set for more than
one semiconductor device in a circuit, e.g., the temperature of a whole
electrical circuit.

Technology parameters of the semiconductor resistor model

::

Extends from
`Modelica.Electrical.Spice3.Internal.ModelcardR <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardR>`_
(Record with technological parameters (.model)).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------------------------+
| Type                                                                                                                                                          | Name     | Default   | Description                                                                |
+===============================================================================================================================================================+==========+===========+============================================================================+
| `FirstOrderTemperaturCoefficient <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.FirstOrderTemperaturCoefficient>`_     | TC1      | 0.0       | First order temperature coefficient [Ohm/degC]                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------------------------+
| `SecondOrderTemperaturCoefficient <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.SecondOrderTemperaturCoefficient>`_   | TC2      | 0.0       | In Ohm/(deg C\*deg C), Second2 order temperature coefficient [Ohm/degC2]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                             | RSH      | -1e40     | Sheet resistance [Ohm]                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------------------------+
| `Temp\_C <Modelica_SIunits.html#Modelica.SIunits.Temp_C>`_                                                                                                    | TNOM     | -1e40     | Parameter measurement temperature, default 27 [degC]                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                                     | DEFW     | 1e-5      | Default device width [m]                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                                     | NARROW   | 0         | Narrowing of resistor due to side etching [m]                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record ModelcardRESISTOR 
      "Record for the specification of modelcard parameters"
      extends Modelica.Electrical.Spice3.Internal.ModelcardR;
    end ModelcardRESISTOR;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:46
2010.

.. |Modelica.Electrical.Spice3.Semiconductors.M\_PMOS| image:: Modelica.Electrical.Spice3.Semiconductors.M_PMOSS.png
.. |Modelica.Electrical.Spice3.Semiconductors.M\_NMOS| image:: Modelica.Electrical.Spice3.Semiconductors.M_PMOSS.png
.. |Modelica.Electrical.Spice3.Semiconductors.ModelcardMOS| image:: Modelica.Electrical.Spice3.Semiconductors.ModelcardMOSS.png
.. |Modelica.Electrical.Spice3.Semiconductors.Q\_NPNBJT| image:: Modelica.Electrical.Spice3.Semiconductors.Q_NPNBJTS.png
.. |Modelica.Electrical.Spice3.Semiconductors.Q\_PNPBJT| image:: Modelica.Electrical.Spice3.Semiconductors.Q_PNPBJTS.png
.. |Modelica.Electrical.Spice3.Semiconductors.ModelcardBJT| image:: Modelica.Electrical.Spice3.Semiconductors.ModelcardBJTS.png
.. |Modelica.Electrical.Spice3.Semiconductors.D\_DIODE| image:: Modelica.Electrical.Spice3.Semiconductors.D_DIODES.png
.. |Modelica.Electrical.Spice3.Semiconductors.ModelcardDIODE| image:: Modelica.Electrical.Spice3.Semiconductors.ModelcardDIODES.png
.. |Modelica.Electrical.Spice3.Semiconductors.R\_Resistor| image:: Modelica.Electrical.Spice3.Semiconductors.R_ResistorS.png
.. |Modelica.Electrical.Spice3.Semiconductors.ModelcardRESISTOR| image:: Modelica.Electrical.Spice3.Semiconductors.ModelcardRESISTORS.png
.. |image10| image:: Modelica.Electrical.Spice3.Semiconductors.M_PMOSS.png
.. |image11| image:: Modelica.Electrical.Spice3.Semiconductors.M_PMOSS.png
.. |image12| image:: Modelica.Electrical.Spice3.Semiconductors.ModelcardMOSS.png
.. |image13| image:: Modelica.Electrical.Spice3.Semiconductors.Q_NPNBJTS.png
.. |image14| image:: Modelica.Electrical.Spice3.Semiconductors.Q_PNPBJTS.png
.. |image15| image:: Modelica.Electrical.Spice3.Semiconductors.ModelcardBJTS.png
.. |image16| image:: Modelica.Electrical.Spice3.Semiconductors.D_DIODES.png
.. |image17| image:: Modelica.Electrical.Spice3.Semiconductors.ModelcardDIODES.png
.. |image18| image:: Modelica.Electrical.Spice3.Semiconductors.R_ResistorS.png
.. |image19| image:: Modelica.Electrical.Spice3.Semiconductors.ModelcardRESISTORS.png
.. |image20| image:: Modelica.Electrical.Spice3.Semiconductors.M_PMOSI.png
.. |image21| image:: Modelica.Electrical.Spice3.Semiconductors.M_NMOSI.png
.. |image22| image:: Modelica.Electrical.Spice3.Semiconductors.Q_NPNBJTI.png
.. |image23| image:: Modelica.Electrical.Spice3.Semiconductors.Q_PNPBJTI.png
.. |image24| image:: Modelica.Electrical.Spice3.Semiconductors.D_DIODEI.png
.. |image25| image:: Modelica.Electrical.Spice3.Semiconductors.R_ResistorI.png
