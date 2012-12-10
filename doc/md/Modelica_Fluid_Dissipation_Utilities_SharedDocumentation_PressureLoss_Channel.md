% Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Channel
% 
% 

![Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Channel](Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png) [Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss).Channel
=================================================================================================================================================================================================================================================================================================================================================================================

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
  ![image2](Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.H 
  eatTransferS.png)                                                    
  [dp\_internalFlowOverall](Modelica_Fluid_Dissipation_Utilities_Share 
  dDocumentation_PressureLoss_Channel.html#Modelica.Fluid.Dissipation. 
  Utilities.SharedDocumentation.PressureLoss.Channel.dp_internalFlowOv 
  erall)                                                               
  ------------------------------------------------------------------------

* * * * *

![image3](Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png) [Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Channel](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Channel.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Channel).dp\_internalFlowOverall
==================================================================================================================================================================================================================================================================================================================================================

::

Calculation of pressure loss for an internal flow through different
geometries at overall flow regime for single-phase fluid flow
considering surface roughness.

### Restriction

This function shall be used inside of the restricted limits according to
the referenced literature.

-   **developed fluid flow**

### Geometry

### Calculation

The pressure loss **dp** for channels is determined by:

    dp = zeta_TOT * (rho/2) * velocity^2

with

  ------------------ --------------------------------------
  **rho**            as density of fluid [kg/m3],
  **velocity**       as mean velocity [m/s],
  **zeta\_TOT**      as pressure loss coefficient [-].
  ------------------ --------------------------------------

**Channels with different shape of its cross sectional area are
calculated** according to *[Miller 1978, p. 138, fig. 8.5-8-6]*

The pressure loss of these channels is similar to its calculation in
straight pipes. There are three different flow regimes observed
(laminar,transition,turbulent). The pressure loss coefficient
(**zeta\_TOT**) of a channel is calculated in dependence of the flow
regime as follows:

-   **Laminar regime (Re ≤ Re\_lam\_leave)**:

        zeta_TOT = CF_lam/Re * (L/d_hyd)

-   **Transition regime (Re\_lam\_leave ≤ 4e4)**

    This calculation is done using a smoothing function interpolating
    between the laminar and the turbulent flow regime.

-   **Turbulent regime (Re ≥ 4e3)**:

    The turbulent regime can be calculated with the pressure loss
    correlations for a straight pipe with the hydraulic diameter of the
    chosen geometry instead of the internal diameter of a straight pipe
    according to *[VDI 2002, p. Lab 4, sec. 2.1]* . The documentation of
    turbulent fluid flow for a straight pipe is shown in
    [dp\_turbulent](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_turbulent).

with

  -------------- ---------------------------------------------------------
  **CF\_lam**    as correction factor considering the geometry for laminar
                 regime [-],

  **L**          as length of geometry perpendicular to cross sectional
                 area [m],

  **d\_hyd**     as hydraulic diameter of geometry [m],

  **Re**         as Reynolds number [-],

  **zeta\_TOT**  as pressure loss coefficient [-].
  -------------- ---------------------------------------------------------

Note that the beginning of the laminar regime depends on the chosen
surface roughness of the channel and cannot be beneath **Re ≤ 1e3**.

### Verification

The Darcy friction factor (**lambda\_FRI**) of a channel with different
shapes of its cross sectional area are shown in dependence of the
Reynolds number (**Re**) in the figures below.

The Darcy friction factor (**lambda\_FRI**) for different geometries has
been obtained at the same hydraulic diameter and the same mean velocity
of the internal flow. Note that there is no difference of the Darcy
friction factor in the turbulent regime if using the same hydraulic
diameter for all geometries. Roughness can be considered but it is not
used for this validation.

### References

Miller,D.S.:
  ~ **Internal flow systems**. Volume 5th of BHRA Fluid Engineering
    Series.BHRA Fluid Engineering, 1978.

VDI:
  ~ **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 9th edition, 2002.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:23 2010.
