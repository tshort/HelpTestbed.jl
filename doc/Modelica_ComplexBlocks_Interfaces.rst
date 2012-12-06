=================================
Modelica.ComplexBlocks.Interfaces
=================================

`Modelica.ComplexBlocks <Modelica_ComplexBlocks.html#Modelica.ComplexBlocks>`_.Interfaces
-----------------------------------------------------------------------------------------

**Library of connectors and partial models for input/output blocks**

Information
~~~~~~~~~~~

::

This library defines Complex input and output signals, as well as
partial blocks.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                            | Description                                                                                      |
+=================================================================================================================================================================================+==================================================================================================+
| |image12| `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_                                                               | 'input Complex' as connector                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image13| `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                                             | 'output Complex' as connector                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image14| `ComplexSO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSO>`_                                                                     | Single Output continuous control block                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image15| `ComplexMO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexMO>`_                                                                     | Multiple Output continuous control block                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image16| `ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_                                                                 | Single Input Single Output continuous control block                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image17| `ComplexSI2SO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSI2SO>`_                                                               | 2 Single Input / 1 Single Output continuous control block                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image18| `ComplexSIMO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSIMO>`_                                                                 | Single Input Multiple Output continuous control block                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image19| `ComplexMISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexMISO>`_                                                                 | Multiple Input Single Output continuous control block                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image20| `ComplexMIMO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexMIMO>`_                                                                 | Multiple Input Multiple Output continuous control block                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image21| `ComplexMIMOs <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexMIMOs>`_                                                               | Multiple Input Multiple Output continuous control block with same number of inputs and outputs   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image22| `ComplexMI2MO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexMI2MO>`_                                                               | 2 Multiple Input / Multiple Output continuous control block                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image23| `ComplexSignalSource <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSignalSource>`_                                                 | Base class for continuous signal source                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+

--------------

|image24| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexInput
--------------------------------------------------------------------------------------------------------------------------------------

**'input Complex' as connector**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexInputD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexInput

   Modelica.ComplexBlocks.Interfaces.ComplexInput

Information
~~~~~~~~~~~

::

Connector with one input signal of type Complex.

::

Extends from
`Complex <../../../Modelica/Library/help/Complex.html#Complex>`_
(Complex number with overloaded operators).

Parameters
~~~~~~~~~~

+--------+--------+-----------+------------------------------------+
| Type   | Name   | Default   | Description                        |
+========+========+===========+====================================+
| Real   | re     |           | Real part of complex number        |
+--------+--------+-----------+------------------------------------+
| Real   | im     |           | Imaginary part of complex number   |
+--------+--------+-----------+------------------------------------+

Contents
~~~~~~~~

+--------+--------+------------------------------------+
| Type   | Name   | Description                        |
+========+========+====================================+
| Real   | re     | Real part of complex number        |
+--------+--------+------------------------------------+
| Real   | im     | Imaginary part of complex number   |
+--------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ComplexInput = input Complex "'input Complex' as connector";

--------------

|image25| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexOutput
---------------------------------------------------------------------------------------------------------------------------------------

**'output Complex' as connector**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexOutputD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexOutput

   Modelica.ComplexBlocks.Interfaces.ComplexOutput

Information
~~~~~~~~~~~

::

Connector with one output signal of type Complex.

::

Extends from
`Complex <../../../Modelica/Library/help/Complex.html#Complex>`_
(Complex number with overloaded operators).

Parameters
~~~~~~~~~~

+--------+--------+-----------+------------------------------------+
| Type   | Name   | Default   | Description                        |
+========+========+===========+====================================+
| Real   | re     |           | Real part of complex number        |
+--------+--------+-----------+------------------------------------+
| Real   | im     |           | Imaginary part of complex number   |
+--------+--------+-----------+------------------------------------+

Contents
~~~~~~~~

+--------+--------+------------------------------------+
| Type   | Name   | Description                        |
+========+========+====================================+
| Real   | re     | Real part of complex number        |
+--------+--------+------------------------------------+
| Real   | im     | Imaginary part of complex number   |
+--------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ComplexOutput = output Complex "'output Complex' as connector";

--------------

|image26| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexSO
-----------------------------------------------------------------------------------------------------------------------------------

**Single Output continuous control block**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexSOD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexSO

   Modelica.ComplexBlocks.Interfaces.ComplexSO

Information
~~~~~~~~~~~

::

Block has one continuous Complex output signal.

::

