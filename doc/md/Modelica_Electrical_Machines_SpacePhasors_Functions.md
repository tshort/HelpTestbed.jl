% Modelica.Electrical.Machines.SpacePhasors.Functions
% 
% 

[Modelica.Electrical.Machines.SpacePhasors](Modelica_Electrical_Machines_SpacePhasors.html#Modelica.Electrical.Machines.SpacePhasors).Functions
===============================================================================================================================================

**Functions for space phasor transformation**

Information
-----------

::

This package contains space phasor transformation functions for use in
calculations:

-   ToSpacePhasor: transforms a set of threephase values to space phasor
    and zero sequence system
-   FromSpacePhasor: transforms a space phasor and zero sequence system
    to a set of threephase values
-   Rotator: rotates a space phasor (from one coordinate system into
    another)
-   ToPolar: Converts a space phasor from rectangular coordinates to
    polar coordinates
-   FromPolar: Converts a space phasor from polar coordinates to
    rectangular coordinates

Space phasors are defined as vectors of length = 2, the first element
representing the real part and the second element representing the
imaginary part of the space phasor.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image7](Modelica.Electrical.Machines.SpacePhasors.Funct Conversion:
  ions.ToSpacePhasorS.png)                                  three phase
  [ToSpacePhasor](Modelica_Electrical_Machines_SpacePhasors -\> space
  _Functions.html#Modelica.Electrical.Machines.SpacePhasors phasor
  .Functions.ToSpacePhasor)                                 

  ![image8](Modelica.Electrical.Machines.SpacePhasors.Funct Conversion:
  ions.ToSpacePhasorS.png)                                  space phasor
  [FromSpacePhasor](Modelica_Electrical_Machines_SpacePhaso -\> three
  rs_Functions.html#Modelica.Electrical.Machines.SpacePhaso phase
  rs.Functions.FromSpacePhasor)                             

  ![image9](Modelica.Electrical.Machines.SpacePhasors.Funct Rotates space
  ions.ToSpacePhasorS.png)                                  phasor
  [Rotator](Modelica_Electrical_Machines_SpacePhasors_Funct 
  ions.html#Modelica.Electrical.Machines.SpacePhasors.Funct 
  ions.Rotator)                                             

  ![image10](Modelica.Electrical.Machines.SpacePhasors.Func Converts a
  tions.ToSpacePhasorS.png)                                 space phasor
  [ToPolar](Modelica_Electrical_Machines_SpacePhasors_Funct to polar
  ions.html#Modelica.Electrical.Machines.SpacePhasors.Funct coordinates
  ions.ToPolar)                                             

  ![image11](Modelica.Electrical.Machines.SpacePhasors.Func Converts a
  tions.ToSpacePhasorS.png)                                 space phasor
  [FromPolar](Modelica_Electrical_Machines_SpacePhasors_Fun from polar
  ctions.html#Modelica.Electrical.Machines.SpacePhasors.Fun coordinates
  ctions.FromPolar)                                         

  ![image12](Modelica.Electrical.Machines.SpacePhasors.Func Calculate
  tions.ToSpacePhasorS.png)                                 quasi-RMS
  [quasiRMS](Modelica_Electrical_Machines_SpacePhasors_Func value of input
  tions.html#Modelica.Electrical.Machines.SpacePhasors.Func 
  tions.quasiRMS)                                           

  ![image13](Modelica.Electrical.Machines.SpacePhasors.Func Calculate
  tions.ToSpacePhasorS.png)                                 active power
  [activePower](Modelica_Electrical_Machines_SpacePhasors_F of voltage and
  unctions.html#Modelica.Electrical.Machines.SpacePhasors.F current input
  unctions.activePower)                                     
  ------------------------------------------------------------------------

* * * * *

