% Modelica.Thermal.FluidHeatFlow.Examples.Utilities
% 
% 

[Modelica.Thermal.FluidHeatFlow.Examples](Modelica_Thermal_FluidHeatFlow_Examples.html#Modelica.Thermal.FluidHeatFlow.Examples).Utilities
=========================================================================================================================================

**Utility models for examples**

Information
-----------

::

This package contains utility components used for the test examples.

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
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                            Descript
                                                                  ion
  --------------------------------------------------------------- --------
  ![image1](Modelica.Thermal.FluidHeatFlow.Examples.Utilities.Dou Ramp
  bleRampS.png)                                                   going up
  [DoubleRamp](Modelica_Thermal_FluidHeatFlow_Examples_Utilities. and down
  html#Modelica.Thermal.FluidHeatFlow.Examples.Utilities.DoubleRa 
  mp)                                                             
  ------------------------------------------------------------------------

* * * * *

![image2](Modelica.Thermal.FluidHeatFlow.Examples.Utilities.DoubleRampI.png) [Modelica.Thermal.FluidHeatFlow.Examples.Utilities](Modelica_Thermal_FluidHeatFlow_Examples_Utilities.html#Modelica.Thermal.FluidHeatFlow.Examples.Utilities).DoubleRamp
=====================================================================================================================================================================================================================================================

**Ramp going up and down**

Information
-----------

::

Block generating the sum of two ramps.

::

Extends from
[Modelica.Blocks.Interfaces.SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name    Defau Description
                                       lt    
  ---------------------------- ------- ----- ------------------------------
  Real                         offset        Offset of ramps

  [Time](Modelica_SIunits.html startTi       StartTime of 1st ramp [s]
  #Modelica.SIunits.Time)      me            

  [Time](Modelica_SIunits.html interva       Interval between end of 1st
  #Modelica.SIunits.Time)      l             and beginning of 2nd ramp [s]

  Ramp 1                                     

  Real                         height\       Height of ramp
                               _1            

  [Time](Modelica_SIunits.html duratio       Duration of ramp [s]
  #Modelica.SIunits.Time)      n\_1          

  Ramp 2                                     

  Real                         height\       Height of ramp
                               _2            

  [Time](Modelica_SIunits.html duratio       Duration of ramp [s]
  #Modelica.SIunits.Time)      n\_2          
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model DoubleRamp "Ramp going up and down"
      extends Modelica.Blocks.Interfaces.SO;
      parameter Real offset(start=1) "Offset of ramps";
      parameter Modelica.SIunits.Time startTime(start=0.2) "StartTime of 1st ramp";
      parameter Modelica.SIunits.Time interval(start=0.2) 
        "Interval between end of 1st and beginning of 2nd ramp";
      parameter Real height_1(start=-1) "Height of ramp";
      parameter Modelica.SIunits.Time duration_1(min=Modelica.Constants.small, start=0.2) 
        "Duration of ramp";
      parameter Real height_2(start=1) "Height of ramp";
      parameter Modelica.SIunits.Time duration_2(min=Modelica.Constants.small, start=0.2) 
        "Duration of ramp";

      Modelica.Blocks.Math.Add add;
      Modelica.Blocks.Sources.Ramp ramp1(
        final height=height_1,
        final duration=duration_1,
        final startTime=startTime,
        final offset=offset);
      Modelica.Blocks.Sources.Ramp ramp2(
        final height=height_2,
        final duration=duration_2,
        final startTime=startTime + duration_1 + interval,
        final offset=0);
    equation 
      connect(ramp1.y, add.u1);
      connect(ramp2.y, add.u2);
      connect(add.y, y);
    end DoubleRamp;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:43 2010.
