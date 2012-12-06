======================================
Modelica.Electrical.Digital.Interfaces
======================================

`Modelica.Electrical.Digital <Modelica_Electrical_Digital.html#Modelica.Electrical.Digital>`_.Interfaces
--------------------------------------------------------------------------------------------------------

**Basic definitions**

Information
~~~~~~~~~~~

::

This package contains basic definitions: Type definitions of Logic and
Strength, interface definitions (connectors) for digital electrical
components, and partial models for connection patterns which are often
used.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Name                                                                                                                                                                         | Description                                                             |
+==============================================================================================================================================================================+=========================================================================+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_                                                                          | Logic values and their coding according to IEEE 1164 STD\_ULOGIC type   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| `UX01 <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.UX01>`_                                                                            | 4-valued subtype of IEEE 1164 STD\_ULOGIC type                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| `Strength <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Strength>`_                                                                    | Output strengthes of registers                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image6| `DigitalSignal <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalSignal>`_                                                 | Digital port (both input/output possible)                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image7| `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_                                                   | Input DigitalSignal as connector                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image8| `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_                                                 | Output DigitalSignal as connector                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image9| `SISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.SISO>`_                                                                   | Single input, single output                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image10| `MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_                                                                  | Multiple input - single output                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image11| `MIMO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MIMO>`_                                                                  | Multiple input - multiple output                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+

Types and constants
~~~~~~~~~~~~~~~~~~~

::

      type Logic = enumeration(
        'U' "U  Uninitialized",
        'X' "X  Forcing Unknown",
        '0' "0  Forcing 0",
        '1' "1  Forcing 1",
        'Z' "Z  High Impedance",
        'W' "W  Weak    Unknown",
        'L' "L  Weak    0",
        'H' "H  Weak    1",
        '-' "-  Don't care") 
      "Logic values and their coding according to IEEE 1164 STD_ULOGIC type";

::

      type UX01 = enumeration(
        'U' "U  Uninitialized",
        'X' "X  Forcing Unknown",
        '0' "0  Forcing 0",
        '1' "1  Forcing 1") "4-valued subtype of IEEE 1164 STD_ULOGIC type";

::

      type Strength = enumeration(
        'S_X01',
        'S_X0H',
        'S_XL1',
        'S_X0Z',
        'S_XZ1',
        'S_WLH',
        'S_WLZ',
        'S_WZH',
        'S_W0H',
        'S_WL1') "Output strengthes of registers";

--------------

`Modelica.Electrical.Digital.Interfaces <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces>`_.DigitalSignal
--------------------------------------------------------------------------------------------------------------------------------------------

**Digital port (both input/output possible)**

Information
~~~~~~~~~~~

::

DigitalSignal is the basic digital connector defintion. A direction
(input, output) is not yet defined. DigitalSignal is of type Logic. It
can have the logic values (U, X, 0, 1, ...) which are internally coded
by integer values by using the enumeration (c.f. the definition of type
Logic).

::

Extends from
`Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_
(Logic values and their coding according to IEEE 1164 STD\_ULOGIC type).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector DigitalSignal = Logic "Digital port (both input/output possible)";

--------------

|image12| `Modelica.Electrical.Digital.Interfaces <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces>`_.DigitalInput
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Input DigitalSignal as connector**

.. figure:: Modelica.Electrical.Digital.Interfaces.DigitalInputD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Interfaces.DigitalInput

   Modelica.Electrical.Digital.Interfaces.DigitalInput

Information
~~~~~~~~~~~

::

DigitalInput is the digital input connector defintion. DigitalInput is
of type Logic. It can have the logic values (U, X, 0, 1, ...) which are
internally coded by integer values by using the enumeration (c.f. the
definition of type Logic).

::

Extends from
`DigitalSignal <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalSignal>`_
(Digital port (both input/output possible)).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector DigitalInput = input DigitalSignal "Input DigitalSignal as connector";

--------------

|image13| `Modelica.Electrical.Digital.Interfaces <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces>`_.DigitalOutput
------------------------------------------------------------------------------------------------------------------------------------------------------

**Output DigitalSignal as connector**

.. figure:: Modelica.Electrical.Digital.Interfaces.DigitalOutputD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Interfaces.DigitalOutput

   Modelica.Electrical.Digital.Interfaces.DigitalOutput

Information
~~~~~~~~~~~

::

DigitalOutput is the digital output connector defintion. DigitalOutput
is of type Logic. It can have the logic values (U, X, 0, 1, ...) which
are internally coded by integer values by using the enumeration (c.f.
the definition of type Logic). The arrow shape symbolizes the signal
flow direction.

::

Extends from
`DigitalSignal <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalSignal>`_
(Digital port (both input/output possible)).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector DigitalOutput = output DigitalSignal 
      "Output DigitalSignal as connector";

--------------

|image14| `Modelica.Electrical.Digital.Interfaces <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces>`_.SISO
---------------------------------------------------------------------------------------------------------------------------------------------

**Single input, single output**

.. figure:: Modelica.Electrical.Digital.Interfaces.SISOD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Interfaces.SISO

   Modelica.Electrical.Digital.Interfaces.SISO

