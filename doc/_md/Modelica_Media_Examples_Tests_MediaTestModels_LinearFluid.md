% Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid
% 
% 

[Modelica.Media.Examples.Tests.MediaTestModels](Modelica_Media_Examples_Tests_MediaTestModels.html#Modelica.Media.Examples.Tests.MediaTestModels).LinearFluid
=============================================================================================================================================================

**Test models of library Modelica.Media.Incompressible**

Information
-----------

::

::

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image2](Modelica.Media.Examples.Tests.MediaTestModels.A Test
  ir.SimpleAirS.png)                                        Modelica.Media
  [LinearColdWater](Modelica_Media_Examples_Tests_MediaTest .Incompressibl
  Models_LinearFluid.html#Modelica.Media.Examples.Tests.Med e.Examples.Gly
  iaTestModels.LinearFluid.LinearColdWater)                 col47

  ![image3](Modelica.Media.Examples.Tests.MediaTestModels.A Test
  ir.SimpleAirS.png)                                        Modelica.Media
  [LinearWater\_pT](Modelica_Media_Examples_Tests_MediaTest .Incompressibl
  Models_LinearFluid.html#Modelica.Media.Examples.Tests.Med e.Examples.Ess
  iaTestModels.LinearFluid.LinearWater_pT)                  otherm65
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearColdWaterI.png) [Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid](Modelica_Media_Examples_Tests_MediaTestModels_LinearFluid.html#Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid).LinearColdWater
===============================================================================================================================================================================================================================================================================================

**Test Modelica.Media.Incompressible.Examples.Glycol47**

Information
-----------

::

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples),
[Modelica.Media.Examples.Tests.Components.PartialTestModel](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components.PartialTestModel)
(Basic test model to test a medium).

Parameters
----------

  -------------------------------------------------------------------------
  Type                   Name                           Defaul Description
                                                        t      
  ---------------------- ------------------------------ ------ ------------
  replaceable package    [PartialMedium](Modelica_Media Medium 
  Medium                 _Interfaces_PartialMedium.html model  
                         #Modelica.Media.Interfaces.Par        
                         tialMedium)                           

  [AbsolutePressure](Mod p\_start                       Medium Initial
  elica_SIunits.html#Mod                                .p\_de value of
  elica.SIunits.Absolute                                fault  pressure
  Pressure)                                                    [Pa]

  [Temperature](Modelica T\_start                       Medium Initial
  _SIunits.html#Modelica                                .T\_de value of
  .SIunits.Temperature)                                 fault  temperature
                                                               [K]

  [SpecificEnthalpy](Mod h\_start                       Medium Initial
  elica_SIunits.html#Mod                                .h\_de value of
  elica.SIunits.Specific                                fault  specific
  Enthalpy)                                                    enthalpy
                                                               [J/kg]

  Real                   X\_start[Medium.nX]            Medium Initial
                                                        .X\_de value of
                                                        fault  mass
                                                               fractions
  -------------------------------------------------------------------------

Connectors
----------

  Type                            Name              Description
  ------------------------------- ----------------- -----------------
  replaceable package Medium      Medium model      

Modelica definition
-------------------

    model LinearColdWater 
      "Test Modelica.Media.Incompressible.Examples.Glycol47"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.CompressibleLiquids.LinearColdWater);
    end LinearColdWater;

* * * * *

![image5](Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearColdWaterI.png) [Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid](Modelica_Media_Examples_Tests_MediaTestModels_LinearFluid.html#Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid).LinearWater\_pT
===============================================================================================================================================================================================================================================================================================

**Test Modelica.Media.Incompressible.Examples.Essotherm65**

Information
-----------

::

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples),
[Modelica.Media.Examples.Tests.Components.PartialTestModel](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components.PartialTestModel)
(Basic test model to test a medium).

Parameters
----------

  -------------------------------------------------------------------------
  Type                   Name                           Defaul Description
                                                        t      
  ---------------------- ------------------------------ ------ ------------
  replaceable package    [PartialMedium](Modelica_Media Medium 
  Medium                 _Interfaces_PartialMedium.html model  
                         #Modelica.Media.Interfaces.Par        
                         tialMedium)                           

  [AbsolutePressure](Mod p\_start                       Medium Initial
  elica_SIunits.html#Mod                                .p\_de value of
  elica.SIunits.Absolute                                fault  pressure
  Pressure)                                                    [Pa]

  [Temperature](Modelica T\_start                       Medium Initial
  _SIunits.html#Modelica                                .T\_de value of
  .SIunits.Temperature)                                 fault  temperature
                                                               [K]

  [SpecificEnthalpy](Mod h\_start                       Medium Initial
  elica_SIunits.html#Mod                                .h\_de value of
  elica.SIunits.Specific                                fault  specific
  Enthalpy)                                                    enthalpy
                                                               [J/kg]

  Real                   X\_start[Medium.nX]            Medium Initial
                                                        .X\_de value of
                                                        fault  mass
                                                               fractions
  -------------------------------------------------------------------------

Connectors
----------

  Type                            Name              Description
  ------------------------------- ----------------- -----------------
  replaceable package Medium      Medium model      

Modelica definition
-------------------

    model LinearWater_pT 
      "Test Modelica.Media.Incompressible.Examples.Essotherm65"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.CompressibleLiquids.LinearWater_pT_Ambient);
    end LinearWater_pT;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:28 2010.
