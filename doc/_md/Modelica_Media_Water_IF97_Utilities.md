% Modelica.Media.Water.IF97\_Utilities
% 
% 

[Modelica.Media.Water](Modelica_Media_Water.html#Modelica.Media.Water).IF97\_Utilities
======================================================================================

**Low level and utility computation for high accuracy water properties
according to the IAPWS/IF97 standard**

Information
-----------

::

### Package description:

This package provides high accuracy physical properties for water
according to the IAPWS/IF97 standard. It has been part of the
ThermoFluid Modelica library and been extended, reorganized and
documented to become part of the Modelica Standard library.

An important feature that distinguishes this implementation of the IF97
steam property standard is that this implementation has been explicitly
designed to work well in dynamic simulations. Computational performance
has been of high importance. This means that there often exist several
ways to get the same result from different functions if one of the
functions is called often but can be optimized for that purpose.

The original documentation of the IAPWS/IF97 steam properties can freely
be distributed with computer implementations, so for curious minds the
complete standard documentation is provided with the Modelica properties
library. The following documents are included (in directory
Modelica/Resources/Documentation/Media/Water/IF97documentation):

-   IF97.pdf The standards document for the main part of the IF97.
-   Back3.pdf The backwards equations for region 3.
-   crits.pdf The critical point data.
-   meltsub.pdf The melting- and sublimation line formulation (in
    IF97\_Utilities.BaseIF97.IceBoundaries)
-   surf.pdf The surface tension standard definition
-   thcond.pdf The thermal conductivity standard definition
-   visc.pdf The viscosity standard definition

### Package contents

-   Package **BaseIF97** contains the implementation of the IAPWS-IF97
    as described in IF97.pdf. The explicit backwards equations for
    region 3 from Back3.pdf are implemented as initial values for an
    inverse iteration of the exact function in IF97 for the input pairs
    (p,h) and (p,s). The low-level functions in BaseIF97 are not needed
    for standard simulation usage, but can be useful for experts and
    some special purposes.
-   Function **water\_ph** returns all properties needed for a dynamic
    control volume model and properties of general interest using
    pressure p and specific entropy enthalpy h as dynamic states in the
    record ThermoProperties\_ph.
-   Function **water\_ps** returns all properties needed for a dynamic
    control volume model and properties of general interest using
    pressure p and specific entropy s as dynamic states in the record
    ThermoProperties\_ps.
-   Function **water\_dT** returns all properties needed for a dynamic
    control volume model and properties of general interest using
    density d and temperature T as dynamic states in the record
    ThermoProperties\_dT.
-   Function **water\_pT** returns all properties needed for a dynamic
    control volume model and properties of general interest using
    pressure p and temperature T as dynamic states in the record
    ThermoProperties\_pT. Due to the coupling of pressure and
    temperature in the two-phase region, this model can obviously only
    be used for one-phase models or models treating both phases
    independently.
-   Function **hl\_p** computes the liquid specific enthalpy as a
    function of pressure. For overcritical pressures, the critical
    specific enthalpy is returned
-   Function **hv\_p** computes the vapour specific enthalpy as a
    function of pressure. For overcritical pressures, the critical
    specific enthalpy is returned
-   Function **sl\_p** computes the liquid specific entropy as a
    function of pressure. For overcritical pressures, the critical
    specific entropy is returned
-   Function **sv\_p** computes the vapour specific entropy as a
    function of pressure. For overcritical pressures, the critical
    specific entropyis returned
-   Function **rhol\_T** computes the liquid density as a function of
    temperature. For overcritical temperatures, the critical density is
    returned
-   Function **rhol\_T** computes the vapour density as a function of
    temperature. For overcritical temperatures, the critical density is
    returned
-   Function **dynamicViscosity** computes the dynamic viscosity as a
    function of density and temperature.
-   Function **thermalConductivity** computes the thermal conductivity
    as a function of density, temperature and pressure. **Important
    note**: Obviously only two of the three inputs are really needed,
    but using three inputs speeds up the computation and the three
    variables are known in most models anyways. The inputs d,T and p
    have to be consistent.
-   Function **surfaceTension** computes the surface tension between
    vapour and liquid water as a function of temperature.
-   Function **isentropicEnthalpy** computes the specific enthalpy
    h(p,s,phase) in all regions. The phase input is needed due to
    discontinuous derivatives at the phase boundary.
-   Function **dynamicIsentropicEnthalpy** computes the specific
    enthalpy h(p,s,,dguess,Tguess,phase) in all regions. The phase input
    is needed due to discontinuous derivatives at the phase boundary.
    Tguess and dguess are initial guess values for the density and
    temperature consistent with p and s. This function should be
    preferred in dynamic simulations where good guesses are often
    available.

### Version Info and Revision history

-   First implemented: *July, 2000* by Hubertus Tummescheit for the
    ThermoFluid Library with help from Jonas Eborn and Falko Jens Wagner
-   Code reorganization, enhanced documentation, additional functions:
    *December, 2002* by [Hubertus
    Tummescheit](mailto:Hubertus.Tummescheit@modelon.se) and moved to
    Modelica properties library.

Author: Hubertus Tummescheit,
  ~ Modelon AB Ideon Science Park SE-22370 Lund, Sweden email:
    [hubertus@modelon.se](mailto:hubertus@modelon.se)

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                            Description
  ----------------------------------------------- ------------------------
  ![image97](Modelica.Media.Water.IF97_Utilities. Modelica Physical
  BaseIF97S.png)                                  Property Model: the new
  [BaseIF97](Modelica_Media_Water_IF97_Utilities_ industrial formulation
  BaseIF97.html#Modelica.Media.Water.IF97_Utiliti IAPWS-IF97
  es.BaseIF97)                                    

  ![image98](Modelica.Media.Water.IF97_Utilities. 
  iterS.png)                                      
  [iter](Modelica_Media_Water_IF97_Utilities.html 
  #Modelica.Media.Water.IF97_Utilities.iter)      

  ![image99](Modelica.Media.Water.IF97_Utilities. intermediate property
  waterBaseProp_phS.png)                          record for water
  [waterBaseProp\_ph](Modelica_Media_Water_IF97_U 
  tilities.html#Modelica.Media.Water.IF97_Utiliti 
  es.waterBaseProp_ph)                            

  ![image100](Modelica.Media.Water.IF97_Utilities intermediate property
  .waterBaseProp_phS.png)                         record for water
  [waterBaseProp\_ps](Modelica_Media_Water_IF97_U 
  tilities.html#Modelica.Media.Water.IF97_Utiliti 
  es.waterBaseProp_ps)                            

  ![image101](Modelica.Media.Water.IF97_Utilities density as function of
  .waterBaseProp_phS.png)                         pressure and specific
  [rho\_props\_ps](Modelica_Media_Water_IF97_Util entropy
  ities.html#Modelica.Media.Water.IF97_Utilities. 
  rho_props_ps)                                   

  ![image102](Modelica.Media.Water.IF97_Utilities density as function of
  .waterBaseProp_phS.png)                         pressure and specific
  [rho\_ps](Modelica_Media_Water_IF97_Utilities.h entropy
  tml#Modelica.Media.Water.IF97_Utilities.rho_ps) 

  ![image103](Modelica.Media.Water.IF97_Utilities temperature as function
  .waterBaseProp_phS.png)                         of pressure and specific
  [T\_props\_ps](Modelica_Media_Water_IF97_Utilit entropy
  ies.html#Modelica.Media.Water.IF97_Utilities.T_ 
  props_ps)                                       

  ![image104](Modelica.Media.Water.IF97_Utilities temperature as function
  .waterBaseProp_phS.png)                         of pressure and specific
  [T\_ps](Modelica_Media_Water_IF97_Utilities.htm entropy
  l#Modelica.Media.Water.IF97_Utilities.T_ps)     

  ![image105](Modelica.Media.Water.IF97_Utilities specific enthalpy as
  .waterBaseProp_phS.png)                         function or pressure and
  [h\_props\_ps](Modelica_Media_Water_IF97_Utilit temperature
  ies.html#Modelica.Media.Water.IF97_Utilities.h_ 
  props_ps)                                       

  ![image106](Modelica.Media.Water.IF97_Utilities specific enthalpy as
  .waterBaseProp_phS.png)                         function or pressure and
  [h\_ps](Modelica_Media_Water_IF97_Utilities.htm temperature
  l#Modelica.Media.Water.IF97_Utilities.h_ps)     

  ![image107](Modelica.Media.Water.IF97_Utilities phase as a function of
  .waterBaseProp_phS.png)                         pressure and specific
  [phase\_ps](Modelica_Media_Water_IF97_Utilities entropy
  .html#Modelica.Media.Water.IF97_Utilities.phase 
  _ps)                                            

  ![image108](Modelica.Media.Water.IF97_Utilities phase as a function of
  .waterBaseProp_phS.png)                         pressure and specific
  [phase\_ph](Modelica_Media_Water_IF97_Utilities enthalpy
  .html#Modelica.Media.Water.IF97_Utilities.phase 
  _ph)                                            

  ![image109](Modelica.Media.Water.IF97_Utilities phase as a function of
  .waterBaseProp_phS.png)                         pressure and temperature
  [phase\_dT](Modelica_Media_Water_IF97_Utilities 
  .html#Modelica.Media.Water.IF97_Utilities.phase 
  _dT)                                            

  ![image110](Modelica.Media.Water.IF97_Utilities density as function of
  .waterBaseProp_phS.png)                         pressure and specific
  [rho\_props\_ph](Modelica_Media_Water_IF97_Util enthalpy
  ities.html#Modelica.Media.Water.IF97_Utilities. 
  rho_props_ph)                                   

  ![image111](Modelica.Media.Water.IF97_Utilities density as function of
  .waterBaseProp_phS.png)                         pressure and specific
  [rho\_ph](Modelica_Media_Water_IF97_Utilities.h enthalpy
  tml#Modelica.Media.Water.IF97_Utilities.rho_ph) 

  ![image112](Modelica.Media.Water.IF97_Utilities derivative function of
  .waterBaseProp_phS.png)                         rho\_ph
  [rho\_ph\_der](Modelica_Media_Water_IF97_Utilit 
  ies.html#Modelica.Media.Water.IF97_Utilities.rh 
  o_ph_der)                                       

  ![image113](Modelica.Media.Water.IF97_Utilities temperature as function
  .waterBaseProp_phS.png)                         of pressure and specific
  [T\_props\_ph](Modelica_Media_Water_IF97_Utilit enthalpy
  ies.html#Modelica.Media.Water.IF97_Utilities.T_ 
  props_ph)                                       

  ![image114](Modelica.Media.Water.IF97_Utilities temperature as function
  .waterBaseProp_phS.png)                         of pressure and specific
  [T\_ph](Modelica_Media_Water_IF97_Utilities.htm enthalpy
  l#Modelica.Media.Water.IF97_Utilities.T_ph)     

  ![image115](Modelica.Media.Water.IF97_Utilities derivative function of
  .waterBaseProp_phS.png)                         T\_ph
  [T\_ph\_der](Modelica_Media_Water_IF97_Utilitie 
  s.html#Modelica.Media.Water.IF97_Utilities.T_ph 
  _der)                                           

  ![image116](Modelica.Media.Water.IF97_Utilities specific entropy as
  .waterBaseProp_phS.png)                         function of pressure and
  [s\_props\_ph](Modelica_Media_Water_IF97_Utilit specific enthalpy
  ies.html#Modelica.Media.Water.IF97_Utilities.s_ 
  props_ph)                                       

  ![image117](Modelica.Media.Water.IF97_Utilities specific entropy as
  .waterBaseProp_phS.png)                         function of pressure and
  [s\_ph](Modelica_Media_Water_IF97_Utilities.htm specific enthalpy
  l#Modelica.Media.Water.IF97_Utilities.s_ph)     

  ![image118](Modelica.Media.Water.IF97_Utilities specific entropy as
  .waterBaseProp_phS.png)                         function of pressure and
  [s\_ph\_der](Modelica_Media_Water_IF97_Utilitie specific enthalpy
  s.html#Modelica.Media.Water.IF97_Utilities.s_ph 
  _der)                                           

  ![image119](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant volume as
  [cv\_props\_ph](Modelica_Media_Water_IF97_Utili function of pressure and
  ties.html#Modelica.Media.Water.IF97_Utilities.c specific enthalpy
  v_props_ph)                                     

  ![image120](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant volume as
  [cv\_ph](Modelica_Media_Water_IF97_Utilities.ht function of pressure and
  ml#Modelica.Media.Water.IF97_Utilities.cv_ph)   specific enthalpy

  ![image121](Modelica.Media.Water.IF97_Utilities assert function for
  .waterBaseProp_phS.png)                         inlining
  [regionAssertReal](Modelica_Media_Water_IF97_Ut 
  ilities.html#Modelica.Media.Water.IF97_Utilitie 
  s.regionAssertReal)                             

  ![image122](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant pressure as
  [cp\_props\_ph](Modelica_Media_Water_IF97_Utili function of pressure and
  ties.html#Modelica.Media.Water.IF97_Utilities.c specific enthalpy
  p_props_ph)                                     

  ![image123](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant pressure as
  [cp\_ph](Modelica_Media_Water_IF97_Utilities.ht function of pressure and
  ml#Modelica.Media.Water.IF97_Utilities.cp_ph)   specific enthalpy

  ![image124](Modelica.Media.Water.IF97_Utilities isobaric expansion
  .waterBaseProp_phS.png)                         coefficient as function
  [beta\_props\_ph](Modelica_Media_Water_IF97_Uti of pressure and specific
  lities.html#Modelica.Media.Water.IF97_Utilities enthalpy
  .beta_props_ph)                                 

  ![image125](Modelica.Media.Water.IF97_Utilities isobaric expansion
  .waterBaseProp_phS.png)                         coefficient as function
  [beta\_ph](Modelica_Media_Water_IF97_Utilities. of pressure and specific
  html#Modelica.Media.Water.IF97_Utilities.beta_p enthalpy
  h)                                              

  ![image126](Modelica.Media.Water.IF97_Utilities isothermal
  .waterBaseProp_phS.png)                         compressibility factor
  [kappa\_props\_ph](Modelica_Media_Water_IF97_Ut as function of pressure
  ilities.html#Modelica.Media.Water.IF97_Utilitie and specific enthalpy
  s.kappa_props_ph)                               

  ![image127](Modelica.Media.Water.IF97_Utilities isothermal
  .waterBaseProp_phS.png)                         compressibility factor
  [kappa\_ph](Modelica_Media_Water_IF97_Utilities as function of pressure
  .html#Modelica.Media.Water.IF97_Utilities.kappa and specific enthalpy
  _ph)                                            

  ![image128](Modelica.Media.Water.IF97_Utilities speed of sound as
  .waterBaseProp_phS.png)                         function of pressure and
  [velocityOfSound\_props\_ph](Modelica_Media_Wat specific enthalpy
  er_IF97_Utilities.html#Modelica.Media.Water.IF9 
  7_Utilities.velocityOfSound_props_ph)           

  ![image129](Modelica.Media.Water.IF97_Utilities 
  .waterBaseProp_phS.png)                         
  [velocityOfSound\_ph](Modelica_Media_Water_IF97 
  _Utilities.html#Modelica.Media.Water.IF97_Utili 
  ties.velocityOfSound_ph)                        

  ![image130](Modelica.Media.Water.IF97_Utilities isentropic exponent as
  .waterBaseProp_phS.png)                         function of pressure and
  [isentropicExponent\_props\_ph](Modelica_Media_ specific enthalpy
  Water_IF97_Utilities.html#Modelica.Media.Water. 
  IF97_Utilities.isentropicExponent_props_ph)     

  ![image131](Modelica.Media.Water.IF97_Utilities isentropic exponent as
  .waterBaseProp_phS.png)                         function of pressure and
  [isentropicExponent\_ph](Modelica_Media_Water_I specific enthalpy
  F97_Utilities.html#Modelica.Media.Water.IF97_Ut 
  ilities.isentropicExponent_ph)                  

  ![image132](Modelica.Media.Water.IF97_Utilities density derivative by
  .waterBaseProp_phS.png)                         pressure
  [ddph\_props](Modelica_Media_Water_IF97_Utiliti 
  es.html#Modelica.Media.Water.IF97_Utilities.ddp 
  h_props)                                        

  ![image133](Modelica.Media.Water.IF97_Utilities density derivative by
  .waterBaseProp_phS.png)                         pressure
  [ddph](Modelica_Media_Water_IF97_Utilities.html 
  #Modelica.Media.Water.IF97_Utilities.ddph)      

  ![image134](Modelica.Media.Water.IF97_Utilities density derivative by
  .waterBaseProp_phS.png)                         specific enthalpy
  [ddhp\_props](Modelica_Media_Water_IF97_Utiliti 
  es.html#Modelica.Media.Water.IF97_Utilities.ddh 
  p_props)                                        

  ![image135](Modelica.Media.Water.IF97_Utilities density derivative by
  .waterBaseProp_phS.png)                         specific enthalpy
  [ddhp](Modelica_Media_Water_IF97_Utilities.html 
  #Modelica.Media.Water.IF97_Utilities.ddhp)      

  ![image136](Modelica.Media.Water.IF97_Utilities intermediate property
  .waterBaseProp_phS.png)                         record for water (p and
  [waterBaseProp\_pT](Modelica_Media_Water_IF97_U T prefered states)
  tilities.html#Modelica.Media.Water.IF97_Utiliti 
  es.waterBaseProp_pT)                            

  ![image137](Modelica.Media.Water.IF97_Utilities density as function or
  .waterBaseProp_phS.png)                         pressure and temperature
  [rho\_props\_pT](Modelica_Media_Water_IF97_Util 
  ities.html#Modelica.Media.Water.IF97_Utilities. 
  rho_props_pT)                                   

  ![image138](Modelica.Media.Water.IF97_Utilities density as function or
  .waterBaseProp_phS.png)                         pressure and temperature
  [rho\_pT](Modelica_Media_Water_IF97_Utilities.h 
  tml#Modelica.Media.Water.IF97_Utilities.rho_pT) 

  ![image139](Modelica.Media.Water.IF97_Utilities specific enthalpy as
  .waterBaseProp_phS.png)                         function or pressure and
  [h\_props\_pT](Modelica_Media_Water_IF97_Utilit temperature
  ies.html#Modelica.Media.Water.IF97_Utilities.h_ 
  props_pT)                                       

  ![image140](Modelica.Media.Water.IF97_Utilities specific enthalpy as
  .waterBaseProp_phS.png)                         function or pressure and
  [h\_pT](Modelica_Media_Water_IF97_Utilities.htm temperature
  l#Modelica.Media.Water.IF97_Utilities.h_pT)     

  ![image141](Modelica.Media.Water.IF97_Utilities derivative function of
  .waterBaseProp_phS.png)                         h\_pT
  [h\_pT\_der](Modelica_Media_Water_IF97_Utilitie 
  s.html#Modelica.Media.Water.IF97_Utilities.h_pT 
  _der)                                           

  ![image142](Modelica.Media.Water.IF97_Utilities derivative function of
  .waterBaseProp_phS.png)                         rho\_pT
  [rho\_pT\_der](Modelica_Media_Water_IF97_Utilit 
  ies.html#Modelica.Media.Water.IF97_Utilities.rh 
  o_pT_der)                                       

  ![image143](Modelica.Media.Water.IF97_Utilities specific entropy as
  .waterBaseProp_phS.png)                         function of pressure and
  [s\_props\_pT](Modelica_Media_Water_IF97_Utilit temperature
  ies.html#Modelica.Media.Water.IF97_Utilities.s_ 
  props_pT)                                       

  ![image144](Modelica.Media.Water.IF97_Utilities temperature as function
  .waterBaseProp_phS.png)                         of pressure and
  [s\_pT](Modelica_Media_Water_IF97_Utilities.htm temperature
  l#Modelica.Media.Water.IF97_Utilities.s_pT)     

  ![image145](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant volume as
  [cv\_props\_pT](Modelica_Media_Water_IF97_Utili function of pressure and
  ties.html#Modelica.Media.Water.IF97_Utilities.c temperature
  v_props_pT)                                     

  ![image146](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant volume as
  [cv\_pT](Modelica_Media_Water_IF97_Utilities.ht function of pressure and
  ml#Modelica.Media.Water.IF97_Utilities.cv_pT)   temperature

  ![image147](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant pressure as
  [cp\_props\_pT](Modelica_Media_Water_IF97_Utili function of pressure and
  ties.html#Modelica.Media.Water.IF97_Utilities.c temperature
  p_props_pT)                                     

  ![image148](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant pressure as
  [cp\_pT](Modelica_Media_Water_IF97_Utilities.ht function of pressure and
  ml#Modelica.Media.Water.IF97_Utilities.cp_pT)   temperature

  ![image149](Modelica.Media.Water.IF97_Utilities isobaric expansion
  .waterBaseProp_phS.png)                         coefficient as function
  [beta\_props\_pT](Modelica_Media_Water_IF97_Uti of pressure and
  lities.html#Modelica.Media.Water.IF97_Utilities temperature
  .beta_props_pT)                                 

  ![image150](Modelica.Media.Water.IF97_Utilities isobaric expansion
  .waterBaseProp_phS.png)                         coefficient as function
  [beta\_pT](Modelica_Media_Water_IF97_Utilities. of pressure and
  html#Modelica.Media.Water.IF97_Utilities.beta_p temperature
  T)                                              

  ![image151](Modelica.Media.Water.IF97_Utilities isothermal
  .waterBaseProp_phS.png)                         compressibility factor
  [kappa\_props\_pT](Modelica_Media_Water_IF97_Ut as function of pressure
  ilities.html#Modelica.Media.Water.IF97_Utilitie and temperature
  s.kappa_props_pT)                               

  ![image152](Modelica.Media.Water.IF97_Utilities isothermal
  .waterBaseProp_phS.png)                         compressibility factor
  [kappa\_pT](Modelica_Media_Water_IF97_Utilities as function of pressure
  .html#Modelica.Media.Water.IF97_Utilities.kappa and temperature
  _pT)                                            

  ![image153](Modelica.Media.Water.IF97_Utilities speed of sound as
  .waterBaseProp_phS.png)                         function of pressure and
  [velocityOfSound\_props\_pT](Modelica_Media_Wat temperature
  er_IF97_Utilities.html#Modelica.Media.Water.IF9 
  7_Utilities.velocityOfSound_props_pT)           

  ![image154](Modelica.Media.Water.IF97_Utilities speed of sound as
  .waterBaseProp_phS.png)                         function of pressure and
  [velocityOfSound\_pT](Modelica_Media_Water_IF97 temperature
  _Utilities.html#Modelica.Media.Water.IF97_Utili 
  ties.velocityOfSound_pT)                        

  ![image155](Modelica.Media.Water.IF97_Utilities isentropic exponent as
  .waterBaseProp_phS.png)                         function of pressure and
  [isentropicExponent\_props\_pT](Modelica_Media_ temperature
  Water_IF97_Utilities.html#Modelica.Media.Water. 
  IF97_Utilities.isentropicExponent_props_pT)     

  ![image156](Modelica.Media.Water.IF97_Utilities isentropic exponent as
  .waterBaseProp_phS.png)                         function of pressure and
  [isentropicExponent\_pT](Modelica_Media_Water_I temperature
  F97_Utilities.html#Modelica.Media.Water.IF97_Ut 
  ilities.isentropicExponent_pT)                  

  ![image157](Modelica.Media.Water.IF97_Utilities intermediate property
  .waterBaseProp_phS.png)                         record for water (d and
  [waterBaseProp\_dT](Modelica_Media_Water_IF97_U T prefered states)
  tilities.html#Modelica.Media.Water.IF97_Utiliti 
  es.waterBaseProp_dT)                            

  ![image158](Modelica.Media.Water.IF97_Utilities specific enthalpy as
  .waterBaseProp_phS.png)                         function of density and
  [h\_props\_dT](Modelica_Media_Water_IF97_Utilit temperature
  ies.html#Modelica.Media.Water.IF97_Utilities.h_ 
  props_dT)                                       

  ![image159](Modelica.Media.Water.IF97_Utilities specific enthalpy as
  .waterBaseProp_phS.png)                         function of density and
  [h\_dT](Modelica_Media_Water_IF97_Utilities.htm temperature
  l#Modelica.Media.Water.IF97_Utilities.h_dT)     

  ![image160](Modelica.Media.Water.IF97_Utilities derivative function of
  .waterBaseProp_phS.png)                         h\_dT
  [h\_dT\_der](Modelica_Media_Water_IF97_Utilitie 
  s.html#Modelica.Media.Water.IF97_Utilities.h_dT 
  _der)                                           

  ![image161](Modelica.Media.Water.IF97_Utilities pressure as function of
  .waterBaseProp_phS.png)                         density and temperature
  [p\_props\_dT](Modelica_Media_Water_IF97_Utilit 
  ies.html#Modelica.Media.Water.IF97_Utilities.p_ 
  props_dT)                                       

  ![image162](Modelica.Media.Water.IF97_Utilities pressure as function of
  .waterBaseProp_phS.png)                         density and temperature
  [p\_dT](Modelica_Media_Water_IF97_Utilities.htm 
  l#Modelica.Media.Water.IF97_Utilities.p_dT)     

  ![image163](Modelica.Media.Water.IF97_Utilities derivative function of
  .waterBaseProp_phS.png)                         p\_dT
  [p\_dT\_der](Modelica_Media_Water_IF97_Utilitie 
  s.html#Modelica.Media.Water.IF97_Utilities.p_dT 
  _der)                                           

  ![image164](Modelica.Media.Water.IF97_Utilities specific entropy as
  .waterBaseProp_phS.png)                         function of density and
  [s\_props\_dT](Modelica_Media_Water_IF97_Utilit temperature
  ies.html#Modelica.Media.Water.IF97_Utilities.s_ 
  props_dT)                                       

  ![image165](Modelica.Media.Water.IF97_Utilities temperature as function
  .waterBaseProp_phS.png)                         of density and
  [s\_dT](Modelica_Media_Water_IF97_Utilities.htm temperature
  l#Modelica.Media.Water.IF97_Utilities.s_dT)     

  ![image166](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant volume as
  [cv\_props\_dT](Modelica_Media_Water_IF97_Utili function of density and
  ties.html#Modelica.Media.Water.IF97_Utilities.c temperature
  v_props_dT)                                     

  ![image167](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant volume as
  [cv\_dT](Modelica_Media_Water_IF97_Utilities.ht function of density and
  ml#Modelica.Media.Water.IF97_Utilities.cv_dT)   temperature

  ![image168](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant pressure as
  [cp\_props\_dT](Modelica_Media_Water_IF97_Utili function of density and
  ties.html#Modelica.Media.Water.IF97_Utilities.c temperature
  p_props_dT)                                     

  ![image169](Modelica.Media.Water.IF97_Utilities specific heat capacity
  .waterBaseProp_phS.png)                         at constant pressure as
  [cp\_dT](Modelica_Media_Water_IF97_Utilities.ht function of density and
  ml#Modelica.Media.Water.IF97_Utilities.cp_dT)   temperature

  ![image170](Modelica.Media.Water.IF97_Utilities isobaric expansion
  .waterBaseProp_phS.png)                         coefficient as function
  [beta\_props\_dT](Modelica_Media_Water_IF97_Uti of density and
  lities.html#Modelica.Media.Water.IF97_Utilities temperature
  .beta_props_dT)                                 

  ![image171](Modelica.Media.Water.IF97_Utilities isobaric expansion
  .waterBaseProp_phS.png)                         coefficient as function
  [beta\_dT](Modelica_Media_Water_IF97_Utilities. of density and
  html#Modelica.Media.Water.IF97_Utilities.beta_d temperature
  T)                                              

  ![image172](Modelica.Media.Water.IF97_Utilities isothermal
  .waterBaseProp_phS.png)                         compressibility factor
  [kappa\_props\_dT](Modelica_Media_Water_IF97_Ut as function of density
  ilities.html#Modelica.Media.Water.IF97_Utilitie and temperature
  s.kappa_props_dT)                               

  ![image173](Modelica.Media.Water.IF97_Utilities isothermal
  .waterBaseProp_phS.png)                         compressibility factor
  [kappa\_dT](Modelica_Media_Water_IF97_Utilities as function of density
  .html#Modelica.Media.Water.IF97_Utilities.kappa and temperature
  _dT)                                            

  ![image174](Modelica.Media.Water.IF97_Utilities speed of sound as
  .waterBaseProp_phS.png)                         function of density and
  [velocityOfSound\_props\_dT](Modelica_Media_Wat temperature
  er_IF97_Utilities.html#Modelica.Media.Water.IF9 
  7_Utilities.velocityOfSound_props_dT)           

  ![image175](Modelica.Media.Water.IF97_Utilities speed of sound as
  .waterBaseProp_phS.png)                         function of density and
  [velocityOfSound\_dT](Modelica_Media_Water_IF97 temperature
  _Utilities.html#Modelica.Media.Water.IF97_Utili 
  ties.velocityOfSound_dT)                        

  ![image176](Modelica.Media.Water.IF97_Utilities isentropic exponent as
  .waterBaseProp_phS.png)                         function of density and
  [isentropicExponent\_props\_dT](Modelica_Media_ temperature
  Water_IF97_Utilities.html#Modelica.Media.Water. 
  IF97_Utilities.isentropicExponent_props_dT)     

  ![image177](Modelica.Media.Water.IF97_Utilities isentropic exponent as
  .waterBaseProp_phS.png)                         function of density and
  [isentropicExponent\_dT](Modelica_Media_Water_I temperature
  F97_Utilities.html#Modelica.Media.Water.IF97_Ut 
  ilities.isentropicExponent_dT)                  

  ![image178](Modelica.Media.Water.IF97_Utilities 
  .ThermoFluidSpecialS.png)                       
  [ThermoFluidSpecial](Modelica_Media_Water_IF97_ 
  Utilities_ThermoFluidSpecial.html#Modelica.Medi 
  a.Water.IF97_Utilities.ThermoFluidSpecial)      

  ![image179](Modelica.Media.Water.IF97_Utilities compute the saturated
  .hl_pS.png)                                     liquid specific h(p)
  [hl\_p](Modelica_Media_Water_IF97_Utilities.htm 
  l#Modelica.Media.Water.IF97_Utilities.hl_p)     

  ![image180](Modelica.Media.Water.IF97_Utilities compute the saturated
  .hl_pS.png)                                     vapour specific h(p)
  [hv\_p](Modelica_Media_Water_IF97_Utilities.htm 
  l#Modelica.Media.Water.IF97_Utilities.hv_p)     

  ![image181](Modelica.Media.Water.IF97_Utilities compute the saturated
  .hl_pS.png)                                     liquid specific s(p)
  [sl\_p](Modelica_Media_Water_IF97_Utilities.htm 
  l#Modelica.Media.Water.IF97_Utilities.sl_p)     

  ![image182](Modelica.Media.Water.IF97_Utilities compute the saturated
  .hl_pS.png)                                     vapour specific s(p)
  [sv\_p](Modelica_Media_Water_IF97_Utilities.htm 
  l#Modelica.Media.Water.IF97_Utilities.sv_p)     

  ![image183](Modelica.Media.Water.IF97_Utilities compute the saturated
  .hl_pS.png)                                     liquid d(T)
  [rhol\_T](Modelica_Media_Water_IF97_Utilities.h 
  tml#Modelica.Media.Water.IF97_Utilities.rhol_T) 

  ![image184](Modelica.Media.Water.IF97_Utilities compute the saturated
  .hl_pS.png)                                     vapour d(T)
  [rhov\_T](Modelica_Media_Water_IF97_Utilities.h 
  tml#Modelica.Media.Water.IF97_Utilities.rhov_T) 

  ![image185](Modelica.Media.Water.IF97_Utilities compute the saturated
  .hl_pS.png)                                     liquid d(p)
  [rhol\_p](Modelica_Media_Water_IF97_Utilities.h 
  tml#Modelica.Media.Water.IF97_Utilities.rhol_p) 

  ![image186](Modelica.Media.Water.IF97_Utilities compute the saturated
  .hl_pS.png)                                     vapour d(p)
  [rhov\_p](Modelica_Media_Water_IF97_Utilities.h 
  tml#Modelica.Media.Water.IF97_Utilities.rhov_p) 

  ![image187](Modelica.Media.Water.IF97_Utilities compute eta(d,T) in the
  .hl_pS.png)                                     one-phase region
  [dynamicViscosity](Modelica_Media_Water_IF97_Ut 
  ilities.html#Modelica.Media.Water.IF97_Utilitie 
  s.dynamicViscosity)                             

  ![image188](Modelica.Media.Water.IF97_Utilities compute lambda(d,T,p) in
  .hl_pS.png)                                     the one-phase region
  [thermalConductivity](Modelica_Media_Water_IF97 
  _Utilities.html#Modelica.Media.Water.IF97_Utili 
  ties.thermalConductivity)                       

  ![image189](Modelica.Media.Water.IF97_Utilities compute sigma(T) at
  .hl_pS.png)                                     saturation T
  [surfaceTension](Modelica_Media_Water_IF97_Util 
  ities.html#Modelica.Media.Water.IF97_Utilities. 
  surfaceTension)                                 

  ![image190](Modelica.Media.Water.IF97_Utilities isentropic specific
  .hl_pS.png)                                     enthalpy from p,s
  [isentropicEnthalpy](Modelica_Media_Water_IF97_ (preferably use
  Utilities.html#Modelica.Media.Water.IF97_Utilit dynamicIsentropicEnthalp
  ies.isentropicEnthalpy)                         y
                                                  in dynamic simulation!)

  ![image191](Modelica.Media.Water.IF97_Utilities 
  .hl_pS.png)                                     
  [isentropicEnthalpy\_props](Modelica_Media_Wate 
  r_IF97_Utilities.html#Modelica.Media.Water.IF97 
  _Utilities.isentropicEnthalpy_props)            

  ![image192](Modelica.Media.Water.IF97_Utilities derivative of isentropic
  .hl_pS.png)                                     specific enthalpy from
  [isentropicEnthalpy\_der](Modelica_Media_Water_ p,s
  IF97_Utilities.html#Modelica.Media.Water.IF97_U 
  tilities.isentropicEnthalpy_der)                

  ![image193](Modelica.Media.Water.IF97_Utilities isentropic specific
  .hl_pS.png)                                     enthalpy from p,s and
  [dynamicIsentropicEnthalpy](Modelica_Media_Wate good guesses of d and T
  r_IF97_Utilities.html#Modelica.Media.Water.IF97 
  _Utilities.dynamicIsentropicEnthalpy)           
  ------------------------------------------------------------------------

* * * * *

![image194](Modelica.Media.Water.IF97_Utilities.iterI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).iter
====================================================================================================================================================================================

Modelica definition
-------------------

    replaceable record iter = BaseIF97.IterationData;

* * * * *

![image195](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).waterBaseProp\_ph
=============================================================================================================================================================================================================

**intermediate property record for water**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                             Name Defa Description
                                        ult  
  -------------------------------- ---- ---- ------------------------------
  [Pressure](Modelica_SIunits.html p         pressure [Pa]
  #Modelica.SIunits.Pressure)                

  [SpecificEnthalpy](Modelica_SIun h         specific enthalpy [J/kg]
  its.html#Modelica.SIunits.Specif           
  icEnthalpy)                                

  Integer                          phas 0    phase: 2 for two-phase, 1 for
                                   e         one phase, 0 if unknown

  Integer                          regi 0    if 0, do region computation,
                                   on        otherwise assume the region is
                                             this input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- ------------
  [IF97BaseTwoPhase](Modelica_Media_Common.html#Modelica aux   auxiliary
  .Media.Common.IF97BaseTwoPhase)                              record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function waterBaseProp_ph "intermediate property record for water"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase =  0 
        "phase: 2 for two-phase, 1 for one phase, 0 if unknown";
      input Integer region = 0 
        "if 0, do region computation, otherwise assume the region is this input";
      output Common.IF97BaseTwoPhase aux "auxiliary record";
    protected 
      Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Common.HelmholtzDerivs f 
        "dimensionless Helmholtz funcion and dervatives w.r.t. delta and tau";
      Integer error "error flag for inverse iterations";
      SI.SpecificEnthalpy h_liq "liquid specific enthalpy";
      SI.Density d_liq "liquid density";
      SI.SpecificEnthalpy h_vap "vapour specific enthalpy";
      SI.Density d_vap "vapour density";
      Common.PhaseBoundaryProperties liq "phase boundary property record";
      Common.PhaseBoundaryProperties vap "phase boundary property record";
      Common.GibbsDerivs gl 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Common.GibbsDerivs gv 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.HelmholtzDerivs fl 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
      Modelica.Media.Common.HelmholtzDerivs fv 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
      SI.Temperature t1 
        "temperature at phase boundary, using inverse from region 1";
      SI.Temperature t2 
        "temperature at phase boundary, using inverse from region 2";
    algorithm 
      aux.region := if region == 0 then 
        (if phase == 2 then 4 else BaseIF97.Regions.region_ph(p=p,h= h,phase= phase)) else region;
      aux.phase := if phase <> 0 then phase else if aux.region == 4 then 2 else 1;
      aux.p := max(p,611.657);
      aux.h := max(h,1e3);
      aux.R := BaseIF97.data.RH2O;
      if (aux.region == 1) then
        aux.T := BaseIF97.Basic.tph1(aux.p, aux.h);
        g := BaseIF97.Basic.g1(p, aux.T);
        aux.s := aux.R*(g.tau*g.gtau - g.g);
        aux.rho := p/(aux.R*aux.T*g.pi*g.gpi);
        aux.vt := aux.R/p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*aux.T/(p*p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
        aux.x := 0.0;
        aux.dpT := -aux.vt/aux.vp;
      elseif (aux.region == 2) then
        aux.T := BaseIF97.Basic.tph2(aux.p, aux.h);
        g := BaseIF97.Basic.g2(p, aux.T);
        aux.s := aux.R*(g.tau*g.gtau - g.g);
        aux.rho := p/(aux.R*aux.T*g.pi*g.gpi);
        aux.vt := aux.R/p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*aux.T/(p*p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
        aux.x := 1.0;
        aux.dpT := -aux.vt/aux.vp;
      elseif (aux.region == 3) then
        (aux.rho,aux.T,error) := BaseIF97.Inverses.dtofph3(p=aux.p,h=aux.h,delp= 1.0e-7,delh=
                1.0e-6);
        f := BaseIF97.Basic.f3(aux.rho, aux.T);
        aux.h := aux.R*aux.T*(f.tau*f.ftau + f.delta*f.fdelta);
        aux.s := aux.R*(f.tau*f.ftau - f.f);
        aux.pd := aux.R*aux.T*f.delta*(2.0*f.fdelta + f.delta*f.fdeltadelta);
        aux.pt := aux.R*aux.rho*f.delta*(f.fdelta - f.tau*f.fdeltatau);
        aux.cv := abs(aux.R*(-f.tau*f.tau*f.ftautau)) 
          "can be close to neg. infinity near critical point";
        aux.cp := (aux.rho*aux.rho*aux.pd*aux.cv + aux.T*aux.pt*aux.pt)/(aux.rho*aux.rho*aux.pd);
        aux.x := 0.0;
        aux.dpT := aux.pt; /*safety against div-by-0 in initialization*/
      elseif (aux.region == 4) then
        h_liq := hl_p(p);
        h_vap := hv_p(p);
        aux.x := if (h_vap <> h_liq) then (h - h_liq)/(h_vap - h_liq) else 1.0;
        if p < BaseIF97.data.PLIMIT4A then
          t1:= BaseIF97.Basic.tph1(aux.p, h_liq);
          t2:= BaseIF97.Basic.tph2(aux.p, h_vap);
          gl := BaseIF97.Basic.g1(aux.p, t1);
          gv := BaseIF97.Basic.g2(aux.p, t2);
          liq := Common.gibbsToBoundaryProps(gl);
          vap := Common.gibbsToBoundaryProps(gv);
          aux.T := t1 + aux.x*(t2-t1);
        else
          aux.T := BaseIF97.Basic.tsat(aux.p); // how to avoid ?
          d_liq:= rhol_T(aux.T);
          d_vap:= rhov_T(aux.T);
          fl := BaseIF97.Basic.f3(d_liq, aux.T);
          fv := BaseIF97.Basic.f3(d_vap, aux.T);
          liq := Common.helmholtzToBoundaryProps(fl);
          vap := Common.helmholtzToBoundaryProps(fv);
          //  aux.dpT := BaseIF97.Basic.dptofT(aux.T);
        end if;
        aux.dpT := if (liq.d <> vap.d) then (vap.s - liq.s)*liq.d*vap.d/(liq.d - vap.d) else BaseIF97.Basic.dptofT(aux.T);
        aux.s := liq.s + aux.x*(vap.s - liq.s);
        aux.rho := liq.d*vap.d/(vap.d + aux.x*(liq.d - vap.d));
        aux.cv := Common.cv2Phase(liq, vap, aux.x, aux.T, p);
        aux.cp := liq.cp + aux.x*(vap.cp - liq.cp);
        aux.pt := liq.pt + aux.x*(vap.pt - liq.pt);
        aux.pd := liq.pd + aux.x*(vap.pd - liq.pd);
      elseif (aux.region == 5) then
        (aux.T,error) := BaseIF97.Inverses.tofph5(p=aux.p,h= aux.h,reldh= 1.0e-7);
        assert(error == 0, "error in inverse iteration of steam tables");
        g := BaseIF97.Basic.g5(aux.p, aux.T);
        aux.s := aux.R*(g.tau*g.gtau - g.g);
        aux.rho := p/(aux.R*aux.T*g.pi*g.gpi);
        aux.vt := aux.R/p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*aux.T/(p*p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
        aux.dpT := -aux.vt/aux.vp;
      else
        assert(false, "error in region computation of IF97 steam tables"
        + "(p = " + String(p) + ", h = " + String(h) + ")");
      end if;
    end waterBaseProp_ph;

* * * * *

![image196](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).waterBaseProp\_ps
=============================================================================================================================================================================================================

**intermediate property record for water**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                             Name Defa Description
                                        ult  
  -------------------------------- ---- ---- ------------------------------
  [Pressure](Modelica_SIunits.html p         pressure [Pa]
  #Modelica.SIunits.Pressure)                

  [SpecificEntropy](Modelica_SIuni s         specific entropy [J/(kg.K)]
  ts.html#Modelica.SIunits.Specifi           
  cEntropy)                                  

  Integer                          phas 0    phase: 2 for two-phase, 1 for
                                   e         one phase, 0 if unknown

  Integer                          regi 0    if 0, do region computation,
                                   on        otherwise assume the region is
                                             this input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- ------------
  [IF97BaseTwoPhase](Modelica_Media_Common.html#Modelica aux   auxiliary
  .Media.Common.IF97BaseTwoPhase)                              record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function waterBaseProp_ps "intermediate property record for water"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input Integer phase = 0 
        "phase: 2 for two-phase, 1 for one phase, 0 if unknown";
      input Integer region = 0 
        "if 0, do region computation, otherwise assume the region is this input";
      output Common.IF97BaseTwoPhase aux "auxiliary record";
    protected 
      Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Common.HelmholtzDerivs f 
        "dimensionless Helmholtz funcion and dervatives w.r.t. delta and tau";
      Integer error "error flag for inverse iterations";
      SI.SpecificEntropy s_liq "liquid specific entropy";
      SI.Density d_liq "liquid density";
      SI.SpecificEntropy s_vap "vapour specific entropy";
      SI.Density d_vap "vapour density";
      Common.PhaseBoundaryProperties liq "phase boundary property record";
      Common.PhaseBoundaryProperties vap "phase boundary property record";
      Common.GibbsDerivs gl 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Common.GibbsDerivs gv 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.HelmholtzDerivs fl 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
      Modelica.Media.Common.HelmholtzDerivs fv 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
      SI.Temperature t1 
        "temperature at phase boundary, using inverse from region 1";
      SI.Temperature t2 
        "temperature at phase boundary, using inverse from region 2";
    algorithm 
      aux.region := if region == 0 then 
        (if phase == 2 then 4 else BaseIF97.Regions.region_ps(p=p,s=s,phase=phase)) else region;
      aux.phase := if phase <> 0 then phase else if aux.region == 4 then 2 else 1;
      aux.p := p;
      aux.s := s;
      aux.R := BaseIF97.data.RH2O;
      if (aux.region == 1) then
        aux.T := BaseIF97.Basic.tps1(p, s);
        g := BaseIF97.Basic.g1(p, aux.T);
        aux.h := aux.R*aux.T*g.tau*g.gtau;
        aux.rho := p/(aux.R*aux.T*g.pi*g.gpi);
        aux.vt := aux.R/p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*aux.T/(p*p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
        aux.x := 0.0;
      elseif (aux.region == 2) then
        aux.T := BaseIF97.Basic.tps2(p, s);
        g := BaseIF97.Basic.g2(p, aux.T);
        aux.h := aux.R*aux.T*g.tau*g.gtau;
        aux.rho := p/(aux.R*aux.T*g.pi*g.gpi);
        aux.vt := aux.R/p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*aux.T/(p*p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
        aux.x := 1.0;
      elseif (aux.region == 3) then
        (aux.rho,aux.T,error) := BaseIF97.Inverses.dtofps3(p=p,s=s,delp=1.0e-7,dels=
          1.0e-6);
        f := BaseIF97.Basic.f3(aux.rho, aux.T);
        aux.h := aux.R*aux.T*(f.tau*f.ftau + f.delta*f.fdelta);
        aux.s := aux.R*(f.tau*f.ftau - f.f);
        aux.pd := aux.R*aux.T*f.delta*(2.0*f.fdelta + f.delta*f.fdeltadelta);
        aux.pt := aux.R*aux.rho*f.delta*(f.fdelta - f.tau*f.fdeltatau);
        aux.cv := aux.R*(-f.tau*f.tau*f.ftautau);
        aux.cp := (aux.rho*aux.rho*aux.pd*aux.cv + aux.T*aux.pt*aux.pt)/(aux.rho*aux.rho*aux.pd);
        aux.x := 0.0;
      elseif (aux.region == 4) then
        s_liq := BaseIF97.Regions.sl_p(p);
        s_vap := BaseIF97.Regions.sv_p(p);
        aux.x := if (s_vap <> s_liq) then (s - s_liq)/(s_vap - s_liq) else 1.0;
        if p < BaseIF97.data.PLIMIT4A then
          t1 := BaseIF97.Basic.tps1(p, s_liq);
          t2 := BaseIF97.Basic.tps2(p, s_vap);
          gl := BaseIF97.Basic.g1(p, t1);
          gv := BaseIF97.Basic.g2(p, t2);
          liq := Common.gibbsToBoundaryProps(gl);
          vap := Common.gibbsToBoundaryProps(gv);
          aux.T := t1 + aux.x*(t2 - t1);
        else
          aux.T := BaseIF97.Basic.tsat(p);
          d_liq := rhol_T(aux.T);
          d_vap := rhov_T(aux.T);
          fl := BaseIF97.Basic.f3(d_liq, aux.T);
          fv := BaseIF97.Basic.f3(d_vap, aux.T);
          liq := Common.helmholtzToBoundaryProps(fl);
          vap := Common.helmholtzToBoundaryProps(fv);
        end if;
        aux.dpT := if (liq.d <> vap.d) then (vap.s - liq.s)*liq.d*vap.d/(liq.d - vap.d) else 
             BaseIF97.Basic.dptofT(aux.T);
        aux.h := liq.h + aux.x*(vap.h - liq.h);
        aux.rho := liq.d*vap.d/(vap.d + aux.x*(liq.d - vap.d));
        aux.cv := Common.cv2Phase(liq, vap, aux.x, aux.T, p);
        aux.cp := liq.cp + aux.x*(vap.cp - liq.cp);
        aux.pt := liq.pt + aux.x*(vap.pt - liq.pt);
        aux.pd := liq.pd + aux.x*(vap.pd - liq.pd);
      elseif (aux.region == 5) then
        (aux.T,error) := BaseIF97.Inverses.tofps5(p=p,s=s,relds= 1.0e-7);
        assert(error == 0, "error in inverse iteration of steam tables");
        g := BaseIF97.Basic.g5(p, aux.T);
        aux.h := aux.R*aux.T*g.tau*g.gtau;
        aux.rho := p/(aux.R*aux.T*g.pi*g.gpi);
        aux.vt := aux.R/p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*aux.T/(p*p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
      else
        assert(false, "error in region computation of IF97 steam tables"
        + "(p = " + String(p) + ", s = " + String(s) + ")");
      end if;
    end waterBaseProp_ps;

* * * * *

![image197](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rho\_props\_ps
==========================================================================================================================================================================================================

**density as function of pressure and specific entropy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name    Defau Description
                                                      lt    
  ------------------------------------------- ------- ----- ---------------
  [Pressure](Modelica_SIunits.html#Modelica.S p             pressure [Pa]
  Iunits.Pressure)                                          

  [SpecificEntropy](Modelica_SIunits.html#Mod s             specific
  elica.SIunits.SpecificEntropy)                            entropy
                                                            [J/(kg.K)]

  [IF97BaseTwoPhase](Modelica_Media_Common.ht propert       auxiliary
  ml#Modelica.Media.Common.IF97BaseTwoPhase)  ies           record
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

    function rho_props_ps 
      "density as function of pressure and specific entropy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input Common.IF97BaseTwoPhase properties "auxiliary record";
      output SI.Density rho "density";
    algorithm 
      rho := properties.rho;
    end rho_props_ps;

* * * * *

![image198](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rho\_ps
===================================================================================================================================================================================================

**density as function of pressure and specific entropy**

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

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
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

    function rho_ps 
      "density as function of pressure and specific entropy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.Density rho "density";
    algorithm 
      rho := rho_props_ps(p, s, waterBaseProp_ps(p, s, phase, region));
    end rho_ps;

* * * * *

![image199](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).T\_props\_ps
========================================================================================================================================================================================================

**temperature as function of pressure and specific entropy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name    Defau Description
                                                      lt    
  ------------------------------------------- ------- ----- ---------------
  [Pressure](Modelica_SIunits.html#Modelica.S p             pressure [Pa]
  Iunits.Pressure)                                          

  [SpecificEntropy](Modelica_SIunits.html#Mod s             specific
  elica.SIunits.SpecificEntropy)                            entropy
                                                            [J/(kg.K)]

  [IF97BaseTwoPhase](Modelica_Media_Common.ht propert       auxiliary
  ml#Modelica.Media.Common.IF97BaseTwoPhase)  ies           record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Temperature](Modelica_SIunits.html#Modelica.SIunit T      temperature
  s.Temperature)                                             [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function T_props_ps 
      "temperature as function of pressure and specific entropy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input Common.IF97BaseTwoPhase properties "auxiliary record";
      output SI.Temperature T "temperature";
    algorithm 
      T := properties.T;
    end T_props_ps;

* * * * *

![image200](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).T\_ps
=================================================================================================================================================================================================

**temperature as function of pressure and specific entropy**

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

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Temperature](Modelica_SIunits.html#Modelica.SIunit T      Temperature
  s.Temperature)                                             [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function T_ps 
      "temperature as function of pressure and specific entropy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.Temperature T "Temperature";
    algorithm 
      T := T_props_ps(p, s, waterBaseProp_ps(p, s, phase, region));
    end T_ps;

* * * * *

![image201](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).h\_props\_ps
========================================================================================================================================================================================================

**specific enthalpy as function or pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name Defau Description
                                                     lt    
  --------------------------------------------- ---- ----- ---------------
  [Pressure](Modelica_SIunits.html#Modelica.SIu p          pressure [Pa]
  nits.Pressure)                                           

  [SpecificEntropy](Modelica_SIunits.html#Model s          specific
  ica.SIunits.SpecificEntropy)                             entropy
                                                           [J/(kg.K)]

  [IF97BaseTwoPhase](Modelica_Media_Common.html aux        auxiliary
  #Modelica.Media.Common.IF97BaseTwoPhase)                 record
  ------------------------------------------------------------------------

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

    function h_props_ps 
      "specific enthalpy as function or pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := aux.h;
    end h_props_ps;

* * * * *

![image202](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).h\_ps
=================================================================================================================================================================================================

**specific enthalpy as function or pressure and temperature**

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

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
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

    function h_ps 
      "specific enthalpy as function or pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := h_props_ps(p, s, waterBaseProp_ps(p, s, phase, region));
    end h_ps;

* * * * *

![image203](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).phase\_ps
=====================================================================================================================================================================================================

**phase as a function of pressure and specific entropy**

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

  Type        Name      Description
  ----------- --------- --------------------------------------------------
  Integer     phase     true if in liquid or gas or supercritical region

Modelica definition
-------------------

    function phase_ps 
      "phase as a function of  pressure and specific entropy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      output Integer phase "true if in liquid or gas or supercritical region";
    algorithm 
      phase := if ((s < sl_p(p) or s > sv_p(p)) or p > BaseIF97.data.PCRIT) then 1 else 2;
    end phase_ps;

* * * * *

![image204](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).phase\_ph
=====================================================================================================================================================================================================

**phase as a function of pressure and specific enthalpy**

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

  Type        Name      Description
  ----------- --------- --------------------------------------------------
  Integer     phase     true if in liquid or gas or supercritical region

Modelica definition
-------------------

    function phase_ph 
      "phase as a function of  pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      output Integer phase "true if in liquid or gas or supercritical region";
    algorithm 
      phase := if ((h < hl_p(p) or h > hv_p(p)) or p > BaseIF97.data.PCRIT) then 1 else 2;
    end phase_ph;

* * * * *

![image205](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).phase\_dT
=====================================================================================================================================================================================================

**phase as a function of pressure and temperature**

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
  [Density](Modelica_SIunits.html#Modelica.SIun rho           density
  its.Density)                                                [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica. T             temperature
  SIunits.Temperature)                                        [K]
  ------------------------------------------------------------------------

Outputs
-------

  Type        Name      Description
  ----------- --------- --------------------------------------------------
  Integer     phase     true if in liquid or gas or supercritical region

Modelica definition
-------------------

    function phase_dT "phase as a function of  pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Density rho "density";
      input SI.Temperature T "temperature";
      output Integer phase "true if in liquid or gas or supercritical region";
    algorithm 
      phase := if not ((rho < rhol_T(T) and rho > rhov_T(T)) and T < BaseIF97.
        data.TCRIT) then 1 else 2;
    end phase_dT;

* * * * *

![image206](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rho\_props\_ph
==========================================================================================================================================================================================================

**density as function of pressure and specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name    Defau Description
                                                       lt    
  -------------------------------------------- ------- ----- --------------
  [Pressure](Modelica_SIunits.html#Modelica.SI p             pressure [Pa]
  units.Pressure)                                            

  [SpecificEnthalpy](Modelica_SIunits.html#Mod h             specific
  elica.SIunits.SpecificEnthalpy)                            enthalpy
                                                             [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.htm propert       auxiliary
  l#Modelica.Media.Common.IF97BaseTwoPhase)    ies           record
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

    function rho_props_ph 
      "density as function of pressure and specific enthalpy"
      annotation(derivative=rho_ph_der);
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase properties "auxiliary record";
      output SI.Density rho "density";
    algorithm 
      rho := properties.rho;
    end rho_props_ph;

* * * * *

![image207](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rho\_ph
===================================================================================================================================================================================================

**density as function of pressure and specific enthalpy**

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

  [SpecificEnthalpy](Modelica_SIunits h          specific enthalpy [J/kg]
  .html#Modelica.SIunits.SpecificEnth            
  alpy)                                          

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
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

    function rho_ph 
      "density as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.Density rho "density";
    algorithm 
      rho := rho_props_ph(p, h, waterBaseProp_ph(p, h, phase, region));
    end rho_ph;

* * * * *

![image208](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rho\_ph\_der
========================================================================================================================================================================================================

**derivative function of rho\_ph**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name  Defau Description
                                                    lt    
  ------------------------------------------- ----- ----- -----------------
  [Pressure](Modelica_SIunits.html#Modelica.S p           pressure [Pa]
  Iunits.Pressure)                                        

  [SpecificEnthalpy](Modelica_SIunits.html#Mo h           specific enthalpy
  delica.SIunits.SpecificEnthalpy)                        [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.ht aux         auxiliary record
  ml#Modelica.Media.Common.IF97BaseTwoPhase)              

  Real                                        p\_de       derivative of
                                              r           pressure

  Real                                        h\_de       derivative of
                                              r           specific enthalpy
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name          Description
  --------- ------------- --------------------------
  Real      rho\_der      derivative of density

Modelica definition
-------------------

    function rho_ph_der "derivative function of rho_ph"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      input Real p_der "derivative of pressure";
      input Real h_der "derivative of specific enthalpy";
      output Real rho_der "derivative of density";
    algorithm 
      if (aux.region == 4) then
        rho_der := (aux.rho*(aux.rho*aux.cv/aux.dpT + 1.0)/(aux.dpT*aux.T))*p_der
           + (-aux.rho*aux.rho/(aux.dpT*aux.T))*h_der;
      elseif (aux.region == 3) then
        rho_der := ((aux.rho*(aux.cv*aux.rho + aux.pt))/(aux.rho*aux.rho*aux.pd*
          aux.cv + aux.T*aux.pt*aux.pt))*p_der + (-aux.rho*aux.rho*aux.pt/(aux.
          rho*aux.rho*aux.pd*aux.cv + aux.T*aux.pt*aux.pt))*h_der;
      else
        //regions 1,2,5
        rho_der := (-aux.rho*aux.rho*(aux.vp*aux.cp - aux.vt/aux.rho + aux.T*aux.
          vt*aux.vt)/aux.cp)*p_der + (-aux.rho*aux.rho*aux.vt/(aux.cp))*h_der;
      end if;
    end rho_ph_der;

* * * * *

![image209](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).T\_props\_ph
========================================================================================================================================================================================================

**temperature as function of pressure and specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name    Defau Description
                                                       lt    
  -------------------------------------------- ------- ----- --------------
  [Pressure](Modelica_SIunits.html#Modelica.SI p             pressure [Pa]
  units.Pressure)                                            

  [SpecificEnthalpy](Modelica_SIunits.html#Mod h             specific
  elica.SIunits.SpecificEnthalpy)                            enthalpy
                                                             [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.htm propert       auxiliary
  l#Modelica.Media.Common.IF97BaseTwoPhase)    ies           record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Temperature](Modelica_SIunits.html#Modelica.SIunit T      temperature
  s.Temperature)                                             [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function T_props_ph 
      "temperature as function of pressure and specific enthalpy"
      annotation(derivative=T_ph_der);
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase properties "auxiliary record";
      output SI.Temperature T "temperature";
    algorithm 
      T := properties.T;
    end T_props_ph;

* * * * *

![image210](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).T\_ph
=================================================================================================================================================================================================

**temperature as function of pressure and specific enthalpy**

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

  [SpecificEnthalpy](Modelica_SIunits h          specific enthalpy [J/kg]
  .html#Modelica.SIunits.SpecificEnth            
  alpy)                                          

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Temperature](Modelica_SIunits.html#Modelica.SIunit T      Temperature
  s.Temperature)                                             [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function T_ph 
      "temperature as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.Temperature T "Temperature";
    algorithm 
      T := T_props_ph(p, h, waterBaseProp_ph(p, h, phase, region));
    end T_ph;

* * * * *

![image211](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).T\_ph\_der
======================================================================================================================================================================================================

**derivative function of T\_ph**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name  Defau Description
                                                    lt    
  ------------------------------------------- ----- ----- -----------------
  [Pressure](Modelica_SIunits.html#Modelica.S p           pressure [Pa]
  Iunits.Pressure)                                        

  [SpecificEnthalpy](Modelica_SIunits.html#Mo h           specific enthalpy
  delica.SIunits.SpecificEnthalpy)                        [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.ht aux         auxiliary record
  ml#Modelica.Media.Common.IF97BaseTwoPhase)              

  Real                                        p\_de       derivative of
                                              r           pressure

  Real                                        h\_de       derivative of
                                              r           specific enthalpy
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- ------------------------------
  Real      T\_der      derivative of temperature

Modelica definition
-------------------

    function T_ph_der "derivative function of T_ph"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      input Real p_der "derivative of pressure";
      input Real h_der "derivative of specific enthalpy";
      output Real T_der "derivative of temperature";
    algorithm 
      if (aux.region == 4) then
        T_der := 1/aux.dpT*p_der;
      elseif (aux.region == 3) then
        T_der := ((-aux.rho*aux.pd + aux.T*aux.pt)/(aux.rho*aux.rho*aux.pd*aux.cv
           + aux.T*aux.pt*aux.pt))*p_der + ((aux.rho*aux.rho*aux.pd)/(aux.rho*aux.
           rho*aux.pd*aux.cv + aux.T*aux.pt*aux.pt))*h_der;
      else
        //regions 1,2 or 5
        T_der := ((-1/aux.rho + aux.T*aux.vt)/aux.cp)*p_der + (1/aux.cp)*h_der;
      end if;
    end T_ph_der;

* * * * *

![image212](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).s\_props\_ph
========================================================================================================================================================================================================

**specific entropy as function of pressure and specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name    Defau Description
                                                       lt    
  -------------------------------------------- ------- ----- --------------
  [Pressure](Modelica_SIunits.html#Modelica.SI p             pressure [Pa]
  units.Pressure)                                            

  [SpecificEnthalpy](Modelica_SIunits.html#Mod h             specific
  elica.SIunits.SpecificEnthalpy)                            enthalpy
                                                             [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.htm propert       auxiliary
  l#Modelica.Media.Common.IF97BaseTwoPhase)    ies           record
  -------------------------------------------------------------------------

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

    function s_props_ph 
      "specific entropy as function of pressure and specific enthalpy"
      annotation(derivative=s_ph_der);
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase properties "auxiliary record";
      output SI.SpecificEntropy s "specific entropy";
    algorithm 
      s := properties.s;
    end s_props_ph;

* * * * *

![image213](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).s\_ph
=================================================================================================================================================================================================

**specific entropy as function of pressure and specific enthalpy**

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

  [SpecificEnthalpy](Modelica_SIunits h          specific enthalpy [J/kg]
  .html#Modelica.SIunits.SpecificEnth            
  alpy)                                          

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
  -------------------------------------------------------------------------

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

    function s_ph 
      "specific entropy as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase =   0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificEntropy s "specific entropy";
    algorithm 
      s := s_props_ph(p, h, waterBaseProp_ph(p, h, phase, region));
    end s_ph;

* * * * *

![image214](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).s\_ph\_der
======================================================================================================================================================================================================

**specific entropy as function of pressure and specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name  Defau Description
                                                    lt    
  ------------------------------------------- ----- ----- -----------------
  [Pressure](Modelica_SIunits.html#Modelica.S p           pressure [Pa]
  Iunits.Pressure)                                        

  [SpecificEnthalpy](Modelica_SIunits.html#Mo h           specific enthalpy
  delica.SIunits.SpecificEnthalpy)                        [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.ht aux         auxiliary record
  ml#Modelica.Media.Common.IF97BaseTwoPhase)              

  Real                                        p\_de       derivative of
                                              r           pressure

  Real                                        h\_de       derivative of
                                              r           specific enthalpy
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- --------------------------
  Real      s\_der      derivative of entropy

Modelica definition
-------------------

    function s_ph_der 
      "specific entropy as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      input Real p_der "derivative of pressure";
      input Real h_der "derivative of specific enthalpy";
      output Real s_der "derivative of entropy";
    algorithm 
      s_der := -1/(aux.rho*aux.T)*p_der + 1/aux.T*h_der;
    end s_ph_der;

* * * * *

![image215](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cv\_props\_ph
=========================================================================================================================================================================================================

**specific heat capacity at constant volume as function of pressure and
specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Name Defaul Description
                                                      t      
  ---------------------------------------------- ---- ------ --------------
  [Pressure](Modelica_SIunits.html#Modelica.SIun p           pressure [Pa]
  its.Pressure)                                              

  [SpecificEnthalpy](Modelica_SIunits.html#Model h           specific
  ica.SIunits.SpecificEnthalpy)                              enthalpy
                                                             [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.html# aux         auxiliary
  Modelica.Media.Common.IF97BaseTwoPhase)                    record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cv   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cv_props_ph 
      "specific heat capacity at constant volume as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificHeatCapacity cv "specific heat capacity";
    algorithm 
      cv := aux.cv;
    end cv_props_ph;

* * * * *

![image216](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cv\_ph
==================================================================================================================================================================================================

**specific heat capacity at constant volume as function of pressure and
specific enthalpy**

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

  [SpecificEnthalpy](Modelica_SIunits h          specific enthalpy [J/kg]
  .html#Modelica.SIunits.SpecificEnth            
  alpy)                                          

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cv   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cv_ph 
      "specific heat capacity at constant volume as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificHeatCapacity cv "specific heat capacity";
    algorithm 
      cv := cv_props_ph(p, h, waterBaseProp_ph(p, h, phase, region));
    end cv_ph;

* * * * *

![image217](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).regionAssertReal
============================================================================================================================================================================================================

**assert function for inlining**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name       Default      Description
  ------------ ---------- ------------ -----------------------
  Boolean      check                   condition to check

Outputs
-------

  Type      Name       Description
  --------- ---------- -----------------
  Real      dummy      dummy output

Modelica definition
-------------------

    function regionAssertReal "assert function for inlining"
      extends Modelica.Icons.Function;
      input Boolean check "condition to check";
      output Real dummy "dummy output";
    algorithm 
      assert(check, "this function can not be called with two-phase inputs!");
    end regionAssertReal;

* * * * *

![image218](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cp\_props\_ph
=========================================================================================================================================================================================================

**specific heat capacity at constant pressure as function of pressure
and specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Name Defaul Description
                                                      t      
  ---------------------------------------------- ---- ------ --------------
  [Pressure](Modelica_SIunits.html#Modelica.SIun p           pressure [Pa]
  its.Pressure)                                              

  [SpecificEnthalpy](Modelica_SIunits.html#Model h           specific
  ica.SIunits.SpecificEnthalpy)                              enthalpy
                                                             [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.html# aux         auxiliary
  Modelica.Media.Common.IF97BaseTwoPhase)                    record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cp   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cp_props_ph 
      "specific heat capacity at constant pressure as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificHeatCapacity cp "specific heat capacity";
    algorithm 
      cp := aux.cp;
    end cp_props_ph;

* * * * *

![image219](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cp\_ph
==================================================================================================================================================================================================

**specific heat capacity at constant pressure as function of pressure
and specific enthalpy**

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

  [SpecificEnthalpy](Modelica_SIunits h          specific enthalpy [J/kg]
  .html#Modelica.SIunits.SpecificEnth            
  alpy)                                          

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cp   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cp_ph 
      "specific heat capacity at constant pressure as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificHeatCapacity cp "specific heat capacity";
    algorithm 
      cp := cp_props_ph(p, h, waterBaseProp_ph(p, h, phase, region));
    end cp_ph;

* * * * *

![image220](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).beta\_props\_ph
===========================================================================================================================================================================================================

**isobaric expansion coefficient as function of pressure and specific
enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Name Defaul Description
                                                      t      
  ---------------------------------------------- ---- ------ --------------
  [Pressure](Modelica_SIunits.html#Modelica.SIun p           pressure [Pa]
  its.Pressure)                                              

  [SpecificEnthalpy](Modelica_SIunits.html#Model h           specific
  ica.SIunits.SpecificEnthalpy)                              enthalpy
                                                             [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.html# aux         auxiliary
  Modelica.Media.Common.IF97BaseTwoPhase)                    record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  [RelativePressureCoefficient](Modelica_SIunits.h beta isobaric expansion
  tml#Modelica.SIunits.RelativePressureCoefficient      coefficient [1/K]
  )                                                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function beta_props_ph 
      "isobaric expansion coefficient as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.RelativePressureCoefficient beta "isobaric expansion coefficient";
    algorithm 
      beta := if aux.region == 3 or aux.region == 4 then 
        aux.pt/(aux.rho*aux.pd) else 
        aux.vt*aux.rho;
    end beta_props_ph;

* * * * *

![image221](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).beta\_ph
====================================================================================================================================================================================================

**isobaric expansion coefficient as function of pressure and specific
enthalpy**

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

  [SpecificEnthalpy](Modelica_SIunits h          specific enthalpy [J/kg]
  .html#Modelica.SIunits.SpecificEnth            
  alpy)                                          

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  [RelativePressureCoefficient](Modelica_SIunits.h beta isobaric expansion
  tml#Modelica.SIunits.RelativePressureCoefficient      coefficient [1/K]
  )                                                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function beta_ph 
      "isobaric expansion coefficient as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.RelativePressureCoefficient beta "isobaric expansion coefficient";
    algorithm 
      beta := beta_props_ph(p, h, waterBaseProp_ph(p, h, phase, region));
    end beta_ph;

* * * * *

![image222](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).kappa\_props\_ph
============================================================================================================================================================================================================

**isothermal compressibility factor as function of pressure and specific
enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Name Defaul Description
                                                      t      
  ---------------------------------------------- ---- ------ --------------
  [Pressure](Modelica_SIunits.html#Modelica.SIun p           pressure [Pa]
  its.Pressure)                                              

  [SpecificEnthalpy](Modelica_SIunits.html#Model h           specific
  ica.SIunits.SpecificEnthalpy)                              enthalpy
                                                             [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.html# aux         auxiliary
  Modelica.Media.Common.IF97BaseTwoPhase)                    record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [IsothermalCompressibility](Modelica_SIunits.h kapp isothermal
  tml#Modelica.SIunits.IsothermalCompressibility a    compressibility
  )                                                   factor [1/Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function kappa_props_ph 
      "isothermal compressibility factor as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.IsothermalCompressibility kappa "isothermal compressibility factor";
    algorithm 
      kappa := if aux.region == 3 or aux.region == 4 then 
        1/(aux.rho*aux.pd) else -aux.vp*aux.rho;
    end kappa_props_ph;

* * * * *

![image223](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).kappa\_ph
=====================================================================================================================================================================================================

**isothermal compressibility factor as function of pressure and specific
enthalpy**

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

  [SpecificEnthalpy](Modelica_SIunits h          specific enthalpy [J/kg]
  .html#Modelica.SIunits.SpecificEnth            
  alpy)                                          

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [IsothermalCompressibility](Modelica_SIunits.h kapp isothermal
  tml#Modelica.SIunits.IsothermalCompressibility a    compressibility
  )                                                   factor [1/Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function kappa_ph 
      "isothermal compressibility factor as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.IsothermalCompressibility kappa "isothermal compressibility factor";
    algorithm 
      kappa := kappa_props_ph(p, h, waterBaseProp_ph(p, h, phase, region));
    end kappa_ph;

* * * * *

![image224](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).velocityOfSound\_props\_ph
======================================================================================================================================================================================================================

**speed of sound as function of pressure and specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Name Defaul Description
                                                      t      
  ---------------------------------------------- ---- ------ --------------
  [Pressure](Modelica_SIunits.html#Modelica.SIun p           pressure [Pa]
  its.Pressure)                                              

  [SpecificEnthalpy](Modelica_SIunits.html#Model h           specific
  ica.SIunits.SpecificEnthalpy)                              enthalpy
                                                             [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.html# aux         auxiliary
  Modelica.Media.Common.IF97BaseTwoPhase)                    record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                          Name      Description
  --------------------------------------------- --------- -----------------
  [Velocity](Modelica_SIunits.html#Modelica.SIu v\_sound  speed of sound
  nits.Velocity)                                          [m/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function velocityOfSound_props_ph 
      "speed of sound as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.Velocity v_sound "speed of sound";
    algorithm 
      // dp/drho at constant s
      v_sound := if aux.region == 3 then sqrt(max(0,(aux.pd*aux.rho*aux.rho*aux.cv + aux.pt*aux.pt*aux.T)/(aux.rho*aux.rho*aux.cv))) else 
        if aux.region == 4 then 
        sqrt(max(0,1/((aux.rho*(aux.rho*aux.cv/aux.dpT + 1.0)/(aux.dpT*aux.T)) - 1/aux.rho*aux.rho*aux.rho/(aux.dpT*aux.T)))) else 
             sqrt(max(0,-aux.cp/(aux.rho*aux.rho*(aux.vp*aux.cp+aux.vt*aux.vt*aux.T))));
    end velocityOfSound_props_ph;

* * * * *

![image225](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).velocityOfSound\_ph
===============================================================================================================================================================================================================

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

  [SpecificEnthalpy](Modelica_SIunits h          specific enthalpy [J/kg]
  .html#Modelica.SIunits.SpecificEnth            
  alpy)                                          

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                          Name      Description
  --------------------------------------------- --------- -----------------
  [Velocity](Modelica_SIunits.html#Modelica.SIu v\_sound  speed of sound
  nits.Velocity)                                          [m/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function velocityOfSound_ph
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.Velocity v_sound "speed of sound";
    algorithm 
      v_sound := velocityOfSound_props_ph(p, h, waterBaseProp_ph(p, h, phase, region));
    end velocityOfSound_ph;

* * * * *

![image226](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).isentropicExponent\_props\_ph
=========================================================================================================================================================================================================================

**isentropic exponent as function of pressure and specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Name Defaul Description
                                                      t      
  ---------------------------------------------- ---- ------ --------------
  [Pressure](Modelica_SIunits.html#Modelica.SIun p           pressure [Pa]
  its.Pressure)                                              

  [SpecificEnthalpy](Modelica_SIunits.html#Model h           specific
  ica.SIunits.SpecificEnthalpy)                              enthalpy
                                                             [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.html# aux         auxiliary
  Modelica.Media.Common.IF97BaseTwoPhase)                    record
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name       Description
  --------- ---------- ------------------------
  Real      gamma      isentropic exponent

Modelica definition
-------------------

    function isentropicExponent_props_ph 
      "isentropic exponent as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output Real gamma "isentropic exponent";
    algorithm 
      gamma := if aux.region == 3 then 1/(aux.rho*p)*((aux.pd*aux.cv*aux.rho*aux.rho + aux.pt*aux.pt*aux.T)/(aux.cv)) else 
             if aux.region == 4 then 1/(aux.rho*p)*aux.dpT*aux.dpT*aux.T/aux.cv else 
        -1/(aux.rho*aux.p)*aux.cp/(aux.vp*aux.cp + aux.vt*aux.vt*aux.T);
    end isentropicExponent_props_ph;

* * * * *

![image227](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).isentropicExponent\_ph
==================================================================================================================================================================================================================

**isentropic exponent as function of pressure and specific enthalpy**

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

  [SpecificEnthalpy](Modelica_SIunits h          specific enthalpy [J/kg]
  .html#Modelica.SIunits.SpecificEnth            
  alpy)                                          

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name       Description
  --------- ---------- ------------------------
  Real      gamma      isentropic exponent

Modelica definition
-------------------

    function isentropicExponent_ph 
      "isentropic exponent as function of pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase =   0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output Real gamma "isentropic exponent";
    algorithm 
      gamma := isentropicExponent_props_ph(p, h, waterBaseProp_ph(p, h, phase, region));
    end isentropicExponent_ph;

* * * * *

![image228](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).ddph\_props
=======================================================================================================================================================================================================

**density derivative by pressure**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Name Defaul Description
                                                      t      
  ---------------------------------------------- ---- ------ --------------
  [Pressure](Modelica_SIunits.html#Modelica.SIun p           pressure [Pa]
  its.Pressure)                                              

  [SpecificEnthalpy](Modelica_SIunits.html#Model h           specific
  ica.SIunits.SpecificEnthalpy)                              enthalpy
                                                             [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.html# aux         auxiliary
  Modelica.Media.Common.IF97BaseTwoPhase)                    record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                          Name Description
  --------------------------------------------- ---- ---------------------
  [DerDensityByPressure](Modelica_SIunits.html# ddph density derivative by
  Modelica.SIunits.DerDensityByPressure)             pressure [s2/m2]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function ddph_props "density derivative by pressure"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.DerDensityByPressure ddph "density derivative by pressure";
    algorithm 
      ddph := if aux.region == 3 then 
        ((aux.rho*(aux.cv*aux.rho + aux.pt))/(aux.rho*aux.rho*aux.pd*aux.cv + aux.T*aux.pt*aux.pt)) else 
        if aux.region == 4 then  (aux.rho*(aux.rho*aux.cv/aux.dpT + 1.0)/(aux.dpT*aux.T)) else 
             (-aux.rho*aux.rho*(aux.vp*aux.cp - aux.vt/aux.rho + aux.T*aux.vt*aux.vt)/aux.cp);
    end ddph_props;

* * * * *

![image229](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).ddph
================================================================================================================================================================================================

**density derivative by pressure**

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

  [SpecificEnthalpy](Modelica_SIunits h          specific enthalpy [J/kg]
  .html#Modelica.SIunits.SpecificEnth            
  alpy)                                          

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                          Name Description
  --------------------------------------------- ---- ---------------------
  [DerDensityByPressure](Modelica_SIunits.html# ddph density derivative by
  Modelica.SIunits.DerDensityByPressure)             pressure [s2/m2]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function ddph "density derivative by pressure"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.DerDensityByPressure ddph "density derivative by pressure";
    algorithm 
      ddph := ddph_props(p, h, waterBaseProp_ph(p, h, phase, region));
    end ddph;

* * * * *

![image230](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).ddhp\_props
=======================================================================================================================================================================================================

**density derivative by specific enthalpy**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Name Defaul Description
                                                      t      
  ---------------------------------------------- ---- ------ --------------
  [Pressure](Modelica_SIunits.html#Modelica.SIun p           pressure [Pa]
  its.Pressure)                                              

  [SpecificEnthalpy](Modelica_SIunits.html#Model h           specific
  ica.SIunits.SpecificEnthalpy)                              enthalpy
                                                             [J/kg]

  [IF97BaseTwoPhase](Modelica_Media_Common.html# aux         auxiliary
  Modelica.Media.Common.IF97BaseTwoPhase)                    record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                       Name Description
  ------------------------------------------ ---- -------------------------
  [DerDensityByEnthalpy](Modelica_SIunits.ht ddhp density derivative by
  ml#Modelica.SIunits.DerDensityByEnthalpy)       specific enthalpy
                                                  [kg.s2/m5]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function ddhp_props "density derivative by specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.DerDensityByEnthalpy ddhp "density derivative by specific enthalpy";
    algorithm 
      ddhp := if aux.region == 3 then 
        -aux.rho*aux.rho*aux.pt/(aux.rho*aux.rho*aux.pd*aux.cv + aux.T*aux.pt*aux.pt) else 
        if aux.region == 4 then -aux.rho*aux.rho/(aux.dpT*aux.T) else 
             -aux.rho*aux.rho*aux.vt/(aux.cp);
    end ddhp_props;

* * * * *

![image231](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).ddhp
================================================================================================================================================================================================

**density derivative by specific enthalpy**

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

  [SpecificEnthalpy](Modelica_SIunits h          specific enthalpy [J/kg]
  .html#Modelica.SIunits.SpecificEnth            
  alpy)                                          

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                       Name Description
  ------------------------------------------ ---- -------------------------
  [DerDensityByEnthalpy](Modelica_SIunits.ht ddhp density derivative by
  ml#Modelica.SIunits.DerDensityByEnthalpy)       specific enthalpy
                                                  [kg.s2/m5]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function ddhp "density derivative by specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.DerDensityByEnthalpy ddhp "density derivative by specific enthalpy";
    algorithm 
      ddhp := ddhp_props(p, h, waterBaseProp_ph(p, h, phase, region));
    end ddhp;

* * * * *

![image232](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).waterBaseProp\_pT
=============================================================================================================================================================================================================

**intermediate property record for water (p and T prefered states)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                           Name Defau Description
                                      lt    
  ------------------------------ ---- ----- -------------------------------
  [Pressure](Modelica_SIunits.ht p          pressure [Pa]
  ml#Modelica.SIunits.Pressure)             

  [Temperature](Modelica_SIunits T          temperature [K]
  .html#Modelica.SIunits.Tempera            
  ture)                                     

  Integer                        regi 0     if 0, do region computation,
                                 on         otherwise assume the region is
                                            this input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- ------------
  [IF97BaseTwoPhase](Modelica_Media_Common.html#Modelica aux   auxiliary
  .Media.Common.IF97BaseTwoPhase)                              record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function waterBaseProp_pT 
      "intermediate property record for water (p and T prefered states)"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Integer region = 0 
        "if 0, do region computation, otherwise assume the region is this input";
      output Common.IF97BaseTwoPhase aux "auxiliary record";
    protected 
      Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Common.HelmholtzDerivs f 
        "dimensionless Helmholtz funcion and dervatives w.r.t. delta and tau";
      Integer error "error flag for inverse iterations";
    algorithm 
      aux.phase := 1;
      aux.region := if region == 0 then BaseIF97.Regions.region_pT(p=p,T= T) else region;
      aux.R := BaseIF97.data.RH2O;
      aux.p := p;
      aux.T := T;
      if (aux.region == 1) then
        g := BaseIF97.Basic.g1(p, T);
        aux.h := aux.R*aux.T*g.tau*g.gtau;
        aux.s := aux.R*(g.tau*g.gtau - g.g);
        aux.rho := p/(aux.R*T*g.pi*g.gpi);
        aux.vt := aux.R/p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*T/(p*p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
        aux.x := 0.0;
      elseif (aux.region == 2) then
        g := BaseIF97.Basic.g2(p, T);
        aux.h := aux.R*aux.T*g.tau*g.gtau;
        aux.s := aux.R*(g.tau*g.gtau - g.g);
        aux.rho := p/(aux.R*T*g.pi*g.gpi);
        aux.vt := aux.R/p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*T/(p*p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
        aux.x := 1.0;
      elseif (aux.region == 3) then
        (aux.rho,error) := BaseIF97.Inverses.dofpt3(p=p,T= T,delp= 1.0e-7);
        f := BaseIF97.Basic.f3(aux.rho, T);
        aux.h := aux.R*T*(f.tau*f.ftau + f.delta*f.fdelta);
        aux.s := aux.R*(f.tau*f.ftau - f.f);
        aux.pd := aux.R*T*f.delta*(2.0*f.fdelta + f.delta*f.fdeltadelta);
        aux.pt := aux.R*aux.rho*f.delta*(f.fdelta - f.tau*f.fdeltatau);
        aux.cv := aux.R*(-f.tau*f.tau*f.ftautau);
        aux.x := 0.0;
      elseif (aux.region == 5) then
        g := BaseIF97.Basic.g5(p, T);
        aux.h := aux.R*aux.T*g.tau*g.gtau;
        aux.s := aux.R*(g.tau*g.gtau - g.g);
        aux.rho := p/(aux.R*T*g.pi*g.gpi);
        aux.vt := aux.R/p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*T/(p*p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
      else
        assert(false, "error in region computation of IF97 steam tables"
         + "(p = " + String(p) + ", T = " + String(T) + ")");
      end if;
    end waterBaseProp_pT;

* * * * *

![image233](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rho\_props\_pT
==========================================================================================================================================================================================================

**density as function or pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits p           pressure
  .Pressure)                                                    [Pa]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
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

    function rho_props_pT 
      "density as function or pressure and temperature"
      annotation(derivative=rho_pT_der);
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.Density rho "density";
    algorithm 
      rho := aux.rho;
    end rho_props_pT;

* * * * *

![image234](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rho\_pT
===================================================================================================================================================================================================

**density as function or pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Pressure](Modelica_SIunits.html# p           pressure [Pa]
  Modelica.SIunits.Pressure)                    

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
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

    function rho_pT "density as function or pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.Density rho "density";
    algorithm 
      rho := rho_props_pT(p, T, waterBaseProp_pT(p, T, region));
    end rho_pT;

* * * * *

![image235](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).h\_props\_pT
========================================================================================================================================================================================================

**specific enthalpy as function or pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits p           pressure
  .Pressure)                                                    [Pa]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
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

    function h_props_pT 
      "specific enthalpy as function or pressure and temperature"
      annotation(derivative=h_pT_der);
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := aux.h;
    end h_props_pT;

* * * * *

![image236](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).h\_pT
=================================================================================================================================================================================================

**specific enthalpy as function or pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Pressure](Modelica_SIunits.html# p           pressure [Pa]
  Modelica.SIunits.Pressure)                    

  [Temperature](Modelica_SIunits.ht T           Temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
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

    function h_pT 
      "specific enthalpy as function or pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "Temperature";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := h_props_pT(p, T, waterBaseProp_pT(p, T, region));
    end h_pT;

* * * * *

![image237](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).h\_pT\_der
======================================================================================================================================================================================================

**derivative function of h\_pT**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Defau Description
                                                      lt    
  --------------------------------------------- ----- ----- --------------
  [Pressure](Modelica_SIunits.html#Modelica.SIu p           pressure [Pa]
  nits.Pressure)                                            

  [Temperature](Modelica_SIunits.html#Modelica. T           temperature
  SIunits.Temperature)                                      [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html aux         auxiliary
  #Modelica.Media.Common.IF97BaseTwoPhase)                  record

  Real                                          p\_de       derivative of
                                                r           pressure

  Real                                          T\_de       derivative of
                                                r           temperature
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- ------------------------------------
  Real      h\_der      derivative of specific enthalpy

Modelica definition
-------------------

    function h_pT_der "derivative function of h_pT"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      input Real p_der "derivative of pressure";
      input Real T_der "derivative of temperature";
      output Real h_der "derivative of specific enthalpy";
    algorithm 
      if (aux.region == 3) then
        h_der := ((-aux.rho*aux.pd + T*aux.pt)/(aux.rho*aux.rho*aux.pd))*p_der +
          ((aux.rho*aux.rho*aux.pd*aux.cv + aux.T*aux.pt*aux.pt)/(aux.rho*aux.rho
          *aux.pd))*T_der;
      else
        //regions 1,2 or 5
        h_der := (1/aux.rho - aux.T*aux.vt)*p_der + aux.cp*T_der;
      end if;
    end h_pT_der;

* * * * *

![image238](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rho\_pT\_der
========================================================================================================================================================================================================

**derivative function of rho\_pT**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Defau Description
                                                      lt    
  --------------------------------------------- ----- ----- --------------
  [Pressure](Modelica_SIunits.html#Modelica.SIu p           pressure [Pa]
  nits.Pressure)                                            

  [Temperature](Modelica_SIunits.html#Modelica. T           temperature
  SIunits.Temperature)                                      [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html aux         auxiliary
  #Modelica.Media.Common.IF97BaseTwoPhase)                  record

  Real                                          p\_de       derivative of
                                                r           pressure

  Real                                          T\_de       derivative of
                                                r           temperature
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name          Description
  --------- ------------- --------------------------
  Real      rho\_der      derivative of density

Modelica definition
-------------------

    function rho_pT_der "derivative function of rho_pT"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      input Real p_der "derivative of pressure";
      input Real T_der "derivative of temperature";
      output Real rho_der "derivative of density";
    algorithm 
      if (aux.region == 3) then
        rho_der := (1/aux.pd)*p_der - (aux.pt/aux.pd)*T_der;
      else
        //regions 1,2 or 5
        rho_der := (-aux.rho*aux.rho*aux.vp)*p_der + (-aux.rho*aux.rho*aux.vt)*
          T_der;
      end if;
    end rho_pT_der;

* * * * *

![image239](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).s\_props\_pT
========================================================================================================================================================================================================

**specific entropy as function of pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits p           pressure
  .Pressure)                                                    [Pa]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

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

    function s_props_pT 
      "specific entropy as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificEntropy s "specific entropy";
    algorithm 
      s := aux.s;
    end s_props_pT;

* * * * *

![image240](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).s\_pT
=================================================================================================================================================================================================

**temperature as function of pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Pressure](Modelica_SIunits.html# p           pressure [Pa]
  Modelica.SIunits.Pressure)                    

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

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

    function s_pT "temperature as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificEntropy s "specific entropy";
    algorithm 
      s := s_props_pT(p, T, waterBaseProp_pT(p, T, region));
    end s_pT;

* * * * *

![image241](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cv\_props\_pT
=========================================================================================================================================================================================================

**specific heat capacity at constant volume as function of pressure and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits p           pressure
  .Pressure)                                                    [Pa]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cv   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cv_props_pT 
      "specific heat capacity at constant volume as function of pressure and temperature"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificHeatCapacity cv "specific heat capacity";
    algorithm 
      cv := aux.cv;
    end cv_props_pT;

* * * * *

![image242](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cv\_pT
==================================================================================================================================================================================================

**specific heat capacity at constant volume as function of pressure and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Pressure](Modelica_SIunits.html# p           pressure [Pa]
  Modelica.SIunits.Pressure)                    

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cv   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cv_pT 
      "specific heat capacity at constant volume as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificHeatCapacity cv "specific heat capacity";
    algorithm 
      cv := cv_props_pT(p, T, waterBaseProp_pT(p, T, region));
    end cv_pT;

* * * * *

![image243](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cp\_props\_pT
=========================================================================================================================================================================================================

**specific heat capacity at constant pressure as function of pressure
and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits p           pressure
  .Pressure)                                                    [Pa]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cp   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cp_props_pT 
      "specific heat capacity at constant pressure as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificHeatCapacity cp "specific heat capacity";
    algorithm 
      cp := if aux.region == 3 then 
        (aux.rho*aux.rho*aux.pd*aux.cv + aux.T*aux.pt*aux.pt)/(aux.rho*aux.rho*aux.pd) else 
        aux.cp;
    end cp_props_pT;

* * * * *

![image244](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cp\_pT
==================================================================================================================================================================================================

**specific heat capacity at constant pressure as function of pressure
and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Pressure](Modelica_SIunits.html# p           pressure [Pa]
  Modelica.SIunits.Pressure)                    

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cp   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cp_pT 
      "specific heat capacity at constant pressure as function of pressure and temperature"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificHeatCapacity cp "specific heat capacity";
    algorithm 
      cp := cp_props_pT(p, T, waterBaseProp_pT(p, T, region));
    end cp_pT;

* * * * *

![image245](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).beta\_props\_pT
===========================================================================================================================================================================================================

**isobaric expansion coefficient as function of pressure and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits p           pressure
  .Pressure)                                                    [Pa]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  [RelativePressureCoefficient](Modelica_SIunits.h beta isobaric expansion
  tml#Modelica.SIunits.RelativePressureCoefficient      coefficient [1/K]
  )                                                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function beta_props_pT 
      "isobaric expansion coefficient as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.RelativePressureCoefficient beta "isobaric expansion coefficient";
    algorithm 
      beta := if aux.region == 3 then 
        aux.pt/(aux.rho*aux.pd) else 
        aux.vt*aux.rho;
    end beta_props_pT;

* * * * *

![image246](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).beta\_pT
====================================================================================================================================================================================================

**isobaric expansion coefficient as function of pressure and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Pressure](Modelica_SIunits.html# p           pressure [Pa]
  Modelica.SIunits.Pressure)                    

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  [RelativePressureCoefficient](Modelica_SIunits.h beta isobaric expansion
  tml#Modelica.SIunits.RelativePressureCoefficient      coefficient [1/K]
  )                                                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function beta_pT 
      "isobaric expansion coefficient as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.RelativePressureCoefficient beta "isobaric expansion coefficient";
    algorithm 
      beta := beta_props_pT(p, T, waterBaseProp_pT(p, T, region));
    end beta_pT;

* * * * *

![image247](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).kappa\_props\_pT
============================================================================================================================================================================================================

**isothermal compressibility factor as function of pressure and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits p           pressure
  .Pressure)                                                    [Pa]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [IsothermalCompressibility](Modelica_SIunits.h kapp isothermal
  tml#Modelica.SIunits.IsothermalCompressibility a    compressibility
  )                                                   factor [1/Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function kappa_props_pT 
      "isothermal compressibility factor as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.IsothermalCompressibility kappa "isothermal compressibility factor";
    algorithm 
      kappa := if aux.region == 3 then 
        1/(aux.rho*aux.pd) else -aux.vp*aux.rho;
    end kappa_props_pT;

* * * * *

![image248](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).kappa\_pT
=====================================================================================================================================================================================================

**isothermal compressibility factor as function of pressure and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Pressure](Modelica_SIunits.html# p           pressure [Pa]
  Modelica.SIunits.Pressure)                    

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [IsothermalCompressibility](Modelica_SIunits.h kapp isothermal
  tml#Modelica.SIunits.IsothermalCompressibility a    compressibility
  )                                                   factor [1/Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function kappa_pT 
      "isothermal compressibility factor as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.IsothermalCompressibility kappa "isothermal compressibility factor";
    algorithm 
      kappa := kappa_props_pT(p, T, waterBaseProp_pT(p, T, region));
    end kappa_pT;

* * * * *

![image249](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).velocityOfSound\_props\_pT
======================================================================================================================================================================================================================

**speed of sound as function of pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits p           pressure
  .Pressure)                                                    [Pa]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                          Name      Description
  --------------------------------------------- --------- -----------------
  [Velocity](Modelica_SIunits.html#Modelica.SIu v\_sound  speed of sound
  nits.Velocity)                                          [m/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function velocityOfSound_props_pT 
      "speed of sound as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.Velocity v_sound "speed of sound";
    algorithm 
      // dp/drho at constant s
      v_sound := if aux.region == 3 then sqrt(max(0,(aux.pd*aux.rho*aux.rho*aux.cv + aux.pt*aux.pt*aux.T)/(aux.rho*aux.rho*aux.cv))) else 
        sqrt(max(0,-aux.cp/(aux.rho*aux.rho*(aux.vp*aux.cp+aux.vt*aux.vt*aux.T))));
    end velocityOfSound_props_pT;

* * * * *

![image250](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).velocityOfSound\_pT
===============================================================================================================================================================================================================

**speed of sound as function of pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Pressure](Modelica_SIunits.html# p           pressure [Pa]
  Modelica.SIunits.Pressure)                    

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                          Name      Description
  --------------------------------------------- --------- -----------------
  [Velocity](Modelica_SIunits.html#Modelica.SIu v\_sound  speed of sound
  nits.Velocity)                                          [m/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function velocityOfSound_pT 
      "speed of sound as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.Velocity v_sound "speed of sound";
    algorithm 
      v_sound := velocityOfSound_props_pT(p, T, waterBaseProp_pT(p, T, region));
    end velocityOfSound_pT;

* * * * *

![image251](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).isentropicExponent\_props\_pT
=========================================================================================================================================================================================================================

**isentropic exponent as function of pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Pressure](Modelica_SIunits.html#Modelica.SIunits p           pressure
  .Pressure)                                                    [Pa]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name       Description
  --------- ---------- ------------------------
  Real      gamma      isentropic exponent

Modelica definition
-------------------

    function isentropicExponent_props_pT 
      "isentropic exponent as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output Real gamma "isentropic exponent";
    algorithm 
      gamma := if aux.region == 3 then 1/(aux.rho*p)*((aux.pd*aux.cv*aux.rho*aux.rho + aux.pt*aux.pt*aux.T)/(aux.cv)) else 
        -1/(aux.rho*aux.p)*aux.cp/(aux.vp*aux.cp + aux.vt*aux.vt*aux.T);
    end isentropicExponent_props_pT;

* * * * *

![image252](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).isentropicExponent\_pT
==================================================================================================================================================================================================================

**isentropic exponent as function of pressure and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Pressure](Modelica_SIunits.html# p           pressure [Pa]
  Modelica.SIunits.Pressure)                    

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name       Description
  --------- ---------- ------------------------
  Real      gamma      isentropic exponent

Modelica definition
-------------------

    function isentropicExponent_pT 
      "isentropic exponent as function of pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output Real gamma "isentropic exponent";
    algorithm 
      gamma := isentropicExponent_props_pT(p, T, waterBaseProp_pT(p, T, region));
    end isentropicExponent_pT;

* * * * *

![image253](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).waterBaseProp\_dT
=============================================================================================================================================================================================================

**intermediate property record for water (d and T prefered states)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                           Name Defau Description
                                      lt    
  ------------------------------ ---- ----- -------------------------------
  [Density](Modelica_SIunits.htm rho        density [kg/m3]
  l#Modelica.SIunits.Density)               

  [Temperature](Modelica_SIunits T          temperature [K]
  .html#Modelica.SIunits.Tempera            
  ture)                                     

  Integer                        phas 0     phase: 2 for two-phase, 1 for
                                 e          one phase, 0 if unknown

  Integer                        regi 0     if 0, do region computation,
                                 on         otherwise assume the region is
                                            this input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- ------------
  [IF97BaseTwoPhase](Modelica_Media_Common.html#Modelica aux   auxiliary
  .Media.Common.IF97BaseTwoPhase)                              record
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function waterBaseProp_dT 
      "intermediate property record for water (d and T prefered states)"
      extends Modelica.Icons.Function;
      input SI.Density rho "density";
      input SI.Temperature T "temperature";
      input Integer phase =  0 
        "phase: 2 for two-phase, 1 for one phase, 0 if unknown";
      input Integer region = 0 
        "if 0, do region computation, otherwise assume the region is this input";
      output Common.IF97BaseTwoPhase aux "auxiliary record";
    protected 
      SI.SpecificEnthalpy h_liq "liquid specific enthalpy";
      SI.Density d_liq "liquid density";
      SI.SpecificEnthalpy h_vap "vapour specific enthalpy";
      SI.Density d_vap "vapour density";
      Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Common.HelmholtzDerivs f 
        "dimensionless Helmholtz funcion and dervatives w.r.t. delta and tau";
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
      Integer error "error flag for inverse iterations";
    algorithm 
      aux.region := if region == 0 then 
        (if phase == 2 then 4 else BaseIF97.Regions.region_dT(d=rho,T= T,phase= phase)) else region;
      aux.phase := if aux.region == 4 then 2 else 1;
      aux.R := BaseIF97.data.RH2O;
      aux.rho := rho;
      aux.T := T;
      if (aux.region == 1) then
        (aux.p,error) := BaseIF97.Inverses.pofdt125(d=rho,T= T,reldd= 1.0e-8,region=
                 1);
        g := BaseIF97.Basic.g1(aux.p, T);
        aux.h := aux.R*aux.T*g.tau*g.gtau;
        aux.s := aux.R*(g.tau*g.gtau - g.g);
        aux.rho := aux.p/(aux.R*T*g.pi*g.gpi);
        aux.vt := aux.R/aux.p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*T/(aux.p*aux.p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
        aux.x := 0.0;
      elseif (aux.region == 2) then
        (aux.p,error) := BaseIF97.Inverses.pofdt125(d=rho,T= T,reldd= 1.0e-8,region=
                 2);
        g := BaseIF97.Basic.g2(aux.p, T);
        aux.h := aux.R*aux.T*g.tau*g.gtau;
        aux.s := aux.R*(g.tau*g.gtau - g.g);
        aux.rho := aux.p/(aux.R*T*g.pi*g.gpi);
        aux.vt := aux.R/aux.p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*T/(aux.p*aux.p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
        aux.x := 1.0;
      elseif (aux.region == 3) then
        f := BaseIF97.Basic.f3(rho, T);
        aux.p := aux.R*rho*T*f.delta*f.fdelta;
        aux.h := aux.R*T*(f.tau*f.ftau + f.delta*f.fdelta);
        aux.s := aux.R*(f.tau*f.ftau - f.f);
        aux.pd := aux.R*T*f.delta*(2.0*f.fdelta + f.delta*f.fdeltadelta);
        aux.pt := aux.R*rho*f.delta*(f.fdelta - f.tau*f.fdeltatau);
        aux.cp := (aux.rho*aux.rho*aux.pd*aux.cv + aux.T*aux.pt*aux.pt)/(aux.rho*aux.rho*aux.pd);
        aux.cv := aux.R*(-f.tau*f.tau*f.ftautau);
        aux.x := 0.0;
      elseif (aux.region == 4) then
        aux.p := BaseIF97.Basic.psat(T);
        d_liq := rhol_T(T);
        d_vap := rhov_T(T);
        h_liq := hl_p(aux.p);
        h_vap := hv_p(aux.p);
        aux.x := if (d_vap <> d_liq) then (1/rho - 1/d_liq)/(1/d_vap - 1/d_liq) else 
        1.0;
        aux.h := h_liq + aux.x*(h_vap - h_liq);
        if T < BaseIF97.data.TLIMIT1 then
          gl := BaseIF97.Basic.g1(aux.p, T);
          gv := BaseIF97.Basic.g2(aux.p, T);
          liq := Common.gibbsToBoundaryProps(gl);
          vap := Common.gibbsToBoundaryProps(gv);
        else
          fl := BaseIF97.Basic.f3(d_liq, T);
          fv := BaseIF97.Basic.f3(d_vap, T);
          liq := Common.helmholtzToBoundaryProps(fl);
          vap := Common.helmholtzToBoundaryProps(fv);
        end if;
        aux.dpT := if (liq.d <> vap.d) then (vap.s - liq.s)*liq.d*vap.d/(liq.d - vap.d) else BaseIF97.Basic.dptofT(aux.T);
        aux.s := liq.s + aux.x*(vap.s - liq.s);
        aux.cv := Common.cv2Phase(liq, vap, aux.x, aux.T, aux.p);
        aux.cp := liq.cp + aux.x*(vap.cp - liq.cp);
        aux.pt := liq.pt + aux.x*(vap.pt - liq.pt);
        aux.pd := liq.pd + aux.x*(vap.pd - liq.pd);
      elseif (aux.region == 5) then
        (aux.p,error) := BaseIF97.Inverses.pofdt125(d=rho,T= T,reldd= 1.0e-8,region=5);
        g := BaseIF97.Basic.g2(aux.p, T);
        aux.h := aux.R*aux.T*g.tau*g.gtau;
        aux.s := aux.R*(g.tau*g.gtau - g.g);
        aux.rho := aux.p/(aux.R*T*g.pi*g.gpi);
        aux.vt := aux.R/aux.p*(g.pi*g.gpi - g.tau*g.pi*g.gtaupi);
        aux.vp := aux.R*T/(aux.p*aux.p)*g.pi*g.pi*g.gpipi;
        aux.cp := -aux.R*g.tau*g.tau*g.gtautau;
        aux.cv := aux.R*(-g.tau*g.tau*g.gtautau + ((g.gpi - g.tau*g.gtaupi)*(g.gpi - g.tau*g.gtaupi)/g.gpipi));
      else
        assert(false, "error in region computation of IF97 steam tables"
         + "(rho = " + String(rho) + ", T = " + String(T) + ")");
      end if;
    end waterBaseProp_dT;

* * * * *

![image254](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).h\_props\_dT
========================================================================================================================================================================================================

**specific enthalpy as function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d           density
  Density)                                                      [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           Temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
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

    function h_props_dT 
      "specific enthalpy as function of density and temperature"
      annotation(derivative=h_dT_der);
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "Temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := aux.h;
    end h_props_dT;

* * * * *

![image255](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).h\_dT
=================================================================================================================================================================================================

**specific enthalpy as function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Density](Modelica_SIunits.html#M d           density [kg/m3]
  odelica.SIunits.Density)                      

  [Temperature](Modelica_SIunits.ht T           Temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           phase 0     2 for two-phase, 1 for
                                                one-phase, 0 if not known

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
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

    function h_dT 
      "specific enthalpy as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "Temperature";
      input Integer phase =  0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := h_props_dT(d, T, waterBaseProp_dT(d, T, phase, region));
    end h_dT;

* * * * *

![image256](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).h\_dT\_der
======================================================================================================================================================================================================

**derivative function of h\_dT**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Defau Description
                                                      lt    
  --------------------------------------------- ----- ----- --------------
  [Density](Modelica_SIunits.html#Modelica.SIun d           density
  its.Density)                                              [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica. T           temperature
  SIunits.Temperature)                                      [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html aux         auxiliary
  #Modelica.Media.Common.IF97BaseTwoPhase)                  record

  Real                                          d\_de       derivative of
                                                r           density

  Real                                          T\_de       derivative of
                                                r           temperature
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- ------------------------------------
  Real      h\_der      derivative of specific enthalpy

Modelica definition
-------------------

    function h_dT_der "derivative function of h_dT"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      input Real d_der "derivative of density";
      input Real T_der "derivative of temperature";
      output Real h_der "derivative of specific enthalpy";
    algorithm 
      if (aux.region == 3) then
        h_der := ((-d*aux.pd + T*aux.pt)/(d*d))*d_der + ((aux.cv*d + aux.pt)/d)*
          T_der;
      elseif (aux.region == 4) then
        h_der := T*aux.dpT/(d*d)*d_der + ((aux.cv*d + aux.dpT)/d)*T_der;
      else
        //regions 1,2 or 5
        h_der := (-(-1/d + T*aux.vt)/(d*d*aux.vp))*d_der + ((aux.vp*aux.cp - aux.
          vt/d + T*aux.vt*aux.vt)/aux.vp)*T_der;
      end if;
    end h_dT_der;

* * * * *

![image257](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).p\_props\_dT
========================================================================================================================================================================================================

**pressure as function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d           density
  Density)                                                      [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           Temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
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

    function p_props_dT "pressure as function of density and temperature"
      annotation(derivative=p_dT_der);
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "Temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.Pressure p "pressure";
    algorithm 
      p := aux.p;
    end p_props_dT;

* * * * *

![image258](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).p\_dT
=================================================================================================================================================================================================

**pressure as function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Density](Modelica_SIunits.html#M d           density [kg/m3]
  odelica.SIunits.Density)                      

  [Temperature](Modelica_SIunits.ht T           Temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           phase 0     2 for two-phase, 1 for
                                                one-phase, 0 if not known

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
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

    function p_dT "pressure as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "Temperature";
      input Integer phase =  0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.Pressure p "pressure";
    algorithm 
      p := p_props_dT(d, T, waterBaseProp_dT(d, T, phase, region));
    end p_dT;

* * * * *

![image259](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).p\_dT\_der
======================================================================================================================================================================================================

**derivative function of p\_dT**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Defau Description
                                                      lt    
  --------------------------------------------- ----- ----- --------------
  [Density](Modelica_SIunits.html#Modelica.SIun d           density
  its.Density)                                              [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica. T           temperature
  SIunits.Temperature)                                      [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html aux         auxiliary
  #Modelica.Media.Common.IF97BaseTwoPhase)                  record

  Real                                          d\_de       derivative of
                                                r           density

  Real                                          T\_de       derivative of
                                                r           temperature
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- ---------------------------
  Real      p\_der      derivative of pressure

Modelica definition
-------------------

    function p_dT_der "derivative function of p_dT"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      input Real d_der "derivative of density";
      input Real T_der "derivative of temperature";
      output Real p_der "derivative of pressure";
    algorithm 
      if (aux.region == 3) then
        p_der := aux.pd*d_der + aux.pt*T_der;
      elseif (aux.region == 4) then
        p_der := aux.dpT*T_der;
        /*density derivative is 0.0*/
      else
        //regions 1,2 or 5
        p_der := (-1/(d*d*aux.vp))*d_der + (-aux.vt/aux.vp)*T_der;
      end if;
    end p_dT_der;

* * * * *

![image260](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).s\_props\_dT
========================================================================================================================================================================================================

**specific entropy as function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d           density
  Density)                                                      [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           Temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

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

    function s_props_dT 
      "specific entropy as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "Temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificEntropy s "specific entropy";
    algorithm 
      s := aux.s;
    end s_props_dT;

* * * * *

![image261](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).s\_dT
=================================================================================================================================================================================================

**temperature as function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Density](Modelica_SIunits.html#M d           density [kg/m3]
  odelica.SIunits.Density)                      

  [Temperature](Modelica_SIunits.ht T           Temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           phase 0     2 for two-phase, 1 for
                                                one-phase, 0 if not known

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

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

    function s_dT "temperature as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "Temperature";
      input Integer phase =  0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificEntropy s "specific entropy";
    algorithm 
      s := s_props_dT(d, T, waterBaseProp_dT(d, T, phase, region));
    end s_dT;

* * * * *

![image262](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cv\_props\_dT
=========================================================================================================================================================================================================

**specific heat capacity at constant volume as function of density and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d           density
  Density)                                                      [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cv   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cv_props_dT 
      "specific heat capacity at constant volume as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificHeatCapacity cv "specific heat capacity";
    algorithm 
      cv := aux.cv;
    end cv_props_dT;

* * * * *

![image263](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cv\_dT
==================================================================================================================================================================================================

**specific heat capacity at constant volume as function of density and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Density](Modelica_SIunits.html#M d           density [kg/m3]
  odelica.SIunits.Density)                      

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           phase 0     2 for two-phase, 1 for
                                                one-phase, 0 if not known

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cv   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cv_dT 
      "specific heat capacity at constant volume as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Integer phase =  0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificHeatCapacity cv "specific heat capacity";
    algorithm 
      cv := cv_props_dT(d, T, waterBaseProp_dT(d, T, phase, region));
    end cv_dT;

* * * * *

![image264](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cp\_props\_dT
=========================================================================================================================================================================================================

**specific heat capacity at constant pressure as function of density and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d           density
  Density)                                                      [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cp   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cp_props_dT 
      "specific heat capacity at constant pressure as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificHeatCapacity cp "specific heat capacity";
    algorithm 
      cp := aux.cp;
    end cp_props_dT;

* * * * *

![image265](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).cp\_dT
==================================================================================================================================================================================================

**specific heat capacity at constant pressure as function of density and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Density](Modelica_SIunits.html#M d           density [kg/m3]
  odelica.SIunits.Density)                      

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           phase 0     2 for two-phase, 1 for
                                                one-phase, 0 if not known

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [SpecificHeatCapacity](Modelica_SIunits.html#Mo cp   specific heat
  delica.SIunits.SpecificHeatCapacity)                 capacity [J/(kg.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cp_dT 
      "specific heat capacity at constant pressure as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Integer phase =  0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificHeatCapacity cp "specific heat capacity";
    algorithm 
      cp := cp_props_dT(d, T, waterBaseProp_dT(d, T, phase, region));
    end cp_dT;

* * * * *

![image266](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).beta\_props\_dT
===========================================================================================================================================================================================================

**isobaric expansion coefficient as function of density and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d           density
  Density)                                                      [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  [RelativePressureCoefficient](Modelica_SIunits.h beta isobaric expansion
  tml#Modelica.SIunits.RelativePressureCoefficient      coefficient [1/K]
  )                                                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function beta_props_dT 
      "isobaric expansion coefficient as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.RelativePressureCoefficient beta "isobaric expansion coefficient";
    algorithm 
      beta := if aux.region == 3 or aux.region == 4 then 
        aux.pt/(aux.rho*aux.pd) else 
        aux.vt*aux.rho;
    end beta_props_dT;

* * * * *

![image267](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).beta\_dT
====================================================================================================================================================================================================

**isobaric expansion coefficient as function of density and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Density](Modelica_SIunits.html#M d           density [kg/m3]
  odelica.SIunits.Density)                      

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           phase 0     2 for two-phase, 1 for
                                                one-phase, 0 if not known

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  [RelativePressureCoefficient](Modelica_SIunits.h beta isobaric expansion
  tml#Modelica.SIunits.RelativePressureCoefficient      coefficient [1/K]
  )                                                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function beta_dT 
      "isobaric expansion coefficient as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Integer phase =  0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.RelativePressureCoefficient beta "isobaric expansion coefficient";
    algorithm 
      beta := beta_props_dT(d, T, waterBaseProp_dT(d, T, phase, region));
    end beta_dT;

* * * * *

![image268](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).kappa\_props\_dT
============================================================================================================================================================================================================

**isothermal compressibility factor as function of density and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d           density
  Density)                                                      [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [IsothermalCompressibility](Modelica_SIunits.h kapp isothermal
  tml#Modelica.SIunits.IsothermalCompressibility a    compressibility
  )                                                   factor [1/Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function kappa_props_dT 
      "isothermal compressibility factor as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.IsothermalCompressibility kappa "isothermal compressibility factor";
    algorithm 
      kappa := if aux.region == 3 or aux.region == 4 then 
        1/(aux.rho*aux.pd) else -aux.vp*aux.rho;
    end kappa_props_dT;

* * * * *

![image269](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).kappa\_dT
=====================================================================================================================================================================================================

**isothermal compressibility factor as function of density and
temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Density](Modelica_SIunits.html#M d           density [kg/m3]
  odelica.SIunits.Density)                      

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           phase 0     2 for two-phase, 1 for
                                                one-phase, 0 if not known

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [IsothermalCompressibility](Modelica_SIunits.h kapp isothermal
  tml#Modelica.SIunits.IsothermalCompressibility a    compressibility
  )                                                   factor [1/Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function kappa_dT 
      "isothermal compressibility factor as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Integer phase =  0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.IsothermalCompressibility kappa "isothermal compressibility factor";
    algorithm 
      kappa := kappa_props_dT(d, T, waterBaseProp_dT(d, T, phase, region));
    end kappa_dT;

* * * * *

![image270](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).velocityOfSound\_props\_dT
======================================================================================================================================================================================================================

**speed of sound as function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d           density
  Density)                                                      [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                          Name      Description
  --------------------------------------------- --------- -----------------
  [Velocity](Modelica_SIunits.html#Modelica.SIu v\_sound  speed of sound
  nits.Velocity)                                          [m/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function velocityOfSound_props_dT 
      "speed of sound as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.Velocity v_sound "speed of sound";
    algorithm 
      // dp/drho at constant s
      v_sound := if aux.region == 3 then sqrt(max(0,((aux.pd*aux.rho*aux.rho*aux.cv + aux.pt*aux.pt*aux.T)/(aux.rho*aux.rho*aux.cv)))) else 
        if aux.region == 4 then 
        sqrt(max(0,1/((aux.rho*(aux.rho*aux.cv/aux.dpT + 1.0)/(aux.dpT*aux.T)) - 1/aux.rho*aux.rho*aux.rho/(aux.dpT*aux.T)))) else 
             sqrt(max(0,-aux.cp/(aux.rho*aux.rho*(aux.vp*aux.cp+aux.vt*aux.vt*aux.T))));
    end velocityOfSound_props_dT;

* * * * *

![image271](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).velocityOfSound\_dT
===============================================================================================================================================================================================================

**speed of sound as function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Density](Modelica_SIunits.html#M d           density [kg/m3]
  odelica.SIunits.Density)                      

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           phase 0     2 for two-phase, 1 for
                                                one-phase, 0 if not known

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                          Name      Description
  --------------------------------------------- --------- -----------------
  [Velocity](Modelica_SIunits.html#Modelica.SIu v\_sound  speed of sound
  nits.Velocity)                                          [m/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function velocityOfSound_dT 
      "speed of sound as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Integer phase =  0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.Velocity v_sound "speed of sound";
    algorithm 
      v_sound := velocityOfSound_props_dT(d, T, waterBaseProp_dT(d, T, phase, region));
    end velocityOfSound_dT;

* * * * *

![image272](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).isentropicExponent\_props\_dT
=========================================================================================================================================================================================================================

**isentropic exponent as function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Name Defaul Description
                                                         t      
  ------------------------------------------------- ---- ------ -----------
  [Density](Modelica_SIunits.html#Modelica.SIunits. d           density
  Density)                                                      [kg/m3]

  [Temperature](Modelica_SIunits.html#Modelica.SIun T           temperature
  its.Temperature)                                              [K]

  [IF97BaseTwoPhase](Modelica_Media_Common.html#Mod aux         auxiliary
  elica.Media.Common.IF97BaseTwoPhase)                          record
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name       Description
  --------- ---------- ------------------------
  Real      gamma      isentropic exponent

Modelica definition
-------------------

    function isentropicExponent_props_dT 
      "isentropic exponent as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output Real gamma "isentropic exponent";
    algorithm 
      gamma := if aux.region == 3 then 1/(aux.rho*aux.p)*((aux.pd*aux.cv*aux.rho*aux.rho + aux.pt*aux.pt*aux.T)/(aux.cv)) else 
             if aux.region == 4 then 1/(aux.rho*aux.p)*aux.dpT*aux.dpT*aux.T/aux.cv else 
        -1/(aux.rho*aux.p)*aux.cp/(aux.vp*aux.cp + aux.vt*aux.vt*aux.T);
    end isentropicExponent_props_dT;

* * * * *

![image273](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).isentropicExponent\_dT
==================================================================================================================================================================================================================

**isentropic exponent as function of density and temperature**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                              Name  Defau Description
                                          lt    
  --------------------------------- ----- ----- ---------------------------
  [Density](Modelica_SIunits.html#M d           density [kg/m3]
  odelica.SIunits.Density)                      

  [Temperature](Modelica_SIunits.ht T           temperature [K]
  ml#Modelica.SIunits.Temperature)              

  Integer                           phase 0     2 for two-phase, 1 for
                                                one-phase, 0 if not known

  Integer                           regio 0     if 0, region is unknown,
                                    n           otherwise known and this
                                                input
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name       Description
  --------- ---------- ------------------------
  Real      gamma      isentropic exponent

Modelica definition
-------------------

    function isentropicExponent_dT 
      "isentropic exponent as function of density and temperature"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Integer phase =  0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region =  0 
        "if 0, region is unknown, otherwise known and this input";
      output Real gamma "isentropic exponent";
    algorithm 
      gamma := isentropicExponent_props_dT(d, T, waterBaseProp_dT(d, T, phase, region));
    end isentropicExponent_dT;

* * * * *

![image274](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).hl\_p
=================================================================================================================================================================================================

**compute the saturated liquid specific h(p)**

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

    function hl_p = BaseIF97.Regions.hl_p 
      "compute the saturated liquid specific h(p)";

* * * * *

![image275](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).hv\_p
=================================================================================================================================================================================================

**compute the saturated vapour specific h(p)**

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

    function hv_p = BaseIF97.Regions.hv_p 
      "compute the saturated vapour specific h(p)";

* * * * *

![image276](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).sl\_p
=================================================================================================================================================================================================

**compute the saturated liquid specific s(p)**

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

    function sl_p = BaseIF97.Regions.sl_p 
      "compute the saturated liquid specific s(p)";

* * * * *

![image277](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).sv\_p
=================================================================================================================================================================================================

**compute the saturated vapour specific s(p)**

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

    function sv_p = BaseIF97.Regions.sv_p 
      "compute the saturated vapour specific s(p)";

* * * * *

![image278](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rhol\_T
===================================================================================================================================================================================================

**compute the saturated liquid d(T)**

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

    function rhol_T = BaseIF97.Regions.rhol_T "compute the saturated liquid d(T)";

* * * * *

![image279](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rhov\_T
===================================================================================================================================================================================================

**compute the saturated vapour d(T)**

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

    function rhov_T = BaseIF97.Regions.rhov_T "compute the saturated vapour d(T)";

* * * * *

![image280](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rhol\_p
===================================================================================================================================================================================================

**compute the saturated liquid d(p)**

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

    function rhol_p = BaseIF97.Regions.rhol_p "compute the saturated liquid d(p)";

* * * * *

![image281](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).rhov\_p
===================================================================================================================================================================================================

**compute the saturated vapour d(p)**

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

    function rhov_p = BaseIF97.Regions.rhov_p "compute the saturated vapour d(p)";

* * * * *

![image282](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).dynamicViscosity
============================================================================================================================================================================================================

**compute eta(d,T) in the one-phase region**

Inputs
------

  ------------------------------------------------------------------------
  Type                               Name Defau Description
                                          lt    
  ---------------------------------- ---- ----- --------------------------
  [Density](Modelica_SIunits.html#Mo d          density [kg/m3]
  delica.SIunits.Density)                       

  [Temperature](Modelica_SIunits.htm T          temperature (K) [K]
  l#Modelica.SIunits.Temperature)               

  [Pressure](Modelica_SIunits.html#M p          pressure (only needed for
  odelica.SIunits.Pressure)                     region of validity) [Pa]

  Integer                            phas 0     2 for two-phase, 1 for
                                     e          one-phase, 0 if not known
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [DynamicViscosity](Modelica_SIunits.html#Modelica eta   dynamic viscosity
  .SIunits.DynamicViscosity)                              [Pa.s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dynamicViscosity = BaseIF97.Transport.visc_dTp 
      "compute eta(d,T) in the one-phase region";

* * * * *

![image283](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).thermalConductivity
===============================================================================================================================================================================================================

**compute lambda(d,T,p) in the one-phase region**

Inputs
------

  -------------------------------------------------------------------------
  Type                          Name     Defa Description
                                         ult  
  ----------------------------- -------- ---- -----------------------------
  [Density](Modelica_SIunits.ht d             density [kg/m3]
  ml#Modelica.SIunits.Density)                

  [Temperature](Modelica_SIunit T             temperature (K) [K]
  s.html#Modelica.SIunits.Tempe               
  rature)                                     

  [Pressure](Modelica_SIunits.h p             pressure [Pa]
  tml#Modelica.SIunits.Pressure               
  )                                           

  Integer                       phase    0    2 for two-phase, 1 for
                                              one-phase, 0 if not known

  Boolean                       industri true if true, the industrial
                                alMethod      method is used, otherwise the
                                              scientific one
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- ------------------
  [ThermalConductivity](Modelica_SIunits.html#Mod lambd thermal
  elica.SIunits.ThermalConductivity)              a     conductivity
                                                        [W/(m.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function thermalConductivity = BaseIF97.Transport.cond_dTp 
      "compute lambda(d,T,p) in the one-phase region";

* * * * *

![image284](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).surfaceTension
==========================================================================================================================================================================================================

**compute sigma(T) at saturation T**

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
  Type                                         Name  Description
  -------------------------------------------- ----- ---------------------
  [SurfaceTension](Modelica_SIunits.html#Model sigma surface tension in SI
  ica.SIunits.SurfaceTension)                        units [N/m]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function surfaceTension = BaseIF97.Transport.surfaceTension 
      "compute sigma(T) at saturation T";

* * * * *

![image285](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).isentropicEnthalpy
==============================================================================================================================================================================================================

**isentropic specific enthalpy from p,s (preferably use
dynamicIsentropicEnthalpy in dynamic simulation!)**

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

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known

  Integer                             regi 0     if 0, region is unknown,
                                      on         otherwise known and this
                                                 input
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

    function isentropicEnthalpy 
      "isentropic specific enthalpy from p,s (preferably use dynamicIsentropicEnthalpy in dynamic simulation!)"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      input Integer region = 0 
        "if 0, region is unknown, otherwise known and this input";
      output SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
      h := isentropicEnthalpy_props(p, s, waterBaseProp_ps(p, s, phase, region));
    end isentropicEnthalpy;

* * * * *

![image286](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).isentropicEnthalpy\_props
=====================================================================================================================================================================================================================

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name Defau Description
                                                     lt    
  --------------------------------------------- ---- ----- ---------------
  [Pressure](Modelica_SIunits.html#Modelica.SIu p          pressure [Pa]
  nits.Pressure)                                           

  [SpecificEntropy](Modelica_SIunits.html#Model s          specific
  ica.SIunits.SpecificEntropy)                             entropy
                                                           [J/(kg.K)]

  [IF97BaseTwoPhase](Modelica_Media_Common.html aux        auxiliary
  #Modelica.Media.Common.IF97BaseTwoPhase)                 record
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- ------------------
  [SpecificEnthalpy](Modelica_SIunits.html#Modelic h     isentropic
  a.SIunits.SpecificEnthalpy)                            enthalpay [J/kg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function isentropicEnthalpy_props
      annotation(derivative=isentropicEnthalpy_der);
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      output SI.SpecificEnthalpy h "isentropic enthalpay";
    algorithm 
      h := aux.h;
    end isentropicEnthalpy_props;

* * * * *

![image287](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).isentropicEnthalpy\_der
===================================================================================================================================================================================================================

**derivative of isentropic specific enthalpy from p,s**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Name  Defau Description
                                                      lt    
  --------------------------------------------- ----- ----- ---------------
  [Pressure](Modelica_SIunits.html#Modelica.SIu p           pressure [Pa]
  nits.Pressure)                                            

  [SpecificEntropy](Modelica_SIunits.html#Model s           specific
  ica.SIunits.SpecificEntropy)                              entropy
                                                            [J/(kg.K)]

  [IF97BaseTwoPhase](Modelica_Media_Common.html aux         auxiliary
  #Modelica.Media.Common.IF97BaseTwoPhase)                  record

  Real                                          p\_de       pressure
                                                r           derivative

  Real                                          s\_de       entropy
                                                r           derivative
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- ---------------------------------
  Real      h\_der      specific enthalpy derivative

Modelica definition
-------------------

    function isentropicEnthalpy_der 
      "derivative of isentropic specific enthalpy from p,s"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input Common.IF97BaseTwoPhase aux "auxiliary record";
      input Real p_der "pressure derivative";
      input Real s_der "entropy derivative";
      output Real h_der "specific enthalpy derivative";
    algorithm 
      h_der := 1/aux.rho*p_der + aux.T*s_der;
    end isentropicEnthalpy_der;

* * * * *

![image288](Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png) [Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).dynamicIsentropicEnthalpy
=====================================================================================================================================================================================================================

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

  Integer                             phas 0     2 for two-phase, 1 for
                                      e          one-phase, 0 if not known
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

    function dynamicIsentropicEnthalpy 
      "isentropic specific enthalpy from p,s and good guesses of d and T"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      input SI.Density dguess "good guess density, e.g., from adjacent volume";
      input SI.Temperature Tguess 
        "good guess temperature, e.g., from adjacent volume";
      input Integer phase = 0 "2 for two-phase, 1 for one-phase, 0 if not known";
      output SI.SpecificEnthalpy h "specific enthalpy";
    algorithm 
     h := BaseIF97.Isentropic.water_hisentropic_dyn(p,s,dguess,Tguess,0);
    end dynamicIsentropicEnthalpy;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:37 2010.
