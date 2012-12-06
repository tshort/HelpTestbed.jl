====================================
Modelica.Media.Water.IF97\_Utilities
====================================

`Modelica.Media.Water <Modelica_Media_Water.html#Modelica.Media.Water>`_.IF97\_Utilities
----------------------------------------------------------------------------------------

**Low level and utility computation for high accuracy water properties
according to the IAPWS/IF97 standard**

Information
~~~~~~~~~~~

::

Package description:
^^^^^^^^^^^^^^^^^^^^

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

-  IF97.pdf The standards document for the main part of the IF97.
-  Back3.pdf The backwards equations for region 3.
-  crits.pdf The critical point data.
-  meltsub.pdf The melting- and sublimation line formulation (in
   IF97\_Utilities.BaseIF97.IceBoundaries)
-  surf.pdf The surface tension standard definition
-  thcond.pdf The thermal conductivity standard definition
-  visc.pdf The viscosity standard definition

Package contents
^^^^^^^^^^^^^^^^

-  Package **BaseIF97** contains the implementation of the IAPWS-IF97 as
   described in IF97.pdf. The explicit backwards equations for region 3
   from Back3.pdf are implemented as initial values for an inverse
   iteration of the exact function in IF97 for the input pairs (p,h) and
   (p,s). The low-level functions in BaseIF97 are not needed for
   standard simulation usage, but can be useful for experts and some
   special purposes.
-  Function **water\_ph** returns all properties needed for a dynamic
   control volume model and properties of general interest using
   pressure p and specific entropy enthalpy h as dynamic states in the
   record ThermoProperties\_ph.
-  Function **water\_ps** returns all properties needed for a dynamic
   control volume model and properties of general interest using
   pressure p and specific entropy s as dynamic states in the record
   ThermoProperties\_ps.
-  Function **water\_dT** returns all properties needed for a dynamic
   control volume model and properties of general interest using density
   d and temperature T as dynamic states in the record
   ThermoProperties\_dT.
-  Function **water\_pT** returns all properties needed for a dynamic
   control volume model and properties of general interest using
   pressure p and temperature T as dynamic states in the record
   ThermoProperties\_pT. Due to the coupling of pressure and temperature
   in the two-phase region, this model can obviously only be used for
   one-phase models or models treating both phases independently.
-  Function **hl\_p** computes the liquid specific enthalpy as a
   function of pressure. For overcritical pressures, the critical
   specific enthalpy is returned
-  Function **hv\_p** computes the vapour specific enthalpy as a
   function of pressure. For overcritical pressures, the critical
   specific enthalpy is returned
-  Function **sl\_p** computes the liquid specific entropy as a function
   of pressure. For overcritical pressures, the critical specific
   entropy is returned
-  Function **sv\_p** computes the vapour specific entropy as a function
   of pressure. For overcritical pressures, the critical specific
   entropyis returned
-  Function **rhol\_T** computes the liquid density as a function of
   temperature. For overcritical temperatures, the critical density is
   returned
-  Function **rhol\_T** computes the vapour density as a function of
   temperature. For overcritical temperatures, the critical density is
   returned
-  Function **dynamicViscosity** computes the dynamic viscosity as a
   function of density and temperature.
-  Function **thermalConductivity** computes the thermal conductivity as
   a function of density, temperature and pressure. **Important note**:
   Obviously only two of the three inputs are really needed, but using
   three inputs speeds up the computation and the three variables are
   known in most models anyways. The inputs d,T and p have to be
   consistent.
-  Function **surfaceTension** computes the surface tension between
   vapour and liquid water as a function of temperature.
-  Function **isentropicEnthalpy** computes the specific enthalpy
   h(p,s,phase) in all regions. The phase input is needed due to
   discontinuous derivatives at the phase boundary.
-  Function **dynamicIsentropicEnthalpy** computes the specific enthalpy
   h(p,s,,dguess,Tguess,phase) in all regions. The phase input is needed
   due to discontinuous derivatives at the phase boundary. Tguess and
   dguess are initial guess values for the density and temperature
   consistent with p and s. This function should be preferred in dynamic
   simulations where good guesses are often available.

Version Info and Revision history
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-  First implemented: *July, 2000* by Hubertus Tummescheit for the
   ThermoFluid Library with help from Jonas Eborn and Falko Jens Wagner
-  Code reorganization, enhanced documentation, additional functions:
   *December, 2002* by `Hubertus
   Tummescheit <mailto:Hubertus.Tummescheit@modelon.se>`_ and moved to
   Modelica properties library.

