==================================
Modelica.ComplexBlocks.ComplexMath
==================================

`Modelica.ComplexBlocks <Modelica_ComplexBlocks.html#Modelica.ComplexBlocks>`_.ComplexMath
------------------------------------------------------------------------------------------

**Library of mathematical functions as input/output blocks**

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

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| Name                                                                                                                                                                | Description                                                               |
+=====================================================================================================================================================================+===========================================================================+
| |image23| `Gain <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Gain>`_                                                                 | Output the product of a gain value with the input signal                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image24| `Sum <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Sum>`_                                                                   | Output the sum of the elements of the input vector                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image25| `Feedback <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Feedback>`_                                                         | Output difference between commanded and feedback input                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image26| `Add <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Add>`_                                                                   | Output the sum of the two inputs                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image27| `Add3 <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Add3>`_                                                                 | Output the sum of the three inputs                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image28| `Product <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Product>`_                                                           | Output product of the two inputs                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image29| `Division <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Division>`_                                                         | Output first input divided by second input                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image30| `Sqrt <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Sqrt>`_                                                                 | Output the square root of the input (input >= 0 required)                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image31| `Sin <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Sin>`_                                                                   | Output the sine of the input                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image32| `Cos <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Cos>`_                                                                   | Output the cosine of the input                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image33| `Tan <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Tan>`_                                                                   | Output the tangent of the input                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image34| `Asin <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Asin>`_                                                                 | Output the arc sine of the input                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image35| `Acos <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Acos>`_                                                                 | Output the arc cosine of the input                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image36| `Atan <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Atan>`_                                                                 | Output the arc tangent of the input                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image37| `Sinh <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Sinh>`_                                                                 | Output the hyperbolic sine of the input                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image38| `Cosh <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Cosh>`_                                                                 | Output the hyperbolic cosine of the input                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image39| `Tanh <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Tanh>`_                                                                 | Output the hyperbolic tangent of the input                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image40| `Exp <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Exp>`_                                                                   | Output the exponential (base e) of the input                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image41| `Log <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.Log>`_                                                                   | Output the natural (base e) logarithm of the input (input > 0 required)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image42| `RealToComplex <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.RealToComplex>`_                                               | Converts cartesian representation to complex                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image43| `PolarToComplex <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.PolarToComplex>`_                                             | Converts polar representation to complex                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image44| `ComplexToReal <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.ComplexToReal>`_                                               | Converts complex to cartesian representation                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image45| `ComplexToPolar <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath.ComplexToPolar>`_                                             | Converts complex to polar representation                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+

--------------

|image46| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Gain
---------------------------------------------------------------------------------------------------------------------------------

**Output the product of a gain value with the input signal**

.. figure:: Modelica.ComplexBlocks.ComplexMath.GainD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Gain

   Modelica.ComplexBlocks.ComplexMath.Gain

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

+--------------------------------------------------------------------+--------+-----------+-------------------------------------------+
| Type                                                               | Name   | Default   | Description                               |
+====================================================================+========+===========+===========================================+
| `Complex <../../../Modelica/Library/help/Complex.html#Complex>`_   | k      |           | Gain value multiplied with input signal   |
+--------------------------------------------------------------------+--------+-----------+-------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------+
| Type                                                                                                               | Name   | Description               |
+====================================================================================================================+========+===========================+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u      | Input signal connector    |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y      | Output signal connector   |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Gain "Output the product of a gain value with the input signal"

      parameter Complex k(re(start=1), im(start=0)) 
        "Gain value multiplied with input signal";
    public 
      Interfaces.ComplexInput u "Input signal connector";
      Interfaces.ComplexOutput y "Output signal connector";

    equation 
      y = k*u;
    end Gain;

--------------

|image47| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Sum
--------------------------------------------------------------------------------------------------------------------------------

**Output the sum of the elements of the input vector**

.. figure:: Modelica.ComplexBlocks.ComplexMath.SumD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Sum

   Modelica.ComplexBlocks.ComplexMath.Sum

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
`Interfaces.ComplexMISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexMISO>`_
(Multiple Input Single Output continuous control block).

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------+----------+----------------------------+------------------------------+
| Type                                                               | Name     | Default                    | Description                  |
+====================================================================+==========+============================+==============================+
| Integer                                                            | nin      | 1                          | Number of inputs             |
+--------------------------------------------------------------------+----------+----------------------------+------------------------------+
| `Complex <../../../Modelica/Library/help/Complex.html#Complex>`_   | k[nin]   | fill(Complex(1, 0), nin)   | Optional: sum coefficients   |
+--------------------------------------------------------------------+----------+----------------------------+------------------------------+

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

    block Sum "Output the sum of the elements of the input vector"
      extends Interfaces.ComplexMISO;
      parameter Complex k[nin]=fill(Complex(1,0), nin) "Optional: sum coefficients";
    equation 
      y = k*u;
    end Sum;

