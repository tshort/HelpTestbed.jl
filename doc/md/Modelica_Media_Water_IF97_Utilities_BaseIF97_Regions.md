% Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions
% 
% 

[Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).Regions
=======================================================================================================================================================

**functions to find the current region for given pairs of input
variables**

Information
-----------

::

### Package description

Package **Regions** contains a large number of auxiliary functions which
are neede to compute the current region of the IAPWS/IF97 for a given
pair of input variables as quickly as possible. The focus of this
implementation was on computational efficiency, not on compact code.
Many of the function values calulated in these functions could be
obtained using the fundamental functions of IAPWS/IF97, but with
considerable overhead. If the region of IAPWS/IF97 is known in advance,
the input variable mode can be set to the region, then the somewhat
costly region checks are omitted. The checking for the phase has to be
done outside the region functions because many properties are not
differentiable at the region boundary. If the input phase is 2, the
output region will be set to 4 immediately.

### Package contents

The main 4 functions in this package are the functions returning the
appropriate region for two input variables.

-   Function **region\_ph** compute the region of IAPWS/IF97 for input
    pair pressure and specific enthalpy.
-   Function **region\_ps** compute the region of IAPWS/IF97 for input
    pair pressure and specific entropy
-   Function **region\_dT** compute the region of IAPWS/IF97 for input
    pair density and temperature.
-   Function **region\_pT** compute the region of IAPWS/IF97 for input
    pair pressure and temperature (only ine phase region).

In addition, functions of the boiling and condensation curves compute
the specific enthalpy, specific entropy, or density on these curves. The
functions for the saturation pressure and temperature are included in
the package **Basic** because they are part of the original IAPWS/IF97
standards document. These functions are also aliased to be used directly
from package **Water**.

-   Function **hl\_p** computes the liquid specific enthalpy as a
    function of pressure. For overcritical pressures, the critical
    specific enthalpy is returned. An approximation is used for
    temperatures \> 623.15 K.
-   Function **hv\_p** computes the vapour specific enthalpy as a
    function of pressure. For overcritical pressures, the critical
    specific enthalpy is returned. An approximation is used for
    temperatures \> 623.15 K.
-   Function **sl\_p** computes the liquid specific entropy as a
    function of pressure. For overcritical pressures, the critical
    specific entropy is returned. An approximation is used for
    temperatures \> 623.15 K.
-   Function **sv\_p** computes the vapour specific entropy as a
    function of pressure. For overcritical pressures, the critical
    specific entropyis returned. An approximation is used for
    temperatures \> 623.15 K.
-   Function **rhol\_T** computes the liquid density as a function of
    temperature. For overcritical temperatures, the critical density is
    returned. An approximation is used for temperatures \> 623.15 K.
-   Function **rhol\_T** computes the vapour density as a function of
    temperature. For overcritical temperatures, the critical density is
    returned. An approximation is used for temperatures \> 623.15 K.

All other functions are auxiliary functions called from the region
functions to check a specific boundary.

-   Function **boundary23ofT** computes the boundary pressure between
    regions 2 and 3 (input temperature)
-   Function **boundary23ofp** computes the boundary temperature between
    regions 2 and 3 (input pressure)
-   Function **hlowerofp5** computes the lower specific enthalpy limit
    of region 5 (input p, T=1073.15 K)
-   Function **hupperofp5** computes the upper specific enthalpy limit
    of region 5 (input p, T=2273.15 K)
-   Function **slowerofp5** computes the lower specific entropy limit of
    region 5 (input p, T=1073.15 K)
-   Function **supperofp5** computes the upper specific entropy limit of
    region 5 (input p, T=2273.15 K)
-   Function **hlowerofp1** computes the lower specific enthalpy limit
    of region 1 (input p, T=273.15 K)
-   Function **hupperofp1** computes the upper specific enthalpy limit
    of region 1 (input p, T=623.15 K)
-   Function **slowerofp1** computes the lower specific entropy limit of
    region 1 (input p, T=273.15 K)
-   Function **supperofp1** computes the upper specific entropy limit of
    region 1 (input p, T=623.15 K)
-   Function **hlowerofp2** computes the lower specific enthalpy limit
    of region 2 (input p, T=623.15 K)
-   Function **hupperofp2** computes the upper specific enthalpy limit
    of region 2 (input p, T=1073.15 K)
-   Function **slowerofp2** computes the lower specific entropy limit of
    region 2 (input p, T=623.15 K)
-   Function **supperofp2** computes the upper specific entropy limit of
    region 2 (input p, T=1073.15 K)
-   Function **d1n** computes the density in region 1 as function of
    pressure and temperature
-   Function **d2n** computes the density in region 2 as function of
    pressure and temperature
-   Function **dhot1ofp** computes the hot density limit of region 1
    (input p, T=623.15 K)
-   Function **dupper1ofT**computes the high pressure density limit of
    region 1 (input T, p=100MPa)
-   Function **hl\_p\_R4b** computes a high accuracy approximation to
    the liquid enthalpy for temperatures \> 623.15 K (input p)
-   Function **hv\_p\_R4b** computes a high accuracy approximation to
    the vapour enthalpy for temperatures \> 623.15 K (input p)
-   Function **sl\_p\_R4b** computes a high accuracy approximation to
    the liquid entropy for temperatures \> 623.15 K (input p)
-   Function **sv\_p\_R4b** computes a high accuracy approximation to
    the vapour entropy for temperatures \> 623.15 K (input p)
-   Function **rhol\_p\_R4b** computes a high accuracy approximation to
    the liquid density for temperatures \> 623.15 K (input p)
-   Function **rhov\_p\_R4b** computes a high accuracy approximation to
    the vapour density for temperatures \> 623.15 K (input p)

### Version Info and Revision history