Author: Hubertus Tummescheit,
 Modelon AB
 Ideon Science Park
 SE-22370 Lund, Sweden
 email: hubertus@modelon.se

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                               | Description                                                                                               |
+====================================================================================================================================================================================================================+===========================================================================================================+
| |image97| `BaseIF97 <Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97>`_                                                                                             | Modelica Physical Property Model: the new industrial formulation IAPWS-IF97                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image98| `iter <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.iter>`_                                                                                                              |                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image99| `waterBaseProp\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.waterBaseProp_ph>`_                                                                                     | intermediate property record for water                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image100| `waterBaseProp\_ps <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.waterBaseProp_ps>`_                                                                                    | intermediate property record for water                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image101| `rho\_props\_ps <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rho_props_ps>`_                                                                                           | density as function of pressure and specific entropy                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image102| `rho\_ps <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rho_ps>`_                                                                                                        | density as function of pressure and specific entropy                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image103| `T\_props\_ps <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.T_props_ps>`_                                                                                               | temperature as function of pressure and specific entropy                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image104| `T\_ps <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.T_ps>`_                                                                                                            | temperature as function of pressure and specific entropy                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image105| `h\_props\_ps <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.h_props_ps>`_                                                                                               | specific enthalpy as function or pressure and temperature                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image106| `h\_ps <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.h_ps>`_                                                                                                            | specific enthalpy as function or pressure and temperature                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image107| `phase\_ps <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.phase_ps>`_                                                                                                    | phase as a function of pressure and specific entropy                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image108| `phase\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.phase_ph>`_                                                                                                    | phase as a function of pressure and specific enthalpy                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image109| `phase\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.phase_dT>`_                                                                                                    | phase as a function of pressure and temperature                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image110| `rho\_props\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rho_props_ph>`_                                                                                           | density as function of pressure and specific enthalpy                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image111| `rho\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rho_ph>`_                                                                                                        | density as function of pressure and specific enthalpy                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image112| `rho\_ph\_der <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rho_ph_der>`_                                                                                               | derivative function of rho\_ph                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image113| `T\_props\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.T_props_ph>`_                                                                                               | temperature as function of pressure and specific enthalpy                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image114| `T\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.T_ph>`_                                                                                                            | temperature as function of pressure and specific enthalpy                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image115| `T\_ph\_der <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.T_ph_der>`_                                                                                                   | derivative function of T\_ph                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image116| `s\_props\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.s_props_ph>`_                                                                                               | specific entropy as function of pressure and specific enthalpy                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image117| `s\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.s_ph>`_                                                                                                            | specific entropy as function of pressure and specific enthalpy                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image118| `s\_ph\_der <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.s_ph_der>`_                                                                                                   | specific entropy as function of pressure and specific enthalpy                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image119| `cv\_props\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cv_props_ph>`_                                                                                             | specific heat capacity at constant volume as function of pressure and specific enthalpy                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image120| `cv\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cv_ph>`_                                                                                                          | specific heat capacity at constant volume as function of pressure and specific enthalpy                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image121| `regionAssertReal <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.regionAssertReal>`_                                                                                     | assert function for inlining                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image122| `cp\_props\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cp_props_ph>`_                                                                                             | specific heat capacity at constant pressure as function of pressure and specific enthalpy                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image123| `cp\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cp_ph>`_                                                                                                          | specific heat capacity at constant pressure as function of pressure and specific enthalpy                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image124| `beta\_props\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.beta_props_ph>`_                                                                                         | isobaric expansion coefficient as function of pressure and specific enthalpy                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image125| `beta\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.beta_ph>`_                                                                                                      | isobaric expansion coefficient as function of pressure and specific enthalpy                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image126| `kappa\_props\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.kappa_props_ph>`_                                                                                       | isothermal compressibility factor as function of pressure and specific enthalpy                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image127| `kappa\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.kappa_ph>`_                                                                                                    | isothermal compressibility factor as function of pressure and specific enthalpy                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image128| `velocityOfSound\_props\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.velocityOfSound_props_ph>`_                                                                   | speed of sound as function of pressure and specific enthalpy                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image129| `velocityOfSound\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.velocityOfSound_ph>`_                                                                                |                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image130| `isentropicExponent\_props\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.isentropicExponent_props_ph>`_                                                             | isentropic exponent as function of pressure and specific enthalpy                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image131| `isentropicExponent\_ph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.isentropicExponent_ph>`_                                                                          | isentropic exponent as function of pressure and specific enthalpy                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image132| `ddph\_props <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.ddph_props>`_                                                                                                | density derivative by pressure                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image133| `ddph <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.ddph>`_                                                                                                             | density derivative by pressure                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image134| `ddhp\_props <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.ddhp_props>`_                                                                                                | density derivative by specific enthalpy                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image135| `ddhp <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.ddhp>`_                                                                                                             | density derivative by specific enthalpy                                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image136| `waterBaseProp\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.waterBaseProp_pT>`_                                                                                    | intermediate property record for water (p and T prefered states)                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image137| `rho\_props\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rho_props_pT>`_                                                                                           | density as function or pressure and temperature                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image138| `rho\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rho_pT>`_                                                                                                        | density as function or pressure and temperature                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image139| `h\_props\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.h_props_pT>`_                                                                                               | specific enthalpy as function or pressure and temperature                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image140| `h\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.h_pT>`_                                                                                                            | specific enthalpy as function or pressure and temperature                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image141| `h\_pT\_der <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.h_pT_der>`_                                                                                                   | derivative function of h\_pT                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image142| `rho\_pT\_der <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rho_pT_der>`_                                                                                               | derivative function of rho\_pT                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image143| `s\_props\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.s_props_pT>`_                                                                                               | specific entropy as function of pressure and temperature                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image144| `s\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.s_pT>`_                                                                                                            | temperature as function of pressure and temperature                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image145| `cv\_props\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cv_props_pT>`_                                                                                             | specific heat capacity at constant volume as function of pressure and temperature                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image146| `cv\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cv_pT>`_                                                                                                          | specific heat capacity at constant volume as function of pressure and temperature                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image147| `cp\_props\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cp_props_pT>`_                                                                                             | specific heat capacity at constant pressure as function of pressure and temperature                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image148| `cp\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cp_pT>`_                                                                                                          | specific heat capacity at constant pressure as function of pressure and temperature                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image149| `beta\_props\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.beta_props_pT>`_                                                                                         | isobaric expansion coefficient as function of pressure and temperature                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image150| `beta\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.beta_pT>`_                                                                                                      | isobaric expansion coefficient as function of pressure and temperature                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image151| `kappa\_props\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.kappa_props_pT>`_                                                                                       | isothermal compressibility factor as function of pressure and temperature                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image152| `kappa\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.kappa_pT>`_                                                                                                    | isothermal compressibility factor as function of pressure and temperature                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image153| `velocityOfSound\_props\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.velocityOfSound_props_pT>`_                                                                   | speed of sound as function of pressure and temperature                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image154| `velocityOfSound\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.velocityOfSound_pT>`_                                                                                | speed of sound as function of pressure and temperature                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image155| `isentropicExponent\_props\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.isentropicExponent_props_pT>`_                                                             | isentropic exponent as function of pressure and temperature                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image156| `isentropicExponent\_pT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.isentropicExponent_pT>`_                                                                          | isentropic exponent as function of pressure and temperature                                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image157| `waterBaseProp\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.waterBaseProp_dT>`_                                                                                    | intermediate property record for water (d and T prefered states)                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image158| `h\_props\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.h_props_dT>`_                                                                                               | specific enthalpy as function of density and temperature                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image159| `h\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.h_dT>`_                                                                                                            | specific enthalpy as function of density and temperature                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image160| `h\_dT\_der <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.h_dT_der>`_                                                                                                   | derivative function of h\_dT                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image161| `p\_props\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.p_props_dT>`_                                                                                               | pressure as function of density and temperature                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image162| `p\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.p_dT>`_                                                                                                            | pressure as function of density and temperature                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image163| `p\_dT\_der <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.p_dT_der>`_                                                                                                   | derivative function of p\_dT                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image164| `s\_props\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.s_props_dT>`_                                                                                               | specific entropy as function of density and temperature                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image165| `s\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.s_dT>`_                                                                                                            | temperature as function of density and temperature                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image166| `cv\_props\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cv_props_dT>`_                                                                                             | specific heat capacity at constant volume as function of density and temperature                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image167| `cv\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cv_dT>`_                                                                                                          | specific heat capacity at constant volume as function of density and temperature                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image168| `cp\_props\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cp_props_dT>`_                                                                                             | specific heat capacity at constant pressure as function of density and temperature                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image169| `cp\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.cp_dT>`_                                                                                                          | specific heat capacity at constant pressure as function of density and temperature                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image170| `beta\_props\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.beta_props_dT>`_                                                                                         | isobaric expansion coefficient as function of density and temperature                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image171| `beta\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.beta_dT>`_                                                                                                      | isobaric expansion coefficient as function of density and temperature                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image172| `kappa\_props\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.kappa_props_dT>`_                                                                                       | isothermal compressibility factor as function of density and temperature                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image173| `kappa\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.kappa_dT>`_                                                                                                    | isothermal compressibility factor as function of density and temperature                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image174| `velocityOfSound\_props\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.velocityOfSound_props_dT>`_                                                                   | speed of sound as function of density and temperature                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image175| `velocityOfSound\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.velocityOfSound_dT>`_                                                                                | speed of sound as function of density and temperature                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image176| `isentropicExponent\_props\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.isentropicExponent_props_dT>`_                                                             | isentropic exponent as function of density and temperature                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image177| `isentropicExponent\_dT <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.isentropicExponent_dT>`_                                                                          | isentropic exponent as function of density and temperature                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image178| `ThermoFluidSpecial <Modelica_Media_Water_IF97_Utilities_ThermoFluidSpecial.html#Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecial>`_                                                              |                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image179| `hl\_p <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.hl_p>`_                                                                                                            | compute the saturated liquid specific h(p)                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image180| `hv\_p <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.hv_p>`_                                                                                                            | compute the saturated vapour specific h(p)                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image181| `sl\_p <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.sl_p>`_                                                                                                            | compute the saturated liquid specific s(p)                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image182| `sv\_p <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.sv_p>`_                                                                                                            | compute the saturated vapour specific s(p)                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image183| `rhol\_T <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rhol_T>`_                                                                                                        | compute the saturated liquid d(T)                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image184| `rhov\_T <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rhov_T>`_                                                                                                        | compute the saturated vapour d(T)                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image185| `rhol\_p <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rhol_p>`_                                                                                                        | compute the saturated liquid d(p)                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image186| `rhov\_p <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.rhov_p>`_                                                                                                        | compute the saturated vapour d(p)                                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image187| `dynamicViscosity <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.dynamicViscosity>`_                                                                                     | compute eta(d,T) in the one-phase region                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image188| `thermalConductivity <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.thermalConductivity>`_                                                                               | compute lambda(d,T,p) in the one-phase region                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image189| `surfaceTension <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.surfaceTension>`_                                                                                         | compute sigma(T) at saturation T                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image190| `isentropicEnthalpy <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.isentropicEnthalpy>`_                                                                                 | isentropic specific enthalpy from p,s (preferably use dynamicIsentropicEnthalpy in dynamic simulation!)   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image191| `isentropicEnthalpy\_props <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.isentropicEnthalpy_props>`_                                                                    |                                                                                                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image192| `isentropicEnthalpy\_der <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.isentropicEnthalpy_der>`_                                                                        | derivative of isentropic specific enthalpy from p,s                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image193| `dynamicIsentropicEnthalpy <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities.dynamicIsentropicEnthalpy>`_                                                                   | isentropic specific enthalpy from p,s and good guesses of d and T                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+

--------------

