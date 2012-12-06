=================================================
Modelica.Math.Nonlinear.Examples.UtilityFunctions
=================================================

`Modelica.Math.Nonlinear.Examples <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples>`_.UtilityFunctions
-----------------------------------------------------------------------------------------------------------------------------

**Utility functions that are used as function arguments to the
examples**

Information
~~~~~~~~~~~

::

This package provides utility functions that are used as input arguments
to the example functions.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+
| Name                                                                                                                                                                               | Description                       |
+====================================================================================================================================================================================+===================================+
| |image7| `fun1 <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1>`_                                                   | y = u^2 - 1                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+
| |image8| `fun2 <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun2>`_                                                   | y = 3\*u - sin(w\*u) - 1          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+
| |image9| `fun3 <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun3>`_                                                   | y = p[1] + log(p[2]\*u) - m\*u    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+
| |image10| `fun4 <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun4>`_                                                  | y = sin(u)                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+
| |image11| `fun5 <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun5>`_                                                  | y = sin(w\*u)                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+
| |image12| `fun6 <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun6>`_                                                  | y = sqrt(1/(1 - k^2\*sin(u)^2))   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+
| |image13| `fun7 <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun7>`_                                                  | y = A\*sin(w\*u)\*q(t)            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+

--------------

`Modelica.Math.Nonlinear.Examples.UtilityFunctions <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions>`_.fun1
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**y = u^2 - 1**

Information
~~~~~~~~~~~

Extends from
`Modelica.Math.Nonlinear.Interfaces.partialScalarFunction <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces.partialScalarFunction>`_
(Interface for a function with one input and one output Real signal).

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

    function fun1 "y = u^2 - 1"
      extends Modelica.Math.Nonlinear.Interfaces.partialScalarFunction;
    algorithm 
      y := u^2 - 1;
    end fun1;

--------------

`Modelica.Math.Nonlinear.Examples.UtilityFunctions <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions>`_.fun2
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**y = 3\*u - sin(w\*u) - 1**

Information
~~~~~~~~~~~

Extends from
`Modelica.Math.Nonlinear.Interfaces.partialScalarFunction <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces.partialScalarFunction>`_
(Interface for a function with one input and one output Real signal).

Inputs
~~~~~~

+--------+--------+-----------+------------------------+
| Type   | Name   | Default   | Description            |
+========+========+===========+========================+
| Real   | u      |           | Independent variable   |
+--------+--------+-----------+------------------------+
| Real   | w      |           | Angular velocity       |
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

    function fun2 "y = 3*u - sin(w*u) - 1"
      extends Modelica.Math.Nonlinear.Interfaces.partialScalarFunction;
      input Real w "Angular velocity";
    algorithm 
      y := 3*u - sin(w*u) - 1;

    end fun2;

--------------

`Modelica.Math.Nonlinear.Examples.UtilityFunctions <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions>`_.fun3
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**y = p[1] + log(p[2]\*u) - m\*u**

Information
~~~~~~~~~~~

Extends from
`Modelica.Math.Nonlinear.Interfaces.partialScalarFunction <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces.partialScalarFunction>`_
(Interface for a function with one input and one output Real signal).

Inputs
~~~~~~

+--------+--------+-----------+------------------------+
| Type   | Name   | Default   | Description            |
+========+========+===========+========================+
| Real   | u      |           | Independent variable   |
+--------+--------+-----------+------------------------+
| Real   | p[2]   |           |                        |
+--------+--------+-----------+------------------------+
| Real   | m      |           |                        |
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

    function fun3 "y = p[1] + log(p[2]*u) - m*u"
      extends Modelica.Math.Nonlinear.Interfaces.partialScalarFunction;
      input Real p[2];
      input Real m;
    algorithm 
      y := p[1] + log(p[2]*u) - m*u;

    end fun3;

--------------

`Modelica.Math.Nonlinear.Examples.UtilityFunctions <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions>`_.fun4
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**y = sin(u)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Math.Nonlinear.Interfaces.partialScalarFunction <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces.partialScalarFunction>`_
(Interface for a function with one input and one output Real signal).

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

    function fun4 "y = sin(u)"
      extends Modelica.Math.Nonlinear.Interfaces.partialScalarFunction;
    algorithm 
      y := sin(u);
    end fun4;

--------------

`Modelica.Math.Nonlinear.Examples.UtilityFunctions <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions>`_.fun5
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**y = sin(w\*u)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Math.Nonlinear.Interfaces.partialScalarFunction <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces.partialScalarFunction>`_
(Interface for a function with one input and one output Real signal).

Inputs
~~~~~~

+--------+--------+-----------+------------------------+
| Type   | Name   | Default   | Description            |
+========+========+===========+========================+
| Real   | u      |           | Independent variable   |
+--------+--------+-----------+------------------------+
| Real   | w      |           | Angular velocity       |
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

    function fun5 "y = sin(w*u)"
      extends Modelica.Math.Nonlinear.Interfaces.partialScalarFunction;
      input Real w "Angular velocity";
    algorithm 
      y := sin(w*u);
    end fun5;

--------------

`Modelica.Math.Nonlinear.Examples.UtilityFunctions <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions>`_.fun6
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**y = sqrt(1/(1 - k^2\*sin(u)^2))**

Information
~~~~~~~~~~~

Extends from
`Modelica.Math.Nonlinear.Interfaces.partialScalarFunction <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces.partialScalarFunction>`_
(Interface for a function with one input and one output Real signal).

Inputs
~~~~~~

+--------+--------+-----------+------------------------+
| Type   | Name   | Default   | Description            |
+========+========+===========+========================+
| Real   | u      |           | Independent variable   |
+--------+--------+-----------+------------------------+
| Real   | k      |           | Modul                  |
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

    function fun6 "y = sqrt(1/(1 - k^2*sin(u)^2))"
      extends Modelica.Math.Nonlinear.Interfaces.partialScalarFunction;
      input Real k "Modul";
    algorithm 
      y := sqrt(1/(1 - k^2*sin(u)^2));
    end fun6;

--------------

`Modelica.Math.Nonlinear.Examples.UtilityFunctions <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions>`_.fun7
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**y = A\*sin(w\*u)\*q(t)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Math.Nonlinear.Interfaces.partialScalarFunction <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces.partialScalarFunction>`_
(Interface for a function with one input and one output Real signal).

Inputs
~~~~~~

+--------+--------+-----------+------------------------+
| Type   | Name   | Default   | Description            |
+========+========+===========+========================+
| Real   | u      |           | Independent variable   |
+--------+--------+-----------+------------------------+
| Real   | A      |           | Amplitude              |
+--------+--------+-----------+------------------------+
| Real   | w      |           | Angular frequency      |
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

    function fun7 "y = A*sin(w*u)*q(t)"
      extends Modelica.Math.Nonlinear.Interfaces.partialScalarFunction;
      input Real A "Amplitude";
      input Real w "Angular frequency";
    algorithm 
      y := A*sin(w*u);
    end fun7;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:49
2010.

.. |Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun2| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun3| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun4| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun5| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun6| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun7| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |image7| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |image8| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |image9| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |image10| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |image11| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |image12| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
.. |image13| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1S.png
