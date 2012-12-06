% Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe
% 
% 

![Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe](Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png) [Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss).StraightPipe
===========================================================================================================================================================================================================================================================================================================================================================================================

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
  ![image5](Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.H 
  eatTransferS.png)                                                    
  [dp\_laminar](Modelica_Fluid_Dissipation_Utilities_SharedDocumentati 
  on_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utiliti 
  es.SharedDocumentation.PressureLoss.StraightPipe.dp_laminar)         

  ![image6](Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.H 
  eatTransferS.png)                                                    
  [dp\_overall](Modelica_Fluid_Dissipation_Utilities_SharedDocumentati 
  on_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utiliti 
  es.SharedDocumentation.PressureLoss.StraightPipe.dp_overall)         

  ![image7](Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.H 
  eatTransferS.png)                                                    
  [dp\_turbulent](Modelica_Fluid_Dissipation_Utilities_SharedDocumenta 
  tion_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utili 
  ties.SharedDocumentation.PressureLoss.StraightPipe.dp_turbulent)     

  ![image8](Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.H 
  eatTransferS.png)                                                    
  [dp\_twoPhaseOverall](Modelica_Fluid_Dissipation_Utilities_SharedDoc 
  umentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation 
  .Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_twoPhase 
  Overall)                                                             
  ------------------------------------------------------------------------

* * * * *

![image9](Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png) [Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe).dp\_laminar
=====================================================================================================================================================================================================================================================================================================================================================

::

Calculation of pressure loss in a straight pipe for **laminar** flow
regime of single-phase fluid flow only.

### Restriction

This function shall be used inside of the restricted limits according to
the referenced literature.

-   **circular cross sectional area**
-   **laminar flow regime (Reynolds number Re ≤ 2000) *[VDI-Wärmeatlas
    2002, p. Lab, eq. 3]***

### Geometry

### Calculation

The pressure loss **dp** for straight pipes is determined by:

    dp = lambda_FRI * (L/d_hyd) * (rho/2) * velocity^2

with

  -------------------- ------------------------------------------------
  **lambda\_FRI**      as Darcy friction factor [-].
  **L**                as length of straight pipe [m],
  **d\_hyd**           as hydraulic diameter of straight pipe [m],
  **rho**              as density of fluid [kg/m3],
  **velocity**         as mean velocity [m/s].
  -------------------- ------------------------------------------------

The darcy friction factor **lambda\_FRI** of straight pipes for the
laminar flow regime is calculated by **Hagen-Poiseuilles** law according
to *[Idelchik 2006, p. 77, eq. 2-3]* as follows:

-   **Laminar flow regime** is restricted to a Reynolds number **Re** ≤
    2000

The darcy friction factor **lambda\_FRI** in the laminar regime is
independent of the surface roughness **K** as long as the relative
roughness **k = surface rouhgness/hydraulic diameter** is smaller than
0.007. A higher relative roughness **k** than 0.007 leads to an earlier
leaving of the laminar regime to the transition regime at some value of
Reynolds number **Re\_lam\_leave**. This earlier leaving is not modelled
here because only laminar fluid flow is considered.

### Verification

The darcy friction factor **lambda\_FRI** in dependence of Reynolds
number is shown in the figure below.

The pressure loss **dp** for the laminar regime in dependence of the
mass flow rate of water is shown in the figure below.

Note that this pressure loss function shall not be used for the
modelling outside of the laminar flow regime at **Re** \> 2000

even though it could be used for that.

If the whole flow regime shall be modelled, the pressure loss function
[dp\_overall](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_overall)
can be used.

### References

Elmquist,H., M.Otter and S.E. Cellier:
  ~ **Inline integration: A new mixed symbolic / numeric approach for
    solving differential-algebraic equation systems.**. In Proceedings
    of European Simulation MultiConference, Praque, 1995.

Idelchik,I.E.:
  ~ **Handbook of hydraulic resistance**. Jaico Publishing House,
    Mumbai, 3rd edition, 2006.

VDI:
  ~ **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 9th edition, 2002.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

![image10](Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png) [Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe).dp\_overall
======================================================================================================================================================================================================================================================================================================================================================

::

Calculation of pressure loss in a straight pipe for **laminar or
turbulent** flow regime of single-phase fluid flow only considering
surface roughness.

