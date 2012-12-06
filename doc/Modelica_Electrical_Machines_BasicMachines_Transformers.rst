=======================================================
Modelica.Electrical.Machines.BasicMachines.Transformers
=======================================================

`Modelica.Electrical.Machines.BasicMachines <Modelica_Electrical_Machines_BasicMachines.html#Modelica.Electrical.Machines.BasicMachines>`_.Transformers
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Library for technical 3phase transformers**

Information
~~~~~~~~~~~

::

This package contains components to model technical threephase
transformers:

-  Transformer: transformer model to choose connection / vector group
-  Yy: Transformers with primary primary Y / secondary y
-  Yd: Transformers with primary primary Y / secondary d
-  Yz: Transformers with primary primary Y / secondary zig-zag
-  Dy: Transformers with primary primary D / secondary y
-  Dd: Transformers with primary D / secondary d
-  Dz: Transformers with primary D / secondary zig-zag

Transformers are modeled by an ideal transformer, adding primary and
secondary winding resistances and stray inductances.
 All transformers extend from the base model *PartialTransformer*,
adding the primary and secondary connection.
 **VectorGroup** defines the phase shift between primary and secondary
voltages, expressed by a number phase shift/30 degree (i.e., the hour on
a clock face). Therefore each transformer is identified by two
characters and a two-digit number, e.g., Yd11 ... primary connection Y
(star), secondary connection d (delta), vector group 11 (phase shift 330
degree)
 With the "supermodel" *Tranformer* the user may choose primary and
secondary connection as well as the vector group.
 It calculates winding ratio as well as primary and secondary winding
resistances and stray inductances, distributing them equally to primary
and secondary winding, from the following parameters:

-  nominal frequency
-  primary voltage (RMS line-to-line)
-  secondary voltage (RMS line-to-line)
-  nominal apparent power
-  impedance voltage drop
-  short-circuit copper losses

The **impedance voltage drop** indicates the (absolute value of the)
voltage drop at nominal load (current) as well as the voltage we have to
apply to the primary winding to achieve nominal current in the
short-circuited secondary winding.

**Please pay attention** to proper grounding of the primary and
secondary part of the whole circuit.
 The primary and secondary starpoint are available as connectors, if the
connection is not delta (D or d).
 **In some cases (Yy or Yz) it may be necessary to ground one of the
transformer's starpoints even though the source's and/or load's
starpoint are grounded; you may use a reasonable high earthing
resistance.**

**Limitations and assumptions:**

-  number of phases is limited to 3, therefore definition as a constant
   m=3
-  symmetry of the 3 phases resp. limbs
-  saturation is neglected, i.e., inductances are constant
-  magnetizing current is neglected
-  magnetizing losses are neglected
-  additional (stray) losses are neglected

**Further development:**

-  modeling magnetizing current, including saturation
-  temperature dependency of winding resistances

**Main Authors:**
    `Anton Haumer <http://www.haumer.at/>`_
     Technical Consulting & Electrical Engineering
     A-3423 St.Andrae-Woerdern
    Austria
     email: `a.haumer@haumer.at <mailto:a.haumer@haumer.at>`_

Copyright © 1998-2010, Modelica Association and Anton Haumer.

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

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| Name                                                                                                                                                                                              | Description                                    |
+===================================================================================================================================================================================================+================================================+
| |image6| `Yy <Modelica_Electrical_Machines_BasicMachines_Transformers_Yy.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yy>`_                                                       | Transformers: primary Y / secondary y          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| |image7| `Yd <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd>`_                                                       | Transformers: primary Y / secondary d          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| |image8| `Yz <Modelica_Electrical_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz>`_                                                       | Transformers: primary Y / secondary zig-zag    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| |image9| `Dy <Modelica_Electrical_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy>`_                                                       | Transformers: primary D / secondary y          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| |image10| `Dd <Modelica_Electrical_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dd>`_                                                      | Transformers: primary D / secondary d          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| |image11| `Dz <Modelica_Electrical_Machines_BasicMachines_Transformers_Dz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz>`_                                                      | Transformers: primary D / secondary ziag-zag   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:48
2010.

.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Yy| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Yd| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Yz| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Dy| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Dd| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Dz| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
.. |image6| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
.. |image7| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
.. |image8| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
.. |image9| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
.. |image10| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
.. |image11| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.YyS.png
