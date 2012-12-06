===============
Modelica.Blocks
===============

`Modelica <Modelica.html#Modelica>`_.Blocks
-------------------------------------------

**Library of basic input/output control blocks (continuous, discrete,
logical, table blocks)**

Information
~~~~~~~~~~~

::

This library contains input/output blocks to build up block diagrams.

**Main Author:**

`Martin Otter <http://www.robotic.dlr.de/Martin.Otter/>`_
 Deutsches Zentrum für Luft und Raumfahrt e. V. (DLR)
 Oberpfaffenhofen
 Postfach 1116
 D-82230 Wessling
 email: `Martin.Otter@dlr.de <mailto:Martin.Otter@dlr.de>`_

Copyright © 1998-2010, Modelica Association and DLR.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
`Modelica.UsersGuide.ModelicaLicense2 <Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2>`_
or visit
`http://www.modelica.org/licenses/ModelicaLicense2 <http://www.modelica.org/licenses/ModelicaLicense2>`_.*

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| Name                                                                                                          | Description                                                                                |
+===============================================================================================================+============================================================================================+
| |image14| `Examples <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples>`_                                | Library of examples to demonstrate the usage of package Blocks                             |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image15| `Continuous <Modelica_Blocks_Continuous.html#Modelica.Blocks.Continuous>`_                          | Library of continuous control blocks with internal states                                  |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image16| `Discrete <Modelica_Blocks_Discrete.html#Modelica.Blocks.Discrete>`_                                | Library of discrete input/output blocks with fixed sample period                           |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image17| `Interaction <Modelica_Blocks_Interaction.html#Modelica.Blocks.Interaction>`_                       | Library of user interaction blocks to input and to show variables in a diagram animation   |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image18| `Interfaces <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces>`_                          | Library of connectors and partial models for input/output blocks                           |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image19| `Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_                                   | Library of components with Boolean input and output signals                                |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image20| `Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_                                            | Library of Real mathematical functions as input/output blocks                              |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image21| `MathInteger <Modelica_Blocks_MathInteger.html#Modelica.Blocks.MathInteger>`_                       | Library of Integer mathematical functions as input/output blocks                           |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image22| `MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_                       | Library of Boolean mathematical functions as input/output blocks                           |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image23| `Nonlinear <Modelica_Blocks_Nonlinear.html#Modelica.Blocks.Nonlinear>`_                             | Library of discontinuous or non-differentiable algebraic control blocks                    |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image24| `Routing <Modelica_Blocks_Routing.html#Modelica.Blocks.Routing>`_                                   | Library of blocks to combine and extract signals                                           |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image25| `Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_                                   | Library of signal source blocks generating Real and Boolean signals                        |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image26| `Tables <Modelica_Blocks_Tables.html#Modelica.Blocks.Tables>`_                                      | Library of blocks to interpolate in one and two-dimensional tables                         |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
| |image27| `Types <Modelica_Blocks_Types.html#Modelica.Blocks.Types>`_                                         | Library of constants and types with choices, especially to build menus                     |
+---------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:32
2010.

.. |Modelica.Blocks.Examples| image:: Modelica.Blocks.ExamplesS.png
.. |Modelica.Blocks.Continuous| image:: Modelica.Blocks.ContinuousS.png
.. |Modelica.Blocks.Discrete| image:: Modelica.Blocks.ContinuousS.png
.. |Modelica.Blocks.Interaction| image:: Modelica.Blocks.ContinuousS.png
.. |Modelica.Blocks.Interfaces| image:: Modelica.Blocks.InterfacesS.png
.. |Modelica.Blocks.Logical| image:: Modelica.Blocks.LogicalS.png
.. |Modelica.Blocks.Math| image:: Modelica.Blocks.LogicalS.png
.. |Modelica.Blocks.MathInteger| image:: Modelica.Blocks.LogicalS.png
.. |Modelica.Blocks.MathBoolean| image:: Modelica.Blocks.LogicalS.png
.. |Modelica.Blocks.Nonlinear| image:: Modelica.Blocks.LogicalS.png
.. |Modelica.Blocks.Routing| image:: Modelica.Blocks.LogicalS.png
.. |Modelica.Blocks.Sources| image:: Modelica.Blocks.SourcesS.png
.. |Modelica.Blocks.Tables| image:: Modelica.Blocks.TablesS.png
.. |Modelica.Blocks.Types| image:: Modelica.Blocks.TablesS.png
.. |image14| image:: Modelica.Blocks.ExamplesS.png
.. |image15| image:: Modelica.Blocks.ContinuousS.png
.. |image16| image:: Modelica.Blocks.ContinuousS.png
.. |image17| image:: Modelica.Blocks.ContinuousS.png
.. |image18| image:: Modelica.Blocks.InterfacesS.png
.. |image19| image:: Modelica.Blocks.LogicalS.png
.. |image20| image:: Modelica.Blocks.LogicalS.png
.. |image21| image:: Modelica.Blocks.LogicalS.png
.. |image22| image:: Modelica.Blocks.LogicalS.png
.. |image23| image:: Modelica.Blocks.LogicalS.png
.. |image24| image:: Modelica.Blocks.LogicalS.png
.. |image25| image:: Modelica.Blocks.SourcesS.png
.. |image26| image:: Modelica.Blocks.TablesS.png
.. |image27| image:: Modelica.Blocks.TablesS.png
