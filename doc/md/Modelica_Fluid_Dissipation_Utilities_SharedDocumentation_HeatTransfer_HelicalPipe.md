% Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe
% 
% 

![Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe](Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png) [Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer).HelicalPipe
=========================================================================================================================================================================================================================================================================================================================================================================================

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                                 Des
                                                                       cri
                                                                       pti
                                                                       on
  -------------------------------------------------------------------- ---
  ![image4](Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.H 
  eatTransferS.png)                                                    
  [kc\_laminar](Modelica_Fluid_Dissipation_Utilities_SharedDocumentati 
  on_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilitie 
  s.SharedDocumentation.HeatTransfer.HelicalPipe.kc_laminar)           

  ![image5](Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.H 
  eatTransferS.png)                                                    
  [kc\_overall](Modelica_Fluid_Dissipation_Utilities_SharedDocumentati 
  on_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilitie 
  s.SharedDocumentation.HeatTransfer.HelicalPipe.kc_overall)           

  ![image6](Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.H 
  eatTransferS.png)                                                    
  [kc\_turbulent](Modelica_Fluid_Dissipation_Utilities_SharedDocumenta 
  tion_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilit 
  ies.SharedDocumentation.HeatTransfer.HelicalPipe.kc_turbulent)       
  ------------------------------------------------------------------------

* * * * *

![image7](Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png) [Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe).kc\_laminar
==================================================================================================================================================================================================================================================================================================================================================

::

Calculation of the mean convective heat transfer coefficient **kc** for
a helical pipe in the laminar flow regime.

### Functions **kc\_laminar** and **kc\_laminar\_KC**

There are basically three differences:

-   The function **kc\_laminar** is using **kc\_laminar\_KC** but offers
    additional output variables like e.g. Reynolds number or Nusselt
    number and failure status (an output of **1** means that the
    function is not valid for the inputs).
-   Generally the function **kc\_laminar\_KC** is numerically best used
    for the calculation of the mean convective heat transfer coefficient
    **kc** at known mass flow rate.
-   You can perform an inverse calculation from **kc\_laminar\_KC**,
    where an unknown mass flow rate is calculated out of a given mean
    convective heat transfer coefficient **kc**

### Restriction

-   laminar regime (Reynolds number ≤ critical Reynolds number
    **Re\_crit**)
-   neglect influence of heat transfer direction (heating/cooling)
    according to *Sieder and Tate*

The critical Reynolds number **Re\_crit** in a helical pipe depends on
its mean curvature diameter **d\_coil**. The smaller the mean curvature
diameter of the helical pipe, the earlier the turbulent regime will
start due to vortexes out of higher centrifugal forces.

### Geometry

### Calculation

The mean convective heat transfer coefficient **kc** for helical pipes
is calculated through the corresponding Nusselt number **Nu** according
to *[VDI 2002, p. Gc 2, eq. 5]* :

    Nu = 3.66 + 0.08*[1 + 0.8*(d_hyd/d_coil)^0.9]*Re^m*Pr^(1/3)

with the exponent **m** for the Reynolds number

    m = 0.5 + 0.2903*(d_hyd/d_coil)^0.194

and the resulting mean convective heat transfer coefficient **kc**

    kc =  Nu * lambda / d_hyd

with

  ------------------------- ----------------------------------------------
  **d\_mean**               as mean diameter of helical pipe [m],

  **d\_coil = f(geometry)** as mean curvature diameter of helical pipe
                            [m],

  **d\_hyd**                as hydraulic diameter of the helical pipe [m],

  **h**                     as slope of helical pipe [m],

  **kc**                    as mean convective heat transfer coefficient
                            [W/(m2K)],

  **lambda**                as heat conductivity of fluid [W/(mK)],

  **L**                     as total length of helical pipe [m],

  **Nu =                    as mean Nusselt number [-],
  kc\*d\_hyd/lambda**       

  **Pr = eta\*cp/lambda**   as Prandtl number [-],

  **Re =                    as Reynolds number [-],
  rho\*v\*d\_hyd/eta**      

  **Re\_crit =              as critical Reynolds number [-].
  f(geometry)**             
  ------------------------- ----------------------------------------------

### Verification

The mean Nusselt number **Nu** representing the mean convective heat
transfer coefficient **kc** is shown below for different numbers of
turns **n\_nt** at constant total length of the helical pipe.

The convective heat transfer of a helical pipe is enhanced compared to a
straight pipe due to occurring turbulences resulting out of centrifugal
forces. The higher the number of turns, the better is the convective
heat transfer for the same length of a pipe.

Note that the ratio of hydraulic diameter to total length of helical
pipe **d\_hyd/L** has no remarkable influence on the coefficient of heat
transfer **kc**.

### References

GNIELINSKI, V.:
  ~ **Heat transfer and pressure drop in helically coiled tubes.**. In
    8th International Heat Transfer Conference, volume 6, pages
    2847-2854, Washington,1986. Hemisphere.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

![image8](Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png) [Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe).kc\_overall
==================================================================================================================================================================================================================================================================================================================================================

::

Calculation of the mean convective heat transfer coefficient **kc** of a
helical pipe in a hydrodynamically developed laminar and turbulent flow
regime.

### Functions **kc\_overall** and **kc\_overall\_KC**

There are basically three differences:

