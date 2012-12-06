=========================================================
Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer
=========================================================

`Modelica.Fluid.Dissipation.Utilities.Records <Modelica_Fluid_Dissipation_Utilities_Records.html#Modelica.Fluid.Dissipation.Utilities.Records>`_.HeatTransfer
-------------------------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| Name                                                                                                                                                                                                                                                              | Description                                           |
+===================================================================================================================================================================================================================================================================+=======================================================+
| |image7| `EvenGap <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGap>`_                                                                                                            | Input for even gap                                    |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image8| `General <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.General>`_                                                                                                            | Input for generic correlation                         |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image9| `HelicalPipe <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.HelicalPipe>`_                                                                                                    | Input for helical pipe                                |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image10| `Plate <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.Plate>`_                                                                                                               | Input for plate                                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image11| `StraightPipe <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.StraightPipe>`_                                                                                                 | Input for straight pipe                               |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image12| `TwoPhaseFlowHT\_IN\_con <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_con>`_                                                                             | Base record for two phase heat transfer coefficient   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image13| `TwoPhaseFlowHT\_IN\_var <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_var>`_                                                                             | Base record for two phase heat transfer coefficient   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+

--------------

|image14| `Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer>`_.EvenGap
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for even gap**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------------------------+
| Type                                                                                                                     | Name     | Default                           | Description                                                    |
+==========================================================================================================================+==========+===================================+================================================================+
| Even gap                                                                                                                 |
+--------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------------------------+
| `kc\_evenGap <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.kc_evenGap>`_   | target   | Dissipation.Utilities.Types....   | Target variable of calculation                                 |
+--------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                | h        | 0.1                               | Height of cross sectional area [m]                             |
+--------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                | s        | 0.05                              | Distance between parallel plates in cross sectional area [m]   |
+--------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                | L        | 1                                 | Overflowed length of gap [m]                                   |
+--------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record EvenGap "Input for even gap"
      extends Modelica.Icons.Record;

      //choices
      Modelica.Fluid.Dissipation.Utilities.Types.kc_evenGap target=Dissipation.Utilities.Types.kc_evenGap.DevBoth 
        "Target variable of calculation";

      SI.Length h=0.1 "Height of cross sectional area";
      SI.Length s=0.05 "Distance between parallel plates in cross sectional area";
      SI.Length L=1 "Overflowed length of gap";
    end EvenGap;

--------------

|image15| `Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer>`_.General
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for generic correlation**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+-----------------------------+
| Type                                                                                                                     | Name        | Default                           | Description                 |
+==========================================================================================================================+=============+===================================+=============================+
| Generic variables                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+-----------------------------+
| `kc\_general <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.kc_general>`_   | target      | Dissipation.Utilities.Types....   | Target correlation          |
+--------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+-----------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                    | A\_cross    | Modelica.Constants.pi\*0.1^2/4    | Cross sectional area [m2]   |
+--------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+-----------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                | perimeter   | Modelica.Constants.pi\*0.1        | Wetted perimeter [m]        |
+--------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+-----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record General "Input for generic correlation"
      extends Modelica.Icons.Record;

      //choices
      Modelica.Fluid.Dissipation.Utilities.Types.kc_general target=Dissipation.Utilities.Types.kc_general.Finest 
        "Target correlation";

      //geometry
      SI.Area A_cross=Modelica.Constants.pi*0.1^2/4 "Cross sectional area";
      SI.Length perimeter=Modelica.Constants.pi*0.1 "Wetted perimeter";
    end General;

--------------

|image16| `Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer>`_.HelicalPipe
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for helical pipe**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| Type                                                            | Name     | Default   | Description                        |
+=================================================================+==========+===========+====================================+
| HelicalPipe                                                     |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| Real                                                            | n\_nt    | 1         | Total number of turns              |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_   | d\_hyd   | 0.1       | Hydraulic diameter [m]             |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | h        | 0.01      | Distance between turns [m]         |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | L        | 1         | Total length of helical pipe [m]   |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record HelicalPipe "Input for helical pipe"
      extends Modelica.Icons.Record;

      Real n_nt=1 "Total number of turns";
      SI.Diameter d_hyd=0.1 "Hydraulic diameter";
      SI.Length h=0.01 "Distance between turns";
      SI.Length L=1 "Total length of helical pipe";

    end HelicalPipe;

--------------

|image17| `Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer>`_.Plate
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for plate**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                        | Name   | Default   | Description           |
+=============================================================+========+===========+=======================+
| Plate                                                       |
+-------------------------------------------------------------+--------+-----------+-----------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | L      | 1         | Length of plate [m]   |
+-------------------------------------------------------------+--------+-----------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Plate "Input for plate"
      extends Modelica.Icons.Record;

      SI.Length L=1 "Length of plate";

    end Plate;

--------------

|image18| `Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer>`_.StraightPipe
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for straight pipe**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+----------+-----------+--------------------------+
| Type                                                            | Name     | Default   | Description              |
+=================================================================+==========+===========+==========================+
| Straight pipe                                                   |
+-----------------------------------------------------------------+----------+-----------+--------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_   | d\_hyd   | 0.1       | Hydraulic diameter [m]   |
+-----------------------------------------------------------------+----------+-----------+--------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | L        | 1         | Length [m]               |
+-----------------------------------------------------------------+----------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record StraightPipe "Input for straight pipe"
      extends Modelica.Icons.Record;

      SI.Diameter d_hyd=0.1 "Hydraulic diameter";
      SI.Length L=1 "Length";
    end StraightPipe;

