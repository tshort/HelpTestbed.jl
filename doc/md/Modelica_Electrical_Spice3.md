% Modelica.Electrical.Spice3:
  [Modelica.Electrical](Modelica_Electrical.html#Modelica.Electrical).Spice3
% 
% 

**Library for components of the Berkeley SPICE3 simulator**

Information
===========

::

This package contains models of the Berkeley SPICE3 simulator (R, C, L,
controlled and independent sources, semiconductor device models). The
semiconductor models are transferred from the SPICE3 code, up to now

-   MOSFET Level 1
-   Bipolar junction transistor,
-   Diode
-   Semiconductor resistor

For the usage of this package, especially for detailed explanation of
parameters, it is useful to know the [SPICE3 user's
manual](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.130.9471&rep=rep1&type=pdf)
which modelling relied on.

**Open issues**:

-   devices from SPICE3 that are not modelled yet:
-   -   MESFETs
    -   JFETs
    -   MOSFET Level 2,3,6, BSIM
    -   Line models
    -   Semiconductor C

-   unit check (at the moment many parameters of type Real)
-   tests
-   not supported analyse types (AC, DCTransfer, ...)

> **Main Authors:**
>   ~ Christoph Clauß
>     <[[Christoph.Clauss@eas.iis.fraunhofer.de](mailto:Christoph.Clauss@eas.iis.fraunhofer.de)](mailto:Christoph.Clauss@eas.iis.fraunhofer.de)\>
>     Kristin Majetta
>     <[[Kristin.Majetta@eas.iis.fraunhofer.de](mailto:Kristin.Majetta@eas.iis.fraunhofer.de)](mailto:Kristin.Majetta@eas.iis.fraunhofer.de)\>
>     Sandra Boehme
>     <[[Sandra.Boehme@eas.iis.fraunhofer.de](mailto:Sandra.Boehme@eas.iis.fraunhofer.de)](mailto:Sandra.Boehme@eas.iis.fraunhofer.de)\>
>     Fraunhofer Institute for Integrated Circuits Design Automation
>     Department Zeunerstraße 38 D-01069 Dresden Germany
>
**Copyright:**

Copyright © 1998-2010, Modelica Association and Fraunhofer-Gesellschaft.

*The Modelica package is**free*\* software; it can be redistributed
and/or modified under the terms of the **Modelica license**, see the
license conditions and the accompanying **disclaimer** in the
documentation of package Modelica in file "Modelica/package.mo".\*

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  ![image8](Modelica.Electrical.Spice3.UsersGuideS User's Guide
  .png)                                            
  [UsersGuide](Modelica_Electrical_Spice3_UsersGui 
  de.html#Modelica.Electrical.Spice3.UsersGuide)   

  ![image9](Modelica.Electrical.Spice3.ExamplesS.p Example circuits
  ng)                                              
  [Examples](Modelica_Electrical_Spice3_Examples.h 
  tml#Modelica.Electrical.Spice3.Examples)         

  ![image10](Modelica.Electrical.Spice3.BasicS.png Basic electronical
  )                                                components
  [Basic](Modelica_Electrical_Spice3_Basic.html#Mo 
  delica.Electrical.Spice3.Basic)                  

  ![image11](Modelica.Electrical.Spice3.BasicS.png Semiconductor devices
  )                                                and model cards
  [Semiconductors](Modelica_Electrical_Spice3_Semi 
  conductors.html#Modelica.Electrical.Spice3.Semic 
  onductors)                                       

  ![image12](Modelica.Electrical.Spice3.SourcesS.p Time dependent SPICE3
  ng)                                              voltage and current
  [Sources](Modelica_Electrical_Spice3_Sources.htm sources
  l#Modelica.Electrical.Spice3.Sources)            

  ![image13](Modelica.Electrical.Spice3.Additional Some useful additional
  sS.png)                                          models, e.g., from
  [Additionals](Modelica_Electrical_Spice3_Additio SPICE2 the polynomial
  nals.html#Modelica.Electrical.Spice3.Additionals sources
  )                                                

  ![image14](Modelica.Electrical.Spice3.Interfaces Connectors, Interfaces,
  S.png)                                           and partial models
  [Interfaces](Modelica_Electrical_Spice3_Interfac 
  es.html#Modelica.Electrical.Spice3.Interfaces)   

  ![image15](Modelica.Electrical.Spice3.InternalS. Collection of functions
  png)                                             and records derived
  [Internal](Modelica_Electrical_Spice3_Internal.h from the C++ Spice
  tml#Modelica.Electrical.Spice3.Internal)         library
  ------------------------------------------------------------------------

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:44 2010.
