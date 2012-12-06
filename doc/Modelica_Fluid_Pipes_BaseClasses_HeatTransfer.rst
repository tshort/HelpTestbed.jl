=============================================
Modelica.Fluid.Pipes.BaseClasses.HeatTransfer
=============================================

`Modelica.Fluid.Pipes.BaseClasses <Modelica_Fluid_Pipes_BaseClasses.html#Modelica.Fluid.Pipes.BaseClasses>`_.HeatTransfer
-------------------------------------------------------------------------------------------------------------------------

**Heat transfer for flow models**

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

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                        | Description                                                                                                                                          |
+=============================================================================================================================================================================================================================================+======================================================================================================================================================+
| |image5| `PartialFlowHeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer>`_                                                                              | base class for any pipe heat transfer correlation                                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image6| `IdealFlowHeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer>`_                                                                                  | IdealHeatTransfer: Ideal heat transfer without thermal resistance                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image7| `ConstantFlowHeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.ConstantFlowHeatTransfer>`_                                                                            | ConstantHeatTransfer: Constant heat transfer coefficient                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image8| `PartialPipeFlowHeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialPipeFlowHeatTransfer>`_                                                                      | Base class for pipe heat transfer correlation in terms of Nusselt number heat transfer in a circular pipe for laminar and turbulent one-phase flow   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image9| `LocalPipeFlowHeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.LocalPipeFlowHeatTransfer>`_                                                                          | LocalPipeFlowHeatTransfer: Laminar and turbulent forced convection in pipes, local coefficients                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

|image10| `Modelica.Fluid.Pipes.BaseClasses.HeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer>`_.PartialFlowHeatTransfer
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**base class for any pipe heat transfer correlation**

.. figure:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferD.png
   :align: center
   :alt: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer

   Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer

Information
~~~~~~~~~~~

::

Base class for heat transfer models of flow devices.

The geometry is specified in the interface with the ``surfaceAreas[n]``,
the ``roughnesses[n]`` and the lengths[n] along the flow path. Moreover
the fluid flow is characterized for different types of devices by the
characteristic ``dimensions[n+1]`` and the average velocities
``vs[n+1]`` of fluid flow. See
`Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber <Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber>`_
for examplary definitions.

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
| Geometry                                                                                          |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Real                                                                                              | nParallel                                                                                                 |                           | number of identical parallel flow devices         |
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

    partial model PartialFlowHeatTransfer 
      "base class for any pipe heat transfer correlation"
      extends Modelica.Fluid.Interfaces.PartialHeatTransfer;

      // Additional inputs provided to flow heat transfer model
      input SI.Velocity[n] vs "Mean velocities of fluid flow in segments";

      // Geometry parameters and inputs for flow heat transfer
      parameter Real nParallel "number of identical parallel flow devices";
      input SI.Length[n] lengths "Lengths along flow path";
      input SI.Length[n] dimensions 
        "Characteristic dimensions for fluid flow (diameter for pipe flow)";
      input SI.Height[n] roughnesses "Average heights of surface asperities";

    end PartialFlowHeatTransfer;

--------------

|image11| `Modelica.Fluid.Pipes.BaseClasses.HeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer>`_.IdealFlowHeatTransfer
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**IdealHeatTransfer: Ideal heat transfer without thermal resistance**

.. figure:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferD.png
   :align: center
   :alt: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer

   Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer

Information
~~~~~~~~~~~

::

Ideal heat transfer without thermal resistance.

::

Extends from
`PartialFlowHeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer>`_
(base class for any pipe heat transfer correlation).

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
| Geometry                                                                                          |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Real                                                                                              | nParallel                                                                                                 |                           | number of identical parallel flow devices         |
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

    model IdealFlowHeatTransfer 
      "IdealHeatTransfer: Ideal heat transfer without thermal resistance"
      extends PartialFlowHeatTransfer;
    equation 
      Ts = heatPorts.T;
    end IdealFlowHeatTransfer;

--------------

|image12| `Modelica.Fluid.Pipes.BaseClasses.HeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer>`_.ConstantFlowHeatTransfer
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**ConstantHeatTransfer: Constant heat transfer coefficient**

.. figure:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferD.png
   :align: center
   :alt: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.ConstantFlowHeatTransfer

   Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.ConstantFlowHeatTransfer

Information
~~~~~~~~~~~

::

Simple heat transfer correlation with constant heat transfer
coefficient, used as default component in

