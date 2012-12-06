==================================
Modelica.Media.CompressibleLiquids
==================================

`Modelica.Media <Modelica_Media.html#Modelica.Media>`_.CompressibleLiquids
--------------------------------------------------------------------------

**compressible liquid models**

Information
~~~~~~~~~~~

::

Fluid models with linear compressibility, using PartialLinearFluid as base class.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The linear compressibility fluid models contained in this package are
based on the assumptions that:

-  The specific heat capacity at constant pressure (cp) is constant
-  The isobaric expansion coefficient (beta) is constant
-  The isothermal compressibility (kappa) is constant
-  Pressure and temperature are used as states

This results in models that are only valid for small temperature ranges,
but sufficient to model compressibility and e.g., the "water hammer"
effect. ANother advantage id that only 3 values need to be measured to
have an initial model. Hydraulic fluids can often be approximated by
this type of model.

That means that the density is a linear function in temperature and in
pressure. In order to define the complete model, a number of constant
reference values are needed which are computed at the reference values
of the states pressure p and temperature T. The model can be
interprested as a linearization of a full non-linear fluid model (but it
is not linear in all thermodynamic coordinates). Reference values are
needed for

#. the density (reference\_d),
#. the specific enthalpy (reference\_h),
#. the specific entropy (reference\_s).

Apart from that, a user needs to define the molar mass, MM\_const. Note
that it is possible to define a fluid by computing the reference values
from a full non-linear fluid model by computing the package constants
using the standard functions defined in a fluid package (see example in
Common, LinearWater\_pT).

::

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                   | Description                                                                       |
+========================================================================================================================================================================================================================+===================================================================================+
| |image3| `Common <Modelica_Media_CompressibleLiquids_Common.html#Modelica.Media.CompressibleLiquids.Common>`_                                                                                                          | base classes for compressible liquids                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+
| |image4| `LinearColdWater <Modelica_Media_CompressibleLiquids_LinearColdWater.html#Modelica.Media.CompressibleLiquids.LinearColdWater>`_                                                                               | cold water model with linear compressibility                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+
| |image5| `LinearWater\_pT\_Ambient <Modelica_Media_CompressibleLiquids_LinearWater_pT_Ambient.html#Modelica.Media.CompressibleLiquids.LinearWater_pT_Ambient>`_                                                        | liquid, linear compressibility water model at 1.01325 bar and 25 degree Celsius   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:31
2010.

.. |Modelica.Media.CompressibleLiquids.Common| image:: Modelica.Media.CompressibleLiquids.CommonS.png
.. |Modelica.Media.CompressibleLiquids.LinearColdWater| image:: Modelica.Media.CompressibleLiquids.LinearColdWaterS.png
.. |Modelica.Media.CompressibleLiquids.LinearWater\_pT\_Ambient| image:: Modelica.Media.CompressibleLiquids.LinearColdWaterS.png
.. |image3| image:: Modelica.Media.CompressibleLiquids.CommonS.png
.. |image4| image:: Modelica.Media.CompressibleLiquids.LinearColdWaterS.png
.. |image5| image:: Modelica.Media.CompressibleLiquids.LinearColdWaterS.png
