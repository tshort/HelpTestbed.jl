% Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic
% 
% 

[Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).Isentropic
==========================================================================================================================================================

**functions for calculating the isentropic enthalpy from pressure p and
specific entropy s**

Information
-----------

::

### Package description

### Package contents

-   Function **hofpT1** computes h(p,T) in region 1.
-   Function **handsofpT1** computes (s,h)=f(p,T) in region 1, needed
    for two-phase properties.
-   Function **hofps1** computes h(p,s) in region 1.
-   Function **hofpT2** computes h(p,T) in region 2.
-   Function **handsofpT2** computes (s,h)=f(p,T) in region 2, needed
    for two-phase properties.
-   Function **hofps2** computes h(p,s) in region 2.
-   Function **hofdT3** computes h(d,T) in region 3.
-   Function **hofpsdt3** computes h(p,s,dguess,Tguess) in region 3,
    where dguess and Tguess are initial guess values for the density and
    temperature consistent with p and s.
-   Function **hofps4** computes h(p,s) in region 4.
-   Function **hofpT5** computes h(p,T) in region 5.
-   Function **water\_hisentropic** computes h(p,s,phase) in all
    regions. The phase input is needed due to discontinuous derivatives
    at the phase boundary.
-   Function **water\_hisentropic\_dyn** computes
    h(p,s,dguess,Tguess,phase) in all regions. The phase input is needed
    due to discontinuous derivatives at the phase boundary. Tguess and
    dguess are initial guess values for the density and temperature
    consistent with p and s. This function should be preferred in
    dynamic simulations where good guesses are often available.

### Version Info and Revision history

