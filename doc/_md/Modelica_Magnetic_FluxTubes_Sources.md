% Modelica.Magnetic.FluxTubes.Sources
% 
% 

[Modelica.Magnetic.FluxTubes](Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes).Sources
===================================================================================================

**Sources of different complexity of magnetomotive force and magnetic
flux**

Information
-----------

::

This package contains sources of a magnetic potential difference or a
magnetic flux:

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                         Description
  ------------------------------------------------------------ -----------
  ![image4](Modelica.Magnetic.FluxTubes.Sources.ConstantMagnet Constant
  icPotentialDifferenceS.png)                                  magnetomoti
  [ConstantMagneticPotentialDifference](Modelica_Magnetic_Flux ve
  Tubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources.Const force
  antMagneticPotentialDifference)                              

  ![image5](Modelica.Magnetic.FluxTubes.Sources.SignalMagnetic Signal-cont
  PotentialDifferenceS.png)                                    rolled
  [SignalMagneticPotentialDifference](Modelica_Magnetic_FluxTu magnetomoti
  bes_Sources.html#Modelica.Magnetic.FluxTubes.Sources.SignalM ve
  agneticPotentialDifference)                                  force

  ![image6](Modelica.Magnetic.FluxTubes.Sources.ConstantMagnet Source of
  icFluxS.png)                                                 constant
  [ConstantMagneticFlux](Modelica_Magnetic_FluxTubes_Sources.h magnetic
  tml#Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticFlux flux
  )                                                            

  ![image7](Modelica.Magnetic.FluxTubes.Sources.SignalMagnetic Signal-cont
  FluxS.png)                                                   rolled
  [SignalMagneticFlux](Modelica_Magnetic_FluxTubes_Sources.htm magnetic
  l#Modelica.Magnetic.FluxTubes.Sources.SignalMagneticFlux)    flux source
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticPotentialDifferenceI.png) [Modelica.Magnetic.FluxTubes.Sources](Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources).ConstantMagneticPotentialDifference
===============================================================================================================================================================================================================================================

**Constant magnetomotive force**

Information
-----------

::

Magnetic circuits under steady-state conditions, i.e., with stationary
magnetic fields (change of magnetic flux dΦ/dt = 0) can be described
with constant sources of a magnetic potential difference or
magnetomotive force (mmf). Constant magnetic potential differences are
imposed by

-   coils with stationary current (di / dt = 0) and
-   permanent magnets modelled with *Thévenin*'s equivalent magnetic
    circuit.

For modelling of reluctance actuators with this source component it is
assumed that the armature is fixed so that no motion-induced flux change
dΦ/dt can occur.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary)
(Partial component with two magnetic ports p and n for textual
programming).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                           Name Defau Description
                                                      lt    
  ---------------------------------------------- ---- ----- ----------------
  [MagneticPotentialDifference](Modelica_SIunits V\_m       Magnetic
  .html#Modelica.SIunits.MagneticPotentialDiffer            potential
  ence)                                                     differnce [A]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- -----------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Positive
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Posi \_p  magnetic
  tiveMagneticPort)                                            port

  [NegativeMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Negative
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Nega \_n  magnetic
  tiveMagneticPort)                                            port
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ConstantMagneticPotentialDifference 
      "Constant magnetomotive force"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      parameter SI.MagneticPotentialDifference V_m "Magnetic potential differnce";
      SI.MagneticFlux Phi "Magnetic flux from port_p to port_n";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;

    end ConstantMagneticPotentialDifference;

* * * * *

![image9](Modelica.Magnetic.FluxTubes.Sources.SignalMagneticPotentialDifferenceI.png) [Modelica.Magnetic.FluxTubes.Sources](Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources).SignalMagneticPotentialDifference
===========================================================================================================================================================================================================================================

**Signal-controlled magnetomotive force**

Information
-----------

::

