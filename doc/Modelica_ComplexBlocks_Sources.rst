==============================
Modelica.ComplexBlocks.Sources
==============================

`Modelica.ComplexBlocks <Modelica_ComplexBlocks.html#Modelica.ComplexBlocks>`_.Sources
--------------------------------------------------------------------------------------

**Library of signal source blocks generating Complex signals**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                         | Description                                                                               |
+==============================================================================================================================================================================+===========================================================================================+
| |image4| `ComplexExpression <Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources.ComplexExpression>`_                                                         | Set output signal to a time varying Complex expression                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image5| `ComplexConstant <Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources.ComplexConstant>`_                                                             | Generate constant signal of type Complex                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image6| `ComplexStep <Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources.ComplexStep>`_                                                                     | Generate step signal of type Complex                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image7| `ComplexRotatingPhasor <Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources.ComplexRotatingPhasor>`_                                                 | Generate a phasor with constant magnitude and constant angular velocity of type Complex   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+

--------------

|image8| `Modelica.ComplexBlocks.Sources <Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources>`_.ComplexExpression
---------------------------------------------------------------------------------------------------------------------------------

**Set output signal to a time varying Complex expression**

.. figure:: Modelica.ComplexBlocks.Sources.ComplexExpressionD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Sources.ComplexExpression

   Modelica.ComplexBlocks.Sources.ComplexExpression

Information
~~~~~~~~~~~

::

The (time varying) Complex output signal of this block can be defined in
its parameter menu via variable **y**. The purpose is to support the
easy definition of Complex expressions in a block diagram. Note, that
"time" is a built-in variable that is always accessible and represents
the "model time" and that Variable **y** is both a variable and a
connector.

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------+--------------+---------------------------+
| Type                                                                                                        | Name   | Default      | Description               |
+=============================================================================================================+========+==============+===========================+
| Time varying output signal                                                                                  |
+-------------------------------------------------------------------------------------------------------------+--------+--------------+---------------------------+
| `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y      | Complex(0)   | Value of Complex output   |
+-------------------------------------------------------------------------------------------------------------+--------+--------------+---------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------+
| Type                                                                                                               | Name   | Description               |
+====================================================================================================================+========+===========================+
| Time varying output signal                                                                                         |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_   | y      | Value of Complex output   |
+--------------------------------------------------------------------------------------------------------------------+--------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block ComplexExpression 
      "Set output signal to a time varying Complex expression"

      output Modelica.ComplexBlocks.Interfaces.ComplexOutput y=Complex(0) 
        "Value of Complex output";


    end ComplexExpression;

--------------

|image9| `Modelica.ComplexBlocks.Sources <Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources>`_.ComplexConstant
-------------------------------------------------------------------------------------------------------------------------------

**Generate constant signal of type Complex**

.. figure:: Modelica.ComplexBlocks.Sources.ComplexConstantD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Sources.ComplexConstant

   Modelica.ComplexBlocks.Sources.ComplexConstant

Information
~~~~~~~~~~~

::

The Complex output y is a constant signal:

.. figure:: ../Resources/Images/Blocks/Sources/Constant.png
   :align: center
   :alt: 

::

Extends from
`Modelica.ComplexBlocks.Interfaces.ComplexSO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------+--------+-----------+-------------------------+
| Type                                                               | Name   | Default   | Description             |
+====================================================================+========+===========+=========================+
| `Complex <../../../Modelica/Library/help/Complex.html#Complex>`_   | k      |           | Constant output value   |
+--------------------------------------------------------------------+--------+-----------+-------------------------+

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

    block ComplexConstant "Generate constant signal of type Complex"
      parameter Complex k(re(start=1),im(start=0)) "Constant output value";
      extends Modelica.ComplexBlocks.Interfaces.ComplexSO;

    equation 
      y = k;
    end ComplexConstant;

--------------

|image10| `Modelica.ComplexBlocks.Sources <Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources>`_.ComplexStep
----------------------------------------------------------------------------------------------------------------------------

**Generate step signal of type Complex**

.. figure:: Modelica.ComplexBlocks.Sources.ComplexStepD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Sources.ComplexStep

   Modelica.ComplexBlocks.Sources.ComplexStep

