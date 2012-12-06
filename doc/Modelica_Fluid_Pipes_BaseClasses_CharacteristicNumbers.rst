======================================================
Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers
======================================================

`Modelica.Fluid.Pipes.BaseClasses <Modelica_Fluid_Pipes_BaseClasses.html#Modelica.Fluid.Pipes.BaseClasses>`_.CharacteristicNumbers
----------------------------------------------------------------------------------------------------------------------------------

**Functions to compute characteristic numbers**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| Name                                                                                                                                                                                                                                                     | Description                                     |
+==========================================================================================================================================================================================================================================================+=================================================+
| |image3| `ReynoldsNumber <Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber>`_                                                                                           | Return Reynolds number from v, rho, mu, D       |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image4| `ReynoldsNumber\_m\_flow <Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber_m_flow>`_                                                                           | Return Reynolds number from m\_flow, mu, D, A   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image5| `NusseltNumber <Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.NusseltNumber>`_                                                                                             | Return Nusselt number                           |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+

--------------

`Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers <Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers>`_.ReynoldsNumber
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return Reynolds number from v, rho, mu, D**

Information
~~~~~~~~~~~

::

Calculation of Reynolds Number

::

       Re = |v|ρD/μ

a measure of the relationship between inertial forces (vρ) and viscous
forces (D/μ).

The following table gives examples for the characteristic dimension D
and the velocity v for different fluid flow devices:

+---------------------------------+--------------------------------------------------------------+-------------------------------------------+
| **Device Type**                 | **Characteristic Dimension D**                               | **Velocity v**                            |
+=================================+==============================================================+===========================================+
| Circular Pipe                   | diameter                                                     | m\_flow/ρ/crossArea                       |
+---------------------------------+--------------------------------------------------------------+-------------------------------------------+
| Rectangular Duct                | 4\*crossArea/perimeter                                       | m\_flow/ρ/crossArea                       |
+---------------------------------+--------------------------------------------------------------+-------------------------------------------+
| Wide Duct                       | distance between narrow, parallel walls                      | m\_flow/ρ/crossArea                       |
+---------------------------------+--------------------------------------------------------------+-------------------------------------------+
| Packed Bed                      | diameterOfSpericalParticles/(1-fluidFractionOfTotalVolume)   | m\_flow/ρ/crossArea (without particles)   |
+---------------------------------+--------------------------------------------------------------+-------------------------------------------+
| Device with rotating agitator   | diameterOfRotor                                              | RotationalSpeed\*diameterOfRotor          |
+---------------------------------+--------------------------------------------------------------+-------------------------------------------+

::

Inputs
~~~~~~

+---------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| Type                                                                            | Name   | Default   | Description                                                  |
+=================================================================================+========+===========+==============================================================+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_                   | v      |           | Mean velocity of fluid flow [m/s]                            |
+---------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho    |           | Fluid density [kg/m3]                                        |
+---------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu     |           | Dynamic (absolute) viscosity [Pa.s]                          |
+---------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | D      |           | Characteristic dimension (hydraulic diameter of pipes) [m]   |
+---------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------+--------+-----------------------+
| Type                                                                        | Name   | Description           |
+=============================================================================+========+=======================+
| `ReynoldsNumber <Modelica_SIunits.html#Modelica.SIunits.ReynoldsNumber>`_   | Re     | Reynolds number [1]   |
+-----------------------------------------------------------------------------+--------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function ReynoldsNumber "Return Reynolds number from v, rho, mu, D"
      input SI.Velocity v "Mean velocity of fluid flow";
      input SI.Density rho "Fluid density";
      input SI.DynamicViscosity mu "Dynamic (absolute) viscosity";
      input SI.Length D "Characteristic dimension (hydraulic diameter of pipes)";
      output SI.ReynoldsNumber Re "Reynolds number";
    algorithm 
      Re := abs(v)*rho*D/mu;
    end ReynoldsNumber;

