% Modelica.Media.Water.IF97\_Utilities.BaseIF97.TwoPhase
% 
% 

[Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).TwoPhase
========================================================================================================================================================

**steam properties in the two-phase rgion and on the phase boundaries**

Information
-----------

::

### Package description

Package TwoPhase provides functions to compute the steam properties in
the two-phase region and on the phase boundaries

### Package contents

-   Function **WaterLiq\_p** computes properties on the boiling boundary
    as a function of p
-   Function **WaterVap\_p** computes properties on the dew line
    boundary as a function of p
-   Function **WaterSat\_ph** computes properties on both phase
    boundaries and in the two phase region as a function of p
-   Function **WaterR4\_ph** computes dynamic simulation properties in
    region 4 with (p,h) as inputs
-   Function **WaterR4\_dT** computes dynamic simulation properties in
    region 4 with (d,T) as inputs

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
  Name                                                   Description
  ------------------------------------------------------ -----------------
  ![image5](Modelica.Media.Water.IF97_Utilities.BaseIF97 properties on the
  .extraDerivs_phS.png)                                  liquid phase
  [waterLiq\_p](Modelica_Media_Water_IF97_Utilities_Base boundary of
  IF97_TwoPhase.html#Modelica.Media.Water.IF97_Utilities region 4
  .BaseIF97.TwoPhase.waterLiq_p)                         

  ![image6](Modelica.Media.Water.IF97_Utilities.BaseIF97 properties on the
  .extraDerivs_phS.png)                                  vapour phase
  [waterVap\_p](Modelica_Media_Water_IF97_Utilities_Base boundary of
  IF97_TwoPhase.html#Modelica.Media.Water.IF97_Utilities region 4
  .BaseIF97.TwoPhase.waterVap_p)                         

  ![image7](Modelica.Media.Water.IF97_Utilities.BaseIF97 Water saturation
  .extraDerivs_phS.png)                                  properties in the
  [waterSat\_ph](Modelica_Media_Water_IF97_Utilities_Bas 2-phase region
  eIF97_TwoPhase.html#Modelica.Media.Water.IF97_Utilitie (4) as f(p,h)
  s.BaseIF97.TwoPhase.waterSat_ph)                       

  ![image8](Modelica.Media.Water.IF97_Utilities.BaseIF97 Water/Steam
  .extraDerivs_phS.png)                                  properties in
  [waterR4\_ph](Modelica_Media_Water_IF97_Utilities_Base region 4 of
  IF97_TwoPhase.html#Modelica.Media.Water.IF97_Utilities IAPWS/IF97
  .BaseIF97.TwoPhase.waterR4_ph)                         (two-phase)

  ![image9](Modelica.Media.Water.IF97_Utilities.BaseIF97 Water properties
  .extraDerivs_phS.png)                                  in region 4 as
  [waterR4\_dT](Modelica_Media_Water_IF97_Utilities_Base function of d and
  IF97_TwoPhase.html#Modelica.Media.Water.IF97_Utilities T
  .BaseIF97.TwoPhase.waterR4_dT)                         
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Media.Water.IF97_Utilities.BaseIF97.TwoPhase.waterLiq_pI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.TwoPhase](Modelica_Media_Water_IF97_Utilities_BaseIF97_TwoPhase.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.TwoPhase).waterLiq\_p
========================================================================================================================================================================================================================================================================

