% Modelica.Electrical.Digital:
  [Modelica.Electrical](Modelica_Electrical.html#Modelica.Electrical).Digital
% 
% 

**Library for digital electrical components based on the VHDL standard
with 9-valued logic and conversion to 2-,3-,4-valued logic**

Information
===========

::

This library contains packages for digital electrical components. Both,
type system and models are based on the VHDL standard (IEEE Std
1076-1987 VHDL, IEEE Std 1076-1993 VHDL, IEEE Std 1164 Multivalue Logic
System):

-   Interfaces: Definition of signals and interfaces
-   Tables: All truth tables needed
-   Delay: Transport and inertial delay
-   Basic: Basic logic without delay
-   Gates: Basic gates composed by basic components and inertial delay
-   Tristate: (not yet available)
-   FlipFlops: D-Flip-Flops
-   Latches: D-Latches
-   TransferGates: (not yet available)
-   Multiplexers (not yet available)
-   Memory: Ram, Rom, (not yet available)
-   Sources: Time-dependend signal sources
-   Converters
-   Examples

The logic values are coded by integer values. The following code table
is necessary for both setting of input and interpreting the output
values.

**Code Table:**

  -------------------- --------------------- ---------------------
  **Logic value**      **Integer code**      **Meaning**
  'U'                  1                     Uninitialized
  'X'                  2                     Forcing Unknown
  '0'                  3                     Forcing 0
  '1'                  4                     Forcing 1
  'Z'                  5                     High Impedance
  'W'                  6                     Weak Unknown
  'L'                  7                     Weak 0
  'H'                  8                     Weak 1
  '-'                  9                     Don't care
  -------------------- --------------------- ---------------------

The library will be developed in two main steps. The first step contains
the basic components and the gates. In the next step the more
complicated devices will be added. Currently the first step of the
library is implemented and released for public use.

Copyright © 1998-2010, Modelica Association and Fraunhofer-Gesellschaft.

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
  Name                                           Description
  ---------------------------------------------- -------------------------
  ![image11](Modelica.Electrical.Digital.UsersGu User's Guide
  ideS.png)                                      
  [UsersGuide](Modelica_Electrical_Digital_Users 
  Guide.html#Modelica.Electrical.Digital.UsersGu 
  ide)                                           

  ![image12](Modelica.Electrical.Digital.Example Examples that demonstrate
  sS.png)                                        the usage of the Digital
  [Examples](Modelica_Electrical_Digital_Example electrical components
  s.html#Modelica.Electrical.Digital.Examples)   

  ![image13](Modelica.Electrical.Digital.Interfa Basic definitions
  cesS.png)                                      
  [Interfaces](Modelica_Electrical_Digital_Inter 
  faces.html#Modelica.Electrical.Digital.Interfa 
  ces)                                           

  ![image14](Modelica.Electrical.Digital.TablesS Truth tables for all
  .png)                                          components of package
  [Tables](Modelica_Electrical_Digital_Tables.ht Digital
  ml#Modelica.Electrical.Digital.Tables)         

  ![image15](Modelica.Electrical.Digital.TablesS Delay blocks
  .png)                                          
  [Delay](Modelica_Electrical_Digital_Delay.html 
  #Modelica.Electrical.Digital.Delay)            

  ![image16](Modelica.Electrical.Digital.TablesS Basic logic blocks
  .png)                                          without delays
  [Basic](Modelica_Electrical_Digital_Basic.html 
  #Modelica.Electrical.Digital.Basic)            

  ![image17](Modelica.Electrical.Digital.TablesS Logic gates including
  .png)                                          delays
  [Gates](Modelica_Electrical_Digital_Gates.html 
  #Modelica.Electrical.Digital.Gates)            

  ![image18](Modelica.Electrical.Digital.Sources Time-dependend digital
  S.png)                                         signal sources
  [Sources](Modelica_Electrical_Digital_Sources. 
  html#Modelica.Electrical.Digital.Sources)      

  ![image19](Modelica.Electrical.Digital.Convert Converters between
  ersS.png)                                      2-,3-,4- and 9-valued
  [Converters](Modelica_Electrical_Digital_Conve logic
  rters.html#Modelica.Electrical.Digital.Convert 
  ers)                                           

  ![image20](Modelica.Electrical.Digital.Convert Registers with N-bit
  ersS.png)                                      input data and output
  [Registers](Modelica_Electrical_Digital_Regist data
  ers.html#Modelica.Electrical.Digital.Registers 
  )                                              

  ![image21](Modelica.Electrical.Digital.Convert Transfergates, Buffers,
  ersS.png)                                      Inverters, and WiredX
  [Tristates](Modelica_Electrical_Digital_Trista 
  tes.html#Modelica.Electrical.Digital.Tristates 
  )                                              
  ------------------------------------------------------------------------

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:19 2010.