-   First implemented: *July, 2000* by [Hubertus
    Tummescheit](http://www.control.lth.se/~hubertus/)

Authors: Hubertus Tummescheit, Jonas Eborn and Falko Jens Wagner
  ~ Modelon AB Ideon Science Park SE-22370 Lund, Sweden email:
    [hubertus@modelon.se](mailto:hubertus@modelon.se)

-   Initial version: July 2000
-   Revised and extended for inclusion in Modelica.Thermal: December
    2002

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                         Description
  -------------------------------------------- ---------------------------
  ![image48](Modelica.Media.Water.IF97_Utiliti boundary function for
  es.BaseIF97.extraDerivs_phS.png)             region boundary between
  [boundary23ofT](Modelica_Media_Water_IF97_Ut regions 2 and 3 (input
  ilities_BaseIF97_Regions.html#Modelica.Media temperature)
  .Water.IF97_Utilities.BaseIF97.Regions.bound 
  ary23ofT)                                    

  ![image49](Modelica.Media.Water.IF97_Utiliti boundary function for
  es.BaseIF97.extraDerivs_phS.png)             region boundary between
  [boundary23ofp](Modelica_Media_Water_IF97_Ut regions 2 and 3 (input
  ilities_BaseIF97_Regions.html#Modelica.Media pressure)
  .Water.IF97_Utilities.BaseIF97.Regions.bound 
  ary23ofp)                                    

  ![image50](Modelica.Media.Water.IF97_Utiliti explicit lower specific
  es.BaseIF97.extraDerivs_phS.png)             enthalpy limit of region 5
  [hlowerofp5](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa 
  ter.IF97_Utilities.BaseIF97.Regions.hlowerof 
  p5)                                          

  ![image51](Modelica.Media.Water.IF97_Utiliti explicit upper specific
  es.BaseIF97.extraDerivs_phS.png)             enthalpy limit of region 5
  [hupperofp5](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa 
  ter.IF97_Utilities.BaseIF97.Regions.hupperof 
  p5)                                          

  ![image52](Modelica.Media.Water.IF97_Utiliti explicit lower specific
  es.BaseIF97.extraDerivs_phS.png)             entropy limit of region 5
  [slowerofp5](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa 
  ter.IF97_Utilities.BaseIF97.Regions.slowerof 
  p5)                                          

  ![image53](Modelica.Media.Water.IF97_Utiliti explicit upper specific
  es.BaseIF97.extraDerivs_phS.png)             entropy limit of region 5
  [supperofp5](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa 
  ter.IF97_Utilities.BaseIF97.Regions.supperof 
  p5)                                          

  ![image54](Modelica.Media.Water.IF97_Utiliti explicit lower specific
  es.BaseIF97.extraDerivs_phS.png)             enthalpy limit of region 1
  [hlowerofp1](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa 
  ter.IF97_Utilities.BaseIF97.Regions.hlowerof 
  p1)                                          

  ![image55](Modelica.Media.Water.IF97_Utiliti explicit upper specific
  es.BaseIF97.extraDerivs_phS.png)             enthalpy limit of region 1
  [hupperofp1](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa (meets region 4 saturation
  ter.IF97_Utilities.BaseIF97.Regions.hupperof pressure curve at 623.15 K)
  p1)                                          

  ![image56](Modelica.Media.Water.IF97_Utiliti explicit lower specific
  es.BaseIF97.extraDerivs_phS.png)             entropy limit of region 1
  [slowerofp1](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa 
  ter.IF97_Utilities.BaseIF97.Regions.slowerof 
  p1)                                          

  ![image57](Modelica.Media.Water.IF97_Utiliti explicit upper specific
  es.BaseIF97.extraDerivs_phS.png)             entropy limit of region 1
  [supperofp1](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa (meets region 4 saturation
  ter.IF97_Utilities.BaseIF97.Regions.supperof pressure curve at 623.15 K)
  p1)                                          

  ![image58](Modelica.Media.Water.IF97_Utiliti explicit lower specific
  es.BaseIF97.extraDerivs_phS.png)             enthalpy limit of region 2
  [hlowerofp2](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa (meets region 4 saturation
  ter.IF97_Utilities.BaseIF97.Regions.hlowerof pressure curve at 623.15 K)
  p2)                                          

  ![image59](Modelica.Media.Water.IF97_Utiliti explicit upper specific
  es.BaseIF97.extraDerivs_phS.png)             enthalpy limit of region 2
  [hupperofp2](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa 
  ter.IF97_Utilities.BaseIF97.Regions.hupperof 
  p2)                                          

  ![image60](Modelica.Media.Water.IF97_Utiliti explicit lower specific
  es.BaseIF97.extraDerivs_phS.png)             entropy limit of region 2
  [slowerofp2](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa (meets region 4 saturation
  ter.IF97_Utilities.BaseIF97.Regions.slowerof pressure curve at 623.15 K)
  p2)                                          

  ![image61](Modelica.Media.Water.IF97_Utiliti explicit upper specific
  es.BaseIF97.extraDerivs_phS.png)             entropy limit of region 2
  [supperofp2](Modelica_Media_Water_IF97_Utili as function of pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa 
  ter.IF97_Utilities.BaseIF97.Regions.supperof 
  p2)                                          

  ![image62](Modelica.Media.Water.IF97_Utiliti density in region 1 as
  es.BaseIF97.extraDerivs_phS.png)             function of p and T
  [d1n](Modelica_Media_Water_IF97_Utilities_Ba 
  seIF97_Regions.html#Modelica.Media.Water.IF9 
  7_Utilities.BaseIF97.Regions.d1n)            

  ![image63](Modelica.Media.Water.IF97_Utiliti density in region 2 as
  es.BaseIF97.extraDerivs_phS.png)             function of p and T
  [d2n](Modelica_Media_Water_IF97_Utilities_Ba 
  seIF97_Regions.html#Modelica.Media.Water.IF9 
  7_Utilities.BaseIF97.Regions.d2n)            

  ![image64](Modelica.Media.Water.IF97_Utiliti density at upper
  es.BaseIF97.extraDerivs_phS.png)             temperature limit of region
  [dhot1ofp](Modelica_Media_Water_IF97_Utiliti 1
  es_BaseIF97_Regions.html#Modelica.Media.Wate 
  r.IF97_Utilities.BaseIF97.Regions.dhot1ofp)  

  ![image65](Modelica.Media.Water.IF97_Utiliti density at upper pressure
  es.BaseIF97.extraDerivs_phS.png)             limit of region 1
  [dupper1ofT](Modelica_Media_Water_IF97_Utili 
  ties_BaseIF97_Regions.html#Modelica.Media.Wa 
  ter.IF97_Utilities.BaseIF97.Regions.dupper1o 
  fT)                                          

  ![image66](Modelica.Media.Water.IF97_Utiliti explicit approximation of
  es.BaseIF97.extraDerivs_phS.png)             liquid specific enthalpy on
  [hl\_p\_R4b](Modelica_Media_Water_IF97_Utili the boundary between
  ties_BaseIF97_Regions.html#Modelica.Media.Wa regions 4 and 3
  ter.IF97_Utilities.BaseIF97.Regions.hl_p_R4b 
  )                                            

  ![image67](Modelica.Media.Water.IF97_Utiliti explicit approximation of
  es.BaseIF97.extraDerivs_phS.png)             vapour specific enthalpy on
  [hv\_p\_R4b](Modelica_Media_Water_IF97_Utili the boundary between
  ties_BaseIF97_Regions.html#Modelica.Media.Wa regions 4 and 3
  ter.IF97_Utilities.BaseIF97.Regions.hv_p_R4b 
  )                                            

  ![image68](Modelica.Media.Water.IF97_Utiliti explicit approximation of
  es.BaseIF97.extraDerivs_phS.png)             liquid specific entropy on
  [sl\_p\_R4b](Modelica_Media_Water_IF97_Utili the boundary between
  ties_BaseIF97_Regions.html#Modelica.Media.Wa regions 4 and 3
  ter.IF97_Utilities.BaseIF97.Regions.sl_p_R4b 
  )                                            

  ![image69](Modelica.Media.Water.IF97_Utiliti explicit approximation of
  es.BaseIF97.extraDerivs_phS.png)             vapour specific entropy on
  [sv\_p\_R4b](Modelica_Media_Water_IF97_Utili the boundary between
  ties_BaseIF97_Regions.html#Modelica.Media.Wa regions 4 and 3
  ter.IF97_Utilities.BaseIF97.Regions.sv_p_R4b 
  )                                            

  ![image70](Modelica.Media.Water.IF97_Utiliti explicit approximation of
  es.BaseIF97.extraDerivs_phS.png)             liquid density on the
  [rhol\_p\_R4b](Modelica_Media_Water_IF97_Uti boundary between regions 4
  lities_BaseIF97_Regions.html#Modelica.Media. and 3
  Water.IF97_Utilities.BaseIF97.Regions.rhol_p 
  _R4b)                                        

  ![image71](Modelica.Media.Water.IF97_Utiliti explicit approximation of
  es.BaseIF97.extraDerivs_phS.png)             vapour density on the
  [rhov\_p\_R4b](Modelica_Media_Water_IF97_Uti boundary between regions 4
  lities_BaseIF97_Regions.html#Modelica.Media. and 2
  Water.IF97_Utilities.BaseIF97.Regions.rhov_p 
  _R4b)                                        

  ![image72](Modelica.Media.Water.IF97_Utiliti properties on the boiling
  es.BaseIF97.extraDerivs_phS.png)             curve
  [boilingcurve\_p](Modelica_Media_Water_IF97_ 
  Utilities_BaseIF97_Regions.html#Modelica.Med 
  ia.Water.IF97_Utilities.BaseIF97.Regions.boi 
  lingcurve_p)                                 

  ![image73](Modelica.Media.Water.IF97_Utiliti properties on the dew curve
  es.BaseIF97.extraDerivs_phS.png)             
  [dewcurve\_p](Modelica_Media_Water_IF97_Util 
  ities_BaseIF97_Regions.html#Modelica.Media.W 
  ater.IF97_Utilities.BaseIF97.Regions.dewcurv 
  e_p)                                         

  ![image74](Modelica.Media.Water.IF97_Utiliti 
  es.BaseIF97.extraDerivs_phS.png)             
  [hvl\_p](Modelica_Media_Water_IF97_Utilities 
  _BaseIF97_Regions.html#Modelica.Media.Water. 
  IF97_Utilities.BaseIF97.Regions.hvl_p)       

  ![image75](Modelica.Media.Water.IF97_Utiliti liquid specific enthalpy on
  es.BaseIF97.extraDerivs_phS.png)             the boundary between
  [hl\_p](Modelica_Media_Water_IF97_Utilities_ regions 4 and 3 or 1
  BaseIF97_Regions.html#Modelica.Media.Water.I 
  F97_Utilities.BaseIF97.Regions.hl_p)         

  ![image76](Modelica.Media.Water.IF97_Utiliti vapour specific enthalpy on
  es.BaseIF97.extraDerivs_phS.png)             the boundary between
  [hv\_p](Modelica_Media_Water_IF97_Utilities_ regions 4 and 3 or 2
  BaseIF97_Regions.html#Modelica.Media.Water.I 
  F97_Utilities.BaseIF97.Regions.hv_p)         

  ![image77](Modelica.Media.Water.IF97_Utiliti derivative function for the
  es.BaseIF97.extraDerivs_phS.png)             specific enthalpy along the
  [hvl\_p\_der](Modelica_Media_Water_IF97_Util phase boundary
  ities_BaseIF97_Regions.html#Modelica.Media.W 
  ater.IF97_Utilities.BaseIF97.Regions.hvl_p_d 
  er)                                          

  ![image78](Modelica.Media.Water.IF97_Utiliti 
  es.BaseIF97.extraDerivs_phS.png)             
  [rhovl\_p](Modelica_Media_Water_IF97_Utiliti 
  es_BaseIF97_Regions.html#Modelica.Media.Wate 
  r.IF97_Utilities.BaseIF97.Regions.rhovl_p)   

  ![image79](Modelica.Media.Water.IF97_Utiliti density of saturated water
  es.BaseIF97.extraDerivs_phS.png)             
  [rhol\_p](Modelica_Media_Water_IF97_Utilitie 
  s_BaseIF97_Regions.html#Modelica.Media.Water 
  .IF97_Utilities.BaseIF97.Regions.rhol_p)     

  ![image80](Modelica.Media.Water.IF97_Utiliti density of saturated vapour
  es.BaseIF97.extraDerivs_phS.png)             
  [rhov\_p](Modelica_Media_Water_IF97_Utilitie 
  s_BaseIF97_Regions.html#Modelica.Media.Water 
  .IF97_Utilities.BaseIF97.Regions.rhov_p)     

  ![image81](Modelica.Media.Water.IF97_Utiliti 
  es.BaseIF97.extraDerivs_phS.png)             
  [rhovl\_p\_der](Modelica_Media_Water_IF97_Ut 
  ilities_BaseIF97_Regions.html#Modelica.Media 
  .Water.IF97_Utilities.BaseIF97.Regions.rhovl 
  _p_der)                                      

  ![image82](Modelica.Media.Water.IF97_Utiliti liquid specific entropy on
  es.BaseIF97.extraDerivs_phS.png)             the boundary between
  [sl\_p](Modelica_Media_Water_IF97_Utilities_ regions 4 and 3 or 1
  BaseIF97_Regions.html#Modelica.Media.Water.I 
  F97_Utilities.BaseIF97.Regions.sl_p)         

  ![image83](Modelica.Media.Water.IF97_Utiliti vapour specific entropy on
  es.BaseIF97.extraDerivs_phS.png)             the boundary between
  [sv\_p](Modelica_Media_Water_IF97_Utilities_ regions 4 and 3 or 2
  BaseIF97_Regions.html#Modelica.Media.Water.I 
  F97_Utilities.BaseIF97.Regions.sv_p)         

  ![image84](Modelica.Media.Water.IF97_Utiliti density of saturated water
  es.BaseIF97.extraDerivs_phS.png)             
  [rhol\_T](Modelica_Media_Water_IF97_Utilitie 
  s_BaseIF97_Regions.html#Modelica.Media.Water 
  .IF97_Utilities.BaseIF97.Regions.rhol_T)     

  ![image85](Modelica.Media.Water.IF97_Utiliti density of saturated vapour
  es.BaseIF97.extraDerivs_phS.png)             
  [rhov\_T](Modelica_Media_Water_IF97_Utilitie 
  s_BaseIF97_Regions.html#Modelica.Media.Water 
  .IF97_Utilities.BaseIF97.Regions.rhov_T)     

  ![image86](Modelica.Media.Water.IF97_Utiliti return the current region
  es.BaseIF97.extraDerivs_phS.png)             (valid values: 1,2,3,4,5)
  [region\_ph](Modelica_Media_Water_IF97_Utili in IF97 for given pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa and specific enthalpy
  ter.IF97_Utilities.BaseIF97.Regions.region_p 
  h)                                           

  ![image87](Modelica.Media.Water.IF97_Utiliti return the current region
  es.BaseIF97.extraDerivs_phS.png)             (valid values: 1,2,3,4,5)
  [region\_ps](Modelica_Media_Water_IF97_Utili in IF97 for given pressure
  ties_BaseIF97_Regions.html#Modelica.Media.Wa and specific entropy
  ter.IF97_Utilities.BaseIF97.Regions.region_p 
  s)                                           

  ![image88](Modelica.Media.Water.IF97_Utiliti return the current region
  es.BaseIF97.extraDerivs_phS.png)             (valid values: 1,2,3,5) in
  [region\_pT](Modelica_Media_Water_IF97_Utili IF97, given pressure and
  ties_BaseIF97_Regions.html#Modelica.Media.Wa temperature
  ter.IF97_Utilities.BaseIF97.Regions.region_p 
  T)                                           

  ![image89](Modelica.Media.Water.IF97_Utiliti return the current region
  es.BaseIF97.extraDerivs_phS.png)             (valid values: 1,2,3,4,5)
  [region\_dT](Modelica_Media_Water_IF97_Utili in IF97, given density and
  ties_BaseIF97_Regions.html#Modelica.Media.Wa temperature
  ter.IF97_Utilities.BaseIF97.Regions.region_d 
  T)                                           

  ![image90](Modelica.Media.Water.IF97_Utiliti derivative function for the
  es.BaseIF97.extraDerivs_phS.png)             specific enthalpy along the
  [hvl\_dp](Modelica_Media_Water_IF97_Utilitie phase boundary
  s_BaseIF97_Regions.html#Modelica.Media.Water 
  .IF97_Utilities.BaseIF97.Regions.hvl_dp)     

  ![image91](Modelica.Media.Water.IF97_Utiliti derivative of liquid
  es.BaseIF97.extraDerivs_phS.png)             specific enthalpy on the
  [dhl\_dp](Modelica_Media_Water_IF97_Utilitie boundary between regions 4
  s_BaseIF97_Regions.html#Modelica.Media.Water and 3 or 1 w.r.t. pressure
  .IF97_Utilities.BaseIF97.Regions.dhl_dp)     

  ![image92](Modelica.Media.Water.IF97_Utiliti derivative of vapour
  es.BaseIF97.extraDerivs_phS.png)             specific enthalpy on the
  [dhv\_dp](Modelica_Media_Water_IF97_Utilitie boundary between regions 4
  s_BaseIF97_Regions.html#Modelica.Media.Water and 3 or 1 w.r.t. pressure
  .IF97_Utilities.BaseIF97.Regions.dhv_dp)     

  ![image93](Modelica.Media.Water.IF97_Utiliti 
  es.BaseIF97.extraDerivs_phS.png)             
  [drhovl\_dp](Modelica_Media_Water_IF97_Utili 
  ties_BaseIF97_Regions.html#Modelica.Media.Wa 
  ter.IF97_Utilities.BaseIF97.Regions.drhovl_d 
  p)                                           

  ![image94](Modelica.Media.Water.IF97_Utiliti derivative of density of
  es.BaseIF97.extraDerivs_phS.png)             saturated water w.r.t.
  [drhol\_dp](Modelica_Media_Water_IF97_Utilit pressure
  ies_BaseIF97_Regions.html#Modelica.Media.Wat 
  er.IF97_Utilities.BaseIF97.Regions.drhol_dp) 

  ![image95](Modelica.Media.Water.IF97_Utiliti derivative of density of
  es.BaseIF97.extraDerivs_phS.png)             saturated steam w.r.t.
  [drhov\_dp](Modelica_Media_Water_IF97_Utilit pressure
  ies_BaseIF97_Regions.html#Modelica.Media.Wat 
  er.IF97_Utilities.BaseIF97.Regions.drhov_dp) 
  ------------------------------------------------------------------------

* * * * *

![image96](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).boundary23ofT
=========================================================================================================================================================================================================================================================================

**boundary function for region boundary between regions 2 and 3 (input
temperature)**

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
  [Temperature](Modelica_SIunits.html#Modelica t             temperature
  .SIunits.Temperature)                                      (K) [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ -------------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits.P p      pressure [Pa]
  ressure)                                                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function boundary23ofT 
      "boundary function for region boundary between regions 2 and 3 (input temperature)"

      extends Modelica.Icons.Function;
      input SI.Temperature t "temperature (K)";
      output SI.Pressure p "pressure";
    protected 
      constant Real[5] n=data.n;
    algorithm 
      p := 1.0e6*(n[1] + t*(n[2] + t*n[3]));
    end boundary23ofT;

* * * * *

![image97](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).boundary23ofp
=========================================================================================================================================================================================================================================================================

**boundary function for region boundary between regions 2 and 3 (input
pressure)**

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
  Type                                              Name   Description
  ------------------------------------------------- ------ ----------------
  [Temperature](Modelica_SIunits.html#Modelica.SIun t      temperature (K)
  its.Temperature)                                         [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function boundary23ofp 
      "boundary function for region boundary between regions 2 and 3 (input pressure)"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.Temperature t "temperature (K)";
    protected 
      constant Real[5] n=data.n;
      Real pi "dimensionless pressure";
    algorithm 
      pi := p/1.0e6;
      assert(p > triple.ptriple,
        "IF97 medium function boundary23ofp called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      t := n[4] + ((pi - n[5])/n[3])^0.5;
    end boundary23ofp;

* * * * *

![image98](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hlowerofp5
======================================================================================================================================================================================================================================================================

**explicit lower specific enthalpy limit of region 5 as function of
pressure**

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
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hlowerofp5 
      "explicit lower specific enthalpy limit of region 5 as function of pressure"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real pi "dimensionless pressure";
    algorithm 
      pi := p/data.PSTAR5;
      assert(p > triple.ptriple,
        "IF97 medium function hlowerofp5 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      h := 461526.*(9.01505286876203 + pi*(-0.00979043490246092 + (-0.0000203245575263501
         + 3.36540214679088e-7*pi)*pi));
    end hlowerofp5;

* * * * *

![image99](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hupperofp5
======================================================================================================================================================================================================================================================================

**explicit upper specific enthalpy limit of region 5 as function of
pressure**

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
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hupperofp5 
      "explicit upper specific enthalpy limit of region 5 as function of pressure"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real pi "dimensionless pressure";
    algorithm 
      pi := p/data.PSTAR5;
      assert(p > triple.ptriple,
        "IF97 medium function hupperofp5 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      h := 461526.*(15.9838891400332 + pi*(-0.000489898813722568 + (-5.01510211858761e-8
         + 7.5006972718273e-8*pi)*pi));
    end hupperofp5;

* * * * *

![image100](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).slowerofp5
=======================================================================================================================================================================================================================================================================

**explicit lower specific entropy limit of region 5 as function of
pressure**

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
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  [SpecificEntropy](Modelica_SIunits.html#Modelic s     specific entropy
  a.SIunits.SpecificEntropy)                            [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function slowerofp5 
      "explicit lower specific entropy limit of region 5 as function of pressure"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEntropy s "specific entropy";
    protected 
      Real pi "dimensionless pressure";
    algorithm 
      pi := p/data.PSTAR5;
      assert(p > triple.ptriple,
        "IF97 medium function slowerofp5 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      s := 461.526*(18.4296209980112 + pi*(-0.00730911805860036 + (-0.0000168348072093888
         + 2.09066899426354e-7*pi)*pi) - Modelica.Math.log(pi));
    end slowerofp5;

* * * * *

![image101](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).supperofp5
=======================================================================================================================================================================================================================================================================

**explicit upper specific entropy limit of region 5 as function of
pressure**

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
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  [SpecificEntropy](Modelica_SIunits.html#Modelic s     specific entropy
  a.SIunits.SpecificEntropy)                            [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function supperofp5 
      "explicit upper specific entropy limit of region 5 as function of pressure"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEntropy s "specific entropy";
    protected 
      Real pi "dimensionless pressure";
    algorithm 
      pi := p/data.PSTAR5;
      assert(p > triple.ptriple,
        "IF97 medium function supperofp5 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      s := 461.526*(22.7281531474243 + pi*(-0.000656650220627603 + (-1.96109739782049e-8
         + 2.19979537113031e-8*pi)*pi) - Modelica.Math.log(pi));
    end supperofp5;

* * * * *

![image102](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hlowerofp1
=======================================================================================================================================================================================================================================================================

**explicit lower specific enthalpy limit of region 1 as function of
pressure**

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
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hlowerofp1 
      "explicit lower specific enthalpy limit of region 1 as function of pressure"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real pi1 "dimensionless pressure";
      Real[3] o "vector of auxiliary variables";
    algorithm 
      pi1 := 7.1 - p/data.PSTAR1;
      assert(p > triple.ptriple,
        "IF97 medium function hlowerofp1 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      o[1] := pi1*pi1;
      o[2] := o[1]*o[1];
      o[3] := o[2]*o[2];

      h := 639675.036*(0.173379420894777 + pi1*(-0.022914084306349 + pi1*(-0.00017146768241932
         + pi1*(-4.18695814670391e-6 + pi1*(-2.41630417490008e-7 + pi1*(
        1.73545618580828e-11 + o[1]*pi1*(8.43755552264362e-14 + o[2]*o[3]*pi1
        *(5.35429206228374e-35 + o[1]*(-8.12140581014818e-38 + o[1]*o[2]*(-1.43870236842915e-44
         + pi1*(1.73894459122923e-45 + (-7.06381628462585e-47 +
        9.64504638626269e-49*pi1)*pi1)))))))))));
    end hlowerofp1;

* * * * *

![image103](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hupperofp1
=======================================================================================================================================================================================================================================================================

**explicit upper specific enthalpy limit of region 1 as function of
pressure (meets region 4 saturation pressure curve at 623.15 K)**

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
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hupperofp1 
      "explicit upper specific enthalpy limit of region 1 as function of pressure (meets region 4 saturation pressure curve at 623.15 K)"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real pi1 "dimensionless pressure";
      Real[3] o "vector of auxiliary variables";
    algorithm 
      pi1 := 7.1 - p/data.PSTAR1;
      assert(p > triple.ptriple,
        "IF97 medium function hupperofp1 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      o[1] := pi1*pi1;
      o[2] := o[1]*o[1];
      o[3] := o[2]*o[2];
      h := 639675.036*(2.42896927729349 + pi1*(-0.00141131225285294 + pi1*(
        0.00143759406818289 + pi1*(0.000125338925082983 + pi1*(
        0.0000123617764767172 + pi1*(3.17834967400818e-6 + o[1]*pi1*(
        1.46754947271665e-8 + o[2]*o[3]*pi1*(1.86779322717506e-17 + o[1]*(-4.18568363667416e-19
         + o[1]*o[2]*(-9.19148577641497e-22 + pi1*(4.27026404402408e-22 + (-6.66749357417962e-23
         + 3.49930466305574e-24*pi1)*pi1)))))))))));
    end hupperofp1;

* * * * *

![image104](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).slowerofp1
=======================================================================================================================================================================================================================================================================

**explicit lower specific entropy limit of region 1 as function of
pressure**

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
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  [SpecificEntropy](Modelica_SIunits.html#Modelic s     specific entropy
  a.SIunits.SpecificEntropy)                            [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function slowerofp1 
      "explicit lower specific entropy limit of region 1 as function of pressure"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEntropy s "specific entropy";
    protected 
      Real pi1 "dimensionless pressure";
      Real[3] o "vector of auxiliary variables";
    algorithm 
      pi1 := 7.1 - p/data.PSTAR1;
      assert(p > triple.ptriple,
        "IF97 medium function slowerofp1 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      o[1] := pi1*pi1;
      o[2] := o[1]*o[1];
      o[3] := o[2]*o[2];
      s := 461.526*(-0.0268080988194267 + pi1*(0.00834795890110168 + pi1*(-0.000486470924668433
         + pi1*(-0.0000154902045012264 + pi1*(-1.07631751351358e-6 + pi1*(
        9.64159058957115e-11 + o[1]*pi1*(4.81921078863103e-13 + o[2]*o[3]*pi1
        *(2.7879623870968e-34 + o[1]*(-4.22182957646226e-37 + o[1]*o[2]*(-7.44601427465175e-44
         + pi1*(8.99540001407168e-45 + (-3.65230274480299e-46 +
        4.98464639687285e-48*pi1)*pi1)))))))))));
    end slowerofp1;

* * * * *

![image105](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).supperofp1
=======================================================================================================================================================================================================================================================================

**explicit upper specific entropy limit of region 1 as function of
pressure (meets region 4 saturation pressure curve at 623.15 K)**

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
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  [SpecificEntropy](Modelica_SIunits.html#Modelic s     specific entropy
  a.SIunits.SpecificEntropy)                            [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function supperofp1 
      "explicit upper specific entropy limit of region 1 as function of pressure (meets region 4 saturation pressure curve at 623.15 K)"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEntropy s "specific entropy";
    protected 
      Real pi1 "dimensionless pressure";
      Real[3] o "vector of auxiliary variables";
    algorithm 
      pi1 := 7.1 - p/data.PSTAR1;
      assert(p > triple.ptriple,
        "IF97 medium function supperofp1 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      o[1] := pi1*pi1;
      o[2] := o[1]*o[1];
      o[3] := o[2]*o[2];
      s := 461.526*(7.28316418503422 + pi1*(0.070602197808399 + pi1*(
        0.0039229343647356 + pi1*(0.000313009170788845 + pi1*(
        0.0000303619398631619 + pi1*(7.46739440045781e-6 + o[1]*pi1*(
        3.40562176858676e-8 + o[2]*o[3]*pi1*(4.21886233340801e-17 + o[1]*(-9.44504571473549e-19
         + o[1]*o[2]*(-2.06859611434475e-21 + pi1*(9.60758422254987e-22 + (-1.49967810652241e-22
         + 7.86863124555783e-24*pi1)*pi1)))))))))));
    end supperofp1;

* * * * *

![image106](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hlowerofp2
=======================================================================================================================================================================================================================================================================

**explicit lower specific enthalpy limit of region 2 as function of
pressure (meets region 4 saturation pressure curve at 623.15 K)**

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
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hlowerofp2 
      "explicit lower specific enthalpy limit of region 2 as function of pressure (meets region 4 saturation pressure curve at 623.15 K)"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real pi "dimensionless pressure";
      Real q1 "auxiliary variable";
      Real q2 "auxiliary variable";
      Real[18] o "vector of auxiliary variables";
    algorithm 
      pi := p/data.PSTAR2;
      assert(p > triple.ptriple,
        "IF97 medium function hlowerofp2 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      q1 := 572.54459862746 + 31.3220101646784*(-13.91883977887 + pi)^0.5;
      q2 := -0.5 + 540./q1;
      o[1] := q1*q1;
      o[2] := o[1]*o[1];
      o[3] := o[2]*o[2];
      o[4] := pi*pi;
      o[5] := o[4]*o[4];
      o[6] := q2*q2;
      o[7] := o[6]*o[6];
      o[8] := o[6]*o[7];
      o[9] := o[5]*o[5];
      o[10] := o[7]*o[7];
      o[11] := o[9]*o[9];
      o[12] := o[10]*o[10];
      o[13] := o[12]*o[12];
      o[14] := o[7]*q2;
      o[15] := o[6]*q2;
      o[16] := o[10]*o[6];
      o[17] := o[13]*o[6];
      o[18] := o[13]*o[6]*q2;
      h := (4.63697573303507e9 + 3.74686560065793*o[2] + 3.57966647812489e-6*
        o[1]*o[2] + 2.81881548488163e-13*o[3] - 7.64652332452145e7*q1 -
        0.00450789338787835*o[2]*q1 - 1.55131504410292e-9*o[1]*o[2]*q1 + o[1]
        *(2.51383707870341e6 - 4.78198198764471e6*o[10]*o[11]*o[12]*o[13]*o[4]
         + 49.9651389369988*o[11]*o[12]*o[13]*o[4]*o[5]*o[7] + o[15]*o[4]*(
        1.03746636552761e-13 - 0.00349547959376899*o[16] -
        2.55074501962569e-7*o[8])*o[9] + (-242662.235426958*o[10]*o[12] -
        3.46022402653609*o[16])*o[4]*o[5]*pi + o[4]*(0.109336249381227 -
        2248.08924686956*o[14] - 354742.725841972*o[17] - 24.1331193696374*o[
        6])*pi - 3.09081828396912e-19*o[11]*o[12]*o[5]*o[7]*pi -
        1.24107527851371e-8*o[11]*o[13]*o[4]*o[5]*o[6]*o[7]*pi +
        3.99891272904219*o[5]*o[8]*pi + 0.0641817365250892*o[10]*o[7]*o[9]*pi
         + pi*(-4444.87643334512 - 75253.6156722047*o[14] - 43051.9020511789*
        o[6] - 22926.6247146068*q2) + o[4]*(-8.23252840892034 -
        3927.0508365636*o[15] - 239.325789467604*o[18] - 76407.3727417716*o[8]
         - 94.4508644545118*q2) + 0.360567666582363*o[5]*(-0.0161221195808321
         + q2)*(0.0338039844460968 + q2) + o[11]*(-0.000584580992538624*o[10]
        *o[12]*o[7] + 1.33248030241755e6*o[12]*o[13]*q2) + o[9]*(-7.38502736990986e7
        *o[18] + 0.0000224425477627799*o[6]*o[7]*q2) + o[4]*o[5]*(-2.08438767026518e8
        *o[17] - 0.0000124971648677697*o[6] - 8442.30378348203*o[10]*o[6]*o[7]
        *q2) + o[11]*o[9]*(4.73594929247646e-22*o[10]*o[12]*q2 -
        13.6411358215175*o[10]*o[12]*o[13]*q2 + 5.52427169406836e-10*o[13]*o[
        6]*o[7]*q2) + o[11]*o[5]*(2.67174673301715e-6*o[17] +
        4.44545133805865e-18*o[12]*o[6]*q2 - 50.2465185106411*o[10]*o[13]*o[6]
        *o[7]*q2)))/o[1];
    end hlowerofp2;

* * * * *

![image107](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hupperofp2
=======================================================================================================================================================================================================================================================================

**explicit upper specific enthalpy limit of region 2 as function of
pressure**

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
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hupperofp2 
      "explicit upper specific enthalpy limit of region 2 as function of pressure"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real pi "dimensionless pressure";
      Real[2] o "vector of auxiliary variables";
    algorithm 
      pi := p/data.PSTAR2;
      assert(p > triple.ptriple,
        "IF97 medium function hupperofp2 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      o[1] := pi*pi;
      o[2] := o[1]*o[1]*o[1];
      h := 4.16066337647071e6 + pi*(-4518.48617188327 + pi*(-8.53409968320258
         + pi*(0.109090430596056 + pi*(-0.000172486052272327 + pi*(
        4.2261295097284e-15 + pi*(-1.27295130636232e-10 + pi*(-3.79407294691742e-25
         + pi*(7.56960433802525e-23 + pi*(7.16825117265975e-32 + pi*(
        3.37267475986401e-21 + (-7.5656940729795e-74 + o[1]*(-8.00969737237617e-134
         + (1.6746290980312e-65 + pi*(-3.71600586812966e-69 + pi*(
        8.06630589170884e-129 + (-1.76117969553159e-103 +
        1.88543121025106e-84*pi)*pi)))*o[1]))*o[2]))))))))));
    end hupperofp2;

* * * * *

![image108](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).slowerofp2
=======================================================================================================================================================================================================================================================================

**explicit lower specific entropy limit of region 2 as function of
pressure (meets region 4 saturation pressure curve at 623.15 K)**

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
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  [SpecificEntropy](Modelica_SIunits.html#Modelic s     specific entropy
  a.SIunits.SpecificEntropy)                            [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function slowerofp2 
      "explicit lower specific entropy limit of region 2 as function of pressure (meets region 4 saturation pressure curve at 623.15 K)"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEntropy s "specific entropy";
    protected 
      Real pi "dimensionless pressure";
      Real q1 "auxiliary variable";
      Real q2 "auxiliary variable";
      Real[40] o "vector of auxiliary variables";
    algorithm 
      pi := p/data.PSTAR2;
      assert(p > triple.ptriple,
        "IF97 medium function slowerofp2 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      q1 := 572.54459862746 + 31.3220101646784*(-13.91883977887 + pi)^0.5;
      q2 := -0.5 + 540.0/q1;
      o[1] := pi*pi;
      o[2] := o[1]*pi;
      o[3] := o[1]*o[1];
      o[4] := o[1]*o[3]*pi;
      o[5] := q1*q1;
      o[6] := o[5]*q1;
      o[7] := 1/o[5];
      o[8] := 1/q1;
      o[9] := o[5]*o[5];
      o[10] := o[9]*q1;
      o[11] := q2*q2;
      o[12] := o[11]*q2;
      o[13] := o[1]*o[3];
      o[14] := o[11]*o[11];
      o[15] := o[3]*o[3];
      o[16] := o[1]*o[15];
      o[17] := o[11]*o[14];
      o[18] := o[11]*o[14]*q2;
      o[19] := o[3]*pi;
      o[20] := o[14]*o[14];
      o[21] := o[11]*o[20];
      o[22] := o[15]*pi;
      o[23] := o[14]*o[20]*q2;
      o[24] := o[20]*o[20];
      o[25] := o[15]*o[15];
      o[26] := o[25]*o[3];
      o[27] := o[14]*o[24];
      o[28] := o[25]*o[3]*pi;
      o[29] := o[20]*o[24]*q2;
      o[30] := o[15]*o[25];
      o[31] := o[24]*o[24];
      o[32] := o[11]*o[31]*q2;
      o[33] := o[14]*o[31];
      o[34] := o[1]*o[25]*o[3]*pi;
      o[35] := o[11]*o[14]*o[31]*q2;
      o[36] := o[1]*o[25]*o[3];
      o[37] := o[1]*o[25];
      o[38] := o[20]*o[24]*o[31]*q2;
      o[39] := o[14]*q2;
      o[40] := o[11]*o[31];

      s := 461.526*(9.692768600217 + 1.22151969114703e-16*o[10] +
        0.00018948987516315*o[1]*o[11] + 1.6714766451061e-11*o[12]*o[13] +
        0.0039392777243355*o[1]*o[14] - 1.0406965210174e-19*o[14]*o[16] +
        0.043797295650573*o[1]*o[18] - 2.2922076337661e-6*o[18]*o[19] -
        2.0481737692309e-8*o[2] + 0.00003227767723857*o[12]*o[2] +
        0.0015033924542148*o[17]*o[2] - 1.1256211360459e-11*o[15]*o[20] +
        1.0018179379511e-9*o[11]*o[14]*o[16]*o[20] + 1.0234747095929e-13*o[16]
        *o[21] - 1.9809712802088e-8*o[22]*o[23] + 0.0021171472321355*o[13]*o[
        24] - 8.9185845355421e-25*o[26]*o[27] - 1.2790717852285e-8*o[11]*o[3]
         - 4.8225372718507e-7*o[12]*o[3] - 7.3087610595061e-29*o[11]*o[20]*o[
        24]*o[30] - 0.10693031879409*o[11]*o[24]*o[25]*o[31] +
        4.2002467698208e-6*o[24]*o[26]*o[31] - 5.5414715350778e-17*o[20]*o[30]
        *o[31] + 9.436970724121e-7*o[11]*o[20]*o[24]*o[30]*o[31] +
        23.895741934104*o[13]*o[32] + 0.040668253562649*o[2]*o[32] -
        3.0629316876232e-13*o[26]*o[32] + 0.000026674547914087*o[1]*o[33] +
        8.2311340897998*o[15]*o[33] + 1.2768608934681e-15*o[34]*o[35] +
        0.33662250574171*o[37]*o[38] + 5.905956432427e-18*o[4] +
        0.038946842435739*o[29]*o[4] - 4.88368302964335e-6*o[5] -
        3.34901734177133e6/o[6] + 2.58538448402683e-9*o[6] + 82839.5726841115
        *o[7] - 5446.7940672972*o[8] - 8.40318337484194e-13*o[9] +
        0.0017731742473213*pi + 0.045996013696365*o[11]*pi +
        0.057581259083432*o[12]*pi + 0.05032527872793*o[17]*pi + o[8]*pi*(
        9.63082563787332 - 0.008917431146179*q1) + 0.00811842799898148*q1 +
        0.000033032641670203*o[1]*q2 - 4.3870667284435e-7*o[2]*q2 +
        8.0882908646985e-11*o[14]*o[20]*o[24]*o[25]*q2 + 5.9056029685639e-26*
        o[14]*o[24]*o[28]*q2 + 7.8847309559367e-10*o[3]*q2 -
        3.7826947613457e-6*o[14]*o[24]*o[31]*o[36]*q2 + 1.2621808899101e-6*o[
        11]*o[20]*o[4]*q2 + 540.*o[8]*(10.08665568018 - 0.000033032641670203*
        o[1] - 6.2245802776607e-15*o[10] - 0.015757110897342*o[1]*o[12] -
        5.0144299353183e-11*o[11]*o[13] + 4.1627860840696e-19*o[12]*o[16] -
        0.306581069554011*o[1]*o[17] + 9.0049690883672e-11*o[15]*o[18] +
        0.0000160454534363627*o[17]*o[19] + 4.3870667284435e-7*o[2] -
        0.00009683303171571*o[11]*o[2] + 2.57526266427144e-7*o[14]*o[20]*o[22]
         - 1.40254511313154e-8*o[16]*o[23] - 2.34560435076256e-9*o[14]*o[20]*
        o[24]*o[25] - 1.24017662339842e-24*o[27]*o[28] - 7.8847309559367e-10*
        o[3] + 1.44676118155521e-6*o[11]*o[3] + 1.90027787547159e-27*o[29]*o[
        30] - 0.000960283724907132*o[1]*o[32] - 296.320827232793*o[15]*o[32]
         - 4.97975748452559e-14*o[11]*o[14]*o[31]*o[34] +
        2.21658861403112e-15*o[30]*o[35] + 0.000200482822351322*o[14]*o[24]*o[
        31]*o[36] - 19.1874828272775*o[20]*o[24]*o[31]*o[37] -
        0.0000547344301999018*o[30]*o[38] - 0.0090203547252888*o[2]*o[39] -
        0.0000138839897890111*o[21]*o[4] - 0.973671060893475*o[20]*o[24]*o[4]
         - 836.35096769364*o[13]*o[40] - 1.42338887469272*o[2]*o[40] +
        1.07202609066812e-11*o[26]*o[40] + 0.0000150341259240398*o[5] -
        1.8087714924605e-8*o[6] + 18605.6518987296*o[7] - 306.813232163376*o[
        8] + 1.43632471334824e-11*o[9] + 1.13103675106207e-18*o[5]*o[9] -
        0.017834862292358*pi - 0.172743777250296*o[11]*pi - 0.30195167236758*
        o[39]*pi + o[8]*pi*(-49.6756947920742 + 0.045996013696365*q1) -
        0.0003789797503263*o[1]*q2 - 0.033874355714168*o[11]*o[13]*o[14]*o[20]
        *q2 - 1.0234747095929e-12*o[16]*o[20]*q2 + 1.78371690710842e-23*o[11]
        *o[24]*o[26]*q2 + 2.558143570457e-8*o[3]*q2 + 5.3465159397045*o[24]*o[
        25]*o[31]*q2 - 0.000201611844951398*o[11]*o[14]*o[20]*o[26]*o[31]*q2)
         - Modelica.Math.log(pi));
    end slowerofp2;

* * * * *

![image109](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).supperofp2
=======================================================================================================================================================================================================================================================================

**explicit upper specific entropy limit of region 2 as function of
pressure**

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
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  [SpecificEntropy](Modelica_SIunits.html#Modelic s     specific entropy
  a.SIunits.SpecificEntropy)                            [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function supperofp2 
      "explicit upper specific entropy limit of region 2 as function of pressure"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEntropy s "specific entropy";
    protected 
      Real pi "dimensionless pressure";
      Real[2] o "vector of auxiliary variables";
    algorithm 
      pi := p/data.PSTAR2;
      assert(p > triple.ptriple,
        "IF97 medium function supperofp2 called with too low pressure\n" +
        "p = " + String(p) + " Pa <= " + String(triple.ptriple) + " Pa (triple point pressure)");
      o[1] := pi*pi;
      o[2] := o[1]*o[1]*o[1];
      s := 8505.73409708683 - 461.526*Modelica.Math.log(pi) + pi*(-3.36563543302584
         + pi*(-0.00790283552165338 + pi*(0.0000915558349202221 + pi*(-1.59634706513e-7
         + pi*(3.93449217595397e-18 + pi*(-1.18367426347994e-13 + pi*(
        2.72575244843195e-15 + pi*(7.04803892603536e-26 + pi*(
        6.67637687381772e-35 + pi*(3.1377970315132e-24 + (-7.04844558482265e-77
         + o[1]*(-7.46289531275314e-137 + (1.55998511254305e-68 + pi*(-3.46166288915497e-72
         + pi*(7.51557618628583e-132 + (-1.64086406733212e-106 +
        1.75648443097063e-87*pi)*pi)))*o[1]))*o[2]*o[2]))))))))));
    end supperofp2;

* * * * *

![image110](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).d1n
================================================================================================================================================================================================================================================================

**density in region 1 as function of p and T**

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
  Type                                              Name   Description
  ------------------------------------------------- ------ ---------------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d      density [kg/m3]
  Density)                                                 
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function d1n "density in region 1 as function of p and T"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature (K)";
      output SI.Density d "density";
    protected 
      Real pi "dimensionless pressure";
      Real pi1 "dimensionless pressure";
      Real tau "dimensionless temperature";
      Real tau1 "dimensionless temperature";
      Real gpi "dimensionless Gibbs-derivative w.r.t. pi";
      Real[11] o "auxiliary variables";
    algorithm 
      pi := p/data.PSTAR1;
      tau := data.TSTAR1/T;
      pi1 := 7.1 - pi;
      tau1 := tau - 1.222;
      o[1] := tau1*tau1;
      o[2] := o[1]*o[1];
      o[3] := o[2]*o[2];
      o[4] := o[1]*o[2];
      o[5] := o[1]*tau1;
      o[6] := o[2]*tau1;
      o[7] := pi1*pi1;
      o[8] := o[7]*o[7];
      o[9] := o[8]*o[8];
      o[10] := o[3]*o[3];
      o[11] := o[10]*o[10];
      gpi := pi1*(pi1*((0.000095038934535162 + o[2]*(8.4812393955936e-6 +
        2.55615384360309e-9*o[4]))/o[2] + pi1*((8.9701127632e-6 + (
        2.60684891582404e-6 + 5.7366919751696e-13*o[2]*o[3])*o[5])/o[6] + pi1
        *(2.02584984300585e-6/o[3] + o[7]*pi1*(o[8]*o[9]*pi1*(o[7]*(o[7]*o[8]
        *(-7.63737668221055e-22/(o[1]*o[11]*o[2]) + pi1*(pi1*(-5.65070932023524e-23
        /(o[11]*o[3]) + (2.99318679335866e-24*pi1)/(o[11]*o[3]*tau1)) +
        3.5842867920213e-22/(o[1]*o[11]*o[2]*tau1))) - 3.33001080055983e-19/(
        o[1]*o[10]*o[2]*o[3]*tau1)) + 1.44400475720615e-17/(o[10]*o[2]*o[3]*
        tau1)) + (1.01874413933128e-8 + 1.39398969845072e-9*o[6])/(o[1]*o[3]*
        tau1))))) + (0.00094368642146534 + o[5]*(0.00060003561586052 + (-0.000095322787813974
         + o[1]*(8.8283690661692e-6 + 1.45389992595188e-15*o[1]*o[2]*o[3]))*
        tau1))/o[5]) + (-0.00028319080123804 + o[1]*(0.00060706301565874 + o[
        4]*(0.018990068218419 + tau1*(0.032529748770505 + (0.021841717175414
         + 0.00005283835796993*o[1])*tau1))))/(o[3]*tau1);
      d := p/(data.RH2O*T*pi*gpi);
    end d1n;

* * * * *

![image111](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).d2n
================================================================================================================================================================================================================================================================

**density in region 2 as function of p and T**

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
  Type                                              Name   Description
  ------------------------------------------------- ------ ---------------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d      density [kg/m3]
  Density)                                                 
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function d2n "density in region 2  as function of p and T"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature (K)";
      output SI.Density d "density";
    protected 
      Real pi "dimensionless pressure";
      Real tau "dimensionless temperature";
      Real tau2 "dimensionless temperature";
      Real gpi "dimensionless Gibbs-derivative w.r.t. pi";
      Real[12] o "auxiliary variables";
    algorithm 
      pi := p/data.PSTAR2;
      tau := data.TSTAR2/T;
      tau2 := tau - 0.5;
      o[1] := tau2*tau2;
      o[2] := o[1]*tau2;
      o[3] := o[1]*o[1];
      o[4] := o[3]*o[3];
      o[5] := o[4]*o[4];
      o[6] := o[3]*o[4]*o[5]*tau2;
      o[7] := o[3]*o[4]*tau2;
      o[8] := o[1]*o[3]*o[4];
      o[9] := pi*pi;
      o[10] := o[9]*o[9];
      o[11] := o[3]*o[5]*tau2;
      o[12] := o[5]*o[5];
      gpi := (1. + pi*(-0.0017731742473213 + tau2*(-0.017834862292358 + tau2*
        (-0.045996013696365 + (-0.057581259083432 - 0.05032527872793*o[2])*
        tau2)) + pi*(tau2*(-0.000066065283340406 + (-0.0003789797503263 + o[1]
        *(-0.007878555448671 + o[2]*(-0.087594591301146 -
        0.000053349095828174*o[6])))*tau2) + pi*(6.1445213076927e-8 + (
        1.31612001853305e-6 + o[1]*(-0.00009683303171571 + o[2]*(-0.0045101773626444
         - 0.122004760687947*o[6])))*tau2 + pi*(tau2*(-3.15389238237468e-9 +
        (5.116287140914e-8 + 1.92901490874028e-6*tau2)*tau2) + pi*(
        0.0000114610381688305*o[1]*o[3]*tau2 + pi*(o[2]*(-1.00288598706366e-10
         + o[7]*(-0.012702883392813 - 143.374451604624*o[1]*o[5]*tau2)) + pi*
        (-4.1341695026989e-17 + o[1]*o[4]*(-8.8352662293707e-6 -
        0.272627897050173*o[8])*tau2 + pi*(o[4]*(9.0049690883672e-11 -
        65.8490727183984*o[3]*o[4]*o[5]) + pi*(1.78287415218792e-7*o[7] + pi*
        (o[3]*(1.0406965210174e-18 + o[1]*(-1.0234747095929e-12 -
        1.0018179379511e-8*o[3])*o[3]) + o[10]*o[9]*((-1.29412653835176e-9 +
        1.71088510070544*o[11])*o[6] + o[9]*(-6.05920510335078*o[12]*o[4]*o[5]
        *tau2 + o[9]*(o[3]*o[5]*(1.78371690710842e-23 + o[1]*o[3]*o[4]*(
        6.1258633752464e-12 - 0.000084004935396416*o[7])*tau2) + pi*(-1.24017662339842e-24
        *o[11] + pi*(0.0000832192847496054*o[12]*o[3]*o[5]*tau2 + pi*(o[1]*o[
        4]*o[5]*(1.75410265428146e-27 + (1.32995316841867e-15 -
        0.0000226487297378904*o[1]*o[5])*o[8])*pi - 2.93678005497663e-14*o[1]
        *o[12]*o[3]*tau2)))))))))))))))))/pi;
      d := p/(data.RH2O*T*pi*gpi);
    end d2n;

* * * * *

![image112](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).dhot1ofp
=====================================================================================================================================================================================================================================================================

**density at upper temperature limit of region 1**

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

  ------------------------------------------------------------------------
  Type                                              Name   Description
  ------------------------------------------------- ------ ---------------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d      density [kg/m3]
  Density)                                                 
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dhot1ofp "density at upper temperature limit of region 1"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.Density d "density";
    protected 
      Real pi "dimensionless pressure";
      Real pi1 "dimensionless pressure";
      Real[4] o "auxiliary variables";
    algorithm 
      pi := p/data.PSTAR1;
      pi1 := 7.1 - pi;
      o[1] := pi1*pi1;
      o[2] := o[1]*o[1];
      o[3] := o[2]*o[2];
      o[4] := o[3]*o[3];
      d := 57.4756752485113/(0.0737412153522555 + 0.000102697173772229*o[1]
         + 1.99080616601101e-6*o[2] + 1.35549330686006e-17*o[2]*o[4] -
        3.11228834832975e-19*o[1]*o[2]*o[4] - 7.02987180039442e-22*o[2]*o[3]*
        o[4] - 5.17859076694812e-23*o[1]*o[2]*o[3]*o[4] + 0.00145092247736023
        *pi1 + 0.0000114683182476084*o[1]*pi1 + 1.13217858826367e-8*o[1]*o[2]
        *pi1 + 3.29199117056433e-22*o[2]*o[3]*o[4]*pi1 + 2.73712834080283e-24
        *o[1]*o[2]*o[3]*o[4]*pi1);
    end dhot1ofp;

* * * * *

![image113](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).dupper1ofT
=======================================================================================================================================================================================================================================================================

**density at upper pressure limit of region 1**

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
  [Temperature](Modelica_SIunits.html#Modelica T             temperature
  .SIunits.Temperature)                                      (K) [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                              Name   Description
  ------------------------------------------------- ------ ---------------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d      density [kg/m3]
  Density)                                                 
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dupper1ofT "density at upper pressure limit of region 1"
      extends Modelica.Icons.Function;
      input SI.Temperature T "temperature (K)";
      output SI.Density d "density";
    protected 
      Real tau "dimensionless temperature";
      Real[4] o "auxiliary variables";
    algorithm 
      tau := 1386.0/T;
      o[1] := tau*tau;
      o[2] := o[1]*o[1];
      o[3] := o[2]*o[2];
      o[4] := o[3]*o[3];
      d := 57.4756752485113/(2.24144616859917 + 40.9288231166229*o[1] +
        106.47246463213*o[2] + 88.4481480270751*o[1]*o[2] + 31.3207272417546*
        o[3] + 5.47811738891798*o[1]*o[3] + 0.515626225030717*o[2]*o[3] +
        0.0274905057899089*o[1]*o[2]*o[3] + 0.000853742979250503*o[4] +
        0.0000155932210492199*o[1]*o[4] + 1.6621051480279e-7*o[2]*o[4] +
        1.00606771839976e-9*o[1]*o[2]*o[4] + 3.27598951831994e-12*o[3]*o[4]
         + 5.20162317530099e-15*o[1]*o[3]*o[4] + 3.33501889800275e-18*o[2]*o[
        3]*o[4] + 5.50656040141221e-22*o[1]*o[2]*o[3]*o[4] - 13.5354267762204
        *tau - 78.3629702507642*o[1]*tau - 109.374479648652*o[2]*tau -
        57.9035658513312*o[1]*o[2]*tau - 14.215347150565*o[3]*tau -
        1.80906759985501*o[1]*o[3]*tau - 0.127542214693871*o[2]*o[3]*tau -
        0.0051779458313163*o[1]*o[2]*o[3]*tau - 0.000123304142684848*o[4]*tau
         - 1.72405791469972e-6*o[1]*o[4]*tau - 1.39155695911655e-8*o[2]*o[4]*
        tau - 6.23333356847138e-11*o[1]*o[2]*o[4]*tau - 1.44056015732082e-13*
        o[3]*o[4]*tau - 1.50201626932938e-16*o[1]*o[3]*o[4]*tau -
        5.34588682252967e-20*o[2]*o[3]*o[4]*tau - 2.73712834080283e-24*o[1]*o[
        2]*o[3]*o[4]*tau);
    end dupper1ofT;

* * * * *

![image114](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hl\_p\_R4b
=======================================================================================================================================================================================================================================================================

**explicit approximation of liquid specific enthalpy on the boundary
between regions 4 and 3**

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
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hl_p_R4b 
      "explicit approximation of liquid specific enthalpy on the boundary between regions 4 and 3"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real x "auxiliary variable";
    algorithm 
        // documentation of accuray in notebook ~hubertus/props/IAPWS/R3Approx.nb
      // boundary between region IVa and III
      x := Modelica.Math.acos(p/data.PCRIT);
      h := (1 + x*(-0.4945586958175176 + x*(1.346800016564904 + x*(-3.889388153209752
         + x*(6.679385472887931 + x*(-6.75820241066552 + x*(3.558919744656498
         + (-0.7179818554978939 - 0.0001152032945617821*x)*x)))))))*data.
        HCRIT;
    end hl_p_R4b;

* * * * *

![image115](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hv\_p\_R4b
=======================================================================================================================================================================================================================================================================

**explicit approximation of vapour specific enthalpy on the boundary
between regions 4 and 3**

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
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hv_p_R4b 
      "explicit approximation of vapour specific enthalpy on the boundary between regions 4 and 3"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEnthalpy h "specific enthalpy";
    protected 
      Real x "auxiliary variable";
    algorithm 
      // boundary between region IVa and III
      x := Modelica.Math.acos(p/data.PCRIT);
      h := (1 + x*(0.4880153718655694 + x*(0.2079670746250689 + x*(-6.084122698421623
         + x*(25.08887602293532 + x*(-48.38215180269516 + x*(
        45.66489164833212 + (-16.98555442961553 + 0.0006616936460057691*x)*x)))))))
        *data.HCRIT;
    end hv_p_R4b;

* * * * *

![image116](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).sl\_p\_R4b
=======================================================================================================================================================================================================================================================================

**explicit approximation of liquid specific entropy on the boundary
between regions 4 and 3**

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
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  [SpecificEntropy](Modelica_SIunits.html#Modelic s     specific entropy
  a.SIunits.SpecificEntropy)                            [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function sl_p_R4b 
      "explicit approximation of liquid specific entropy on the boundary between regions 4 and 3"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEntropy s "specific entropy";
    protected 
      Real x "auxiliary variable";
    algorithm 
      // boundary between region IVa and III
      x := Modelica.Math.acos(p/data.PCRIT);
      s := (1 + x*(-0.36160692245648063 + x*(0.9962778630486647 + x*(-2.8595548144171103
         + x*(4.906301159555333 + x*(-4.974092309614206 + x*(
        2.6249651699204457 + (-0.5319954375299023 - 0.00008064497431880644*x)
        *x)))))))*data.SCRIT;
    end sl_p_R4b;

* * * * *

![image117](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).sv\_p\_R4b
=======================================================================================================================================================================================================================================================================

**explicit approximation of vapour specific entropy on the boundary
between regions 4 and 3**

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

  ------------------------------------------------------------------------
  Type                                                   Name   Descriptio
                                                                n
  ------------------------------------------------------ ------ ----------
  [SpecificEntropy](Modelica_SIunits.html#Modelica.SIuni s      [J/(kg.K)]
  ts.SpecificEntropy)                                           
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function sv_p_R4b 
      "explicit approximation of vapour specific entropy on the boundary between regions 4 and 3"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEntropy s;
    protected 
      Real x "auxiliary variable";
    algorithm 

        // documentation of accuray in notebook ~hubertus/props/IAPWS/R3Approx.nb
      // boundary between region IVa and III
      x := Modelica.Math.acos(p/data.PCRIT);
      s := (1 + x*(0.35682641826674344 + x*(0.1642457027815487 + x*(-4.425350377422446
         + x*(18.324477859983133 + x*(-35.338631625948665 + x*(
        33.36181025816282 + (-12.408711490585757 + 0.0004810049834109226*x)*x)))))))
        *data.SCRIT;
    end sv_p_R4b;

* * * * *

![image118](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).rhol\_p\_R4b
=========================================================================================================================================================================================================================================================================

**explicit approximation of liquid density on the boundary between
regions 4 and 3**

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
  Type                                           Name   Description
  ---------------------------------------------- ------ -------------------
  [Density](Modelica_SIunits.html#Modelica.SIuni dl     liquid density
  ts.Density)                                           [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function rhol_p_R4b 
      "explicit approximation of liquid density on the boundary between regions 4 and 3"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.Density dl "liquid density";
    protected 
      Real x "auxiliary variable";
    algorithm 
      if (p < data.PCRIT) then
        x := Modelica.Math.acos(p/data.PCRIT);
        dl := (1 + x*(1.903224079094824 + x*(-2.5314861802401123 + x*(-8.191449323843552
           + x*(94.34196116778385 + x*(-369.3676833623383 + x*(
          796.6627910598293 + x*(-994.5385383600702 + x*(673.2581177021598 +
          (-191.43077336405156 + 0.00052536560808895*x)*x)))))))))*data.DCRIT;
      else
        dl := data.DCRIT;
      end if;
    end rhol_p_R4b;

* * * * *

![image119](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).rhov\_p\_R4b
=========================================================================================================================================================================================================================================================================

**explicit approximation of vapour density on the boundary between
regions 4 and 2**

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
  Type                                           Name   Description
  ---------------------------------------------- ------ -------------------
  [Density](Modelica_SIunits.html#Modelica.SIuni dv     vapour density
  ts.Density)                                           [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function rhov_p_R4b 
      "explicit approximation of vapour density on the boundary between regions 4 and 2"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.Density dv "vapour density";
    protected 
      Real x "auxiliary variable";
    algorithm 
      if (p < data.PCRIT) then
        x := Modelica.Math.acos(p/data.PCRIT);
        dv := (1 + x*(-1.8463850803362596 + x*(-1.1447872718878493 + x*(
          59.18702203076563 + x*(-403.5391431811611 + x*(1437.2007245332388
           + x*(-3015.853540307519 + x*(3740.5790348670057 + x*(-2537.375817253895
           + (725.8761975803782 - 0.0011151111658332337*x)*x)))))))))*data.
          DCRIT;
      else
        dv := data.DCRIT;
      end if;
    end rhov_p_R4b;

* * * * *

![image120](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).boilingcurve\_p
============================================================================================================================================================================================================================================================================

**properties on the boiling curve**

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
  Type                                                      Name Descriptio
                                                                 n
  --------------------------------------------------------- ---- ----------
  [IF97PhaseBoundaryProperties](Modelica_Media_Common.html# bpro property
  Modelica.Media.Common.IF97PhaseBoundaryProperties)             record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function boilingcurve_p "properties on the boiling curve"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output Common.IF97PhaseBoundaryProperties bpro "property record";
    protected 
      Common.GibbsDerivs g "dimensionless Gibbs funcion and dervatives";
      Common.HelmholtzDerivs f "dimensionless Helmholtz function and dervatives";
      SI.Pressure plim=min(p, data.PCRIT-1e-7) 
        "pressure limited to critical pressure - epsilon";
    algorithm 
      bpro.R := data.RH2O;
      bpro.T := Basic.tsat(plim);
      bpro.dpT := Basic.dptofT(bpro.T);
      bpro.region3boundary := bpro.T > data.TLIMIT1;
      if not bpro.region3boundary then
        g := Basic.g1(p, bpro.T);
        bpro.d := p/(bpro.R*bpro.T*g.pi*g.gpi);
        bpro.h := if p > plim then data.HCRIT else bpro.R*bpro.T*g.tau*g.gtau;
        bpro.s := g.R*(g.tau*g.gtau - g.g);
        bpro.cp := -bpro.R*g.tau*g.tau*g.gtautau;
        bpro.vt := bpro.R/p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        bpro.vp := bpro.R*bpro.T/(p*p)*g.pi*g.pi*g.gpipi;
        bpro.pt := -p/bpro.T*(g.gpi - g.tau*g.gtaupi)/(g.gpipi*g.pi);
        bpro.pd := -bpro.R*bpro.T*g.gpi*g.gpi/(g.gpipi);
      else
        bpro.d := rhol_p_R4b(plim);
        f := Basic.f3(bpro.d, bpro.T);
        bpro.h := hl_p_R4b(plim);
        // bpro.R*bpro.T*(f.tau*f.ftau + f.delta*f.fdelta);
        bpro.s := f.R*(f.tau*f.ftau - f.f);
        bpro.cv := bpro.R*(-f.tau*f.tau*f.ftautau);
        bpro.pt := bpro.R*bpro.d*f.delta*(f.fdelta - f.tau*f.fdeltatau);
        bpro.pd := bpro.R*bpro.T*f.delta*(2.0*f.fdelta + f.delta*f.fdeltadelta);
      end if;
    end boilingcurve_p;

* * * * *

![image121](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).dewcurve\_p
========================================================================================================================================================================================================================================================================

**properties on the dew curve**

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
  Type                                                      Name Descriptio
                                                                 n
  --------------------------------------------------------- ---- ----------
  [IF97PhaseBoundaryProperties](Modelica_Media_Common.html# bpro property
  Modelica.Media.Common.IF97PhaseBoundaryProperties)             record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dewcurve_p "properties on the dew curve"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output Common.IF97PhaseBoundaryProperties bpro "property record";
    protected 
      Common.GibbsDerivs g "dimensionless Gibbs funcion and dervatives";
      Common.HelmholtzDerivs f "dimensionless Helmholtz function and dervatives";
      SI.Pressure plim=min(p, data.PCRIT-1e-7) 
        "pressure limited to critical pressure - epsilon";
    algorithm 
      bpro.R := data.RH2O;
      bpro.T := Basic.tsat(plim);
      bpro.dpT := Basic.dptofT(bpro.T);
      bpro.region3boundary := bpro.T > data.TLIMIT1;
      if not bpro.region3boundary then
        g := Basic.g2(p, bpro.T);
        bpro.d := p/(bpro.R*bpro.T*g.pi*g.gpi);
        bpro.h := if p > plim then data.HCRIT else bpro.R*bpro.T*g.tau*g.gtau;
        bpro.s := g.R*(g.tau*g.gtau - g.g);
        bpro.cp := -bpro.R*g.tau*g.tau*g.gtautau;
        bpro.vt := bpro.R/p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        bpro.vp := bpro.R*bpro.T/(p*p)*g.pi*g.pi*g.gpipi;
        bpro.pt := -p/bpro.T*(g.gpi - g.tau*g.gtaupi)/(g.gpipi*g.pi);
        bpro.pd := -bpro.R*bpro.T*g.gpi*g.gpi/(g.gpipi);
      else
        bpro.d := rhov_p_R4b(plim);
        f := Basic.f3(bpro.d, bpro.T);
        bpro.h := hv_p_R4b(plim);
        // bpro.R*bpro.T*(f.tau*f.ftau + f.delta*f.fdelta);
        bpro.s := f.R*(f.tau*f.ftau - f.f);
        bpro.cv := bpro.R*(-f.tau*f.tau*f.ftautau);
        bpro.pt := bpro.R*bpro.d*f.delta*(f.fdelta - f.tau*f.fdeltatau);
        bpro.pd := bpro.R*bpro.T*f.delta*(2.0*f.fdelta + f.delta*f.fdeltadelta);
      end if;
    end dewcurve_p;

* * * * *

![image122](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hvl\_p
===================================================================================================================================================================================================================================================================

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                 Name Defau Descripti
                                                            lt    on
  ---------------------------------------------------- ---- ----- ---------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits.Pr p          pressure
  essure)                                                         [Pa]

  [IF97PhaseBoundaryProperties](Modelica_Media_Common. bpro       property
  html#Modelica.Media.Common.IF97PhaseBoundaryProperti            record
  es)                                                             
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

    function hvl_p
      annotation(derivative=hvl_p_der);
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input Common.IF97PhaseBoundaryProperties bpro "property record";
      output SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := bpro.h;
    end hvl_p;

* * * * *

![image123](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hl\_p
==================================================================================================================================================================================================================================================================

**liquid specific enthalpy on the boundary between regions 4 and 3 or
1**

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
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hl_p 
      "liquid specific enthalpy on the boundary between regions 4 and 3 or 1"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := hvl_p(p, boilingcurve_p(p));
    end hl_p;

* * * * *

![image124](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hv\_p
==================================================================================================================================================================================================================================================================

**vapour specific enthalpy on the boundary between regions 4 and 3 or
2**

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
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelica h     specific enthalpy
  .SIunits.SpecificEnthalpy)                              [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hv_p 
      "vapour specific enthalpy on the boundary between regions 4 and 3 or 2"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := hvl_p(p, dewcurve_p(p));
    end hv_p;

* * * * *

![image125](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hvl\_p\_der
========================================================================================================================================================================================================================================================================

**derivative function for the specific enthalpy along the phase
boundary**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                               Name Defau Description
                                                          lt    
  -------------------------------------------------- ---- ----- -----------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits. p          pressure
  Pressure)                                                     [Pa]

  [IF97PhaseBoundaryProperties](Modelica_Media_Commo bpro       property
  n.html#Modelica.Media.Common.IF97PhaseBoundaryProp            record
  erties)                                                       

  Real                                               p\_d       derivative
                                                     er         of pressure
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type    Name      Description
  ------- --------- -------------------------------------------------------
  Real    h\_der    time derivative of specific enthalpy along the phase
                    boundary
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hvl_p_der 
      "derivative function for the specific enthalpy along the phase boundary"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input Common.IF97PhaseBoundaryProperties bpro "property record";
      input Real p_der "derivative of pressure";
      output Real h_der 
        "time derivative of specific enthalpy along the phase boundary";
    algorithm 
      if bpro.region3boundary then
        h_der := ((bpro.d*bpro.pd - bpro.T*bpro.pt)*p_der + (bpro.T*bpro.pt*
          bpro.pt + bpro.d*bpro.d*bpro.pd*bpro.cv)/bpro.dpT*p_der)/(bpro.pd*
          bpro.d*bpro.d);
      else
        h_der := (1/bpro.d - bpro.T*bpro.vt)*p_der + bpro.cp/bpro.dpT*p_der;
      end if;
    end hvl_p_der;

* * * * *

![image126](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).rhovl\_p
=====================================================================================================================================================================================================================================================================

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                 Name Defau Descripti
                                                            lt    on
  ---------------------------------------------------- ---- ----- ---------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits.Pr p          pressure
  essure)                                                         [Pa]

  [IF97PhaseBoundaryProperties](Modelica_Media_Common. bpro       property
  html#Modelica.Media.Common.IF97PhaseBoundaryProperti            record
  es)                                                             
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                              Name   Description
  ------------------------------------------------- ------ ---------------
  [Density](Modelica_SIunits.html#Modelica.SIunits. rho    density [kg/m3]
  Density)                                                 
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function rhovl_p
      annotation(derivative=rhovl_p_der);
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input Common.IF97PhaseBoundaryProperties bpro "property record";
      output SI.Density rho "density";
    algorithm 
      rho := bpro.d;
    end rhovl_p;

* * * * *

![image127](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).rhol\_p
====================================================================================================================================================================================================================================================================

**density of saturated water**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                     Name  Default Description
  ---------------------------------------- ----- ------- ------------------
  [Pressure](Modelica_SIunits.html#Modelic p             saturation
  a.SIunits.Pressure)                                    pressure [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                 Name  Description
  ------------------------------------ ----- ------------------------------
  [Density](Modelica_SIunits.html#Mode rho   density of steam at the
  lica.SIunits.Density)                      condensation point [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function rhol_p "density of saturated water"
      extends Modelica.Icons.Function;
      input SI.Pressure p "saturation pressure";
      output SI.Density rho "density of steam at the condensation point";
    algorithm 
      rho := rhovl_p(p, boilingcurve_p(p));
    end rhol_p;

* * * * *

![image128](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).rhov\_p
====================================================================================================================================================================================================================================================================

**density of saturated vapour**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                     Name  Default Description
  ---------------------------------------- ----- ------- ------------------
  [Pressure](Modelica_SIunits.html#Modelic p             saturation
  a.SIunits.Pressure)                                    pressure [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                 Name  Description
  ------------------------------------ ----- ------------------------------
  [Density](Modelica_SIunits.html#Mode rho   density of steam at the
  lica.SIunits.Density)                      condensation point [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function rhov_p "density of saturated vapour"
      extends Modelica.Icons.Function;
      input SI.Pressure p "saturation pressure";
      output SI.Density rho "density of steam at the condensation point";
    algorithm 
      rho := rhovl_p(p, dewcurve_p(p));
    end rhov_p;

* * * * *

![image129](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).rhovl\_p\_der
==========================================================================================================================================================================================================================================================================

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defau Description
                                                         lt    
  ------------------------------------------------- ---- ----- ------------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits p          saturation
  .Pressure)                                                   pressure
                                                               [Pa]

  [IF97PhaseBoundaryProperties](Modelica_Media_Comm bpro       property
  on.html#Modelica.Media.Common.IF97PhaseBoundaryPr            record
  operties)                                                    

  Real                                              p\_d       derivative
                                                    er         of pressure
  -------------------------------------------------------------------------

Outputs
-------

  Type     Name       Description
  -------- ---------- -----------------------------------------------------
  Real     d\_der     time derivative of density along the phase boundary

Modelica definition
-------------------

    function rhovl_p_der
      extends Modelica.Icons.Function;
      input SI.Pressure p "saturation pressure";
      input Common.IF97PhaseBoundaryProperties bpro "property record";
      input Real p_der "derivative of pressure";
      output Real d_der "time derivative of density along the phase boundary";
    algorithm 
      d_der := if bpro.region3boundary then (p_der - bpro.pt*p_der/bpro.dpT)/
        bpro.pd else -bpro.d*bpro.d*(bpro.vp + bpro.vt/bpro.dpT)*p_der;
    end rhovl_p_der;

* * * * *

![image130](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).sl\_p
==================================================================================================================================================================================================================================================================

**liquid specific entropy on the boundary between regions 4 and 3 or 1**

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
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  [SpecificEntropy](Modelica_SIunits.html#Modelic s     specific entropy
  a.SIunits.SpecificEntropy)                            [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function sl_p 
      "liquid specific entropy on the boundary between regions 4 and 3 or 1"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEntropy s "specific entropy";
    protected 
      SI.Temperature Tsat "saturation temperature";
      SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      if (p < data.PLIMIT4A) then
        Tsat := Basic.tsat(p);
        (h,s) := Isentropic.handsofpT1(p, Tsat);
      elseif (p < data.PCRIT) then
        s := sl_p_R4b(p);
      else
        s := data.SCRIT;
      end if;
    end sl_p;

* * * * *

![image131](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).sv\_p
==================================================================================================================================================================================================================================================================

**vapour specific entropy on the boundary between regions 4 and 3 or 2**

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
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  [SpecificEntropy](Modelica_SIunits.html#Modelic s     specific entropy
  a.SIunits.SpecificEntropy)                            [J/(kg.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function sv_p 
      "vapour specific entropy on the boundary between regions 4 and 3 or 2"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.SpecificEntropy s "specific entropy";
    protected 
      SI.Temperature Tsat "saturation temperature";
      SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      if (p < data.PLIMIT4A) then
        Tsat := Basic.tsat(p);
        (h,s) := Isentropic.handsofpT2(p, Tsat);
      elseif (p < data.PCRIT) then
        s := sv_p_R4b(p);
      else
        s := data.SCRIT;
      end if;
    end sv_p;

* * * * *

![image132](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).rhol\_T
====================================================================================================================================================================================================================================================================

**density of saturated water**

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
  [Temperature](Modelica_SIunits.html#Modelica. T             temperature
  SIunits.Temperature)                                        [K]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- -----------------------------
  [Density](Modelica_SIunits.html#Model d     density of water at the
  ica.SIunits.Density)                        boiling point [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function rhol_T "density of saturated water"
      extends Modelica.Icons.Function;
      input SI.Temperature T "temperature";
      output SI.Density d "density of water at the boiling point";
    protected 
      SI.Pressure p "saturation pressure";
    algorithm 
      p := Basic.psat(T);
      if T < data.TLIMIT1 then
        d := d1n(p, T);
      elseif T < data.TCRIT then
        d := rhol_p_R4b(p);
      else
        d := data.DCRIT;
      end if;
    end rhol_T;

* * * * *

![image133](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).rhov\_T
====================================================================================================================================================================================================================================================================

**density of saturated vapour**

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
  [Temperature](Modelica_SIunits.html#Modelica. T             temperature
  SIunits.Temperature)                                        [K]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                 Name  Description
  ------------------------------------ ----- ------------------------------
  [Density](Modelica_SIunits.html#Mode d     density of steam at the
  lica.SIunits.Density)                      condensation point [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function rhov_T "density of saturated vapour"
      extends Modelica.Icons.Function;
      input SI.Temperature T "temperature";
      output SI.Density d "density of steam at the condensation point";
    protected 
      SI.Pressure p "saturation pressure";
    algorithm 

        // assert(T <= data.TCRIT,"input temperature has to be below the critical temperature");
      p := Basic.psat(T);
      if T < data.TLIMIT1 then
        d := d2n(p, T);
      elseif T < data.TCRIT then
        d := rhov_p_R4b(p);
      else
        d := data.DCRIT;
      end if;
    end rhov_T;

* * * * *

![image134](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).region\_ph
=======================================================================================================================================================================================================================================================================

**return the current region (valid values: 1,2,3,4,5) in IF97 for given
pressure and specific enthalpy**

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

  [SpecificEnthalpy](Modelica_SIunits. h          specific enthalpy [J/kg]
  html#Modelica.SIunits.SpecificEnthal            
  py)                                             

  Integer                              phas 0     phase: 2 for two-phase, 1
                                       e          for one phase, 0 if not
                                                  known

  Integer                              mode 0     mode: 0 means check,
                                                  otherwise assume
                                                  region=mode
  --------------------------------------------------------------------------

Outputs
-------

  Type         Name        Description
  ------------ ----------- ---------------------------------------------
  Integer      region      region (valid values: 1,2,3,4,5) in IF97

Modelica definition
-------------------

    function region_ph 
      "return the current region (valid values: 1,2,3,4,5) in IF97 for given pressure and specific enthalpy"
      extends Modelica.Icons.Function;
     input SI.Pressure p "pressure";
     input SI.SpecificEnthalpy h "specific enthalpy";
     input Integer phase=0 
        "phase: 2 for two-phase, 1 for one phase, 0 if not known";
     input Integer mode=0 "mode: 0 means check, otherwise assume region=mode";
      output Integer region "region (valid values: 1,2,3,4,5) in IF97";
      // If mode is different from 0, no checking for the region is done and
      // the mode is assumed to be the correct region. This can be used to
      // implement e.g., water-only steamtables when mode == 1
    protected 
      Boolean hsubcrit;
      SI.Temperature Ttest;
      constant Real[5] n=data.n;
      SI.SpecificEnthalpy hl "bubble enthalpy";
      SI.SpecificEnthalpy hv "dew enthalpy";
    algorithm 
      if (mode <> 0) then
        region := mode;
      else
        // check for regions 1, 2, 3 and 4
        hl := hl_p(p);
        hv := hv_p(p);
        if (phase == 2) then
          region := 4;
        else
          // phase == 1 or 0, now check if we are in the legal area
          if 
            (p < triple.ptriple) or (p > data.PLIMIT1) or (h < hlowerofp1(p)) or 
            ((p < 10.0e6) and (h > hupperofp5(p)))
            or ((p >= 10.0e6) and (h > hupperofp2(p))) then
            // outside of valid range
            region := -1;
          else
            //region 5 and -1 check complete
            hsubcrit := (h < data.HCRIT);
            // simple precheck: very simple if pressure < PLIMIT4A
            if (p < data.PLIMIT4A) then
              // we can never be in region 3, so test for others
              if hsubcrit then
                if (phase == 1) then
                  region := 1;
                else
                  if (h < Isentropic.hofpT1(p,Basic.tsat(p))) then
                    region := 1;
                  else
                    region := 4;
                  end if;
                end if;
                // external or internal phase check
              else
                if (h > hlowerofp5(p)) then
                  // check for region 5
                  if ((p < data.PLIMIT5) and (h < hupperofp5(p))) then
                    region := 5;
                  else
                    region := -2;
                    // pressure and specific enthalpy too high, but this should
                  end if;
                  // never happen
                else
                  if (phase == 1) then
                    region := 2;
                  else
                    if (h > Isentropic.hofpT2(p,Basic.tsat(p))) then
                      region := 2;
                    else
                      region := 4;
                    end if;
                  end if;  // external or internal phase check
                end if;
                // tests for region 2 or 5
              end if;
              // tests for sub or supercritical
            else
              // the pressure is over data.PLIMIT4A
              if hsubcrit then
                // region 1 or 3 or 4
                if h < hupperofp1(p) then
                  region := 1;
                else
                  if h < hl  or p > data.PCRIT then
                    region := 3;
                  else
                    region :=4;
                  end if;
                end if;
                // enf of test for region 1, 3 or 4
              else
                // region 2, 3 or 4
                if (h > hlowerofp2(p)) then
                  region := 2;
                else
                  if h > hv  or p > data.PCRIT then
                    region := 3;
                  else
                    region := 4;
                  end if;
                end if;
                // test for 2 and 3
              end if;
              // tests above PLIMIT4A
            end if;
            // above or below PLIMIT4A
          end if;
          // check for grand limits of p and h
        end if;
        // all tests with phase == 1
      end if;
      // mode was == 0
      // assert(region > 0,"IF97 function called outside the valid range!");
    end region_ph;

* * * * *

![image135](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).region\_ps
=======================================================================================================================================================================================================================================================================

**return the current region (valid values: 1,2,3,4,5) in IF97 for given
pressure and specific entropy**

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

  Integer                              mode 0     mode: 0 means check,
                                                  otherwise assume
                                                  region=mode
  --------------------------------------------------------------------------

Outputs
-------

  Type         Name        Description
  ------------ ----------- ---------------------------------------------
  Integer      region      region (valid values: 1,2,3,4,5) in IF97

Modelica definition
-------------------

    function region_ps 
      "return the current region (valid values: 1,2,3,4,5) in IF97 for given pressure and specific entropy"
      extends Modelica.Icons.Function;
     input SI.Pressure p "pressure";
     input SI.SpecificEntropy s "specific entropy";
     input Integer phase=
                    0 "phase: 2 for two-phase, 1 for one phase, 0 if unknown";
     input Integer mode=
                   0 "mode: 0 means check, otherwise assume region=mode";
      output Integer region "region (valid values: 1,2,3,4,5) in IF97";
      //  If mode is different from 0, no checking for the region is done and
      //    the mode is assumed to be the correct region. This can be used to
      //    implement e.g., water-only steamtables when mode == 1
    protected 
      Boolean ssubcrit;
      SI.Temperature Ttest;
      constant Real[5] n=data.n;
      SI.SpecificEntropy sl "bubble entropy";
      SI.SpecificEntropy sv "dew entropy";
    algorithm 
      if (mode <> 0) then
        region := mode;
      else
        // check for regions 1, 2, 3, and 4
        sl := sl_p(p);
        sv := sv_p(p);
        // check all cases two-phase
        if (phase == 2) or (phase == 0 and s > sl and s < sv and p < data.PCRIT) then
          region := 4;
        else
          // phase == 1
          region := 0;
          if (p < triple.ptriple) then
            region := -2;
          end if;
          if (p > data.PLIMIT1) then
            region := -3;
          end if;
          if ((p < 10.0e6) and (s > supperofp5(p))) then
            region := -5;
          end if;
          if ((p >= 10.0e6) and (s > supperofp2(p))) then
            region := -6;
          end if;
          if region < 0 then
            assert(false, "region computation from p and s failed: function called outside the legal region");
          else
            ssubcrit := (s < data.SCRIT);
            // simple precheck: very simple if pressure < PLIMIT4A
            if (p < data.PLIMIT4A) then
              // we can never be in region 3, so test for 1 and 2
              if ssubcrit then
                region := 1;
              else
                if (s > slowerofp5(p)) then
                  // check for region 5
                  if ((p < data.PLIMIT5) and (s < supperofp5(p))) then
                    region := 5;
                  else
                    region := -1;
                    // pressure and specific entropy too high, should never happen!
                  end if;
                else
                  region := 2;
                end if;
                // tests for region 2 or 5
              end if;
              // tests for sub or supercritical
            else
              // the pressure is over data.PLIMIT4A
              if ssubcrit then
                // region 1 or 3
                if s < supperofp1(p) then
                  region := 1;
                else
                  if s < sl  or p > data.PCRIT then
                    region := 3;
                  else
                    region := 4;
                  end if;
                end if;
                // test for region 1, 3 or 4
              else
                // region 2, 3 or 4
                if (s > slowerofp2(p)) then
                  region := 2;
                else
                  if s > sv  or p > data.PCRIT then
                    region := 3;
                  else
                    region := 4;
                  end if;
                end if;
                // test for 2,3 and 4
              end if;
              // tests above PLIMIT4A
            end if;
            // above or below PLIMIT4A
          end if;
          // grand test for limits of p and s
        end if;
        // all tests with phase == 1
      end if;
      // mode was == 0
    end region_ps;

* * * * *

![image136](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).region\_pT
=======================================================================================================================================================================================================================================================================

**return the current region (valid values: 1,2,3,5) in IF97, given
pressure and temperature**

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

  [Temperature](Modelica_SIunits.html T          temperature (K) [K]
  #Modelica.SIunits.Temperature)                 

  Integer                             mode 0     mode: 0 means check,
                                                 otherwise assume
                                                 region=mode
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type      Name     Description
  --------- -------- -----------------------------------------------------
  Integer   region   region (valid values: 1,2,3,5) in IF97, region 4 is
                     impossible!
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function region_pT 
      "return the current region (valid values: 1,2,3,5) in IF97, given pressure and temperature"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature (K)";
      input Integer mode=0 "mode: 0 means check, otherwise assume region=mode";
      output Integer region 
        "region (valid values: 1,2,3,5) in IF97, region 4 is impossible!";
    algorithm 
      if (mode <> 0) then
        region := mode;
      else
        if p < data.PLIMIT4A then
          //test for regions 1,2,5
          if T > data.TLIMIT2 then
            region := 5;
          elseif T > Basic.tsat(p) then
            region := 2;
          else
            region := 1;
          end if;
        else
          //test for regions 1,2,3
          if T < data.TLIMIT1 then
            region := 1;
          elseif T < boundary23ofp(p) then
            region := 3;
          else
            region := 2;
          end if;
        end if;
      end if;
      // mode was == 0
    end region_pT;

* * * * *

![image137](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).region\_dT
=======================================================================================================================================================================================================================================================================

**return the current region (valid values: 1,2,3,4,5) in IF97, given
density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name Defau Description
                                         lt    
  --------------------------------- ---- ----- ----------------------------
  [Density](Modelica_SIunits.html#M d          density [kg/m3]
  odelica.SIunits.Density)                     

  [Temperature](Modelica_SIunits.ht T          temperature (K) [K]
  ml#Modelica.SIunits.Temperature)             

  Integer                           phas 0     phase: 2 for two-phase, 1
                                    e          for one phase, 0 if not
                                               known

  Integer                           mode 0     mode: 0 means check,
                                               otherwise assume region=mode
  -------------------------------------------------------------------------

Outputs
-------

  Type         Name        Description
  ------------ ----------- --------------------------------------
  Integer      region      (valid values: 1,2,3,4,5) in IF97

Modelica definition
-------------------

    function region_dT 
      "return the current region (valid values: 1,2,3,4,5) in IF97, given density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature (K)";
      input Integer phase= 0 
        "phase: 2 for two-phase, 1 for one phase, 0 if not known";
      input Integer mode= 0 "mode: 0 means check, otherwise assume region=mode";
      output Integer region "(valid values: 1,2,3,4,5) in IF97";
    protected 
      Boolean Tovercrit "flag if overcritical temperature";
      SI.Pressure p23 "pressure needed to know if region 2 or 3";
    algorithm 
      Tovercrit := T > data.TCRIT;
      if (mode <> 0) then
        region := mode;
      else
        p23 := boundary23ofT(T);
        if T > data.TLIMIT2 then
          if d < 20.5655874106483 then
            // check for the density in the upper corner of validity!
            region := 5;
          else
            assert(false,"out of valid region for IF97, pressure above region 5!");
          end if;
        elseif Tovercrit then
          //check for regions 1, 2 or 3
          if d > d2n(p23, T) and T > data.TLIMIT1 then
            region := 3;
          elseif T < data.TLIMIT1 then
            region := 1;
          else // d  < d2n(p23, T) and T > data.TLIMIT1
            region := 2;
          end if;
          // below critical, check for regions 1, 2, 3 or 4
        elseif (d > rhol_T(T)) then
          // either 1 or 3
          if T < data.TLIMIT1 then
            region := 1;
          else
            region := 3;
          end if;
        elseif (d < rhov_T(T)) then
          // not liquid, not 2-phase, and not region 5, so either 2 or 3 or illegal
          if (d > d2n(p23, T) and T > data.TLIMIT1) then
            region := 3;
          else
            region := 2;
          end if;
        else
          region := 4;
        end if;
      end if;
    end region_dT;

* * * * *

![image138](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).hvl\_dp
====================================================================================================================================================================================================================================================================

**derivative function for the specific enthalpy along the phase
boundary**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                 Name Defau Descripti
                                                            lt    on
  ---------------------------------------------------- ---- ----- ---------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits.Pr p          pressure
  essure)                                                         [Pa]

  [IF97PhaseBoundaryProperties](Modelica_Media_Common. bpro       property
  html#Modelica.Media.Common.IF97PhaseBoundaryProperti            record
  es)                                                             
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type     Name      Description
  -------- --------- ------------------------------------------------------
  Real     dh\_dp    derivative of specific enthalpy along the phase
                     boundary
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function hvl_dp 
      "derivative function for the specific enthalpy along the phase boundary"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input Common.IF97PhaseBoundaryProperties bpro "property record";
      output Real dh_dp "derivative of specific enthalpy along the phase boundary";
    algorithm 
      if bpro.region3boundary then
        dh_dp := ((bpro.d*bpro.pd - bpro.T*bpro.pt) + (bpro.T*bpro.pt*
          bpro.pt + bpro.d*bpro.d*bpro.pd*bpro.cv)/bpro.dpT)/(bpro.pd*
          bpro.d*bpro.d);
      else
        dh_dp := (1/bpro.d - bpro.T*bpro.vt) + bpro.cp/bpro.dpT;
      end if;
    end hvl_dp;

* * * * *

![image139](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).dhl\_dp
====================================================================================================================================================================================================================================================================

**derivative of liquid specific enthalpy on the boundary between regions
4 and 3 or 1 w.r.t. pressure**

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
  Type                                     Name Description
  ---------------------------------------- ---- ---------------------------
  [DerEnthalpyByPressure](Modelica_SIunits dh\_ specific enthalpy
  .html#Modelica.SIunits.DerEnthalpyByPres dp   derivative w.r.t. pressure
  sure)                                         [J.m.s2/kg2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dhl_dp 
      "derivative of liquid specific enthalpy on the boundary between regions 4 and 3 or 1 w.r.t. pressure"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.DerEnthalpyByPressure dh_dp 
        "specific enthalpy derivative w.r.t. pressure";
    algorithm 
      dh_dp := hvl_dp(p, boilingcurve_p(p));
    end dhl_dp;

* * * * *

![image140](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).dhv\_dp
====================================================================================================================================================================================================================================================================

**derivative of vapour specific enthalpy on the boundary between regions
4 and 3 or 1 w.r.t. pressure**

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
  Type                                     Name Description
  ---------------------------------------- ---- ---------------------------
  [DerEnthalpyByPressure](Modelica_SIunits dh\_ specific enthalpy
  .html#Modelica.SIunits.DerEnthalpyByPres dp   derivative w.r.t. pressure
  sure)                                         [J.m.s2/kg2]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dhv_dp 
      "derivative of vapour specific enthalpy on the boundary between regions 4 and 3 or 1 w.r.t. pressure"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      output SI.DerEnthalpyByPressure dh_dp 
        "specific enthalpy derivative w.r.t. pressure";
    algorithm 
      dh_dp := hvl_dp(p, dewcurve_p(p));
    end dhv_dp;

* * * * *

![image141](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).drhovl\_dp
=======================================================================================================================================================================================================================================================================

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                               Nam Defau Description
                                                     e   lt    
  -------------------------------------------------- --- ----- ------------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits. p         saturation
  Pressure)                                                    pressure
                                                               [Pa]

  [IF97PhaseBoundaryProperties](Modelica_Media_Commo bpr       property
  n.html#Modelica.Media.Common.IF97PhaseBoundaryProp o         record
  erties)                                                      
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type    Name      Description
  ------- --------- ------------------------------------------------------
  Real    dd\_dp    derivative of density along the phase boundary
                    [kg/(m3.Pa)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function drhovl_dp
      extends Modelica.Icons.Function;
      input SI.Pressure p "saturation pressure";
      input Common.IF97PhaseBoundaryProperties bpro "property record";
      output Real dd_dp(unit="kg/(m3.Pa)") 
        "derivative of density along the phase boundary";
    algorithm 
      dd_dp := if bpro.region3boundary then (1.0 - bpro.pt/bpro.dpT)/
        bpro.pd else -bpro.d*bpro.d*(bpro.vp + bpro.vt/bpro.dpT);
    end drhovl_dp;

* * * * *

![image142](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).drhol\_dp
======================================================================================================================================================================================================================================================================

**derivative of density of saturated water w.r.t. pressure**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                     Name  Default Description
  ---------------------------------------- ----- ------- ------------------
  [Pressure](Modelica_SIunits.html#Modelic p             saturation
  a.SIunits.Pressure)                                    pressure [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ---------------------------
  [DerDensityByPressure](Modelica_SIunits dd\_ derivative of density of
  .html#Modelica.SIunits.DerDensityByPres dp   water at the boiling point
  sure)                                        [s2/m2]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function drhol_dp 
      "derivative of density of saturated water w.r.t. pressure"
      extends Modelica.Icons.Function;
      input SI.Pressure p "saturation pressure";
      output SI.DerDensityByPressure dd_dp 
        "derivative of density of water at the boiling point";
    algorithm 
      dd_dp := drhovl_dp(p, boilingcurve_p(p));
    end drhol_dp;

* * * * *

![image143](Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions.boundary23ofTI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97.Regions](Modelica_Media_Water_IF97_Utilities_BaseIF97_Regions.html#Modelica.Media.Water.IF97_Utilities.BaseIF97.Regions).drhov\_dp
======================================================================================================================================================================================================================================================================

**derivative of density of saturated steam w.r.t. pressure**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                     Name  Default Description
  ---------------------------------------- ----- ------- ------------------
  [Pressure](Modelica_SIunits.html#Modelic p             saturation
  a.SIunits.Pressure)                                    pressure [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ---------------------------
  [DerDensityByPressure](Modelica_SIunits dd\_ derivative of density of
  .html#Modelica.SIunits.DerDensityByPres dp   water at the boiling point
  sure)                                        [s2/m2]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function drhov_dp 
      "derivative of density of saturated steam w.r.t. pressure"
      extends Modelica.Icons.Function;
      input SI.Pressure p "saturation pressure";
      output SI.DerDensityByPressure dd_dp 
        "derivative of density of water at the boiling point";
    algorithm 
      dd_dp := drhovl_dp(p, dewcurve_p(p));
    end drhov_dp;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:38 2010.
