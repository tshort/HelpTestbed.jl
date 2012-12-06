====================
Modelica.Blocks.Math
====================

`Modelica.Blocks <Modelica_Blocks.html#Modelica.Blocks>`_.Math
--------------------------------------------------------------

**Library of Real mathematical functions as input/output blocks**

Information
~~~~~~~~~~~

::

This package contains basic **mathematical operations**, such as
summation and multiplication, and basic **mathematical functions**, such
as **sqrt** and **sin**, as input/output blocks. All blocks of this
library can be either connected with continuous blocks or with
sampled-data blocks.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                 | Description                                                                                                                                                 |
+======================================================================================================================================================+=============================================================================================================================================================+
| |image46| `UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_                                        | Conversion blocks to convert between SI and non-SI unit signals                                                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image47| `InverseBlockConstraints <Modelica_Blocks_Math.html#Modelica.Blocks.Math.InverseBlockConstraints>`_                                        | Construct inverse model by requiring that two inputs and two outputs are identical (replaces the previously, unbalanced, TwoInputs and TwoOutputs blocks)   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image48| `Gain <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Gain>`_                                                                              | Output the product of a gain value with the input signal                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image49| `MatrixGain <Modelica_Blocks_Math.html#Modelica.Blocks.Math.MatrixGain>`_                                                                  | Output the product of a gain matrix with the input signal vector                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image50| `MultiSum <Modelica_Blocks_Math.html#Modelica.Blocks.Math.MultiSum>`_                                                                      | Sum of Reals: y = k[1]\*u[1] + k[2]\*u[2] + ... + k[n]\*u[n]                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image51| `MultiProduct <Modelica_Blocks_Math.html#Modelica.Blocks.Math.MultiProduct>`_                                                              | Product of Reals: y = u[1]\*u[2]\* ... \*u[n]                                                                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image52| `MultiSwitch <Modelica_Blocks_Math.html#Modelica.Blocks.Math.MultiSwitch>`_                                                                | Set Real expression that is associated with the first active input signal                                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image53| `Sum <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Sum>`_                                                                                | Output the sum of the elements of the input vector                                                                                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image54| `Feedback <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Feedback>`_                                                                      | Output difference between commanded and feedback input                                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image55| `Add <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Add>`_                                                                                | Output the sum of the two inputs (this is an obsolet block. Use instead MultiSum)                                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image56| `Add3 <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Add3>`_                                                                              | Output the sum of the three inputs (this is an obsolet block. Use instead MultiSum)                                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image57| `Product <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Product>`_                                                                        | Output product of the two inputs (this is an obsolet block. Use instead MultiProduct)                                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image58| `Division <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Division>`_                                                                      | Output first input divided by second input                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image59| `Abs <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Abs>`_                                                                                | Output the absolute value of the input                                                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image60| `Sign <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Sign>`_                                                                              | Output the sign of the input                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image61| `Sqrt <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Sqrt>`_                                                                              | Output the square root of the input (input >= 0 required)                                                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image62| `Sin <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Sin>`_                                                                                | Output the sine of the input                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image63| `Cos <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Cos>`_                                                                                | Output the cosine of the input                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image64| `Tan <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Tan>`_                                                                                | Output the tangent of the input                                                                                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image65| `Asin <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Asin>`_                                                                              | Output the arc sine of the input                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image66| `Acos <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Acos>`_                                                                              | Output the arc cosine of the input                                                                                                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image67| `Atan <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Atan>`_                                                                              | Output the arc tangent of the input                                                                                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image68| `Atan2 <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Atan2>`_                                                                            | Output atan(u1/u2) of the inputs u1 and u2                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image69| `Sinh <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Sinh>`_                                                                              | Output the hyperbolic sine of the input                                                                                                                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image70| `Cosh <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Cosh>`_                                                                              | Output the hyperbolic cosine of the input                                                                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image71| `Tanh <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Tanh>`_                                                                              | Output the hyperbolic tangent of the input                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image72| `Exp <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Exp>`_                                                                                | Output the exponential (base e) of the input                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image73| `Log <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Log>`_                                                                                | Output the natural (base e) logarithm of the input (input > 0 required)                                                                                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image74| `Log10 <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Log10>`_                                                                            | Output the base 10 logarithm of the input (input > 0 required)                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image75| `RealToInteger <Modelica_Blocks_Math.html#Modelica.Blocks.Math.RealToInteger>`_                                                            | Convert Real to Integer signal                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image76| `IntegerToReal <Modelica_Blocks_Math.html#Modelica.Blocks.Math.IntegerToReal>`_                                                            | Convert integer to real signals                                                                                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image77| `BooleanToReal <Modelica_Blocks_Math.html#Modelica.Blocks.Math.BooleanToReal>`_                                                            | Convert Boolean to Real signal                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image78| `BooleanToInteger <Modelica_Blocks_Math.html#Modelica.Blocks.Math.BooleanToInteger>`_                                                      | Convert Boolean to Integer signal                                                                                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image79| `RealToBoolean <Modelica_Blocks_Math.html#Modelica.Blocks.Math.RealToBoolean>`_                                                            | Convert Real to Boolean signal                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image80| `IntegerToBoolean <Modelica_Blocks_Math.html#Modelica.Blocks.Math.IntegerToBoolean>`_                                                      | Convert Integer to Boolean signal                                                                                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image81| `RectangularToPolar <Modelica_Blocks_Math.html#Modelica.Blocks.Math.RectangularToPolar>`_                                                  | Convert rectangular coordinates to polar coordinates                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image82| `PolarToRectangular <Modelica_Blocks_Math.html#Modelica.Blocks.Math.PolarToRectangular>`_                                                  | Convert polar coordinates to rectangular coordinates                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image83| `Mean <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Mean>`_                                                                              | Calculate mean over period 1/f                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image84| `RectifiedMean <Modelica_Blocks_Math.html#Modelica.Blocks.Math.RectifiedMean>`_                                                            | Calculate refctified mean over period 1/f                                                                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image85| `RootMeanSquare <Modelica_Blocks_Math.html#Modelica.Blocks.Math.RootMeanSquare>`_                                                          | Calculate root mean square over period 1/f                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image86| `Harmonic <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Harmonic>`_                                                                      | Calculate harmonic over period 1/f                                                                                                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image87| `Max <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Max>`_                                                                                | Pass through the largest signal                                                                                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image88| `Min <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Min>`_                                                                                | Pass through the smallest signal                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image89| `Edge <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Edge>`_                                                                              | Indicates rising edge of boolean signal                                                                                                                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image90| `BooleanChange <Modelica_Blocks_Math.html#Modelica.Blocks.Math.BooleanChange>`_                                                            | Indicates boolean signal changing                                                                                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image91| `IntegerChange <Modelica_Blocks_Math.html#Modelica.Blocks.Math.IntegerChange>`_                                                            | Indicates integer signal changing                                                                                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

|image92| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.InverseBlockConstraints
----------------------------------------------------------------------------------------------------------

**Construct inverse model by requiring that two inputs and two outputs
are identical (replaces the previously, unbalanced, TwoInputs and
TwoOutputs blocks)**

.. figure:: Modelica.Blocks.Math.InverseBlockConstraintsD.png
   :align: center
   :alt: Modelica.Blocks.Math.InverseBlockConstraints

   Modelica.Blocks.Math.InverseBlockConstraints

Information
~~~~~~~~~~~

::

Exchange input and ouput signals of a block, i.e., the previous block
inputs become block outputs and the previous block outputs become block
inputs. This block is used to construct inverse models. Its usage is
demonstrated in example:
`Modelica.Blocks.Examples.InverseModel <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.InverseModel>`_.

Note, if a block shall be inverted that has several input and output
blocks, then this can be easily achieved by using a vector of
InverseBlockConstraints instances:

::

       InverseBlockConstraint invert[3];  // Block to be inverted has 3 input signals

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------+
| Type                                                                                           | Name   | Description                 |
+================================================================================================+========+=============================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1     | Input signal 1 (u1 = u2)    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2     | Input signal 2 (u1 = u2)    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y1     | Output signal 1 (y1 = y2)   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y2     | Output signal 2 (y2 = y2)   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block InverseBlockConstraints 
      "Construct inverse model by requiring that two inputs and two outputs are identical (replaces the previously, unbalanced, TwoInputs and TwoOutputs blocks)"

      Modelica.Blocks.Interfaces.RealInput u1 "Input signal 1 (u1 = u2)";
      Modelica.Blocks.Interfaces.RealInput u2 "Input signal 2 (u1 = u2)";
      Modelica.Blocks.Interfaces.RealOutput y1 "Output signal 1 (y1 = y2)";
      Modelica.Blocks.Interfaces.RealOutput y2 "Output signal 2 (y2 = y2)";

    equation 
      u1 = u2;
      y1 = y2;
    end InverseBlockConstraints;

--------------

|image93| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Gain
---------------------------------------------------------------------------------------

**Output the product of a gain value with the input signal**