|image194| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.iter
--------------------------------------------------------------------------------------------------------------------------------------

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    replaceable record iter = BaseIF97.IterationData;

--------------

|image195| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.waterBaseProp\_ph
---------------------------------------------------------------------------------------------------------------------------------------------------

**intermediate property record for water**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                                              |
+=================================================================================+==========+===========+==========================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                                            |
+---------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                                 |
+---------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| Integer                                                                         | phase    | 0         | phase: 2 for two-phase, 1 for one phase, 0 if unknown                    |
+---------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, do region computation, otherwise assume the region is this input   |
+---------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------+--------+--------------------+
| Type                                                                                      | Name   | Description        |
+===========================================================================================+========+====================+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image196| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.waterBaseProp\_ps
---------------------------------------------------------------------------------------------------------------------------------------------------

**intermediate property record for water**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| Type                                                                          | Name     | Default   | Description                                                              |
+===============================================================================+==========+===========+==========================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                 | p        |           | pressure [Pa]                                                            |
+-------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s        |           | specific entropy [J/(kg.K)]                                              |
+-------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| Integer                                                                       | phase    | 0         | phase: 2 for two-phase, 1 for one phase, 0 if unknown                    |
+-------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| Integer                                                                       | region   | 0         | if 0, do region computation, otherwise assume the region is this input   |
+-------------------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------+--------+--------------------+
| Type                                                                                      | Name   | Description        |
+===========================================================================================+========+====================+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image197| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rho\_props\_ps
------------------------------------------------------------------------------------------------------------------------------------------------

**density as function of pressure and specific entropy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------------+-----------+-------------------------------+
| Type                                                                                      | Name         | Default   | Description                   |
+===========================================================================================+==============+===========+===============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p            |           | pressure [Pa]                 |
+-------------------------------------------------------------------------------------------+--------------+-----------+-------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_               | s            |           | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------------------+--------------+-----------+-------------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | properties   |           | auxiliary record              |
+-------------------------------------------------------------------------------------------+--------------+-----------+-------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+-------------------+
| Type                                                          | Name   | Description       |
+===============================================================+========+===================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | rho    | density [kg/m3]   |
+---------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image198| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rho\_ps
-----------------------------------------------------------------------------------------------------------------------------------------

**density as function of pressure and specific entropy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                          | Name     | Default   | Description                                               |
+===============================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                 | p        |           | pressure [Pa]                                             |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s        |           | specific entropy [J/(kg.K)]                               |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                       | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                       | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+-------------------+
| Type                                                          | Name   | Description       |
+===============================================================+========+===================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | rho    | density [kg/m3]   |
+---------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image199| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.T\_props\_ps
----------------------------------------------------------------------------------------------------------------------------------------------

**temperature as function of pressure and specific entropy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------------+-----------+-------------------------------+
| Type                                                                                      | Name         | Default   | Description                   |
+===========================================================================================+==============+===========+===============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p            |           | pressure [Pa]                 |
+-------------------------------------------------------------------------------------------+--------------+-----------+-------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_               | s            |           | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------------------+--------------+-----------+-------------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | properties   |           | auxiliary record              |
+-------------------------------------------------------------------------------------------+--------------+-----------+-------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+--------+-------------------+
| Type                                                                  | Name   | Description       |
+=======================================================================+========+===================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      | temperature [K]   |
+-----------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image200| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.T\_ps
---------------------------------------------------------------------------------------------------------------------------------------

**temperature as function of pressure and specific entropy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                          | Name     | Default   | Description                                               |
+===============================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                 | p        |           | pressure [Pa]                                             |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s        |           | specific entropy [J/(kg.K)]                               |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                       | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                       | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+--------+-------------------+
| Type                                                                  | Name   | Description       |
+=======================================================================+========+===================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      | Temperature [K]   |
+-----------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image201| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.h\_props\_ps
----------------------------------------------------------------------------------------------------------------------------------------------

**specific enthalpy as function or pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| Type                                                                                      | Name   | Default   | Description                   |
+===========================================================================================+========+===========+===============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]                 |
+-------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_               | s      |           | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record              |
+-------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image202| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.h\_ps
---------------------------------------------------------------------------------------------------------------------------------------

**specific enthalpy as function or pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                          | Name     | Default   | Description                                               |
+===============================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                 | p        |           | pressure [Pa]                                             |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s        |           | specific entropy [J/(kg.K)]                               |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                       | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                       | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image203| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.phase\_ps
-------------------------------------------------------------------------------------------------------------------------------------------

**phase as a function of pressure and specific entropy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| Type                                                                          | Name   | Default   | Description                   |
+===============================================================================+========+===========+===============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                 | p      |           | pressure [Pa]                 |
+-------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s      |           | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+-----------+-------------------------------+

Outputs
~~~~~~~

+-----------+---------+----------------------------------------------------+
| Type      | Name    | Description                                        |
+===========+=========+====================================================+
| Integer   | phase   | true if in liquid or gas or supercritical region   |
+-----------+---------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function phase_ps 
      "phase as a function of  pressure and specific entropy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEntropy s "specific entropy";
      output Integer phase "true if in liquid or gas or supercritical region";
    algorithm 
      phase := if ((s < sl_p(p) or s > sv_p(p)) or p > BaseIF97.data.PCRIT) then 1 else 2;
    end phase_ps;

--------------

|image204| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.phase\_ph
-------------------------------------------------------------------------------------------------------------------------------------------

**phase as a function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                            | Name   | Default   | Description                |
+=================================================================================+========+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p      |           | pressure [Pa]              |
+---------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      |           | specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+-----------+---------+----------------------------------------------------+
| Type      | Name    | Description                                        |
+===========+=========+====================================================+
| Integer   | phase   | true if in liquid or gas or supercritical region   |
+-----------+---------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function phase_ph 
      "phase as a function of  pressure and specific enthalpy"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      output Integer phase "true if in liquid or gas or supercritical region";
    algorithm 
      phase := if ((h < hl_p(p) or h > hv_p(p)) or p > BaseIF97.data.PCRIT) then 1 else 2;
    end phase_ph;

--------------

|image205| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.phase\_dT
-------------------------------------------------------------------------------------------------------------------------------------------

**phase as a function of pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                  | Name   | Default   | Description       |
+=======================================================================+========+===========+===================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | rho    |           | density [kg/m3]   |
+-----------------------------------------------------------------------+--------+-----------+-------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | temperature [K]   |
+-----------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-----------+---------+----------------------------------------------------+
| Type      | Name    | Description                                        |
+===========+=========+====================================================+
| Integer   | phase   | true if in liquid or gas or supercritical region   |
+-----------+---------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function phase_dT "phase as a function of  pressure and temperature"
      extends Modelica.Icons.Function;
      input SI.Density rho "density";
      input SI.Temperature T "temperature";
      output Integer phase "true if in liquid or gas or supercritical region";
    algorithm 
      phase := if not ((rho < rhol_T(T) and rho > rhov_T(T)) and T < BaseIF97.
        data.TCRIT) then 1 else 2;
    end phase_dT;

--------------

|image206| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rho\_props\_ph
------------------------------------------------------------------------------------------------------------------------------------------------

**density as function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+
| Type                                                                                      | Name         | Default   | Description                |
+===========================================================================================+==============+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p            |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h            |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | properties   |           | auxiliary record           |
+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+-------------------+
| Type                                                          | Name   | Description       |
+===============================================================+========+===================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | rho    | density [kg/m3]   |
+---------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image207| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rho\_ph
-----------------------------------------------------------------------------------------------------------------------------------------

**density as function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                               |
+=================================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                             |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                  |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+-------------------+
| Type                                                          | Name   | Description       |
+===============================================================+========+===================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | rho    | density [kg/m3]   |
+---------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image208| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rho\_ph\_der
----------------------------------------------------------------------------------------------------------------------------------------------

**derivative function of rho\_ph**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| Type                                                                                      | Name     | Default   | Description                       |
+===========================================================================================+==========+===========+===================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p        |           | pressure [Pa]                     |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h        |           | specific enthalpy [J/kg]          |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux      |           | auxiliary record                  |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| Real                                                                                      | p\_der   |           | derivative of pressure            |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| Real                                                                                      | h\_der   |           | derivative of specific enthalpy   |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+