Information
~~~~~~~~~~~

::

The Complex output y is a step signal (of real and imaginary part):

.. figure:: ../Resources/Images/Blocks/Sources/Step.png
   :align: center
   :alt: 

::

Extends from
`ComplexBlocks.Interfaces.ComplexSignalSource <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSignalSource>`_
(Base class for continuous signal source).

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------+-------------+--------------+----------------------------------------------+
| Type                                                               | Name        | Default      | Description                                  |
+====================================================================+=============+==============+==============================================+
| `Complex <../../../Modelica/Library/help/Complex.html#Complex>`_   | height      | Complex(1)   | Height of step                               |
+--------------------------------------------------------------------+-------------+--------------+----------------------------------------------+
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

    block ComplexStep "Generate step signal of type Complex"
      parameter Complex height=Complex(1) "Height of step";
      extends ComplexBlocks.Interfaces.ComplexSignalSource;

    equation 
      y = offset + (if time < startTime then Complex(0) else height);
    end ComplexStep;

--------------

|image11| `Modelica.ComplexBlocks.Sources <Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources>`_.ComplexRotatingPhasor
--------------------------------------------------------------------------------------------------------------------------------------

**Generate a phasor with constant magnitude and constant angular
velocity of type Complex**

.. figure:: Modelica.ComplexBlocks.Sources.ComplexRotatingPhasorD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Sources.ComplexRotatingPhasor

   Modelica.ComplexBlocks.Sources.ComplexRotatingPhasor

Information
~~~~~~~~~~~

::

The output y is a complex phasor with constant magnitude, spinning with
constant angular velocity.

::

Extends from
`Modelica.ComplexBlocks.Interfaces.ComplexSO <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------+
| Type                                                                          | Name        | Default   | Description                                           |
+===============================================================================+=============+===========+=======================================================+
| Real                                                                          | magnitude   | 1         | Magnitude of complex phasor                           |
+-------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | w           | 1         | Constant angular velocity of complex phasor [rad/s]   |
+-------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                       | phi0        | 0         | Initial angle of complex phasor at time = 0 [rad]     |
+-------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------+

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

    block ComplexRotatingPhasor 
      "Generate a phasor with constant magnitude and constant angular velocity of type Complex"
      parameter Real magnitude=1 "Magnitude of complex phasor";
      parameter Modelica.SIunits.AngularVelocity w=1 
        "Constant angular velocity of complex phasor";
      parameter Modelica.SIunits.Angle phi0 = 0 
        "Initial angle of complex phasor at time = 0";
      extends Modelica.ComplexBlocks.Interfaces.ComplexSO;

    equation 
      y = magnitude * Modelica.ComplexMath.exp(Complex(0,w*time+phi0));
    end ComplexRotatingPhasor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:41
2010.

.. |Modelica.ComplexBlocks.Sources.ComplexExpression| image:: Modelica.ComplexBlocks.Sources.ComplexExpressionS.png
.. |Modelica.ComplexBlocks.Sources.ComplexConstant| image:: Modelica.ComplexBlocks.Sources.ComplexConstantS.png
.. |Modelica.ComplexBlocks.Sources.ComplexStep| image:: Modelica.ComplexBlocks.Sources.ComplexStepS.png
.. |Modelica.ComplexBlocks.Sources.ComplexRotatingPhasor| image:: Modelica.ComplexBlocks.Sources.ComplexRotatingPhasorS.png
.. |image4| image:: Modelica.ComplexBlocks.Sources.ComplexExpressionS.png
.. |image5| image:: Modelica.ComplexBlocks.Sources.ComplexConstantS.png
.. |image6| image:: Modelica.ComplexBlocks.Sources.ComplexStepS.png
.. |image7| image:: Modelica.ComplexBlocks.Sources.ComplexRotatingPhasorS.png
.. |image8| image:: Modelica.ComplexBlocks.Sources.ComplexExpressionI.png
.. |image9| image:: Modelica.ComplexBlocks.Sources.ComplexConstantI.png
.. |image10| image:: Modelica.ComplexBlocks.Sources.ComplexStepI.png
.. |image11| image:: Modelica.ComplexBlocks.Sources.ComplexRotatingPhasorI.png