Extends from
`Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                               | Name   | Description                          |
+====================================================================================================================+========+======================================+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y      | Connector of Complex output signal   |
+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block ComplexSO "Single Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      ComplexOutput y "Connector of Complex output signal";
    end ComplexSO;

--------------

|image27| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexMO
-----------------------------------------------------------------------------------------------------------------------------------

**Multiple Output continuous control block**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexSOD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexMO

   Modelica.ComplexBlocks.Interfaces.ComplexMO

Information
~~~~~~~~~~~

::

Block has one continuous Complex output signal vector.

::

Extends from
`Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+---------------------+
| Type      | Name   | Default   | Description         |
+===========+========+===========+=====================+
| Integer   | nout   | 1         | Number of outputs   |
+-----------+--------+-----------+---------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------+
| Type                                                                                                               | Name      | Description                           |
+====================================================================================================================+===========+=======================================+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y[nout]   | Connector of Complex output signals   |
+--------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block ComplexMO "Multiple Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer nout(min=1) = 1 "Number of outputs";
      ComplexOutput y[nout] "Connector of Complex output signals";
    end ComplexMO;

--------------

|image28| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexSISO
-------------------------------------------------------------------------------------------------------------------------------------

**Single Input Single Output continuous control block**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexSISOD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexSISO

   Modelica.ComplexBlocks.Interfaces.ComplexSISO

Information
~~~~~~~~~~~

::

Block has one continuous Complex input and one continuous Complex output
signal.

::

Extends from
`Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                               | Name   | Description                          |
+====================================================================================================================+========+======================================+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u      | Connector of Complex input signal    |
+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y      | Connector of Complex output signal   |
+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block ComplexSISO 
      "Single Input Single Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      ComplexInput u "Connector of Complex input signal";
      ComplexOutput y "Connector of Complex output signal";
    end ComplexSISO;

--------------

|image29| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexSI2SO
--------------------------------------------------------------------------------------------------------------------------------------

**2 Single Input / 1 Single Output continuous control block**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexSI2SOD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexSI2SO

   Modelica.ComplexBlocks.Interfaces.ComplexSI2SO

Information
~~~~~~~~~~~

::

Block has two continuous Complex input signals u1 and u2 and one
continuous Complex output signal y.

::

Extends from
`Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------+
| Type                                                                                                               | Name   | Description                           |
+====================================================================================================================+========+=======================================+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u1     | Connector of Complex input signal 1   |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u2     | Connector of Complex input signal 2   |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y      | Connector of Complex output signal    |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block ComplexSI2SO 
      "2 Single Input / 1 Single Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      ComplexInput u1 "Connector of Complex input signal 1";
      ComplexInput u2 "Connector of Complex input signal 2";
      ComplexOutput y "Connector of Complex output signal";
    end ComplexSI2SO;

--------------

|image30| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexSIMO
-------------------------------------------------------------------------------------------------------------------------------------

**Single Input Multiple Output continuous control block**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexSIMO

   Modelica.ComplexBlocks.Interfaces.ComplexSIMO

Information
~~~~~~~~~~~

::

Block has one continuous Complex input signal and a vector of continuous
Complex output signals.

::

Extends from
`Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+---------------------+
| Type      | Name   | Default   | Description         |
+===========+========+===========+=====================+
| Integer   | nout   | 1         | Number of outputs   |
+-----------+--------+-----------+---------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------+
| Type                                                                                                               | Name      | Description                           |
+====================================================================================================================+===========+=======================================+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u         | Connector of Complex input signal     |
+--------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y[nout]   | Connector of Complex output signals   |
+--------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block ComplexSIMO 
      "Single Input Multiple Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer nout=1 "Number of outputs";
      ComplexInput u "Connector of Complex input signal";
      ComplexOutput y[nout] "Connector of Complex output signals";
    end ComplexSIMO;

--------------

|image31| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexMISO
-------------------------------------------------------------------------------------------------------------------------------------

**Multiple Input Single Output continuous control block**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexMISO

   Modelica.ComplexBlocks.Interfaces.ComplexMISO

Information
~~~~~~~~~~~

::

Block has a vector of continuous Complex input signals and one
continuous Complex output signal.

::

Extends from
`Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | nin    | 1         | Number of inputs   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+----------+--------------------------------------+
| Type                                                                                                               | Name     | Description                          |
+====================================================================================================================+==========+======================================+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u[nin]   | Connector of Complex input signals   |
+--------------------------------------------------------------------------------------------------------------------+----------+--------------------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y        | Connector of Complex output signal   |
+--------------------------------------------------------------------------------------------------------------------+----------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block ComplexMISO 
      "Multiple Input Single Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer nin=1 "Number of inputs";
      ComplexInput u[nin] "Connector of Complex input signals";
      ComplexOutput y "Connector of Complex output signal";
    end ComplexMISO;