**properties on the liquid phase boundary of region 4**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                          Name   Default  Description
  --------------------------------------------- ------ -------- ------------
  [Pressure](Modelica_SIunits.html#Modelica.SIu p               pressure
  nits.Pressure)                                                [Pa]
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  [PhaseBoundaryProperties](Modelica_Media_Common liq  liquid thermodynamic
  .html#Modelica.Media.Common.PhaseBoundaryProper      property collection
  ties)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function waterLiq_p 
      "properties on the liquid phase boundary of region 4"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output Modelica.Media.Common.PhaseBoundaryProperties liq 
        "liquid thermodynamic property collection";
    protected 
      SI.Temperature Tsat "saturation temperature";
      Real dpT "derivative of saturation pressure w.r.t. temperature";
      SI.Density dl "liquid density";
      Modelica.Media.Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.HelmholtzDerivs f 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
    algorithm 
      Tsat := Basic.tsat(p);
      dpT := Basic.dptofT(Tsat);
      if p < data.PLIMIT4A then
        g := Basic.g1(p, Tsat);
        liq := Modelica.Media.Common.gibbsToBoundaryProps(g);
      else
        dl := Regions.rhol_p_R4b(p);
        f := Basic.f3(dl, Tsat);
        liq := Modelica.Media.Common.helmholtzToBoundaryProps(f);
      end if;
    end waterLiq_p;

* * * * *

![image11](Modelica.Media.Water.IF97_Utilities.BaseIF97.TwoPhase.waterLiq_pI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.TwoPhase](Modelica_Media_Water_IF97_Utilities_BaseIF97_TwoPhase.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.TwoPhase).waterVap\_p
========================================================================================================================================================================================================================================================================

**properties on the vapour phase boundary of region 4**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                          Name   Default  Description
  --------------------------------------------- ------ -------- ------------
  [Pressure](Modelica_SIunits.html#Modelica.SIu p               pressure
  nits.Pressure)                                                [Pa]
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  [PhaseBoundaryProperties](Modelica_Media_Common vap  vapour thermodynamic
  .html#Modelica.Media.Common.PhaseBoundaryProper      property collection
  ties)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function waterVap_p 
      "properties on the vapour phase boundary of region 4"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output Modelica.Media.Common.PhaseBoundaryProperties vap 
        "vapour thermodynamic property collection";
    protected 
      SI.Temperature Tsat "saturation temperature";
      Real dpT "derivative of saturation pressure w.r.t. temperature";
      SI.Density dv "vapour density";
      Modelica.Media.Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.HelmholtzDerivs f 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
    algorithm 
      Tsat := Basic.tsat(p);
      dpT := Basic.dptofT(Tsat);
      if p < data.PLIMIT4A then
        g := Basic.g2(p, Tsat);
        vap := Modelica.Media.Common.gibbsToBoundaryProps(g);
      else
        dv := Regions.rhov_p_R4b(p);
        f := Basic.f3(dv, Tsat);
        vap := Modelica.Media.Common.helmholtzToBoundaryProps(f);
      end if;
    end waterVap_p;

* * * * *

![image12](Modelica.Media.Water.IF97_Utilities.BaseIF97.TwoPhase.waterLiq_pI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.TwoPhase](Modelica_Media_Water_IF97_Utilities_BaseIF97_TwoPhase.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.TwoPhase).waterSat\_ph
=========================================================================================================================================================================================================================================================================

