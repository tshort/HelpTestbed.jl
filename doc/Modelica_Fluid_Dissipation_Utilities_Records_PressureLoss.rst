=========================================================
Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss
=========================================================

`Modelica.Fluid.Dissipation.Utilities.Records <Modelica_Fluid_Dissipation_Utilities_Records.html#Modelica.Fluid.Dissipation.Utilities.Records>`_.PressureLoss
-------------------------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| Name                                                                                                                                                                                                                                              | Description                                     |
+===================================================================================================================================================================================================================================================+=================================================+
| |image9| `Bend <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Bend>`_                                                                                                  | Input for bend                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image10| `Geometry <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Geometry>`_                                                                                         | Input for several geometries of internal flow   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image11| `Orifice <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Orifice>`_                                                                                           | Input for orifice                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image12| `PressureLossInput <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.PressureLossInput>`_                                                                       | Input for pressure loss calculation             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image13| `StraightPipe <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.StraightPipe>`_                                                                                 | Input for straight pipe                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image14| `Tjunction <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Tjunction>`_                                                                                       | Input for T-junction                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image15| `Diffuser <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Diffuser>`_                                                                                         | Input for diffuser                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image16| `EdgedBend <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.EdgedBend>`_                                                                                       | Input for bend                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image17| `SuddenChange <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.SuddenChange>`_                                                                                 | Input for sudden change of diameter             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+

--------------

|image18| `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss>`_.Bend
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for bend**

Information
~~~~~~~~~~~

Extends from
`EdgedBend <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.EdgedBend>`_
(Input for bend).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+----------+---------------+-----------------------------------------------------------------+
| Type                                                            | Name     | Default       | Description                                                     |
+=================================================================+==========+===============+=================================================================+
| Bend                                                            |
+-----------------------------------------------------------------+----------+---------------+-----------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_   | d\_hyd   | 0.1           | Hydraulic diameter [m]                                          |
+-----------------------------------------------------------------+----------+---------------+-----------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_         | delta    | 90\*PI/180    | Angle of turning [rad]                                          |
+-----------------------------------------------------------------+----------+---------------+-----------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | K        | 0             | Roughness (absolute average height of surface asperities) [m]   |
+-----------------------------------------------------------------+----------+---------------+-----------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_       | R\_0     | 0.5\*d\_hyd   | Curvature radius [m]                                            |
+-----------------------------------------------------------------+----------+---------------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Bend "Input for bend"
      extends EdgedBend;
      SI.Radius R_0=0.5*d_hyd "Curvature radius";

    end Bend;

--------------

|image19| `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss>`_.Geometry
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for several geometries of internal flow**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| Type                                                                                                                                            | Name       | Default                           | Description                                            |
+=================================================================================================================================================+============+===================================+========================================================+
| Channel                                                                                                                                         |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `GeometryOfInternalFlow <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.GeometryOfInternalFlow>`_   | geometry   | Modelica.Fluid.Dissipation.U...   | Choice of geometry for internal flow                   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                       | K          | 0                                 | Roughness (average height of surface asperities) [m]   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                       | L          | 1                                 | Length [m]                                             |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| Annular cross sectional area                                                                                                                    |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                                                   | d\_ann     | d\_cir                            | Small diameter [m]                                     |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                                                   | D\_ann     | 2\*d\_ann                         | Large diameter [m]                                     |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| Circular cross sectional area                                                                                                                   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                                                   | d\_cir     | 0.1                               | Internal diameter [m]                                  |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| Elliptical cross sectional area                                                                                                                 |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                       | a\_ell     | (3/4)\*d\_cir                     | Half length of long base line [m]                      |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                       | b\_ell     | 0.5\*a\_ell                       | Half length of short base line [m]                     |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| Rectangular cross sectional area                                                                                                                |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                       | a\_rec     | d\_cir                            | Horizontal length [m]                                  |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                       | b\_rec     | a\_rec                            | Vertical length [m]                                    |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                       | a\_tri     | d\_cir\*(1 + 2^0.5)               | Length of base line [m]                                |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| Triangle cross sectional area                                                                                                                   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                       | h\_tri     | 0.5\*a\_tri                       | Heigth to top angle perpendicular to base line [m]     |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                                                                         | beta       | 90\*PI/180                        | Top angle [rad]                                        |
+-------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Geometry "Input for several geometries of internal flow"
      extends Modelica.Icons.Record;

      Modelica.Fluid.Dissipation.Utilities.Types.GeometryOfInternalFlow
        geometry=
          Modelica.Fluid.Dissipation.Utilities.Types.GeometryOfInternalFlow.Circular 
        "Choice of geometry for internal flow";

      SI.Length K=0 "Roughness (average height of surface asperities)";
      SI.Length L=1 "Length";

      //geometry variables
      //annular(1)
      SI.Diameter d_ann=d_cir "Small diameter";
      SI.Diameter D_ann=2*d_ann "Large diameter";
      //circular(2)
      SI.Diameter d_cir=0.1 "Internal diameter";
      //elliptical(3)
      SI.Length a_ell=(3/4)*d_cir "Half length of long base line";
      SI.Length b_ell=0.5*a_ell "Half length of short base line";
      //rectangular(4)
      SI.Length a_rec=d_cir "Horizontal length";
      SI.Length b_rec=a_rec "Vertical length";
      //triangular(5)
      SI.Length a_tri=d_cir*(1 + 2^0.5) "Length of base line";
      SI.Length h_tri=0.5*a_tri "Heigth to top angle perpendicular to base line";
      SI.Angle beta=90*PI/180 "Top angle";
    end Geometry;