--------------

|image48| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Feedback
-------------------------------------------------------------------------------------------------------------------------------------

**Output difference between commanded and feedback input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.FeedbackD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Feedback

   Modelica.ComplexBlocks.ComplexMath.Feedback

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

+--------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                               | Name   | Description   |
+====================================================================================================================+========+===============+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u1     |               |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u2     |               |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y      |               |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Feedback 
      "Output difference between commanded and feedback input"

      Interfaces.ComplexInput u1;
      Interfaces.ComplexInput u2;
      Interfaces.ComplexOutput y;

    equation 
      y = u1 - u2;
    end Feedback;

--------------

|image49| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Add
--------------------------------------------------------------------------------------------------------------------------------

**Output the sum of the two inputs**

.. figure:: Modelica.ComplexBlocks.ComplexMath.AddD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Add

   Modelica.ComplexBlocks.ComplexMath.Add

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
`Interfaces.ComplexSI2SO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSI2SO>`_
(2 Single Input / 1 Single Output continuous control block).

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------+--------+-----------------+-----------------------+
| Type                                                               | Name   | Default         | Description           |
+====================================================================+========+=================+=======================+
| `Complex <../../../Modelica/Library/help/Complex.html#Complex>`_   | k1     | Complex(1, 0)   | Gain of upper input   |
+--------------------------------------------------------------------+--------+-----------------+-----------------------+
| `Complex <../../../Modelica/Library/help/Complex.html#Complex>`_   | k2     | Complex(1, 0)   | Gain of lower input   |
+--------------------------------------------------------------------+--------+-----------------+-----------------------+

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

    block Add "Output the sum of the two inputs"
      extends Interfaces.ComplexSI2SO;
      parameter Complex k1=Complex(1,0) "Gain of upper input";
      parameter Complex k2=Complex(1,0) "Gain of lower input";

    equation 
      y = k1*u1 + k2*u2;
    end Add;

--------------

|image50| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Add3
---------------------------------------------------------------------------------------------------------------------------------

**Output the sum of the three inputs**

.. figure:: Modelica.ComplexBlocks.ComplexMath.Add3D.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Add3

   Modelica.ComplexBlocks.ComplexMath.Add3

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
`Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------+--------+-----------------+------------------------+
| Type                                                               | Name   | Default         | Description            |
+====================================================================+========+=================+========================+
| `Complex <../../../Modelica/Library/help/Complex.html#Complex>`_   | k1     | Complex(1, 0)   | Gain of upper input    |
+--------------------------------------------------------------------+--------+-----------------+------------------------+
| `Complex <../../../Modelica/Library/help/Complex.html#Complex>`_   | k2     | Complex(1, 0)   | Gain of middle input   |
+--------------------------------------------------------------------+--------+-----------------+------------------------+
| `Complex <../../../Modelica/Library/help/Complex.html#Complex>`_   | k3     | Complex(1, 0)   | Gain of lower input    |
+--------------------------------------------------------------------+--------+-----------------+------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                               | Name   | Description                            |
+====================================================================================================================+========+========================================+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u1     | Connector 1 of Complex input signals   |
+--------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u2     | Connector 2 of Complex input signals   |
+--------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_      | u3     | Connector 3 of Complex input signals   |
+--------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y      | Connector of Complex output signals    |
+--------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Add3 "Output the sum of the three inputs"
      extends Blocks.Interfaces.BlockIcon;

      parameter Complex k1=Complex(1,0) "Gain of upper input";
      parameter Complex k2=Complex(1,0) "Gain of middle input";
      parameter Complex k3=Complex(1,0) "Gain of lower input";
      Interfaces.ComplexInput u1 "Connector 1 of Complex input signals";
      Interfaces.ComplexInput u2 "Connector 2 of Complex input signals";
      Interfaces.ComplexInput u3 "Connector 3 of Complex input signals";
      Interfaces.ComplexOutput y "Connector of Complex output signals";

    equation 
      y = k1*u1 + k2*u2 + k3*u3;
    end Add3;

