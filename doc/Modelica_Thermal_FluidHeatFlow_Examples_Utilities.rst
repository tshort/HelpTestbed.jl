=================================================
Modelica.Thermal.FluidHeatFlow.Examples.Utilities
=================================================

`Modelica.Thermal.FluidHeatFlow.Examples <Modelica_Thermal_FluidHeatFlow_Examples.html#Modelica.Thermal.FluidHeatFlow.Examples>`_.Utilities
-------------------------------------------------------------------------------------------------------------------------------------------

**Utility models for examples**

Information
~~~~~~~~~~~

::

This package contains utility components used for the test examples.

**Main Authors:**
    `Anton Haumer <http://www.haumer.at/>`_
     Technical Consulting & Electrical Engineering
     A-3423 St.Andrae-Woerdern, Austria
     email: `a.haumer@haumer.at <mailto:a.haumer@haumer.at>`_

    Dr. Christian Kral
     `Austrian Institute of Technology, AIT <http://www.ait.ac.at/>`_
     Giefinggasse 2
     A-1210 Vienna, Austria

Copyright © 1998-2010, Modelica Association, Anton Haumer and Austrian
Institute of Technology, AIT.

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

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| Name                                                                                                                                                                                                 | Description              |
+======================================================================================================================================================================================================+==========================+
| |image1| `DoubleRamp <Modelica_Thermal_FluidHeatFlow_Examples_Utilities.html#Modelica.Thermal.FluidHeatFlow.Examples.Utilities.DoubleRamp>`_                                                         | Ramp going up and down   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+

--------------

|image2| `Modelica.Thermal.FluidHeatFlow.Examples.Utilities <Modelica_Thermal_FluidHeatFlow_Examples_Utilities.html#Modelica.Thermal.FluidHeatFlow.Examples.Utilities>`_.DoubleRamp
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ramp going up and down**

.. figure:: Modelica.Thermal.FluidHeatFlow.Examples.Utilities.DoubleRampD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Examples.Utilities.DoubleRamp

   Modelica.Thermal.FluidHeatFlow.Examples.Utilities.DoubleRamp

Information
~~~~~~~~~~~

::

Block generating the sum of two ramps.

::

Extends from
`Modelica.Blocks.Interfaces.SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+---------------+-----------+-------------------------------------------------------------+
| Type                                                    | Name          | Default   | Description                                                 |
+=========================================================+===============+===========+=============================================================+
| Real                                                    | offset        |           | Offset of ramps                                             |
+---------------------------------------------------------+---------------+-----------+-------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime     |           | StartTime of 1st ramp [s]                                   |
+---------------------------------------------------------+---------------+-----------+-------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | interval      |           | Interval between end of 1st and beginning of 2nd ramp [s]   |
+---------------------------------------------------------+---------------+-----------+-------------------------------------------------------------+
| Ramp 1                                                  |
+---------------------------------------------------------+---------------+-----------+-------------------------------------------------------------+
| Real                                                    | height\_1     |           | Height of ramp                                              |
+---------------------------------------------------------+---------------+-----------+-------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | duration\_1   |           | Duration of ramp [s]                                        |
+---------------------------------------------------------+---------------+-----------+-------------------------------------------------------------+
| Ramp 2                                                  |
+---------------------------------------------------------+---------------+-----------+-------------------------------------------------------------+
| Real                                                    | height\_2     |           | Height of ramp                                              |
+---------------------------------------------------------+---------------+-----------+-------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | duration\_2   |           | Duration of ramp [s]                                        |
+---------------------------------------------------------+---------------+-----------+-------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DoubleRamp "Ramp going up and down"
      extends Modelica.Blocks.Interfaces.SO;
      parameter Real offset(start=1) "Offset of ramps";
      parameter Modelica.SIunits.Time startTime(start=0.2) "StartTime of 1st ramp";
      parameter Modelica.SIunits.Time interval(start=0.2) 
        "Interval between end of 1st and beginning of 2nd ramp";
      parameter Real height_1(start=-1) "Height of ramp";
      parameter Modelica.SIunits.Time duration_1(min=Modelica.Constants.small, start=0.2) 
        "Duration of ramp";
      parameter Real height_2(start=1) "Height of ramp";
      parameter Modelica.SIunits.Time duration_2(min=Modelica.Constants.small, start=0.2) 
        "Duration of ramp";

      Modelica.Blocks.Math.Add add;
      Modelica.Blocks.Sources.Ramp ramp1(
        final height=height_1,
        final duration=duration_1,
        final startTime=startTime,
        final offset=offset);
      Modelica.Blocks.Sources.Ramp ramp2(
        final height=height_2,
        final duration=duration_2,
        final startTime=startTime + duration_1 + interval,
        final offset=0);
    equation 
      connect(ramp1.y, add.u1);
      connect(ramp2.y, add.u2);
      connect(add.y, y);
    end DoubleRamp;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:43
2010.

.. |Modelica.Thermal.FluidHeatFlow.Examples.Utilities.DoubleRamp| image:: Modelica.Thermal.FluidHeatFlow.Examples.Utilities.DoubleRampS.png
.. |image1| image:: Modelica.Thermal.FluidHeatFlow.Examples.Utilities.DoubleRampS.png
.. |image2| image:: Modelica.Thermal.FluidHeatFlow.Examples.Utilities.DoubleRampI.png
