===============================
Modelica.ComplexBlocks.Examples
===============================

`Modelica.ComplexBlocks <Modelica_ComplexBlocks.html#Modelica.ComplexBlocks>`_.Examples
---------------------------------------------------------------------------------------

**Library of examples to demonstrate the usage of package Blocks**

Information
~~~~~~~~~~~

::

This library demonstrates the usage of Complex blocks.

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+
| Name                                                                                                                                                                      | Description                  |
+===========================================================================================================================================================================+==============================+
| |image1| `TestConversionBlock <Modelica_ComplexBlocks_Examples.html#Modelica.ComplexBlocks.Examples.TestConversionBlock>`_                                                | Test the conversion blocks   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+

--------------

|image2| `Modelica.ComplexBlocks.Examples <Modelica_ComplexBlocks_Examples.html#Modelica.ComplexBlocks.Examples>`_.TestConversionBlock
--------------------------------------------------------------------------------------------------------------------------------------

**Test the conversion blocks**

.. figure:: Modelica.ComplexBlocks.Examples.TestConversionBlockD.png
   :align: center
   :alt: Modelica.ComplexBlocks.Examples.TestConversionBlock

   Modelica.ComplexBlocks.Examples.TestConversionBlock

Information
~~~~~~~~~~~

::

A Complex signal is defined by its length and angle, both linearly
rising with time. Plotting the imaginary part versus the real part, you
will see an Archimedean spiral.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TestConversionBlock "Test the conversion blocks"
      extends Modelica.Icons.Example;
      Modelica.Blocks.Sources.Ramp len(duration=1, offset=1E-6);
      Modelica.Blocks.Sources.Ramp phi(height=4*Modelica.Constants.pi, duration=1);
      Modelica.ComplexBlocks.ComplexMath.PolarToComplex polarToComplex;
      Modelica.ComplexBlocks.ComplexMath.ComplexToReal complexToReal;
    equation 
      connect(phi.y, polarToComplex.phi);
      connect(len.y, polarToComplex.len);
      connect(polarToComplex.y, complexToReal.u);
    end TestConversionBlock;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:40
2010.

.. |Modelica.ComplexBlocks.Examples.TestConversionBlock| image:: Modelica.ComplexBlocks.Examples.TestConversionBlockS.png
.. |image1| image:: Modelica.ComplexBlocks.Examples.TestConversionBlockS.png
.. |image2| image:: Modelica.ComplexBlocks.Examples.TestConversionBlockI.png