-   The function **kc\_overall** is using **kc\_overall\_KC** but offers
    additional output variables like e.g. Reynolds number or Nusselt
    number and failure status (an output of **1** means that the
    function is not valid for the inputs).
-   Generally the function **kc\_overall\_KC** is numerically best used
    for the calculation of the mean convective heat transfer coefficient
    **kc** at known mass flow rate.
-   You can perform an inverse calculation from **kc\_overall\_KC**,
    where an unknown mass flow rate is calculated out of a given mean
    convective heat transfer coefficient **kc**

### Geometry and Calculation

This heat transfer function enables a calculation of heat transfer
coefficient for laminar and turbulent flow regime. The geometry,
constant and fluid parameters of the function are the same as for
[kc\_laminar](Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar)
and
[kc\_turbulent](Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent).
The calculation conditions for laminar and turbulent flow is equal to
the calculation in **kc\_laminar** and **kc\_turbulent**. A smooth
transition between both functions is carried out between 2200 ≤ Re ≤
30000 (see figure below).

### Verification

The mean Nusselt number **Nu** representing the mean convective heat
transfer coefficient **kc** is shown below for different numbers of
turns **n\_nt** at constant total length of the helical pipe.

The convective heat transfer of a helical pipe is enhanced compared to a
straight pipe due to occurring turbulences resulting out of centrifugal
forces. The higher the number of turns, the better is the convective
heat transfer for the same length of a pipe.

Note that the ratio of hydraulic diameter to total length of helical
pipe **d\_hyd/L** has no remarkable influence on the coefficient of heat
transfer **kc**.

### References

GNIELINSKI, V.:
  ~ **Heat transfer and pressure drop in helically coiled tubes.**. In
    8th International Heat Transfer Conference, volume 6, pages
    2847?2854, Washington,1986. Hemisphere.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

![image9](Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png) [Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe).kc\_turbulent
====================================================================================================================================================================================================================================================================================================================================================

::

Calculation of the mean convective heat transfer coefficient **kc** of a
helical pipe for turbulent flow regime.

### Functions **kc\_turbulent** and **kc\_turbulent\_KC**

There are basically three differences:

-   The function **kc\_turbulent** is using **kc\_turbulent\_KC** but
    offers additional output variables like e.g. Reynolds number or
    Nusselt number and failure status (an output of **1** means that the
    function is not valid for the inputs).
-   Generally the function **kc\_turbulent\_KC** is numerically best
    used for the calculation of the mean convective heat transfer
    coefficient **kc** at known mass flow rate.
-   You can perform an inverse calculation from **kc\_turbulent\_KC**,
    where an unknown mass flow rate is calculated out of a given mean
    convective heat transfer coefficient **kc**

The critical Reynolds number **Re\_crit** in a helical pipe depends on
its mean curvature diameter. The smaller the mean curvature diameter of
the helical pipe **d\_mean**, the earlier the turbulent regime will
start due to vortexes out of higher centrifugal forces.

### Geometry

### Calculation

The mean convective heat transfer coefficient **kc** for helical pipes
is calculated through the corresponding Nusselt number **Nu** according
to *[VDI 2002, p. Ga 2, eq. 6]* :

    Nu = (zeta_TOT/8)*Re*Pr/{1 + 12.7*(zeta_TOT/8)^0.5*[Pr^(2/3)-1]},

where the influence of the pressure loss on the heat transfer
calculation is considered through

    zeta_TOT = 0.3164*Re^(-0.25) + 0.03*(d_hyd/d_coil)^(0.5) and

and the resulting mean convective heat transfer coefficient **kc**

    kc =  Nu * lambda / d_hyd

with

  ------------------------- ----------------------------------------------
  **d\_mean**               as mean diameter of helical pipe [m],

  **d\_coil = f(geometry)** as mean curvature diameter of helical pipe
                            [m],

  **d\_hyd**                as hydraulic diameter of the helical pipe [m],

  **h**                     as slope of helical pipe [m],

  **kc**                    as mean convective heat transfer coefficient
                            [W/(m2K)],

  **lambda**                as heat conductivity of fluid [W/(mK)],

  **L**                     as total length of helical pipe [m],

  **Nu =                    as mean Nusselt number [-],
  kc\*d\_hyd/lambda**       

  **Pr = eta\*cp/lambda**   as Prandtl number [-],

  **Re =                    as Reynolds number [-],
  rho\*v\*d\_hyd/eta**      

  **Re\_crit =              as critical Reynolds number [-].
  f(geometry)**             
  ------------------------- ----------------------------------------------

### Verification

The mean Nusselt number **Nu** representing the mean convective heat
transfer coefficient **kc** is shown below for different numbers of
turns **n\_nt** at constant total length of the helical pipe.

The convective heat transfer of a helical pipe is enhanced compared to a
straight pipe due to occurring turbulences resulting out of centrifugal
forces. The higher the number of turns, the better is the convective
heat transfer for the same length of a pipe.

Note that the ratio of hydraulic diameter to total length of helical
pipe **d\_hyd/L** has no remarkable influence on the coefficient of heat
transfer **kc**.

### References

GNIELINSKI, V.:
  ~ **Heat transfer and pressure drop in helically coiled tubes.**. In
    8th International Heat Transfer Conference, volume 6, pages
    2847?2854, Washington,1986. Hemisphere.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:23 2010.
