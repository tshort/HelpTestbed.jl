====================================
Modelica.Media.Incompressible.Common
====================================

`Modelica.Media.Incompressible <Modelica_Media_Incompressible.html#Modelica.Media.Incompressible>`_.Common
----------------------------------------------------------------------------------------------------------

**Common data structures**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------+
| Name                                                                                                                                                                           | Description          |
+================================================================================================================================================================================+======================+
| |image1| `BaseProps\_Tpoly <Modelica_Media_Incompressible_Common.html#Modelica.Media.Incompressible.Common.BaseProps_Tpoly>`_                                                  | Fluid state record   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------+

--------------

|image2| `Modelica.Media.Incompressible.Common <Modelica_Media_Incompressible_Common.html#Modelica.Media.Incompressible.Common>`_.BaseProps\_Tpoly
--------------------------------------------------------------------------------------------------------------------------------------------------

**Fluid state record**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record BaseProps_Tpoly "Fluid state record"
      extends Modelica.Icons.Record;
      SI.Temperature T "temperature";
      SI.Pressure p "pressure";
      //    SI.Density d "density";
    end BaseProps_Tpoly;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:34
2010.

.. |Modelica.Media.Incompressible.Common.BaseProps\_Tpoly| image:: Modelica.Media.Incompressible.Common.BaseProps_TpolyS.png
.. |image1| image:: Modelica.Media.Incompressible.Common.BaseProps_TpolyS.png
.. |image2| image:: Modelica.Media.Incompressible.Common.BaseProps_TpolyI.png