--------------

|image51| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Product
------------------------------------------------------------------------------------------------------------------------------------

**Output product of the two inputs**

.. figure:: Modelica.ComplexBlocks.ComplexMath.ProductD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Product

   Modelica.ComplexBlocks.ComplexMath.Product

Information
~~~~~~~~~~~

::

This blocks computes the output **y** (element-wise) as *product* of the
corresponding elements of the two inputs **u1** and **u2**:

::

        y = u1 * u2;

::

Extends from
`Interfaces.ComplexSI2SO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSI2SO>`_
(2 Single Input / 1 Single Output continuous control block).

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

    block Product "Output product of the two inputs"
      extends Interfaces.ComplexSI2SO;

    equation 
      y = u1*u2;
    end Product;

--------------

|image52| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Division
-------------------------------------------------------------------------------------------------------------------------------------

**Output first input divided by second input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.DivisionD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Division

   Modelica.ComplexBlocks.ComplexMath.Division

Information
~~~~~~~~~~~

::

This block computes the output **y** (element-wise) by *dividing* the
corresponding elements of the two inputs **u1** and **u2**:

::

        y = u1 / u2;

::

Extends from
`Interfaces.ComplexSI2SO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSI2SO>`_
(2 Single Input / 1 Single Output continuous control block).

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

    block Division "Output first input divided by second input"
      extends Interfaces.ComplexSI2SO;

    equation 
      y = u1/u2;
    end Division;

--------------

|image53| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Sqrt
---------------------------------------------------------------------------------------------------------------------------------

**Output the square root of the input (input >= 0 required)**

.. figure:: Modelica.ComplexBlocks.ComplexMath.SqrtD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Sqrt

   Modelica.ComplexBlocks.ComplexMath.Sqrt

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Sqrt 
      "Output the square root of the input (input >= 0 required)"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.'sqrt'(u);
    end Sqrt;

--------------

|image54| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Sin
--------------------------------------------------------------------------------------------------------------------------------

**Output the sine of the input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.SinD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Sin

   Modelica.ComplexBlocks.ComplexMath.Sin

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Sin "Output the sine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.sin(u);
    end Sin;

--------------

|image55| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Cos
--------------------------------------------------------------------------------------------------------------------------------

**Output the cosine of the input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.CosD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Cos

   Modelica.ComplexBlocks.ComplexMath.Cos

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Cos "Output the cosine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.cos(u);
    end Cos;

--------------

|image56| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Tan
--------------------------------------------------------------------------------------------------------------------------------

**Output the tangent of the input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.TanD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Tan

   Modelica.ComplexBlocks.ComplexMath.Tan

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Tan "Output the tangent of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.tan(u);
    end Tan;

--------------

|image57| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Asin
---------------------------------------------------------------------------------------------------------------------------------

**Output the arc sine of the input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.AsinD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Asin

   Modelica.ComplexBlocks.ComplexMath.Asin

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Asin "Output the arc sine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.asin(u);
    end Asin;

--------------

|image58| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Acos
---------------------------------------------------------------------------------------------------------------------------------

**Output the arc cosine of the input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.AcosD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Acos

   Modelica.ComplexBlocks.ComplexMath.Acos

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Acos "Output the arc cosine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.acos(u);
    end Acos;

--------------

|image59| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Atan
---------------------------------------------------------------------------------------------------------------------------------

**Output the arc tangent of the input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.AtanD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Atan

   Modelica.ComplexBlocks.ComplexMath.Atan

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Atan "Output the arc tangent of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.atan(u);
    end Atan;

--------------

|image60| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Sinh
---------------------------------------------------------------------------------------------------------------------------------

**Output the hyperbolic sine of the input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.SinhD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Sinh

   Modelica.ComplexBlocks.ComplexMath.Sinh

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Sinh "Output the hyperbolic sine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.sinh(u);
    end Sinh;

--------------

|image61| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Cosh
---------------------------------------------------------------------------------------------------------------------------------

**Output the hyperbolic cosine of the input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.CoshD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Cosh

   Modelica.ComplexBlocks.ComplexMath.Cosh

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Cosh "Output the hyperbolic cosine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.cosh(u);
    end Cosh;

--------------

|image62| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Tanh
---------------------------------------------------------------------------------------------------------------------------------

