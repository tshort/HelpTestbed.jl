% Modelica.Media: [Modelica](Modelica.html#Modelica).Media
% 
% 

**Library of media property models**

Information
===========

::

This library contains
[interface](Modelica_Media_Interfaces.html#Modelica.Media.Interfaces)
definitions for media and the following **property** models for single
and multiple substance fluids with one and multiple phases:

-   [Ideal
    gases:](Modelica_Media_IdealGases.html#Modelica.Media.IdealGases)
      ~ 1241 high precision gas models based on the NASA Glenn
        coefficients,

    plus ideal gas mixture models based on the same data.
-   [Water models:](Modelica_Media_Water.html#Modelica.Media.Water)
      ~ ConstantPropertyLiquidWater, WaterIF97 (high precision water
        model

    according to the IAPWS/IF97 standard)
-   [Air models:](Modelica_Media_Air.html#Modelica.Media.Air)
      ~ SimpleAir, DryAirNasa, and MoistAir

-   [Incompressible
    media:](Modelica_Media_Incompressible.html#Modelica.Media.Incompressible)
      ~ TableBased incompressible fluid models (properties are defined
        by

    tables rho(T), HeatCapacity\_cp(T), etc.)
-   [Compressible
    liquids:](Modelica_Media_CompressibleLiquids.html#Modelica.Media.CompressibleLiquids)
      ~ Simple liquid models with linear compressibility

The following parts are useful, when newly starting with this library:

-   [Modelica.Media.UsersGuide](Modelica_Media_UsersGuide.html#Modelica.Media.UsersGuide).
-   [Modelica.Media.UsersGuide.MediumUsage](Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage)
    describes how to use a medium model in a component model.
-   [Modelica.Media.UsersGuide.MediumDefinition](Modelica_Media_UsersGuide_MediumDefinition.html#Modelica.Media.UsersGuide.MediumDefinition)
    describes how a new fluid medium model has to be implemented.
-   [Modelica.Media.UsersGuide.ReleaseNotes](Modelica_Media_UsersGuide.html#Modelica.Media.UsersGuide.ReleaseNotes)
    summarizes the changes of the library releases.
-   [Modelica.Media.Examples](Modelica_Media_Examples.html#Modelica.Media.Examples)
    contains examples that demonstrate the usage of this library.

Copyright © 1998-2010, Modelica Association.

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
  Name                                         Description
  -------------------------------------------- ---------------------------
  ![image9](Modelica.Media.UsersGuideS.png)    User's Guide of Media
  [UsersGuide](Modelica_Media_UsersGuide.html# Library
  Modelica.Media.UsersGuide)                   

  ![image10](Modelica.Media.ExamplesS.png)     Demonstrate usage of
  [Examples](Modelica_Media_Examples.html#Mode property models (currently:
  lica.Media.Examples)                         simple tests)

  ![image11](Modelica.Media.InterfacesS.png)   Interfaces for media models
  [Interfaces](Modelica_Media_Interfaces.html# 
  Modelica.Media.Interfaces)                   

  ![image12](Modelica.Media.CommonS.png)       data structures and
  [Common](Modelica_Media_Common.html#Modelica fundamental functions for
  .Media.Common)                               fluid properties

  ![image13](Modelica.Media.AirS.png)          Medium models for air
  [Air](Modelica_Media_Air.html#Modelica.Media 
  .Air)                                        

  ![image14](Modelica.Media.AirS.png)          compressible liquid models
  [CompressibleLiquids](Modelica_Media_Compres 
  sibleLiquids.html#Modelica.Media.Compressibl 
  eLiquids)                                    

  ![image15](Modelica.Media.AirS.png)          Data and models of ideal
  [IdealGases](Modelica_Media_IdealGases.html# gases (single, fixed and
  Modelica.Media.IdealGases)                   dynamic mixtures) from NASA
                                               source

  ![image16](Modelica.Media.AirS.png)          Medium model for
  [Incompressible](Modelica_Media_Incompressib T-dependent properties,
  le.html#Modelica.Media.Incompressible)       defined by tables or
                                               polynomials

  ![image17](Modelica.Media.AirS.png)          Medium models for water
  [Water](Modelica_Media_Water.html#Modelica.M 
  edia.Water)                                  
  ------------------------------------------------------------------------

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:25 2010.