In electromagnetic devices, a change of a coil's magnetic flux linkage Ψ
reacts on the electrical subsystem in that a voltage v is induced due to
*Faraday*'s law:

    v = - dΨ/dt

This reaction can possibly be neglected for

-   modelling ofelectromagnetic actuators under quasi-stationary
    conditions (slow current change, slow armature motion),
-   modelling of current-controlled electromagnetic actuators (ideal
    current source) and
-   for system simulation where the system dynamics is not governed by
    an electromagnetic actuator, but by the surrounding subsystems.

In these cases, the magnetic potential difference or magnetomotive force
imposed by a coil can easily be modelled with a signal-controlled
source. Except for the neglected dynamics, steady-state actuator forces
will be calculated properly in actuator models based on these sources.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary)
(Partial component with two magnetic ports p and n for textual
programming).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- -------------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTubes_In port Positive
  terfaces.html#Modelica.Magnetic.FluxTubes.Interfaces. \_p  magnetic port
  PositiveMagneticPort)                                      

  [NegativeMagneticPort](Modelica_Magnetic_FluxTubes_In port Negative
  terfaces.html#Modelica.Magnetic.FluxTubes.Interfaces. \_n  magnetic port
  NegativeMagneticPort)                                      

  input                                                 V\_m Magnetic
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.      potential
  Blocks.Interfaces.RealInput)                               difference
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SignalMagneticPotentialDifference 
      "Signal-controlled magnetomotive force"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      Modelica.Blocks.Interfaces.RealInput V_m "Magnetic potential difference";
      SI.MagneticFlux Phi "Magnetic flux from port_p to port_n";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;
    end SignalMagneticPotentialDifference;

* * * * *

![image10](Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticFluxI.png) [Modelica.Magnetic.FluxTubes.Sources](Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources).ConstantMagneticFlux
==================================================================================================================================================================================================================

**Source of constant magnetic flux**

Information
-----------

::

Sources of a constant magnetic flux are useful for modelling of
permanent magnets with *Norton*'s magnetic equivalent circuit.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary)
(Partial component with two magnetic ports p and n for textual
programming).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- --------------
  [MagneticFlux](Modelica_SIunits.html#Modelica Phi   1       Magnetic flux
  .SIunits.MagneticFlux)                                      [Wb]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- -----------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Positive
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Posi \_p  magnetic
  tiveMagneticPort)                                            port

  [NegativeMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Negative
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Nega \_n  magnetic
  tiveMagneticPort)                                            port
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ConstantMagneticFlux "Source of constant magnetic flux"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      parameter SI.MagneticFlux Phi = 1 "Magnetic flux";
      SI.MagneticPotentialDifference V_m 
        "Magnetic potential difference between both ports";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;
    end ConstantMagneticFlux;

* * * * *

![image11](Modelica.Magnetic.FluxTubes.Sources.SignalMagneticFluxI.png) [Modelica.Magnetic.FluxTubes.Sources](Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources).SignalMagneticFlux
==============================================================================================================================================================================================================

**Signal-controlled magnetic flux source**

Information
-----------

::

This source of a magnetic flux is intended for test purposes, e.g., for
simulation and subsequent plotting of a softmagnetic material's
magnetisation characteristics if used together with a non-linear
reluctance element.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary)
(Partial component with two magnetic ports p and n for textual
programming).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- -----------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Positive
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Posi \_p  magnetic
  tiveMagneticPort)                                            port

  [NegativeMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Negative
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Nega \_n  magnetic
  tiveMagneticPort)                                            port

  input                                                   Phi  Magnetic
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bl      flux
  ocks.Interfaces.RealInput)                                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SignalMagneticFlux "Signal-controlled magnetic flux source"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      Modelica.Blocks.Interfaces.RealInput Phi "Magnetic flux";
      SI.MagneticPotentialDifference V_m 
        "Magnetic potential difference between both ports";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;
    end SignalMagneticFlux;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:53 2010.