--------------

|image20| `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss>`_.Orifice
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for orifice**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+----------------+-------------------------------------------------+
| Type                                                        | Name   | Default        | Description                                     |
+=============================================================+========+================+=================================================+
| Orifice                                                     |
+-------------------------------------------------------------+--------+----------------+-------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_       | A\_0   | 0.1\*A\_1      | Cross sectional area of vena contraction [m2]   |
+-------------------------------------------------------------+--------+----------------+-------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | C\_0   | 0.1\*C\_1      | Perimeter of vena contraction [m]               |
+-------------------------------------------------------------+--------+----------------+-------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_       | A\_1   | PI\*0.01^2/4   | Large cross sectional area of orifice [m2]      |
+-------------------------------------------------------------+--------+----------------+-------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | C\_1   | PI\*0.01       | Large perimeter of orifice [m]                  |
+-------------------------------------------------------------+--------+----------------+-------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | L      | 1e-3           | Length of vena contraction [m]                  |
+-------------------------------------------------------------+--------+----------------+-------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Orifice "Input for orifice"

      extends Modelica.Icons.Record;

      SI.Area A_0=0.1*A_1 "Cross sectional area of vena contraction";
      SI.Length C_0=0.1*C_1 "Perimeter of vena contraction";
      SI.Area A_1=PI*0.01^2/4 "Large cross sectional area of orifice";
      SI.Length C_1=PI*0.01 "Large perimeter of orifice";
      SI.Length L=1e-3 "Length of vena contraction";
    end Orifice;

--------------

|image21| `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss>`_.PressureLossInput
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for pressure loss calculation**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------+----------------------------------+
| Type                                                                                                                                    | Name      | Default                           | Description                      |
+=========================================================================================================================================+===========+===================================+==================================+
| Input                                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------+----------------------------------+
| `PressureLossTarget <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.PressureLossTarget>`_   | target    | Dissipation.Utilities.Types....   | Target variable of calculation   |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------+----------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                           | dp        | 0                                 | Pressure loss [Pa]               |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------+----------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                   | m\_flow   | 0                                 | Mass flow rate [kg/s]            |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------------------------------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PressureLossInput "Input for pressure loss calculation"
      extends Modelica.Icons.Record;

      //target variables
      Modelica.Fluid.Dissipation.Utilities.Types.PressureLossTarget target=Dissipation.Utilities.Types.PressureLossTarget.PressureLoss 
        "Target variable of calculation";

      SI.Pressure dp=0 "Pressure loss";
      SI.MassFlowRate m_flow=0 "Mass flow rate";

    end PressureLossInput;

--------------

|image22| `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss>`_.StraightPipe
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