-   First implemented: *July, 2000* by [Hubertus
    Tummescheit](http://www.control.lth.se/~hubertus/)

Author: Hubertus Tummescheit,
  ~ Modelon AB Ideon Science Park SE-22370 Lund, Sweden email:
    [hubertus@modelon.se](mailto:hubertus@modelon.se)

-   Initial version: July 2000
-   Documentation added: December 2002

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                               Description
  -------------------------------------------------- ---------------------
  ![image13](Modelica.Media.Water.IF97_Utilities.Bas intermediate function
  eIF97.extraDerivs_phS.png)                         for isentropic
  [hofpT1](Modelica_Media_Water_IF97_Utilities_BaseI specific enthalpy in
  F97_Isentropic.html#Modelica.Media.Water.IF97_Util region 1
  ities.BaseIF97.Isentropic.hofpT1)                  

  ![image14](Modelica.Media.Water.IF97_Utilities.Bas special function for
  eIF97.extraDerivs_phS.png)                         specific enthalpy and
  [handsofpT1](Modelica_Media_Water_IF97_Utilities_B specific entropy in
  aseIF97_Isentropic.html#Modelica.Media.Water.IF97_ region 1
  Utilities.BaseIF97.Isentropic.handsofpT1)          

  ![image15](Modelica.Media.Water.IF97_Utilities.Bas function for
  eIF97.extraDerivs_phS.png)                         isentropic specific
  [hofps1](Modelica_Media_Water_IF97_Utilities_BaseI enthalpy in region 1
  F97_Isentropic.html#Modelica.Media.Water.IF97_Util 
  ities.BaseIF97.Isentropic.hofps1)                  

  ![image16](Modelica.Media.Water.IF97_Utilities.Bas intermediate function
  eIF97.extraDerivs_phS.png)                         for isentropic
  [hofpT2](Modelica_Media_Water_IF97_Utilities_BaseI specific enthalpy in
  F97_Isentropic.html#Modelica.Media.Water.IF97_Util region 2
  ities.BaseIF97.Isentropic.hofpT2)                  

  ![image17](Modelica.Media.Water.IF97_Utilities.Bas function for
  eIF97.extraDerivs_phS.png)                         isentropic specific
  [handsofpT2](Modelica_Media_Water_IF97_Utilities_B enthalpy and specific
  aseIF97_Isentropic.html#Modelica.Media.Water.IF97_ entropy in region 2
  Utilities.BaseIF97.Isentropic.handsofpT2)          

  ![image18](Modelica.Media.Water.IF97_Utilities.Bas function for
  eIF97.extraDerivs_phS.png)                         isentropic specific
  [hofps2](Modelica_Media_Water_IF97_Utilities_BaseI enthalpy in region 2
  F97_Isentropic.html#Modelica.Media.Water.IF97_Util 
  ities.BaseIF97.Isentropic.hofps2)                  

  ![image19](Modelica.Media.Water.IF97_Utilities.Bas function for
  eIF97.extraDerivs_phS.png)                         isentropic specific
  [hofdT3](Modelica_Media_Water_IF97_Utilities_BaseI enthalpy in region 3
  F97_Isentropic.html#Modelica.Media.Water.IF97_Util 
  ities.BaseIF97.Isentropic.hofdT3)                  

  ![image20](Modelica.Media.Water.IF97_Utilities.Bas isentropic specific
  eIF97.extraDerivs_phS.png)                         enthalpy in region 3
  [hofps3](Modelica_Media_Water_IF97_Utilities_BaseI h(p,s)
  F97_Isentropic.html#Modelica.Media.Water.IF97_Util 
  ities.BaseIF97.Isentropic.hofps3)                  

  ![image21](Modelica.Media.Water.IF97_Utilities.Bas isentropic specific
  eIF97.extraDerivs_phS.png)                         enthalpy in region 3
  [hofpsdt3](Modelica_Media_Water_IF97_Utilities_Bas h(p,s) with given
  eIF97_Isentropic.html#Modelica.Media.Water.IF97_Ut good guess in d and T
  ilities.BaseIF97.Isentropic.hofpsdt3)              

  ![image22](Modelica.Media.Water.IF97_Utilities.Bas isentropic specific
  eIF97.extraDerivs_phS.png)                         enthalpy in region 4
  [hofps4](Modelica_Media_Water_IF97_Utilities_BaseI h(p,s)
  F97_Isentropic.html#Modelica.Media.Water.IF97_Util 
  ities.BaseIF97.Isentropic.hofps4)                  

  ![image23](Modelica.Media.Water.IF97_Utilities.Bas specific enthalpy in
  eIF97.extraDerivs_phS.png)                         region 5 h(p,T)
  [hofpT5](Modelica_Media_Water_IF97_Utilities_BaseI 
  F97_Isentropic.html#Modelica.Media.Water.IF97_Util 
  ities.BaseIF97.Isentropic.hofpT5)                  

  ![image24](Modelica.Media.Water.IF97_Utilities.Bas isentropic specific
  eIF97.extraDerivs_phS.png)                         enthalpy from p,s
  [water\_hisentropic](Modelica_Media_Water_IF97_Uti (preferably use
  lities_BaseIF97_Isentropic.html#Modelica.Media.Wat water\_hisentropic\_d
  er.IF97_Utilities.BaseIF97.Isentropic.water_hisent yn
  ropic)                                             in dynamic
                                                     simulation!)

  ![image25](Modelica.Media.Water.IF97_Utilities.Bas isentropic specific
  eIF97.extraDerivs_phS.png)                         enthalpy from p,s and
  [water\_hisentropic\_dyn](Modelica_Media_Water_IF9 good guesses of d and
  7_Utilities_BaseIF97_Isentropic.html#Modelica.Medi T
  a.Water.IF97_Utilities.BaseIF97.Isentropic.water_h 
  isentropic_dyn)                                    
  ------------------------------------------------------------------------

* * * * *

![image26](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).hofpT1
=======================================================================================================================================================================================================================================================================

**intermediate function for isentropic specific enthalpy in region 1**

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

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hofpT1 
      "intermediate function for isentropic specific enthalpy in region 1"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature (K)";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real[13] o "vector of auxiliary variables";
      Real pi1 "dimensionless pressure";
      Real tau "dimensionless temperature";
      Real tau1 "dimensionless temperature";
    algorithm 
      tau := data.TSTAR1/T;
      pi1 := 7.1 - p/data.PSTAR1;
      assert(p > triple.ptriple,
        "IF97 medium function hofpT1  called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      tau1 := -1.222 + tau;
      o[1] := tau1*tau1;
      o[2] := o[1]*tau1;
      o[3] := o[1]*o[1];
      o[4] := o[3]*o[3];
      o[5] := o[1]*o[4];
      o[6] := o[1]*o[3];
      o[7] := o[3]*tau1;
      o[8] := o[3]*o[4];
      o[9] := pi1*pi1;
      o[10] := o[9]*o[9];
      o[11] := o[10]*o[10];
      o[12] := o[4]*o[4];
      o[13] := o[12]*o[12];

      h := data.RH2O*T*tau*(pi1*((-0.00254871721114236 + o[1]*(
        0.00424944110961118 + (0.018990068218419 + (-0.021841717175414 -
        0.00015851507390979*o[1])*o[1])*o[6]))/o[5] + pi1*((
        0.00141552963219801 + o[3]*(0.000047661393906987 + o[1]*(-0.0000132425535992538
         - 1.2358149370591e-14*o[1]*o[3]*o[4])))/o[3] + pi1*((
        0.000126718579380216 - 5.11230768720618e-9*o[5])/o[7] + pi1*((
        0.000011212640954 + o[2]*(1.30342445791202e-6 - 1.4341729937924e-12*o[
        8]))/o[6] + pi1*(o[9]*pi1*((1.40077319158051e-8 + 1.04549227383804e-9
        *o[7])/o[8] + o[10]*o[11]*pi1*(1.9941018075704e-17/(o[1]*o[12]*o[3]*o[
        4]) + o[9]*(-4.48827542684151e-19/o[13] + o[10]*o[9]*(pi1*(
        4.65957282962769e-22/(o[13]*o[4]) + pi1*((3.83502057899078e-24*pi1)/(
        o[1]*o[13]*o[4]) - 7.2912378325616e-23/(o[13]*o[4]*tau1))) -
        1.00075970318621e-21/(o[1]*o[13]*o[3]*tau1))))) + 3.24135974880936e-6
        /(o[4]*tau1)))))) + (-0.29265942426334 + tau1*(0.84548187169114 + o[1]
        *(3.3855169168385 + tau1*(-1.91583926775744 + tau1*(0.47316115539684
         + (-0.066465668798004 + 0.0040607314991784*tau1)*tau1)))))/o[2]);
    end hofpT1;

* * * * *

![image27](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).handsofpT1
===========================================================================================================================================================================================================================================================================

**special function for specific enthalpy and specific entropy in region
1**

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

  -------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- ------------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelic h     specific enthalpy
  a.SIunits.SpecificEnthalpy)                            [J/kg]

  [SpecificEntropy](Modelica_SIunits.html#Modelica s     specific entropy
  .SIunits.SpecificEntropy)                              [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function handsofpT1 
      "special function for specific enthalpy and specific entropy in region 1"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature (K)";
      output SI.SpecificEnthalpy h "specific enthalpy";
      output SI.SpecificEntropy s "specific entropy";
    protected 
      Real[28] o "vector of auxiliary variables";
      Real pi1 "dimensionless pressure";
      Real tau "dimensionless temperature";
      Real tau1 "dimensionless temperature";
      Real g "dimensionless Gibbs energy";
      Real gtau "derivative of  dimensionless Gibbs energy w.r.t. tau";
    algorithm 
      assert(p > triple.ptriple,
        "IF97 medium function handsofpT1 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      tau := data.TSTAR1/T;
      pi1 := 7.1 - p/data.PSTAR1;
      tau1 := -1.222 + tau;
      o[1] := tau1*tau1;
      o[2] := o[1]*o[1];
      o[3] := o[2]*o[2];
      o[4] := o[3]*tau1;
      o[5] := 1/o[4];
      o[6] := o[1]*o[2];
      o[7] := o[1]*tau1;
      o[8] := 1/o[7];
      o[9] := o[1]*o[2]*o[3];
      o[10] := 1/o[2];
      o[11] := o[2]*tau1;
      o[12] := 1/o[11];
      o[13] := o[2]*o[3];
      o[14] := pi1*pi1;
      o[15] := o[14]*pi1;
      o[16] := o[14]*o[14];
      o[17] := o[16]*o[16];
      o[18] := o[16]*o[17]*pi1;
      o[19] := o[14]*o[16];
      o[20] := o[3]*o[3];
      o[21] := o[20]*o[20];
      o[22] := o[21]*o[3]*tau1;
      o[23] := 1/o[22];
      o[24] := o[21]*o[3];
      o[25] := 1/o[24];
      o[26] := o[1]*o[2]*o[21]*tau1;
      o[27] := 1/o[26];
      o[28] := o[1]*o[3];

      g := pi1*(pi1*(pi1*(o[10]*(-0.000031679644845054 + o[2]*(-2.8270797985312e-6
         - 8.5205128120103e-10*o[6])) + pi1*(o[12]*(-2.2425281908e-6 + (-6.5171222895601e-7
         - 1.4341729937924e-13*o[13])*o[7]) + pi1*(-4.0516996860117e-7/o[3]
         + o[15]*(o[18]*(o[14]*(o[19]*(2.6335781662795e-23/(o[1]*o[2]*o[21])
         + pi1*(-1.1947622640071e-23*o[27] + pi1*(1.8228094581404e-24*o[25]
         - 9.3537087292458e-26*o[23]*pi1))) + 1.4478307828521e-20/(o[1]*o[2]*
        o[20]*o[3]*tau1)) - 6.8762131295531e-19/(o[2]*o[20]*o[3]*tau1)) + (-1.2734301741641e-9
         - 1.7424871230634e-10*o[11])/(o[1]*o[3]*tau1))))) + o[8]*(-0.00047184321073267
         + o[7]*(-0.00030001780793026 + (0.000047661393906987 + o[1]*(-4.4141845330846e-6
         - 7.2694996297594e-16*o[9]))*tau1))) + o[5]*(0.00028319080123804 + o[
        1]*(-0.00060706301565874 + o[6]*(-0.018990068218419 + tau1*(-0.032529748770505
         + (-0.021841717175414 - 0.00005283835796993*o[1])*tau1))))) + (
        0.14632971213167 + tau1*(-0.84548187169114 + tau1*(-3.756360367204 +
        tau1*(3.3855169168385 + tau1*(-0.95791963387872 + tau1*(
        0.15772038513228 + (-0.016616417199501 + 0.00081214629983568*tau1)*
        tau1))))))/o[1];

      gtau := pi1*((-0.00254871721114236 + o[1]*(0.00424944110961118 + (
        0.018990068218419 + (-0.021841717175414 - 0.00015851507390979*o[1])*o[
        1])*o[6]))/o[28] + pi1*(o[10]*(0.00141552963219801 + o[2]*(
        0.000047661393906987 + o[1]*(-0.0000132425535992538 -
        1.2358149370591e-14*o[9]))) + pi1*(o[12]*(0.000126718579380216 -
        5.11230768720618e-9*o[28]) + pi1*((0.000011212640954 + (
        1.30342445791202e-6 - 1.4341729937924e-12*o[13])*o[7])/o[6] + pi1*(
        3.24135974880936e-6*o[5] + o[15]*((1.40077319158051e-8 +
        1.04549227383804e-9*o[11])/o[13] + o[18]*(1.9941018075704e-17/(o[1]*o[
        2]*o[20]*o[3]) + o[14]*(-4.48827542684151e-19/o[21] + o[19]*(-1.00075970318621e-21
        *o[27] + pi1*(4.65957282962769e-22*o[25] + pi1*(-7.2912378325616e-23*
        o[23] + (3.83502057899078e-24*pi1)/(o[1]*o[21]*o[3])))))))))))) + o[8]
        *(-0.29265942426334 + tau1*(0.84548187169114 + o[1]*(3.3855169168385
         + tau1*(-1.91583926775744 + tau1*(0.47316115539684 + (-0.066465668798004
         + 0.0040607314991784*tau1)*tau1)))));

      h := data.RH2O*T*tau*gtau;
      s := data.RH2O*(tau*gtau - g);
    end handsofpT1;

* * * * *

![image28](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).hofps1
=======================================================================================================================================================================================================================================================================

**function for isentropic specific enthalpy in region 1**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name Defaul Description
                                                   t      
  ------------------------------------------- ---- ------ -----------------
  [Pressure](Modelica_SIunits.html#Modelica.S p           pressure [Pa]
  Iunits.Pressure)                                        

  [SpecificEntropy](Modelica_SIunits.html#Mod s           specific entropy
  elica.SIunits.SpecificEntropy)                          [J/(kg.K)]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hofps1 
      "function for isentropic specific enthalpy in region 1"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      SI.Temperature T "temperature (K)";
    algorithm 
      T := Basic.tps1(p, s);
      h := hofpT1(p, T);
    end hofps1;

* * * * *

![image29](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).hofpT2
=======================================================================================================================================================================================================================================================================

**intermediate function for isentropic specific enthalpy in region 2**

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

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hofpT2 
      "intermediate function for isentropic specific enthalpy in region 2"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature (K)";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real[16] o "vector of auxiliary variables";
      Real pi "dimensionless pressure";
      Real tau "dimensionless temperature";
      Real tau2 "dimensionless temperature";
    algorithm 
      assert(p > triple.ptriple,
        "IF97 medium function hofpT2 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      pi := p/data.PSTAR2;
      tau := data.TSTAR2/T;
      tau2 := -0.5 + tau;
      o[1] := tau*tau;
      o[2] := o[1]*o[1];
      o[3] := tau2*tau2;
      o[4] := o[3]*tau2;
      o[5] := o[3]*o[3];
      o[6] := o[5]*o[5];
      o[7] := o[6]*o[6];
      o[8] := o[5]*o[6]*o[7]*tau2;
      o[9] := o[3]*o[5];
      o[10] := o[5]*o[6]*tau2;
      o[11] := o[3]*o[7]*tau2;
      o[12] := o[3]*o[5]*o[6];
      o[13] := o[5]*o[6]*o[7];
      o[14] := pi*pi;
      o[15] := o[14]*o[14];
      o[16] := o[7]*o[7];

      h := data.RH2O*T*tau*((0.0280439559151 + tau*(-0.2858109552582 + tau*(
        1.2213149471784 + tau*(-2.848163942888 + tau*(4.38395111945 + o[1]*(
        10.08665568018 + (-0.5681726521544 + 0.06380539059921*tau)*tau))))))/
        (o[1]*o[2]) + pi*(-0.017834862292358 + tau2*(-0.09199202739273 + (-0.172743777250296
         - 0.30195167236758*o[4])*tau2) + pi*(-0.000033032641670203 + (-0.0003789797503263
         + o[3]*(-0.015757110897342 + o[4]*(-0.306581069554011 -
        0.000960283724907132*o[8])))*tau2 + pi*(4.3870667284435e-7 + o[3]*(-0.00009683303171571
         + o[4]*(-0.0090203547252888 - 1.42338887469272*o[8])) + pi*(-7.8847309559367e-10
         + (2.558143570457e-8 + 1.44676118155521e-6*tau2)*tau2 + pi*(
        0.0000160454534363627*o[9] + pi*((-5.0144299353183e-11 + o[10]*(-0.033874355714168
         - 836.35096769364*o[11]))*o[3] + pi*((-0.0000138839897890111 -
        0.973671060893475*o[12])*o[3]*o[6] + pi*((9.0049690883672e-11 -
        296.320827232793*o[13])*o[3]*o[5]*tau2 + pi*(2.57526266427144e-7*o[5]
        *o[6] + pi*(o[4]*(4.1627860840696e-19 + (-1.0234747095929e-12 -
        1.40254511313154e-8*o[5])*o[9]) + o[14]*o[15]*(o[13]*(-2.34560435076256e-9
         + 5.3465159397045*o[5]*o[7]*tau2) + o[14]*(-19.1874828272775*o[16]*o[
        6]*o[7] + o[14]*(o[11]*(1.78371690710842e-23 + (1.07202609066812e-11
         - 0.000201611844951398*o[10])*o[3]*o[5]*o[6]*tau2) + pi*(-1.24017662339842e-24
        *o[5]*o[7] + pi*(0.000200482822351322*o[16]*o[5]*o[7] + pi*(-4.97975748452559e-14
        *o[16]*o[3]*o[5] + o[6]*o[7]*(1.90027787547159e-27 + o[12]*(
        2.21658861403112e-15 - 0.0000547344301999018*o[3]*o[7]))*pi*tau2)))))))))))))))));
    end hofpT2;

* * * * *

![image30](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).handsofpT2
===========================================================================================================================================================================================================================================================================

**function for isentropic specific enthalpy and specific entropy in
region 2**

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

  -------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- ------------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelic h     specific enthalpy
  a.SIunits.SpecificEnthalpy)                            [J/kg]

  [SpecificEntropy](Modelica_SIunits.html#Modelica s     specific entropy
  .SIunits.SpecificEntropy)                              [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function handsofpT2 
      "function for isentropic specific enthalpy and specific entropy in region 2"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature (K)";
      output SI.SpecificEnthalpy h "specific enthalpy";
      output SI.SpecificEntropy s "specific entropy";
    protected 
      Real[22] o "vector of auxiliary variables";
      Real pi "dimensionless pressure";
      Real tau "dimensionless temperature";
      Real tau2 "dimensionless temperature";
      Real g "dimensionless Gibbs energy";
      Real gtau "derivative of  dimensionless Gibbs energy w.r.t. tau";
    algorithm 
      assert(p > triple.ptriple,
        "IF97 medium function handsofpT2 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      tau := data.TSTAR2/T;
      pi := p/data.PSTAR2;
      tau2 := tau - 0.5;
      o[1] := tau2*tau2;
      o[2] := o[1]*tau2;
      o[3] := o[1]*o[1];
      o[4] := o[3]*o[3];
      o[5] := o[4]*o[4];
      o[6] := o[3]*o[4]*o[5]*tau2;
      o[7] := o[1]*o[3]*tau2;
      o[8] := o[3]*o[4]*tau2;
      o[9] := o[1]*o[5]*tau2;
      o[10] := o[1]*o[3]*o[4];
      o[11] := o[3]*o[4]*o[5];
      o[12] := o[1]*o[3];
      o[13] := pi*pi;
      o[14] := o[13]*o[13];
      o[15] := o[13]*o[14];
      o[16] := o[3]*o[5]*tau2;
      o[17] := o[5]*o[5];
      o[18] := o[3]*o[5];
      o[19] := o[1]*o[3]*o[4]*tau2;
      o[20] := o[1]*o[5];
      o[21] := tau*tau;
      o[22] := o[21]*o[21];

      g := pi*(-0.0017731742473213 + tau2*(-0.017834862292358 + tau2*(-0.045996013696365
         + (-0.057581259083432 - 0.05032527872793*o[2])*tau2)) + pi*(tau2*(-0.000033032641670203
         + (-0.00018948987516315 + o[1]*(-0.0039392777243355 + o[2]*(-0.043797295650573
         - 0.000026674547914087*o[6])))*tau2) + pi*(2.0481737692309e-8 + (
        4.3870667284435e-7 + o[1]*(-0.00003227767723857 + o[2]*(-0.0015033924542148
         - 0.040668253562649*o[6])))*tau2 + pi*(tau2*(-7.8847309559367e-10 +
        (1.2790717852285e-8 + 4.8225372718507e-7*tau2)*tau2) + pi*(
        2.2922076337661e-6*o[7] + pi*(o[2]*(-1.6714766451061e-11 + o[8]*(-0.0021171472321355
         - 23.895741934104*o[9])) + pi*(-5.905956432427e-18 + o[1]*(-1.2621808899101e-6
         - 0.038946842435739*o[10])*o[4]*tau2 + pi*((1.1256211360459e-11 -
        8.2311340897998*o[11])*o[4] + pi*(1.9809712802088e-8*o[8] + pi*((
        1.0406965210174e-19 + o[12]*(-1.0234747095929e-13 -
        1.0018179379511e-9*o[3]))*o[3] + o[15]*((-8.0882908646985e-11 +
        0.10693031879409*o[16])*o[6] + o[13]*(-0.33662250574171*o[17]*o[4]*o[
        5]*tau2 + o[13]*(o[18]*(8.9185845355421e-25 + o[19]*(
        3.0629316876232e-13 - 4.2002467698208e-6*o[8])) + pi*(-5.9056029685639e-26
        *o[16] + pi*(3.7826947613457e-6*o[17]*o[3]*o[5]*tau2 + pi*(o[1]*(
        7.3087610595061e-29 + o[10]*(5.5414715350778e-17 - 9.436970724121e-7*
        o[20]))*o[4]*o[5]*pi - 1.2768608934681e-15*o[1]*o[17]*o[3]*tau2))))))))))))))))
         + (-0.00560879118302 + tau*(0.07145273881455 + tau*(-0.4071049823928
         + tau*(1.424081971444 + tau*(-4.38395111945 + tau*(-9.692768600217
         + tau*(10.08665568018 + (-0.2840863260772 + 0.02126846353307*tau)*
        tau) + Modelica.Math.log(pi)))))))/(o[22]*tau);

      gtau := (0.0280439559151 + tau*(-0.2858109552582 + tau*(1.2213149471784
         + tau*(-2.848163942888 + tau*(4.38395111945 + o[21]*(10.08665568018
         + (-0.5681726521544 + 0.06380539059921*tau)*tau))))))/(o[21]*o[22])
         + pi*(-0.017834862292358 + tau2*(-0.09199202739273 + (-0.172743777250296
         - 0.30195167236758*o[2])*tau2) + pi*(-0.000033032641670203 + (-0.0003789797503263
         + o[1]*(-0.015757110897342 + o[2]*(-0.306581069554011 -
        0.000960283724907132*o[6])))*tau2 + pi*(4.3870667284435e-7 + o[1]*(-0.00009683303171571
         + o[2]*(-0.0090203547252888 - 1.42338887469272*o[6])) + pi*(-7.8847309559367e-10
         + (2.558143570457e-8 + 1.44676118155521e-6*tau2)*tau2 + pi*(
        0.0000160454534363627*o[12] + pi*(o[1]*(-5.0144299353183e-11 + o[8]*(
        -0.033874355714168 - 836.35096769364*o[9])) + pi*(o[1]*(-0.0000138839897890111
         - 0.973671060893475*o[10])*o[4] + pi*((9.0049690883672e-11 -
        296.320827232793*o[11])*o[7] + pi*(2.57526266427144e-7*o[3]*o[4] + pi
        *(o[2]*(4.1627860840696e-19 + o[12]*(-1.0234747095929e-12 -
        1.40254511313154e-8*o[3])) + o[15]*(o[11]*(-2.34560435076256e-9 +
        5.3465159397045*o[16]) + o[13]*(-19.1874828272775*o[17]*o[4]*o[5] + o[
        13]*((1.78371690710842e-23 + o[19]*(1.07202609066812e-11 -
        0.000201611844951398*o[8]))*o[9] + pi*(-1.24017662339842e-24*o[18] +
        pi*(0.000200482822351322*o[17]*o[3]*o[5] + pi*(-4.97975748452559e-14*
        o[1]*o[17]*o[3] + (1.90027787547159e-27 + o[10]*(2.21658861403112e-15
         - 0.0000547344301999018*o[20]))*o[4]*o[5]*pi*tau2))))))))))))))));

      h := data.RH2O*T*tau*gtau;
      s := data.RH2O*(tau*gtau - g);
    end handsofpT2;

* * * * *

![image31](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).hofps2
=======================================================================================================================================================================================================================================================================

**function for isentropic specific enthalpy in region 2**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name Defaul Description
                                                   t      
  ------------------------------------------- ---- ------ -----------------
  [Pressure](Modelica_SIunits.html#Modelica.S p           pressure [Pa]
  Iunits.Pressure)                                        

  [SpecificEntropy](Modelica_SIunits.html#Mod s           specific entropy
  elica.SIunits.SpecificEntropy)                          [J/(kg.K)]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hofps2 
      "function for isentropic specific enthalpy in region 2"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      SI.Temperature T "temperature (K)";
    algorithm 
      T := Basic.tps2(p, s);
      h := hofpT2(p, T);
    end hofps2;

* * * * *

![image32](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).hofdT3
=======================================================================================================================================================================================================================================================================

**function for isentropic specific enthalpy in region 3**

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

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hofdT3 
      "function for isentropic specific enthalpy in region 3"

      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature (K)";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real delta;
      Real tau "dimensionless temperature";
      Real[13] o "vector of auxiliary variables";
      Real ftau "derivative of  dimensionless Helmholtz energy w.r.t. tau";
      Real fdelta "derivative of  dimensionless Helmholtz energy w.r.t. delta";
    algorithm 
      tau := data.TCRIT/T;
      delta := d/data.DCRIT;
      o[1] := tau*tau;
      o[2] := o[1]*o[1];
      o[3] := o[2]*o[2];
      o[4] := o[3]*tau;
      o[5] := o[1]*o[2]*o[3]*tau;
      o[6] := o[2]*o[3];
      o[7] := o[1]*o[3];
      o[8] := o[3]*o[3];
      o[9] := o[1]*o[2]*o[8];
      o[10] := o[1]*o[2]*o[8]*tau;
      o[11] := o[3]*o[8];
      o[12] := o[3]*o[8]*tau;
      o[13] := o[1]*o[3]*o[8];

      ftau := 20.944396974307 + tau*(-15.3735415757432 + o[2]*tau*(
        18.3301634515678 + o[1]*tau*(-28.08078114862 + o[1]*(14.4640436358204
         - 0.194503669468755*o[1]*o[3]*tau)))) + delta*((-2.5308630955428 + o[
        2]*(-6.9146446840086 + (13.2781565976477 - 10.9153200808732*o[1])*o[4]))
        *tau + delta*(tau*(-1.70429417648412 + o[2]*(29.3833689251262 + (-21.3518320798755
         + (0.867251811341388 + 3.26518619032008*o[2])*o[5])*tau)) + delta*((
        2.779959913892 + o[1]*(-8.075966009428 + o[6]*(-0.131436219478341 -
        12.37496929108*o[7])))*tau + delta*((-0.88952870857478 + o[1]*(
        3.62288282878932 + 18.3358370228714*o[9]))*tau + delta*(
        0.10770512626332 + o[1]*(-0.98740869776862 - 13.2264761307011*o[10])
         + delta*((0.188521503330184 + 4.27343239646986*o[11])*tau + delta*(-0.027006744482696
        *tau + delta*(-0.385692979164272*o[12] + delta*(delta*(-0.00016557679795037
         - 0.00116802137560719*delta*o[12]) + (0.00115845907256168 +
        0.0840031522296486*o[11])*tau)))))))));

      fdelta := (1.0658070028513 + delta*(o[1]*(-1.2654315477714 + o[2]*(-1.1524407806681
         + (0.88521043984318 - 0.64207765181607*o[1])*o[4])) + delta*(
        0.76986920373342 + o[1]*(-1.70429417648412 + o[2]*(9.7944563083754 +
        (-6.100523451393 + (0.078841073758308 + 0.25116816848616*o[2])*o[5])*
        tau)) + delta*(-0.8399798909613 + o[1]*(4.169939870838 + o[1]*(-6.056974507071
         + o[6]*(-0.0246442911521889 - 1.42788107204769*o[7]))) + delta*(
        0.175936297894 + o[1]*(-1.77905741714956 + o[1]*(3.62288282878932 +
        2.82089800351868*o[9])) + delta*(delta*(-0.133052405238576 + o[1]*(
        0.565564509990552 + 0.98617670687766*o[11]) + delta*(-0.094523605689436
        *o[1] + delta*(-0.118674762819776*o[13] + delta*(o[1]*(
        0.00521306582652756 + 0.0290780142333399*o[11]) + delta*(
        0.00080964802996215 - 0.000494162889679965*delta*o[13] -
        0.0016557679795037*tau))))) + (0.5385256313166 + o[1]*(-1.6456811629477
         - 2.5435531020579*o[10]))*tau))))))/delta;

      h := data.RH2O*T*(tau*ftau + delta*fdelta);
    end hofdT3;

* * * * *

![image33](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).hofps3
=======================================================================================================================================================================================================================================================================

**isentropic specific enthalpy in region 3 h(p,s)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name Defaul Description
                                                   t      
  ------------------------------------------- ---- ------ -----------------
  [Pressure](Modelica_SIunits.html#Modelica.S p           pressure [Pa]
  Iunits.Pressure)                                        

  [SpecificEntropy](Modelica_SIunits.html#Mod s           specific entropy
  elica.SIunits.SpecificEntropy)                          [J/(kg.K)]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hofps3 "isentropic specific enthalpy in region 3 h(p,s)"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      SI.Density d "density";
      SI.Temperature T "temperature (K)";
      SI.Pressure delp=IterationData.DELP "iteration accuracy";
      SI.SpecificEntropy dels=IterationData.DELS "iteration accuracy";
      Integer error "error if not 0";
    algorithm 
      (d,T,error) := Inverses.dtofps3(p=p,s= s,delp= delp,dels= dels);
      h := hofdT3(d, T);
    end hofps3;

* * * * *

![image34](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).hofpsdt3
=========================================================================================================================================================================================================================================================================

**isentropic specific enthalpy in region 3 h(p,s) with given good guess
in d and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name Default   Description
  --------------------------------- ---- --------- ------------------------
  [Pressure](Modelica_SIunits.html# p              pressure [Pa]
  Modelica.SIunits.Pressure)                       

  [SpecificEntropy](Modelica_SIunit s              specific entropy
  s.html#Modelica.SIunits.SpecificE                [J/(kg.K)]
  ntropy)                                          

  [Density](Modelica_SIunits.html#M dgue           good guess density,
  odelica.SIunits.Density)          ss             e.g., from adjacent
                                                   volume [kg/m3]

  [Temperature](Modelica_SIunits.ht Tgue           good guess temperature,
  ml#Modelica.SIunits.Temperature)  ss             e.g., from adjacent
                                                   volume [K]

  [Pressure](Modelica_SIunits.html# delp Iteration relative error in p [Pa]
  Modelica.SIunits.Pressure)             Data.DELP 

  [SpecificEntropy](Modelica_SIunit dels Iteration relative error in s
  s.html#Modelica.SIunits.SpecificE      Data.DELS [J/(kg.K)]
  ntropy)                                          
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hofpsdt3 
      "isentropic specific enthalpy in region 3 h(p,s) with given good guess in d and T"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input SI.Density dguess "good guess density, e.g., from adjacent volume";
      input SI.Temperature Tguess 
        "good guess temperature, e.g., from adjacent volume";
      input SI.Pressure delp=IterationData.DELP "relative error in p";
      input SI.SpecificEntropy dels=IterationData.DELS "relative error in s";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      SI.Density d "density";
      SI.Temperature T "temperature (K)";
      Integer error "error flag";
    algorithm 
      (d,T,error) := Inverses.dtofpsdt3(p=p,s= s,dguess= dguess,Tguess=
        Tguess,delp= delp,dels= dels);
      h := hofdT3(d, T);
    end hofpsdt3;

* * * * *

![image35](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).hofps4
=======================================================================================================================================================================================================================================================================

**isentropic specific enthalpy in region 4 h(p,s)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name Defaul Description
                                                   t      
  ------------------------------------------- ---- ------ -----------------
  [Pressure](Modelica_SIunits.html#Modelica.S p           pressure [Pa]
  Iunits.Pressure)                                        

  [SpecificEntropy](Modelica_SIunits.html#Mod s           specific entropy
  elica.SIunits.SpecificEntropy)                          [J/(kg.K)]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hofps4 "isentropic specific enthalpy in region 4 h(p,s)"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      SI.Temp_K Tsat "saturation temperature";
      SI.MassFraction x "dryness fraction";
      SI.SpecificEntropy sl "saturated liquid specific entropy";
      SI.SpecificEntropy sv "saturated vapour specific entropy";
      SI.SpecificEnthalpy hl "saturated liquid specific enthalpy";
      SI.SpecificEnthalpy hv "saturated vapour specific enthalpy";
    algorithm 
      if (p <= data.PLIMIT4A) then
        Tsat := Basic.tsat(p);
        (hl,sl) := handsofpT1(p, Tsat);
        (hv,sv) := handsofpT2(p, Tsat);
      elseif (p < data.PCRIT) then
        sl := Regions.sl_p_R4b(p);
        sv := Regions.sv_p_R4b(p);
        hl := Regions.hl_p_R4b(p);
        hv := Regions.hv_p_R4b(p);
      end if;
      x := max(min(if sl <> sv then (s - sl)/(sv - sl) else 1.0, 1.0),0.0);
      h := hl + x*(hv - hl);
    end hofps4;

* * * * *

![image36](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).hofpT5
=======================================================================================================================================================================================================================================================================

**specific enthalpy in region 5 h(p,T)**

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

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hofpT5 "specific enthalpy in region 5 h(p,T)"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature (K)";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real[4] o "vector of auxiliary variables";
      Real tau "dimensionless temperature";
      Real pi "dimensionless pressure";
    algorithm 
      tau := data.TSTAR5/T;
      pi := p/data.PSTAR5;
      assert(p > triple.ptriple,
        "IF97 medium function hofpT5 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      o[1] := tau*tau;
      o[2] := o[1]*o[1];
      o[3] := pi*pi;
      o[4] := o[2]*o[2];
      h := data.RH2O*T*tau*(6.8540841634434 + 3.1161318213925/o[1] +
        0.074415446800398/o[2] - 0.0000357523455236121*o[3]*o[4] +
        0.0021774678714571*pi - 0.013782846269973*o[1]*pi +
        3.8757684869352e-7*o[1]*o[3]*pi - 0.73803069960666/(o[1]*tau) -
        0.65923253077834*tau);
    end hofpT5;

* * * * *

![image37](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).water\_hisentropic
===================================================================================================================================================================================================================================================================================

**isentropic specific enthalpy from p,s (preferably use
water\_hisentropic\_dyn in dynamic simulation!)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                 Name Defau Description
                                            lt    
  ------------------------------------ ---- ----- --------------------------
  [Pressure](Modelica_SIunits.html#Mod p          pressure [Pa]
  elica.SIunits.Pressure)                         

  [SpecificEntropy](Modelica_SIunits.h s          specific entropy
  tml#Modelica.SIunits.SpecificEntropy            [J/(kg.K)]
  )                                               

  Integer                              phas 0     phase: 2 for two-phase, 1
                                       e          for one phase, 0 if
                                                  unknown
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function water_hisentropic 
      "isentropic specific enthalpy from p,s (preferably use water_hisentropic_dyn in dynamic simulation!)"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
     input Integer phase=
                    0 "phase: 2 for two-phase, 1 for one phase, 0 if unknown";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Modelica.Media.Common.GibbsDerivs g 
        "derivatives of dimensionless Gibbs-function w.r.t. dimensionless pi and tau";
      Modelica.Media.Common.HelmholtzDerivs f 
        "derivatives of dimensionless Helmholtz-function w.r.t. dimensionless delta and tau";
      Integer region(min=1, max=5) "IF97 region";
      Integer error "error if not 0";
      SI.Temperature T "temperature";
      SI.Density d "density";
    algorithm 
      region := Regions.region_ps(p=p,s= s,phase=phase);
      if (region == 1) then
        h := hofps1(p, s);
      elseif (region == 2) then
        h := hofps2(p, s);
      elseif (region == 3) then
        (d,T,error) := Inverses.dtofps3(p=p,s= s,delp= IterationData.DELP,dels=
               IterationData.DELS);
        h := hofdT3(d, T);
      elseif (region == 4) then
        h := hofps4(p, s);
      elseif (region == 5) then
        (T,error) := Inverses.tofps5(p=p,s= s,relds= IterationData.DELS);
        h := hofpT5(p, T);
      end if;
    end water_hisentropic;

* * * * *

![image38](Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic.hofpT1I.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Isentropic](Modelica_Media_Water_IF97_Utilities_BaseIF97_Isentropic.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Isentropic).water\_hisentropic\_dyn
========================================================================================================================================================================================================================================================================================

**isentropic specific enthalpy from p,s and good guesses of d and T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                Name Defau Description
                                           lt    
  ----------------------------------- ---- ----- --------------------------
  [Pressure](Modelica_SIunits.html#Mo p          pressure [Pa]
  delica.SIunits.Pressure)                       

  [SpecificEntropy](Modelica_SIunits. s          specific entropy
  html#Modelica.SIunits.SpecificEntro            [J/(kg.K)]
  py)                                            

  [Density](Modelica_SIunits.html#Mod dgue       good guess density, e.g.,
  elica.SIunits.Density)              ss         from adjacent volume
                                                 [kg/m3]

  [Temperature](Modelica_SIunits.html Tgue       good guess temperature,
  #Modelica.SIunits.Temperature)      ss         e.g., from adjacent volume
                                                 [K]

  Integer                             phas       1 for one phase, 2 for two
                                      e          phase
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function water_hisentropic_dyn 
      "isentropic specific enthalpy from p,s and good guesses of d and T"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input SI.Density dguess "good guess density, e.g., from adjacent volume";
      input SI.Temperature Tguess 
        "good guess temperature, e.g., from adjacent volume";
      input Integer phase "1 for one phase, 2 for two phase";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Modelica.Media.Common.GibbsDerivs g 
        "derivatives of dimensionless Gibbs-function w.r.t. dimensionless pi and tau";
      Modelica.Media.Common.HelmholtzDerivs f 
        "derivatives of dimensionless Helmholtz-function w.r.t. dimensionless delta and tau";
      Integer region(min=1, max=5) "IF97 region";
      Integer error "error if not 0";
      SI.Temperature T "temperature";
      SI.Density d "density";
    algorithm 
      region := Regions.region_ps(p=p,s= s,phase= phase);
      if (region == 1) then
        h := hofps1(p, s);
      elseif (region == 2) then
        h := hofps2(p, s);
      elseif (region == 3) then
        h := hofpsdt3(p=p,s= s,dguess= dguess,Tguess= Tguess,delp=
          IterationData.DELP,dels= IterationData.DELS);
      elseif (region == 4) then
        h := hofps4(p, s);
      elseif (region == 5) then
        (T,error) := Inverses.tofpst5(p=p,s= s,Tguess= Tguess,relds=
          IterationData.DELS);
        h := hofpT5(p, T);
      end if;
    end water_hisentropic_dyn;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:40 2010.
