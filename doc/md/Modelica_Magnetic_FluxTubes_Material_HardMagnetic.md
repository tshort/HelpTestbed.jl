% Modelica.Magnetic.FluxTubes.Material.HardMagnetic
% 
% 

[Modelica.Magnetic.FluxTubes.Material](Modelica_Magnetic_FluxTubes_Material.html#Modelica.Magnetic.FluxTubes.Material).HardMagnetic
===================================================================================================================================

**Characteristics of common permanent magnetic materials (temperature
dependence considered)**

Information
-----------

::

Typical values for remanence, coercivity and the temperature coefficient
of remanence are provided for the common permanent magnetic materials
illustrated below.

Linear demagnetization curves are modelled. The characteristic,
temperature-dependent "knee" of many permanent magnetic materials is not
considered, since proper design of permanent magnetic circuits should
avoid operation of permanent magnets "below" that point due to partial
demagnetization. As a result, the temperature coefficient of coercivity
is not considered. Only the temperature coefficient of remanence
alpha\_Br is accounted for, since it describes the dependende of the
demagnetization curve on the temperature sufficiently for the region
"above the knee-point".

Additional user-specific materials can be defined as needed.

::

Extends from
[Modelica.Icons.MaterialPropertiesPackage](Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage)
(Icon for package containing property classes).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image8](Modelica.Magnetic.FluxTubes.Material.SoftMagneti Record for
  c.Steel.Steel_9SMnPb28S.png)                               permanent
  [BaseData](Modelica_Magnetic_FluxTubes_Material_HardMagnet magnetic
  ic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic. material data
  BaseData)                                                  

  ![image9](Modelica.Magnetic.FluxTubes.Material.SoftMagneti NdFeB
  c.Steel.Steel_9SMnPb28S.png)                               sintered;
  [NdFeB](Modelica_Magnetic_FluxTubes_Material_HardMagnetic. exemplary
  html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.NdF values
  eB)                                                        

  ![image10](Modelica.Magnetic.FluxTubes.Material.SoftMagnet Sm2Co17
  ic.Steel.Steel_9SMnPb28S.png)                              sintered,
  [Sm2Co17](Modelica_Magnetic_FluxTubes_Material_HardMagneti exemplary
  c.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.S values
  m2Co17)                                                    

  ![image11](Modelica.Magnetic.FluxTubes.Material.SoftMagnet SmCo5
  ic.Steel.Steel_9SMnPb28S.png)                              sintered,
  [SmCo5](Modelica_Magnetic_FluxTubes_Material_HardMagnetic. exemplary
  html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.SmC values
  o5)                                                        

  ![image12](Modelica.Magnetic.FluxTubes.Material.SoftMagnet Plastic-bonde
  ic.Steel.Steel_9SMnPb28S.png)                              d
  [PlasticNdFeB](Modelica_Magnetic_FluxTubes_Material_HardMa NdFeB,
  gnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagne exemplary
  tic.PlasticNdFeB)                                          values

  ![image13](Modelica.Magnetic.FluxTubes.Material.SoftMagnet Plastic-bonde
  ic.Steel.Steel_9SMnPb28S.png)                              d
  [PlasticSmCo](Modelica_Magnetic_FluxTubes_Material_HardMag Sm-Co,
  netic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnet exemplary
  ic.PlasticSmCo)                                            values

  ![image14](Modelica.Magnetic.FluxTubes.Material.SoftMagnet Hard ferrite
  ic.Steel.Steel_9SMnPb28S.png)                              sintered,
  [HardFerrite](Modelica_Magnetic_FluxTubes_Material_HardMag exemplary
  netic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnet values
  ic.HardFerrite)                                            

  ![image15](Modelica.Magnetic.FluxTubes.Material.SoftMagnet Plastic-bonde
  ic.Steel.Steel_9SMnPb28S.png)                              d
  [PlasticHardFerrite](Modelica_Magnetic_FluxTubes_Material_ hard ferrite,
  HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.Har exemplary
  dMagnetic.PlasticHardFerrite)                              values
  ------------------------------------------------------------------------

* * * * *

![image16](Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png) [Modelica.Magnetic.FluxTubes.Material.HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic).BaseData
==================================================================================================================================================================================================================================================

**Record for permanent magnetic material data**

Information
-----------

::

