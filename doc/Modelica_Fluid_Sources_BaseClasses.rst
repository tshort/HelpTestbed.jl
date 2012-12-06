==================================
Modelica.Fluid.Sources.BaseClasses
==================================

`Modelica.Fluid.Sources <Modelica_Fluid_Sources.html#Modelica.Fluid.Sources>`_.BaseClasses
------------------------------------------------------------------------------------------

**Base classes used in the Sources package (only of interest to build
new component models)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.BasesPackage <Modelica_Icons_BasesPackage.html#Modelica.Icons.BasesPackage>`_
(Icon for packages containing base classes).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| Name                                                                                                                                                             | Description                                         |
+==================================================================================================================================================================+=====================================================+
| |image1| `PartialSource <Modelica_Fluid_Sources_BaseClasses.html#Modelica.Fluid.Sources.BaseClasses.PartialSource>`_                                             | Partial component source with one fluid connector   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+

--------------

|image2| `Modelica.Fluid.Sources.BaseClasses <Modelica_Fluid_Sources_BaseClasses.html#Modelica.Fluid.Sources.BaseClasses>`_.PartialSource
-----------------------------------------------------------------------------------------------------------------------------------------

**Partial component source with one fluid connector**

.. figure:: Modelica.Fluid.Sources.BaseClasses.PartialSourceD.png
   :align: center
   :alt: Modelica.Fluid.Sources.BaseClasses.PartialSource

   Modelica.Fluid.Sources.BaseClasses.PartialSource

Information
~~~~~~~~~~~

::

Partial component to model the **volume interface** of a **source**
component, such as a mass flow source. The essential features are:

-  The pressure in the connection port (= ports.p) is identical to the
   pressure in the volume.
-  The outflow enthalpy rate (= port.h\_outflow) and the composition of
   the substances (= port.Xi\_outflow) are identical to the respective
   values in the volume.

::

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------+-----------------+---------------+
| Type                                                                                       | Name            | Description   |
+============================================================================================+=================+===============+
| `FluidPorts\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPorts_b>`_   | ports[nPorts]   |               |
+--------------------------------------------------------------------------------------------+-----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialSource 
      "Partial component source with one fluid connector"
        import Modelica.Constants;

      parameter Integer nPorts=0 "Number of ports";

      replaceable package Medium =
          Modelica.Media.Interfaces.PartialMedium "Medium model within the source";

      Medium.BaseProperties medium "Medium in the source";

      Interfaces.FluidPorts_b ports[nPorts](
                         redeclare each package Medium = Medium,
                         m_flow(each max=if flowDirection==Types.PortFlowDirection.Leaving then 0 else 
                                         +Constants.inf,
                                each min=if flowDirection==Types.PortFlowDirection.Entering then 0 else 
                                         -Constants.inf));
    protected 
      parameter Types.PortFlowDirection flowDirection=
                       Types.PortFlowDirection.Bidirectional 
        "Allowed flow direction";
    equation 
      // Only one connection allowed to a port to avoid unwanted ideal mixing
      for i in 1:nPorts loop
        assert(cardinality(ports[i]) <= 1,"
    each ports[i] of boundary shall at most be connected to one component.
    If two or more connections are present, ideal mixing takes
    place with these connections, which is usually not the intention
    of the modeller. Increase nPorts to add an additional port.
    ");

         ports[i].p          = medium.p;
         ports[i].h_outflow  = medium.h;
         ports[i].Xi_outflow = medium.Xi;
      end for;

    end PartialSource;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:18
2010.

.. |Modelica.Fluid.Sources.BaseClasses.PartialSource| image:: Modelica.Fluid.Sources.BaseClasses.PartialSourceS.png
.. |image1| image:: Modelica.Fluid.Sources.BaseClasses.PartialSourceS.png
.. |image2| image:: Modelica.Fluid.Sources.BaseClasses.PartialSourceI.png