--------------

|image32| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexMIMO
-------------------------------------------------------------------------------------------------------------------------------------

**Multiple Input Multiple Output continuous control block**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexMIMO

   Modelica.ComplexBlocks.Interfaces.ComplexMIMO

Information
~~~~~~~~~~~

::

Block has a continuous Complex input vector and a continuous Complex
output signal vector. The signal sizes of the input and output vector
may be different.

::

Extends from
`Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+---------------------+
| Type      | Name   | Default   | Description         |
+===========+========+===========+=====================+
| Integer   | nin    | 1         | Number of inputs    |
+-----------+--------+-----------+---------------------+
| Integer   | nout   | 1         | Number of outputs   |
+-----------+--------+-----------+---------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------+
| Type                                                                                                               | Name      | Description                           |
+====================================================================================================================+===========+=======================================+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u[nin]    | Connector of Complex input signals    |
+--------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y[nout]   | Connector of Complex output signals   |
+--------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block ComplexMIMO 
      "Multiple Input Multiple Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer nin=1 "Number of inputs";
      parameter Integer nout=1 "Number of outputs";
      ComplexInput u[nin] "Connector of Complex input signals";
      ComplexOutput y[nout] "Connector of Complex output signals";
    end ComplexMIMO;

--------------

|image33| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexMIMOs
--------------------------------------------------------------------------------------------------------------------------------------

**Multiple Input Multiple Output continuous control block with same
number of inputs and outputs**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexMIMOs

   Modelica.ComplexBlocks.Interfaces.ComplexMIMOs

Information
~~~~~~~~~~~

::

Block has a continuous Complex input vector and a continuous Complex
output signal vector where the signal sizes of the input and output
vector are identical.

::

Extends from
`Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n      | 1         | Number of inputs (= number of outputs)   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------+
| Type                                                                                                               | Name   | Description                           |
+====================================================================================================================+========+=======================================+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u[n]   | Connector of Complex input signals    |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y[n]   | Connector of Complex output signals   |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block ComplexMIMOs 
      "Multiple Input Multiple Output continuous control block with same number of inputs and outputs"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      ComplexInput u[n] "Connector of Complex input signals";
      ComplexOutput y[n] "Connector of Complex output signals";
    end ComplexMIMOs;

--------------

|image34| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexMI2MO
--------------------------------------------------------------------------------------------------------------------------------------

**2 Multiple Input / Multiple Output continuous control block**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexMI2MOD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexMI2MO

   Modelica.ComplexBlocks.Interfaces.ComplexMI2MO

Information
~~~~~~~~~~~

::

Block has two continuous Complex input vectors u1 and u2 and one
continuous Complex output vector y. All vectors have the same number of
elements.

::

Extends from
`Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n      | 1         | Dimension of input and output vectors.   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+---------+----------------------------------------+
| Type                                                                                                               | Name    | Description                            |
+====================================================================================================================+=========+========================================+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u1[n]   | Connector 1 of Complex input signals   |
+--------------------------------------------------------------------------------------------------------------------+---------+----------------------------------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u2[n]   | Connector 2 of Complex input signals   |
+--------------------------------------------------------------------------------------------------------------------+---------+----------------------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y[n]    | Connector of Complex output signals    |
+--------------------------------------------------------------------------------------------------------------------+---------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block ComplexMI2MO 
      "2 Multiple Input / Multiple Output continuous control block"
      extends Blocks.Interfaces.BlockIcon;
      parameter Integer n=1 "Dimension of input and output vectors.";
      ComplexInput u1[n] "Connector 1 of Complex input signals";
      ComplexInput u2[n] "Connector 2 of Complex input signals";
      ComplexOutput y[n] "Connector of Complex output signals";
    end ComplexMI2MO;

--------------

|image35| `Modelica.ComplexBlocks.Interfaces <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces>`_.ComplexSignalSource
---------------------------------------------------------------------------------------------------------------------------------------------

**Base class for continuous signal source**

.. figure:: Modelica.ComplexBlocks.Interfaces.ComplexSignalSourceD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Interfaces.ComplexSignalSource

   Modelica.ComplexBlocks.Interfaces.ComplexSignalSource

Information
~~~~~~~~~~~

::

Basic block for Complex sources. This component has one continuous
Complex output signal y and two parameters (offset, startTime) to shift
the generated signal.

::

Extends from
`ComplexBlocks.Interfaces.ComplexSO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------+-------------+--------------+----------------------------------------------+
| Type                                                               | Name        | Default      | Description                                  |
+====================================================================+=============+==============+==============================================+
| `Complex <../../../Modelica/Library/help/Complex.html#Complex>`_   | offset      | Complex(0)   | Offset of output signal y                    |
+--------------------------------------------------------------------+-------------+--------------+----------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_              | startTime   | 0            | Output y = offset for time < startTime [s]   |
+--------------------------------------------------------------------+-------------+--------------+----------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                               | Name   | Description                          |
+====================================================================================================================+========+======================================+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y      | Connector of Complex output signal   |
+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block ComplexSignalSource 
      "Base class for continuous signal source"
      extends ComplexBlocks.Interfaces.ComplexSO;
      parameter Complex offset=Complex(0) "Offset of output signal y";
      parameter SIunits.Time startTime=0 "Output y = offset for time < startTime";
    end ComplexSignalSource;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:40
