=========================================
Modelica.Electrical.QuasiStationary.Types
=========================================

`Modelica.Electrical.QuasiStationary <Modelica_Electrical_QuasiStationary.html#Modelica.Electrical.QuasiStationary>`_.Types
---------------------------------------------------------------------------------------------------------------------------

**Definiton of types for quasistationary AC models**

Information
~~~~~~~~~~~

::

Type defintions needed for quasistaionary AC models.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------+
| Name                                                                                                                                                                      | Description       |
+===========================================================================================================================================================================+===================+
| |image1| `Reference <Modelica_Electrical_QuasiStationary_Types.html#Modelica.Electrical.QuasiStationary.Types.Reference>`_                                                | Reference angle   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------+

--------------

`Modelica.Electrical.QuasiStationary.Types <Modelica_Electrical_QuasiStationary_Types.html#Modelica.Electrical.QuasiStationary.Types>`_.Reference
-------------------------------------------------------------------------------------------------------------------------------------------------

**Reference angle**

Information
~~~~~~~~~~~

::

Reference angle, used in the AC connectors.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Reference "Reference angle"
      Modelica.SIunits.Angle gamma;
      function equalityConstraint 
        "Equality constraint for reference angle"
        input Reference reference1;
        input Reference reference2;
        output Real residue[0];
      algorithm 
        assert(abs(reference1.gamma - reference2.gamma) < 1E-6*2*Modelica.Constants.pi, "Reference angles should be equal!");
      end equalityConstraint;
    end Reference;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:44
2010.

.. |Modelica.Electrical.QuasiStationary.Types.Reference| image:: Modelica.Electrical.QuasiStationary.Types.ReferenceS.png
.. |image1| image:: Modelica.Electrical.QuasiStationary.Types.ReferenceS.png