Outputs
~~~~~~~

+--------+------------+-------------------------+
| Type   | Name       | Description             |
+========+============+=========================+
| Real   | rho\_der   | derivative of density   |
+--------+------------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image209| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.T\_props\_ph
----------------------------------------------------------------------------------------------------------------------------------------------

**temperature as function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+
| Type                                                                                      | Name         | Default   | Description                |
+===========================================================================================+==============+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p            |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h            |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | properties   |           | auxiliary record           |
+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+--------+-------------------+
| Type                                                                  | Name   | Description       |
+=======================================================================+========+===================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      | temperature [K]   |
+-----------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image210| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.T\_ph
---------------------------------------------------------------------------------------------------------------------------------------

**temperature as function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                               |
+=================================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                             |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                  |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+--------+-------------------+
| Type                                                                  | Name   | Description       |
+=======================================================================+========+===================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      | Temperature [K]   |
+-----------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image211| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.T\_ph\_der
--------------------------------------------------------------------------------------------------------------------------------------------

**derivative function of T\_ph**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| Type                                                                                      | Name     | Default   | Description                       |
+===========================================================================================+==========+===========+===================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p        |           | pressure [Pa]                     |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h        |           | specific enthalpy [J/kg]          |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux      |           | auxiliary record                  |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| Real                                                                                      | p\_der   |           | derivative of pressure            |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| Real                                                                                      | h\_der   |           | derivative of specific enthalpy   |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+

Outputs
~~~~~~~

+--------+----------+-----------------------------+
| Type   | Name     | Description                 |
+========+==========+=============================+
| Real   | T\_der   | derivative of temperature   |
+--------+----------+-----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image212| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.s\_props\_ph
----------------------------------------------------------------------------------------------------------------------------------------------

**specific entropy as function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+
| Type                                                                                      | Name         | Default   | Description                |
+===========================================================================================+==============+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p            |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h            |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | properties   |           | auxiliary record           |
+-------------------------------------------------------------------------------------------+--------------+-----------+----------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                          | Name   | Description                   |
+===============================================================================+========+===============================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s      | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image213| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.s\_ph
---------------------------------------------------------------------------------------------------------------------------------------

**specific entropy as function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                               |
+=================================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                             |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                  |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                          | Name   | Description                   |
+===============================================================================+========+===============================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s      | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image214| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.s\_ph\_der
--------------------------------------------------------------------------------------------------------------------------------------------

**specific entropy as function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| Type                                                                                      | Name     | Default   | Description                       |
+===========================================================================================+==========+===========+===================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p        |           | pressure [Pa]                     |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h        |           | specific enthalpy [J/kg]          |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux      |           | auxiliary record                  |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| Real                                                                                      | p\_der   |           | derivative of pressure            |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+
| Real                                                                                      | h\_der   |           | derivative of specific enthalpy   |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------+

Outputs
~~~~~~~

+--------+----------+-------------------------+
| Type   | Name     | Description             |
+========+==========+=========================+
| Real   | s\_der   | derivative of entropy   |
+--------+----------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image215| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cv\_props\_ph
-----------------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant volume as function of pressure and
specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                      | Name   | Default   | Description                |
+===========================================================================================+========+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h      |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record           |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cv     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image216| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cv\_ph
----------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant volume as function of pressure and
specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                               |
+=================================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                             |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                  |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cv     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image217| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.regionAssertReal
--------------------------------------------------------------------------------------------------------------------------------------------------

**assert function for inlining**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+---------+-----------+----------------------+
| Type      | Name    | Default   | Description          |
+===========+=========+===========+======================+
| Boolean   | check   |           | condition to check   |
+-----------+---------+-----------+----------------------+

Outputs
~~~~~~~

+--------+---------+----------------+
| Type   | Name    | Description    |
+========+=========+================+
| Real   | dummy   | dummy output   |
+--------+---------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function regionAssertReal "assert function for inlining"
      extends Modelica.Icons.Function;
      input Boolean check "condition to check";
      output Real dummy "dummy output";
    algorithm 
      assert(check, "this function can not be called with two-phase inputs!");
    end regionAssertReal;

--------------

|image218| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cp\_props\_ph
-----------------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant pressure as function of pressure
and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                      | Name   | Default   | Description                |
+===========================================================================================+========+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h      |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record           |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image219| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cp\_ph
----------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant pressure as function of pressure
and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                               |
+=================================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                             |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                  |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image220| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.beta\_props\_ph
-------------------------------------------------------------------------------------------------------------------------------------------------

**isobaric expansion coefficient as function of pressure and specific
enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                      | Name   | Default   | Description                |
+===========================================================================================+========+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h      |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record           |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                  | Name   | Description                            |
+=======================================================================================================+========+========================================+
| `RelativePressureCoefficient <Modelica_SIunits.html#Modelica.SIunits.RelativePressureCoefficient>`_   | beta   | isobaric expansion coefficient [1/K]   |
+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image221| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.beta\_ph
------------------------------------------------------------------------------------------------------------------------------------------

**isobaric expansion coefficient as function of pressure and specific
enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                               |
+=================================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                             |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                  |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                  | Name   | Description                            |
+=======================================================================================================+========+========================================+
| `RelativePressureCoefficient <Modelica_SIunits.html#Modelica.SIunits.RelativePressureCoefficient>`_   | beta   | isobaric expansion coefficient [1/K]   |
+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image222| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.kappa\_props\_ph
--------------------------------------------------------------------------------------------------------------------------------------------------

**isothermal compressibility factor as function of pressure and specific
enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                      | Name   | Default   | Description                |
+===========================================================================================+========+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h      |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record           |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+
| Type                                                                                              | Name    | Description                                |
+===================================================================================================+=========+============================================+
| `IsothermalCompressibility <Modelica_SIunits.html#Modelica.SIunits.IsothermalCompressibility>`_   | kappa   | isothermal compressibility factor [1/Pa]   |
+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image223| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.kappa\_ph
-------------------------------------------------------------------------------------------------------------------------------------------

**isothermal compressibility factor as function of pressure and specific
enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                               |
+=================================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                             |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                  |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+
| Type                                                                                              | Name    | Description                                |
+===================================================================================================+=========+============================================+
| `IsothermalCompressibility <Modelica_SIunits.html#Modelica.SIunits.IsothermalCompressibility>`_   | kappa   | isothermal compressibility factor [1/Pa]   |
+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image224| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.velocityOfSound\_props\_ph
------------------------------------------------------------------------------------------------------------------------------------------------------------

**speed of sound as function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                      | Name   | Default   | Description                |
+===========================================================================================+========+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h      |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record           |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+------------+------------------------+
| Type                                                            | Name       | Description            |
+=================================================================+============+========================+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | v\_sound   | speed of sound [m/s]   |
+-----------------------------------------------------------------+------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image225| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.velocityOfSound\_ph
-----------------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                               |
+=================================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                             |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                  |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+------------+------------------------+
| Type                                                            | Name       | Description            |
+=================================================================+============+========================+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | v\_sound   | speed of sound [m/s]   |
+-----------------------------------------------------------------+------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image226| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.isentropicExponent\_props\_ph
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**isentropic exponent as function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                      | Name   | Default   | Description                |
+===========================================================================================+========+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h      |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record           |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+--------+---------+-----------------------+
| Type   | Name    | Description           |
+========+=========+=======================+
| Real   | gamma   | isentropic exponent   |
+--------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image227| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.isentropicExponent\_ph
--------------------------------------------------------------------------------------------------------------------------------------------------------

**isentropic exponent as function of pressure and specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                               |
+=================================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                             |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                  |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+--------+---------+-----------------------+
| Type   | Name    | Description           |
+========+=========+=======================+
| Real   | gamma   | isentropic exponent   |
+--------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image228| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.ddph\_props
---------------------------------------------------------------------------------------------------------------------------------------------

**density derivative by pressure**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                      | Name   | Default   | Description                |
+===========================================================================================+========+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h      |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record           |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+------------------------------------------+
| Type                                                                                    | Name   | Description                              |
+=========================================================================================+========+==========================================+
| `DerDensityByPressure <Modelica_SIunits.html#Modelica.SIunits.DerDensityByPressure>`_   | ddph   | density derivative by pressure [s2/m2]   |
+-----------------------------------------------------------------------------------------+--------+------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image229| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.ddph
--------------------------------------------------------------------------------------------------------------------------------------

