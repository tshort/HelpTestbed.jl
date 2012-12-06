% Modelica.Media.Examples.Tests.MediaTestModels.Water
% 
% 

[Modelica.Media.Examples.Tests.MediaTestModels](Modelica_Media_Examples_Tests_MediaTestModels.html#Modelica.Media.Examples.Tests.MediaTestModels).Water
=======================================================================================================================================================

**Test models of library Modelica.Media.Water**

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
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image5](Modelica.Media.Examples.Tests.MediaTestModels.Ai Test
  r.SimpleAirS.png)                                          Modelica.Medi
  [ConstantPropertyLiquidWater](Modelica_Media_Examples_Test a.Water.Const
  s_MediaTestModels_Water.html#Modelica.Media.Examples.Tests antPropertyLi
  .MediaTestModels.Water.ConstantPropertyLiquidWater)        quidWater

  ![image6](Modelica.Media.Examples.Tests.MediaTestModels.Ai Test
  r.SimpleAirS.png)                                          Modelica.Medi
  [IdealSteam](Modelica_Media_Examples_Tests_MediaTestModels a.Water.Ideal
  _Water.html#Modelica.Media.Examples.Tests.MediaTestModels. Steam
  Water.IdealSteam)                                          

  ![image7](Modelica.Media.Examples.Tests.MediaTestModels.Ai Test
  r.SimpleAirS.png)                                          Modelica.Medi
  [WaterIF97OnePhase\_ph](Modelica_Media_Examples_Tests_Medi a.Water.Water
  aTestModels_Water.html#Modelica.Media.Examples.Tests.Media IF97OnePhase\
  TestModels.Water.WaterIF97OnePhase_ph)                     _ph

  ![image8](Modelica.Media.Examples.Tests.MediaTestModels.Ai Test
  r.SimpleAirS.png)                                          Modelica.Medi
  [WaterIF97\_pT](Modelica_Media_Examples_Tests_MediaTestMod a.Water.Water
  els_Water.html#Modelica.Media.Examples.Tests.MediaTestMode IF97\_pT
  ls.Water.WaterIF97_pT)                                     

  ![image9](Modelica.Media.Examples.Tests.MediaTestModels.Ai Test
  r.SimpleAirS.png)                                          Modelica.Medi
  [WaterIF97\_ph](Modelica_Media_Examples_Tests_MediaTestMod a.Water.Water
  els_Water.html#Modelica.Media.Examples.Tests.MediaTestMode IF97\_ph
  ls.Water.WaterIF97_ph)                                     
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWaterI.png) [Modelica.Media.Examples.Tests.MediaTestModels.Water](Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water).ConstantPropertyLiquidWater
================================================================================================================================================================================================================================================================================================

**Test Modelica.Media.Water.ConstantPropertyLiquidWater**

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

    model ConstantPropertyLiquidWater 
      "Test Modelica.Media.Water.ConstantPropertyLiquidWater"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.Water.ConstantPropertyLiquidWater);
    end ConstantPropertyLiquidWater;

* * * * *

![image11](Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWaterI.png) [Modelica.Media.Examples.Tests.MediaTestModels.Water](Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water).IdealSteam
===============================================================================================================================================================================================================================================================================

**Test Modelica.Media.Water.IdealSteam**

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

    model IdealSteam "Test Modelica.Media.Water.IdealSteam"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Water.IdealSteam);
    end IdealSteam;

* * * * *

![image12](Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWaterI.png) [Modelica.Media.Examples.Tests.MediaTestModels.Water](Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water).WaterIF97OnePhase\_ph
==========================================================================================================================================================================================================================================================================================

**Test Modelica.Media.Water.WaterIF97OnePhase\_ph**

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

    model WaterIF97OnePhase_ph 
      "Test Modelica.Media.Water.WaterIF97OnePhase_ph"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.Water.WaterIF97OnePhase_ph,
        fixedMassFlowRate(use_T_ambient=false, h_ambient=363755),
        ambient(use_T_ambient=false, h_ambient=112570));
    end WaterIF97OnePhase_ph;

* * * * *

![image13](Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWaterI.png) [Modelica.Media.Examples.Tests.MediaTestModels.Water](Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water).WaterIF97\_pT
==================================================================================================================================================================================================================================================================================

**Test Modelica.Media.Water.WaterIF97\_pT**

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

    model WaterIF97_pT "Test Modelica.Media.Water.WaterIF97_pT"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Water.WaterIF97_pT);
    end WaterIF97_pT;

* * * * *

![image14](Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWaterI.png) [Modelica.Media.Examples.Tests.MediaTestModels.Water](Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water).WaterIF97\_ph
==================================================================================================================================================================================================================================================================================

**Test Modelica.Media.Water.WaterIF97\_ph**

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

    model WaterIF97_ph "Test Modelica.Media.Water.WaterIF97_ph"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Water.WaterIF97_ph,
        ambient(use_T_ambient=false, h_ambient=112570),
        fixedMassFlowRate(use_T_ambient=false, h_ambient=363755));
    end WaterIF97_ph;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:28 2010.