Extends from
`PartialFlowHeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer>`_
(base class for any pipe heat transfer correlation).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Type                                                                                              | Name                                                                                                      | Default                   | Description                                       |
+===================================================================================================+===========================================================================================================+===========================+===================================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | alpha0                                                                                                    |                           | heat transfer coefficient [W/(m2.K)]              |
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
| Geometry                                                                                          |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------+
| Real                                                                                              | nParallel                                                                                                 |                           | number of identical parallel flow devices         |
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

    model ConstantFlowHeatTransfer 
      "ConstantHeatTransfer: Constant heat transfer coefficient"
      extends PartialFlowHeatTransfer;
      parameter SI.CoefficientOfHeatTransfer alpha0 "heat transfer coefficient";
    equation 
      Q_flows = {alpha0*surfaceAreas[i]*(heatPorts[i].T - Ts[i])*nParallel for i in 1:n};
    end ConstantFlowHeatTransfer;

--------------

|image13| `Modelica.Fluid.Pipes.BaseClasses.HeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer>`_.PartialPipeFlowHeatTransfer
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base class for pipe heat transfer correlation in terms of Nusselt
number heat transfer in a circular pipe for laminar and turbulent
one-phase flow**

.. figure:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferD.png
   :align: center
   :alt: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialPipeFlowHeatTransfer

   Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialPipeFlowHeatTransfer

Information
~~~~~~~~~~~

::

Base class for heat transfer models that are expressed in terms of the
Nusselt number and which can be used in distributed pipe models.

::

