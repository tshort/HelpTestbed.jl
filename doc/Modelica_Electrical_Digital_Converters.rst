======================================
Modelica.Electrical.Digital.Converters
======================================

`Modelica.Electrical.Digital <Modelica_Electrical_Digital.html#Modelica.Electrical.Digital>`_.Converters
--------------------------------------------------------------------------------------------------------

**Converters between 2-,3-,4- and 9-valued logic**

Information
~~~~~~~~~~~

::

The Converter BooleanToLogic, LogicToBoolean, RealToLogic, and LogicTo
Real components are not standard logic components. They were designed to
easily convert from or to Boolean or Real valued signals. The
LogicToX01, LogicToX01Z and LogicTo UX01 converters correspond to
standard logic functions. They transform 9-valued logic to 3- or
4-valued logic.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+
| Name                                                                                                                                                                            | Description                  |
+=================================================================================================================================================================================+==============================+
| |image7| `LogicToXO1 <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters.LogicToXO1>`_                                                          | Conversion to XO1            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+
| |image8| `LogicToXO1Z <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters.LogicToXO1Z>`_                                                        | Conversion to XO1Z           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+
| |image9| `LogicToUX01 <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters.LogicToUX01>`_                                                        | Conversion to UXO1           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+
| |image10| `BooleanToLogic <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters.BooleanToLogic>`_                                                 | Boolean to Logic converter   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+
| |image11| `LogicToBoolean <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters.LogicToBoolean>`_                                                 | Logic to Boolean converter   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+
| |image12| `RealToLogic <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters.RealToLogic>`_                                                       | Real to Logic converter      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+
| |image13| `LogicToReal <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters.LogicToReal>`_                                                       | Logic to Real converter      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+

--------------

|image14| `Modelica.Electrical.Digital.Converters <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters>`_.LogicToXO1
---------------------------------------------------------------------------------------------------------------------------------------------------

**Conversion to XO1**

.. figure:: Modelica.Electrical.Digital.Converters.LogicToXO1D.png
   :align: center
   :alt: Modelica.Electrical.Digital.Converters.LogicToXO1

   Modelica.Electrical.Digital.Converters.LogicToXO1

Information
~~~~~~~~~~~

::

Conversion of a nine valued digital input into a X01 digital output
without any delay according to IEEE 1164 To\_X01 function.

**Conversion Table:**

::

      input                  output
      'U' (coded by 1)       'X'  (coded by 2)
      'X' (coded by 2)       'X'  (coded by 2)
      '0' (coded by 3)       '0'  (coded by 3)
      '1' (coded by 4)       '1'  (coded by 4)
      'Z' (coded by 5)       'X'  (coded by 2)
      'W' (coded by 6)       'X'  (coded by 2)
      'L' (coded by 7)       '0'  (coded by 3)
      'H' (coded by 8)       '1'  (coded by 4)
      '-' (coded by 9)       'X'  (coded by 2)

If the signal width is greater than 1 this conversion is done for each
signal.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+----------------+
| Type      | Name   | Default   | Description    |
+===========+========+===========+================+
| Integer   | n      |           | signal width   |
+-----------+--------+-----------+----------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                         | Name   | Description   |
+==============================================================================================================================+========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block LogicToXO1 "Conversion to XO1"
      import D = Modelica.Electrical.Digital;
      import T = Modelica.Electrical.Digital.Tables;
      D.Interfaces.DigitalInput x[n];
      D.Interfaces.DigitalOutput y[n];
      parameter Integer n(final min=1, start=1) "signal width";
    algorithm 
      for i in 1:n loop
        y[i] := T.X01Table[x[i]];
      end for;
    end LogicToXO1;

--------------

|image15| `Modelica.Electrical.Digital.Converters <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters>`_.LogicToXO1Z
----------------------------------------------------------------------------------------------------------------------------------------------------

**Conversion to XO1Z**