--------------

`Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers <Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers>`_.ReynoldsNumber\_m\_flow
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return Reynolds number from m\_flow, mu, D, A**

Information
~~~~~~~~~~~

::

Simplified calculation of Reynolds Number for flow through pipes or
orifices; using the mass flow rate ``m_flow`` instead of the velocity
``v`` to express inertial forces.

::

      Re = |m_flow|*diameter/A/μ
    with
      m_flow = v*ρ*A

See also
`Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber <Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber>`_.

::

Inputs
~~~~~~

+---------------------------------------------------------------------------------+-----------+---------------------------------+--------------------------------------------------------------------------+
| Type                                                                            | Name      | Default                         | Description                                                              |
+=================================================================================+===========+=================================+==========================================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_           | m\_flow   |                                 | Mass flow rate [kg/s]                                                    |
+---------------------------------------------------------------------------------+-----------+---------------------------------+--------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu        |                                 | Dynamic viscosity [Pa.s]                                                 |
+---------------------------------------------------------------------------------+-----------+---------------------------------+--------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | D         |                                 | Characteristic dimension (hydraulic diameter of pipes or orifices) [m]   |
+---------------------------------------------------------------------------------+-----------+---------------------------------+--------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                           | A         | Modelica.Constants.pi/4\*D\*D   | Cross sectional area of fluid flow [m2]                                  |
+---------------------------------------------------------------------------------+-----------+---------------------------------+--------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------+--------+-----------------------+
| Type                                                                        | Name   | Description           |
+=============================================================================+========+=======================+
| `ReynoldsNumber <Modelica_SIunits.html#Modelica.SIunits.ReynoldsNumber>`_   | Re     | Reynolds number [1]   |
+-----------------------------------------------------------------------------+--------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function ReynoldsNumber_m_flow 
      "Return Reynolds number from m_flow, mu, D, A"
      input SI.MassFlowRate m_flow "Mass flow rate";
      input SI.DynamicViscosity mu "Dynamic viscosity";
      input SI.Length D 
        "Characteristic dimension (hydraulic diameter of pipes or orifices)";
      input SI.Area A = Modelica.Constants.pi/4*D*D 
        "Cross sectional area of fluid flow";
      output SI.ReynoldsNumber Re "Reynolds number";
    algorithm 
      Re := abs(m_flow)*D/A/mu;
    end ReynoldsNumber_m_flow;

--------------

`Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers <Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers>`_.NusseltNumber
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return Nusselt number**

Information
~~~~~~~~~~~

::

    Nusselt number Nu = alpha*D/lambda

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| Type                                                                                              | Name     | Default   | Description                               |
+===================================================================================================+==========+===========+===========================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | alpha    |           | Coefficient of heat transfer [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                         | D        |           | Characteristic dimension [m]              |
+---------------------------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_               | lambda   |           | Thermal conductivity [W/(m.K)]            |
+---------------------------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------+--------+----------------------+
| Type                                                                      | Name   | Description          |
+===========================================================================+========+======================+
| `NusseltNumber <Modelica_SIunits.html#Modelica.SIunits.NusseltNumber>`_   | Nu     | Nusselt number [1]   |
+---------------------------------------------------------------------------+--------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function NusseltNumber "Return Nusselt number"
      input SI.CoefficientOfHeatTransfer alpha "Coefficient of heat transfer";
      input SI.Length D "Characteristic dimension";
      input SI.ThermalConductivity lambda "Thermal conductivity";
      output SI.NusseltNumber Nu "Nusselt number";
    algorithm 
      Nu := alpha*D/lambda;
    end NusseltNumber;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:14
2010.

.. |Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber| image:: Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumberS.png
.. |Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber\_m\_flow| image:: Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumberS.png
.. |Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.NusseltNumber| image:: Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumberS.png
.. |image3| image:: Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumberS.png
.. |image4| image:: Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumberS.png
.. |image5| image:: Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumberS.png