--------------

|image19| `Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer>`_.TwoPhaseFlowHT\_IN\_con
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for two phase heat transfer coefficient**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Type                                                                                                                                                    | Name        | Default                           | Description                                                                    |
+=========================================================================================================================================================+=============+===================================+================================================================================+
| Choices                                                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `TwoPhaseHeatTransferTarget <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget>`_   | target      | Modelica.Fluid.Dissipation.U...   | Choice of (horizontal/vertical) boiling or (horizontal) condensation in pipe   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Geometry                                                                                                                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                                                   | A\_cross    | Modelica.Constants.pi\*0.1^2/4    | Cross sectional area [m2]                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                               | perimeter   | Modelica.Constants.pi\*0.1        | Wettet perimeter [m]                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Fluid properties                                                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `MolarMass <Modelica_SIunits.html#Modelica.SIunits.MolarMass>`_                                                                                         | MM          | 0.018015268                       | Molar mass of fluid [kg/mol]                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                           | p\_crit     |                                   | Critical pressure of fluid [Pa]                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record TwoPhaseFlowHT_IN_con 
      "Base record for two phase heat transfer coefficient"
      extends Modelica.Icons.Record;

      //choices
      Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget
        target=
          Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget.BoilHor 
        "Choice of (horizontal/vertical) boiling or (horizontal) condensation in pipe";

      SI.Area A_cross=Modelica.Constants.pi*0.1^2/4 "Cross sectional area";
      SI.Length perimeter=Modelica.Constants.pi*0.1 "Wettet perimeter";

      SI.MolarMass MM=0.018015268 "Molar mass of fluid";
      SI.Pressure p_crit "Critical pressure of fluid";

    end TwoPhaseFlowHT_IN_con;

--------------

|image20| `Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer>`_.TwoPhaseFlowHT\_IN\_var
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for two phase heat transfer coefficient**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Type                                                                                                                                                    | Name        | Default                           | Description                                                                    |
+=========================================================================================================================================================+=============+===================================+================================================================================+
| Choices                                                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `TwoPhaseHeatTransferTarget <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget>`_   | target      | Modelica.Fluid.Dissipation.U...   | Choice of (horizontal/vertical) boiling or (horizontal) condensation in pipe   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Fluid properties                                                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `SpecificHeatCapacityAtConstantPressure <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacityAtConstantPressure>`_                               | cp\_l       |                                   | Specific heat capacity of liquid [J/(kg.K)]                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_                                                                     | lambda\_l   |                                   | Thermal conductivity of liquid [W/(m.K)]                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_g      |                                   | Density of gas [kg/m3]                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_l      |                                   | Density of liquid [kg/m3]                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                           | eta\_g      |                                   | Dynamic viscosity of gas [Pa.s]                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                           | eta\_l      |                                   | Dynamic viscosity of liquid [Pa.s]                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                           | pressure    |                                   | Mean pressure of fluid [Pa]                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_                                                                           | dh\_lg      |                                   | Evaporation enthalpy of fluid [J/kg]                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Input                                                                                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                   | m\_flow     |                                   | Mass flow rate [kg/s]                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `HeatFlux <Modelica_SIunits.html#Modelica.SIunits.HeatFlux>`_                                                                                           | qdot\_A     | 0                                 | Heat flux at boiling [W/m2]                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Real                                                                                                                                                    | x\_flow     | 0                                 | Mass flow rate quality                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record TwoPhaseFlowHT_IN_var 
      "Base record for two phase heat transfer coefficient"
      extends Modelica.Icons.Record;

      //choices
      Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget
        target=
          Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget.BoilHor 
        "Choice of (horizontal/vertical) boiling or (horizontal) condensation in pipe";

      //fluid properties
      SI.SpecificHeatCapacityAtConstantPressure cp_l 
        "Specific heat capacity of liquid";
      SI.ThermalConductivity lambda_l "Thermal conductivity of liquid";
      SI.Density rho_g "Density of gas";
      SI.Density rho_l "Density of liquid";
      SI.DynamicViscosity eta_g "Dynamic viscosity of gas";
      SI.DynamicViscosity eta_l "Dynamic viscosity of liquid";

      SI.Pressure pressure "Mean pressure of fluid";
      SI.SpecificEnthalpy dh_lg "Evaporation enthalpy of fluid";

      //input variables
      SI.MassFlowRate m_flow "Mass flow rate";
      SI.HeatFlux qdot_A=0 "Heat flux at boiling";

      Real x_flow=0 "Mass flow rate quality";
    end TwoPhaseFlowHT_IN_var;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:25
2010.

.. |Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGap| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.General| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.HelicalPipe| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.Plate| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.StraightPipe| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT\_IN\_con| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT\_IN\_var| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image7| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image8| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image9| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image10| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image11| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image12| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image13| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image14| image:: Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png
.. |image15| image:: Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png
.. |image16| image:: Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png
.. |image17| image:: Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png
.. |image18| image:: Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png
.. |image19| image:: Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png
.. |image20| image:: Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png
