=====================================
Modelica.Electrical.Digital.Tristates
=====================================

`Modelica.Electrical.Digital <Modelica_Electrical_Digital.html#Modelica.Electrical.Digital>`_.Tristates
-------------------------------------------------------------------------------------------------------

**Transfergates, Buffers, Inverters, and WiredX**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| Name                                                                                                                                                             | Description                                                      |
+==================================================================================================================================================================+==================================================================+
| |image9| `NXFERGATE <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates.NXFERGATE>`_                                               | Transfergate with enable active high                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| |image10| `NRXFERGATE <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates.NRXFERGATE>`_                                            | Transfergate with enable active high. Output strength reduced.   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| |image11| `PXFERGATE <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates.PXFERGATE>`_                                              | Transfergate with enable active low                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| |image12| `PRXFERGATE <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates.PRXFERGATE>`_                                            | Transfergate with enable active low. Output strength reduced.    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| |image13| `BUF3S <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates.BUF3S>`_                                                      | Tristate buffer with enable active high                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| |image14| `BUF3SL <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates.BUF3SL>`_                                                    | Tristate buffer with enable active low                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| |image15| `INV3S <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates.INV3S>`_                                                      | Tristate Inverter with enable active high                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| |image16| `INV3SL <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates.INV3SL>`_                                                    | Tristate inverter with enable active low                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| |image17| `WiredX <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates.WiredX>`_                                                    | Wired node with multiple input and one output                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+

--------------

|image18| `Modelica.Electrical.Digital.Tristates <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates>`_.NXFERGATE
-----------------------------------------------------------------------------------------------------------------------------------------------

**Transfergate with enable active high**

.. figure:: Modelica.Electrical.Digital.Tristates.NXFERGATED.png
   :align: center
   :alt: Modelica.Electrical.Digital.Tristates.NXFERGATE

   Modelica.Electrical.Digital.Tristates.NXFERGATE

Information
~~~~~~~~~~~

::

Description in VHDL is given by
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

**Truth Table**

+--------------+--------------+---------------+
| **DataIn**   | **Enable**   | **DataOut**   |
+--------------+--------------+---------------+
| \*           | U            | U             |
+--------------+--------------+---------------+
| \*           | X            | UX            |
+--------------+--------------+---------------+
| \*           | 0            | Z             |
+--------------+--------------+---------------+
| \*           | 1            | DataIn        |
+--------------+--------------+---------------+
| \*           | Z            | UX            |
+--------------+--------------+---------------+
| \*           | W            | UX            |
+--------------+--------------+---------------+
| \*           | L            | Z             |
+--------------+--------------+---------------+
| \*           | H            | DataIn        |
+--------------+--------------+---------------+
| \*           | -            | UX            |
+--------------+--------------+---------------+

::

      UX: if dataIn == U then U else X

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                    | Name   | Default   | Description           |
+=========================================================+========+===========+=======================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | tHL    | 0         | High->Low delay [s]   |
+---------------------------------------------------------+--------+-----------+-----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | tLH    | 0         | Low->High delay [s]   |
+---------------------------------------------------------+--------+-----------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| Type                                                                                                                         | Name     | Description   |
+==============================================================================================================================+==========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | enable   |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model NXFERGATE "Transfergate with enable active high"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.NXferTable[enable, x];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end NXFERGATE;

--------------

|image19| `Modelica.Electrical.Digital.Tristates <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates>`_.NRXFERGATE
------------------------------------------------------------------------------------------------------------------------------------------------

**Transfergate with enable active high. Output strength reduced.**

.. figure:: Modelica.Electrical.Digital.Tristates.NXFERGATED.png
   :align: center
   :alt: Modelica.Electrical.Digital.Tristates.NRXFERGATE

   Modelica.Electrical.Digital.Tristates.NRXFERGATE

Information
~~~~~~~~~~~

::

Description in VHDL is given by
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

**Truth Table**

+--------------+--------------+----------------------------+
| **DataIn**   | **Enable**   | **DataOut**                |
+--------------+--------------+----------------------------+
| \*           | U            | U                          |
+--------------+--------------+----------------------------+
| \*           | X            | UW                         |
+--------------+--------------+----------------------------+
| \*           | 0            | Z                          |
+--------------+--------------+----------------------------+
| \*           | 1            | DataIn, Strength Reduced   |
+--------------+--------------+----------------------------+
| \*           | Z            | UW                         |
+--------------+--------------+----------------------------+
| \*           | W            | UW                         |
+--------------+--------------+----------------------------+
| \*           | L            | Z                          |
+--------------+--------------+----------------------------+
| \*           | H            | DataIn, Strength Reduced   |
+--------------+--------------+----------------------------+
| \*           | -            | UW                         |
+--------------+--------------+----------------------------+