.. figure:: Modelica.Blocks.Math.GainD.png
   :align: center
   :alt: Modelica.Blocks.Math.Gain

   Modelica.Blocks.Math.Gain

Information
~~~~~~~~~~~

::

This block computes output *y* as *product* of gain *k* with the input
*u*:

::

        y = k * u;

::

Parameters
~~~~~~~~~~

+--------+--------+-----------+-----------------------------------------------+
| Type   | Name   | Default   | Description                                   |
+========+========+===========+===============================================+
| Real   | k      |           | Gain value multiplied with input signal [1]   |
+--------+--------+-----------+-----------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+---------------------------+
| Type                                                                                           | Name   | Description               |
+================================================================================================+========+===========================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Input signal connector    |
+------------------------------------------------------------------------------------------------+--------+---------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Output signal connector   |
+------------------------------------------------------------------------------------------------+--------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Gain "Output the product of a gain value with the input signal"

      parameter Real k(start=1, unit="1") "Gain value multiplied with input signal";
    public 
      Interfaces.RealInput u "Input signal connector";
      Interfaces.RealOutput y "Output signal connector";

    equation 
      y = k*u;
    end Gain;

--------------

|image94| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.MatrixGain
---------------------------------------------------------------------------------------------

**Output the product of a gain matrix with the input signal vector**

.. figure:: Modelica.Blocks.Math.MatrixGainD.png
   :align: center
   :alt: Modelica.Blocks.Math.MatrixGain

   Modelica.Blocks.Math.MatrixGain

Information
~~~~~~~~~~~

::

This blocks computes output vector **y** as *product* of the gain matrix
**K** with the input signal vector **u**:

::

        y = K * u;

Example:

::

       parameter: K = [0.12 2; 3 1.5]

       results in the following equations:

         | y[1] |     | 0.12  2.00 |   | u[1] |
         |      |  =  |            | * |      |
         | y[2] |     | 3.00  1.50 |   | u[2] |

::

Extends from
`Interfaces.MIMO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMO>`_
(Multiple Input Multiple Output continuous control block).

Parameters
~~~~~~~~~~

+-----------+-----------+----------------+--------------------------------------------------+
| Type      | Name      | Default        | Description                                      |
+===========+===========+================+==================================================+
| Real      | K[:, :]   | [1, 0; 0, 1]   | Gain matrix which is multiplied with the input   |
+-----------+-----------+----------------+--------------------------------------------------+
| Integer   | nin       | size(K, 2)     | Number of inputs                                 |
+-----------+-----------+----------------+--------------------------------------------------+
| Integer   | nout      | size(K, 1)     | Number of outputs                                |
+-----------+-----------+----------------+--------------------------------------------------+

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

    block MatrixGain 
      "Output the product of a gain matrix with the input signal vector"

      parameter Real K[:, :]=[1, 0; 0, 1] 
        "Gain matrix which is multiplied with the input";
      extends Interfaces.MIMO(final nin=size(K, 2), final nout=size(K, 1));
    equation 
      y = K*u;
    end MatrixGain;

--------------

|image95| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.MultiSum
-------------------------------------------------------------------------------------------

**Sum of Reals: y = k[1]\*u[1] + k[2]\*u[2] + ... + k[n]\*u[n]**

.. figure:: Modelica.Blocks.Math.MultiSumD.png
   :align: center
   :alt: Modelica.Blocks.Math.MultiSum

   Modelica.Blocks.Math.MultiSum

Information
~~~~~~~~~~~

::

This blocks computes the scalar Real output "y" as sum of the elements
of the Real input signal vector u:

    ::

        y = k[1]*u[1] + k[2]*u[2] + ... k[N]*u[N];

