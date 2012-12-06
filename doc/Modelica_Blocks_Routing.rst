=======================
Modelica.Blocks.Routing
=======================

`Modelica.Blocks <Modelica_Blocks.html#Modelica.Blocks>`_.Routing
-----------------------------------------------------------------

**Library of blocks to combine and extract signals**

Information
~~~~~~~~~~~

::

This package contains blocks to combine and extract signals.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| Name                                                                                                                                           | Description                                                                      |
+================================================================================================================================================+==================================================================================+
| |image16| `Replicator <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.Replicator>`_                                                      | Signal replicator                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image17| `ExtractSignal <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.ExtractSignal>`_                                                | Extract signals from an input signal vector                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image18| `Extractor <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.Extractor>`_                                                        | Extract scalar signal out of signal vector dependent on IntegerRealInput index   |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image19| `Multiplex2 <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.Multiplex2>`_                                                      | Multiplexer block for two input connectors                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image20| `Multiplex3 <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.Multiplex3>`_                                                      | Multiplexer block for three input connectors                                     |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image21| `Multiplex4 <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.Multiplex4>`_                                                      | Multiplexer block for four input connectors                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image22| `Multiplex5 <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.Multiplex5>`_                                                      | Multiplexer block for five input connectors                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image23| `Multiplex6 <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.Multiplex6>`_                                                      | Multiplexer block for six input connectors                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image24| `DeMultiplex2 <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.DeMultiplex2>`_                                                  | DeMultiplexer block for two output connectors                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image25| `DeMultiplex3 <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.DeMultiplex3>`_                                                  | DeMultiplexer block for three output connectors                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image26| `DeMultiplex4 <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.DeMultiplex4>`_                                                  | DeMultiplexer block for four output connectors                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image27| `DeMultiplex5 <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.DeMultiplex5>`_                                                  | DeMultiplexer block for five output connectors                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image28| `DeMultiplex6 <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.DeMultiplex6>`_                                                  | DeMultiplexer block for six output connectors                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image29| `RealPassThrough <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.RealPassThrough>`_                                            | Pass a Real signal through without modification                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image30| `IntegerPassThrough <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.IntegerPassThrough>`_                                      | Pass a Integer signal through without modification                               |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+
| |image31| `BooleanPassThrough <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing.BooleanPassThrough>`_                                      | Pass a Boolean signal through without modification                               |
+------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+

--------------

|image32| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.Replicator
------------------------------------------------------------------------------------------------------

**Signal replicator**

.. figure:: Modelica.Blocks.Routing.ReplicatorD.png
   :align: center
   :alt: Modelica.Blocks.Routing.Replicator

   Modelica.Blocks.Routing.Replicator

Information
~~~~~~~~~~~

::

This block replicates the input signal to an array of ``nout`` identical
output signals.

::