.. figure:: Modelica.Electrical.Digital.Converters.LogicToXO1D.png
   :align: center
   :alt: Modelica.Electrical.Digital.Converters.LogicToXO1Z

   Modelica.Electrical.Digital.Converters.LogicToXO1Z

Information
~~~~~~~~~~~

::

Conversion of a nine valued digital input into a X01Z digital output
without any delay according to IEEE 1164 To\_X01Z function.

**Conversion Table:**

::

     input                  output
     'U' (coded by 1)       'X'  (coded by 2)
     'X' (coded by 2)       'X'  (coded by 2)
     '0' (coded by 3)       '0'  (coded by 3)
     '1' (coded by 4)       '1'  (coded by 4)
     'Z' (coded by 5)       'Z'  (coded by 5)
     'W' (coded by 6)       'X'  (coded by 2)
     'L' (coded by 7)       '0'  (coded by 3)
     'H' (coded by 8)       '1'  (coded by 4)
     '-' (coded by 9)       'X'  (coded by 2)

If the signal width is greater than 1 this conversion is done for each
signal.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+----------------+
| Type      | Name   | Default   | Description    |
+===========+========+===========+================+
| Integer   | n      |           | signal width   |
+-----------+--------+-----------+----------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                         | Name   | Description   |
+==============================================================================================================================+========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block LogicToXO1Z "Conversion to XO1Z"
      import D = Modelica.Electrical.Digital;
      import T = Modelica.Electrical.Digital.Tables;
      D.Interfaces.DigitalInput x[n];
      D.Interfaces.DigitalOutput y[n];
      parameter Integer n(final min=1, start=1) "signal width";
    algorithm 
      for i in 1:n loop
        y[i] := T.X01ZTable[x[i]];
      end for;
    end LogicToXO1Z;

--------------

|image16| `Modelica.Electrical.Digital.Converters <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters>`_.LogicToUX01
----------------------------------------------------------------------------------------------------------------------------------------------------

**Conversion to UXO1**

.. figure:: Modelica.Electrical.Digital.Converters.LogicToXO1D.png
   :align: center
   :alt: Modelica.Electrical.Digital.Converters.LogicToUX01

   Modelica.Electrical.Digital.Converters.LogicToUX01

Information
~~~~~~~~~~~

::

Conversion of a nine valued digital input into a UX01 digital output
without any delay according to IEEE 1164 To\_UX01 function.

**Conversion Table:**

::

     input                  output
     'U' (coded by 1)       'U'  (coded by 1)
     'X' (coded by 2)       'X'  (coded by 2)
     '0' (coded by 3)       '0'  (coded by 3)
     '1' (coded by 4)       '1'  (coded by 4)
     'Z' (coded by 5)       'X'  (coded by 2)
     'W' (coded by 6)       'X'  (coded by 2)
     'L' (coded by 7)       '0'  (coded by 3)
     'H' (coded by 8)       '1'  (coded by 4)
     '-' (coded by 9)       'X'  (coded by 2)

If the signal width is greater than 1 this conversion is done for each
signal.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+----------------+
| Type      | Name   | Default   | Description    |
+===========+========+===========+================+
| Integer   | n      |           | signal width   |
+-----------+--------+-----------+----------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                         | Name   | Description   |
+==============================================================================================================================+========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block LogicToUX01 "Conversion to UXO1"
      import D = Modelica.Electrical.Digital;
      import T = Modelica.Electrical.Digital.Tables;
      D.Interfaces.DigitalInput x[n];
      D.Interfaces.DigitalOutput y[n];
      parameter Integer n(final min=1, start=1) "signal width";
    algorithm 
      for i in 1:n loop
        y[i] := T.UX01Table[x[i]];
      end for;
    end LogicToUX01;

--------------

|image17| `Modelica.Electrical.Digital.Converters <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters>`_.BooleanToLogic
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Boolean to Logic converter**

