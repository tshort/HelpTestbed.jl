=============================
Modelica.Media.Incompressible
=============================

`Modelica.Media <Modelica_Media.html#Modelica.Media>`_.Incompressible
---------------------------------------------------------------------

**Medium model for T-dependent properties, defined by tables or
polynomials**

Information
~~~~~~~~~~~

::

Incompressible media package
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This package provides a structure and examples of how to create simple
medium models of incompressible fluids, meaning fluids with very little
pressure influence on density. The medium properties is typically
described in terms of tables, functions or polynomial coefficients.

Definitions
^^^^^^^^^^^

The common meaning of *incompressible* is that properties like density
and enthalpy are independent of pressure. Thus properties are
conveniently described as functions of temperature, e.g., as polynomials
density(T) and cp(T). However, enthalpy can not be independent of
pressure since h = u - p/d. For liquids it is anyway common to neglect
this dependence since for constant density the neglected term is (p -
p0)/d, which in comparison with cp is very small for most liquids. For
water, the equivalent change of temperature to increasing pressure 1 bar
is 0.025 Kelvin.

Two boolean flags are used to choose how enthalpy and inner energy is
calculated:

-  **enthalpyOfT**=true, means assuming that enthalpy is only a function
   of temperature, neglecting the pressure dependent term.
-  **singleState**=true, means also neglect the pressure influence on
   inner energy, which makes all medium properties pure functions of
   temperature.

The default setting for both these flags is true, which enables the
simulation tool to choose temperature as the only medium state and
avoids non-linear equation systems, see the section about `Static state
selection <Modelica_Media_UsersGuide_MediumDefinition.html#Modelica.Media.UsersGuide.MediumDefinition.StaticStateSelection>`_
in the Modelica.Media User's Guide.

Contents
^^^^^^^^

Currently, the package contains the following parts:

#. `Table based medium
   models <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_
#. `Example medium
   models <Modelica_Media_Incompressible_Examples.html#Modelica.Media.Incompressible.Examples>`_

A few examples are given in the Examples package. The model
`Examples.Glycol47 <Modelica_Media_Incompressible_Examples_Glycol47.html#Modelica.Media.Incompressible.Examples.Glycol47>`_
shows how the medium models can be used. For more realistic examples of
how to implement volume models with medium properties look in the
`Medium usage
section <Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage>`_
of the User's Guide.

::

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------+
| Name                                                                                                                                                | Description                                        |
+=====================================================================================================================================================+====================================================+
| |image3| `Examples <Modelica_Media_Incompressible_Examples.html#Modelica.Media.Incompressible.Examples>`_                                           | Examples for incompressible media                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------+
| |image4| `Common <Modelica_Media_Incompressible_Common.html#Modelica.Media.Incompressible.Common>`_                                                 | Common data structures                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------+
| |image5| `TableBased <Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased>`_                                     | Incompressible medium properties based on tables   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:34
2010.

.. |Modelica.Media.Incompressible.Examples| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.Incompressible.Common| image:: Modelica.Media.Incompressible.CommonS.png
.. |Modelica.Media.Incompressible.TableBased| image:: Modelica.Media.Incompressible.TableBasedS.png
.. |image3| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image4| image:: Modelica.Media.Incompressible.CommonS.png
.. |image5| image:: Modelica.Media.Incompressible.TableBasedS.png
