===================================
Modelica.Fluid.Fittings.BaseClasses
===================================

`Modelica.Fluid.Fittings <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings>`_.BaseClasses
---------------------------------------------------------------------------------------------

**Base classes used in the Fittings package (only of interest to build
new component models)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.BasesPackage <Modelica_Icons_BasesPackage.html#Modelica.Icons.BasesPackage>`_
(Icon for packages containing base classes).

Package Content
~~~~~~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                  | Description                                                                                                       |
+=======================================================================================================================================================================================================+===================================================================================================================+
| |image6| `lossConstant\_D\_zeta <Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses.lossConstant_D_zeta>`_                                                                  | Return the loss constant 8\*zeta/(pi^2\*D^4)                                                                      |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
| |image7| `QuadraticTurbulent <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent>`_                                                   | Pressure loss components that are mainly defined by a quadratic turbulent regime with constant loss factor data   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
| |image8| `PartialTeeJunction <Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction>`_                                                                      | Base class for a splitting/joining component with three ports                                                     |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
| |image9| `Bends <Modelica_Fluid_Fittings_BaseClasses_Bends.html#Modelica.Fluid.Fittings.BaseClasses.Bends>`_                                                                                          | Pressure loss functions for bends                                                                                 |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
| |image10| `Orifices <Modelica_Fluid_Fittings_BaseClasses_Orifices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices>`_                                                                                | Pressure loss functions for orifices                                                                              |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
| |image11| `GenericResistances <Modelica_Fluid_Fittings_BaseClasses_GenericResistances.html#Modelica.Fluid.Fittings.BaseClasses.GenericResistances>`_                                                  | Pressure loss functions for generic, geometry independent flow resistances                                        |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+

--------------

|image12| `Modelica.Fluid.Fittings.BaseClasses <Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses>`_.lossConstant\_D\_zeta
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Return the loss constant 8\*zeta/(pi^2\*D^4)**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------+--------+-----------+-------------------------------------------------------------------------------------+
| Type                                                            | Name   | Default   | Description                                                                         |
+=================================================================+========+===========+=====================================================================================+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_   | D      |           | Diameter at port\_a or port\_b [m]                                                  |
+-----------------------------------------------------------------+--------+-----------+-------------------------------------------------------------------------------------+
| Real                                                            | zeta   |           | Constant pressure loss factor with respect to D (i.e., either port\_a or port\_b)   |
+-----------------------------------------------------------------+--------+-----------+-------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+--------+-----------------------------------------+
| Type   | Name   | Description                             |
+========+========+=========================================+
| Real   | k      | Loss constant (= 8\*zeta/(pi^2\*D^4))   |
+--------+--------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function lossConstant_D_zeta 
      "Return the loss constant 8*zeta/(pi^2*D^4)"
          extends Modelica.Icons.Function;

      input SI.Diameter D "Diameter at port_a or port_b";
      input Real zeta 
        "Constant pressure loss factor with respect to D (i.e., either port_a or port_b)";
      output Real k "Loss constant (= 8*zeta/(pi^2*D^4))";

    algorithm 
      k :=8*zeta/(Modelica.Constants.pi*Modelica.Constants.pi*D*D*D*D);
    end lossConstant_D_zeta;

--------------

|image13| `Modelica.Fluid.Fittings.BaseClasses <Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses>`_.PartialTeeJunction
--------------------------------------------------------------------------------------------------------------------------------------------------

**Base class for a splitting/joining component with three ports**

.. figure:: Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunctionD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction

   Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                     | Name      | Description   |
+==========================================================================================+===========+===============+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_1   |               |
+------------------------------------------------------------------------------------------+-----------+---------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_   | port\_2   |               |
+------------------------------------------------------------------------------------------+-----------+---------------+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_3   |               |
+------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialTeeJunction 
      "Base class for a splitting/joining component with three ports"
      import Modelica.Fluid.Types;
      import Modelica.Fluid.Types.PortFlowDirection;

      replaceable package Medium=Modelica.Media.Interfaces.PartialMedium 
        "Medium in the component";

      Modelica.Fluid.Interfaces.FluidPort_a port_1(redeclare package Medium =
            Medium, m_flow(min=if (portFlowDirection_1 == PortFlowDirection.Entering) then 
                    0.0 else -Modelica.Constants.inf, max=if (portFlowDirection_1
               == PortFlowDirection.Leaving) then 0.0 else Modelica.Constants.inf));
      Modelica.Fluid.Interfaces.FluidPort_b port_2(redeclare package Medium =
            Medium, m_flow(min=if (portFlowDirection_2 == PortFlowDirection.Entering) then 
                    0.0 else -Modelica.Constants.inf, max=if (portFlowDirection_2
               == PortFlowDirection.Leaving) then 0.0 else Modelica.Constants.inf));
      Modelica.Fluid.Interfaces.FluidPort_a port_3(
        redeclare package Medium=Medium,
        m_flow(min=if (portFlowDirection_3==PortFlowDirection.Entering) then 0.0 else -Modelica.Constants.inf,
        max=if (portFlowDirection_3==PortFlowDirection.Leaving) then 0.0 else Modelica.Constants.inf));

    protected 
      parameter PortFlowDirection portFlowDirection_1=PortFlowDirection.Bidirectional 
        "Flow direction for port_1";
      parameter PortFlowDirection portFlowDirection_2=PortFlowDirection.Bidirectional 
        "Flow direction for port_2";
      parameter PortFlowDirection portFlowDirection_3=PortFlowDirection.Bidirectional 
        "Flow direction for port_3";

    end PartialTeeJunction;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:18
2010.

.. |Modelica.Fluid.Fittings.BaseClasses.lossConstant\_D\_zeta| image:: Modelica.Fluid.Fittings.BaseClasses.lossConstant_D_zetaS.png
.. |Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulentS.png
.. |Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction| image:: Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunctionS.png
.. |Modelica.Fluid.Fittings.BaseClasses.Bends| image:: Modelica.Fluid.Fittings.BaseClasses.BendsS.png
.. |Modelica.Fluid.Fittings.BaseClasses.Orifices| image:: Modelica.Fluid.Fittings.BaseClasses.BendsS.png
.. |Modelica.Fluid.Fittings.BaseClasses.GenericResistances| image:: Modelica.Fluid.Fittings.BaseClasses.BendsS.png
.. |image6| image:: Modelica.Fluid.Fittings.BaseClasses.lossConstant_D_zetaS.png
.. |image7| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulentS.png
.. |image8| image:: Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunctionS.png
.. |image9| image:: Modelica.Fluid.Fittings.BaseClasses.BendsS.png
.. |image10| image:: Modelica.Fluid.Fittings.BaseClasses.BendsS.png
.. |image11| image:: Modelica.Fluid.Fittings.BaseClasses.BendsS.png
.. |image12| image:: Modelica.Fluid.Fittings.BaseClasses.lossConstant_D_zetaI.png
.. |image13| image:: Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunctionI.png