Extends from
`Modelica.Blocks.Interfaces.SIMO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SIMO>`_
(Single Input Multiple Output continuous control block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+---------------------+
| Type      | Name   | Default   | Description         |
+===========+========+===========+=====================+
| Integer   | nout   | 1         | Number of outputs   |
+-----------+--------+-----------+---------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| Type                                                                                           | Name      | Description                        |
+================================================================================================+===========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u         | Connector of Real input signal     |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[nout]   | Connector of Real output signals   |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Replicator "Signal replicator"
      extends Modelica.Blocks.Interfaces.SIMO;
    equation 
      y = fill(u, nout);
    end Replicator;

--------------

|image33| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.ExtractSignal
---------------------------------------------------------------------------------------------------------

**Extract signals from an input signal vector**

.. figure:: Modelica.Blocks.Routing.ExtractSignalD.png
   :align: center
   :alt: Modelica.Blocks.Routing.ExtractSignal

   Modelica.Blocks.Routing.ExtractSignal

Information
~~~~~~~~~~~

::

Extract signals from the input connector and transfer them to the output
connector.

The extracting scheme is given by the integer vector 'extract'. This
vector specifies, which input signals are taken and in which order they
are transfered to the output vector. Note, that the dimension of
'extract' has to match the number of outputs. Additionally, the
dimensions of the input connector signals and the output connector
signals have to be explicitly defined via the parameters 'nin' and
'nout'.

Example:

::

         nin = 7 "Number of inputs";
         nout = 4 "Number of outputs";
         extract[nout] = {6,3,3,2} "Extracting vector";

extracts four output signals (nout=4) from the seven elements of the
input vector (nin=7):

::

       output no. 1 is set equal to input no. 6
       output no. 2 is set equal to input no. 3
       output no. 3 is set equal to input no. 3
       output no. 4 is set equal to input no. 2

::

Extends from
`Modelica.Blocks.Interfaces.MIMO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMO>`_
(Multiple Input Multiple Output continuous control block).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+---------------------+
| Type      | Name            | Default   | Description         |
+===========+=================+===========+=====================+
| Integer   | nin             | 1         | Number of inputs    |
+-----------+-----------------+-----------+---------------------+
| Integer   | nout            | 1         | Number of outputs   |
+-----------+-----------------+-----------+---------------------+
| Integer   | extract[nout]   | 1:nout    | Extracting vector   |
+-----------+-----------------+-----------+---------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| Type                                                                                           | Name      | Description                        |
+================================================================================================+===========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[nin]    | Connector of Real input signals    |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[nout]   | Connector of Real output signals   |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block ExtractSignal "Extract signals from an input signal vector"
      extends Modelica.Blocks.Interfaces.MIMO;
      parameter Integer extract[nout]=1:nout "Extracting vector";

    equation 
      for i in 1:nout loop
        y[i] = u[extract[i]];

      end for;
    end ExtractSignal;

--------------

|image34| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.Extractor
-----------------------------------------------------------------------------------------------------

**Extract scalar signal out of signal vector dependent on
IntegerRealInput index**

.. figure:: Modelica.Blocks.Routing.ExtractorD.png
   :align: center
   :alt: Modelica.Blocks.Routing.Extractor

   Modelica.Blocks.Routing.Extractor

Information
~~~~~~~~~~~

::

This block extracts a scalar output signal out the vector of input
signals dependent on the Integer value of the additional u index:

::

        y = u [ index ] ;

where index is an additional Integer input signal.

::

Extends from
`Modelica.Blocks.Interfaces.MISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MISO>`_
(Multiple Input Single Output continuous control block).

Parameters
~~~~~~~~~~

+-----------+-------------------+-----------+------------------------------------------+
| Type      | Name              | Default   | Description                              |
+===========+===================+===========+==========================================+
| Integer   | nin               | 1         | Number of inputs                         |
+-----------+-------------------+-----------+------------------------------------------+
| Boolean   | allowOutOfRange   | false     | Index may be out of range                |
+-----------+-------------------+-----------+------------------------------------------+
| Real      | outOfRangeValue   | 1e10      | Output signal if index is out of range   |
+-----------+-------------------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+----------+-----------------------------------+
| Type                                                                                              | Name     | Description                       |
+===================================================================================================+==========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_         | u[nin]   | Connector of Real input signals   |
+---------------------------------------------------------------------------------------------------+----------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_      | y        | Connector of Real output signal   |
+---------------------------------------------------------------------------------------------------+----------+-----------------------------------+
| input `IntegerInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerInput>`_   | index    |                                   |
+---------------------------------------------------------------------------------------------------+----------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Extractor 
      "Extract scalar signal out of signal vector dependent on IntegerRealInput index"

      extends Modelica.Blocks.Interfaces.MISO;

      parameter Boolean allowOutOfRange=false "Index may be out of range";
      parameter Real outOfRangeValue=1e10 "Output signal if index is out of range";

      Modelica.Blocks.Interfaces.IntegerInput index;
    protected 
      Real k[nin];
    equation 

      when {initial(),change(index)} then

        for i in 1:nin loop
          k[i] = if index == i then 1 else 0;

        end for;

      end when;

      y = if not allowOutOfRange or index > 0 and index <= nin then 
                  k*u else outOfRangeValue;
    end Extractor;

--------------

|image35| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.Multiplex2
------------------------------------------------------------------------------------------------------

**Multiplexer block for two input connectors**

.. figure:: Modelica.Blocks.Routing.Multiplex2D.png
   :align: center
   :alt: Modelica.Blocks.Routing.Multiplex2

   Modelica.Blocks.Routing.Multiplex2

Information
~~~~~~~~~~~

::

The output connector is the **concatenation** of the two input
connectors. Note, that the dimensions of the input connector signals
have to be explicitly defined via parameters n1 and n2.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+-----------------------------------------+
| Type      | Name   | Default   | Description                             |
+===========+========+===========+=========================================+
| Integer   | n1     | 1         | dimension of input signal connector 1   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n2     | 1         | dimension of input signal connector 2   |
+-----------+--------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------------+-------------------------------------+
| Type                                                                                           | Name         | Description                         |
+================================================================================================+==============+=====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1[n1]       | Connector of Real input signals 1   |
+------------------------------------------------------------------------------------------------+--------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2[n2]       | Connector of Real input signals 2   |
+------------------------------------------------------------------------------------------------+--------------+-------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[n1 + n2]   | Connector of Real output signals    |
+------------------------------------------------------------------------------------------------+--------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Multiplex2 "Multiplexer block for two input connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of input signal connector 1";
      parameter Integer n2=1 "dimension of input signal connector 2";
      Modelica.Blocks.Interfaces.RealInput u1[n1] 
        "Connector of Real input signals 1";
      Modelica.Blocks.Interfaces.RealInput u2[n2] 
        "Connector of Real input signals 2";
      Modelica.Blocks.Interfaces.RealOutput y[n1 + n2] 
        "Connector of Real output signals";

    equation 
      [y] = [u1; u2];
    end Multiplex2;

--------------

|image36| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.Multiplex3
------------------------------------------------------------------------------------------------------

**Multiplexer block for three input connectors**

.. figure:: Modelica.Blocks.Routing.Multiplex3D.png
   :align: center
   :alt: Modelica.Blocks.Routing.Multiplex3

   Modelica.Blocks.Routing.Multiplex3

Information
~~~~~~~~~~~

::

The output connector is the **concatenation** of the three input
connectors. Note, that the dimensions of the input connector signals
have to be explicitly defined via parameters n1, n2 and n3.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+-----------------------------------------+
| Type      | Name   | Default   | Description                             |
+===========+========+===========+=========================================+
| Integer   | n1     | 1         | dimension of input signal connector 1   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n2     | 1         | dimension of input signal connector 2   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n3     | 1         | dimension of input signal connector 3   |
+-----------+--------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-------------------+-------------------------------------+
| Type                                                                                           | Name              | Description                         |
+================================================================================================+===================+=====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1[n1]            | Connector of Real input signals 1   |
+------------------------------------------------------------------------------------------------+-------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2[n2]            | Connector of Real input signals 2   |
+------------------------------------------------------------------------------------------------+-------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u3[n3]            | Connector of Real input signals 3   |
+------------------------------------------------------------------------------------------------+-------------------+-------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[n1 + n2 + n3]   | Connector of Real output signals    |
+------------------------------------------------------------------------------------------------+-------------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Multiplex3 "Multiplexer block for three input connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of input signal connector 1";
      parameter Integer n2=1 "dimension of input signal connector 2";
      parameter Integer n3=1 "dimension of input signal connector 3";
      Modelica.Blocks.Interfaces.RealInput u1[n1] 
        "Connector of Real input signals 1";
      Modelica.Blocks.Interfaces.RealInput u2[n2] 
        "Connector of Real input signals 2";
      Modelica.Blocks.Interfaces.RealInput u3[n3] 
        "Connector of Real input signals 3";
      Modelica.Blocks.Interfaces.RealOutput y[n1 + n2 + n3] 
        "Connector of Real output signals";

    equation 
      [y] = [u1; u2; u3];
    end Multiplex3;

--------------

|image37| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.Multiplex4
------------------------------------------------------------------------------------------------------

**Multiplexer block for four input connectors**

.. figure:: Modelica.Blocks.Routing.Multiplex4D.png
   :align: center
   :alt: Modelica.Blocks.Routing.Multiplex4

   Modelica.Blocks.Routing.Multiplex4

Information
~~~~~~~~~~~

::

The output connector is the **concatenation** of the four input
connectors. Note, that the dimensions of the input connector signals
have to be explicitly defined via parameters n1, n2, n3 and n4.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+-----------------------------------------+
| Type      | Name   | Default   | Description                             |
+===========+========+===========+=========================================+
| Integer   | n1     | 1         | dimension of input signal connector 1   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n2     | 1         | dimension of input signal connector 2   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n3     | 1         | dimension of input signal connector 3   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n4     | 1         | dimension of input signal connector 4   |
+-----------+--------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+
| Type                                                                                           | Name                   | Description                         |
+================================================================================================+========================+=====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1[n1]                 | Connector of Real input signals 1   |
+------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2[n2]                 | Connector of Real input signals 2   |
+------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u3[n3]                 | Connector of Real input signals 3   |
+------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u4[n4]                 | Connector of Real input signals 4   |
+------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[n1 + n2 + n3 + n4]   | Connector of Real output signals    |
+------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Multiplex4 "Multiplexer block for four input connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of input signal connector 1";
      parameter Integer n2=1 "dimension of input signal connector 2";
      parameter Integer n3=1 "dimension of input signal connector 3";
      parameter Integer n4=1 "dimension of input signal connector 4";
      Modelica.Blocks.Interfaces.RealInput u1[n1] 
        "Connector of Real input signals 1";
      Modelica.Blocks.Interfaces.RealInput u2[n2] 
        "Connector of Real input signals 2";
      Modelica.Blocks.Interfaces.RealInput u3[n3] 
        "Connector of Real input signals 3";
      Modelica.Blocks.Interfaces.RealInput u4[n4] 
        "Connector of Real input signals 4";
      Modelica.Blocks.Interfaces.RealOutput y[n1 + n2 + n3 + n4] 
        "Connector of Real output signals";

    equation 
      [y] = [u1; u2; u3; u4];
    end Multiplex4;

--------------

|image38| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.Multiplex5
------------------------------------------------------------------------------------------------------

**Multiplexer block for five input connectors**

.. figure:: Modelica.Blocks.Routing.Multiplex5D.png
   :align: center
   :alt: Modelica.Blocks.Routing.Multiplex5

   Modelica.Blocks.Routing.Multiplex5

Information
~~~~~~~~~~~

::

The output connector is the **concatenation** of the five input
connectors. Note, that the dimensions of the input connector signals
have to be explicitly defined via parameters n1, n2, n3, n4 and n5.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+-----------------------------------------+
| Type      | Name   | Default   | Description                             |
+===========+========+===========+=========================================+
| Integer   | n1     | 1         | dimension of input signal connector 1   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n2     | 1         | dimension of input signal connector 2   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n3     | 1         | dimension of input signal connector 3   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n4     | 1         | dimension of input signal connector 4   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n5     | 1         | dimension of input signal connector 5   |
+-----------+--------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------------------------+-------------------------------------+
| Type                                                                                           | Name                        | Description                         |
+================================================================================================+=============================+=====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1[n1]                      | Connector of Real input signals 1   |
+------------------------------------------------------------------------------------------------+-----------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2[n2]                      | Connector of Real input signals 2   |
+------------------------------------------------------------------------------------------------+-----------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u3[n3]                      | Connector of Real input signals 3   |
+------------------------------------------------------------------------------------------------+-----------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u4[n4]                      | Connector of Real input signals 4   |
+------------------------------------------------------------------------------------------------+-----------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u5[n5]                      | Connector of Real input signals 5   |
+------------------------------------------------------------------------------------------------+-----------------------------+-------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[n1 + n2 + n3 + n4 + n5]   | Connector of Real output signals    |
+------------------------------------------------------------------------------------------------+-----------------------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Multiplex5 "Multiplexer block for five input connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of input signal connector 1";
      parameter Integer n2=1 "dimension of input signal connector 2";
      parameter Integer n3=1 "dimension of input signal connector 3";
      parameter Integer n4=1 "dimension of input signal connector 4";
      parameter Integer n5=1 "dimension of input signal connector 5";
      Modelica.Blocks.Interfaces.RealInput u1[n1] 
        "Connector of Real input signals 1";
      Modelica.Blocks.Interfaces.RealInput u2[n2] 
        "Connector of Real input signals 2";
      Modelica.Blocks.Interfaces.RealInput u3[n3] 
        "Connector of Real input signals 3";
      Modelica.Blocks.Interfaces.RealInput u4[n4] 
        "Connector of Real input signals 4";
      Modelica.Blocks.Interfaces.RealInput u5[n5] 
        "Connector of Real input signals 5";
      Modelica.Blocks.Interfaces.RealOutput y[n1 + n2 + n3 + n4 + n5] 
        "Connector of Real output signals";

    equation 
      [y] = [u1; u2; u3; u4; u5];
    end Multiplex5;

--------------

|image39| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.Multiplex6
------------------------------------------------------------------------------------------------------

**Multiplexer block for six input connectors**

.. figure:: Modelica.Blocks.Routing.Multiplex6D.png
   :align: center
   :alt: Modelica.Blocks.Routing.Multiplex6

   Modelica.Blocks.Routing.Multiplex6

Information
~~~~~~~~~~~

::

The output connector is the **concatenation** of the six input
connectors. Note, that the dimensions of the input connector signals
have to be explicitly defined via parameters n1, n2, n3, n4, n5 and n6.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+-----------------------------------------+
| Type      | Name   | Default   | Description                             |
+===========+========+===========+=========================================+
| Integer   | n1     | 1         | dimension of input signal connector 1   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n2     | 1         | dimension of input signal connector 2   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n3     | 1         | dimension of input signal connector 3   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n4     | 1         | dimension of input signal connector 4   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n5     | 1         | dimension of input signal connector 5   |
+-----------+--------+-----------+-----------------------------------------+
| Integer   | n6     | 1         | dimension of input signal connector 6   |
+-----------+--------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+----------------------------------+-------------------------------------+
| Type                                                                                           | Name                             | Description                         |
+================================================================================================+==================================+=====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1[n1]                           | Connector of Real input signals 1   |
+------------------------------------------------------------------------------------------------+----------------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2[n2]                           | Connector of Real input signals 2   |
+------------------------------------------------------------------------------------------------+----------------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u3[n3]                           | Connector of Real input signals 3   |
+------------------------------------------------------------------------------------------------+----------------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u4[n4]                           | Connector of Real input signals 4   |
+------------------------------------------------------------------------------------------------+----------------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u5[n5]                           | Connector of Real input signals 5   |
+------------------------------------------------------------------------------------------------+----------------------------------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u6[n6]                           | Connector of Real input signals 6   |
+------------------------------------------------------------------------------------------------+----------------------------------+-------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[n1 + n2 + n3 + n4 + n5 + n6]   | Connector of Real output signals    |
+------------------------------------------------------------------------------------------------+----------------------------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Multiplex6 "Multiplexer block for six input connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of input signal connector 1";
      parameter Integer n2=1 "dimension of input signal connector 2";
      parameter Integer n3=1 "dimension of input signal connector 3";
      parameter Integer n4=1 "dimension of input signal connector 4";
      parameter Integer n5=1 "dimension of input signal connector 5";
      parameter Integer n6=1 "dimension of input signal connector 6";
      Modelica.Blocks.Interfaces.RealInput u1[n1] 
        "Connector of Real input signals 1";
      Modelica.Blocks.Interfaces.RealInput u2[n2] 
        "Connector of Real input signals 2";
      Modelica.Blocks.Interfaces.RealInput u3[n3] 
        "Connector of Real input signals 3";

      Modelica.Blocks.Interfaces.RealInput u4[n4] 
        "Connector of Real input signals 4";
      Modelica.Blocks.Interfaces.RealInput u5[n5] 
        "Connector of Real input signals 5";
      Modelica.Blocks.Interfaces.RealInput u6[n6] 
        "Connector of Real input signals 6";
      Modelica.Blocks.Interfaces.RealOutput y[n1 + n2 + n3 + n4 + n5 + n6] 
        "Connector of Real output signals";

    equation 
      [y] = [u1; u2; u3; u4; u5; u6];
    end Multiplex6;

--------------

|image40| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.DeMultiplex2
--------------------------------------------------------------------------------------------------------

**DeMultiplexer block for two output connectors**

.. figure:: Modelica.Blocks.Routing.DeMultiplex2D.png
   :align: center
   :alt: Modelica.Blocks.Routing.DeMultiplex2

   Modelica.Blocks.Routing.DeMultiplex2

Information
~~~~~~~~~~~

::

The input connector is **splitted** up into two output connectors. Note,
that the dimensions of the output connector signals have to be
explicitly defined via parameters n1 and n2.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n1     | 1         | dimension of output signal connector 1   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n2     | 1         | dimension of output signal connector 2   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------------+--------------------------------------+
| Type                                                                                           | Name         | Description                          |
+================================================================================================+==============+======================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[n1 + n2]   | Connector of Real input signals      |
+------------------------------------------------------------------------------------------------+--------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y1[n1]       | Connector of Real output signals 1   |
+------------------------------------------------------------------------------------------------+--------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y2[n2]       | Connector of Real output signals 2   |
+------------------------------------------------------------------------------------------------+--------------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block DeMultiplex2 "DeMultiplexer block for two output connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of output signal connector 1";
      parameter Integer n2=1 "dimension of output signal connector 2";
      Modelica.Blocks.Interfaces.RealInput u[n1 + n2] 
        "Connector of Real input signals";
      Modelica.Blocks.Interfaces.RealOutput y1[n1] 
        "Connector of Real output signals 1";
      Modelica.Blocks.Interfaces.RealOutput y2[n2] 
        "Connector of Real output signals 2";

    equation 
      [u] = [y1; y2];
    end DeMultiplex2;

--------------

|image41| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.DeMultiplex3
--------------------------------------------------------------------------------------------------------

**DeMultiplexer block for three output connectors**

.. figure:: Modelica.Blocks.Routing.DeMultiplex3D.png
   :align: center
   :alt: Modelica.Blocks.Routing.DeMultiplex3

   Modelica.Blocks.Routing.DeMultiplex3

Information
~~~~~~~~~~~

::

The input connector is **splitted** up into three output connectors.
Note, that the dimensions of the output connector signals have to be
explicitly defined via parameters n1, n2 and n3.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n1     | 1         | dimension of output signal connector 1   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n2     | 1         | dimension of output signal connector 2   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n3     | 1         | dimension of output signal connector 3   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-------------------+--------------------------------------+
| Type                                                                                           | Name              | Description                          |
+================================================================================================+===================+======================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[n1 + n2 + n3]   | Connector of Real input signals      |
+------------------------------------------------------------------------------------------------+-------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y1[n1]            | Connector of Real output signals 1   |
+------------------------------------------------------------------------------------------------+-------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y2[n2]            | Connector of Real output signals 2   |
+------------------------------------------------------------------------------------------------+-------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y3[n3]            | Connector of Real output signals 3   |
+------------------------------------------------------------------------------------------------+-------------------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block DeMultiplex3 "DeMultiplexer block for three output connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of output signal connector 1";
      parameter Integer n2=1 "dimension of output signal connector 2";
      parameter Integer n3=1 "dimension of output signal connector 3";
      Modelica.Blocks.Interfaces.RealInput u[n1 + n2 + n3] 
        "Connector of Real input signals";
      Modelica.Blocks.Interfaces.RealOutput y1[n1] 
        "Connector of Real output signals 1";
      Modelica.Blocks.Interfaces.RealOutput y2[n2] 
        "Connector of Real output signals 2";
      Modelica.Blocks.Interfaces.RealOutput y3[n3] 
        "Connector of Real output signals 3";

    equation 
      [u] = [y1; y2; y3];
    end DeMultiplex3;

--------------

|image42| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.DeMultiplex4
--------------------------------------------------------------------------------------------------------

**DeMultiplexer block for four output connectors**

.. figure:: Modelica.Blocks.Routing.DeMultiplex4D.png
   :align: center
   :alt: Modelica.Blocks.Routing.DeMultiplex4

   Modelica.Blocks.Routing.DeMultiplex4

Information
~~~~~~~~~~~

::

The input connector is **splitted** up into four output connectors.
Note, that the dimensions of the output connector signals have to be
explicitly defined via parameters n1, n2, n3 and n4.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n1     | 1         | dimension of output signal connector 1   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n2     | 1         | dimension of output signal connector 2   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n3     | 1         | dimension of output signal connector 3   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n4     | 1         | dimension of output signal connector 4   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+------------------------+--------------------------------------+
| Type                                                                                           | Name                   | Description                          |
+================================================================================================+========================+======================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[n1 + n2 + n3 + n4]   | Connector of Real input signals      |
+------------------------------------------------------------------------------------------------+------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y1[n1]                 | Connector of Real output signals 1   |
+------------------------------------------------------------------------------------------------+------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y2[n2]                 | Connector of Real output signals 2   |
+------------------------------------------------------------------------------------------------+------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y3[n3]                 | Connector of Real output signals 3   |
+------------------------------------------------------------------------------------------------+------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y4[n4]                 | Connector of Real output signals 4   |
+------------------------------------------------------------------------------------------------+------------------------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block DeMultiplex4 "DeMultiplexer block for four output connectors"

      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of output signal connector 1";
      parameter Integer n2=1 "dimension of output signal connector 2";
      parameter Integer n3=1 "dimension of output signal connector 3";
      parameter Integer n4=1 "dimension of output signal connector 4";
      Modelica.Blocks.Interfaces.RealInput u[n1 + n2 + n3 + n4] 
        "Connector of Real input signals";
      Modelica.Blocks.Interfaces.RealOutput y1[n1] 
        "Connector of Real output signals 1";
      Modelica.Blocks.Interfaces.RealOutput y2[n2] 
        "Connector of Real output signals 2";
      Modelica.Blocks.Interfaces.RealOutput y3[n3] 
        "Connector of Real output signals 3";
      Modelica.Blocks.Interfaces.RealOutput y4[n4] 
        "Connector of Real output signals 4";

    equation 
      [u] = [y1; y2; y3; y4];
    end DeMultiplex4;

--------------

|image43| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.DeMultiplex5
--------------------------------------------------------------------------------------------------------

**DeMultiplexer block for five output connectors**

.. figure:: Modelica.Blocks.Routing.DeMultiplex5D.png
   :align: center
   :alt: Modelica.Blocks.Routing.DeMultiplex5

   Modelica.Blocks.Routing.DeMultiplex5

Information
~~~~~~~~~~~

::

The input connector is **splitted** up into five output connectors.
Note, that the dimensions of the output connector signals have to be
explicitly defined via parameters n1, n2, n3, n4 and n5.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n1     | 1         | dimension of output signal connector 1   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n2     | 1         | dimension of output signal connector 2   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n3     | 1         | dimension of output signal connector 3   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n4     | 1         | dimension of output signal connector 4   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n5     | 1         | dimension of output signal connector 5   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------------------------+--------------------------------------+
| Type                                                                                           | Name                        | Description                          |
+================================================================================================+=============================+======================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[n1 + n2 + n3 + n4 + n5]   | Connector of Real input signals      |
+------------------------------------------------------------------------------------------------+-----------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y1[n1]                      | Connector of Real output signals 1   |
+------------------------------------------------------------------------------------------------+-----------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y2[n2]                      | Connector of Real output signals 2   |
+------------------------------------------------------------------------------------------------+-----------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y3[n3]                      | Connector of Real output signals 3   |
+------------------------------------------------------------------------------------------------+-----------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y4[n4]                      | Connector of Real output signals 4   |
+------------------------------------------------------------------------------------------------+-----------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y5[n5]                      | Connector of Real output signals 5   |
+------------------------------------------------------------------------------------------------+-----------------------------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block DeMultiplex5 "DeMultiplexer block for five output connectors"

      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of output signal connector 1";
      parameter Integer n2=1 "dimension of output signal connector 2";
      parameter Integer n3=1 "dimension of output signal connector 3";
      parameter Integer n4=1 "dimension of output signal connector 4";
      parameter Integer n5=1 "dimension of output signal connector 5";
      Modelica.Blocks.Interfaces.RealInput u[n1 + n2 + n3 + n4 + n5] 
        "Connector of Real input signals";
      Modelica.Blocks.Interfaces.RealOutput y1[n1] 
        "Connector of Real output signals 1";
      Modelica.Blocks.Interfaces.RealOutput y2[n2] 
        "Connector of Real output signals 2";
      Modelica.Blocks.Interfaces.RealOutput y3[n3] 
        "Connector of Real output signals 3";
      Modelica.Blocks.Interfaces.RealOutput y4[n4] 
        "Connector of Real output signals 4";
      Modelica.Blocks.Interfaces.RealOutput y5[n5] 
        "Connector of Real output signals 5";

    equation 
      [u] = [y1; y2; y3; y4; y5];
    end DeMultiplex5;

--------------

|image44| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.DeMultiplex6
--------------------------------------------------------------------------------------------------------

**DeMultiplexer block for six output connectors**

.. figure:: Modelica.Blocks.Routing.DeMultiplex6D.png
   :align: center
   :alt: Modelica.Blocks.Routing.DeMultiplex6

   Modelica.Blocks.Routing.DeMultiplex6

Information
~~~~~~~~~~~

::

The input connector is **splitted** up into six output connectors. Note,
that the dimensions of the output connector signals have to be
explicitly defined via parameters n1, n2, n3, n4, n5 and n6.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n1     | 1         | dimension of output signal connector 1   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n2     | 1         | dimension of output signal connector 2   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n3     | 1         | dimension of output signal connector 3   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n4     | 1         | dimension of output signal connector 4   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n5     | 1         | dimension of output signal connector 5   |
+-----------+--------+-----------+------------------------------------------+
| Integer   | n6     | 1         | dimension of output signal connector 6   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+----------------------------------+--------------------------------------+
| Type                                                                                           | Name                             | Description                          |
+================================================================================================+==================================+======================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[n1 + n2 + n3 + n4 + n5 + n6]   | Connector of Real input signals      |
+------------------------------------------------------------------------------------------------+----------------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y1[n1]                           | Connector of Real output signals 1   |
+------------------------------------------------------------------------------------------------+----------------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y2[n2]                           | Connector of Real output signals 2   |
+------------------------------------------------------------------------------------------------+----------------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y3[n3]                           | Connector of Real output signals 3   |
+------------------------------------------------------------------------------------------------+----------------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y4[n4]                           | Connector of Real output signals 4   |
+------------------------------------------------------------------------------------------------+----------------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y5[n5]                           | Connector of Real output signals 5   |
+------------------------------------------------------------------------------------------------+----------------------------------+--------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y6[n6]                           | Connector of Real output signals 6   |
+------------------------------------------------------------------------------------------------+----------------------------------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block DeMultiplex6 "DeMultiplexer block for six output connectors"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Integer n1=1 "dimension of output signal connector 1";
      parameter Integer n2=1 "dimension of output signal connector 2";
      parameter Integer n3=1 "dimension of output signal connector 3";
      parameter Integer n4=1 "dimension of output signal connector 4";
      parameter Integer n5=1 "dimension of output signal connector 5";
      parameter Integer n6=1 "dimension of output signal connector 6";
      Modelica.Blocks.Interfaces.RealInput u[n1 + n2 + n3 + n4 + n5 + n6] 
        "Connector of Real input signals";
      Modelica.Blocks.Interfaces.RealOutput y1[n1] 
        "Connector of Real output signals 1";
      Modelica.Blocks.Interfaces.RealOutput y2[n2] 
        "Connector of Real output signals 2";
      Modelica.Blocks.Interfaces.RealOutput y3[n3] 
        "Connector of Real output signals 3";
      Modelica.Blocks.Interfaces.RealOutput y4[n4] 
        "Connector of Real output signals 4";
      Modelica.Blocks.Interfaces.RealOutput y5[n5] 
        "Connector of Real output signals 5";
      Modelica.Blocks.Interfaces.RealOutput y6[n6] 
        "Connector of Real output signals 6";

    equation 
      [u] = [y1; y2; y3; y4; y5; y6];
    end DeMultiplex6;

--------------

|image45| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.RealPassThrough
-----------------------------------------------------------------------------------------------------------

**Pass a Real signal through without modification**

.. figure:: Modelica.Blocks.Routing.RealPassThroughD.png
   :align: center
   :alt: Modelica.Blocks.Routing.RealPassThrough

   Modelica.Blocks.Routing.RealPassThrough

Information
~~~~~~~~~~~

::

Passes a Real signal through without modification. Enables signals to be
read out of one bus, have their name changed and be sent back to a bus.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------+
| Type                                                                                           | Name   | Description     |
+================================================================================================+========+=================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RealPassThrough 
      "Pass a Real signal through without modification"

      extends Modelica.Blocks.Interfaces.BlockIcon;

      Modelica.Blocks.Interfaces.RealInput u "Input signal";
      Modelica.Blocks.Interfaces.RealOutput y "Output signal";
    equation 
      y = u;
    end RealPassThrough;

--------------

|image46| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.IntegerPassThrough
--------------------------------------------------------------------------------------------------------------

**Pass a Integer signal through without modification**

.. figure:: Modelica.Blocks.Routing.IntegerPassThroughD.png
   :align: center
   :alt: Modelica.Blocks.Routing.IntegerPassThrough

   Modelica.Blocks.Routing.IntegerPassThrough

Information
~~~~~~~~~~~

::

Passes a Integer signal through without modification. Enables signals to
be read out of one bus, have their name changed and be sent back to a
bus.

::

Extends from
`Modelica.Blocks.Interfaces.IntegerBlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerBlockIcon>`_
(Basic graphical layout of Integer block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+-----------------+
| Type                                                                                                 | Name   | Description     |
+======================================================================================================+========+=================+
| input `IntegerInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerInput>`_      | u      | Input signal    |
+------------------------------------------------------------------------------------------------------+--------+-----------------+
| output `IntegerOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerOutput>`_   | y      | Output signal   |
+------------------------------------------------------------------------------------------------------+--------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IntegerPassThrough 
      "Pass a Integer signal through without modification"
      extends Modelica.Blocks.Interfaces.IntegerBlockIcon;

      Modelica.Blocks.Interfaces.IntegerInput u "Input signal";
      Modelica.Blocks.Interfaces.IntegerOutput y "Output signal";
    equation 
      y = u;

    end IntegerPassThrough;

--------------

|image47| `Modelica.Blocks.Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_.BooleanPassThrough
--------------------------------------------------------------------------------------------------------------

**Pass a Boolean signal through without modification**

.. figure:: Modelica.Blocks.Routing.BooleanPassThroughD.png
   :align: center
   :alt: Modelica.Blocks.Routing.BooleanPassThrough

   Modelica.Blocks.Routing.BooleanPassThrough

Information
~~~~~~~~~~~

::

Passes a Boolean signal through without modification. Enables signals to
be read out of one bus, have their name changed and be sent back to a
bus.

::

Extends from
`Modelica.Blocks.Interfaces.BooleanBlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanBlockIcon>`_
(Basic graphical layout of Boolean block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+-----------------+
| Type                                                                                                 | Name   | Description     |
+======================================================================================================+========+=================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Input signal    |
+------------------------------------------------------------------------------------------------------+--------+-----------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Output signal   |
+------------------------------------------------------------------------------------------------------+--------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BooleanPassThrough 
      "Pass a Boolean signal through without modification"
      extends Modelica.Blocks.Interfaces.BooleanBlockIcon;

      Modelica.Blocks.Interfaces.BooleanInput u "Input signal";
      Modelica.Blocks.Interfaces.BooleanOutput y "Output signal";
    equation 
      y = u;
    end BooleanPassThrough;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:39
2010.

.. |Modelica.Blocks.Routing.Replicator| image:: Modelica.Blocks.Routing.ReplicatorS.png
.. |Modelica.Blocks.Routing.ExtractSignal| image:: Modelica.Blocks.Routing.ExtractSignalS.png
.. |Modelica.Blocks.Routing.Extractor| image:: Modelica.Blocks.Routing.ExtractorS.png
.. |Modelica.Blocks.Routing.Multiplex2| image:: Modelica.Blocks.Routing.Multiplex2S.png
.. |Modelica.Blocks.Routing.Multiplex3| image:: Modelica.Blocks.Routing.Multiplex3S.png
.. |Modelica.Blocks.Routing.Multiplex4| image:: Modelica.Blocks.Routing.Multiplex4S.png
.. |Modelica.Blocks.Routing.Multiplex5| image:: Modelica.Blocks.Routing.Multiplex5S.png
.. |Modelica.Blocks.Routing.Multiplex6| image:: Modelica.Blocks.Routing.Multiplex6S.png
.. |Modelica.Blocks.Routing.DeMultiplex2| image:: Modelica.Blocks.Routing.DeMultiplex2S.png
.. |Modelica.Blocks.Routing.DeMultiplex3| image:: Modelica.Blocks.Routing.DeMultiplex3S.png
.. |Modelica.Blocks.Routing.DeMultiplex4| image:: Modelica.Blocks.Routing.DeMultiplex4S.png
.. |Modelica.Blocks.Routing.DeMultiplex5| image:: Modelica.Blocks.Routing.DeMultiplex5S.png
.. |Modelica.Blocks.Routing.DeMultiplex6| image:: Modelica.Blocks.Routing.DeMultiplex6S.png
.. |Modelica.Blocks.Routing.RealPassThrough| image:: Modelica.Blocks.Routing.RealPassThroughS.png
.. |Modelica.Blocks.Routing.IntegerPassThrough| image:: Modelica.Blocks.Routing.IntegerPassThroughS.png
.. |Modelica.Blocks.Routing.BooleanPassThrough| image:: Modelica.Blocks.Routing.BooleanPassThroughS.png
.. |image16| image:: Modelica.Blocks.Routing.ReplicatorS.png
.. |image17| image:: Modelica.Blocks.Routing.ExtractSignalS.png
.. |image18| image:: Modelica.Blocks.Routing.ExtractorS.png
.. |image19| image:: Modelica.Blocks.Routing.Multiplex2S.png
.. |image20| image:: Modelica.Blocks.Routing.Multiplex3S.png
.. |image21| image:: Modelica.Blocks.Routing.Multiplex4S.png
.. |image22| image:: Modelica.Blocks.Routing.Multiplex5S.png
.. |image23| image:: Modelica.Blocks.Routing.Multiplex6S.png
.. |image24| image:: Modelica.Blocks.Routing.DeMultiplex2S.png
.. |image25| image:: Modelica.Blocks.Routing.DeMultiplex3S.png
.. |image26| image:: Modelica.Blocks.Routing.DeMultiplex4S.png
.. |image27| image:: Modelica.Blocks.Routing.DeMultiplex5S.png
.. |image28| image:: Modelica.Blocks.Routing.DeMultiplex6S.png
.. |image29| image:: Modelica.Blocks.Routing.RealPassThroughS.png
.. |image30| image:: Modelica.Blocks.Routing.IntegerPassThroughS.png
.. |image31| image:: Modelica.Blocks.Routing.BooleanPassThroughS.png
.. |image32| image:: Modelica.Blocks.Routing.ReplicatorI.png
.. |image33| image:: Modelica.Blocks.Routing.ExtractSignalI.png
.. |image34| image:: Modelica.Blocks.Routing.ExtractorI.png
.. |image35| image:: Modelica.Blocks.Routing.Multiplex2I.png
.. |image36| image:: Modelica.Blocks.Routing.Multiplex3I.png
.. |image37| image:: Modelica.Blocks.Routing.Multiplex4I.png
.. |image38| image:: Modelica.Blocks.Routing.Multiplex5I.png
.. |image39| image:: Modelica.Blocks.Routing.Multiplex6I.png
.. |image40| image:: Modelica.Blocks.Routing.DeMultiplex2I.png
.. |image41| image:: Modelica.Blocks.Routing.DeMultiplex3I.png
.. |image42| image:: Modelica.Blocks.Routing.DeMultiplex4I.png
.. |image43| image:: Modelica.Blocks.Routing.DeMultiplex5I.png
.. |image44| image:: Modelica.Blocks.Routing.DeMultiplex6I.png
.. |image45| image:: Modelica.Blocks.Routing.RealPassThroughI.png
.. |image46| image:: Modelica.Blocks.Routing.IntegerPassThroughI.png
.. |image47| image:: Modelica.Blocks.Routing.BooleanPassThroughI.png