![image14](Modelica.Electrical.Machines.SpacePhasors.Functions.ToSpacePhasorI.png) [Modelica.Electrical.Machines.SpacePhasors.Functions](Modelica_Electrical_Machines_SpacePhasors_Functions.html#Modelica.Electrical.Machines.SpacePhasors.Functions).ToSpacePhasor
====================================================================================================================================================================================================================================================================

**Conversion: three phase -\> space phasor**

Information
-----------

::

Transformation of three phase values (voltages or currents) to space
phasor and zero sequence value: y[k] = X0 + {cos(-(k -
1)/m\*2\*pi),-sin(-(k - 1)/m\*2\*pi)}\*X[Re,Im] were y designates three
phase values, X[Re,Im] designates the space phasor and X0 designates the
zero sequence system.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      x[3]                   

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y[2]      
  Real      y0        

Modelica definition
-------------------

    function ToSpacePhasor "Conversion: three phase -> space phasor"
      extends Modelica.Icons.Function;
      constant Integer m=3 "Number of phases";
      constant Real pi=Modelica.Constants.pi;
      input Real x[3];
      output Real y[2];
      output Real y0;
    algorithm 
      y := zeros(2);
      for k in 1:m loop
        y := y + 2/m*{+cos((k - 1)/m*2*pi), +sin(+(k - 1)/m*2*pi)}*x[k];
      end for;
      y0 := 1/m*sum(x);
    end ToSpacePhasor;

* * * * *

![image15](Modelica.Electrical.Machines.SpacePhasors.Functions.ToSpacePhasorI.png) [Modelica.Electrical.Machines.SpacePhasors.Functions](Modelica_Electrical_Machines_SpacePhasors_Functions.html#Modelica.Electrical.Machines.SpacePhasors.Functions).FromSpacePhasor
======================================================================================================================================================================================================================================================================

**Conversion: space phasor -\> three phase**

Information
-----------

::

Transformation of space phasor and zero sequence value to three phase
values (voltages or currents): Y0 = sum(x[k])/m Y[Re,Im] =
sum(2/m\*{cos((k - 1)/m\*2\*pi),sin((k -1)/m\*2\*pi)}\*x[k]) were x
designates three phase values, Y[Re,Im] designates the space phasor and
Y0 designates the zero sequence system.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      x[2]                   
  Real      x0                     

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y[3]      

Modelica definition
-------------------

    function FromSpacePhasor "Conversion: space phasor -> three phase"
      extends Modelica.Icons.Function;
      constant Integer m=3 "Number of phases";
      constant Real pi=Modelica.Constants.pi;
      input Real x[2];
      input Real x0;
      output Real y[3];
    algorithm 
      for k in 1:m loop
        y[k] := x0 + {cos(-(k - 1)/m*2*pi),-sin(-(k - 1)/m*2*pi)}*x;
      end for;
    end FromSpacePhasor;

* * * * *

![image16](Modelica.Electrical.Machines.SpacePhasors.Functions.ToSpacePhasorI.png) [Modelica.Electrical.Machines.SpacePhasors.Functions](Modelica_Electrical_Machines_SpacePhasors_Functions.html#Modelica.Electrical.Machines.SpacePhasors.Functions).Rotator
==============================================================================================================================================================================================================================================================

**Rotates space phasor**

Information
-----------

::

Rotates a space phasor (voltage or current) by the angle provided by
input argument "angle" from one coordinate system into another: y[Re,Im]
:= {{+cos(-angle),-sin(-angle)},{+sin(-angle),+cos(-angle)}}\*x[Re,Im]
where y[Re,Im] designates the space phasor in the new coordinate system
(twisted by angle against old coordinate system) and y[Re,Im] designates
the space phasor in the old coordinate system.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name    Default  Description
  -------------------------------------------- ------- -------- -----------
  Real                                         x[2]             

  [Angle](Modelica_SIunits.html#Modelica.SIuni angle            [rad]
  ts.Angle)                                                     
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y[2]      

Modelica definition
-------------------

    function Rotator "Rotates space phasor"
      extends Modelica.Icons.Function;
      input Real x[2];
      input Modelica.SIunits.Angle angle;
      output Real y[2];
    protected 
      Real RotationMatrix[2,2] = {{+cos(-angle),-sin(-angle)},{+sin(-angle),+cos(-angle)}};
    algorithm 
      y := RotationMatrix*x;
    end Rotator;

* * * * *

![image17](Modelica.Electrical.Machines.SpacePhasors.Functions.ToSpacePhasorI.png) [Modelica.Electrical.Machines.SpacePhasors.Functions](Modelica_Electrical_Machines_SpacePhasors_Functions.html#Modelica.Electrical.Machines.SpacePhasors.Functions).ToPolar
==============================================================================================================================================================================================================================================================

**Converts a space phasor to polar coordinates**

Information
-----------

::

Converts a space phasor from rectangular coordinates to polar
coordinates, providing angle=0 for {0,0}.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      x[2]                   

Outputs
-------

  ------------------------------------------------------------------------
  Type                                             Name       Description
  ------------------------------------------------ ---------- ------------
  Real                                             absolute   

  [Angle](Modelica_SIunits.html#Modelica.SIunits.A angle      [rad]
  ngle)                                                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function ToPolar "Converts a space phasor to polar coordinates"
      extends Modelica.Icons.Function;
      constant Real small=Modelica.Constants.small;
      input Real x[2];
      output Real absolute;
      output Modelica.SIunits.Angle angle;
    algorithm 
      absolute := sqrt(x[1]^2 + x[2]^2);
      angle := if absolute <= small then 0 else Modelica.Math.atan2(x[2], x[1]);
    /*
      if absolute <= small then
        angle := 0;
      else
        if x[2] >= 0 then
          angle :=  Modelica.Math.acos(x[1]/absolute);
        else
          angle := -Modelica.Math.acos(x[1]/absolute);
        end if;
      end if;
    */
    end ToPolar;

* * * * *

![image18](Modelica.Electrical.Machines.SpacePhasors.Functions.ToSpacePhasorI.png) [Modelica.Electrical.Machines.SpacePhasors.Functions](Modelica_Electrical_Machines_SpacePhasors_Functions.html#Modelica.Electrical.Machines.SpacePhasors.Functions).FromPolar
================================================================================================================================================================================================================================================================

**Converts a space phasor from polar coordinates**

Information
-----------

::

Converts a space phasor from polar coordinates to rectangular
coordinates.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                       Name      Default  Description
  ------------------------------------------ --------- -------- -----------
  Real                                       absolute           

  [Angle](Modelica_SIunits.html#Modelica.SIu angle              [rad]
  nits.Angle)                                                   
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      x[2]      

Modelica definition
-------------------

    function FromPolar "Converts a space phasor from polar coordinates"
      extends Modelica.Icons.Function;
      constant Real pi=Modelica.Constants.pi;
      constant Real small=Modelica.Constants.small;
      input Real absolute;
      input Modelica.SIunits.Angle angle;
      output Real x[2];
    algorithm 
      x := absolute*{cos(angle),sin(angle)};
    end FromPolar;

* * * * *

![image19](Modelica.Electrical.Machines.SpacePhasors.Functions.ToSpacePhasorI.png) [Modelica.Electrical.Machines.SpacePhasors.Functions](Modelica_Electrical_Machines_SpacePhasors_Functions.html#Modelica.Electrical.Machines.SpacePhasors.Functions).quasiRMS
===============================================================================================================================================================================================================================================================

**Calculate quasi-RMS value of input**

Information
-----------

::

Transformation of three phase values (voltages or currents) to space
phasor and calculate length of space phasor.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      x[3]                   

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function quasiRMS "Calculate quasi-RMS value of input"
      extends Modelica.Icons.Function;
      constant Integer m=3 "Number of phases";
      constant Real pi=Modelica.Constants.pi;
      input Real x[3];
      output Real y;
    protected 
      Real h[2];
    algorithm 
      h := zeros(2);
      for k in 1:m loop
        h := h + 2/m*{+cos((k - 1)/m*2*pi), +sin(+(k - 1)/m*2*pi)}*x[k];
      end for;
      y := sqrt(h[1]^2 + h[2]^2)/sqrt(2);
    end quasiRMS;

* * * * *

![image20](Modelica.Electrical.Machines.SpacePhasors.Functions.ToSpacePhasorI.png) [Modelica.Electrical.Machines.SpacePhasors.Functions](Modelica_Electrical_Machines_SpacePhasors_Functions.html#Modelica.Electrical.Machines.SpacePhasors.Functions).activePower
==================================================================================================================================================================================================================================================================

**Calculate active power of voltage and current input**

Information
-----------

::

Transformation of three phase voltages and currents to space phasors and
calculate active power.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                       Name   Default  Description
  ------------------------------------------ ------ -------- ---------------
  [Voltage](Modelica_SIunits.html#Modelica.S v[m]            phase voltages
  Iunits.Voltage)                                            [V]

  [Current](Modelica_SIunits.html#Modelica.S i[m]            phase currents
  Iunits.Current)                                            [A]
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name    Description
  ------------------------------------------------ ------- ----------------
  [Power](Modelica_SIunits.html#Modelica.SIunits.P p       Active power [W]
  ower)                                                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function activePower 
      "Calculate active power of voltage and current input"
      extends Modelica.Icons.Function;
      constant Integer m=3 "Number of phases";
      import Modelica.Constants.pi;
      input Modelica.SIunits.Voltage v[m] "phase voltages";
      input Modelica.SIunits.Current i[m] "phase currents";
      output Modelica.SIunits.Power p "Active power";
    protected 
      Modelica.SIunits.Voltage v_[2] "Voltage space phasor";
      Modelica.SIunits.Current i_[2] "Current space phasor";
    algorithm 
      v_ := zeros(2);
      i_ := zeros(2);
      for k in 1:m loop
        v_ := v_ + 2/m*{+cos((k - 1)/m*2*pi), +sin(+(k - 1)/m*2*pi)}*v[k];
        i_ := i_ + 2/m*{+cos((k - 1)/m*2*pi), +sin(+(k - 1)/m*2*pi)}*i[k];
      end for;
      p :=m/2*(+v_[1]*i_[1] + v_[2]*i_[2]);
    end activePower;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:03 2010.