::

      UW: if dataIn == U then U else W
      Strength Reduced: 0 -> L, 1 -> H, X -> W

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                    | Name   | Default   | Description           |
+=========================================================+========+===========+=======================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | tHL    | 0         | High->Low delay [s]   |
+---------------------------------------------------------+--------+-----------+-----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | tLH    | 0         | Low->High delay [s]   |
+---------------------------------------------------------+--------+-----------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| Type                                                                                                                         | Name     | Description   |
+==============================================================================================================================+==========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | enable   |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model NRXFERGATE 
      "Transfergate with enable active high. Output strength reduced."
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.NRXferTable[enable, x];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end NRXFERGATE;

--------------

|image20| `Modelica.Electrical.Digital.Tristates <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates>`_.PXFERGATE
-----------------------------------------------------------------------------------------------------------------------------------------------

**Transfergate with enable active low**

.. figure:: Modelica.Electrical.Digital.Tristates.NXFERGATED.png
   :align: center
   :alt: Modelica.Electrical.Digital.Tristates.PXFERGATE

   Modelica.Electrical.Digital.Tristates.PXFERGATE

Information
~~~~~~~~~~~

::

Description in VHDL is given by
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

**Truth Table**

+--------------+--------------+---------------+
| **DataIn**   | **Enable**   | **DataOut**   |
+--------------+--------------+---------------+
| \*           | U            | U             |
+--------------+--------------+---------------+
| \*           | X            | UX            |
+--------------+--------------+---------------+
| \*           | 0            | DataIn        |
+--------------+--------------+---------------+
| \*           | 1            | Z             |
+--------------+--------------+---------------+
| \*           | Z            | UX            |
+--------------+--------------+---------------+
| \*           | W            | UX            |
+--------------+--------------+---------------+
| \*           | L            | DataIn        |
+--------------+--------------+---------------+
| \*           | H            | Z             |
+--------------+--------------+---------------+
| \*           | -            | UX            |
+--------------+--------------+---------------+

::

      UX: if dataIn == U then U else X

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                    | Name   | Default   | Description           |
+=========================================================+========+===========+=======================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | tHL    | 0         | High->Low delay [s]   |
+---------------------------------------------------------+--------+-----------+-----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | tLH    | 0         | Low->High delay [s]   |
+---------------------------------------------------------+--------+-----------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| Type                                                                                                                         | Name     | Description   |
+==============================================================================================================================+==========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | enable   |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PXFERGATE "Transfergate with enable active low"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.PXferTable[enable, x];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end PXFERGATE;

--------------

|image21| `Modelica.Electrical.Digital.Tristates <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates>`_.PRXFERGATE
------------------------------------------------------------------------------------------------------------------------------------------------

**Transfergate with enable active low. Output strength reduced.**

.. figure:: Modelica.Electrical.Digital.Tristates.NXFERGATED.png
   :align: center
   :alt: Modelica.Electrical.Digital.Tristates.PRXFERGATE

   Modelica.Electrical.Digital.Tristates.PRXFERGATE

Information
~~~~~~~~~~~

::

Description in VHDL is given by
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

**Truth Table**

+--------------+--------------+----------------------------+
| **DataIn**   | **Enable**   | **DataOut**                |
+--------------+--------------+----------------------------+
| \*           | U            | U                          |
+--------------+--------------+----------------------------+
| \*           | X            | UW                         |
+--------------+--------------+----------------------------+
| \*           | 0            | DataIn, Strength Reduced   |
+--------------+--------------+----------------------------+
| \*           | 1            | Z                          |
+--------------+--------------+----------------------------+
| \*           | Z            | UW                         |
+--------------+--------------+----------------------------+
| \*           | W            | UW                         |
+--------------+--------------+----------------------------+
| \*           | L            | DataIn, Strength Reduced   |
+--------------+--------------+----------------------------+
| \*           | H            | Z                          |
+--------------+--------------+----------------------------+
| \*           | -            | UW                         |
+--------------+--------------+----------------------------+

