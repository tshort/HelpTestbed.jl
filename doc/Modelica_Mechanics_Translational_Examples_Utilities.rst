===================================================
Modelica.Mechanics.Translational.Examples.Utilities
===================================================

`Modelica.Mechanics.Translational.Examples <Modelica_Mechanics_Translational_Examples.html#Modelica.Mechanics.Translational.Examples>`_.Utilities
-------------------------------------------------------------------------------------------------------------------------------------------------

**Utility classes used by the Example models**

Information
~~~~~~~~~~~

::

Utility models and functions used in the Examples

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                | Description                                                                     |
+=====================================================================================================================================================================================================================================================================+=================================================================================+
| |image1| `GenerateStribeckFrictionTable <Modelica_Mechanics_Translational_Examples_Utilities.html#Modelica.Mechanics.Translational.Examples.Utilities.GenerateStribeckFrictionTable>`_                                                                              | Generate stribeck friction table for example Friction for the SupportFriction   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------+

--------------

`Modelica.Mechanics.Translational.Examples.Utilities <Modelica_Mechanics_Translational_Examples_Utilities.html#Modelica.Mechanics.Translational.Examples.Utilities>`_.GenerateStribeckFrictionTable
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generate stribeck friction table for example Friction for the
SupportFriction**

Information
~~~~~~~~~~~

::

Returns a table with the friction characteristic table[nTable,2] = [0,
f1; ....; v\_max, fn], where the first column is the velocity v in the
range 0..v\_max and the second column is the friction force according to
the stribeck curve:

::

      F_Coulomb + F_prop*v + F_Stribeck*exp(-fexp*v);

::

Inputs
~~~~~~

+-----------------------------------------------------------+---------------+-----------+---------------------------------------------------+
| Type                                                      | Name          | Default   | Description                                       |
+===========================================================+===============+===========+===================================================+
| Real                                                      | F\_prop       |           | Velocity dependent friction coefficient [N.s/m]   |
+-----------------------------------------------------------+---------------+-----------+---------------------------------------------------+
| `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_   | F\_Coulomb    |           | Constant friction: Coulomb force [N]              |
+-----------------------------------------------------------+---------------+-----------+---------------------------------------------------+
| `Force <Modelica_SIunits.html#Modelica.SIunits.Force>`_   | F\_Stribeck   |           | Stribeck effect [N]                               |
+-----------------------------------------------------------+---------------+-----------+---------------------------------------------------+
| Real                                                      | fexp          |           | Exponential decay [s/m]                           |
+-----------------------------------------------------------+---------------+-----------+---------------------------------------------------+
| Real                                                      | v\_max        |           | Generate table from v=0 ... v\_max                |
+-----------------------------------------------------------+---------------+-----------+---------------------------------------------------+
| Integer                                                   | nTable        | 100       | Number of table points                            |
+-----------------------------------------------------------+---------------+-----------+---------------------------------------------------+

Outputs
~~~~~~~

+--------+--------------------+------------------+
| Type   | Name               | Description      |
+========+====================+==================+
| Real   | table[nTable, 2]   | Friction table   |
+--------+--------------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function GenerateStribeckFrictionTable 
      "Generate stribeck friction table for example Friction for the SupportFriction"
       input Real F_prop(final unit="N.s/m", final min=0) 
        "Velocity dependent friction coefficient";
       input Modelica.SIunits.Force F_Coulomb "Constant friction: Coulomb force";
       input Modelica.SIunits.Force F_Stribeck "Stribeck effect";
       input Real fexp(final unit="s/m", final min=0) "Exponential decay";
       input Real v_max "Generate table from v=0 ... v_max";
       input Integer nTable(min=2)=100 "Number of table points";
       output Real table[nTable,2] "Friction table";
    algorithm 
       for i in 1:nTable loop
          table[i,1] :=v_max*(i - 1)/(nTable - 1);
          table[i,2] :=F_Coulomb + F_prop*table[i, 1] +
                       F_Stribeck*exp(-fexp*table[i, 1]);
       end for;
    end GenerateStribeckFrictionTable;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:50
2010.

.. |Modelica.Mechanics.Translational.Examples.Utilities.GenerateStribeckFrictionTable| image:: Modelica.Mechanics.Translational.Examples.Utilities.GenerateStribeckFrictionTableS.png
.. |image1| image:: Modelica.Mechanics.Translational.Examples.Utilities.GenerateStribeckFrictionTableS.png
