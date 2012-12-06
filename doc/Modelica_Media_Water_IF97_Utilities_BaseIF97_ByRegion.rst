======================================================
Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion
======================================================

`Modelica.Media.Water.IF97\_Utilities.BaseIF97 <Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97>`_.ByRegion
----------------------------------------------------------------------------------------------------------------------------------------------------------

**simple explicit functions for one region only**

Information
~~~~~~~~~~~

::

Package description
^^^^^^^^^^^^^^^^^^^

Package ByRegion provides fast forward calls for dynamic property
calculation records for all one phase regions of IAPWS/IF97

Package contents
^^^^^^^^^^^^^^^^

-  Function **waterR1\_pT** computes dynamic properties for region 1
   using (p,T) as inputs
-  Function **waterR2\_pT** computes dynamic properties for region 2
   using (p,T) as inputs
-  Function **waterR3\_dT** computes dynamic properties for region 3
   using (d,T) as inputs
-  Function **waterR5\_pT** computes dynamic properties for region 5
   using (p,T) as inputs

Version Info and Revision history
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  First implemented: *July, 2000* by `Hubertus
   Tummescheit <http://www.control.lth.se/~hubertus/>`_

Author: Hubertus Tummescheit,
 Modelon AB
 Ideon Science Park
 SE-22370 Lund, Sweden
 email: hubertus@modelon.se

-  Initial version: July 2000
-  Documented and re-organized: January 2003

::

              

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| Name                                                                                                                                                                                                                | Description                                         |
+=====================================================================================================================================================================================================================+=====================================================+
| |image4| `waterR1\_pT <Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR1_pT>`_                                                               | standard properties for region 1, (p,T) as inputs   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image5| `waterR2\_pT <Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR2_pT>`_                                                               | standard properties for region 2, (p,T) as inputs   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image6| `waterR3\_dT <Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR3_dT>`_                                                               | standard properties for region 3, (d,T) as inputs   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image7| `waterR5\_pT <Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR5_pT>`_                                                               | standard properties for region 5, (p,T) as inputs   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+

--------------

|image8| `Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion <Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion>`_.waterR1\_pT
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**standard properties for region 1, (p,T) as inputs**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                                  | Name   | Default   | Description           |
+=======================================================================+========+===========+=======================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p      |           | pressure [Pa]         |
+-----------------------------------------------------------------------+--------+-----------+-----------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | temperature (K) [K]   |
+-----------------------------------------------------------------------+--------+-----------+-----------------------+

Outputs
~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                                                                   | Name   | Description                         |
+========================================================================================================================================+========+=====================================+
| `ThermoProperties\_pT <Modelica_Media_Common_ThermoFluidSpecial.html#Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_pT>`_   | pro    | thermodynamic property collection   |
+----------------------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function waterR1_pT 
      "standard properties for region 1, (p,T) as inputs"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature (K)";
      output Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_pT pro 
        "thermodynamic property collection";

    protected 
      Modelica.Media.Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
    algorithm 
      g := Basic.g1(p, T);
      pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_pT(g);
    end waterR1_pT;

--------------

|image9| `Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion <Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion>`_.waterR2\_pT
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**standard properties for region 2, (p,T) as inputs**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                                  | Name   | Default   | Description           |
+=======================================================================+========+===========+=======================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p      |           | pressure [Pa]         |
+-----------------------------------------------------------------------+--------+-----------+-----------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | temperature (K) [K]   |
+-----------------------------------------------------------------------+--------+-----------+-----------------------+

Outputs
~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                                                                   | Name   | Description                         |
+========================================================================================================================================+========+=====================================+
| `ThermoProperties\_pT <Modelica_Media_Common_ThermoFluidSpecial.html#Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_pT>`_   | pro    | thermodynamic property collection   |
+----------------------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function waterR2_pT 
      "standard properties for region 2, (p,T) as inputs"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature (K)";
      output Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_pT pro 
        "thermodynamic property collection";
    protected 
      Modelica.Media.Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
    algorithm 
      g := Basic.g2(p, T);
      pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_pT(g);
    end waterR2_pT;

--------------

|image10| `Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion <Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion>`_.waterR3\_dT
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**standard properties for region 3, (d,T) as inputs**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                                  | Name   | Default   | Description           |
+=======================================================================+========+===========+=======================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d      |           | density [kg/m3]       |
+-----------------------------------------------------------------------+--------+-----------+-----------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | temperature (K) [K]   |
+-----------------------------------------------------------------------+--------+-----------+-----------------------+

Outputs
~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                                                                   | Name   | Description                         |
+========================================================================================================================================+========+=====================================+
| `ThermoProperties\_dT <Modelica_Media_Common_ThermoFluidSpecial.html#Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_dT>`_   | pro    | thermodynamic property collection   |
+----------------------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function waterR3_dT 
      "standard properties for region 3, (d,T) as inputs"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature (K)";
      output Common.ThermoFluidSpecial.ThermoProperties_dT pro 
        "thermodynamic property collection";
    protected 
      Common.HelmholtzDerivs f 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
    algorithm 
      f := Basic.f3(d, T);
      pro := Modelica.Media.Common.ThermoFluidSpecial.helmholtzToProps_dT(f);
      assert(pro.p <= 100.0e6,
        "IF97 medium function waterR3_dT: the input pressure (= " + String(pro.p) +
        " Pa) is higher than 100 Mpa");
    end waterR3_dT;

--------------

|image11| `Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion <Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion>`_.waterR5\_pT
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**standard properties for region 5, (p,T) as inputs**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                                  | Name   | Default   | Description           |
+=======================================================================+========+===========+=======================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p      |           | pressure [Pa]         |
+-----------------------------------------------------------------------+--------+-----------+-----------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | temperature (K) [K]   |
+-----------------------------------------------------------------------+--------+-----------+-----------------------+

Outputs
~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                                                                   | Name   | Description                         |
+========================================================================================================================================+========+=====================================+
| `ThermoProperties\_pT <Modelica_Media_Common_ThermoFluidSpecial.html#Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_pT>`_   | pro    | thermodynamic property collection   |
+----------------------------------------------------------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function waterR5_pT 
      "standard properties for region 5, (p,T) as inputs"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature (K)";
      output Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_pT pro 
        "thermodynamic property collection";
    protected 
      Modelica.Media.Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
    algorithm 
      g := Basic.g5(p, T);
      pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_pT(g);
    end waterR5_pT;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:41
2010.

.. |Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion.waterR1\_pT| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion.waterR2\_pT| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion.waterR3\_dT| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion.waterR5\_pT| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image4| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image5| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image6| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image7| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image8| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR1_pTI.png
.. |image9| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR1_pTI.png
.. |image10| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR1_pTI.png
.. |image11| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR1_pTI.png