**density derivative by pressure**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                               |
+=================================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                             |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                  |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+------------------------------------------+
| Type                                                                                    | Name   | Description                              |
+=========================================================================================+========+==========================================+
| `DerDensityByPressure <Modelica_SIunits.html#Modelica.SIunits.DerDensityByPressure>`_   | ddph   | density derivative by pressure [s2/m2]   |
+-----------------------------------------------------------------------------------------+--------+------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image230| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.ddhp\_props
---------------------------------------------------------------------------------------------------------------------------------------------

**density derivative by specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                                      | Name   | Default   | Description                |
+===========================================================================================+========+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]              |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_             | h      |           | specific enthalpy [J/kg]   |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record           |
+-------------------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+------------------------------------------------------+
| Type                                                                                    | Name   | Description                                          |
+=========================================================================================+========+======================================================+
| `DerDensityByEnthalpy <Modelica_SIunits.html#Modelica.SIunits.DerDensityByEnthalpy>`_   | ddhp   | density derivative by specific enthalpy [kg.s2/m5]   |
+-----------------------------------------------------------------------------------------+--------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image231| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.ddhp
--------------------------------------------------------------------------------------------------------------------------------------

**density derivative by specific enthalpy**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                            | Name     | Default   | Description                                               |
+=================================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p        |           | pressure [Pa]                                             |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h        |           | specific enthalpy [J/kg]                                  |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                         | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+---------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+------------------------------------------------------+
| Type                                                                                    | Name   | Description                                          |
+=========================================================================================+========+======================================================+
| `DerDensityByEnthalpy <Modelica_SIunits.html#Modelica.SIunits.DerDensityByEnthalpy>`_   | ddhp   | density derivative by specific enthalpy [kg.s2/m5]   |
+-----------------------------------------------------------------------------------------+--------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image232| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.waterBaseProp\_pT
---------------------------------------------------------------------------------------------------------------------------------------------------

**intermediate property record for water (p and T prefered states)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                                              |
+=======================================================================+==========+===========+==========================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p        |           | pressure [Pa]                                                            |
+-----------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                                          |
+-----------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, do region computation, otherwise assume the region is this input   |
+-----------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------+--------+--------------------+
| Type                                                                                      | Name   | Description        |
+===========================================================================================+========+====================+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image233| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rho\_props\_pT
------------------------------------------------------------------------------------------------------------------------------------------------

**density as function or pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]      |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+-------------------+
| Type                                                          | Name   | Description       |
+===============================================================+========+===================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | rho    | density [kg/m3]   |
+---------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image234| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rho\_pT
-----------------------------------------------------------------------------------------------------------------------------------------

**density as function or pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p        |           | pressure [Pa]                                             |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+-------------------+
| Type                                                          | Name   | Description       |
+===============================================================+========+===================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | rho    | density [kg/m3]   |
+---------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image235| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.h\_props\_pT
----------------------------------------------------------------------------------------------------------------------------------------------

**specific enthalpy as function or pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]      |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image236| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.h\_pT
---------------------------------------------------------------------------------------------------------------------------------------

**specific enthalpy as function or pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p        |           | pressure [Pa]                                             |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | Temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image237| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.h\_pT\_der
--------------------------------------------------------------------------------------------------------------------------------------------

**derivative function of h\_pT**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Type                                                                                      | Name     | Default   | Description                 |
+===========================================================================================+==========+===========+=============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p        |           | pressure [Pa]               |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T        |           | temperature [K]             |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux      |           | auxiliary record            |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Real                                                                                      | p\_der   |           | derivative of pressure      |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Real                                                                                      | T\_der   |           | derivative of temperature   |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+

Outputs
~~~~~~~

+--------+----------+-----------------------------------+
| Type   | Name     | Description                       |
+========+==========+===================================+
| Real   | h\_der   | derivative of specific enthalpy   |
+--------+----------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image238| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rho\_pT\_der
----------------------------------------------------------------------------------------------------------------------------------------------

**derivative function of rho\_pT**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Type                                                                                      | Name     | Default   | Description                 |
+===========================================================================================+==========+===========+=============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p        |           | pressure [Pa]               |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T        |           | temperature [K]             |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux      |           | auxiliary record            |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Real                                                                                      | p\_der   |           | derivative of pressure      |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Real                                                                                      | T\_der   |           | derivative of temperature   |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+

Outputs
~~~~~~~

+--------+------------+-------------------------+
| Type   | Name       | Description             |
+========+============+=========================+
| Real   | rho\_der   | derivative of density   |
+--------+------------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image239| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.s\_props\_pT
----------------------------------------------------------------------------------------------------------------------------------------------

**specific entropy as function of pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]      |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                          | Name   | Description                   |
+===============================================================================+========+===============================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s      | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image240| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.s\_pT
---------------------------------------------------------------------------------------------------------------------------------------

**temperature as function of pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p        |           | pressure [Pa]                                             |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                          | Name   | Description                   |
+===============================================================================+========+===============================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s      | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image241| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cv\_props\_pT
-----------------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant volume as function of pressure and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]      |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cv     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image242| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cv\_pT
----------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant volume as function of pressure and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p        |           | pressure [Pa]                                             |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cv     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image243| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cp\_props\_pT
-----------------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant pressure as function of pressure
and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]      |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image244| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cp\_pT
----------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant pressure as function of pressure
and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p        |           | pressure [Pa]                                             |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image245| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.beta\_props\_pT
-------------------------------------------------------------------------------------------------------------------------------------------------

**isobaric expansion coefficient as function of pressure and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]      |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                  | Name   | Description                            |
+=======================================================================================================+========+========================================+
| `RelativePressureCoefficient <Modelica_SIunits.html#Modelica.SIunits.RelativePressureCoefficient>`_   | beta   | isobaric expansion coefficient [1/K]   |
+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image246| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.beta\_pT
------------------------------------------------------------------------------------------------------------------------------------------

**isobaric expansion coefficient as function of pressure and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p        |           | pressure [Pa]                                             |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                  | Name   | Description                            |
+=======================================================================================================+========+========================================+
| `RelativePressureCoefficient <Modelica_SIunits.html#Modelica.SIunits.RelativePressureCoefficient>`_   | beta   | isobaric expansion coefficient [1/K]   |
+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image247| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.kappa\_props\_pT
--------------------------------------------------------------------------------------------------------------------------------------------------

**isothermal compressibility factor as function of pressure and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]      |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+
| Type                                                                                              | Name    | Description                                |
+===================================================================================================+=========+============================================+
| `IsothermalCompressibility <Modelica_SIunits.html#Modelica.SIunits.IsothermalCompressibility>`_   | kappa   | isothermal compressibility factor [1/Pa]   |
+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image248| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.kappa\_pT
-------------------------------------------------------------------------------------------------------------------------------------------

**isothermal compressibility factor as function of pressure and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p        |           | pressure [Pa]                                             |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+
| Type                                                                                              | Name    | Description                                |
+===================================================================================================+=========+============================================+
| `IsothermalCompressibility <Modelica_SIunits.html#Modelica.SIunits.IsothermalCompressibility>`_   | kappa   | isothermal compressibility factor [1/Pa]   |
+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image249| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.velocityOfSound\_props\_pT
------------------------------------------------------------------------------------------------------------------------------------------------------------

**speed of sound as function of pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]      |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+------------+------------------------+
| Type                                                            | Name       | Description            |
+=================================================================+============+========================+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | v\_sound   | speed of sound [m/s]   |
+-----------------------------------------------------------------+------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image250| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.velocityOfSound\_pT
-----------------------------------------------------------------------------------------------------------------------------------------------------