UW: if dataIn == U then U else W Strength Reduced: 0 -> L, 1 -> H, X ->
W

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                    | Name   | Default   | Description           |
+=========================================================+========+===========+=======================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | tHL    | 0         | High->Low delay [s]   |
+---------------------------------------------------------+--------+-----------+-----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | tLH    | 0         | Low->High delay [s]   |
+---------------------------------------------------------+--------+-----------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| Type                                                                                                                         | Name     | Description   |
+==============================================================================================================================+==========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | enable   |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PRXFERGATE 
      "Transfergate with enable active low. Output strength reduced."
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.PRXferTable[enable, x];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end PRXFERGATE;

--------------

|image22| `Modelica.Electrical.Digital.Tristates <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates>`_.BUF3S
-------------------------------------------------------------------------------------------------------------------------------------------

**Tristate buffer with enable active high**

.. figure:: Modelica.Electrical.Digital.Tristates.NXFERGATED.png
   :align: center
   :alt: Modelica.Electrical.Digital.Tristates.BUF3S

   Modelica.Electrical.Digital.Tristates.BUF3S

Information
~~~~~~~~~~~

::

Description in VHDL is given by
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

and for tristate table
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_misc.vhd

**Truth Table**

+--------------+--------------+-----------------+
| **DataIn**   | **Enable**   | **DataOut\***   |
+--------------+--------------+-----------------+
| \*           | U            | U               |
+--------------+--------------+-----------------+
| \*           | X            | UX              |
+--------------+--------------+-----------------+
| \*           | 0            | Z               |
+--------------+--------------+-----------------+
| \*           | 1            | DataIn          |
+--------------+--------------+-----------------+
| \*           | Z            | UX              |
+--------------+--------------+-----------------+
| \*           | W            | UX              |
+--------------+--------------+-----------------+
| \*           | L            | Z               |
+--------------+--------------+-----------------+
| \*           | H            | DataIn          |
+--------------+--------------+-----------------+
| \*           | -            | UX              |
+--------------+--------------+-----------------+

::

      UX: if dataIn == U then U else X
      DataOut*: Strength map for DataOut according to tristate table Buf3sTable

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| Type                                                                                                        | Name       | Default      | Description           |
+=============================================================================================================+============+==============+=======================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                       | tHL        | 0            | High->Low delay [s]   |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                       | tLH        | 0            | Low->High delay [s]   |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| `Strength <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Strength>`_   | strength   | S.'S\_X01'   | output strength       |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| Type                                                                                                                         | Name     | Description   |
+==============================================================================================================================+==========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | enable   |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BUF3S "Tristate buffer with enable active high"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      parameter D.Interfaces.Strength strength = S.'S_X01' "output strength";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.Buf3sTable[strength, T.UX01Table[enable], T.UX01Table[x]];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end BUF3S;

--------------

|image23| `Modelica.Electrical.Digital.Tristates <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates>`_.BUF3SL
--------------------------------------------------------------------------------------------------------------------------------------------

**Tristate buffer with enable active low**

.. figure:: Modelica.Electrical.Digital.Tristates.NXFERGATED.png
   :align: center
   :alt: Modelica.Electrical.Digital.Tristates.BUF3SL

   Modelica.Electrical.Digital.Tristates.BUF3SL

Information
~~~~~~~~~~~

::

Description in VHDL is given by
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

and for tristate table
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_misc.vhd

**Truth Table**

+--------------+--------------+-----------------+
| **DataIn**   | **Enable**   | **DataOut\***   |
+--------------+--------------+-----------------+
| \*           | U            | U               |
+--------------+--------------+-----------------+
| \*           | X            | UX              |
+--------------+--------------+-----------------+
| \*           | 0            | DataIn          |
+--------------+--------------+-----------------+
| \*           | 1            | Z               |
+--------------+--------------+-----------------+
| \*           | Z            | UX              |
+--------------+--------------+-----------------+
| \*           | W            | UX              |
+--------------+--------------+-----------------+
| \*           | L            | DataIn          |
+--------------+--------------+-----------------+
| \*           | H            | Z               |
+--------------+--------------+-----------------+
| \*           | -            | UX              |
+--------------+--------------+-----------------+

::

      UX: if dataIn == U then U else X
      DataOut*: Strength map for DataOut according to tristate table Buf3slTable

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| Type                                                                                                        | Name       | Default      | Description           |
+=============================================================================================================+============+==============+=======================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                       | tHL        | 0            | High->Low delay [s]   |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                       | tLH        | 0            | Low->High delay [s]   |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| `Strength <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Strength>`_   | strength   | S.'S\_X01'   | output strength       |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| Type                                                                                                                         | Name     | Description   |
+==============================================================================================================================+==========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | enable   |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BUF3SL "Tristate buffer with enable active low"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      parameter D.Interfaces.Strength strength = S.'S_X01' "output strength";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.Buf3slTable[strength, T.UX01Table[enable], T.UX01Table[x]];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end BUF3SL;