**Output the hyperbolic tangent of the input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.TanhD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Tanh

   Modelica.ComplexBlocks.ComplexMath.Tanh

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Tanh "Output the hyperbolic tangent of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.tanh(u);
    end Tanh;

--------------

|image63| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Exp
--------------------------------------------------------------------------------------------------------------------------------

**Output the exponential (base e) of the input**

.. figure:: Modelica.ComplexBlocks.ComplexMath.ExpD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Exp

   Modelica.ComplexBlocks.ComplexMath.Exp

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Exp "Output the exponential (base e) of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.exp(u);
    end Exp;

--------------

|image64| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.Log
--------------------------------------------------------------------------------------------------------------------------------

**Output the natural (base e) logarithm of the input (input > 0
required)**

.. figure:: Modelica.ComplexBlocks.ComplexMath.LogD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.Log

   Modelica.ComplexBlocks.ComplexMath.Log

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
`Interfaces.ComplexSISO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO>`_
(Single Input Single Output continuous control block).

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

    block Log 
      "Output the natural (base e) logarithm of the input (input > 0 required)"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.log(u);
    end Log;

--------------

|image65| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.RealToComplex
------------------------------------------------------------------------------------------------------------------------------------------

**Converts cartesian representation to complex**

.. figure:: Modelica.ComplexBlocks.ComplexMath.RealToComplexD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.RealToComplex

   Modelica.ComplexBlocks.ComplexMath.RealToComplex

Information
~~~~~~~~~~~

::

Converts the Real inputs *re* (real part) and *im* (imaginary part) to
the Complex output *y*.

::

Extends from
`Modelica.ComplexBlocks.Interfaces.ComplexSO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSO>`_
(Single Output continuous control block).

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                               | Name   | Description                          |
+====================================================================================================================+========+======================================+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y      | Connector of Complex output signal   |
+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                          | re     |                                      |
+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                          | im     |                                      |
+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block RealToComplex "Converts cartesian representation to complex"
      extends Modelica.ComplexBlocks.Interfaces.ComplexSO;
      Blocks.Interfaces.RealInput re;
      Blocks.Interfaces.RealInput im;
    equation 
      y=Complex(re,im);
    end RealToComplex;

--------------

|image66| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.PolarToComplex
-------------------------------------------------------------------------------------------------------------------------------------------

**Converts polar representation to complex**

.. figure:: Modelica.ComplexBlocks.ComplexMath.PolarToComplexD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.PolarToComplex

   Modelica.ComplexBlocks.ComplexMath.PolarToComplex

Information
~~~~~~~~~~~

::

Converts the Real inputs *len* (length, absolute) and *phi* (angle,
argument) to the Complex output *y*.

::

Extends from
`Modelica.ComplexBlocks.Interfaces.ComplexSO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSO>`_
(Single Output continuous control block).

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                               | Name   | Description                          |
+====================================================================================================================+========+======================================+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y      | Connector of Complex output signal   |
+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                          | len    |                                      |
+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                          | phi    |                                      |
+--------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block PolarToComplex "Converts polar representation to complex"
      extends Modelica.ComplexBlocks.Interfaces.ComplexSO;
      Blocks.Interfaces.RealInput len;
      Blocks.Interfaces.RealInput phi;
    equation 
      y=Complex(len*cos(phi),len*sin(phi));
    end PolarToComplex;

--------------

|image67| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.ComplexToReal
------------------------------------------------------------------------------------------------------------------------------------------

**Converts complex to cartesian representation**

.. figure:: Modelica.ComplexBlocks.ComplexMath.ComplexToRealD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.ComplexToReal

   Modelica.ComplexBlocks.ComplexMath.ComplexToReal

Information
~~~~~~~~~~~

::

Converts the Complex input *u* to the Real outputs *re* (real part) and
*im* (imaginary part).

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                            | Name   | Description   |
+=================================================================================================================+========+===============+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                    | re     |               |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                    | im     |               |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_   | u      |               |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block ComplexToReal "Converts complex to cartesian representation"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Blocks.Interfaces.RealOutput re;
      Blocks.Interfaces.RealOutput im;
      Interfaces.ComplexInput u;
    equation 
      re=u.re;
      im=u.im;
    end ComplexToReal;

--------------

|image68| `Modelica.ComplexBlocks.ComplexMath <Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath>`_.ComplexToPolar
-------------------------------------------------------------------------------------------------------------------------------------------

**Converts complex to polar representation**

