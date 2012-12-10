% Modelica.Media.Examples.Tests.MediaTestModels.IdealGases
% 
% 

[Modelica.Media.Examples.Tests.MediaTestModels](Modelica_Media_Examples_Tests_MediaTestModels.html#Modelica.Media.Examples.Tests.MediaTestModels).IdealGases
============================================================================================================================================================

**Test models of library Modelica.Media.IdealGases**

Information
-----------

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                     Description
  -------------------------------------------------------- ---------------
  ![image4](Modelica.Media.Examples.Tests.MediaTestModels. Test single gas
  Air.SimpleAirS.png)                                      Modelica.Media.
  [Air](Modelica_Media_Examples_Tests_MediaTestModels_Idea IdealGases.Sing
  lGases.html#Modelica.Media.Examples.Tests.MediaTestModel leGases.Air
  s.IdealGases.Air)                                        

  ![image5](Modelica.Media.Examples.Tests.MediaTestModels. Test single gas
  Air.SimpleAirS.png)                                      Modelica.Media.
  [Nitrogen](Modelica_Media_Examples_Tests_MediaTestModels IdealGases.Sing
  _IdealGases.html#Modelica.Media.Examples.Tests.MediaTest leGases.N2
  Models.IdealGases.Nitrogen)                              

  ![image6](Modelica.Media.Examples.Tests.MediaTestModels. Test mixture
  Air.SimpleAirS.png)                                      gas
  [SimpleNaturalGas](Modelica_Media_Examples_Tests_MediaTe Modelica.Media.
  stModels_IdealGases.html#Modelica.Media.Examples.Tests.M IdealGases.Mixt
  ediaTestModels.IdealGases.SimpleNaturalGas)              ureGases.Simple
                                                           NaturalGas

  ![image7](Modelica.Media.Examples.Tests.MediaTestModels. Test mixture
  Air.SimpleAirS.png)                                      gas
  [SimpleNaturalGasFixedComposition](Modelica_Media_Exampl Modelica.Media.
  es_Tests_MediaTestModels_IdealGases.html#Modelica.Media. IdealGases.Mixt
  Examples.Tests.MediaTestModels.IdealGases.SimpleNaturalG ureGases.Simple
  asFixedComposition)                                      NaturalGas
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.AirI.png) [Modelica.Media.Examples.Tests.MediaTestModels.IdealGases](Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases).Air
===================================================================================================================================================================================================================================================================

**Test single gas Modelica.Media.IdealGases.SingleGases.Air**

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

    model Air "Test single gas Modelica.Media.IdealGases.SingleGases.Air"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.Air.DryAirNasa);
    end Air;

* * * * *

![image9](Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.AirI.png) [Modelica.Media.Examples.Tests.MediaTestModels.IdealGases](Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases).Nitrogen
========================================================================================================================================================================================================================================================================

**Test single gas Modelica.Media.IdealGases.SingleGases.N2**

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

    model Nitrogen 
      "Test single gas Modelica.Media.IdealGases.SingleGases.N2"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.IdealGases.SingleGases.N2);
    end Nitrogen;

* * * * *

![image10](Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.AirI.png) [Modelica.Media.Examples.Tests.MediaTestModels.IdealGases](Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases).SimpleNaturalGas
=================================================================================================================================================================================================================================================================================

**Test mixture gas
Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas**

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

    model SimpleNaturalGas 
      "Test mixture gas Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas);
    end SimpleNaturalGas;

* * * * *

![image11](Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.AirI.png) [Modelica.Media.Examples.Tests.MediaTestModels.IdealGases](Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases).SimpleNaturalGasFixedComposition
=================================================================================================================================================================================================================================================================================================

**Test mixture gas
Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas**

Information
-----------

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

    model SimpleNaturalGasFixedComposition 
      "Test mixture gas Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGasFixedComposition);
    end SimpleNaturalGasFixedComposition;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:27 2010.