Information
~~~~~~~~~~~

::

SISO is a partial model for the connection pattern whith **s**ingle
(scalar) digital **i**nput and **s**ingle (scalar) digital **o**utput.
Besides the connectors it provides a rectangel for the icon which can be
filled in by the component which inherits the SISO model.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                                         | Name   | Description                          |
+==============================================================================================================================+========+======================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x      | Connector of Digital input signal    |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block SISO "Single input, single output"
      import D = Modelica.Electrical.Digital;
      D.Interfaces.DigitalInput x "Connector of Digital input signal";
      D.Interfaces.DigitalOutput y "Connector of Digital output signal";
    end SISO;

--------------

|image15| `Modelica.Electrical.Digital.Interfaces <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces>`_.MISO
---------------------------------------------------------------------------------------------------------------------------------------------

**Multiple input - single output**

.. figure:: Modelica.Electrical.Digital.Interfaces.MISOD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Interfaces.MISO

   Modelica.Electrical.Digital.Interfaces.MISO

Information
~~~~~~~~~~~

::

MISO is a partial model for the connection pattern whith **m**ultiple
(vector) digital**i**nput and **s**ingle (scalar) digital **o**utput.
Besides the connectors it provides a rectangel for the icon which can be
filled in by the component which inherits the MISO model.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | n      | 2         | Number of inputs   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block MISO "Multiple input - single output"
      import D = Modelica.Electrical.Digital;

      parameter Integer n(final min=2) = 2 "Number of inputs";
      D.Interfaces.DigitalInput x[n] "Connector of Digital input signal vector";
      D.Interfaces.DigitalOutput y "Connector of Digital output signal";
    end MISO;

--------------

|image16| `Modelica.Electrical.Digital.Interfaces <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces>`_.MIMO
---------------------------------------------------------------------------------------------------------------------------------------------

**Multiple input - multiple output**

.. figure:: Modelica.Electrical.Digital.Interfaces.MISOD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Interfaces.MIMO

   Modelica.Electrical.Digital.Interfaces.MIMO

Information
~~~~~~~~~~~

::

MIMO is a partial model for the connection pattern whith **m**ultiple
(vector) digital**i**nput and **m**ultiple (vector) digital **o**utput.
Besides the connectors it provides a rectangel for the icon which can be
filled in by the component which inherits the MISO model.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+----------------------------------------+
| Type      | Name   | Default   | Description                            |
+===========+========+===========+========================================+
| Integer   | n      | 1         | Number of inputs = Number of outputs   |
+-----------+--------+-----------+----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------+
| Type                                                                                                                         | Name   | Description                                 |
+==============================================================================================================================+========+=============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector    |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y[n]   | Connector of Digital output signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block MIMO "Multiple input - multiple output"
      import D = Modelica.Electrical.Digital;

      parameter Integer n(final min=1) = 1 "Number of inputs = Number of outputs";
      D.Interfaces.DigitalInput x[n] "Connector of Digital input signal vector";
      D.Interfaces.DigitalOutput y[n] "Connector of Digital output signal vector";
    end MIMO;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:27
2010.

.. |Modelica.Electrical.Digital.Interfaces.DigitalSignal| image:: Modelica.Electrical.Digital.Interfaces.DigitalSignalS.png
.. |Modelica.Electrical.Digital.Interfaces.DigitalInput| image:: Modelica.Electrical.Digital.Interfaces.DigitalInputS.png
.. |Modelica.Electrical.Digital.Interfaces.DigitalOutput| image:: Modelica.Electrical.Digital.Interfaces.DigitalOutputS.png
.. |Modelica.Electrical.Digital.Interfaces.SISO| image:: Modelica.Electrical.Digital.Interfaces.SISOS.png
.. |Modelica.Electrical.Digital.Interfaces.MISO| image:: Modelica.Electrical.Digital.Interfaces.MISOS.png
.. |Modelica.Electrical.Digital.Interfaces.MIMO| image:: Modelica.Electrical.Digital.Interfaces.MIMOS.png
.. |image6| image:: Modelica.Electrical.Digital.Interfaces.DigitalSignalS.png
.. |image7| image:: Modelica.Electrical.Digital.Interfaces.DigitalInputS.png
.. |image8| image:: Modelica.Electrical.Digital.Interfaces.DigitalOutputS.png
.. |image9| image:: Modelica.Electrical.Digital.Interfaces.SISOS.png
.. |image10| image:: Modelica.Electrical.Digital.Interfaces.MISOS.png
.. |image11| image:: Modelica.Electrical.Digital.Interfaces.MIMOS.png
.. |image12| image:: Modelica.Electrical.Digital.Interfaces.DigitalInputI.png
.. |image13| image:: Modelica.Electrical.Digital.Interfaces.DigitalOutputI.png
.. |image14| image:: Modelica.Electrical.Digital.Interfaces.SISOI.png
.. |image15| image:: Modelica.Electrical.Digital.Interfaces.MISOI.png
.. |image16| image:: Modelica.Electrical.Digital.Interfaces.MIMOI.png