|image23| `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss>`_.Tjunction
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for T-junction**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------+-----------------------------------+----------------+------------------------------------------------------------------------------------------------------------------+
| Type                                                                    | Name                              | Default        | Description                                                                                                      |
+=========================================================================+===================================+================+==================================================================================================================+
| T-junction                                                              |
+-------------------------------------------------------------------------+-----------------------------------+----------------+------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                 | united\_converging\_crossection   | true           | true == A\_cross\_total = 2\*A\_cross\_branch \| false == A\_cross\_total > 2\*A\_cross\_branch                  |
+-------------------------------------------------------------------------+-----------------------------------+----------------+------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                 | velocity\_reference\_branches     | true           | true == pressure loss coefficents w.r.t. velocity in each passage \| false == w.r.t. velocity in total passage   |
+-------------------------------------------------------------------------+-----------------------------------+----------------+------------------------------------------------------------------------------------------------------------------+
| Integer                                                                 | alpha                             | 90             | Angle of branching                                                                                               |
+-------------------------------------------------------------------------+-----------------------------------+----------------+------------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_           | d\_hyd[3]                         | ones(3)\*0.1   | Hydraulic diameter of passages [side,straight,total] [m]                                                         |
+-------------------------------------------------------------------------+-----------------------------------+----------------+------------------------------------------------------------------------------------------------------------------+
| Restrictions                                                            |
+-------------------------------------------------------------------------+-----------------------------------+----------------+------------------------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | m\_flow\_min                      | 1e-3           | Restriction for smoothing at reverse fluid flow [kg/s]                                                           |
+-------------------------------------------------------------------------+-----------------------------------+----------------+------------------------------------------------------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_           | v\_max                            | 2e2            | Restriction for maximum fluid flow velocity [m/s]                                                                |
+-------------------------------------------------------------------------+-----------------------------------+----------------+------------------------------------------------------------------------------------------------------------------+
| Real                                                                    | zeta\_TOT\_max                    | 1e3            | Restriction for maximum value of pressure loss coefficient                                                       |
+-------------------------------------------------------------------------+-----------------------------------+----------------+------------------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Tjunction "Input for T-junction"
      extends Modelica.Icons.Record;

      //T-junction variables
      Boolean united_converging_crossection=true 
        "true == A_cross_total = 2*A_cross_branch | false == A_cross_total > 2*A_cross_branch";
      Boolean velocity_reference_branches=true 
        "true == pressure loss coefficents w.r.t. velocity in each passage | false == w.r.t. velocity in total passage";

      Integer alpha=90 "Angle of branching";

      SI.Diameter d_hyd[3]=ones(3)*0.1 
        "Hydraulic diameter of passages [side,straight,total]";

      //restrictions
      SI.MassFlowRate m_flow_min=1e-3 
        "Restriction for smoothing at reverse fluid flow";
      SI.Velocity v_max=2e2 "Restriction for maximum fluid flow velocity";
      Real zeta_TOT_max=1e3 
        "Restriction for maximum value of pressure loss coefficient";
    end Tjunction;

--------------

|image24| `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss>`_.Diffuser
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for diffuser**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| Type                                                            | Name             | Default        | Description                                                              |
+=================================================================+==================+================+==========================================================================+
| Diffuser                                                        |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_         | alpha            | PI\*45/180     | Diffuser diverging angle [rad]                                           |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_           | A\_1             | PI\*0.01^2/4   | Small constant cross sectional area before diffuser section [m2]         |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_           | A\_2             | 2\*A\_1        | Large constant cross sectional area after diffuser section [m2]          |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | C\_1             | PI\*0.01       | Small perimeter before diffuser section [m]                              |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | C\_2             | 2\*C\_1        | Large perimeter after diffuser section [m]                               |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | L\_1             | 0.1            | Length of straight pipe before diffuser section [m]                      |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | L\_2             | L\_1           | Length of straight pipe after diffuser section [m]                       |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | L\_d             | L\_1           | Lenght of diffuser section (parallel to bulk fluid flow) [m]             |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| Numerical aspects                                               |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | dp\_small        | 1              | Linearisation for a pressure loss smaller then dp\_small [Pa]            |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| Real                                                            | zeta\_TOT\_min   | 1e-3           | Minimal pressure loss coefficient for infinite Reynolds number           |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+
| Real                                                            | zeta\_TOT\_max   | 1e8            | Maximum pressure loss coefficient for Reynolds number approaching zero   |
+-----------------------------------------------------------------+------------------+----------------+--------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Diffuser "Input for diffuser"
      extends Modelica.Icons.Record;

      SI.Angle alpha=PI*45/180 "Diffuser diverging angle";

      SI.Area A_1=PI*0.01^2/4 
        "Small constant cross sectional area before diffuser section";
      SI.Area A_2=2*A_1 
        "Large constant cross sectional area after diffuser section";
      SI.Length C_1=PI*0.01 "Small perimeter before diffuser section";
      SI.Length C_2=2*C_1 "Large perimeter after diffuser section";
      SI.Length L_1=0.1 "Length of straight pipe before diffuser section";
      SI.Length L_2=L_1 "Length of straight pipe after diffuser section";
      SI.Length L_d=L_1 "Lenght of diffuser section (parallel to bulk fluid flow)";

      //numerical aspects
      SI.Pressure dp_small=1 
        "Linearisation for a pressure loss smaller then dp_small";
      Real zeta_TOT_min=1e-3 
        "Minimal pressure loss coefficient for infinite Reynolds number";
      Real zeta_TOT_max=1e8 
        "Maximum pressure loss coefficient for Reynolds number approaching zero";
    end Diffuser;