Please refer to the description of the enclosing package
[HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic)
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name Defa Description
                                             ult  
  ------------------------------------- ---- ---- -------------------------
  [MagneticFieldStrength](Modelica_SIun H\_c 1    Coercivity at reference
  its.html#Modelica.SIunits.MagneticFie BRef      temperature [A/m]
  ldStrength)                                     

  [MagneticFluxDensity](Modelica_SIunit B\_r 1    Remanence at reference
  s.html#Modelica.SIunits.MagneticFluxD Ref       temperature [T]
  ensity)                                         

  [Temperature](Modelica_SIunits.html#M T\_r 293. Reference temperature [K]
  odelica.SIunits.Temperature)          ef   15   

  [LinearTemperatureCoefficient](Modeli alph 0    Temperature coefficient
  ca_SIunits.html#Modelica.SIunits.Line a\_B      of remanence at reference
  arTemperatureCoefficient)             r         temperature [1/K]

  [Temperature](Modelica_SIunits.html#M T\_o 293. Operating temperature [K]
  odelica.SIunits.Temperature)          p    15   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record BaseData "Record for permanent magnetic material data"
      extends Modelica.Icons.Record;

      parameter SI.MagneticFieldStrength H_cBRef = 1 
        "Coercivity at reference temperature";
      parameter SI.MagneticFluxDensity B_rRef = 1 
        "Remanence at reference temperature";
      parameter SI.Temperature T_ref = 293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_Br=
                                                            0 
        "Temperature coefficient of remanence at reference temperature";

      parameter SI.Temperature T_op = 293.15 "Operating temperature";

      final parameter SI.MagneticFluxDensity B_r = B_rRef * (1 + alpha_Br *(T_op - T_ref)) 
        "Remanence at operating temperature";
      final parameter SI.MagneticFieldStrength H_cB = H_cBRef * (1 + alpha_Br *(T_op - T_ref)) 
        "Coercivity at operating temperature";
      final parameter SI.RelativePermeability mu_r = B_r/ (mu_0 * H_cB) 
        "Relative permeability";

    end BaseData;

* * * * *

![image17](Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png) [Modelica.Magnetic.FluxTubes.Material.HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic).NdFeB
===============================================================================================================================================================================================================================================

**NdFeB sintered; exemplary values**

Information
-----------

::

Please refer to the description of the enclosing package
[HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic)
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
[Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData)
(Record for permanent magnetic material data).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                 Name Defau Description
                                            lt    
  ------------------------------------ ---- ----- ------------------------
  [MagneticFieldStrength](Modelica_SIu H\_c 90000 Coercivity at reference
  nits.html#Modelica.SIunits.MagneticF BRef 0     temperature [A/m]
  ieldStrength)                                   

  [MagneticFluxDensity](Modelica_SIuni B\_r 1.2   Remanence at reference
  ts.html#Modelica.SIunits.MagneticFlu Ref        temperature [T]
  xDensity)                                       

  [Temperature](Modelica_SIunits.html# T\_r 20 +  Reference temperature
  Modelica.SIunits.Temperature)        ef   273.1 [K]
                                            5     

  [LinearTemperatureCoefficient](Model alph -0.00 Temperature coefficient
  ica_SIunits.html#Modelica.SIunits.Li a\_B 1     of remanence at
  nearTemperatureCoefficient)          r          reference temperature
                                                  [1/K]

  [Temperature](Modelica_SIunits.html# T\_o 293.1 Operating temperature
  Modelica.SIunits.Temperature)        p    5     [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record NdFeB "NdFeB sintered; exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=900000,
        B_rRef=1.2,
        T_ref=20 + 273.15,
        alpha_Br=-0.001);
    end NdFeB;

* * * * *

![image18](Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png) [Modelica.Magnetic.FluxTubes.Material.HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic).Sm2Co17
=================================================================================================================================================================================================================================================

**Sm2Co17 sintered, exemplary values**

Information
-----------

::

Please refer to the description of the enclosing package
[HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic)
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
[Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData)
(Record for permanent magnetic material data).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                 Name Defau Description
                                            lt    
  ------------------------------------ ---- ----- ------------------------
  [MagneticFieldStrength](Modelica_SIu H\_c 75000 Coercivity at reference
  nits.html#Modelica.SIunits.MagneticF BRef 0     temperature [A/m]
  ieldStrength)                                   

  [MagneticFluxDensity](Modelica_SIuni B\_r 1.02  Remanence at reference
  ts.html#Modelica.SIunits.MagneticFlu Ref        temperature [T]
  xDensity)                                       

  [Temperature](Modelica_SIunits.html# T\_r 20 +  Reference temperature
  Modelica.SIunits.Temperature)        ef   273.1 [K]
                                            5     

  [LinearTemperatureCoefficient](Model alph -0.00 Temperature coefficient
  ica_SIunits.html#Modelica.SIunits.Li a\_B 03    of remanence at
  nearTemperatureCoefficient)          r          reference temperature
                                                  [1/K]

  [Temperature](Modelica_SIunits.html# T\_o 293.1 Operating temperature
  Modelica.SIunits.Temperature)        p    5     [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record Sm2Co17 "Sm2Co17 sintered, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=750000,
        B_rRef=1.02,
        T_ref=20 + 273.15,
        alpha_Br=-0.0003);
    end Sm2Co17;