.. figure:: Modelica.Electrical.Digital.Converters.BooleanToLogicD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Converters.BooleanToLogic

   Modelica.Electrical.Digital.Converters.BooleanToLogic

Information
~~~~~~~~~~~

::

Conversion of a Boolean input into a digital output without any delay
according to:

::

     input      output
     true       '1'  (coded by 4)
     false      '0'  (coded by 3)

If the signal width is greater than 1 this conversion is done for each
signal.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+----------------+
| Type      | Name   | Default   | Description    |
+===========+========+===========+================+
| Integer   | n      |           | signal width   |
+-----------+--------+-----------+----------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                         | Name   | Description   |
+==============================================================================================================================+========+===============+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_                              | x[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block BooleanToLogic "Boolean to Logic converter"
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      Modelica.Blocks.Interfaces.BooleanInput x[n];
      parameter Integer n(final min=1, start=1) "signal width";
      Modelica.Electrical.Digital.Interfaces.DigitalOutput y[n];
    equation 
      for i in 1:n loop
        y[i] = if x[i] then L.'1' else L.'0';
      end for;
    end BooleanToLogic;

--------------

|image18| `Modelica.Electrical.Digital.Converters <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters>`_.LogicToBoolean
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Logic to Boolean converter**

.. figure:: Modelica.Electrical.Digital.Converters.LogicToBooleanD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Converters.LogicToBoolean

   Modelica.Electrical.Digital.Converters.LogicToBoolean

Information
~~~~~~~~~~~

::

Conversion of a digital input into a Boolean output without any delay
according to:

::

     input                 output
     'U'  (coded by 1)     false
     'X'  (coded by 2)     false
     '0'  (coded by 3)     false
     '1'  (coded by 4)     true
     'Z'  (coded by 5)     false
     'W'  (coded by 6)     false
     'L'  (coded by 7)     false
     'H'  (coded by 8)     true
     '-'  (coded by 9)     false

If the signal width is greater than 1 this conversion is done for each
signal.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+----------------+
| Type      | Name   | Default   | Description    |
+===========+========+===========+================+
| Integer   | n      |           | signal width   |
+-----------+--------+-----------+----------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                      | Name   | Description   |
+===========================================================================================================================+========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_   | x[n]   |               |
+---------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_                        | y[n]   |               |
+---------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block LogicToBoolean "Logic to Boolean converter"
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      Modelica.Electrical.Digital.Interfaces.DigitalInput x[n];
      Modelica.Blocks.Interfaces.BooleanOutput y[n];
      parameter Integer n(final min=1, start=2) "signal width";
    equation 
      for i in 1:n loop
        y[i] = if x[i] == 4 or x[i] == 8 then true else false;
      end for;
    end LogicToBoolean;

--------------

|image19| `Modelica.Electrical.Digital.Converters <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters>`_.RealToLogic
----------------------------------------------------------------------------------------------------------------------------------------------------

**Real to Logic converter**

.. figure:: Modelica.Electrical.Digital.Converters.RealToLogicD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Converters.RealToLogic

   Modelica.Electrical.Digital.Converters.RealToLogic

Information
~~~~~~~~~~~

::

Conversion of a real input into a digital output without any delay
according to:

::

                                     condition            output
          first check:               input greater upp    lupp
          second check:              input larger low     llow
                                     else                 lmid

If the signal width is greater than 1 this conversion is done for each
signal.

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+-----------------+-----------+----------------------------------+
| Type                                                                                                  | Name            | Default   | Description                      |
+=======================================================================================================+=================+===========+==================================+
| Integer                                                                                               | n               |           | signal width                     |
+-------------------------------------------------------------------------------------------------------+-----------------+-----------+----------------------------------+
| Real                                                                                                  | upper\_limit    |           | upper limit                      |
+-------------------------------------------------------------------------------------------------------+-----------------+-----------+----------------------------------+
| Real                                                                                                  | lower\_limit    |           | lower limit                      |
+-------------------------------------------------------------------------------------------------------+-----------------+-----------+----------------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | upper\_value    |           | output if input > upper\_limit   |
+-------------------------------------------------------------------------------------------------------+-----------------+-----------+----------------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | lower\_value    |           | output if input < lower\_limit   |
+-------------------------------------------------------------------------------------------------------+-----------------+-----------+----------------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | middle\_value   |           | output else                      |
+-------------------------------------------------------------------------------------------------------+-----------------+-----------+----------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                         | Name   | Description   |
+==============================================================================================================================+========+===============+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                    | x[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y[n]   |               |
+------------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block RealToLogic "Real to Logic converter"
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      Modelica.Blocks.Interfaces.RealInput x[n];
      Digital.Interfaces.DigitalOutput y[n];
      parameter Integer n(final min=1, start=1) "signal width";
      parameter Real upper_limit(start=1) "upper limit";
      parameter Real lower_limit(start=0) "lower limit";
      parameter L upper_value(start=L.'1') "output if input > upper_limit";
      parameter L lower_value(start=L.'0') "output if input < lower_limit";
      parameter L middle_value(start=L.'X') "output else";
    equation 
      for i in 1:n loop
        y[i] = if x[i] > upper_limit then upper_value else 
          if x[i] < lower_limit then lower_value else middle_value;
      end for;
    end RealToLogic;

--------------

|image20| `Modelica.Electrical.Digital.Converters <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters>`_.LogicToReal
----------------------------------------------------------------------------------------------------------------------------------------------------

**Logic to Real converter**

.. figure:: Modelica.Electrical.Digital.Converters.LogicToRealD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Converters.LogicToReal

   Modelica.Electrical.Digital.Converters.LogicToReal

Information
~~~~~~~~~~~

::

Conversion of a digital input into a Real output without any delay
according to:

::

      input                 output
      'U'  (coded by 1)     val_U
      'X'  (coded by 2)     val_X
      '0'  (coded by 3)     val_0
      '1'  (coded by 4)     val_1
      'Z'  (coded by 5)     val_Z
      'W'  (coded by 6)     val_W
      'L'  (coded by 7)     val_L
      'H'  (coded by 8)     val_H
      '-'  (coded by 9)     val_m

The values val... are given by parameters.

If the signal width is greater than 1 this conversion is done for each
signal.

::

Parameters
~~~~~~~~~~

+-----------+------------+-----------+-----------------------------------------+
| Type      | Name       | Default   | Description                             |
+===========+============+===========+=========================================+
| Integer   | n          |           | signal width                            |
+-----------+------------+-----------+-----------------------------------------+
| Real      | value\_U   |           | value for digital U (uninitialized)     |
+-----------+------------+-----------+-----------------------------------------+
| Real      | value\_X   |           | value for digital X (Forcing Unknown)   |
+-----------+------------+-----------+-----------------------------------------+
| Real      | value\_0   |           | value for digital 0 (Forcing 0)         |
+-----------+------------+-----------+-----------------------------------------+
| Real      | value\_1   |           | value for digital 1 (Forcing 1)         |
+-----------+------------+-----------+-----------------------------------------+
| Real      | value\_Z   |           | value for digital Z (High Impedance)    |
+-----------+------------+-----------+-----------------------------------------+
| Real      | value\_W   |           | value for digital W (Weak Unknown)      |
+-----------+------------+-----------+-----------------------------------------+
| Real      | value\_L   |           | value for digital L (Weak 0)            |
+-----------+------------+-----------+-----------------------------------------+
| Real      | value\_H   |           | value for digital H (Weak 1)            |
+-----------+------------+-----------+-----------------------------------------+
| Real      | value\_m   |           | value for digital m (Do not care)       |
+-----------+------------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                      | Name   | Description   |
+===========================================================================================================================+========+===============+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_   | x[n]   |               |
+---------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                              | y[n]   |               |
+---------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block LogicToReal "Logic to Real converter"
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      Modelica.Electrical.Digital.Interfaces.DigitalInput x[n];
      Modelica.Blocks.Interfaces.RealOutput y[n];
      parameter Integer n(final min=1, start=1) "signal width";
      parameter Real value_U(start=0.5) "value for digital U (uninitialized)";
      parameter Real value_X(start=0.5) "value for digital X (Forcing Unknown)";
      parameter Real value_0(start=0) "value for digital 0   (Forcing 0)";
      parameter Real value_1(start=1) "value for digital 1 (Forcing 1)";
      parameter Real value_Z(start=0.5) "value for digital Z (High Impedance)";
      parameter Real value_W(start=0.5) "value for digital W (Weak    Unknown)";
      parameter Real value_L(start=0) "value for digital L (Weak 0)";
      parameter Real value_H(start=1) "value for digital H (Weak 1)";
      parameter Real value_m(start=0.5) "value for digital m (Do not care)";
    equation 
      for i in 1:n loop
       y[i]= if x[i] == L.'U' then value_U else 
                if x[i] == L.'X' then value_X else if 
          x[i] == L.'0' then value_0 else if x[i] == L.'1' then 
               value_1 else if x[i] == L.
          'Z' then value_Z else if x[i] == L.'W' then value_W else 
                if x[i] == L.'L' then value_L else if 
          x[i] == L.'H' then value_H else value_m;
      end for;
    end LogicToReal;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:29
2010.

.. |Modelica.Electrical.Digital.Converters.LogicToXO1| image:: Modelica.Electrical.Digital.Converters.LogicToXO1S.png
.. |Modelica.Electrical.Digital.Converters.LogicToXO1Z| image:: Modelica.Electrical.Digital.Converters.LogicToXO1S.png
.. |Modelica.Electrical.Digital.Converters.LogicToUX01| image:: Modelica.Electrical.Digital.Converters.LogicToXO1S.png
.. |Modelica.Electrical.Digital.Converters.BooleanToLogic| image:: Modelica.Electrical.Digital.Converters.BooleanToLogicS.png
.. |Modelica.Electrical.Digital.Converters.LogicToBoolean| image:: Modelica.Electrical.Digital.Converters.LogicToBooleanS.png
.. |Modelica.Electrical.Digital.Converters.RealToLogic| image:: Modelica.Electrical.Digital.Converters.RealToLogicS.png
.. |Modelica.Electrical.Digital.Converters.LogicToReal| image:: Modelica.Electrical.Digital.Converters.LogicToRealS.png
.. |image7| image:: Modelica.Electrical.Digital.Converters.LogicToXO1S.png
.. |image8| image:: Modelica.Electrical.Digital.Converters.LogicToXO1S.png
.. |image9| image:: Modelica.Electrical.Digital.Converters.LogicToXO1S.png
.. |image10| image:: Modelica.Electrical.Digital.Converters.BooleanToLogicS.png
.. |image11| image:: Modelica.Electrical.Digital.Converters.LogicToBooleanS.png
.. |image12| image:: Modelica.Electrical.Digital.Converters.RealToLogicS.png
.. |image13| image:: Modelica.Electrical.Digital.Converters.LogicToRealS.png
.. |image14| image:: Modelica.Electrical.Digital.Converters.LogicToXO1I.png
.. |image15| image:: Modelica.Electrical.Digital.Converters.LogicToXO1I.png
.. |image16| image:: Modelica.Electrical.Digital.Converters.LogicToXO1I.png
.. |image17| image:: Modelica.Electrical.Digital.Converters.BooleanToLogicI.png
.. |image18| image:: Modelica.Electrical.Digital.Converters.LogicToBooleanI.png
.. |image19| image:: Modelica.Electrical.Digital.Converters.RealToLogicI.png
.. |image20| image:: Modelica.Electrical.Digital.Converters.LogicToRealI.png