### Restriction

This function shall be used within the restricted limits according to
the referenced literature.

-   **circular cross sectional area**

### Geometry

### Calculation

The pressure loss **dp** for straight pipes is determined by:

    dp = lambda_FRI * (L/d_hyd) * (rho/2) * velocity^2

with

  -------------------- ------------------------------------------------
  **lambda\_FRI**      as Darcy friction factor [-],
  **L**                as length of straight pipe [m],
  **d\_hyd**           as hydraulic diameter of straight pipe [m],
  **rho**              as density of fluid [kg/m3],
  **velocity**         as mean velocity [m/s].
  -------------------- ------------------------------------------------

The darcy friction factor **lambda\_FRI** for straight pipes is
calculated depending on the fluid flow regime (with corresponding
Reynolds number **Re**) and the absolute surface roughness **K**.

**Laminar regime** is calculated for **Re** ≤ 2000

by the Hagen-Poiseuille law according to *[Idelchik 2006, p. 77, eq.
2-3]*

    lambda_FRI = 64/Re

The darcy friction factor **lambda\_FRI** in the laminar regime is
independent of the surface roughness **k** as long as the relative
roughness **k** is smaller than 0.007. A greater relative roughness
**k** than 0.007 is leading to an earlier leaving of the
Hagen-Poiseuille law at some value of Reynolds number
**Re\_lam\_leave**. The leaving of the laminar regime in dependence of
the relative roughness **k** is calculated according to *[Samoilenko in
Idelchik 2006, p. 81, sect. 2-1-21]* as:

    Re_lam_leave = 754*exp(if k ≤ 0.007 then 0.93 else 0.0065/k)

**Transition regime** is calculated for **2000 <**Re*\* ≤ 4000*\* by a
cubic interpolation between the equations of the laminar and turbulent
flow regime. Different cubic interpolation equations for the calculation
of either pressure loss **dp** or mass flow rate **m\_flow** results in
a deviation of the darcy friction factor **lambda\_FRI** through the
transition regime. This deviation can be neglected due to the
uncertainty in determination of the fluid flow in the transition regime.

**Turbulent regime** can be calculated for a smooth surface (Blasius
law) **or** a rough surface (Colebrook-White law):

**Smooth surface (roughness =1)** w.r.t. **Blasius** law in the
turbulent regime according to *[Idelchik 2006, p. 77, sec. 15]*:

    lambda_FRI = 0.3164*Re^(-0.25)

with

  -------------------- ----------------------------------
  **lambda\_FRI**      as Darcy friction factor [-].
  **Re**               as Reynolds number [-].
  -------------------- ----------------------------------

Note that the Darcy friction factor **lambda\_FRI** for smooth straight
pipes in the turbulent regime is independent of the surface roughness
**K** .

**Rough surface (roughness =2)** w.r.t. **Colebrook-White** law in the
turbulent regime according to *[Miller 1984, p. 191, eq. 8.4]*:

    lambda_FRI = 0.25/{lg[k/(3.7*d_hyd) + 5.74/(Re)^0.9]}^2