--------------

|image24| `Modelica.Electrical.Digital.Tristates <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates>`_.INV3S
-------------------------------------------------------------------------------------------------------------------------------------------

**Tristate Inverter with enable active high**

.. figure:: Modelica.Electrical.Digital.Tristates.NXFERGATED.png
   :align: center
   :alt: Modelica.Electrical.Digital.Tristates.INV3S

   Modelica.Electrical.Digital.Tristates.INV3S

Information
~~~~~~~~~~~

::

Description in VHDL is given by
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

and for tristate table
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_misc.vhd

**Truth Table**

+--------------+--------------+-----------------+
| **DataIn**   | **Enable**   | **DataOut\***   |
+--------------+--------------+-----------------+
| \*           | U            | U               |
+--------------+--------------+-----------------+
| \*           | X            | UX              |
+--------------+--------------+-----------------+
| \*           | 0            | Z               |
+--------------+--------------+-----------------+
| \*           | 1            | Not DataIn      |
+--------------+--------------+-----------------+
| \*           | Z            | UX              |
+--------------+--------------+-----------------+
| \*           | W            | UX              |
+--------------+--------------+-----------------+
| \*           | L            | Z               |
+--------------+--------------+-----------------+
| \*           | H            | Not DataIn      |
+--------------+--------------+-----------------+
| \*           | -            | UX              |
+--------------+--------------+-----------------+

::

      UX: if dataIn == U then U else X
      DataOut*: Strength map for DataOut according to tristate table Buf3sTable

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| Type                                                                                                        | Name       | Default      | Description           |
+=============================================================================================================+============+==============+=======================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                       | tHL        | 0            | High->Low delay [s]   |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                       | tLH        | 0            | Low->High delay [s]   |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| `Strength <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Strength>`_   | strength   | S.'S\_X01'   | output strength       |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| Type                                                                                                                         | Name     | Description   |
+==============================================================================================================================+==========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | enable   |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model INV3S "Tristate Inverter with enable active high"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      parameter D.Interfaces.Strength strength = S.'S_X01' "output strength";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.Buf3sTable[strength, T.UX01Table[enable], T.NotTable[x]];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end INV3S;

--------------

|image25| `Modelica.Electrical.Digital.Tristates <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates>`_.INV3SL
--------------------------------------------------------------------------------------------------------------------------------------------

**Tristate inverter with enable active low**

.. figure:: Modelica.Electrical.Digital.Tristates.NXFERGATED.png
   :align: center
   :alt: Modelica.Electrical.Digital.Tristates.INV3SL

   Modelica.Electrical.Digital.Tristates.INV3SL

Information
~~~~~~~~~~~

::

Description in VHDL is given by
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

and for tristate table
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_misc.vhd

**Truth Table**

+--------------+--------------+-----------------+
| **DataIn**   | **Enable**   | **DataOut\***   |
+--------------+--------------+-----------------+
| \*           | U            | U               |
+--------------+--------------+-----------------+
| \*           | X            | UX              |
+--------------+--------------+-----------------+
| \*           | 0            | Not DataIn      |
+--------------+--------------+-----------------+
| \*           | 1            | Z               |
+--------------+--------------+-----------------+
| \*           | Z            | UX              |
+--------------+--------------+-----------------+
| \*           | W            | UX              |
+--------------+--------------+-----------------+
| \*           | L            | Not DataIn      |
+--------------+--------------+-----------------+
| \*           | H            | Z               |
+--------------+--------------+-----------------+
| \*           | -            | UX              |
+--------------+--------------+-----------------+

::

      UX: if dataIn == U then U else X
      DataOut*: Strength map for DataOut according to tristate table Buf3slTable

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| Type                                                                                                        | Name       | Default      | Description           |
+=============================================================================================================+============+==============+=======================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                       | tHL        | 0            | High->Low delay [s]   |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                       | tLH        | 0            | Low->High delay [s]   |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+
| `Strength <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Strength>`_   | strength   | S.'S\_X01'   | output strength       |
+-------------------------------------------------------------------------------------------------------------+------------+--------------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| Type                                                                                                                         | Name     | Description   |
+==============================================================================================================================+==========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | enable   |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y        |               |
+------------------------------------------------------------------------------------------------------------------------------+----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model INV3SL "Tristate inverter with enable active low"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      parameter D.Interfaces.Strength strength = S.'S_X01' "output strength";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.Buf3sTable[strength, T.NotTable[enable], T.NotTable[x]];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end INV3SL;