Extends from
`PartialFlowHeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer>`_
(base class for any pipe heat transfer correlation).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Type                                                                                              | Name                                                                                                      | Default                   | Description                                             |
+===================================================================================================+===========================================================================================================+===========================+=========================================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | alpha0                                                                                                    | 100                       | guess value for heat transfer coefficients [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Ambient                                                                                           |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | k                                                                                                         | 0                         | Heat transfer coefficient to ambient [W/(m2.K)]         |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                               | T\_ambient                                                                                                | system.T\_ambient         | Ambient temperature [K]                                 |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| **Internal Interface**                                                                            |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| replaceable package Medium                                                                        | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component   |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Integer                                                                                           | n                                                                                                         | 1                         | Number of heat transfer segments                        |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Boolean                                                                                           | use\_k                                                                                                    | false                     | = true to use k value for thermal isolation             |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Geometry                                                                                          |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Real                                                                                              | nParallel                                                                                                 |                           | number of identical parallel flow devices               |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+

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

    partial model PartialPipeFlowHeatTransfer 
      "Base class for pipe heat transfer correlation in terms of Nusselt number heat transfer in a circular pipe for laminar and turbulent one-phase flow"
      extends PartialFlowHeatTransfer;
      parameter SI.CoefficientOfHeatTransfer alpha0=100 
        "guess value for heat transfer coefficients";
      SI.CoefficientOfHeatTransfer[n] alphas(each start=alpha0) 
        "CoefficientOfHeatTransfer";
      Real[n] Res "Reynolds numbers";
      Real[n] Prs "Prandtl numbers";
      Real[n] Nus "Nusselt numbers";
      Medium.Density[n] ds "Densities";
      Medium.DynamicViscosity[n] mus "Dynamic viscosities";
      Medium.ThermalConductivity[n] lambdas "Thermal conductivity";
      SI.Length[n] diameters = dimensions "Hydraulic diameters for pipe flow";
    equation 
      ds=Medium.density(states);
      mus=Medium.dynamicViscosity(states);
      lambdas=Medium.thermalConductivity(states);
      Prs = Medium.prandtlNumber(states);
      Res = CharacteristicNumbers.ReynoldsNumber(vs, ds, mus, diameters);
      Nus = CharacteristicNumbers.NusseltNumber(alphas, diameters, lambdas);
      Q_flows={alphas[i]*surfaceAreas[i]*(heatPorts[i].T - Ts[i])*nParallel for i in 1:n};
    end PartialPipeFlowHeatTransfer;

--------------

|image14| `Modelica.Fluid.Pipes.BaseClasses.HeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer>`_.LocalPipeFlowHeatTransfer
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**LocalPipeFlowHeatTransfer: Laminar and turbulent forced convection in
pipes, local coefficients**

.. figure:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferD.png
   :align: center
   :alt: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.LocalPipeFlowHeatTransfer

   Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.LocalPipeFlowHeatTransfer

Information
~~~~~~~~~~~

::

Heat transfer model for laminar and turbulent flow in pipes. Range of
validity:

-  fully developed pipe flow
-  forced convection
-  one phase Newtonian fluid
-  (spatial) constant wall temperature in the laminar region
-  0 ≤ Re ≤ 1e6, 0.6 ≤ Pr ≤ 100, d/L ≤ 1
-  The correlation holds for non-circular pipes only in the turbulent
   region. Use diameter=4\*crossArea/perimeter as characteristic length.

The correlation takes into account the spatial position along the pipe
flow, which changes discontinuously at flow reversal. However, the heat
transfer coefficient itself is continuous around zero flow rate, but not
its derivative.

References
^^^^^^^^^^

Verein Deutscher Ingenieure (1997):
    **VDI Wärmeatlas**. Springer Verlag, Ed. 8, 1997.

::

Extends from
`PartialPipeFlowHeatTransfer <Modelica_Fluid_Pipes_BaseClasses_HeatTransfer.html#Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialPipeFlowHeatTransfer>`_
(Base class for pipe heat transfer correlation in terms of Nusselt
number heat transfer in a circular pipe for laminar and turbulent
one-phase flow).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Type                                                                                              | Name                                                                                                      | Default                   | Description                                             |
+===================================================================================================+===========================================================================================================+===========================+=========================================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | alpha0                                                                                                    | 100                       | guess value for heat transfer coefficients [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Ambient                                                                                           |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | k                                                                                                         | 0                         | Heat transfer coefficient to ambient [W/(m2.K)]         |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                               | T\_ambient                                                                                                | system.T\_ambient         | Ambient temperature [K]                                 |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| **Internal Interface**                                                                            |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| replaceable package Medium                                                                        | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component   |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Integer                                                                                           | n                                                                                                         | 1                         | Number of heat transfer segments                        |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Boolean                                                                                           | use\_k                                                                                                    | false                     | = true to use k value for thermal isolation             |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Geometry                                                                                          |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+
| Real                                                                                              | nParallel                                                                                                 |                           | number of identical parallel flow devices               |
+---------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------------------------------------------------+

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

    model LocalPipeFlowHeatTransfer 
      "LocalPipeFlowHeatTransfer: Laminar and turbulent forced convection in pipes, local coefficients"
      extends PartialPipeFlowHeatTransfer;
    protected 
      Real[n] Nus_turb "Nusselt number for turbulent flow";
      Real[n] Nus_lam "Nusselt number for laminar flow";
      Real Nu_1;
      Real[n] Nus_2;
      Real[n] Xis;
    equation 
      Nu_1=3.66;
      for i in 1:n loop
       Nus_turb[i]=smooth(0,(Xis[i]/8)*abs(Res[i])*Prs[i]/(1+12.7*(Xis[i]/8)^0.5*(Prs[i]^(2/3)-1))*(1+1/3*(diameters[i]/lengths[i]/(if vs[i]>=0 then (i-0.5) else (n-i+0.5)))^(2/3)));
       Xis[i]=(1.8*Modelica.Math.log10(max(1e-10,Res[i]))-1.5)^(-2);
       Nus_lam[i]=(Nu_1^3+0.7^3+(Nus_2[i]-0.7)^3)^(1/3);
       Nus_2[i]=smooth(0,1.077*(abs(Res[i])*Prs[i]*diameters[i]/lengths[i]/(if vs[i]>=0 then (i-0.5) else (n-i+0.5)))^(1/3));
       Nus[i]=spliceFunction(Nus_turb[i], Nus_lam[i], Res[i]-6150, 3850);
      end for;
    end LocalPipeFlowHeatTransfer;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:14
2010.

.. |Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransfer| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferS.png
.. |Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferS.png
.. |Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.ConstantFlowHeatTransfer| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferS.png
.. |Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialPipeFlowHeatTransfer| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferS.png
.. |Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.LocalPipeFlowHeatTransfer| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferS.png
.. |image5| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferS.png
.. |image6| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferS.png
.. |image7| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferS.png
.. |image8| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferS.png
.. |image9| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferS.png
.. |image10| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferI.png
.. |image11| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferI.png
.. |image12| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferI.png
.. |image13| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferI.png
.. |image14| image:: Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.PartialFlowHeatTransferI.png