with

  ------------------ ------------------------------------------------------
  **d\_hyd**         as hydraulic diameter [-],

  **k= K/d\_hyd**    as relative roughness [-],

  **K**              as roughness (average height of surface asperities
                     [m],

  **lambda\_FRI**    as Darcy friction factor [-],

  **Re**             as Reynolds number [-].
  ------------------ ------------------------------------------------------

### Verification

The Darcy friction factor **lambda\_FRI** in dependence of Reynolds
number for different values of relative roughness **k** is shown in the
figure below.

The pressure loss **dp** for the turbulent regime in dependence of the
mass flow rate of water is shown in the figure below.

And the mass flow rate **m\_flow** for the turbulent regime in
dependence of the pressure loss of water is shown in the figure below.

### References

Idelchik,I.E.:
  ~ **Handbook of hydraulic resistance**. Jaico Publishing House,
    Mumbai, 3rd edition, 2006.

Miller,D.S.:
  ~ **Internal flow systems**. volume 5th of BHRA Fluid Engineering
    Series.BHRA Fluid Engineering, 1984.

Samoilenko,L.A.:
  ~ **Investigation of the hydraulic resistance of pipelines in the zone
    of transition from laminar into turbulent motion**. PhD thesis,
    Leningrad State University, 1968.

VDI:
  ~ **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 9th edition, 2002.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

![image11](Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png) [Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe).dp\_turbulent
========================================================================================================================================================================================================================================================================================================================================================

::

Calculation of pressure loss in a straight pipe for **turbulent** flow
regime of single-phase fluid flow only considering surface roughness.

### Restriction

This function shall be used within the restricted limits according to
the referenced literature.

-   **circular cross sectional area**
-   **turbulent flow regime (Reynolds number Re ≥ 4e3) *[VDI-Wärmeatlas
    2002, p. Lab 3, fig. 1]***

### Geometry

### Calculation

The pressure loss **dp** for straight pipes is determined by:

    dp = lambda_FRI * (L/d_hyd) * (rho/2) * velocity^2

with

  -------------------- ------------------------------------------------
  **lambda\_FRI**      as Darcy friction factor [-].
  **L**                as length of straight pipe [m],
  **d\_hyd**           as hydraulic diameter of straight pipe [m],
  **rho**              as density of fluid [kg/m3],
  **velocity**         as mean velocity [m/s].
  -------------------- ------------------------------------------------

The Darcy friction factor **lambda\_FRI** for a straight pipe in the
turbulent regime can be calculated for a smooth surface (Blasius law)
**or** a rough surface (Colebrook-White law).

**Smooth surface (roughness =1)** w.r.t. **Blasius** law in the
turbulent regime according to *[Idelchik 2006, p. 77, sec. 15]*:

    lambda_FRI = 0.3164*Re^(-0.25)

with

  -------------------- ----------------------------------
  **lambda\_FRI**      as Darcy friction factor [-].
  **Re**               as Reynolds number [-].
  -------------------- ----------------------------------

Note that the Darcy friction factor **lambda\_FRI** for smooth straight
pipes in the turbulent regime is independent of the surface roughness
**K** .

**Rough surface (roughness =2)** w.r.t. **Colebrook-White** law in the
turbulent regime according to *[Miller 1984, p. 191, eq. 8.4]*:

    lambda_FRI = 0.25/{lg[k/(3.7*d_hyd) + 5.74/(Re)^0.9]}^2

with

  ------------------ ------------------------------------------------------
  **d\_hyd**         as hydraulic diameter [-],

  **k= K/d\_hyd**    as relative roughness [-],

  **K**              as roughness (average height of surface asperities
                     [m].

  **lambda\_FRI**    as Darcy friction factor [-],

  **Re**             as Reynolds number [-].
  ------------------ ------------------------------------------------------

### Verification

The Darcy friction factor **lambda\_FRI** in dependence of Reynolds
number for different values of relative roughness **k** is shown in the
figure below.

Note that this pressure loss function shall not be used for the
modelling outside of the turbulent flow regime at **Re** < 4e3 even
though it could be used for that.

If the overall flow regime shall be modelled, the pressure loss function
[dp\_overall](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_overall)
can be used.

### References

Idelchik,I.E.:
  ~ **Handbook of hydraulic resistance**. Jaico Publishing House,
    Mumbai, 3rd edition, 2006.

VDI:
  ~ **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 9th edition, 2002.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

![image12](Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png) [Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe).dp\_twoPhaseOverall
==============================================================================================================================================================================================================================================================================================================================================================

::

Calculation of pressure loss for **two phase flow** in a horizontal
**or** vertical straight pipe for an overall flow regime considering
frictional, momentum and geodetic pressure loss.

### Restriction

This function shall be used within the restricted limits according to
the referenced literature.

-   **circular cross sectional area**
-   **neglecting of surface roughness**
-   **horizontal flow or vertical upflow**
-   **usage of mass flow rate quality (see Calculation)**
-   **two phase pressure loss for mean constant mass flow rate quality
    (x\_flow) over (increment) length**
-   **usage of two phase pressure loss function for discretisation at
    boiling or condensation considering variable mass flow rate
    quality**

### Geometry

### Calculation

The two phase pressure loss **dp\_2ph** of straight pipes is determined
by:

    dp_2ph = dp_fri + dp_mom + dp_geo

with

  ---------------- --------------------------------------
  **dp\_fri**      as frictional pressure loss [Pa],
  **dp\_mom**      as momentum pressure loss [Pa],
  **dp\_geo**      as geodetic pressure loss [Pa].
  ---------------- --------------------------------------

**Definition of quality for two phase flow**:

Different definitions of the quality exist for two phase flow. Static
quality, mass flow rate quality and thermodynamic quality can be used to
describe the fraction of gas and liquid in two phase flow. Here the mass
flow rate quality **(x\_flow)** is used to describe two phase flow as
follows:

    x_flow = mdot_g/(mdot_g+mdot_l)

with

  ---------------- --------------------------------------
  **x\_flow**      as mass flow rate quality [-],
  **mdot\_g**      as gaseous mass flow rate [kg/s],
  **mdot\_l**      as liquid mass flow rate [kg/s].
  ---------------- --------------------------------------

Note that mass flow rate quality **(x\_flow)** is only equal to the
static quality, if a difference between the velocity of gas and liquid
phase is neglected (homogeneous approach). Additionally the
thermodynamic quality is only equal to the mass flow rate quality
**(x\_flow)** in the two phase regime for thermodynamic equilibrium of
the phases.

**Frictional pressure loss**:

The frictional pressure loss **dp\_fri** of a straight pipe is
calculated either by the correlation of **Friedel**
(frictionalPressureLoss==Friedel) or by the correlation of **Chisholm**
(frictionalPressureLoss==Chisholm). Both correlations can be used for
the above named two phase flow regimes. The two phase frictional
pressure loss results from a frictional pressure loss assuming one phase
liquid fluid flow and a two phase multiplier taking into account the
effects of two phase flow:

    dp_fri = dp_1ph*phi_i

with

  ------------ -----------------------------------------------------------
  **dp\_1ph**  as frictional pressure loss assuming one phase liquid fluid
               flow [Pa],

  **phi\_i**   as two phase multiplier [-].
  ------------ -----------------------------------------------------------

The liquid frictional pressure loss is calculated with the **total mass
flow rate** assumed to flow as liquid.

The correlations of Friedel and Chisholm differ in their calculation of
the two phase multiplier:

    phi_friedel = (1 - x_flow)^2 + x_flow^2*(rho_l/rho_g)*(lambda_g/lambda_l)
                + 3.43*x_flow^0.685*(1 - x_flow)^0.24*(rho_l/rho_g)^0.8*(eta_g/eta_l)^0.22*(1 - eta_g/eta_l)^0.89*(1/Fr_l^(0.048))*(1/We_l^(0.0334))

    phi_chisholm = 1 + (gamma^2 - 1)*(B*x_flow^((2 - n_exp)/2)*(1 - x_flow)^((2 -n_exp)/2) + x_flow^(2 - n_exp))

with

  ------------------- ----------------------------------------------------
  **B**               as Lockhart-Martinelli coefficient [-],
  **eta\_l**          as dynamic viscosity of the liquid phase [Pas],
  **eta\_g**          as dynamic viscosity of the gaseous phase [Pas],
  **gamma**           as physical property coefficient [-],
  **n\_exp** =0.2     as exponent in Chisholm correlation [-],
  **phi\_i**          as two phase multiplier [-],
  **rho\_l**          as density of the liquid phase [kg/m3],
  **rho\_g**          as density of the gaseous phase [kg/m3],
  **Re\_l**           as Reynolds number of the liquid phase [-],
  **Re\_g**           as Reynolds number of the gaseous phase [-],
  **Fr\_l**           as Froude number of the liquid phase [-],
  **We\_l**           as Weber number of the liquid phase [-],
  **x\_flow**         as mass flow rate quality [-].
  ------------------- ----------------------------------------------------

Note that the (mean constant) mass flow rate quality **(x\_flow)** used
for frictional pressure loss is calculated as arithmetic mean value out
of the mass flow rate quality at the end and at the start of the
straight pipe length.

**Momentum pressure loss**:

The momentum pressure loss **dp\_mom** can be considered
(momentumPressureLoss = true) for a homogeneous or heterogeneous two
phase flow depending on the approach used for the void fraction
**(epsilon)**. At evaporation the liquid phase having a slow velocity
has to be accelerated to the higher velocity of the gas. The difference
in static pressure at the outlet and the inlet causes a positive
momentum pressure loss at evaporation (assumed vice versa for
condensation). The momentum pressure loss occurs for a changing mass
flow rate quality due to condensation or evaporation according to *[VDI
2006, p.Lba 4, eq. 22]* :

    dp_mom = mdot_A^2*[[((1-x_flow)^2/(rho_l*(1-epsilon)) + x_flow^2/(rho_g*epsilon))]_out - [((1-x_flow)^2/(rho_l*(1-epsilon)) + x_flow^2/(rho_g*epsilon))]_in]

with

  ---------------- ------------------------------------------------
  **mdot\_A**      as total mass flow rate density [kg/(m2s)],
  **epsilon**      as void fraction [-],
  **rho\_l**       as density of the liquid phase [kg/m3],
  **rho\_g**       as density of the gaseous phase [kg/m3],
  **x\_flow**      as mass flow rate quality [-].
  ---------------- ------------------------------------------------

Note that a momentum pressure loss is only considered for a variable
mass flow rate quality **(x\_flow)** during evaporation or condensation.
Momentum pressure loss does not occur under adiabatic conditions for a
corresponding constant mass flow rate quality (evaporation due to
pressure loss is not considered).

**Void fraction approach**:

The void fraction is one of the most important parameter used to
characterise two phase flow. There are several analytical and empirical
approaches according to *[Thome, J.R]* :

-   **homogeneous approach**
-   **momentum flux approach (heterogeneous model)**
-   **Kinetic energy flow approach by Zivi (heterogeneous model)**
-   **Empirical momentum flux approach by Chisholm (heterogeneous
    model)**

These approaches for the void fraction **epsilon** imply a correlation
for the slip ratio. The slip ratio is defined as ratio of the velocity
from the gaseous phase to the liquid phase at two phase flow. The
effects of different fluid flow velocities of the phases on two phase
pressure loss can be considered with the slip ratio in the heterogeneous
approaches. The slip ratio for the homogeneous approach is unity, so
that there is no difference in the velocities of the two phases (e.g.,
usable for bubble flow).

**Geodetic pressure loss**:

The geodetic pressure loss **dp\_geo** can be considered
(geodeticPressureLoss=true) for two phase flow according to *[VDI 2006,
p.Lbb 1, eq. 4]* :

    dp_geo = (epsilon*rho_g +(1-epsilon)*rho_l)*g*L*sin(phi)

with

  ---------------- ---------------------------------------------
  **epsilon**      as void fraction [-],
  **rho\_l**       as density of the liquid phase [kg/m3],
  **rho\_g**       as density of the gaseous phase [kg/m3],
  **g**            as acceleration of gravity [m/s2],
  **L**            as length of straight pipe [m],
  **phi**          as angle to horizontal [rad].
  ---------------- ---------------------------------------------

### Verification

The two phase pressure loss for a horizontal pipe calculated by the
correlation of *Friedel* neglecting momentum and geodetic pressure loss
is shown in the figure below.

The two phase pressure loss for a horizontal pipe calculated by the
correlation of *Chisholm* neglecting momentum and geodetic pressure loss
is shown in the figure below.

### References

Chisholm,D.:
  ~ **Pressure gradients due to friction during the flow of evaporating
    two-phase mixtures in smooth tubes and channels**. Volume 16th of
    International Journal of Heat and Mass Transfer, 1973.

Friedel,L.:
  ~ **IMPROVED FRICTION PRESSURE DROP CORRELATIONS FOR HORIZONTAL AND
    VERTICAL TWO PHASE PIPE FLOW**.3R International, Vol. 18, Issue 7,
    pp. 485-491, 1979.

VDI:
  ~ **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 10th edition, 2006.

J.M. Jensen and H. Tummescheit:
  ~ **Moving boundary models for dynamic simulations of two-phase
    flows**. In Proceedings of the 2nd International Modelica
    Conference, pages 235-244, Oberpfaffenhofen, Germany, 2002. The
    Modelica Association.

Thome, J.R.:
  ~ **Engineering Data Book 3**.Swiss Federal Institute of Technology
    Lausanne (EPFL), 2009.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:23 2010.
