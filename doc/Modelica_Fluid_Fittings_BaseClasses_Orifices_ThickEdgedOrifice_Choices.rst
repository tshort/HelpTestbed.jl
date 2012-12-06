======================================================================
Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices
======================================================================

`Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice>`_.Choices
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Choices for Geometry**

Information
~~~~~~~~~~~

::

Choices to compute the "Geometry" record for a ThickEdgedOrifice.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| Name                                                                                                                                                                                                                                                                   | Description                 |
+========================================================================================================================================================================================================================================================================+=============================+
| |image3| `circular <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.circular>`_                                                                                     | Circular cross section      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| |image4| `rectangular <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.rectangular>`_                                                                               | Rectangular cross section   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+
| |image5| `general <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.general>`_                                                                                       | General cross section       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------+

--------------

|image6| `Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices>`_.circular
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Circular cross section**

Information
~~~~~~~~~~~

::

Function that returns the ThickEdgedOrifice.Geometry for a circular
cross section of the orifice.

::

Inputs
~~~~~~

+-----------------------------------------------------------------+----------------+-----------+------------------------------------------+
| Type                                                            | Name           | Default   | Description                              |
+=================================================================+================+===========+==========================================+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_   | diameter       |           | Inner diameter of circular orifice [m]   |
+-----------------------------------------------------------------+----------------+-----------+------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_   | venaDiameter   |           | Diameter of vena contraction [m]         |
+-----------------------------------------------------------------+----------------+-----------+------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | venaLength     |           | Length of vena contraction [m]           |
+-----------------------------------------------------------------+----------------+-----------+------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------+
| Type                                                                                                                                                        | Name       | Description                                |
+=============================================================================================================================================================+============+============================================+
| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Geometry>`_   | geometry   | Geometry of circular thick edged orifice   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function circular "Circular cross section"
        import SI = Modelica.SIunits;
        import Modelica.Constants.pi;

      input SI.Diameter diameter "Inner diameter of circular orifice";
      input SI.Diameter venaDiameter "Diameter of vena contraction";
      input SI.Length venaLength "Length of vena contraction";

       output ThickEdgedOrifice.Geometry geometry 
        "Geometry of circular thick edged orifice";
    algorithm 
       geometry.crossArea := diameter^2*pi/4;
       geometry.perimeter := pi*diameter;
       geometry.venaCrossArea := venaDiameter^2*pi/4;
       geometry.venaPerimeter := pi*venaDiameter;
       geometry.venaLength := venaLength;
    end circular;

--------------

|image7| `Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices>`_.rectangular
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Rectangular cross section**

Information
~~~~~~~~~~~

::

Function that returns the ThickEdgedOrifice.Geometry for a rectangular
cross section of the orifice.

::

Inputs
~~~~~~

+-------------------------------------------------------------+--------------+-----------+-------------------------------------------+
| Type                                                        | Name         | Default   | Description                               |
+=============================================================+==============+===========+===========================================+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | width        |           | Inner width of rectangular orifice [m]    |
+-------------------------------------------------------------+--------------+-----------+-------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | height       |           | Inner height of rectangular orifice [m]   |
+-------------------------------------------------------------+--------------+-----------+-------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | venaWidth    |           | Width of vena contraction [m]             |
+-------------------------------------------------------------+--------------+-----------+-------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | venaHeight   |           | Height of vena contraction [m]            |
+-------------------------------------------------------------+--------------+-----------+-------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | venaLength   |           | Length of vena contraction [m]            |
+-------------------------------------------------------------+--------------+-----------+-------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------+
| Type                                                                                                                                                        | Name       | Description                                |
+=============================================================================================================================================================+============+============================================+
| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Geometry>`_   | geometry   | Geometry of circular thick edged orifice   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function rectangular "Rectangular cross section"
        import SI = Modelica.SIunits;
        import Modelica.Constants.pi;

      input SI.Length width "Inner width of rectangular orifice";
      input SI.Length height "Inner height of rectangular orifice";
      input SI.Length venaWidth "Width of vena contraction";
      input SI.Length venaHeight "Height of vena contraction";
      input SI.Length venaLength "Length of vena contraction";

       output ThickEdgedOrifice.Geometry geometry 
        "Geometry of circular thick edged orifice";
    algorithm 
       geometry.crossArea := width*height;
       geometry.perimeter := 2*width + 2*height;
       geometry.venaCrossArea := venaWidth*venaHeight;
       geometry.venaPerimeter := 2*venaWidth + 2*venaHeight;
       geometry.venaLength := venaLength;
    end rectangular;

--------------

|image8| `Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices>`_.general
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**General cross section**

Information
~~~~~~~~~~~

::

Function that returns the ThickEdgedOrifice.Geometry for a general cross
section of the orifice.

::

Inputs
~~~~~~

+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+
| Type                                                        | Name            | Default   | Description                                     |
+=============================================================+=================+===========+=================================================+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_       | crossArea       |           | Inner cross sectional area [m2]                 |
+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | perimeter       |           | Inner perimeter [m]                             |
+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_       | venaCrossArea   |           | Cross sectional area of vena contraction [m2]   |
+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | venaPerimeter   |           | Perimeter of vena contraction [m]               |
+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | venaLength      |           | Length of vena contraction [m]                  |
+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------+
| Type                                                                                                                                                        | Name       | Description                                |
+=============================================================================================================================================================+============+============================================+
| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Geometry>`_   | geometry   | Geometry of circular thick edged orifice   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function general "General cross section"
        import SI = Modelica.SIunits;
        import Modelica.Constants.pi;

      input SI.Area crossArea "Inner cross sectional area";
      input SI.Length perimeter "Inner perimeter";

      input SI.Area venaCrossArea "Cross sectional area of vena contraction";
      input SI.Length venaPerimeter "Perimeter of vena contraction";
      input SI.Length venaLength "Length of vena contraction";

       output ThickEdgedOrifice.Geometry geometry 
        "Geometry of circular thick edged orifice";
    algorithm 
       geometry.crossArea := crossArea;
       geometry.perimeter := perimeter;
       geometry.venaCrossArea := venaCrossArea;
       geometry.venaPerimeter := venaPerimeter;
       geometry.venaLength := venaLength;
    end general;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:18
2010.

.. |Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.circular| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.circularS.png
.. |Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.rectangular| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.rectangularS.png
.. |Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.general| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.generalS.png
.. |image3| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.circularS.png
.. |image4| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.rectangularS.png
.. |image5| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.generalS.png
.. |image6| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.circularI.png
.. |image7| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.rectangularI.png
.. |image8| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.generalI.png