**Water saturation properties in the 2-phase region (4) as f(p,h)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                         Name Defaul Description
                                                    t      
  -------------------------------------------- ---- ------ ---------------
  [Pressure](Modelica_SIunits.html#Modelica.SI p           pressure [Pa]
  units.Pressure)                                          

  [SpecificEnthalpy](Modelica_SIunits.html#Mod h           specific
  elica.SIunits.SpecificEnthalpy)                          enthalpy [J/kg]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  [SaturationProperties](Modelica_Media_Common.htm pro  thermodynamic
  l#Modelica.Media.Common.SaturationProperties)         property
                                                        collection
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function waterSat_ph 
      "Water saturation properties in the 2-phase region (4) as f(p,h)"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      output Modelica.Media.Common.SaturationProperties pro 
        "thermodynamic property collection";
    protected 
      SI.Density dl "liquid density";
      SI.Density dv "vapour density";
      Modelica.Media.Common.GibbsDerivs gl 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.GibbsDerivs gv 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.HelmholtzDerivs fl 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
      Modelica.Media.Common.HelmholtzDerivs fv 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
    algorithm 
      pro.h := h;
      pro.p := p;
      pro.T := Basic.tsat(p);
      pro.dpT := Basic.dptofT(pro.T);
      if p < data.PLIMIT4A then
        gl := Basic.g1(p, pro.T);
        gv := Basic.g2(p, pro.T);
        pro.liq := Modelica.Media.Common.gibbsToBoundaryProps(gl);
        pro.vap := Modelica.Media.Common.gibbsToBoundaryProps(gv);
      else
        dl := Regions.rhol_p_R4b(p);
        dv := Regions.rhov_p_R4b(p);
        fl := Basic.f3(dl, pro.T);
        fv := Basic.f3(dv, pro.T);
        pro.liq := Modelica.Media.Common.helmholtzToBoundaryProps(fl);
        pro.vap := Modelica.Media.Common.helmholtzToBoundaryProps(fv);
      end if;
      pro.x := if (h < pro.liq.h) then 0.0 else if (pro.vap.h <> pro.liq.h) then 
              (h - pro.liq.h)/(pro.vap.h - pro.liq.h) else 1.0;
      pro.d := pro.liq.d*pro.vap.d/(pro.vap.d + pro.x*(pro.liq.d - pro.vap.d));
      pro.u := pro.x*pro.vap.u + (1 - pro.x)*pro.liq.u;
      pro.s := pro.x*pro.vap.s + (1 - pro.x)*pro.liq.s;
      pro.cp := Modelica.Constants.inf;
      pro.cv := Modelica.Media.Common.cv2Phase(pro.liq, pro.vap, pro.x, pro.T,
         p);
      pro.kappa := 1/(pro.d*p)*pro.dpT*pro.dpT*pro.T/pro.cv;
      pro.R := data.RH2O;
    end waterSat_ph;

* * * * *

![image13](Modelica.Media.Water.IF97_Utilities.BaseIF97.TwoPhase.waterLiq_pI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.TwoPhase](Modelica_Media_Water_IF97_Utilities_BaseIF97_TwoPhase.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.TwoPhase).waterR4\_ph
========================================================================================================================================================================================================================================================================

**Water/Steam properties in region 4 of IAPWS/IF97 (two-phase)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                         Name Defaul Description
                                                    t      
  -------------------------------------------- ---- ------ ---------------
  [Pressure](Modelica_SIunits.html#Modelica.SI p           pressure [Pa]
  units.Pressure)                                          

  [SpecificEnthalpy](Modelica_SIunits.html#Mod h           specific
  elica.SIunits.SpecificEnthalpy)                          enthalpy [J/kg]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                  Nam Description
                                                        e   
  ----------------------------------------------------- --- --------------
  [ThermoProperties\_ph](Modelica_Media_Common_ThermoFl pro thermodynamic
  uidSpecial.html#Modelica.Media.Common.ThermoFluidSpec     property
  ial.ThermoProperties_ph)                                  collection
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function waterR4_ph 
      "Water/Steam properties in region 4 of IAPWS/IF97 (two-phase)"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      output Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_ph pro 
        "thermodynamic property collection";
    protected 
      SI.Density dl "liquid density";
      SI.Density dv "vapour density";
      Modelica.Media.Common.PhaseBoundaryProperties liq 
        "phase boundary property record";
      Modelica.Media.Common.PhaseBoundaryProperties vap 
        "phase boundary property record";
      Modelica.Media.Common.GibbsDerivs gl 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.GibbsDerivs gv 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.HelmholtzDerivs fl 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
      Modelica.Media.Common.HelmholtzDerivs fv 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
      Real x "dryness fraction";
      Real dpT "derivative of saturation curve";
    algorithm 
      pro.T := Basic.tsat(p);
      dpT := Basic.dptofT(pro.T);
      dl := Regions.rhol_p_R4b(p);
      dv := Regions.rhov_p_R4b(p);
      if p < data.PLIMIT4A then
        gl := Basic.g1(p, pro.T);
        gv := Basic.g2(p, pro.T);
        liq := Modelica.Media.Common.gibbsToBoundaryProps(gl);
        vap := Modelica.Media.Common.gibbsToBoundaryProps(gv);
      else
        fl := Basic.f3(dl, pro.T);
        fv := Basic.f3(dv, pro.T);
        liq := Modelica.Media.Common.helmholtzToBoundaryProps(fl);
        vap := Modelica.Media.Common.helmholtzToBoundaryProps(fv);
      end if;
      x := if (vap.h <> liq.h) then (h - liq.h)/(vap.h - liq.h) else 1.0;
      pro.d := liq.d*vap.d/(vap.d + x*(liq.d - vap.d));
      pro.u := x*vap.u + (1 - x)*liq.u;
      pro.s := x*vap.s + (1 - x)*liq.s;
      pro.cp := Modelica.Constants.inf;
      pro.cv := Modelica.Media.Common.cv2Phase(liq, vap, x, pro.T, p);
      pro.kappa := 1/(pro.d*p)*dpT*dpT*pro.T/pro.cv;
      pro.a := Modelica.Constants.inf;
      pro.R := data.RH2O;
      pro.ddph := pro.d*(pro.d*pro.cv/dpT + 1.0)/(dpT*pro.T);
      pro.ddhp := -pro.d*pro.d/(dpT*pro.T);
    end waterR4_ph;

* * * * *

![image14](Modelica.Media.Water.IF97_Utilities.BaseIF97.TwoPhase.waterLiq_pI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.TwoPhase](Modelica_Media_Water_IF97_Utilities_BaseIF97_TwoPhase.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.TwoPhase).waterR4\_dT
========================================================================================================================================================================================================================================================================

**Water properties in region 4 as function of d and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Density](Modelica_SIunits.html#Modelica.SIun d             Density
  its.Density)                                                [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica. T             temperature
  SIunits.Temperature)                                        [K]
  ------------------------------------------------------------------------

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

    function waterR4_dT 
      "Water properties in region 4 as function of d and T"

      extends Modelica.Icons.Function;
      input SI.Density d "Density";
      input SI.Temperature T "temperature";
      output Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_dT pro 
        "thermodynamic property collection";
    protected 
      SI.Density dl "liquid density";
      SI.Density dv "vapour density";
      Modelica.Media.Common.PhaseBoundaryProperties liq 
        "phase boundary property record";
      Modelica.Media.Common.PhaseBoundaryProperties vap 
        "phase boundary property record";
      Modelica.Media.Common.GibbsDerivs gl 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.GibbsDerivs gv 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.HelmholtzDerivs fl 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
      Modelica.Media.Common.HelmholtzDerivs fv 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
      Real x "dryness fraction";
      Real dpT "derivative of saturation curve";
    algorithm 
      pro.p := Basic.psat(T);
      dpT := Basic.dptofT(T);
      dl := Regions.rhol_p_R4b(pro.p);
      dv := Regions.rhov_p_R4b(pro.p);
      if pro.p < data.PLIMIT4A then
        gl := Basic.g1(pro.p, T);
        gv := Basic.g2(pro.p, T);
        liq := Modelica.Media.Common.gibbsToBoundaryProps(gl);
        vap := Modelica.Media.Common.gibbsToBoundaryProps(gv);
      else
        fl := Basic.f3(dl, T);
        fv := Basic.f3(dv, T);
        liq := Modelica.Media.Common.helmholtzToBoundaryProps(fl);
        vap := Modelica.Media.Common.helmholtzToBoundaryProps(fv);
      end if;
      x := if (vap.d <> liq.d) then (1/d - 1/liq.d)/(1/vap.d - 1/liq.d) else 
        1.0;
      pro.u := x*vap.u + (1 - x)*liq.u;
      pro.h := x*vap.h + (1 - x)*liq.h;
      pro.cp := Modelica.Constants.inf;
      pro.cv := Modelica.Media.Common.cv2Phase(liq, vap, x, T, pro.p);
      pro.kappa := 1/(d*pro.p)*dpT*dpT*T/pro.cv;
      pro.a := Modelica.Constants.inf;
      pro.R := data.RH2O;
      pro.dudT := (pro.p - T*dpT)/(d*d);
    end waterR4_dT;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:41 2010.