**speed of sound as function of pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p        |           | pressure [Pa]                                             |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+------------+------------------------+
| Type                                                            | Name       | Description            |
+=================================================================+============+========================+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | v\_sound   | speed of sound [m/s]   |
+-----------------------------------------------------------------+------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image251| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.isentropicExponent\_props\_pT
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**isentropic exponent as function of pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]      |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+--------+---------+-----------------------+
| Type   | Name    | Description           |
+========+=========+=======================+
| Real   | gamma   | isentropic exponent   |
+--------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image252| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.isentropicExponent\_pT
--------------------------------------------------------------------------------------------------------------------------------------------------------

**isentropic exponent as function of pressure and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p        |           | pressure [Pa]                                             |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+--------+---------+-----------------------+
| Type   | Name    | Description           |
+========+=========+=======================+
| Real   | gamma   | isentropic exponent   |
+--------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image253| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.waterBaseProp\_dT
---------------------------------------------------------------------------------------------------------------------------------------------------

**intermediate property record for water (d and T prefered states)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                                              |
+=======================================================================+==========+===========+==========================================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | rho      |           | density [kg/m3]                                                          |
+-----------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                                          |
+-----------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| Integer                                                               | phase    | 0         | phase: 2 for two-phase, 1 for one phase, 0 if unknown                    |
+-----------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, do region computation, otherwise assume the region is this input   |
+-----------------------------------------------------------------------+----------+-----------+--------------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------+--------+--------------------+
| Type                                                                                      | Name   | Description        |
+===========================================================================================+========+====================+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image254| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.h\_props\_dT
----------------------------------------------------------------------------------------------------------------------------------------------

**specific enthalpy as function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                               | d      |           | density [kg/m3]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | Temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image255| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.h\_dT
---------------------------------------------------------------------------------------------------------------------------------------

**specific enthalpy as function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d        |           | density [kg/m3]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | Temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image256| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.h\_dT\_der
--------------------------------------------------------------------------------------------------------------------------------------------

**derivative function of h\_dT**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Type                                                                                      | Name     | Default   | Description                 |
+===========================================================================================+==========+===========+=============================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                               | d        |           | density [kg/m3]             |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T        |           | temperature [K]             |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux      |           | auxiliary record            |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Real                                                                                      | d\_der   |           | derivative of density       |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Real                                                                                      | T\_der   |           | derivative of temperature   |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+

Outputs
~~~~~~~

+--------+----------+-----------------------------------+
| Type   | Name     | Description                       |
+========+==========+===================================+
| Real   | h\_der   | derivative of specific enthalpy   |
+--------+----------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image257| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.p\_props\_dT
----------------------------------------------------------------------------------------------------------------------------------------------

**pressure as function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                               | d      |           | density [kg/m3]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | Temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+-----------------+
| Type                                                            | Name   | Description     |
+=================================================================+========+=================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | p      | pressure [Pa]   |
+-----------------------------------------------------------------+--------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image258| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.p\_dT
---------------------------------------------------------------------------------------------------------------------------------------

**pressure as function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d        |           | density [kg/m3]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | Temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+-----------------+
| Type                                                            | Name   | Description     |
+=================================================================+========+=================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | p      | pressure [Pa]   |
+-----------------------------------------------------------------+--------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image259| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.p\_dT\_der
--------------------------------------------------------------------------------------------------------------------------------------------

**derivative function of p\_dT**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Type                                                                                      | Name     | Default   | Description                 |
+===========================================================================================+==========+===========+=============================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                               | d        |           | density [kg/m3]             |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T        |           | temperature [K]             |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux      |           | auxiliary record            |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Real                                                                                      | d\_der   |           | derivative of density       |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+
| Real                                                                                      | T\_der   |           | derivative of temperature   |
+-------------------------------------------------------------------------------------------+----------+-----------+-----------------------------+

Outputs
~~~~~~~

+--------+----------+--------------------------+
| Type   | Name     | Description              |
+========+==========+==========================+
| Real   | p\_der   | derivative of pressure   |
+--------+----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image260| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.s\_props\_dT
----------------------------------------------------------------------------------------------------------------------------------------------

**specific entropy as function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                               | d      |           | density [kg/m3]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | Temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                          | Name   | Description                   |
+===============================================================================+========+===============================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s      | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image261| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.s\_dT
---------------------------------------------------------------------------------------------------------------------------------------

**temperature as function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d        |           | density [kg/m3]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | Temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                          | Name   | Description                   |
+===============================================================================+========+===============================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s      | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image262| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cv\_props\_dT
-----------------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant volume as function of density and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                               | d      |           | density [kg/m3]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cv     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image263| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cv\_dT
----------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant volume as function of density and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d        |           | density [kg/m3]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cv     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image264| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cp\_props\_dT
-----------------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant pressure as function of density and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                               | d      |           | density [kg/m3]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image265| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.cp\_dT
----------------------------------------------------------------------------------------------------------------------------------------

