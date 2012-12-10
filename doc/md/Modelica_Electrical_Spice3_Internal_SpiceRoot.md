% Modelica.Electrical.Spice3.Internal.SpiceRoot
% 
% 

[Modelica.Electrical.Spice3.Internal](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal).SpiceRoot
=============================================================================================================================

**Basic records and functions**

Information
-----------

::

The package SpiceRoot contains basic records and functions that are
needed in SPICE3.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                         Description
  ------------------------------------------------------------ -----------
  ![image4](Modelica.Electrical.Spice3.Internal.SpiceRoot.Spic Data for
  eRootS.png)                                                  insertion
  [SpiceRoot](Modelica_Electrical_Spice3_Internal_SpiceRoot.ht to matrices
  ml#Modelica.Electrical.Spice3.Internal.SpiceRoot.SpiceRoot)  

  ![image5](Modelica.Electrical.Spice3.Internal.SpiceRoot.useI Initial
  nitialConditionsS.png)                                       condition
  [useInitialConditions](Modelica_Electrical_Spice3_Internal_S handling
  piceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot. 
  useInitialConditions)                                        

  ![image6](Modelica.Electrical.Spice3.Internal.SpiceRoot.useI Choice of
  nitialConditionsS.png)                                       junction
  [initJunctionVoltages](Modelica_Electrical_Spice3_Internal_S voltage
  piceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot. handling
  initJunctionVoltages)                                        

  ![image7](Modelica.Electrical.Spice3.Internal.SpiceRoot.useI Limitation
  nitialConditionsS.png)                                       of junction
  [limitJunctionVoltage](Modelica_Electrical_Spice3_Internal_S voltage
  piceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot. 
  limitJunctionVoltage)                                        
  ------------------------------------------------------------------------

* * * * *

[Modelica.Electrical.Spice3.Internal.SpiceRoot](Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot).SpiceRoot
===========================================================================================================================================================

**Data for insertion to matrices**

Information
-----------

::

This data are to collect intermediate results to be inserted into
SPICE-like matrices for linear ssystems of equations.

::

Modelica definition
-------------------

    record SpiceRoot "Data for insertion to matrices"

      Modelica.SIunits.Current[6] m_pCurrentValues(   start = zeros(6));
      Real[36] m_pResJacobi(      start = zeros(36));
      Real[36] m_pCapJacobi(      start = zeros(36));

    end SpiceRoot;

* * * * *

[Modelica.Electrical.Spice3.Internal.SpiceRoot](Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot).useInitialConditions
======================================================================================================================================================================

**Initial condition handling**

Information
-----------

::

This function useInitialConditions appoints wether the initial
conditions that are given in the description are used or not.

::

Outputs
-------

  Type         Name      Description
  ------------ --------- ----------------
  Boolean      ret       

Modelica definition
-------------------

    function useInitialConditions "Initial condition handling"

      output Boolean ret;

    algorithm 
      ret := false;

    end useInitialConditions;

* * * * *

[Modelica.Electrical.Spice3.Internal.SpiceRoot](Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot).initJunctionVoltages
======================================================================================================================================================================

**Choice of junction voltage handling**

Information
-----------

::

This internal function is provided to choose the junction voltage
handling which is at the current library version fixed to false.

::

Outputs
-------

  Type         Name      Description
  ------------ --------- ----------------
  Boolean      ret       

Modelica definition
-------------------

    function initJunctionVoltages "Choice of junction voltage handling"

      output Boolean ret;
    algorithm 

      ret := false;

    end initJunctionVoltages;

* * * * *

[Modelica.Electrical.Spice3.Internal.SpiceRoot](Modelica_Electrical_Spice3_Internal_SpiceRoot.html#Modelica.Electrical.Spice3.Internal.SpiceRoot).limitJunctionVoltage
======================================================================================================================================================================

**Limitation of junction voltage**

Information
-----------

::

This internal function is provided to limit the junction voltage which
is at the current library version fixed to false.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                      Name    Default Description
  ----------------------------------------- ------- ------- --------------
  [Voltage](Modelica_SIunits.html#Modelica. voltage         Input voltage
  SIunits.Voltage)                                          [V]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                Name    Description
  --------------------------------------------------- ------- ------------
  [Voltage](Modelica_SIunits.html#Modelica.SIunits.Vo ret     [V]
  ltage)                                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function limitJunctionVoltage "Limitation of junction voltage"

      input Modelica.SIunits.Voltage voltage "Input voltage";

      output Modelica.SIunits.Voltage ret;

    algorithm 
      ret := voltage;

    end limitJunctionVoltage;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:47 2010.
