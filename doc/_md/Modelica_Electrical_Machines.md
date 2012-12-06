% Modelica.Electrical.Machines:
  [Modelica.Electrical](Modelica_Electrical.html#Modelica.Electrical).Machines
% 
% 

**Library for electric machines**

Information
===========

::

This package contains electric machine models and components for
modeling these machines.

**Limitations and assumptions:**

-   number of phases (of induction machines) is limited to 3, therefore
    definition as a constant m=3
-   phase symmetric windings as well as symmetry of the whole machine
    structure
-   all values are used in physical units, no scaling to p.u. is done
-   only basic harmonics (in space) are taken into account
-   waveform (with respect to time) of voltages and currents is not
    restricted
-   constant parameters, i.e., no saturation, no skin effect

You may have a look at a short summary of space phasor theory at
[[http://www.haumer.at/refimg/SpacePhasors.pdf](http://www.haumer.at/refimg/SpacePhasors.pdf)](http://www.haumer.at/refimg/SpacePhasors.pdf)

**Further development:**

-   generalizing space phasor theory to m phases with arbitrary spatial
    angle of the coils
-   generalizing space phasor theory to arbitrary number of windings and
    winding factor of the coils
-   MachineModels: other machine types
-   effects: saturation, skin-effect, ...

**In memoriam Prof. Hans Kleinrath (1928-03-07 - 2010-04-05)**

**Main Authors:**
  ~ [Anton Haumer](http://www.haumer.at/)
      ~ Technical Consulting & Electrical Engineering A-3423
        St.Andrae-Woerdern

    Austria
      ~ email:
        [[a.haumer@haumer.at](mailto:a.haumer@haumer.at)](mailto:a.haumer@haumer.at)

    Dr.Christian Kral
      ~ Austrian Institute of Technology [AIT](http://www.ait.ac.at/)
        Giefinggasse 2 A-1210 Vienna, Austria

Copyright © 1998-2010, Modelica Association, Anton Haumer and AIT.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
[Modelica.UsersGuide.ModelicaLicense2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2)
or visit
[[http://www.modelica.org/licenses/ModelicaLicense2](http://www.modelica.org/licenses/ModelicaLicense2)](http://www.modelica.org/licenses/ModelicaLicense2).*

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                                  Description
  ----------------------------------------------------- ------------------
  ![image9](Modelica.Electrical.Machines.ExamplesS.png) Test examples
  [Examples](Modelica_Electrical_Machines_Examples.html 
  #Modelica.Electrical.Machines.Examples)               

  ![image10](Modelica.Electrical.Machines.BasicMachines Basic machine
  S.png)                                                models
  [BasicMachines](Modelica_Electrical_Machines_BasicMac 
  hines.html#Modelica.Electrical.Machines.BasicMachines 
  )                                                     

  ![image11](Modelica.Electrical.Machines.SensorsS.png) Sensors for
  [Sensors](Modelica_Electrical_Machines_Sensors.html#M machine modelling
  odelica.Electrical.Machines.Sensors)                  

  ![image12](Modelica.Electrical.Machines.SpacePhasorsS Library with space
  .png)                                                 phasor-models
  [SpacePhasors](Modelica_Electrical_Machines_SpacePhas 
  ors.html#Modelica.Electrical.Machines.SpacePhasors)   

  ![image13](Modelica.Electrical.Machines.SpacePhasorsS Loss models for
  .png)                                                 electric machines
  [Losses](Modelica_Electrical_Machines_Losses.html#Mod 
  elica.Electrical.Machines.Losses)                     

  ![image14](Modelica.Electrical.Machines.ThermalS.png) Library with
  [Thermal](Modelica_Electrical_Machines_Thermal.html#M models for
  odelica.Electrical.Machines.Thermal)                  connecting thermal
                                                        models

  ![image15](Modelica.Electrical.Machines.InterfacesS.p SpacePhasor
  ng)                                                   connector and
  [Interfaces](Modelica_Electrical_Machines_Interfaces. PartialMachines
  html#Modelica.Electrical.Machines.Interfaces)         

  ![image16](Modelica.Electrical.Machines.IconsS.png)   Icons for
  [Icons](Modelica_Electrical_Machines_Icons.html#Model electrical
  ica.Electrical.Machines.Icons)                        machines

  ![image17](Modelica.Electrical.Machines.IconsS.png)   Library with
  [Utilities](Modelica_Electrical_Machines_Utilities.ht auxiliary models
  ml#Modelica.Electrical.Machines.Utilities)            for testing
  ------------------------------------------------------------------------

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:33 2010.
