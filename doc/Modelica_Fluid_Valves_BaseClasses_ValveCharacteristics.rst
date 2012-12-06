======================================================
Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics
======================================================

`Modelica.Fluid.Valves.BaseClasses <Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses>`_.ValveCharacteristics
------------------------------------------------------------------------------------------------------------------------------------

**Functions for valve characteristics**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| Name                                                                                                                                                                                                                               | Description                            |
+====================================================================================================================================================================================================================================+========================================+
| |image5| `baseFun <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFun>`_                                                                                   | Base class for valve characteristics   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image6| `linear <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.linear>`_                                                                                     | Linear characteristic                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image7| `one <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.one>`_                                                                                           | Constant characteristic                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image8| `quadratic <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.quadratic>`_                                                                               | Quadratic characteristic               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image9| `equalPercentage <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.equalPercentage>`_                                                                   | Equal percentage characteristic        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+

--------------

|image10| `Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics>`_.baseFun
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base class for valve characteristics**

Information
~~~~~~~~~~~

::

This is a partial function that defines the interface of valve
characteristics. The function returns "rc = valveCharacteristic" as
function of the opening "pos" (in the range 0..1):

    ::

            dp = (zeta_TOT/2) * rho * velocity^2
        m_flow =    sqrt(2/zeta_TOT) * Av * sqrt(rho * dp)
        m_flow = valveCharacteristic * Av * sqrt(rho * dp)
        m_flow =                  rc * Av * sqrt(rho * dp)

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+--------+-----------+-----------------------------------------------+
| Type   | Name   | Default   | Description                                   |
+========+========+===========+===============================================+
| Real   | pos    |           | Opening position (0: closed, 1: fully open)   |
+--------+--------+-----------+-----------------------------------------------+

Outputs
~~~~~~~

+--------+--------+----------------------------------------+
| Type   | Name   | Description                            |
+========+========+========================================+
| Real   | rc     | Relative flow coefficient (per unit)   |
+--------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial function baseFun "Base class for valve characteristics"
      extends Modelica.Icons.Function;
      input Real pos(min=0, max=1) "Opening position (0: closed, 1: fully open)";
      output Real rc "Relative flow coefficient (per unit)";
    end baseFun;

--------------

|image11| `Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics>`_.linear
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Linear characteristic**

Information
~~~~~~~~~~~

Extends from
`baseFun <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFun>`_
(Base class for valve characteristics).

Inputs
~~~~~~

+--------+--------+-----------+-----------------------------------------------+
| Type   | Name   | Default   | Description                                   |
+========+========+===========+===============================================+
| Real   | pos    |           | Opening position (0: closed, 1: fully open)   |
+--------+--------+-----------+-----------------------------------------------+

Outputs
~~~~~~~

+--------+--------+----------------------------------------+
| Type   | Name   | Description                            |
+========+========+========================================+
| Real   | rc     | Relative flow coefficient (per unit)   |
+--------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function linear "Linear characteristic"
      extends baseFun;
    algorithm 
      rc := pos;
    end linear;

--------------

|image12| `Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics>`_.one
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Constant characteristic**

Information
~~~~~~~~~~~

Extends from
`baseFun <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFun>`_
(Base class for valve characteristics).

Inputs
~~~~~~

+--------+--------+-----------+-----------------------------------------------+
| Type   | Name   | Default   | Description                                   |
+========+========+===========+===============================================+
| Real   | pos    |           | Opening position (0: closed, 1: fully open)   |
+--------+--------+-----------+-----------------------------------------------+

Outputs
~~~~~~~

+--------+--------+----------------------------------------+
| Type   | Name   | Description                            |
+========+========+========================================+
| Real   | rc     | Relative flow coefficient (per unit)   |
+--------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function one "Constant characteristic"
      extends baseFun;
    algorithm 
      rc := 1;
    end one;

--------------

|image13| `Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics>`_.quadratic
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Quadratic characteristic**

Information
~~~~~~~~~~~

Extends from
`baseFun <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFun>`_
(Base class for valve characteristics).

Inputs
~~~~~~

+--------+--------+-----------+-----------------------------------------------+
| Type   | Name   | Default   | Description                                   |
+========+========+===========+===============================================+
| Real   | pos    |           | Opening position (0: closed, 1: fully open)   |
+--------+--------+-----------+-----------------------------------------------+

Outputs
~~~~~~~

+--------+--------+----------------------------------------+
| Type   | Name   | Description                            |
+========+========+========================================+
| Real   | rc     | Relative flow coefficient (per unit)   |
+--------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function quadratic "Quadratic characteristic"
      extends baseFun;
    algorithm 
      rc := pos*pos;
    end quadratic;

--------------

|image14| `Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics>`_.equalPercentage
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Equal percentage characteristic**

Information
~~~~~~~~~~~

::

This characteristic is such that the relative change of the flow
coefficient is proportional to the change in the opening position:

d(rc)/d(pos) = k d(pos).

The constant k is expressed in terms of the rangeability, i.e., the
ratio between the maximum and the minimum useful flow coefficient:

rangeability = exp(k) = rc(1.0)/rc(0.0).

The theoretical characteristic has a non-zero opening when pos = 0; the
implemented characteristic is modified so that the valve closes linearly
when pos < delta.

::

Extends from
`baseFun <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFun>`_
(Base class for valve characteristics).

Inputs
~~~~~~

+--------+----------------+-----------+-----------------------------------------------+
| Type   | Name           | Default   | Description                                   |
+========+================+===========+===============================================+
| Real   | pos            |           | Opening position (0: closed, 1: fully open)   |
+--------+----------------+-----------+-----------------------------------------------+
| Real   | rangeability   | 20        | Rangeability                                  |
+--------+----------------+-----------+-----------------------------------------------+
| Real   | delta          | 0.01      |                                               |
+--------+----------------+-----------+-----------------------------------------------+

Outputs
~~~~~~~

+--------+--------+----------------------------------------+
| Type   | Name   | Description                            |
+========+========+========================================+
| Real   | rc     | Relative flow coefficient (per unit)   |
+--------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function equalPercentage "Equal percentage characteristic"
      extends baseFun;
      input Real rangeability = 20 "Rangeability";
      input Real delta = 0.01;
    algorithm 
      rc := if pos > delta then rangeability^(pos-1) else 
              pos/delta*rangeability^(delta-1);
    end equalPercentage;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:17
2010.

.. |Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFun| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunS.png
.. |Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.linear| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunS.png
.. |Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.one| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunS.png
.. |Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.quadratic| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunS.png
.. |Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.equalPercentage| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunS.png
.. |image5| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunS.png
.. |image6| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunS.png
.. |image7| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunS.png
.. |image8| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunS.png
.. |image9| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunS.png
.. |image10| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunI.png
.. |image11| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunI.png
.. |image12| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunI.png
.. |image13| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunI.png
.. |image14| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFunI.png