* * * * *

![image19](Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png) [Modelica.Magnetic.FluxTubes.Material.HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic).SmCo5
===============================================================================================================================================================================================================================================

**SmCo5 sintered, exemplary values**

Information
-----------

::

Please refer to the description of the enclosing package
[HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic)
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
[Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData)
(Record for permanent magnetic material data).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                 Name Defau Description
                                            lt    
  ------------------------------------ ---- ----- ------------------------
  [MagneticFieldStrength](Modelica_SIu H\_c 72000 Coercivity at reference
  nits.html#Modelica.SIunits.MagneticF BRef 0     temperature [A/m]
  ieldStrength)                                   

  [MagneticFluxDensity](Modelica_SIuni B\_r 0.95  Remanence at reference
  ts.html#Modelica.SIunits.MagneticFlu Ref        temperature [T]
  xDensity)                                       

  [Temperature](Modelica_SIunits.html# T\_r 20 +  Reference temperature
  Modelica.SIunits.Temperature)        ef   273.1 [K]
                                            5     

  [LinearTemperatureCoefficient](Model alph -0.00 Temperature coefficient
  ica_SIunits.html#Modelica.SIunits.Li a\_B 04    of remanence at
  nearTemperatureCoefficient)          r          reference temperature
                                                  [1/K]

  [Temperature](Modelica_SIunits.html# T\_o 293.1 Operating temperature
  Modelica.SIunits.Temperature)        p    5     [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record SmCo5 "SmCo5 sintered, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=720000,
        B_rRef=0.95,
        T_ref=20 + 273.15,
        alpha_Br=-0.0004);
    end SmCo5;

* * * * *

![image20](Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png) [Modelica.Magnetic.FluxTubes.Material.HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic).PlasticNdFeB
======================================================================================================================================================================================================================================================

**Plastic-bonded NdFeB, exemplary values**

Information
-----------

::

Please refer to the description of the enclosing package
[HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic)
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
[Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData)
(Record for permanent magnetic material data).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                 Name Defau Description
                                            lt    
  ------------------------------------ ---- ----- ------------------------
  [MagneticFieldStrength](Modelica_SIu H\_c 40000 Coercivity at reference
  nits.html#Modelica.SIunits.MagneticF BRef 0     temperature [A/m]
  ieldStrength)                                   

  [MagneticFluxDensity](Modelica_SIuni B\_r 0.58  Remanence at reference
  ts.html#Modelica.SIunits.MagneticFlu Ref        temperature [T]
  xDensity)                                       

  [Temperature](Modelica_SIunits.html# T\_r 20 +  Reference temperature
  Modelica.SIunits.Temperature)        ef   273.1 [K]
                                            5     

  [LinearTemperatureCoefficient](Model alph -0.00 Temperature coefficient
  ica_SIunits.html#Modelica.SIunits.Li a\_B 1     of remanence at
  nearTemperatureCoefficient)          r          reference temperature
                                                  [1/K]

  [Temperature](Modelica_SIunits.html# T\_o 293.1 Operating temperature
  Modelica.SIunits.Temperature)        p    5     [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record PlasticNdFeB "Plastic-bonded NdFeB, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=400000,
        B_rRef=0.58,
        T_ref=20 + 273.15,
        alpha_Br=-0.001);
    end PlasticNdFeB;

* * * * *

![image21](Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png) [Modelica.Magnetic.FluxTubes.Material.HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic).PlasticSmCo
=====================================================================================================================================================================================================================================================

**Plastic-bonded Sm-Co, exemplary values**

Information
-----------

::

