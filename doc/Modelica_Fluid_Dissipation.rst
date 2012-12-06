==========================
Modelica.Fluid.Dissipation
==========================

`Modelica.Fluid <Modelica_Fluid.html#Modelica.Fluid>`_.Dissipation
------------------------------------------------------------------

**Functions for convective heat transfer and pressure loss
characteristics**

Information
~~~~~~~~~~~

::

.. figure:: ../Resources/Images/Fluid/Dissipation/FD2.png
   :align: center
   :alt: FD2

   FD2
Library description
^^^^^^^^^^^^^^^^^^^

This library contains **convective heat transfer** and **pressure loss**
functions written in Modelica®. Generally the pressure loss calculations
are based on incompressible fluids and total pressure difference. For
devices with non changing cross sectional area, the calculated total
pressure loss is equal to the static pressure difference. Geodetic
pressure loss is not considered throughout the library. The functions
supplied may be used separately.
 The library is a non-commercial product of XRG Simulation GmbH. It
makes use of external, non-commercial models supplied by Modelica
Standard Library. In order to work correctly, ensure that this library
is always loaded with **Modelica Standard Library version 3.1**
especially to be able to use Modelica.Fluid applications.

Acknowledgements
^^^^^^^^^^^^^^^^

The following people contributed to the Fluid.Dissipation library
(alphabetical list): Jörg Eiden, Ole Engel, Nina Peci, Sven Rutkowski,
Thorben Vahlenkamp, Stefan Wischhusen.

The development of the Fluid.Dissipation library is founded within the
ITEA research project EuroSysLib-D by German Federal Ministry of
Education and Research (promotional reference 01IS07022B). The project
is started in October 2007 and will end in March 2010.

License condition
^^^^^^^^^^^^^^^^^

**Licensed by XRG-Simulation GmbH under the Modelica License 2**
 Copyright © 2007-2010, XRG Simulation GmbH.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
`Modelica.UsersGuide.ModelicaLicense2 <Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2>`_
or visit
`http://www.modelica.org/licenses/ModelicaLicense2 <http://www.modelica.org/licenses/ModelicaLicense2>`_.*

Contact
^^^^^^^

XRG Simulation GmbH
 Harburger Schlossstrasse 6-12
 21079 Hamburg
 Germany
 `info@xrg-simulation.de <mailto:info@xrg-simulation.de>`_

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| Name                                                                                                                                               | Description                                           |
+====================================================================================================================================================+=======================================================+
| |image4| `UsersGuide <Modelica_Fluid_Dissipation_UsersGuide.html#Modelica.Fluid.Dissipation.UsersGuide>`_                                          | User's guide                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image5| `HeatTransfer <Modelica_Fluid_Dissipation_HeatTransfer.html#Modelica.Fluid.Dissipation.HeatTransfer>`_                                    | Package for calculation of heat transfer              |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image6| `PressureLoss <Modelica_Fluid_Dissipation_PressureLoss.html#Modelica.Fluid.Dissipation.PressureLoss>`_                                    | Package for calculation of pressure loss              |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image7| `Utilities <Modelica_Fluid_Dissipation_Utilities.html#Modelica.Fluid.Dissipation.Utilities>`_                                             | Package for utilities (should not be used directly)   |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:19
2010.

.. |Modelica.Fluid.Dissipation.UsersGuide| image:: Modelica.Fluid.Dissipation.UsersGuideS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer| image:: Modelica.Fluid.Dissipation.HeatTransferS.png
.. |Modelica.Fluid.Dissipation.PressureLoss| image:: Modelica.Fluid.Dissipation.HeatTransferS.png
.. |Modelica.Fluid.Dissipation.Utilities| image:: Modelica.Fluid.Dissipation.UtilitiesS.png
.. |image4| image:: Modelica.Fluid.Dissipation.UsersGuideS.png
.. |image5| image:: Modelica.Fluid.Dissipation.HeatTransferS.png
.. |image6| image:: Modelica.Fluid.Dissipation.HeatTransferS.png
.. |image7| image:: Modelica.Fluid.Dissipation.UtilitiesS.png