2010.

.. |Modelica.ComplexBlocks.Interfaces.ComplexInput| image:: Modelica.ComplexBlocks.Interfaces.ComplexInputS.png
.. |Modelica.ComplexBlocks.Interfaces.ComplexOutput| image:: Modelica.ComplexBlocks.Interfaces.ComplexOutputS.png
.. |Modelica.ComplexBlocks.Interfaces.ComplexSO| image:: Modelica.ComplexBlocks.Interfaces.ComplexSOS.png
.. |Modelica.ComplexBlocks.Interfaces.ComplexMO| image:: Modelica.ComplexBlocks.Interfaces.ComplexSOS.png
.. |Modelica.ComplexBlocks.Interfaces.ComplexSISO| image:: Modelica.ComplexBlocks.Interfaces.ComplexSISOS.png
.. |Modelica.ComplexBlocks.Interfaces.ComplexSI2SO| image:: Modelica.ComplexBlocks.Interfaces.ComplexSI2SOS.png
.. |Modelica.ComplexBlocks.Interfaces.ComplexSIMO| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOS.png
.. |Modelica.ComplexBlocks.Interfaces.ComplexMISO| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOS.png
.. |Modelica.ComplexBlocks.Interfaces.ComplexMIMO| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOS.png
.. |Modelica.ComplexBlocks.Interfaces.ComplexMIMOs| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOS.png
.. |Modelica.ComplexBlocks.Interfaces.ComplexMI2MO| image:: Modelica.ComplexBlocks.Interfaces.ComplexMI2MOS.png
.. |Modelica.ComplexBlocks.Interfaces.ComplexSignalSource| image:: Modelica.ComplexBlocks.Interfaces.ComplexSignalSourceS.png
.. |image12| image:: Modelica.ComplexBlocks.Interfaces.ComplexInputS.png
.. |image13| image:: Modelica.ComplexBlocks.Interfaces.ComplexOutputS.png
.. |image14| image:: Modelica.ComplexBlocks.Interfaces.ComplexSOS.png
.. |image15| image:: Modelica.ComplexBlocks.Interfaces.ComplexSOS.png
.. |image16| image:: Modelica.ComplexBlocks.Interfaces.ComplexSISOS.png
.. |image17| image:: Modelica.ComplexBlocks.Interfaces.ComplexSI2SOS.png
.. |image18| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOS.png
.. |image19| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOS.png
.. |image20| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOS.png
.. |image21| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOS.png
.. |image22| image:: Modelica.ComplexBlocks.Interfaces.ComplexMI2MOS.png
.. |image23| image:: Modelica.ComplexBlocks.Interfaces.ComplexSignalSourceS.png
.. |image24| image:: Modelica.ComplexBlocks.Interfaces.ComplexInputI.png
.. |image25| image:: Modelica.ComplexBlocks.Interfaces.ComplexOutputI.png
.. |image26| image:: Modelica.ComplexBlocks.Interfaces.ComplexSOI.png
.. |image27| image:: Modelica.ComplexBlocks.Interfaces.ComplexSOI.png
.. |image28| image:: Modelica.ComplexBlocks.Interfaces.ComplexSISOI.png
.. |image29| image:: Modelica.ComplexBlocks.Interfaces.ComplexSI2SOI.png
.. |image30| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOI.png
.. |image31| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOI.png
.. |image32| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOI.png
.. |image33| image:: Modelica.ComplexBlocks.Interfaces.ComplexSIMOI.png
.. |image34| image:: Modelica.ComplexBlocks.Interfaces.ComplexMI2MOI.png
.. |image35| image:: Modelica.ComplexBlocks.Interfaces.ComplexSignalSourceI.png