Please refer to the description of the enclosing package
[HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic)
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
[Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData)
(Record for permanent magnetic material data).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                 Name Defau Description
                                            lt    
  ------------------------------------ ---- ----- ------------------------
  [MagneticFieldStrength](Modelica_SIu H\_c 38500 Coercivity at reference
  nits.html#Modelica.SIunits.MagneticF BRef 0     temperature [A/m]
  ieldStrength)                                   

  [MagneticFluxDensity](Modelica_SIuni B\_r 0.57  Remanence at reference
  ts.html#Modelica.SIunits.MagneticFlu Ref        temperature [T]
  xDensity)                                       

  [Temperature](Modelica_SIunits.html# T\_r 20 +  Reference temperature
  Modelica.SIunits.Temperature)        ef   273.1 [K]
                                            5     

  [LinearTemperatureCoefficient](Model alph -0.00 Temperature coefficient
  ica_SIunits.html#Modelica.SIunits.Li a\_B 04    of remanence at
  nearTemperatureCoefficient)          r          reference temperature
                                                  [1/K]

  [Temperature](Modelica_SIunits.html# T\_o 293.1 Operating temperature
  Modelica.SIunits.Temperature)        p    5     [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record PlasticSmCo "Plastic-bonded Sm-Co, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=385000,
        B_rRef=0.57,
        T_ref=20 + 273.15,
        alpha_Br=-0.0004);
    end PlasticSmCo;

* * * * *

![image22](Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png) [Modelica.Magnetic.FluxTubes.Material.HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic).HardFerrite
=====================================================================================================================================================================================================================================================

**Hard ferrite sintered, exemplary values**

Information
-----------

::

Please refer to the description of the enclosing package
[HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic)
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
[Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData)
(Record for permanent magnetic material data).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                 Name Defau Description
                                            lt    
  ------------------------------------ ---- ----- ------------------------
  [MagneticFieldStrength](Modelica_SIu H\_c 17000 Coercivity at reference
  nits.html#Modelica.SIunits.MagneticF BRef 0     temperature [A/m]
  ieldStrength)                                   

  [MagneticFluxDensity](Modelica_SIuni B\_r 0.38  Remanence at reference
  ts.html#Modelica.SIunits.MagneticFlu Ref        temperature [T]
  xDensity)                                       

  [Temperature](Modelica_SIunits.html# T\_r 20 +  Reference temperature
  Modelica.SIunits.Temperature)        ef   273.1 [K]
                                            5     

  [LinearTemperatureCoefficient](Model alph -0.00 Temperature coefficient
  ica_SIunits.html#Modelica.SIunits.Li a\_B 2     of remanence at
  nearTemperatureCoefficient)          r          reference temperature
                                                  [1/K]

  [Temperature](Modelica_SIunits.html# T\_o 293.1 Operating temperature
  Modelica.SIunits.Temperature)        p    5     [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record HardFerrite "Hard ferrite sintered, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=170000,
        B_rRef=0.38,
        T_ref=20 + 273.15,
        alpha_Br=-0.002);
    end HardFerrite;

* * * * *

![image23](Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseDataI.png) [Modelica.Magnetic.FluxTubes.Material.HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic).PlasticHardFerrite
============================================================================================================================================================================================================================================================

**Plastic-bonded hard ferrite, exemplary values**

Information
-----------

::

Please refer to the description of the enclosing package
[HardMagnetic](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic)
for a description of all permanent magnetic material characteristics of
this package.

::

Extends from
[Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData](Modelica_Magnetic_FluxTubes_Material_HardMagnetic.html#Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData)
(Record for permanent magnetic material data).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                 Name Defau Description
                                            lt    
  ------------------------------------ ---- ----- ------------------------
  [MagneticFieldStrength](Modelica_SIu H\_c 13000 Coercivity at reference
  nits.html#Modelica.SIunits.MagneticF BRef 0     temperature [A/m]
  ieldStrength)                                   

  [MagneticFluxDensity](Modelica_SIuni B\_r 0.21  Remanence at reference
  ts.html#Modelica.SIunits.MagneticFlu Ref        temperature [T]
  xDensity)                                       

  [Temperature](Modelica_SIunits.html# T\_r 20 +  Reference temperature
  Modelica.SIunits.Temperature)        ef   273.1 [K]
                                            5     

  [LinearTemperatureCoefficient](Model alph -0.00 Temperature coefficient
  ica_SIunits.html#Modelica.SIunits.Li a\_B 2     of remanence at
  nearTemperatureCoefficient)          r          reference temperature
                                                  [1/K]

  [Temperature](Modelica_SIunits.html# T\_o 293.1 Operating temperature
  Modelica.SIunits.Temperature)        p    5     [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record PlasticHardFerrite 
      "Plastic-bonded hard ferrite, exemplary values"
      extends Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData(
        H_cBRef=130000,
        B_rRef=0.21,
        T_ref=20 + 273.15,
        alpha_Br=-0.002);
    end PlasticHardFerrite;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:52 2010.