.. figure:: Modelica.ComplexBlocks.ComplexMath.ComplexToPolarD.png
   :align: center
   :alt: Modelica.ComplexBlocks.ComplexMath.ComplexToPolar

   Modelica.ComplexBlocks.ComplexMath.ComplexToPolar

Information
~~~~~~~~~~~

::

Converts the Complex input *u* to the Real outputs *len* (length,
absolute) and *phi* (angle, argument).

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                            | Name   | Description   |
+=================================================================================================================+========+===============+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                    | len    |               |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                    | phi    |               |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+
| input `ComplexInput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexInput>`_   | u      |               |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block ComplexToPolar "Converts complex to polar representation"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Blocks.Interfaces.RealOutput len;
      Blocks.Interfaces.RealOutput phi;
      Interfaces.ComplexInput u;
    equation 
      len=(u.re^2 + u.im^2)^0.5;
      phi=Modelica.Math.atan2(u.im,u.re);
    end ComplexToPolar;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:41
2010.

.. |Modelica.ComplexBlocks.ComplexMath.Gain| image:: Modelica.ComplexBlocks.ComplexMath.GainS.png
.. |Modelica.ComplexBlocks.ComplexMath.Sum| image:: Modelica.ComplexBlocks.ComplexMath.SumS.png
.. |Modelica.ComplexBlocks.ComplexMath.Feedback| image:: Modelica.ComplexBlocks.ComplexMath.FeedbackS.png
.. |Modelica.ComplexBlocks.ComplexMath.Add| image:: Modelica.ComplexBlocks.ComplexMath.AddS.png
.. |Modelica.ComplexBlocks.ComplexMath.Add3| image:: Modelica.ComplexBlocks.ComplexMath.Add3S.png
.. |Modelica.ComplexBlocks.ComplexMath.Product| image:: Modelica.ComplexBlocks.ComplexMath.ProductS.png
.. |Modelica.ComplexBlocks.ComplexMath.Division| image:: Modelica.ComplexBlocks.ComplexMath.DivisionS.png
.. |Modelica.ComplexBlocks.ComplexMath.Sqrt| image:: Modelica.ComplexBlocks.ComplexMath.SqrtS.png
.. |Modelica.ComplexBlocks.ComplexMath.Sin| image:: Modelica.ComplexBlocks.ComplexMath.SinS.png
.. |Modelica.ComplexBlocks.ComplexMath.Cos| image:: Modelica.ComplexBlocks.ComplexMath.CosS.png
.. |Modelica.ComplexBlocks.ComplexMath.Tan| image:: Modelica.ComplexBlocks.ComplexMath.TanS.png
.. |Modelica.ComplexBlocks.ComplexMath.Asin| image:: Modelica.ComplexBlocks.ComplexMath.AsinS.png
.. |Modelica.ComplexBlocks.ComplexMath.Acos| image:: Modelica.ComplexBlocks.ComplexMath.AcosS.png
.. |Modelica.ComplexBlocks.ComplexMath.Atan| image:: Modelica.ComplexBlocks.ComplexMath.AtanS.png
.. |Modelica.ComplexBlocks.ComplexMath.Sinh| image:: Modelica.ComplexBlocks.ComplexMath.SinhS.png
.. |Modelica.ComplexBlocks.ComplexMath.Cosh| image:: Modelica.ComplexBlocks.ComplexMath.CoshS.png
.. |Modelica.ComplexBlocks.ComplexMath.Tanh| image:: Modelica.ComplexBlocks.ComplexMath.TanhS.png
.. |Modelica.ComplexBlocks.ComplexMath.Exp| image:: Modelica.ComplexBlocks.ComplexMath.ExpS.png
.. |Modelica.ComplexBlocks.ComplexMath.Log| image:: Modelica.ComplexBlocks.ComplexMath.LogS.png
.. |Modelica.ComplexBlocks.ComplexMath.RealToComplex| image:: Modelica.ComplexBlocks.ComplexMath.RealToComplexS.png
.. |Modelica.ComplexBlocks.ComplexMath.PolarToComplex| image:: Modelica.ComplexBlocks.ComplexMath.RealToComplexS.png
.. |Modelica.ComplexBlocks.ComplexMath.ComplexToReal| image:: Modelica.ComplexBlocks.ComplexMath.ComplexToRealS.png
.. |Modelica.ComplexBlocks.ComplexMath.ComplexToPolar| image:: Modelica.ComplexBlocks.ComplexMath.ComplexToRealS.png
.. |image23| image:: Modelica.ComplexBlocks.ComplexMath.GainS.png
.. |image24| image:: Modelica.ComplexBlocks.ComplexMath.SumS.png
.. |image25| image:: Modelica.ComplexBlocks.ComplexMath.FeedbackS.png
.. |image26| image:: Modelica.ComplexBlocks.ComplexMath.AddS.png
.. |image27| image:: Modelica.ComplexBlocks.ComplexMath.Add3S.png
.. |image28| image:: Modelica.ComplexBlocks.ComplexMath.ProductS.png
.. |image29| image:: Modelica.ComplexBlocks.ComplexMath.DivisionS.png
.. |image30| image:: Modelica.ComplexBlocks.ComplexMath.SqrtS.png
.. |image31| image:: Modelica.ComplexBlocks.ComplexMath.SinS.png
.. |image32| image:: Modelica.ComplexBlocks.ComplexMath.CosS.png
.. |image33| image:: Modelica.ComplexBlocks.ComplexMath.TanS.png
.. |image34| image:: Modelica.ComplexBlocks.ComplexMath.AsinS.png
.. |image35| image:: Modelica.ComplexBlocks.ComplexMath.AcosS.png
.. |image36| image:: Modelica.ComplexBlocks.ComplexMath.AtanS.png
.. |image37| image:: Modelica.ComplexBlocks.ComplexMath.SinhS.png
.. |image38| image:: Modelica.ComplexBlocks.ComplexMath.CoshS.png
.. |image39| image:: Modelica.ComplexBlocks.ComplexMath.TanhS.png
.. |image40| image:: Modelica.ComplexBlocks.ComplexMath.ExpS.png
.. |image41| image:: Modelica.ComplexBlocks.ComplexMath.LogS.png
.. |image42| image:: Modelica.ComplexBlocks.ComplexMath.RealToComplexS.png
.. |image43| image:: Modelica.ComplexBlocks.ComplexMath.RealToComplexS.png
.. |image44| image:: Modelica.ComplexBlocks.ComplexMath.ComplexToRealS.png
.. |image45| image:: Modelica.ComplexBlocks.ComplexMath.ComplexToRealS.png
.. |image46| image:: Modelica.ComplexBlocks.ComplexMath.GainI.png
.. |image47| image:: Modelica.ComplexBlocks.ComplexMath.SumI.png
.. |image48| image:: Modelica.ComplexBlocks.ComplexMath.FeedbackI.png
.. |image49| image:: Modelica.ComplexBlocks.ComplexMath.AddI.png
.. |image50| image:: Modelica.ComplexBlocks.ComplexMath.Add3I.png
.. |image51| image:: Modelica.ComplexBlocks.ComplexMath.ProductI.png
.. |image52| image:: Modelica.ComplexBlocks.ComplexMath.DivisionI.png
.. |image53| image:: Modelica.ComplexBlocks.ComplexMath.SqrtI.png
.. |image54| image:: Modelica.ComplexBlocks.ComplexMath.SinI.png
.. |image55| image:: Modelica.ComplexBlocks.ComplexMath.CosI.png
.. |image56| image:: Modelica.ComplexBlocks.ComplexMath.TanI.png
.. |image57| image:: Modelica.ComplexBlocks.ComplexMath.AsinI.png
.. |image58| image:: Modelica.ComplexBlocks.ComplexMath.AcosI.png
.. |image59| image:: Modelica.ComplexBlocks.ComplexMath.AtanI.png
.. |image60| image:: Modelica.ComplexBlocks.ComplexMath.SinhI.png
.. |image61| image:: Modelica.ComplexBlocks.ComplexMath.CoshI.png
.. |image62| image:: Modelica.ComplexBlocks.ComplexMath.TanhI.png
.. |image63| image:: Modelica.ComplexBlocks.ComplexMath.ExpI.png
.. |image64| image:: Modelica.ComplexBlocks.ComplexMath.LogI.png
.. |image65| image:: Modelica.ComplexBlocks.ComplexMath.RealToComplexI.png
.. |image66| image:: Modelica.ComplexBlocks.ComplexMath.PolarToComplexI.png
.. |image67| image:: Modelica.ComplexBlocks.ComplexMath.ComplexToRealI.png
.. |image68| image:: Modelica.ComplexBlocks.ComplexMath.ComplexToPolarI.png
