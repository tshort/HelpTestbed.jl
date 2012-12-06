==================================
Modelica.Math.Nonlinear.Interfaces
==================================

`Modelica.Math.Nonlinear <Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear>`_.Interfaces
--------------------------------------------------------------------------------------------

**Interfaces for functions**

Information
~~~~~~~~~~~

::

Interface definitions of functions. The main purpose is to use functions
derived from these interface definitions as function arguments to a
function, see, .e.g.,
`Math.Nonlinear.Examples <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples>`_.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
| Name                                                                                                                                                                                     | Description                                                          |
+==========================================================================================================================================================================================+======================================================================+
| |image1| `partialScalarFunction <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces.partialScalarFunction>`_                                                     | Interface for a function with one input and one output Real signal   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+

--------------

`Modelica.Math.Nonlinear.Interfaces <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces>`_.partialScalarFunction
----------------------------------------------------------------------------------------------------------------------------------------

**Interface for a function with one input and one output Real signal**

Information
~~~~~~~~~~~

::

This partial function defines the interface of a function with one input
and one output Real signal. The scalar functions of
`Modelica.Math.Nonlinear <Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear>`_
are derived from this base type by inheritance. This allows to use these
functions directly as function arguments to a function, see, .e.g.,
`Math.Nonlinear.Examples <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples>`_.

::

Inputs
~~~~~~

+--------+--------+-----------+------------------------+
| Type   | Name   | Default   | Description            |
+========+========+===========+========================+
| Real   | u      |           | Independent variable   |
+--------+--------+-----------+------------------------+

Outputs
~~~~~~~

+--------+--------+-----------------------------+
| Type   | Name   | Description                 |
+========+========+=============================+
| Real   | y      | Dependent variable y=f(u)   |
+--------+--------+-----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    encapsulated partial function partialScalarFunction 
      "Interface for a function with one input and one output Real signal"
      input Real u "Independent variable";
      output Real y "Dependent variable y=f(u)";
    end partialScalarFunction;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:49
2010.

.. |Modelica.Math.Nonlinear.Interfaces.partialScalarFunction| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |image1| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
