===============================================
Modelica.Fluid.Vessels.BaseClasses.HeatTransfer
===============================================

`Modelica.Fluid.Vessels.BaseClasses <Modelica_Fluid_Vessels_BaseClasses.html#Modelica.Fluid.Vessels.BaseClasses>`_.HeatTransfer
-------------------------------------------------------------------------------------------------------------------------------

**HeatTransfer models for vessels**

Information
~~~~~~~~~~~

::

Heat transfer correlations for pipe models

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                        | Description                                                         |
+=============================================================================================================================================================================================================================================+=====================================================================+
| |image3| `PartialVesselHeatTransfer <Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransfer>`_                                                                      | Base class for vessel heat transfer models                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| |image4| `IdealHeatTransfer <Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer>`_                                                                                      | IdealHeatTransfer: Ideal heat transfer without thermal resistance   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| |image5| `ConstantHeatTransfer <Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.ConstantHeatTransfer>`_                                                                                | ConstantHeatTransfer: Constant heat transfer coefficient            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+

--------------

|image6| `Modelica.Fluid.Vessels.BaseClasses.HeatTransfer <Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer>`_.PartialVesselHeatTransfer
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base class for vessel heat transfer models**

.. figure:: Modelica.Fluid.Vessels.BaseClasses.PartialLumpedVessel.HeatTransferD.png
   :align: center
   :alt: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransfer

   Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransfer

Information
~~~~~~~~~~~

::

Base class for vessel heat transfer models.

::

Extends from
`Modelica.Fluid.Interfaces.PartialHeatTransfer <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialHeatTransfer>`_
(Common interface for heat transfer models).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Type                                                                                              | Name                                                                                                      | Default                   | Description                                       |
+===================================================================================================+===========================================================================================================+===========================+===================================================+
| Ambient                                                                                           |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | k                                                                                                         | 0                         | Heat transfer coefficient to ambient [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                               | T\_ambient                                                                                                | system.T\_ambient         | Ambient temperature [K]                           |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| **Internal Interface**                                                                            |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| replaceable package Medium                                                                        | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component   |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Integer                                                                                           | n                                                                                                         | 1                         | Number of heat transfer segments                  |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Boolean                                                                                           | use\_k                                                                                                    | false                     | = true to use k value for thermal isolation       |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+----------------+-----------------------------------+
| Type                                                                                     | Name           | Description                       |
+==========================================================================================+================+===================================+
| `HeatPorts\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.HeatPorts_a>`_   | heatPorts[n]   | Heat port to component boundary   |
+------------------------------------------------------------------------------------------+----------------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialVesselHeatTransfer 
      "Base class for vessel heat transfer models"
      extends Modelica.Fluid.Interfaces.PartialHeatTransfer;

    end PartialVesselHeatTransfer;

--------------

|image7| `Modelica.Fluid.Vessels.BaseClasses.HeatTransfer <Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer>`_.IdealHeatTransfer
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**IdealHeatTransfer: Ideal heat transfer without thermal resistance**

.. figure:: Modelica.Fluid.Vessels.BaseClasses.PartialLumpedVessel.HeatTransferD.png
   :align: center
   :alt: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer

   Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer

Information
~~~~~~~~~~~

::

Ideal heat transfer without thermal resistance.

::

Extends from
`PartialVesselHeatTransfer <Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransfer>`_
(Base class for vessel heat transfer models).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Type                                                                                              | Name                                                                                                      | Default                   | Description                                       |
+===================================================================================================+===========================================================================================================+===========================+===================================================+
| Ambient                                                                                           |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | k                                                                                                         | 0                         | Heat transfer coefficient to ambient [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                               | T\_ambient                                                                                                | system.T\_ambient         | Ambient temperature [K]                           |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| **Internal Interface**                                                                            |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| replaceable package Medium                                                                        | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component   |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Integer                                                                                           | n                                                                                                         | 1                         | Number of heat transfer segments                  |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Boolean                                                                                           | use\_k                                                                                                    | false                     | = true to use k value for thermal isolation       |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+----------------+-----------------------------------+
| Type                                                                                     | Name           | Description                       |
+==========================================================================================+================+===================================+
| `HeatPorts\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.HeatPorts_a>`_   | heatPorts[n]   | Heat port to component boundary   |
+------------------------------------------------------------------------------------------+----------------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealHeatTransfer 
      "IdealHeatTransfer: Ideal heat transfer without thermal resistance"
      extends PartialVesselHeatTransfer;

    equation 
      Ts = heatPorts.T;

    end IdealHeatTransfer;

--------------

|image8| `Modelica.Fluid.Vessels.BaseClasses.HeatTransfer <Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer>`_.ConstantHeatTransfer
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**ConstantHeatTransfer: Constant heat transfer coefficient**

.. figure:: Modelica.Fluid.Vessels.BaseClasses.PartialLumpedVessel.HeatTransferD.png
   :align: center
   :alt: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.ConstantHeatTransfer

   Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.ConstantHeatTransfer

Information
~~~~~~~~~~~

::

Simple heat transfer correlation with constant heat transfer
coefficient.

::

Extends from
`PartialVesselHeatTransfer <Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransfer>`_
(Base class for vessel heat transfer models).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Type                                                                                              | Name                                                                                                      | Default                   | Description                                       |
+===================================================================================================+===========================================================================================================+===========================+===================================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | alpha0                                                                                                    |                           | constant heat transfer coefficient [W/(m2.K)]     |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Ambient                                                                                           |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | k                                                                                                         | 0                         | Heat transfer coefficient to ambient [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                               | T\_ambient                                                                                                | system.T\_ambient         | Ambient temperature [K]                           |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| **Internal Interface**                                                                            |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| replaceable package Medium                                                                        | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component   |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Integer                                                                                           | n                                                                                                         | 1                         | Number of heat transfer segments                  |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Boolean                                                                                           | use\_k                                                                                                    | false                     | = true to use k value for thermal isolation       |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+----------------+-----------------------------------+
| Type                                                                                     | Name           | Description                       |
+==========================================================================================+================+===================================+
| `HeatPorts\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.HeatPorts_a>`_   | heatPorts[n]   | Heat port to component boundary   |
+------------------------------------------------------------------------------------------+----------------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConstantHeatTransfer 
      "ConstantHeatTransfer: Constant heat transfer coefficient"
      extends PartialVesselHeatTransfer;
      parameter SI.CoefficientOfHeatTransfer alpha0 
        "constant heat transfer coefficient";

    equation 
      Q_flows = {(alpha0+k)*surfaceAreas[i]*(heatPorts[i].T - Ts[i]) for i in 1:n};

    end ConstantHeatTransfer;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:12
2010.

.. |Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransfer| image:: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferS.png
.. |Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer| image:: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferS.png
.. |Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.ConstantHeatTransfer| image:: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferS.png
.. |image3| image:: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferS.png
.. |image4| image:: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferS.png
.. |image5| image:: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferS.png
.. |image6| image:: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferI.png
.. |image7| image:: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferI.png
.. |image8| image:: Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferI.png
