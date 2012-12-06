% Modelica.Media.Examples.Tests.MediaTestModels.Air
% 
% 

[Modelica.Media.Examples.Tests.MediaTestModels](Modelica_Media_Examples_Tests_MediaTestModels.html#Modelica.Media.Examples.Tests.MediaTestModels).Air
=====================================================================================================================================================

**Test models of library Modelica.Media.Air**

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
  Name                                                         Description
  ------------------------------------------------------------ -----------
  ![image3](Modelica.Media.Examples.Tests.MediaTestModels.Air. Test
  SimpleAirS.png)                                              Modelica.Me
  [SimpleAir](Modelica_Media_Examples_Tests_MediaTestModels_Ai dia.Air.Sim
  r.html#Modelica.Media.Examples.Tests.MediaTestModels.Air.Sim pleAir
  pleAir)                                                      

  ![image4](Modelica.Media.Examples.Tests.MediaTestModels.Air. Test
  SimpleAirS.png)                                              Modelica.Me
  [DryAirNasa](Modelica_Media_Examples_Tests_MediaTestModels_A dia.Air.Dry
  ir.html#Modelica.Media.Examples.Tests.MediaTestModels.Air.Dr AirNasa
  yAirNasa)                                                    

  ![image5](Modelica.Media.Examples.Tests.MediaTestModels.Air. Test
  SimpleAirS.png)                                              Modelica.Me
  [MoistAir](Modelica_Media_Examples_Tests_MediaTestModels_Air dia.Air.Moi
  .html#Modelica.Media.Examples.Tests.MediaTestModels.Air.Mois stAir
  tAir)                                                        
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirI.png) [Modelica.Media.Examples.Tests.MediaTestModels.Air](Modelica_Media_Examples_Tests_MediaTestModels_Air.html#Modelica.Media.Examples.Tests.MediaTestModels.Air).SimpleAir
===================================================================================================================================================================================================================================================

**Test Modelica.Media.Air.SimpleAir**

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

    model SimpleAir "Test Modelica.Media.Air.SimpleAir"
      extends Modelica.Icons.Example;
        extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Air.SimpleAir);
    end SimpleAir;

* * * * *

![image7](Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirI.png) [Modelica.Media.Examples.Tests.MediaTestModels.Air](Modelica_Media_Examples_Tests_MediaTestModels_Air.html#Modelica.Media.Examples.Tests.MediaTestModels.Air).DryAirNasa
====================================================================================================================================================================================================================================================

**Test Modelica.Media.Air.DryAirNasa**

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

    model DryAirNasa "Test Modelica.Media.Air.DryAirNasa"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Air.DryAirNasa);
    end DryAirNasa;

* * * * *

![image8](Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirI.png) [Modelica.Media.Examples.Tests.MediaTestModels.Air](Modelica_Media_Examples_Tests_MediaTestModels_Air.html#Modelica.Media.Examples.Tests.MediaTestModels.Air).MoistAir
==================================================================================================================================================================================================================================================

**Test Modelica.Media.Air.MoistAir**

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

    model MoistAir "Test Modelica.Media.Air.MoistAir"
        extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Air.MoistAir);
    end MoistAir;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:27 2010.