--------------

|image26| `Modelica.Electrical.Digital.Tristates <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates>`_.WiredX
--------------------------------------------------------------------------------------------------------------------------------------------

**Wired node with multiple input and one output**

.. figure:: Modelica.Electrical.Digital.Tristates.WiredXD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Tristates.WiredX

   Modelica.Electrical.Digital.Tristates.WiredX

Information
~~~~~~~~~~~

::

Wires n input signals in one output signal, without delay.

Resolution table is given by
http://www.cs.sfu.ca/~ggbaker/reference/std\_logic/src/std\_logic\_misc.vhd

::

Extends from
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

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

    model WiredX "Wired node with multiple input and one output"
      extends D.Interfaces.MISO;
    protected 
      D.Interfaces.Logic auxiliary[n](each start=L.'Z', each fixed=true);
    equation 
      auxiliary[1] = x[1];
      for i in 1:n - 1 loop
        auxiliary[i + 1] = D.Tables.ResolutionTable[auxiliary[i], x[i + 1]];
      end for;
      y = pre(auxiliary[n]);
    end WiredX;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:32
2010.

.. |Modelica.Electrical.Digital.Tristates.NXFERGATE| image:: Modelica.Electrical.Digital.Tristates.NXFERGATES.png
.. |Modelica.Electrical.Digital.Tristates.NRXFERGATE| image:: Modelica.Electrical.Digital.Tristates.NRXFERGATES.png
.. |Modelica.Electrical.Digital.Tristates.PXFERGATE| image:: Modelica.Electrical.Digital.Tristates.PXFERGATES.png
.. |Modelica.Electrical.Digital.Tristates.PRXFERGATE| image:: Modelica.Electrical.Digital.Tristates.PRXFERGATES.png
.. |Modelica.Electrical.Digital.Tristates.BUF3S| image:: Modelica.Electrical.Digital.Tristates.BUF3SS.png
.. |Modelica.Electrical.Digital.Tristates.BUF3SL| image:: Modelica.Electrical.Digital.Tristates.BUF3SS.png
.. |Modelica.Electrical.Digital.Tristates.INV3S| image:: Modelica.Electrical.Digital.Tristates.BUF3SS.png
.. |Modelica.Electrical.Digital.Tristates.INV3SL| image:: Modelica.Electrical.Digital.Tristates.BUF3SS.png
.. |Modelica.Electrical.Digital.Tristates.WiredX| image:: Modelica.Electrical.Digital.Tristates.WiredXS.png
.. |image9| image:: Modelica.Electrical.Digital.Tristates.NXFERGATES.png
.. |image10| image:: Modelica.Electrical.Digital.Tristates.NRXFERGATES.png
.. |image11| image:: Modelica.Electrical.Digital.Tristates.PXFERGATES.png
.. |image12| image:: Modelica.Electrical.Digital.Tristates.PRXFERGATES.png
.. |image13| image:: Modelica.Electrical.Digital.Tristates.BUF3SS.png
.. |image14| image:: Modelica.Electrical.Digital.Tristates.BUF3SS.png
.. |image15| image:: Modelica.Electrical.Digital.Tristates.BUF3SS.png
.. |image16| image:: Modelica.Electrical.Digital.Tristates.BUF3SS.png
.. |image17| image:: Modelica.Electrical.Digital.Tristates.WiredXS.png
.. |image18| image:: Modelica.Electrical.Digital.Tristates.NXFERGATEI.png
.. |image19| image:: Modelica.Electrical.Digital.Tristates.NRXFERGATEI.png
.. |image20| image:: Modelica.Electrical.Digital.Tristates.PXFERGATEI.png
.. |image21| image:: Modelica.Electrical.Digital.Tristates.PRXFERGATEI.png
.. |image22| image:: Modelica.Electrical.Digital.Tristates.BUF3SI.png
.. |image23| image:: Modelica.Electrical.Digital.Tristates.BUF3SI.png
.. |image24| image:: Modelica.Electrical.Digital.Tristates.INV3SI.png
.. |image25| image:: Modelica.Electrical.Digital.Tristates.INV3SLI.png
.. |image26| image:: Modelica.Electrical.Digital.Tristates.WiredXI.png