--------------

|image25| `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss>`_.EdgedBend
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for bend**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+----------+--------------+-----------------------------------------------------------------+
| Type                                                            | Name     | Default      | Description                                                     |
+=================================================================+==========+==============+=================================================================+
| Bend                                                            |
+-----------------------------------------------------------------+----------+--------------+-----------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_   | d\_hyd   | 0.1          | Hydraulic diameter [m]                                          |
+-----------------------------------------------------------------+----------+--------------+-----------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_         | delta    | 90\*PI/180   | Angle of turning [rad]                                          |
+-----------------------------------------------------------------+----------+--------------+-----------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | K        | 0            | Roughness (absolute average height of surface asperities) [m]   |
+-----------------------------------------------------------------+----------+--------------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record EdgedBend "Input for bend"
      extends Modelica.Icons.Record;

      SI.Diameter d_hyd(min=Modelica.Constants.eps) = 0.1 "Hydraulic diameter";
      SI.Angle delta=90*PI/180 "Angle of turning";
      SI.Length K=0 "Roughness (absolute average height of surface asperities)";

    end EdgedBend;

--------------

|image26| `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss>`_.SuddenChange
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input for sudden change of diameter**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+----------------+----------------------------------------------+
| Type                                                        | Name   | Default        | Description                                  |
+=============================================================+========+================+==============================================+
| Orifice                                                     |
+-------------------------------------------------------------+--------+----------------+----------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_       | A\_1   | PI\*0.01^2/4   | Small cross sectional area of orifice [m2]   |
+-------------------------------------------------------------+--------+----------------+----------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_       | A\_2   | A\_1           | Large cross sectional area of orifice [m2]   |
+-------------------------------------------------------------+--------+----------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | C\_1   | PI\*0.01       | Small perimeter of orifice [m]               |
+-------------------------------------------------------------+--------+----------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | C\_2   | C\_1           | Large perimeter of orifice [m]               |
+-------------------------------------------------------------+--------+----------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record SuddenChange "Input for sudden change of diameter"

      extends Modelica.Icons.Record;

      SI.Area A_1=PI*0.01^2/4 "Small cross sectional area of orifice";
      SI.Area A_2=A_1 "Large cross sectional area of orifice";
      SI.Length C_1=PI*0.01 "Small perimeter of orifice";
      SI.Length C_2=C_1 "Large perimeter of orifice";
    end SuddenChange;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:25
2010.

.. |Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Bend| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Geometry| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Orifice| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.PressureLossInput| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.StraightPipe| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Tjunction| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Diffuser| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.EdgedBend| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.SuddenChange| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image9| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image10| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image11| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image12| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image13| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image14| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image15| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image16| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image17| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image18| image:: Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png
.. |image19| image:: Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png
.. |image20| image:: Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png
.. |image21| image:: Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png
.. |image22| image:: Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png
.. |image23| image:: Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png
.. |image24| image:: Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png
.. |image25| image:: Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png
.. |image26| image:: Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.BendI.png
