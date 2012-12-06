=====================================================================
Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components
=====================================================================

`Modelica.Electrical.QuasiStationary.Machines.BasicMachines <Modelica_Electrical_QuasiStationary_Machines_BasicMachines.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines>`_.Components
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Machine components like AirGaps**

Information
~~~~~~~~~~~

::

This package contains components for modeling electrical machines,
specially threephase induction machines, based on space phasor theory.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| Name                                                                                                                                                                                                                                                                | Description                                         |
+=====================================================================================================================================================================================================================================================================+=====================================================+
| |image2| `PartialCore <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Components.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCore>`_                                                                              | Partial model of transformer core with 3 windings   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image3| `IdealCore <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Components.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.IdealCore>`_                                                                                  | Ideal transformer with 3 windings                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+

--------------

|image4| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Components.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components>`_.PartialCore
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model of transformer core with 3 windings**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCoreD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCore

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCore

Information
~~~~~~~~~~~

::

Partial model of transformer core with 3 windings; saturation function
flux versus magentizing current has to be defined.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+
| Real      | n12    |           | Turns ratio 1:2    |
+-----------+--------+-----------+--------------------+
| Real      | n13    |           | Turns ratio 1:3    |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                                                      | Name       | Description   |
+===========================================================================================================================================================+============+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p1   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n1   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p2   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n2   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p3   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n3   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialCore 
      "Partial model of transformer core with 3 windings"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Real n12(start=1) "Turns ratio 1:2";
      parameter Real n13(start=1) "Turns ratio 1:3";
      Modelica.SIunits.ComplexVoltage  v1[
                                         m] = plug_p1.pin.v  - plug_n1.pin.v;
      Modelica.SIunits.ComplexCurrent  i1[
                                         m] = plug_p1.pin.i;
      Modelica.SIunits.ComplexVoltage  v2[
                                         m] = plug_p2.pin.v  - plug_n2.pin.v;
      Modelica.SIunits.ComplexCurrent  i2[
                                         m] = plug_p2.pin.i;
      Modelica.SIunits.ComplexVoltage  v3[
                                         m] = plug_p3.pin.v  - plug_n3.pin.v;
      Modelica.SIunits.ComplexCurrent  i3[
                                         m] = plug_p3.pin.i;
      Modelica.SIunits.ComplexCurrent  im[
                                         m] = i1 + i2/n12 + i3/n13 
        "Magnetizing current";
      QuasiStationary.MultiPhase.Interfaces.PositivePlug plug_p1(final m=m);
      QuasiStationary.MultiPhase.Interfaces.NegativePlug plug_n1(final m=m);
      QuasiStationary.MultiPhase.Interfaces.PositivePlug plug_p2(final m=m);
      QuasiStationary.MultiPhase.Interfaces.NegativePlug plug_n2(final m=m);
      QuasiStationary.MultiPhase.Interfaces.PositivePlug plug_p3(final m=m);
      QuasiStationary.MultiPhase.Interfaces.NegativePlug plug_n3(final m=m);
    equation 
    //branches p1-n1, p2-n2, p3-n3
      Connections.branch(plug_p1.reference, plug_n1.reference);
      plug_p1.reference.gamma = plug_n1.reference.gamma;
      Connections.branch(plug_p2.reference, plug_n2.reference);
      plug_p2.reference.gamma = plug_n2.reference.gamma;
      Connections.branch(plug_p3.reference, plug_n3.reference);
      plug_p3.reference.gamma = plug_n3.reference.gamma;
    //Define p1.reference.gamme = p2.reference.gamma = p3.reference.gamma
      Connections.branch(plug_p1.reference, plug_p2.reference);
      plug_p1.reference.gamma = plug_p2.reference.gamma;
      Connections.branch(plug_p1.reference, plug_p3.reference);
      plug_p1.reference.gamma = plug_p3.reference.gamma;
    //Define p1, p2 and p3 as potential roots
    //Note: transformer could be fed from primary or secondary side
      Connections.potentialRoot(plug_p1.reference);
      Connections.potentialRoot(plug_p2.reference);
      Connections.potentialRoot(plug_p3.reference);
    //Current balances
      plug_p1.pin.i + plug_n1.pin.i = fill(Complex(0), m);
      plug_p2.pin.i + plug_n2.pin.i = fill(Complex(0), m);
      plug_p3.pin.i + plug_n3.pin.i = fill(Complex(0), m);
    end PartialCore;

--------------

|image5| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Components.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components>`_.IdealCore
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal transformer with 3 windings**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCoreD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.IdealCore

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.IdealCore

Information
~~~~~~~~~~~

::

Ideal transformer with 3 windings: no magnetizing current.

::

Extends from
`PartialCore <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Components.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCore>`_
(Partial model of transformer core with 3 windings).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+
| Real      | n12    |           | Turns ratio 1:2    |
+-----------+--------+-----------+--------------------+
| Real      | n13    |           | Turns ratio 1:3    |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                                                      | Name       | Description   |
+===========================================================================================================================================================+============+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p1   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n1   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p2   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n2   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p3   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n3   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealCore "Ideal transformer with 3 windings"
      extends PartialCore;
    equation 
      im = fill(Complex(0), m);
      v1 = n12*v2;
      v1 = n13*v3;
    end IdealCore;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:40
2010.

.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCore| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCoreS.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.IdealCore| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCoreS.png
.. |image2| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCoreS.png
.. |image3| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCoreS.png
.. |image4| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCoreI.png
.. |image5| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Components.PartialCoreI.png