The input connector is a vector of Real input signals. When a connection
line is drawn, the dimension of the input vector is enlarged by one and
the connection is automatically connected to this new free index (thanks
to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.RealNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.RealNetwork1>`_.

If no connection to the input connector "u" is present, the output is
set to zero: y=0.

::

Extends from
`Modelica.Blocks.Interfaces.PartialRealMISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialRealMISO>`_
(Partial block with a RealVectorInput and a RealOutput signal).

Parameters
~~~~~~~~~~

+----------------+---------------------+---------------+---------------------------------------------------------------------------+
| Type           | Name                | Default       | Description                                                               |
+================+=====================+===============+===========================================================================+
| Real           | k[nu]               | fill(1, nu)   | Input gains                                                               |
+----------------+---------------------+---------------+---------------------------------------------------------------------------+
| **Advanced**   |
+----------------+---------------------+---------------+---------------------------------------------------------------------------+
| Integer        | significantDigits   | 3             | Number of significant digits to be shown in dynamic diagram layer for y   |
+----------------+---------------------+---------------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------+---------------+
| Type                                                                                                    | Name    | Description   |
+=========================================================================================================+=========+===============+
| input `RealVectorInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealVectorInput>`_   | u[nu]   |               |
+---------------------------------------------------------------------------------------------------------+---------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_            | y       |               |
+---------------------------------------------------------------------------------------------------------+---------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block MultiSum 
      "Sum of Reals: y = k[1]*u[1] + k[2]*u[2] + ... + k[n]*u[n]"
       extends Modelica.Blocks.Interfaces.PartialRealMISO;
       parameter Real k[nu] = fill(1,nu) "Input gains";
    equation 
      if size(u,1) > 0 then
         y = k*u;
      else
         y = 0;
      end if;

    end MultiSum;

--------------

|image96| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.MultiProduct
-----------------------------------------------------------------------------------------------

**Product of Reals: y = u[1]\*u[2]\* ... \*u[n]**

.. figure:: Modelica.Blocks.Math.MultiSumD.png
   :align: center
   :alt: Modelica.Blocks.Math.MultiProduct

   Modelica.Blocks.Math.MultiProduct

Information
~~~~~~~~~~~

::

This blocks computes the scalar Real output "y" as product of the
elements of the Real input signal vector u:

    ::

        y = u[1]*u[2]* ... *u[N];

The input connector is a vector of Real input signals. When a connection
line is drawn, the dimension of the input vector is enlarged by one and
the connection is automatically connected to this new free index (thanks
to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.RealNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.RealNetwork1>`_.

If no connection to the input connector "u" is present, the output is
set to zero: y=0.

::

Extends from
`Modelica.Blocks.Interfaces.PartialRealMISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialRealMISO>`_
(Partial block with a RealVectorInput and a RealOutput signal).

Parameters
~~~~~~~~~~

+----------------+---------------------+-----------+---------------------------------------------------------------------------+
| Type           | Name                | Default   | Description                                                               |
+================+=====================+===========+===========================================================================+
| **Advanced**   |
+----------------+---------------------+-----------+---------------------------------------------------------------------------+
| Integer        | significantDigits   | 3         | Number of significant digits to be shown in dynamic diagram layer for y   |
+----------------+---------------------+-----------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------+---------------+
| Type                                                                                                    | Name    | Description   |
+=========================================================================================================+=========+===============+
| input `RealVectorInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealVectorInput>`_   | u[nu]   |               |
+---------------------------------------------------------------------------------------------------------+---------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_            | y       |               |
+---------------------------------------------------------------------------------------------------------+---------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block MultiProduct "Product of Reals: y = u[1]*u[2]* ... *u[n]"
       extends Modelica.Blocks.Interfaces.PartialRealMISO;
    equation 
      if size(u,1) > 0 then
         y = product(u);
      else
         y = 0;
      end if;

    end MultiProduct;

--------------

|image97| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.MultiSwitch
----------------------------------------------------------------------------------------------

**Set Real expression that is associated with the first active input
signal**

.. figure:: Modelica.Blocks.Math.MultiSwitchD.png
   :align: center
   :alt: Modelica.Blocks.Math.MultiSwitch

   Modelica.Blocks.Math.MultiSwitch

Information
~~~~~~~~~~~

::

This block has a vector of Boolean input signals u[nu] and a vector of
(time varying) Real expressions expr[nu]. The output signal y is set to
expr[i], if i is the first element in the input vector u that is true.
If all input signals are false, y is set to parameter "y\_default".

    ::

          // Conceptual equation (not valid Modelica)
          i = 'first element of u[:] that is true';
          y = if i==0 then y_default else expr[i];

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.RealNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.RealNetwork1>`_.

::

Parameters
~~~~~~~~~~

+----------------+--------------+-----------------+---------------------------------------------------------------------------+
| Type           | Name         | Default         | Description                                                               |
+================+==============+=================+===========================================================================+
| Real           | expr[nu]     | fill(0.0, nu)   | y = if u[i] then expr[i] else y\_default (time varying)                   |
+----------------+--------------+-----------------+---------------------------------------------------------------------------+
| Real           | y\_default   | 0.0             | Default value of output y if all u[i] = false                             |
+----------------+--------------+-----------------+---------------------------------------------------------------------------+
| **Advanced**   |
+----------------+--------------+-----------------+---------------------------------------------------------------------------+
| Integer        | precision    | 3               | Number of significant digits to be shown in dynamic diagram layer for y   |
+----------------+--------------+-----------------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| Type                                                                                                          | Name    | Description                       |
+===============================================================================================================+=========+===================================+
| input `BooleanVectorInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanVectorInput>`_   | u[nu]   | Set y = expr[i], if u[i] = true   |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                  | y       | Output depending on expression    |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block MultiSwitch 
      "Set Real expression that is associated with the first active input signal"

        input Real expr[nu]=fill(0.0, nu) 
        "y = if u[i] then expr[i] else y_default (time varying)";
        parameter Real y_default=0.0 
        "Default value of output y if all u[i] = false";

        parameter Integer nu(min=0) = 0 "Number of input connections";
        parameter Integer precision(min=0) = 3 
        "Number of significant digits to be shown in dynamic diagram layer for y";

        Modelica.Blocks.Interfaces.BooleanVectorInput u[nu] 
        "Set y = expr[i], if u[i] = true";
      Modelica.Blocks.Interfaces.RealOutput y(start=y_default,fixed=true) 
        "Output depending on expression";

    protected 
      Integer firstActiveIndex;
    initial equation 
      pre(u) = fill(false,nu);
    equation 
      firstActiveIndex = Modelica.Math.BooleanVectors.firstTrueIndex(
                                                      u);
       y = if firstActiveIndex == 0 then y_default else expr[firstActiveIndex];
    end MultiSwitch;

--------------

|image98| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Sum
--------------------------------------------------------------------------------------

**Output the sum of the elements of the input vector**

.. figure:: Modelica.Blocks.Math.SumD.png
   :align: center
   :alt: Modelica.Blocks.Math.Sum

   Modelica.Blocks.Math.Sum

Information
~~~~~~~~~~~

::

This blocks computes output **y** as *sum* of the elements of the input
signal vector **u**:

::

        y = u[1] + u[2] + ...;

Example:

::

         parameter:   nin = 3;

      results in the following equations:

         y = u[1] + u[2] + u[3];

::

Extends from
`Interfaces.MISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MISO>`_
(Multiple Input Single Output continuous control block).

Parameters
~~~~~~~~~~

+-----------+----------+-------------+------------------------------+
| Type      | Name     | Default     | Description                  |
+===========+==========+=============+==============================+
| Integer   | nin      | 1           | Number of inputs             |
+-----------+----------+-------------+------------------------------+
| Real      | k[nin]   | ones(nin)   | Optional: sum coefficients   |
+-----------+----------+-------------+------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+----------+-----------------------------------+
| Type                                                                                           | Name     | Description                       |
+================================================================================================+==========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u[nin]   | Connector of Real input signals   |
+------------------------------------------------------------------------------------------------+----------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y        | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+----------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Sum "Output the sum of the elements of the input vector"
      extends Interfaces.MISO;
      parameter Real k[nin]=ones(nin) "Optional: sum coefficients";
    equation 
      y = k*u;
    end Sum;

--------------

|image99| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Feedback
-------------------------------------------------------------------------------------------

**Output difference between commanded and feedback input**

.. figure:: Modelica.Blocks.Math.FeedbackD.png
   :align: center
   :alt: Modelica.Blocks.Math.Feedback

   Modelica.Blocks.Math.Feedback

Information
~~~~~~~~~~~

::

This blocks computes output **y** as *difference* of the commanded input
**u1** and the feedback input **u2**:

::

        y = u1 - u2;

Example:

::

         parameter:   n = 2

      results in the following equations:

         y = u1 - u2

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                           | Name   | Description   |
+================================================================================================+========+===============+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1     |               |
+------------------------------------------------------------------------------------------------+--------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2     |               |
+------------------------------------------------------------------------------------------------+--------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      |               |
+------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Feedback 
      "Output difference between commanded and feedback input"

      input Interfaces.RealInput u1;
      input Interfaces.RealInput u2;
      output Interfaces.RealOutput y;

    equation 
      y = u1 - u2;
    end Feedback;

--------------

|image100| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Add
---------------------------------------------------------------------------------------

**Output the sum of the two inputs (this is an obsolet block. Use
instead MultiSum)**

.. figure:: Modelica.Blocks.Math.AddD.png
   :align: center
   :alt: Modelica.Blocks.Math.Add

   Modelica.Blocks.Math.Add

Information
~~~~~~~~~~~

::

This blocks computes output **y** as *sum* of the two input signals
**u1** and **u2**:

::

        y = k1*u1 + k2*u2;

Example:

::

         parameter:   k1= +2, k2= -3

      results in the following equations:

         y = 2 * u1 - 3 * u2

::

Extends from
`Interfaces.SI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO>`_
(2 Single Input / 1 Single Output continuous control block).

Parameters
~~~~~~~~~~

+--------+--------+-----------+-----------------------+
| Type   | Name   | Default   | Description           |
+========+========+===========+=======================+
| Real   | k1     | +1        | Gain of upper input   |
+--------+--------+-----------+-----------------------+
| Real   | k2     | +1        | Gain of lower input   |
+--------+--------+-----------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                           | Name   | Description                        |
+================================================================================================+========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1     | Connector of Real input signal 1   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2     | Connector of Real input signal 2   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal    |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Add 
      "Output the sum of the two inputs (this is an obsolet block. Use instead MultiSum)"
      extends Interfaces.SI2SO;
      parameter Real k1=+1 "Gain of upper input";
      parameter Real k2=+1 "Gain of lower input";

    equation 
      y = k1*u1 + k2*u2;
    end Add;

--------------

|image101| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Add3
----------------------------------------------------------------------------------------

**Output the sum of the three inputs (this is an obsolet block. Use
instead MultiSum)**

.. figure:: Modelica.Blocks.Math.Add3D.png
   :align: center
   :alt: Modelica.Blocks.Math.Add3

   Modelica.Blocks.Math.Add3

Information
~~~~~~~~~~~

::

This blocks computes output **y** as *sum* of the three input signals
**u1**, **u2** and **u3**:

::

        y = k1*u1 + k2*u2 + k3*u3;

Example:

::

         parameter:   k1= +2, k2= -3, k3=1;

      results in the following equations:

         y = 2 * u1 - 3 * u2 + u3;

::

Extends from
`Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+--------+--------+-----------+------------------------+
| Type   | Name   | Default   | Description            |
+========+========+===========+========================+
| Real   | k1     | +1        | Gain of upper input    |
+--------+--------+-----------+------------------------+
| Real   | k2     | +1        | Gain of middle input   |
+--------+--------+-----------+------------------------+
| Real   | k3     | +1        | Gain of lower input    |
+--------+--------+-----------+------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                           | Name   | Description                         |
+================================================================================================+========+=====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1     | Connector 1 of Real input signals   |
+------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2     | Connector 2 of Real input signals   |
+------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u3     | Connector 3 of Real input signals   |
+------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signals    |
+------------------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Add3 
      "Output the sum of the three inputs (this is an obsolet block. Use instead MultiSum)"
      extends Interfaces.BlockIcon;

      parameter Real k1=+1 "Gain of upper input";
      parameter Real k2=+1 "Gain of middle input";
      parameter Real k3=+1 "Gain of lower input";
      input Interfaces.RealInput u1 "Connector 1 of Real input signals";
      input Interfaces.RealInput u2 "Connector 2 of Real input signals";
      input Interfaces.RealInput u3 "Connector 3 of Real input signals";
      output Interfaces.RealOutput y "Connector of Real output signals";

    equation 
      y = k1*u1 + k2*u2 + k3*u3;
    end Add3;

--------------

|image102| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Product
-------------------------------------------------------------------------------------------

**Output product of the two inputs (this is an obsolet block. Use
instead MultiProduct)**

.. figure:: Modelica.Blocks.Math.ProductD.png
   :align: center
   :alt: Modelica.Blocks.Math.Product

   Modelica.Blocks.Math.Product

Information
~~~~~~~~~~~

::

This blocks computes the output **y** (element-wise) as *product* of the
corresponding elements of the two inputs **u1** and **u2**:

::

        y = u1 * u2;

::

Extends from
`Interfaces.SI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO>`_
(2 Single Input / 1 Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                           | Name   | Description                        |
+================================================================================================+========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1     | Connector of Real input signal 1   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2     | Connector of Real input signal 2   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal    |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Product 
      "Output product of the two inputs (this is an obsolet block. Use instead MultiProduct)"
      extends Interfaces.SI2SO;

    equation 
      y = u1*u2;
    end Product;

--------------

|image103| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Division
--------------------------------------------------------------------------------------------

**Output first input divided by second input**

.. figure:: Modelica.Blocks.Math.DivisionD.png
   :align: center
   :alt: Modelica.Blocks.Math.Division

   Modelica.Blocks.Math.Division

Information
~~~~~~~~~~~

::

This block computes the output **y** (element-wise) by *dividing* the
corresponding elements of the two inputs **u1** and **u2**:

::

        y = u1 / u2;

::

Extends from
`Interfaces.SI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO>`_
(2 Single Input / 1 Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                           | Name   | Description                        |
+================================================================================================+========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1     | Connector of Real input signal 1   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2     | Connector of Real input signal 2   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal    |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Division "Output first input divided by second input"
      extends Interfaces.SI2SO;

    equation 
      y = u1/u2;
    end Division;

--------------

|image104| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Abs
---------------------------------------------------------------------------------------

**Output the absolute value of the input**

.. figure:: Modelica.Blocks.Math.AbsD.png
   :align: center
   :alt: Modelica.Blocks.Math.Abs

   Modelica.Blocks.Math.Abs

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as *absolute value* of the input
**u**:

::

        y = abs( u );

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Abs "Output the absolute value of the input"
      extends Interfaces.SISO;
    equation 
      y = abs(u);
    end Abs;

--------------

|image105| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Sign
----------------------------------------------------------------------------------------

**Output the sign of the input**

.. figure:: Modelica.Blocks.Math.SignD.png
   :align: center
   :alt: Modelica.Blocks.Math.Sign

   Modelica.Blocks.Math.Sign

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as **sign** of the input **u**:

::

             1  if u > 0
        y =  0  if u == 0
            -1  if u < 0

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Sign "Output the sign of the input"
      extends Interfaces.SISO;
    equation 
      y = sign(u);
    end Sign;

--------------

|image106| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Sqrt
----------------------------------------------------------------------------------------

**Output the square root of the input (input >= 0 required)**

.. figure:: Modelica.Blocks.Math.SqrtD.png
   :align: center
   :alt: Modelica.Blocks.Math.Sqrt

   Modelica.Blocks.Math.Sqrt

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as *square root* of the input
**u**:

::

        y = sqrt( u );

All elements of the input vector shall be zero or positive. Otherwise an
error occurs.

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Sqrt 
      "Output the square root of the input (input >= 0 required)"
      extends Interfaces.SISO;

    equation 
      y = sqrt(u);
    end Sqrt;

--------------

|image107| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Sin
---------------------------------------------------------------------------------------

**Output the sine of the input**

.. figure:: Modelica.Blocks.Math.SinD.png
   :align: center
   :alt: Modelica.Blocks.Math.Sin

   Modelica.Blocks.Math.Sin

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as **sine** of the input **u**:

::

        y = sin( u );

.. figure:: ../Resources/Images/Math/sin.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Sin "Output the sine of the input"
      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.sin(u);
    end Sin;

--------------

|image108| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Cos
---------------------------------------------------------------------------------------

**Output the cosine of the input**

.. figure:: Modelica.Blocks.Math.CosD.png
   :align: center
   :alt: Modelica.Blocks.Math.Cos

   Modelica.Blocks.Math.Cos

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as **cos** of the input **u**:

::

        y = cos( u );

.. figure:: ../Resources/Images/Math/cos.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Cos "Output the cosine of the input"
      extends Interfaces.SISO;

    equation 
      y = Modelica.Math.cos(u);
    end Cos;

--------------

|image109| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Tan
---------------------------------------------------------------------------------------

**Output the tangent of the input**

.. figure:: Modelica.Blocks.Math.TanD.png
   :align: center
   :alt: Modelica.Blocks.Math.Tan

   Modelica.Blocks.Math.Tan

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as **tan** of the input **u**:

::

        y = tan( u );

.. figure:: ../Resources/Images/Math/tan.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Tan "Output the tangent of the input"
      extends Interfaces.SISO;

    equation 
      y = Modelica.Math.tan(u);
    end Tan;

--------------

|image110| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Asin
----------------------------------------------------------------------------------------

**Output the arc sine of the input**

.. figure:: Modelica.Blocks.Math.AsinD.png
   :align: center
   :alt: Modelica.Blocks.Math.Asin

   Modelica.Blocks.Math.Asin

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as the *sine-inverse* of the input
**u**:

::

        y = asin( u );

The absolute values of the elements of the input **u** need to be less
or equal to one (**abs**( u ) <= 1). Otherwise an error occurs.

.. figure:: ../Resources/Images/Math/asin.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Asin "Output the arc sine of the input"
      extends Interfaces.SISO;

    equation 
      y = Modelica.Math.asin(u);
    end Asin;

--------------

|image111| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Acos
----------------------------------------------------------------------------------------

**Output the arc cosine of the input**

.. figure:: Modelica.Blocks.Math.AcosD.png
   :align: center
   :alt: Modelica.Blocks.Math.Acos

   Modelica.Blocks.Math.Acos

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as the *cosine-inverse* of the
input **u**:

::

        y = acos( u );

The absolute values of the elements of the input **u** need to be less
or equal to one (**abs**( u ) <= 1). Otherwise an error occurs.

.. figure:: ../Resources/Images/Math/acos.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Acos "Output the arc cosine of the input"
      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.acos(u);
    end Acos;

--------------

|image112| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Atan
----------------------------------------------------------------------------------------

**Output the arc tangent of the input**

.. figure:: Modelica.Blocks.Math.AtanD.png
   :align: center
   :alt: Modelica.Blocks.Math.Atan

   Modelica.Blocks.Math.Atan

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as the *tangent-inverse* of the
input **u**:

::

        y= atan( u );

.. figure:: ../Resources/Images/Math/atan.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Atan "Output the arc tangent of the input"
      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.atan(u);
    end Atan;

--------------

|image113| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Atan2
-----------------------------------------------------------------------------------------

**Output atan(u1/u2) of the inputs u1 and u2**

.. figure:: Modelica.Blocks.Math.Atan2D.png
   :align: center
   :alt: Modelica.Blocks.Math.Atan2

   Modelica.Blocks.Math.Atan2

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as the *tangent-inverse* of the
input **u1** divided by input **u2**:

::

        y = atan2( u1, u2 );

u1 and u2 shall not be zero at the same time instant. **Atan2** uses the
sign of u1 and u2 in order to construct the solution in the range -180
deg ≤ y ≤ 180 deg, whereas block **Atan** gives a solution in the range
-90 deg ≤ y ≤ 90 deg.

.. figure:: ../Resources/Images/Math/atan2.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO>`_
(2 Single Input / 1 Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                           | Name   | Description                        |
+================================================================================================+========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1     | Connector of Real input signal 1   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2     | Connector of Real input signal 2   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal    |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Atan2 "Output atan(u1/u2) of the inputs u1 and u2"
      extends Interfaces.SI2SO;
    equation 
      y = Modelica.Math.atan2(u1, u2);
    end Atan2;

--------------

|image114| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Sinh
----------------------------------------------------------------------------------------

**Output the hyperbolic sine of the input**

.. figure:: Modelica.Blocks.Math.SinhD.png
   :align: center
   :alt: Modelica.Blocks.Math.Sinh

   Modelica.Blocks.Math.Sinh

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as the *hyperbolic sine* of the
input **u**:

::

        y = sinh( u );

.. figure:: ../Resources/Images/Math/sinh.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Sinh "Output the hyperbolic sine of the input"
      extends Interfaces.SISO;

    equation 
      y = Modelica.Math.sinh(u);
    end Sinh;

--------------

|image115| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Cosh
----------------------------------------------------------------------------------------

**Output the hyperbolic cosine of the input**

.. figure:: Modelica.Blocks.Math.CoshD.png
   :align: center
   :alt: Modelica.Blocks.Math.Cosh

   Modelica.Blocks.Math.Cosh

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as the *hyperbolic cosine* of the
input **u**:

::

        y = cosh( u );

.. figure:: ../Resources/Images/Math/cosh.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Cosh "Output the hyperbolic cosine of the input"
      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.cosh(u);
    end Cosh;

--------------

|image116| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Tanh
----------------------------------------------------------------------------------------

**Output the hyperbolic tangent of the input**

.. figure:: Modelica.Blocks.Math.TanhD.png
   :align: center
   :alt: Modelica.Blocks.Math.Tanh

   Modelica.Blocks.Math.Tanh

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as the *hyperbolic tangent* of the
input **u**:

::

        y = tanh( u );

.. figure:: ../Resources/Images/Math/tanh.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Tanh "Output the hyperbolic tangent of the input"
      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.tanh(u);
    end Tanh;

--------------

|image117| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Exp
---------------------------------------------------------------------------------------

**Output the exponential (base e) of the input**

.. figure:: Modelica.Blocks.Math.ExpD.png
   :align: center
   :alt: Modelica.Blocks.Math.Exp

   Modelica.Blocks.Math.Exp

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as the *exponential* (of base e)
of the input **u**:

::

        y = exp( u );

.. figure:: ../Resources/Images/Math/exp.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Exp "Output the exponential (base e) of the input"
      extends Interfaces.SISO;

    equation 
      y = Modelica.Math.exp(u);
    end Exp;

--------------

|image118| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Log
---------------------------------------------------------------------------------------

**Output the natural (base e) logarithm of the input (input > 0
required)**

.. figure:: Modelica.Blocks.Math.LogD.png
   :align: center
   :alt: Modelica.Blocks.Math.Log

   Modelica.Blocks.Math.Log

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as the *natural (base e)
logarithm* of the input **u**:

::

        y = log( u );

An error occurs if the elements of the input **u** are zero or negative.

.. figure:: ../Resources/Images/Math/log.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Log 
      "Output the natural (base e) logarithm of the input (input > 0 required)"

      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.log(u);
    end Log;

--------------

|image119| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Log10
-----------------------------------------------------------------------------------------

**Output the base 10 logarithm of the input (input > 0 required)**

.. figure:: Modelica.Blocks.Math.Log10D.png
   :align: center
   :alt: Modelica.Blocks.Math.Log10

   Modelica.Blocks.Math.Log10

Information
~~~~~~~~~~~

::

This blocks computes the output **y** as the *base 10 logarithm* of the
input **u**:

::

        y = log10( u );

An error occurs if the elements of the input **u** are zero or negative.

.. figure:: ../Resources/Images/Math/log10.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Log10 
      "Output the base 10 logarithm of the input (input > 0 required)"

      extends Interfaces.SISO;
    equation 
      y = Modelica.Math.log10(u);
    end Log10;

--------------

|image120| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.RealToInteger
-------------------------------------------------------------------------------------------------

**Convert Real to Integer signal**

.. figure:: Modelica.Blocks.Math.RealToIntegerD.png
   :align: center
   :alt: Modelica.Blocks.Math.RealToInteger

   Modelica.Blocks.Math.RealToInteger

Information
~~~~~~~~~~~

::

This block computes the output **y** as *nearest integer value* of the
input **u**:

::

        y = integer( floor( u + 0.5 ) )  for  u > 0;
        y = integer( ceil ( u - 0.5 ) )  for  u < 0;

::

Extends from
`Interfaces.IntegerBlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerBlockIcon>`_
(Basic graphical layout of Integer block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u      | Connector of Real input signal       |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `IntegerOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerOutput>`_   | y      | Connector of Integer output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block RealToInteger "Convert Real to Integer signal"
      extends Interfaces.IntegerBlockIcon;
    public 
      Interfaces.RealInput u "Connector of Real input signal";
      Interfaces.IntegerOutput y "Connector of Integer output signal";
    equation 
       y = if (u > 0) then integer(floor(u + 0.5)) else 
                           integer(ceil( u - 0.5));
    end RealToInteger;

--------------

|image121| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.IntegerToReal
-------------------------------------------------------------------------------------------------

**Convert integer to real signals**

.. figure:: Modelica.Blocks.Math.IntegerToRealD.png
   :align: center
   :alt: Modelica.Blocks.Math.IntegerToReal

   Modelica.Blocks.Math.IntegerToReal

Information
~~~~~~~~~~~

::

This block computes the output **y** as *Real equivalent* of the Integer
input **u**:

::

        y = u;

where **u** is of Integer and **y** of Real type.

::

Extends from
`Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                              | Name   | Description                         |
+===================================================================================================+========+=====================================+
| input `IntegerInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerInput>`_   | u      | Connector of Integer input signal   |
+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_      | y      | Connector of Real output signal     |
+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block IntegerToReal "Convert integer to real signals"
      extends Interfaces.BlockIcon;
      Interfaces.IntegerInput u "Connector of Integer input signal";
      Interfaces.RealOutput y "Connector of Real output signal";
    equation 
      y = u;
    end IntegerToReal;

--------------

|image122| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.BooleanToReal
-------------------------------------------------------------------------------------------------

**Convert Boolean to Real signal**

.. figure:: Modelica.Blocks.Math.BooleanToRealD.png
   :align: center
   :alt: Modelica.Blocks.Math.BooleanToReal

   Modelica.Blocks.Math.BooleanToReal

Information
~~~~~~~~~~~

::

This block computes the output **y** as *Real equivalent* of the Boolean
input **u**:

::

        y = if u then realTrue else realFalse;

where **u** is of Boolean and **y** of Real type, and **realTrue** and
**realFalse** are parameters.

::

Extends from
`Interfaces.partialBooleanSI <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI>`_
(Partial block with 1 input Boolean signal).

Parameters
~~~~~~~~~~

+--------+-------------+-----------+-----------------------------------------+
| Type   | Name        | Default   | Description                             |
+========+=============+===========+=========================================+
| Real   | realTrue    | 1.0       | Output signal for true Boolean input    |
+--------+-------------+-----------+-----------------------------------------+
| Real   | realFalse   | 0.0       | Output signal for false Boolean input   |
+--------+-------------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                              | Name   | Description                         |
+===================================================================================================+========+=====================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_   | u      | Connector of Boolean input signal   |
+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_      | y      | Connector of Real output signal     |
+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block BooleanToReal "Convert Boolean to Real signal"
      extends Interfaces.partialBooleanSI;
      parameter Real realTrue=1.0 "Output signal for true Boolean input";
      parameter Real realFalse=0.0 "Output signal for false Boolean input";

      Blocks.Interfaces.RealOutput y "Connector of Real output signal";

    equation 
      y = if u then realTrue else realFalse;
    end BooleanToReal;

--------------

|image123| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.BooleanToInteger
----------------------------------------------------------------------------------------------------

**Convert Boolean to Integer signal**

.. figure:: Modelica.Blocks.Math.BooleanToIntegerD.png
   :align: center
   :alt: Modelica.Blocks.Math.BooleanToInteger

   Modelica.Blocks.Math.BooleanToInteger

Information
~~~~~~~~~~~

::

This block computes the output **y** as *Integer equivalent* of the
Boolean input **u**:

::

        y = if u then integerTrue else integerFalse;

where **u** is of Boolean and **y** of Integer type, and **integerTrue**
and **integerFalse** are parameters.

::

Extends from
`Interfaces.partialBooleanSI <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI>`_
(Partial block with 1 input Boolean signal).

Parameters
~~~~~~~~~~

+-----------+----------------+-----------+-----------------------------------------+
| Type      | Name           | Default   | Description                             |
+===========+================+===========+=========================================+
| Integer   | integerTrue    | 1         | Output signal for true Boolean input    |
+-----------+----------------+-----------+-----------------------------------------+
| Integer   | integerFalse   | 0         | Output signal for false Boolean input   |
+-----------+----------------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `IntegerOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerOutput>`_   | y      | Connector of Integer output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block BooleanToInteger "Convert Boolean to Integer signal"
      extends Interfaces.partialBooleanSI;
      parameter Integer integerTrue=1 "Output signal for true Boolean input";
      parameter Integer integerFalse=0 "Output signal for false Boolean input";

      Blocks.Interfaces.IntegerOutput y "Connector of Integer output signal";

    equation 
      y = if u then integerTrue else integerFalse;
    end BooleanToInteger;

--------------

|image124| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.RealToBoolean
-------------------------------------------------------------------------------------------------

**Convert Real to Boolean signal**

.. figure:: Modelica.Blocks.Math.RealToBooleanD.png
   :align: center
   :alt: Modelica.Blocks.Math.RealToBoolean

   Modelica.Blocks.Math.RealToBoolean

Information
~~~~~~~~~~~

::

This block computes the Boolean output **y** from the Real input **u**
by the equation:

::

        y = u ≥ threshold;

where **threshold** is a parameter.

::

Extends from
`Interfaces.partialBooleanSO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSO>`_
(Partial block with 1 output Boolean signal).

Parameters
~~~~~~~~~~

+--------+-------------+-----------+----------------------------------------------------+
| Type   | Name        | Default   | Description                                        |
+========+=============+===========+====================================================+
| Real   | threshold   | 0.5       | Output signal y is true, if input u >= threshold   |
+--------+-------------+-----------+----------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u      | Connector of Real input signal       |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block RealToBoolean "Convert Real to Boolean signal"

      Blocks.Interfaces.RealInput u "Connector of Real input signal";
      extends Interfaces.partialBooleanSO;
      parameter Real threshold=0.5 
        "Output signal y is true, if input u >= threshold";

    equation 
      y = u >= threshold;
    end RealToBoolean;

--------------

|image125| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.IntegerToBoolean
----------------------------------------------------------------------------------------------------

**Convert Integer to Boolean signal**

.. figure:: Modelica.Blocks.Math.IntegerToBooleanD.png
   :align: center
   :alt: Modelica.Blocks.Math.IntegerToBoolean

   Modelica.Blocks.Math.IntegerToBoolean

Information
~~~~~~~~~~~

::

This block computes the Boolean output **y** from the Integer input
**u** by the equation:

::

        y = u ≥ threshold;

where **threshold** is a parameter.

::

Extends from
`Interfaces.partialBooleanSO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSO>`_
(Partial block with 1 output Boolean signal).

Parameters
~~~~~~~~~~

+-----------+-------------+-----------+----------------------------------------------------+
| Type      | Name        | Default   | Description                                        |
+===========+=============+===========+====================================================+
| Integer   | threshold   | 1         | Output signal y is true, if input u >= threshold   |
+-----------+-------------+-----------+----------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `IntegerInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerInput>`_      | u      | Connector of Integer input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block IntegerToBoolean "Convert Integer to Boolean signal"

      Blocks.Interfaces.IntegerInput u "Connector of Integer input signal";
      extends Interfaces.partialBooleanSO;
      parameter Integer threshold=1 
        "Output signal y is true, if input u >= threshold";

    equation 
      y = u >= threshold;
    end IntegerToBoolean;

--------------

|image126| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.RectangularToPolar
------------------------------------------------------------------------------------------------------

**Convert rectangular coordinates to polar coordinates**

.. figure:: Modelica.Blocks.Math.RectangularToPolarD.png
   :align: center
   :alt: Modelica.Blocks.Math.RectangularToPolar

   Modelica.Blocks.Math.RectangularToPolar

Information
~~~~~~~~~~~

::

The input values of this block are the rectangular components ``u_re``
and ``u_im`` of a phasor in two dimensions. This block calculates the
length ``y_abs`` and the angle ``y_arg`` of the polar representation of
this phasor.

::

      y_abs = abs(u_re + j*u_im) = sqrt( u_re2 + u_im2 )
      y_arg = arg(u_re + j*u_im) = atan2(u_im, u_re)

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+----------+------------------------------------------------+
| Type                                                                                           | Name     | Description                                    |
+================================================================================================+==========+================================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u\_re    | Real part of rectangular representation        |
+------------------------------------------------------------------------------------------------+----------+------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u\_im    | Imaginary part of rectangular representation   |
+------------------------------------------------------------------------------------------------+----------+------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y\_abs   | Length of polar representation                 |
+------------------------------------------------------------------------------------------------+----------+------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y\_arg   | Angle of polar representation                  |
+------------------------------------------------------------------------------------------------+----------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block RectangularToPolar 
      "Convert rectangular coordinates to polar coordinates"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Blocks.Interfaces.RealInput u_re 
        "Real part of rectangular representation";
      Modelica.Blocks.Interfaces.RealInput u_im 
        "Imaginary part of rectangular representation";
      Modelica.Blocks.Interfaces.RealOutput y_abs "Length of polar representation";
      Modelica.Blocks.Interfaces.RealOutput y_arg "Angle of polar representation";

    equation 
       y_abs = sqrt(u_re*u_re + u_im*u_im);
       y_arg = Modelica.Math.atan2(u_im, u_re);
    end RectangularToPolar;

--------------

|image127| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.PolarToRectangular
------------------------------------------------------------------------------------------------------

**Convert polar coordinates to rectangular coordinates**

.. figure:: Modelica.Blocks.Math.PolarToRectangularD.png
   :align: center
   :alt: Modelica.Blocks.Math.PolarToRectangular

   Modelica.Blocks.Math.PolarToRectangular

Information
~~~~~~~~~~~

::

The input values of this block are the polar components ``uabs`` and
``uarg`` of a phasor. This block calculates the components ``y_re`` and
``y_im`` of the rectangular representation of this phasor.

::

       y_re = u_abs * cos( u_arg )
       y_im = u_abs * sin( u_arg )

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+----------+------------------------------------------------+
| Type                                                                                           | Name     | Description                                    |
+================================================================================================+==========+================================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u\_abs   | Length of polar representation                 |
+------------------------------------------------------------------------------------------------+----------+------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u\_arg   | Angle of polar representation                  |
+------------------------------------------------------------------------------------------------+----------+------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y\_re    | Real part of rectangular representation        |
+------------------------------------------------------------------------------------------------+----------+------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y\_im    | Imaginary part of rectangular representation   |
+------------------------------------------------------------------------------------------------+----------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block PolarToRectangular 
      "Convert polar coordinates to rectangular coordinates"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Blocks.Interfaces.RealInput u_abs "Length of polar representation";
      Modelica.Blocks.Interfaces.RealInput u_arg "Angle of polar representation";
      Modelica.Blocks.Interfaces.RealOutput y_re 
        "Real part of rectangular representation";
      Modelica.Blocks.Interfaces.RealOutput y_im 
        "Imaginary part of rectangular representation";

    equation 
      y_re = u_abs * Modelica.Math.cos(u_arg);
      y_im = u_abs * Modelica.Math.sin(u_arg);
    end PolarToRectangular;

--------------

|image128| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Mean
----------------------------------------------------------------------------------------

**Calculate mean over period 1/f**

.. figure:: Modelica.Blocks.Math.MeanD.png
   :align: center
   :alt: Modelica.Blocks.Math.Mean

   Modelica.Blocks.Math.Mean

Information
~~~~~~~~~~~

::

This block calculates the mean of the input signal u over the given
period 1/f:

::

    1 T
    - ∫ u(t) dt
    T 0

Note: The output is updated after each period defined by 1/f.

::

Extends from
`Modelica.Blocks.Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                              | Name   | Default   | Description           |
+===================================================================+========+===========+=======================+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f      |           | Base frequency [Hz]   |
+-------------------------------------------------------------------+--------+-----------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Mean "Calculate mean over period 1/f"
      extends Modelica.Blocks.Interfaces.SISO;
      parameter Modelica.SIunits.Frequency f(start=50) "Base frequency";
    protected 
      discrete Modelica.SIunits.Time t0 "Start time of simulation";
      Real x(start=0) "Integrator state";
    equation 
      when initial() then
          t0 = time;
      end when;
      der(x) = u;
      when sample(t0+1/f, 1/f) then
        y=f*x;
        reinit(x, 0);
      end when;
    end Mean;

--------------

|image129| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.RectifiedMean
-------------------------------------------------------------------------------------------------

**Calculate refctified mean over period 1/f**

.. figure:: Modelica.Blocks.Math.RectifiedMeanD.png
   :align: center
   :alt: Modelica.Blocks.Math.RectifiedMean

   Modelica.Blocks.Math.RectifiedMean

Information
~~~~~~~~~~~

::

This block calculates the rectified mean of the input signal u over the
given period 1/f, using the `mean
block <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Mean>`_.

Note: The output is updated after each period defined by 1/f.

::

Extends from
`Modelica.Blocks.Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                              | Name   | Default   | Description           |
+===================================================================+========+===========+=======================+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f      |           | Base frequency [Hz]   |
+-------------------------------------------------------------------+--------+-----------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block RectifiedMean "Calculate refctified mean over period 1/f"
      extends Modelica.Blocks.Interfaces.SISO;
      parameter Modelica.SIunits.Frequency f(start=50) "Base frequency";
      Mean mean(final f=f);
      Blocks.Math.Abs abs1;
    equation 
      connect(u, abs1.u);
      connect(abs1.y, mean.u);
      connect(mean.y, y);
    end RectifiedMean;

--------------

|image130| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.RootMeanSquare
--------------------------------------------------------------------------------------------------

**Calculate root mean square over period 1/f**

.. figure:: Modelica.Blocks.Math.RootMeanSquareD.png
   :align: center
   :alt: Modelica.Blocks.Math.RootMeanSquare

   Modelica.Blocks.Math.RootMeanSquare

Information
~~~~~~~~~~~

::

This block calculates the root mean square of the input signal u over
the given period 1/f, using the `mean
block <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Mean>`_.

Note: The output is updated after each period defined by 1/f.

::

Extends from
`Modelica.Blocks.Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                              | Name   | Default   | Description           |
+===================================================================+========+===========+=======================+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f      |           | Base frequency [Hz]   |
+-------------------------------------------------------------------+--------+-----------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block RootMeanSquare "Calculate root mean square over period 1/f"
      extends Modelica.Blocks.Interfaces.SISO;
      parameter Modelica.SIunits.Frequency f(start=50) "Base frequency";
      Blocks.Math.Product product;
      Mean mean(final f=f);
      Blocks.Math.Sqrt sqrt1;
    equation 

      connect(u, product.u1);
      connect(u, product.u2);
      connect(product.y, mean.u);
      connect(mean.y, sqrt1.u);
      connect(sqrt1.y, y);
    end RootMeanSquare;

--------------

|image131| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Harmonic
--------------------------------------------------------------------------------------------

**Calculate harmonic over period 1/f**

.. figure:: Modelica.Blocks.Math.HarmonicD.png
   :align: center
   :alt: Modelica.Blocks.Math.Harmonic

   Modelica.Blocks.Math.Harmonic

Information
~~~~~~~~~~~

::

This block calculates the root mean square and the phase angle of a
single harmonic *k* of the input signal u over the given period 1/f,
using the `mean
block <Modelica_Blocks_Math.html#Modelica.Blocks.Math.Mean>`_.

Note: The output is updated after each period defined by 1/f.

Note: The harmonic is defined by ``√2 rms cos(k 2 π f t - arg)``

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                              | Name   | Default   | Description           |
+===================================================================+========+===========+=======================+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f      |           | Base frequency [Hz]   |
+-------------------------------------------------------------------+--------+-----------+-----------------------+
| Integer                                                           | k      |           | Order of harmonic     |
+-------------------------------------------------------------------+--------+-----------+-----------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+----------+--------------------------------------------+
| Type                                                                                           | Name     | Description                                |
+================================================================================================+==========+============================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u        |                                            |
+------------------------------------------------------------------------------------------------+----------+--------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y\_rms   | Root mean square of polar representation   |
+------------------------------------------------------------------------------------------------+----------+--------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y\_arg   | Angle of polar representation              |
+------------------------------------------------------------------------------------------------+----------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Harmonic "Calculate harmonic over period 1/f"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Modelica.SIunits.Frequency f(start=50) "Base frequency";
      parameter Integer k(start=1) "Order of harmonic";
      Blocks.Sources.Sine sin1(
        final amplitude=sqrt(2),
        final phase=Modelica.Constants.pi/2,
        final freqHz=k*f);
      Blocks.Sources.Sine sin2(                final amplitude=sqrt(2),
        final phase=0,
        final freqHz=k*f);
      Blocks.Math.Product product1;
      Blocks.Math.Product product2;
      Mean mean1(final f=f);
      Mean mean2(final f=f);
      Blocks.Interfaces.RealInput u;
      Blocks.Interfaces.RealOutput y_rms "Root mean square of polar representation";
      Blocks.Interfaces.RealOutput y_arg "Angle of polar representation";
      Blocks.Math.RectangularToPolar rectangularToPolar;
    equation 

      connect(sin2.y, product2.u2);
      connect(sin1.y, product1.u1);
      connect(u, product1.u2);
      connect(u, product2.u1);
      connect(product2.y, mean2.u);
      connect(product1.y, mean1.u);
      connect(mean1.y, rectangularToPolar.u_re);
      connect(mean2.y, rectangularToPolar.u_im);
      connect(rectangularToPolar.y_abs, y_rms);
      connect(rectangularToPolar.y_arg, y_arg);
    end Harmonic;

--------------

|image132| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Max
---------------------------------------------------------------------------------------

**Pass through the largest signal**

.. figure:: Modelica.Blocks.Math.MaxD.png
   :align: center
   :alt: Modelica.Blocks.Math.Max

   Modelica.Blocks.Math.Max

Information
~~~~~~~~~~~

::

This block computes the output **y** as *maximum* of the two Real inputs
**u1** and **u2**:

::

        y = max ( u1 , u2 );

::

Extends from
`Interfaces.SI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO>`_
(2 Single Input / 1 Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                           | Name   | Description                        |
+================================================================================================+========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1     | Connector of Real input signal 1   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2     | Connector of Real input signal 2   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal    |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Max "Pass through the largest signal"
      extends Interfaces.SI2SO;
    equation 
      y = max(u1, u2);
    end Max;

--------------

|image133| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Min
---------------------------------------------------------------------------------------

**Pass through the smallest signal**

.. figure:: Modelica.Blocks.Math.MaxD.png
   :align: center
   :alt: Modelica.Blocks.Math.Min

   Modelica.Blocks.Math.Min

Information
~~~~~~~~~~~

::

This block computes the output **y** as *minimum* of the two Real inputs
**u1** and **u2**:

::

        y = min ( u1 , u2 );

::

Extends from
`Interfaces.SI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SI2SO>`_
(2 Single Input / 1 Single Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| Type                                                                                           | Name   | Description                        |
+================================================================================================+========+====================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u1     | Connector of Real input signal 1   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u2     | Connector of Real input signal 2   |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal    |
+------------------------------------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Min "Pass through the smallest signal"
      extends Interfaces.SI2SO;
    equation 
       y = min(u1, u2);
    end Min;

--------------

|image134| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.Edge
----------------------------------------------------------------------------------------

**Indicates rising edge of boolean signal**

.. figure:: Modelica.Blocks.Math.EdgeD.png
   :align: center
   :alt: Modelica.Blocks.Math.Edge

   Modelica.Blocks.Math.Edge

Information
~~~~~~~~~~~

::

This block sets the Boolean output **y** to true, when the Boolean input
**u** shows a *rising edge*:

::

        y = edge( u );

::

Extends from
`Interfaces.BooleanSISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanSISO>`_
(Single Input Single Output control block with signals of type Boolean).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Edge "Indicates rising edge of boolean signal"
      extends Interfaces.BooleanSISO;
    equation 
      y = edge(u);
    end Edge;

--------------

|image135| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.BooleanChange
-------------------------------------------------------------------------------------------------

**Indicates boolean signal changing**

.. figure:: Modelica.Blocks.Math.EdgeD.png
   :align: center
   :alt: Modelica.Blocks.Math.BooleanChange

   Modelica.Blocks.Math.BooleanChange

Information
~~~~~~~~~~~

::

This block sets the Boolean output **y** to true, when the Boolean input
**u** shows a *rising or falling edge*, i.e., when the signal changes:

::

        y = change( u );

::

Extends from
`Interfaces.BooleanSISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanSISO>`_
(Single Input Single Output control block with signals of type Boolean).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block BooleanChange "Indicates boolean signal changing"
      extends Interfaces.BooleanSISO;
    equation 
      y = change(u);
    end BooleanChange;

--------------

|image136| `Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.IntegerChange
-------------------------------------------------------------------------------------------------

**Indicates integer signal changing**

.. figure:: Modelica.Blocks.Math.IntegerChangeD.png
   :align: center
   :alt: Modelica.Blocks.Math.IntegerChange

   Modelica.Blocks.Math.IntegerChange

Information
~~~~~~~~~~~

::

This block sets the Boolean output **y** to true, when the Integer input
**u** changes:

::

        y = change( u );

::

Extends from
`Interfaces.IntegerSIBooleanSO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerSIBooleanSO>`_
(Integer Input Boolean Output continuous control block).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `IntegerInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerInput>`_      | u      | Connector of Integer input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block IntegerChange "Indicates integer signal changing"
      extends Interfaces.IntegerSIBooleanSO;
    equation 
      y = change(u);
    end IntegerChange;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:38
2010.

.. |Modelica.Blocks.Math.UnitConversions| image:: Modelica.Blocks.Math.UnitConversionsS.png
.. |Modelica.Blocks.Math.InverseBlockConstraints| image:: Modelica.Blocks.Math.InverseBlockConstraintsS.png
.. |Modelica.Blocks.Math.Gain| image:: Modelica.Blocks.Math.GainS.png
.. |Modelica.Blocks.Math.MatrixGain| image:: Modelica.Blocks.Math.MatrixGainS.png
.. |Modelica.Blocks.Math.MultiSum| image:: Modelica.Blocks.Math.MultiSumS.png
.. |Modelica.Blocks.Math.MultiProduct| image:: Modelica.Blocks.Math.MultiProductS.png
.. |Modelica.Blocks.Math.MultiSwitch| image:: Modelica.Blocks.Math.MultiSwitchS.png
.. |Modelica.Blocks.Math.Sum| image:: Modelica.Blocks.Math.SumS.png
.. |Modelica.Blocks.Math.Feedback| image:: Modelica.Blocks.Math.FeedbackS.png
.. |Modelica.Blocks.Math.Add| image:: Modelica.Blocks.Math.AddS.png
.. |Modelica.Blocks.Math.Add3| image:: Modelica.Blocks.Math.Add3S.png
.. |Modelica.Blocks.Math.Product| image:: Modelica.Blocks.Math.ProductS.png
.. |Modelica.Blocks.Math.Division| image:: Modelica.Blocks.Math.DivisionS.png
.. |Modelica.Blocks.Math.Abs| image:: Modelica.Blocks.Math.AbsS.png
.. |Modelica.Blocks.Math.Sign| image:: Modelica.Blocks.Math.SignS.png
.. |Modelica.Blocks.Math.Sqrt| image:: Modelica.Blocks.Math.SqrtS.png
.. |Modelica.Blocks.Math.Sin| image:: Modelica.Blocks.Math.SinS.png
.. |Modelica.Blocks.Math.Cos| image:: Modelica.Blocks.Math.CosS.png
.. |Modelica.Blocks.Math.Tan| image:: Modelica.Blocks.Math.TanS.png
.. |Modelica.Blocks.Math.Asin| image:: Modelica.Blocks.Math.AsinS.png
.. |Modelica.Blocks.Math.Acos| image:: Modelica.Blocks.Math.AcosS.png
.. |Modelica.Blocks.Math.Atan| image:: Modelica.Blocks.Math.AtanS.png
.. |Modelica.Blocks.Math.Atan2| image:: Modelica.Blocks.Math.Atan2S.png
.. |Modelica.Blocks.Math.Sinh| image:: Modelica.Blocks.Math.SinhS.png
.. |Modelica.Blocks.Math.Cosh| image:: Modelica.Blocks.Math.CoshS.png
.. |Modelica.Blocks.Math.Tanh| image:: Modelica.Blocks.Math.TanhS.png
.. |Modelica.Blocks.Math.Exp| image:: Modelica.Blocks.Math.ExpS.png
.. |Modelica.Blocks.Math.Log| image:: Modelica.Blocks.Math.LogS.png
.. |Modelica.Blocks.Math.Log10| image:: Modelica.Blocks.Math.Log10S.png
.. |Modelica.Blocks.Math.RealToInteger| image:: Modelica.Blocks.Math.RealToIntegerS.png
.. |Modelica.Blocks.Math.IntegerToReal| image:: Modelica.Blocks.Math.IntegerToRealS.png
.. |Modelica.Blocks.Math.BooleanToReal| image:: Modelica.Blocks.Math.BooleanToRealS.png
.. |Modelica.Blocks.Math.BooleanToInteger| image:: Modelica.Blocks.Math.BooleanToIntegerS.png
.. |Modelica.Blocks.Math.RealToBoolean| image:: Modelica.Blocks.Math.RealToBooleanS.png
.. |Modelica.Blocks.Math.IntegerToBoolean| image:: Modelica.Blocks.Math.IntegerToBooleanS.png
.. |Modelica.Blocks.Math.RectangularToPolar| image:: Modelica.Blocks.Math.RectangularToPolarS.png
.. |Modelica.Blocks.Math.PolarToRectangular| image:: Modelica.Blocks.Math.RectangularToPolarS.png
.. |Modelica.Blocks.Math.Mean| image:: Modelica.Blocks.Math.MeanS.png
.. |Modelica.Blocks.Math.RectifiedMean| image:: Modelica.Blocks.Math.MeanS.png
.. |Modelica.Blocks.Math.RootMeanSquare| image:: Modelica.Blocks.Math.MeanS.png
.. |Modelica.Blocks.Math.Harmonic| image:: Modelica.Blocks.Math.HarmonicS.png
.. |Modelica.Blocks.Math.Max| image:: Modelica.Blocks.Math.MaxS.png
.. |Modelica.Blocks.Math.Min| image:: Modelica.Blocks.Math.MaxS.png
.. |Modelica.Blocks.Math.Edge| image:: Modelica.Blocks.Math.EdgeS.png
.. |Modelica.Blocks.Math.BooleanChange| image:: Modelica.Blocks.Math.EdgeS.png
.. |Modelica.Blocks.Math.IntegerChange| image:: Modelica.Blocks.Math.IntegerChangeS.png
.. |image46| image:: Modelica.Blocks.Math.UnitConversionsS.png
.. |image47| image:: Modelica.Blocks.Math.InverseBlockConstraintsS.png
.. |image48| image:: Modelica.Blocks.Math.GainS.png
.. |image49| image:: Modelica.Blocks.Math.MatrixGainS.png
.. |image50| image:: Modelica.Blocks.Math.MultiSumS.png
.. |image51| image:: Modelica.Blocks.Math.MultiProductS.png
.. |image52| image:: Modelica.Blocks.Math.MultiSwitchS.png
.. |image53| image:: Modelica.Blocks.Math.SumS.png
.. |image54| image:: Modelica.Blocks.Math.FeedbackS.png
.. |image55| image:: Modelica.Blocks.Math.AddS.png
.. |image56| image:: Modelica.Blocks.Math.Add3S.png
.. |image57| image:: Modelica.Blocks.Math.ProductS.png
.. |image58| image:: Modelica.Blocks.Math.DivisionS.png
.. |image59| image:: Modelica.Blocks.Math.AbsS.png
.. |image60| image:: Modelica.Blocks.Math.SignS.png
.. |image61| image:: Modelica.Blocks.Math.SqrtS.png
.. |image62| image:: Modelica.Blocks.Math.SinS.png
.. |image63| image:: Modelica.Blocks.Math.CosS.png
.. |image64| image:: Modelica.Blocks.Math.TanS.png
.. |image65| image:: Modelica.Blocks.Math.AsinS.png
.. |image66| image:: Modelica.Blocks.Math.AcosS.png
.. |image67| image:: Modelica.Blocks.Math.AtanS.png
.. |image68| image:: Modelica.Blocks.Math.Atan2S.png
.. |image69| image:: Modelica.Blocks.Math.SinhS.png
.. |image70| image:: Modelica.Blocks.Math.CoshS.png
.. |image71| image:: Modelica.Blocks.Math.TanhS.png
.. |image72| image:: Modelica.Blocks.Math.ExpS.png
.. |image73| image:: Modelica.Blocks.Math.LogS.png
.. |image74| image:: Modelica.Blocks.Math.Log10S.png
.. |image75| image:: Modelica.Blocks.Math.RealToIntegerS.png
.. |image76| image:: Modelica.Blocks.Math.IntegerToRealS.png
.. |image77| image:: Modelica.Blocks.Math.BooleanToRealS.png
.. |image78| image:: Modelica.Blocks.Math.BooleanToIntegerS.png
.. |image79| image:: Modelica.Blocks.Math.RealToBooleanS.png
.. |image80| image:: Modelica.Blocks.Math.IntegerToBooleanS.png
.. |image81| image:: Modelica.Blocks.Math.RectangularToPolarS.png
.. |image82| image:: Modelica.Blocks.Math.RectangularToPolarS.png
.. |image83| image:: Modelica.Blocks.Math.MeanS.png
.. |image84| image:: Modelica.Blocks.Math.MeanS.png
.. |image85| image:: Modelica.Blocks.Math.MeanS.png
.. |image86| image:: Modelica.Blocks.Math.HarmonicS.png
.. |image87| image:: Modelica.Blocks.Math.MaxS.png
.. |image88| image:: Modelica.Blocks.Math.MaxS.png
.. |image89| image:: Modelica.Blocks.Math.EdgeS.png
.. |image90| image:: Modelica.Blocks.Math.EdgeS.png
.. |image91| image:: Modelica.Blocks.Math.IntegerChangeS.png
.. |image92| image:: Modelica.Blocks.Math.InverseBlockConstraintsI.png
.. |image93| image:: Modelica.Blocks.Math.GainI.png
.. |image94| image:: Modelica.Blocks.Math.MatrixGainI.png
.. |image95| image:: Modelica.Blocks.Math.MultiSumI.png
.. |image96| image:: Modelica.Blocks.Math.MultiProductI.png
.. |image97| image:: Modelica.Blocks.Math.MultiSwitchI.png
.. |image98| image:: Modelica.Blocks.Math.SumI.png
.. |image99| image:: Modelica.Blocks.Math.FeedbackI.png
.. |image100| image:: Modelica.Blocks.Math.AddI.png
.. |image101| image:: Modelica.Blocks.Math.Add3I.png
.. |image102| image:: Modelica.Blocks.Math.ProductI.png
.. |image103| image:: Modelica.Blocks.Math.DivisionI.png
.. |image104| image:: Modelica.Blocks.Math.AbsI.png
.. |image105| image:: Modelica.Blocks.Math.SignI.png
.. |image106| image:: Modelica.Blocks.Math.SqrtI.png
.. |image107| image:: Modelica.Blocks.Math.SinI.png
.. |image108| image:: Modelica.Blocks.Math.CosI.png
.. |image109| image:: Modelica.Blocks.Math.TanI.png
.. |image110| image:: Modelica.Blocks.Math.AsinI.png
.. |image111| image:: Modelica.Blocks.Math.AcosI.png
.. |image112| image:: Modelica.Blocks.Math.AtanI.png
.. |image113| image:: Modelica.Blocks.Math.Atan2I.png
.. |image114| image:: Modelica.Blocks.Math.SinhI.png
.. |image115| image:: Modelica.Blocks.Math.CoshI.png
.. |image116| image:: Modelica.Blocks.Math.TanhI.png
.. |image117| image:: Modelica.Blocks.Math.ExpI.png
.. |image118| image:: Modelica.Blocks.Math.LogI.png
.. |image119| image:: Modelica.Blocks.Math.Log10I.png
.. |image120| image:: Modelica.Blocks.Math.RealToIntegerI.png
.. |image121| image:: Modelica.Blocks.Math.IntegerToRealI.png
.. |image122| image:: Modelica.Blocks.Math.BooleanToRealI.png
.. |image123| image:: Modelica.Blocks.Math.BooleanToIntegerI.png
.. |image124| image:: Modelica.Blocks.Math.RealToBooleanI.png
.. |image125| image:: Modelica.Blocks.Math.IntegerToBooleanI.png
.. |image126| image:: Modelica.Blocks.Math.RectangularToPolarI.png
.. |image127| image:: Modelica.Blocks.Math.PolarToRectangularI.png
.. |image128| image:: Modelica.Blocks.Math.MeanI.png
.. |image129| image:: Modelica.Blocks.Math.RectifiedMeanI.png
.. |image130| image:: Modelica.Blocks.Math.RootMeanSquareI.png
.. |image131| image:: Modelica.Blocks.Math.HarmonicI.png
.. |image132| image:: Modelica.Blocks.Math.MaxI.png
.. |image133| image:: Modelica.Blocks.Math.MinI.png
.. |image134| image:: Modelica.Blocks.Math.EdgeI.png
.. |image135| image:: Modelica.Blocks.Math.BooleanChangeI.png
.. |image136| image:: Modelica.Blocks.Math.IntegerChangeI.png
