% Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion
% 
% 

[Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).ByRegion
========================================================================================================================================================

**simple explicit functions for one region only**

Information
-----------

::

### Package description

Package ByRegion provides fast forward calls for dynamic property
calculation records for all one phase regions of IAPWS/IF97

### Package contents

-   Function **waterR1\_pT** computes dynamic properties for region 1
    using (p,T) as inputs
-   Function **waterR2\_pT** computes dynamic properties for region 2
    using (p,T) as inputs
-   Function **waterR3\_dT** computes dynamic properties for region 3
    using (d,T) as inputs
-   Function **waterR5\_pT** computes dynamic properties for region 5
    using (p,T) as inputs

### Version Info and Revision history

-   First implemented: *July, 2000* by [Hubertus
    Tummescheit](http://www.control.lth.se/~hubertus/)

Author: Hubertus Tummescheit,
  ~ Modelon AB Ideon Science Park SE-22370 Lund, Sweden email:
    [hubertus@modelon.se](mailto:hubertus@modelon.se)

-   Initial version: July 2000
-   Documented and re-organized: January 2003

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image4](Modelica.Media.Water.IF97_Utilities.BaseIF97.ex standard
  traDerivs_phS.png)                                        properties for
  [waterR1\_pT](Modelica_Media_Water_IF97_Utilities_BaseIF9 region 1,
  7_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseI (p,T) as
  F97.ByRegion.waterR1_pT)                                  inputs

  ![image5](Modelica.Media.Water.IF97_Utilities.BaseIF97.ex standard
  traDerivs_phS.png)                                        properties for
  [waterR2\_pT](Modelica_Media_Water_IF97_Utilities_BaseIF9 region 2,
  7_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseI (p,T) as
  F97.ByRegion.waterR2_pT)                                  inputs

  ![image6](Modelica.Media.Water.IF97_Utilities.BaseIF97.ex standard
  traDerivs_phS.png)                                        properties for
  [waterR3\_dT](Modelica_Media_Water_IF97_Utilities_BaseIF9 region 3,
  7_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseI (d,T) as
  F97.ByRegion.waterR3_dT)                                  inputs

  ![image7](Modelica.Media.Water.IF97_Utilities.BaseIF97.ex standard
  traDerivs_phS.png)                                        properties for
  [waterR5\_pT](Modelica_Media_Water_IF97_Utilities_BaseIF9 region 5,
  7_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseI (p,T) as
  F97.ByRegion.waterR5_pT)                                  inputs
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR1_pTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion](Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion).waterR1\_pT
=======================================================================================================================================================================================================================================================================

**standard properties for region 1, (p,T) as inputs**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name  Default Description
  -------------------------------------------- ----- ------- --------------
  [Pressure](Modelica_SIunits.html#Modelica.SI p             pressure [Pa]
  units.Pressure)                                            

  [Temperature](Modelica_SIunits.html#Modelica T             temperature
  .SIunits.Temperature)                                      (K) [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                  Nam Description
                                                        e   
  ----------------------------------------------------- --- --------------
  [ThermoProperties\_pT](Modelica_Media_Common_ThermoFl pro thermodynamic
  uidSpecial.html#Modelica.Media.Common.ThermoFluidSpec     property
  ial.ThermoProperties_pT)                                  collection
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image9](Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR1_pTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion](Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion).waterR2\_pT
=======================================================================================================================================================================================================================================================================

**standard properties for region 2, (p,T) as inputs**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name  Default Description
  -------------------------------------------- ----- ------- --------------
  [Pressure](Modelica_SIunits.html#Modelica.SI p             pressure [Pa]
  units.Pressure)                                            

  [Temperature](Modelica_SIunits.html#Modelica T             temperature
  .SIunits.Temperature)                                      (K) [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                  Nam Description
                                                        e   
  ----------------------------------------------------- --- --------------
  [ThermoProperties\_pT](Modelica_Media_Common_ThermoFl pro thermodynamic
  uidSpecial.html#Modelica.Media.Common.ThermoFluidSpec     property
  ial.ThermoProperties_pT)                                  collection
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image10](Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR1_pTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion](Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion).waterR3\_dT
========================================================================================================================================================================================================================================================================

**standard properties for region 3, (d,T) as inputs**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name  Default Description
  -------------------------------------------- ----- ------- --------------
  [Density](Modelica_SIunits.html#Modelica.SIu d             density
  nits.Density)                                              [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica T             temperature
  .SIunits.Temperature)                                      (K) [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                  Nam Description
                                                        e   
  ----------------------------------------------------- --- --------------
  [ThermoProperties\_dT](Modelica_Media_Common_ThermoFl pro thermodynamic
  uidSpecial.html#Modelica.Media.Common.ThermoFluidSpec     property
  ial.ThermoProperties_dT)                                  collection
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image11](Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion.waterR1_pTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.ByRegion](Modelica_Media_Water_IF97_Utilities_BaseIF97_ByRegion.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.ByRegion).waterR5\_pT
========================================================================================================================================================================================================================================================================

**standard properties for region 5, (p,T) as inputs**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name  Default Description
  -------------------------------------------- ----- ------- --------------
  [Pressure](Modelica_SIunits.html#Modelica.SI p             pressure [Pa]
  units.Pressure)                                            

  [Temperature](Modelica_SIunits.html#Modelica T             temperature
  .SIunits.Temperature)                                      (K) [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                  Nam Description
                                                        e   
  ----------------------------------------------------- --- --------------
  [ThermoProperties\_pT](Modelica_Media_Common_ThermoFl pro thermodynamic
  uidSpecial.html#Modelica.Media.Common.ThermoFluidSpec     property
  ial.ThermoProperties_pT)                                  collection
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:41 2010.
