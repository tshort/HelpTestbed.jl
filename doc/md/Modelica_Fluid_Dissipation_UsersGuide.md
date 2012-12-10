% Modelica.Fluid.Dissipation.UsersGuide
% 
% 

![Modelica.Fluid.Dissipation.UsersGuide](Modelica.Fluid.Dissipation.UsersGuideI.png) [Modelica.Fluid.Dissipation](Modelica_Fluid_Dissipation.html#Modelica.Fluid.Dissipation).UsersGuide
========================================================================================================================================================================================

::

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                             Descrip
                                                                   tion
  ---------------------------------------------------------------- -------
  ![image4](Modelica.Fluid.Dissipation.UsersGuide.GettingStartedS. Getting
  png)                                                             Started
  [GettingStarted](Modelica_Fluid_Dissipation_UsersGuide.html#Mode 
  lica.Fluid.Dissipation.UsersGuide.GettingStarted)                

  ![image5](Modelica.Fluid.Dissipation.UsersGuide.ReleaseNotesS.pn Release
  g)                                                               notes
  [ReleaseNotes](Modelica_Fluid_Dissipation_UsersGuide.html#Modeli 
  ca.Fluid.Dissipation.UsersGuide.ReleaseNotes)                    

  ![image6](Modelica.Fluid.Dissipation.UsersGuide.ContactS.png)    Contact
  [Contact](Modelica_Fluid_Dissipation_UsersGuide.html#Modelica.Fl 
  uid.Dissipation.UsersGuide.Contact)                              
  ------------------------------------------------------------------------

* * * * *

![image7](Modelica.Fluid.Dissipation.UsersGuideI.png) [Modelica.Fluid.Dissipation.UsersGuide](Modelica_Fluid_Dissipation_UsersGuide.html#Modelica.Fluid.Dissipation.UsersGuide).GettingStarted
==============================================================================================================================================================================================

::

The **Fluid.Dissipation** library provides convective heat transfer and
pressure loss (HTPL) correlations for a broad range of energy devices to
build up thermohydraulic energy systems.

This section introduces an implementation method for the integration of
the provided HTPL functions by Fluid.Dissipation into own application
models. Additionally you can find ready-to-use application models
integrated into Modelica.Fluid as thermohydraulic framework [(see
package
Fittings)](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings). In the
following the implementation method is described in 5 steps for a
straight pipe as example. Generally the implementation method can be
used for all HTPL correlations throughout the library in the same
manner.

### Step 1: Use/Create model with missing pressure loss correlation

All thermohydraulic systems using pressure loss calculations can be
modelled for an **incompressible case**, where the pressure loss (DP) is
calculated in dependence of a known mass flow rate (m\_flow)

    DP = f(m_flow,...)

or a **compressible case** , where the mass flow rate (M\_FLOW) is
calculated in dependence of a known pressure loss (dp)

    M_FLOW = f(dp,...).

In both cases one target variable (DP for the compressible or M\_FLOW
for the incompressible case) is calculated as a function of the
corresponding input variable (m\_flow or dp respectively). Both
functions for these cases can be found in the library for the pressure
loss device of interest enlarged with a corresponding underscore
describing its intended use (functionname\_MFLOW for compressible or
functionname\_DP for incompressible calculation).

To create a simplified thermohydraulic model, the pressure loss (dp) and
the mass flow rate (M\_FLOW) have to be defined as unknown variables and
only a functional correlation between them is still missing. Here the
implementation for the compressible case of a flow model will be
explained as example.

    model straightPipe
     //compressible case M_FLOW = f(dp)
      Modelica.SIunits.Pressure dp "Input pressure loss";
      Modelica.SIunits.MassFlowRate M_FLOW "Output mass flow rate";
    end straightPipe

    equation

> end straightPipe

### Step 2: Choose pressure loss **function** of interest

The HTPL correlations are modelled with functions for several devices.
The pressure loss of a straight pipe to be modelled can be found by
browsing through the **Fluid.Dissipation** library and looking up the
function of interest, here:

    Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_MFLOW

This HTPL correlation for the compressible case of a straight pipe have
to be dragged and dropped in the equation section of the **equation
layer** of the model in Step 1.

    model straightPipe
     //compressible case M_FLOW = f(dp)
      Modelica.SIunits.Pressure dp "Input pressure loss";
      Modelica.SIunits.MassFlowRate M_FLOW "Output mass flow rate";

     equation
     Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_MFLOW
    end straightPipe

### Step 3: Choose corresponding pressure loss **records**

The chosen function in Step 2 still needs its corresponding input values
provided by records. These input records are spitted into one for input
parameters (e.g., for geometry) and one for input variables (e.g., for
fluid properties). The name of these input records are identical with
the corresponding function but with the extension **\_IN\_con** for
parameters and **\_IN\_var** for variables as input. These corresponding
input record for the chosen function have to be dragged and dropped on
the **diagram layer** of the model in Step 1.

    Input parameter record:

> Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_IN\_con
> IN\_con
>   ~ Input variable record:
>
> Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_IN\_var
> IN\_var

Now the equation layer of the model in Step 1 should look similar to the
following (without comments and annotation):

    model straightPipe
     ...
     //records
     Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_con IN_con;
     Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var IN_var;

     equation
     Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_MFLOW
    end straightPipe

### Step 4: Build function-record construction

Now the input record have to be assigned to the chosen function in the
equation layer. The resulting function-record implementation for the
compressible case looks like the following:

    model straightPipe
       ...
      equation
      //compressible case
      M_FLOW = Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_MFLOW(IN_con,IN_var,dp);
    end straightPipe

Here the compressible case for the unknown mass flow rate (M\_FLOW) is
calculated by the known pressure difference (dp) out of the interfaces
of the thermohydraulic framework and the input records (IN\_con,IN\_var)
provide data like geometry and fluid properties for example.

### Step 5: Assign record variables

In the last step the variables of the input records for the function
have to be assigned. The assignment of the record variables can either
be done directly in the record on the diagram layer or in the equation
layer. The assignment of the input record in the equation layer results
into the following model:

    model straightPipe
     ...
    //compressible fluid flow
      //input record

    Fluid.Dissipation.Examples.Applications.PressureLoss.BaseClasses.StraightPipe.Overall.Pres
    sureLossInput_con
        IN_con(
        d_hyd=d_hyd,
        L=L,
        roughness=roughness,
        K=K);

    Fluid.Dissipation.Examples.Applications.PressureLoss.BaseClasses.StraightPipe.Overall.Pres
    sureLossInput_var
        IN_var(
        eta=eta,
        rho=rho);
     ...
    end straight Pipe;

If the implementation of a HTPL correlation is done in an existing
application model, the unknown variables out of Step 1 (M\_FLOW and dp
for compressible or DP and m\_flow for incompressible case) have to be
adjusted to the model variables (typically the interface variables). The
implementation of HTPL correlation into **Modelica.Fluid** can be found
for [flow models of several
devices](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings).

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

![image8](Modelica.Fluid.Dissipation.UsersGuide.ReleaseNotesI.png) [Modelica.Fluid.Dissipation.UsersGuide](Modelica_Fluid_Dissipation_UsersGuide.html#Modelica.Fluid.Dissipation.UsersGuide).ReleaseNotes
=========================================================================================================================================================================================================

::

### Version 1.0 Beta 4-6, 2010-01-12

Fluid.Dissipation was improved for the release as follows:

-   Changed structure for input records of all heat transfer and
    pressure loss functions:

    -   Reduced amount of input records for compressible and
        incompressible functions as well as for their combinational one
        to improve usability of library.
    -   Splitting input records of one function into one with parameters
        (e.g., for geometry) and one with variables (e.g., fluid
        properties) to ease work of IDE-solver.

-   
-   Improved Modelica.Fluid application models for available heat
    transfer and pressure loss functions:

    -   Flattened inheritance with one base flow model for all energy
        devices.
    -   Implemented smooth state of fluid density and dynamic viscosity
        for reverse flow.

-   Adaption of complete library due to structure change.

### Version 1.0 Beta 3, 2009-07-03

Fluid.Dissipation was improved for the release as follows:

-   Changed flow models structure:
      ~ Now that a future feature for the automatic choice of using
        either a

    mass flow rate (compressible case) or a pressure loss
    (incompressible case) function for calculation is supported if
    implemented by IDE. Due to that no manual selection of a
    compressible or incompressible calculation in the Modelica.Fluid
    flow models is possible anymore. Therefore nonlinear equations will
    be created from the Modelica.Fluid flow models, if the future
    feature is not supported and the mass flow rate is known at a fluid
    port instead of the pressure loss.
-   Changed structure and amount of records used as input for function
    calls due to changed structure of flow model.
-   Changed structure of function calls due to changed structure of flow
    model.
-   Finished validation of all available heat transfer and pressure loss
    functions.
-   Included scripts for verification of all available heat transfer and
    pressure loss functions.

### Version 1.0 Beta 2, 2009-04-22

Fluid.Dissipation was improved for the release as follows:

-   Support of analytical Jacobians at inverse calculation of heat
    transfer and pressure loss functions.
-   Included Modelica.Fluid application models for available heat
    transfer and pressure loss functions.
-   Adaption of complete library to Modelica Standard nomenclature.

### Version 1.0 Beta 1, 2008-10-08

Initial release of Fluid.Dissipation.

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image9](Modelica.Fluid.Dissipation.UsersGuide.ContactI.png) [Modelica.Fluid.Dissipation.UsersGuide](Modelica_Fluid_Dissipation_UsersGuide.html#Modelica.Fluid.Dissipation.UsersGuide).Contact
===============================================================================================================================================================================================

::

### Maintainer and co-author

Stefan Wischhusen
  ~ XRG Simulation GmbH Hamburg, Germany email:

[[wischhusen@xrg-simulation.de](mailto:wischhusen@xrg-simulation.de)](mailto:wischhusen@xrg-simulation.de)

### Acknowledgements

The following people contributed to the Modelica.Fluid.Dissipation
library (alphabetical list): Jörg Eiden, Ole Engel, Nina Peci, Sven
Rutkowski, Thorben Vahlenkamp, Stefan Wischhusen.

The development of the Modelica.Fluid.Dissipation library was founded
within the ITEA research project EuroSysLib-D by German Federal Ministry
of Education and Research (promotional reference 01IS07022B). The
project is started in October 2007 and ended in June 2010.

::

Extends from
[Modelica.Icons.Contact](Modelica_Icons.html#Modelica.Icons.Contact)
(Icon for contact information).

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:19 2010.