**specific heat capacity at constant pressure as function of density and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d        |           | density [kg/m3]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                    | Name   | Description                         |
+=========================================================================================+========+=====================================+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp     | specific heat capacity [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image266| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.beta\_props\_dT
-------------------------------------------------------------------------------------------------------------------------------------------------

**isobaric expansion coefficient as function of density and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                               | d      |           | density [kg/m3]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                  | Name   | Description                            |
+=======================================================================================================+========+========================================+
| `RelativePressureCoefficient <Modelica_SIunits.html#Modelica.SIunits.RelativePressureCoefficient>`_   | beta   | isobaric expansion coefficient [1/K]   |
+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image267| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.beta\_dT
------------------------------------------------------------------------------------------------------------------------------------------

**isobaric expansion coefficient as function of density and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d        |           | density [kg/m3]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                  | Name   | Description                            |
+=======================================================================================================+========+========================================+
| `RelativePressureCoefficient <Modelica_SIunits.html#Modelica.SIunits.RelativePressureCoefficient>`_   | beta   | isobaric expansion coefficient [1/K]   |
+-------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image268| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.kappa\_props\_dT
--------------------------------------------------------------------------------------------------------------------------------------------------

**isothermal compressibility factor as function of density and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                               | d      |           | density [kg/m3]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+
| Type                                                                                              | Name    | Description                                |
+===================================================================================================+=========+============================================+
| `IsothermalCompressibility <Modelica_SIunits.html#Modelica.SIunits.IsothermalCompressibility>`_   | kappa   | isothermal compressibility factor [1/Pa]   |
+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image269| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.kappa\_dT
-------------------------------------------------------------------------------------------------------------------------------------------

**isothermal compressibility factor as function of density and
temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d        |           | density [kg/m3]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+
| Type                                                                                              | Name    | Description                                |
+===================================================================================================+=========+============================================+
| `IsothermalCompressibility <Modelica_SIunits.html#Modelica.SIunits.IsothermalCompressibility>`_   | kappa   | isothermal compressibility factor [1/Pa]   |
+---------------------------------------------------------------------------------------------------+---------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image270| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.velocityOfSound\_props\_dT
------------------------------------------------------------------------------------------------------------------------------------------------------------

**speed of sound as function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                               | d      |           | density [kg/m3]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+------------+------------------------+
| Type                                                            | Name       | Description            |
+=================================================================+============+========================+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | v\_sound   | speed of sound [m/s]   |
+-----------------------------------------------------------------+------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image271| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.velocityOfSound\_dT
-----------------------------------------------------------------------------------------------------------------------------------------------------

**speed of sound as function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d        |           | density [kg/m3]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+------------+------------------------+
| Type                                                            | Name       | Description            |
+=================================================================+============+========================+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | v\_sound   | speed of sound [m/s]   |
+-----------------------------------------------------------------+------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image272| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.isentropicExponent\_props\_dT
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**isentropic exponent as function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                      | Name   | Default   | Description        |
+===========================================================================================+========+===========+====================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                               | d      |           | density [kg/m3]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                       | T      |           | temperature [K]    |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record   |
+-------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+--------+---------+-----------------------+
| Type   | Name    | Description           |
+========+=========+=======================+
| Real   | gamma   | isentropic exponent   |
+--------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image273| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.isentropicExponent\_dT
--------------------------------------------------------------------------------------------------------------------------------------------------------

**isentropic exponent as function of density and temperature**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                  | Name     | Default   | Description                                               |
+=======================================================================+==========+===========+===========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d        |           | density [kg/m3]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T        |           | temperature [K]                                           |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                               | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-----------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+--------+---------+-----------------------+
| Type   | Name    | Description           |
+========+=========+=======================+
| Real   | gamma   | isentropic exponent   |
+--------+---------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image274| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.hl\_p
---------------------------------------------------------------------------------------------------------------------------------------

**compute the saturated liquid specific h(p)**

Inputs
~~~~~~

+-----------------------------------------------------------------+--------+-----------+-----------------+
| Type                                                            | Name   | Default   | Description     |
+=================================================================+========+===========+=================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | p      |           | pressure [Pa]   |
+-----------------------------------------------------------------+--------+-----------+-----------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function hl_p = BaseIF97.Regions.hl_p 
      "compute the saturated liquid specific h(p)";

--------------

|image275| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.hv\_p
---------------------------------------------------------------------------------------------------------------------------------------

**compute the saturated vapour specific h(p)**

Inputs
~~~~~~

+-----------------------------------------------------------------+--------+-----------+-----------------+
| Type                                                            | Name   | Default   | Description     |
+=================================================================+========+===========+=================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | p      |           | pressure [Pa]   |
+-----------------------------------------------------------------+--------+-----------+-----------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function hv_p = BaseIF97.Regions.hv_p 
      "compute the saturated vapour specific h(p)";

--------------

|image276| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.sl\_p
---------------------------------------------------------------------------------------------------------------------------------------

**compute the saturated liquid specific s(p)**

Inputs
~~~~~~

+-----------------------------------------------------------------+--------+-----------+-----------------+
| Type                                                            | Name   | Default   | Description     |
+=================================================================+========+===========+=================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | p      |           | pressure [Pa]   |
+-----------------------------------------------------------------+--------+-----------+-----------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                          | Name   | Description                   |
+===============================================================================+========+===============================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s      | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function sl_p = BaseIF97.Regions.sl_p 
      "compute the saturated liquid specific s(p)";

--------------

|image277| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.sv\_p
---------------------------------------------------------------------------------------------------------------------------------------

**compute the saturated vapour specific s(p)**

Inputs
~~~~~~

+-----------------------------------------------------------------+--------+-----------+-----------------+
| Type                                                            | Name   | Default   | Description     |
+=================================================================+========+===========+=================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | p      |           | pressure [Pa]   |
+-----------------------------------------------------------------+--------+-----------+-----------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                          | Name   | Description                   |
+===============================================================================+========+===============================+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s      | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function sv_p = BaseIF97.Regions.sv_p 
      "compute the saturated vapour specific s(p)";

--------------

|image278| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rhol\_T
-----------------------------------------------------------------------------------------------------------------------------------------

**compute the saturated liquid d(T)**

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                  | Name   | Default   | Description       |
+=======================================================================+========+===========+===================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | temperature [K]   |
+-----------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+-------------------------------------------------+
| Type                                                          | Name   | Description                                     |
+===============================================================+========+=================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | d      | density of water at the boiling point [kg/m3]   |
+---------------------------------------------------------------+--------+-------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function rhol_T = BaseIF97.Regions.rhol_T "compute the saturated liquid d(T)";

--------------

|image279| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rhov\_T
-----------------------------------------------------------------------------------------------------------------------------------------

**compute the saturated vapour d(T)**

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                  | Name   | Default   | Description       |
+=======================================================================+========+===========+===================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | temperature [K]   |
+-----------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+------------------------------------------------------+
| Type                                                          | Name   | Description                                          |
+===============================================================+========+======================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | d      | density of steam at the condensation point [kg/m3]   |
+---------------------------------------------------------------+--------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function rhov_T = BaseIF97.Regions.rhov_T "compute the saturated vapour d(T)";

--------------

|image280| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rhol\_p
-----------------------------------------------------------------------------------------------------------------------------------------

**compute the saturated liquid d(p)**

Inputs
~~~~~~

+-----------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                            | Name   | Default   | Description                |
+=================================================================+========+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | p      |           | saturation pressure [Pa]   |
+-----------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+------------------------------------------------------+
| Type                                                          | Name   | Description                                          |
+===============================================================+========+======================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | rho    | density of steam at the condensation point [kg/m3]   |
+---------------------------------------------------------------+--------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function rhol_p = BaseIF97.Regions.rhol_p "compute the saturated liquid d(p)";

--------------

|image281| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.rhov\_p
-----------------------------------------------------------------------------------------------------------------------------------------

**compute the saturated vapour d(p)**

Inputs
~~~~~~

+-----------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                            | Name   | Default   | Description                |
+=================================================================+========+===========+============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | p      |           | saturation pressure [Pa]   |
+-----------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+--------+------------------------------------------------------+
| Type                                                          | Name   | Description                                          |
+===============================================================+========+======================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | rho    | density of steam at the condensation point [kg/m3]   |
+---------------------------------------------------------------+--------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function rhov_p = BaseIF97.Regions.rhov_p "compute the saturated vapour d(p)";

--------------

|image282| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.dynamicViscosity
--------------------------------------------------------------------------------------------------------------------------------------------------

**compute eta(d,T) in the one-phase region**

Inputs
~~~~~~

+-----------------------------------------------------------------------+---------+-----------+------------------------------------------------------+
| Type                                                                  | Name    | Default   | Description                                          |
+=======================================================================+=========+===========+======================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d       |           | density [kg/m3]                                      |
+-----------------------------------------------------------------------+---------+-----------+------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T       |           | temperature (K) [K]                                  |
+-----------------------------------------------------------------------+---------+-----------+------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p       |           | pressure (only needed for region of validity) [Pa]   |
+-----------------------------------------------------------------------+---------+-----------+------------------------------------------------------+
| Integer                                                               | phase   | 0         | 2 for two-phase, 1 for one-phase, 0 if not known     |
+-----------------------------------------------------------------------+---------+-----------+------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | eta    | dynamic viscosity [Pa.s]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dynamicViscosity = BaseIF97.Transport.visc_dTp 
      "compute eta(d,T) in the one-phase region";

--------------

|image283| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.thermalConductivity
-----------------------------------------------------------------------------------------------------------------------------------------------------

**compute lambda(d,T,p) in the one-phase region**

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------------------+-----------+------------------------------------------------------------------------+
| Type                                                                  | Name               | Default   | Description                                                            |
+=======================================================================+====================+===========+========================================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d                  |           | density [kg/m3]                                                        |
+-----------------------------------------------------------------------+--------------------+-----------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T                  |           | temperature (K) [K]                                                    |
+-----------------------------------------------------------------------+--------------------+-----------+------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p                  |           | pressure [Pa]                                                          |
+-----------------------------------------------------------------------+--------------------+-----------+------------------------------------------------------------------------+
| Integer                                                               | phase              | 0         | 2 for two-phase, 1 for one-phase, 0 if not known                       |
+-----------------------------------------------------------------------+--------------------+-----------+------------------------------------------------------------------------+
| Boolean                                                               | industrialMethod   | true      | if true, the industrial method is used, otherwise the scientific one   |
+-----------------------------------------------------------------------+--------------------+-----------+------------------------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------+----------+----------------------------------+
| Type                                                                                  | Name     | Description                      |
+=======================================================================================+==========+==================================+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_   | lambda   | thermal conductivity [W/(m.K)]   |
+---------------------------------------------------------------------------------------+----------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function thermalConductivity = BaseIF97.Transport.cond_dTp 
      "compute lambda(d,T,p) in the one-phase region";

--------------

|image284| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.surfaceTension
------------------------------------------------------------------------------------------------------------------------------------------------

**compute sigma(T) at saturation T**

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                                  | Name   | Default   | Description           |
+=======================================================================+========+===========+=======================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | temperature (K) [K]   |
+-----------------------------------------------------------------------+--------+-----------+-----------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------+---------+-------------------------------------+
| Type                                                                        | Name    | Description                         |
+=============================================================================+=========+=====================================+
| `SurfaceTension <Modelica_SIunits.html#Modelica.SIunits.SurfaceTension>`_   | sigma   | surface tension in SI units [N/m]   |
+-----------------------------------------------------------------------------+---------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function surfaceTension = BaseIF97.Transport.surfaceTension 
      "compute sigma(T) at saturation T";

--------------

|image285| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.isentropicEnthalpy
----------------------------------------------------------------------------------------------------------------------------------------------------

**isentropic specific enthalpy from p,s (preferably use
dynamicIsentropicEnthalpy in dynamic simulation!)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Type                                                                          | Name     | Default   | Description                                               |
+===============================================================================+==========+===========+===========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                 | p        |           | pressure [Pa]                                             |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s        |           | specific entropy [J/(kg.K)]                               |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                       | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known          |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+
| Integer                                                                       | region   | 0         | if 0, region is unknown, otherwise known and this input   |
+-------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image286| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.isentropicEnthalpy\_props
-----------------------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| Type                                                                                      | Name   | Default   | Description                   |
+===========================================================================================+========+===========+===============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p      |           | pressure [Pa]                 |
+-------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_               | s      |           | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux    |           | auxiliary record              |
+-------------------------------------------------------------------------------------------+--------+-----------+-------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+-------------------------------+
| Type                                                                            | Name   | Description                   |
+=================================================================================+========+===============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | isentropic enthalpay [J/kg]   |
+---------------------------------------------------------------------------------+--------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image287| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.isentropicEnthalpy\_der
---------------------------------------------------------------------------------------------------------------------------------------------------------

**derivative of isentropic specific enthalpy from p,s**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------+----------+-----------+-------------------------------+
| Type                                                                                      | Name     | Default   | Description                   |
+===========================================================================================+==========+===========+===============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                             | p        |           | pressure [Pa]                 |
+-------------------------------------------------------------------------------------------+----------+-----------+-------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_               | s        |           | specific entropy [J/(kg.K)]   |
+-------------------------------------------------------------------------------------------+----------+-----------+-------------------------------+
| `IF97BaseTwoPhase <Modelica_Media_Common.html#Modelica.Media.Common.IF97BaseTwoPhase>`_   | aux      |           | auxiliary record              |
+-------------------------------------------------------------------------------------------+----------+-----------+-------------------------------+
| Real                                                                                      | p\_der   |           | pressure derivative           |
+-------------------------------------------------------------------------------------------+----------+-----------+-------------------------------+
| Real                                                                                      | s\_der   |           | entropy derivative            |
+-------------------------------------------------------------------------------------------+----------+-----------+-------------------------------+

Outputs
~~~~~~~

+--------+----------+--------------------------------+
| Type   | Name     | Description                    |
+========+==========+================================+
| Real   | h\_der   | specific enthalpy derivative   |
+--------+----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image288| `Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.dynamicIsentropicEnthalpy
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**isentropic specific enthalpy from p,s and good guesses of d and T**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------+
| Type                                                                          | Name     | Default   | Description                                              |
+===============================================================================+==========+===========+==========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                 | p        |           | pressure [Pa]                                            |
+-------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------+
| `SpecificEntropy <Modelica_SIunits.html#Modelica.SIunits.SpecificEntropy>`_   | s        |           | specific entropy [J/(kg.K)]                              |
+-------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                   | dguess   |           | good guess density, e.g., from adjacent volume [kg/m3]   |
+-------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_           | Tguess   |           | good guess temperature, e.g., from adjacent volume [K]   |
+-------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------+
| Integer                                                                       | phase    | 0         | 2 for two-phase, 1 for one-phase, 0 if not known         |
+-------------------------------------------------------------------------------+----------+-----------+----------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                            | Name   | Description                |
+=================================================================================+========+============================+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h      | specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:37
2010.

.. |Modelica.Media.Water.IF97\_Utilities.BaseIF97| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97S.png
.. |Modelica.Media.Water.IF97\_Utilities.iter| image:: Modelica.Media.Water.IF97_Utilities.iterS.png
.. |Modelica.Media.Water.IF97\_Utilities.waterBaseProp\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.waterBaseProp\_ps| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.rho\_props\_ps| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.rho\_ps| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.T\_props\_ps| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.T\_ps| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.h\_props\_ps| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.h\_ps| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.phase\_ps| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.phase\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.phase\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.rho\_props\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.rho\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.rho\_ph\_der| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.T\_props\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.T\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.T\_ph\_der| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.s\_props\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.s\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.s\_ph\_der| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cv\_props\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cv\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.regionAssertReal| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cp\_props\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cp\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.beta\_props\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.beta\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.kappa\_props\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.kappa\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.velocityOfSound\_props\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.velocityOfSound\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.isentropicExponent\_props\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.isentropicExponent\_ph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.ddph\_props| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.ddph| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.ddhp\_props| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.ddhp| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.waterBaseProp\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.rho\_props\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.rho\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.h\_props\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.h\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.h\_pT\_der| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.rho\_pT\_der| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.s\_props\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.s\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cv\_props\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cv\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cp\_props\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cp\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.beta\_props\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.beta\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.kappa\_props\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.kappa\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.velocityOfSound\_props\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.velocityOfSound\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.isentropicExponent\_props\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.isentropicExponent\_pT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.waterBaseProp\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.h\_props\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.h\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.h\_dT\_der| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.p\_props\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.p\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.p\_dT\_der| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.s\_props\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.s\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cv\_props\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cv\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cp\_props\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.cp\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.beta\_props\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.beta\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.kappa\_props\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.kappa\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.velocityOfSound\_props\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.velocityOfSound\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.isentropicExponent\_props\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.isentropicExponent\_dT| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.ThermoFluidSpecial| image:: Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecialS.png
.. |Modelica.Media.Water.IF97\_Utilities.hl\_p| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.hv\_p| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.sl\_p| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.sv\_p| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.rhol\_T| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.rhov\_T| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.rhol\_p| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.rhov\_p| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.dynamicViscosity| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.thermalConductivity| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.surfaceTension| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.isentropicEnthalpy| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.isentropicEnthalpy\_props| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.isentropicEnthalpy\_der| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |Modelica.Media.Water.IF97\_Utilities.dynamicIsentropicEnthalpy| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image97| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97S.png
.. |image98| image:: Modelica.Media.Water.IF97_Utilities.iterS.png
.. |image99| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image100| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image101| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image102| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image103| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image104| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image105| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image106| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image107| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image108| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image109| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image110| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image111| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image112| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image113| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image114| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image115| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image116| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image117| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image118| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image119| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image120| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image121| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image122| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image123| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image124| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image125| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image126| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image127| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image128| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image129| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image130| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image131| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image132| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image133| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image134| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image135| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image136| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image137| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image138| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image139| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image140| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image141| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image142| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image143| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image144| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image145| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image146| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image147| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image148| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image149| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image150| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image151| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image152| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image153| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image154| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image155| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image156| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image157| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image158| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image159| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image160| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image161| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image162| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image163| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image164| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image165| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image166| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image167| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image168| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image169| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image170| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image171| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image172| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image173| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image174| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image175| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image176| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image177| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phS.png
.. |image178| image:: Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecialS.png
.. |image179| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image180| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image181| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image182| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image183| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image184| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image185| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image186| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image187| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image188| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image189| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image190| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image191| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image192| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image193| image:: Modelica.Media.Water.IF97_Utilities.hl_pS.png
.. |image194| image:: Modelica.Media.Water.IF97_Utilities.iterI.png
.. |image195| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image196| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image197| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image198| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image199| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image200| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image201| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image202| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image203| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image204| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image205| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image206| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image207| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image208| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image209| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image210| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image211| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image212| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image213| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image214| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image215| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image216| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image217| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image218| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image219| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image220| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image221| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image222| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image223| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image224| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image225| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image226| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image227| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image228| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image229| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image230| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image231| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image232| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image233| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image234| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image235| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image236| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image237| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image238| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image239| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image240| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image241| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image242| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image243| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image244| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image245| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image246| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image247| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image248| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image249| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image250| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image251| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image252| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image253| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image254| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image255| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image256| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image257| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image258| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image259| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image260| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image261| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image262| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image263| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image264| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image265| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image266| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image267| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image268| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image269| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image270| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image271| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image272| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image273| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image274| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image275| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image276| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image277| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image278| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image279| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image280| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image281| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image282| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image283| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image284| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image285| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image286| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image287| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
.. |image288| image:: Modelica.Media.Water.IF97_Utilities.waterBaseProp_phI.png
