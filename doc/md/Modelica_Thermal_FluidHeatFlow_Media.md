% Modelica.Thermal.FluidHeatFlow.Media
% 
% 

[Modelica.Thermal.FluidHeatFlow](Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow).Media
==========================================================================================================

**Medium properties**

Information
-----------

::

This package contains definitions of medium properties.

**Main Authors:**
  ~ [Anton Haumer](http://www.haumer.at/)
      ~ Technical Consulting & Electrical Engineering A-3423
        St.Andrae-Woerdern, Austria email:
        [[a.haumer@haumer.at](mailto:a.haumer@haumer.at)](mailto:a.haumer@haumer.at)

    Dr. Christian Kral
      ~ [Austrian Institute of Technology, AIT](http://www.ait.ac.at/)
        Giefinggasse 2 A-1210 Vienna, Austria

Copyright © 1998-2010, Modelica Association, Anton Haumer and Austrian
Institute of Technology, AIT.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
[Modelica.UsersGuide.ModelicaLicense2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2)
or visit
[[http://www.modelica.org/licenses/ModelicaLicense2](http://www.modelica.org/licenses/ModelicaLicense2)](http://www.modelica.org/licenses/ModelicaLicense2).*

::

Extends from
[Modelica.Icons.MaterialPropertiesPackage](Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage)
(Icon for package containing property classes).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image4](Modelica.Thermal.FluidHeatFlow.Media.MediumS.pn Record
  g)                                                        containing
  [Medium](Modelica_Thermal_FluidHeatFlow_Media.html#Modeli media
  ca.Thermal.FluidHeatFlow.Media.Medium)                    properties

  ![image5](Modelica.Thermal.FluidHeatFlow.Media.MediumS.pn Medium:
  g)                                                        properties of
  [Air\_30degC](Modelica_Thermal_FluidHeatFlow_Media.html#M air at 30 degC
  odelica.Thermal.FluidHeatFlow.Media.Air_30degC)           

  ![image6](Modelica.Thermal.FluidHeatFlow.Media.MediumS.pn Medium:
  g)                                                        properties of
  [Air\_70degC](Modelica_Thermal_FluidHeatFlow_Media.html#M air at 70 degC
  odelica.Thermal.FluidHeatFlow.Media.Air_70degC)           

  ![image7](Modelica.Thermal.FluidHeatFlow.Media.MediumS.pn Medium:
  g)                                                        properties of
  [Water](Modelica_Thermal_FluidHeatFlow_Media.html#Modelic water
  a.Thermal.FluidHeatFlow.Media.Water)                      
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Thermal.FluidHeatFlow.Media.MediumI.png) [Modelica.Thermal.FluidHeatFlow.Media](Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media).Medium
=========================================================================================================================================================================================

**Record containing media properties**

Information
-----------

::

Record containing (constant) medium properties.

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name Defau Description
                                             lt    
  ------------------------------------- ---- ----- ------------------------
  [Density](Modelica_SIunits.html#Model rho  1     Density [kg/m3]
  ica.SIunits.Density)                             

  [SpecificHeatCapacity](Modelica_SIuni cp   1     Specific heat capacity
  ts.html#Modelica.SIunits.SpecificHeat            at constant pressure
  Capacity)                                        [J/(kg.K)]

  [SpecificHeatCapacity](Modelica_SIuni cv   1     Specific heat capacity
  ts.html#Modelica.SIunits.SpecificHeat            at constant volume
  Capacity)                                        [J/(kg.K)]

  [ThermalConductivity](Modelica_SIunit lamd 1     Thermal conductivity
  s.html#Modelica.SIunits.ThermalConduc a          [W/(m.K)]
  tivity)                                          

  [KinematicViscosity](Modelica_SIunits nue  1     Kinematic viscosity
  .html#Modelica.SIunits.KinematicVisco            [m2/s]
  sity)                                            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record Medium "Record containing media properties"
      extends Modelica.Icons.Record;
      parameter Modelica.SIunits.Density rho = 1 "Density";
      parameter Modelica.SIunits.SpecificHeatCapacity cp = 1 
        "Specific heat capacity at constant pressure";
      parameter Modelica.SIunits.SpecificHeatCapacity cv = 1 
        "Specific heat capacity at constant volume";
      parameter Modelica.SIunits.ThermalConductivity lamda = 1 
        "Thermal conductivity";
      parameter Modelica.SIunits.KinematicViscosity nue = 1 "Kinematic viscosity";
    end Medium;

* * * * *

![image9](Modelica.Thermal.FluidHeatFlow.Media.MediumI.png) [Modelica.Thermal.FluidHeatFlow.Media](Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media).Air\_30degC
==============================================================================================================================================================================================

**Medium: properties of air at 30 degC**

Information
-----------

::

Medium: properties of air at 30 degC

::

Extends from
[Medium](Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium)
(Record containing media properties).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name Defau Description
                                             lt    
  ------------------------------------- ---- ----- ------------------------
  [Density](Modelica_SIunits.html#Model rho  1.149 Density [kg/m3]
  ica.SIunits.Density)                             

  [SpecificHeatCapacity](Modelica_SIuni cp   1007  Specific heat capacity
  ts.html#Modelica.SIunits.SpecificHeat            at constant pressure
  Capacity)                                        [J/(kg.K)]

  [SpecificHeatCapacity](Modelica_SIuni cv   720   Specific heat capacity
  ts.html#Modelica.SIunits.SpecificHeat            at constant volume
  Capacity)                                        [J/(kg.K)]

  [ThermalConductivity](Modelica_SIunit lamd 0.026 Thermal conductivity
  s.html#Modelica.SIunits.ThermalConduc a    4     [W/(m.K)]
  tivity)                                          

  [KinematicViscosity](Modelica_SIunits nue  16.3E Kinematic viscosity
  .html#Modelica.SIunits.KinematicVisco      -6    [m2/s]
  sity)                                            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record Air_30degC "Medium: properties of air at 30 degC"
    extends Medium(
      rho=1.149,
      cp=1007,
      cv= 720,
      lamda=0.0264,
      nue=16.3E-6);
    end Air_30degC;

* * * * *

![image10](Modelica.Thermal.FluidHeatFlow.Media.MediumI.png) [Modelica.Thermal.FluidHeatFlow.Media](Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media).Air\_70degC
===============================================================================================================================================================================================

**Medium: properties of air at 70 degC**

Information
-----------

::

Medium: properties of air at 70 degC

::

Extends from
[Medium](Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium)
(Record containing media properties).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name Defau Description
                                             lt    
  ------------------------------------- ---- ----- ------------------------
  [Density](Modelica_SIunits.html#Model rho  1.015 Density [kg/m3]
  ica.SIunits.Density)                             

  [SpecificHeatCapacity](Modelica_SIuni cp   1010  Specific heat capacity
  ts.html#Modelica.SIunits.SpecificHeat            at constant pressure
  Capacity)                                        [J/(kg.K)]

  [SpecificHeatCapacity](Modelica_SIuni cv   723   Specific heat capacity
  ts.html#Modelica.SIunits.SpecificHeat            at constant volume
  Capacity)                                        [J/(kg.K)]

  [ThermalConductivity](Modelica_SIunit lamd 0.029 Thermal conductivity
  s.html#Modelica.SIunits.ThermalConduc a    3     [W/(m.K)]
  tivity)                                          

  [KinematicViscosity](Modelica_SIunits nue  20.3E Kinematic viscosity
  .html#Modelica.SIunits.KinematicVisco      -6    [m2/s]
  sity)                                            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record Air_70degC "Medium: properties of air at 70 degC"
    extends Medium(
      rho=1.015,
      cp=1010,
      cv= 723,
      lamda=0.0293,
      nue=20.3E-6);
    end Air_70degC;

* * * * *

![image11](Modelica.Thermal.FluidHeatFlow.Media.MediumI.png) [Modelica.Thermal.FluidHeatFlow.Media](Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media).Water
=========================================================================================================================================================================================

**Medium: properties of water**

Information
-----------

::

Medium: properties of water

::

Extends from
[Medium](Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium)
(Record containing media properties).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name Defau Description
                                             lt    
  ------------------------------------- ---- ----- ------------------------
  [Density](Modelica_SIunits.html#Model rho  995.6 Density [kg/m3]
  ica.SIunits.Density)                             

  [SpecificHeatCapacity](Modelica_SIuni cp   4177  Specific heat capacity
  ts.html#Modelica.SIunits.SpecificHeat            at constant pressure
  Capacity)                                        [J/(kg.K)]

  [SpecificHeatCapacity](Modelica_SIuni cv   4177  Specific heat capacity
  ts.html#Modelica.SIunits.SpecificHeat            at constant volume
  Capacity)                                        [J/(kg.K)]

  [ThermalConductivity](Modelica_SIunit lamd 0.615 Thermal conductivity
  s.html#Modelica.SIunits.ThermalConduc a          [W/(m.K)]
  tivity)                                          

  [KinematicViscosity](Modelica_SIunits nue  0.8E- Kinematic viscosity
  .html#Modelica.SIunits.KinematicVisco      6     [m2/s]
  sity)                                            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record Water "Medium: properties of water"
    extends Medium(
      rho=995.6,
      cp=4177,
      cv=4177,
      lamda=0.615,
      nue=0.8E-6);
    end Water;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:43 2010.
