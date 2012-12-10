% Modelica.Magnetic.FundamentalWave.BasicMachines.Functions
% 
% 

[Modelica.Magnetic.FundamentalWave.BasicMachines](Modelica_Magnetic_FundamentalWave_BasicMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines).Functions
=================================================================================================================================================================

**Axiliary functions for electric machines**

Information
-----------

::

This package contains auxiliary functions for electric machine models.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image1](Modelica.Magnetic.FundamentalWave.BasicMachines Orientations
  .Functions.symmetricOrientationS.png)                     of the
  [symmetricOrientation](Modelica_Magnetic_FundamentalWave_ resulting
  BasicMachines_Functions.html#Modelica.Magnetic.Fundamenta fundamental
  lWave.BasicMachines.Functions.symmetricOrientation)       wave field
                                                            phasors
  ------------------------------------------------------------------------

* * * * *

[Modelica.Magnetic.FundamentalWave.BasicMachines.Functions](Modelica_Magnetic_FundamentalWave_BasicMachines_Functions.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Functions).symmetricOrientation
==========================================================================================================================================================================================================

**Orientations of the resulting fundamental wave field phasors**

Information
-----------

::

This function determines the orientation of the symmetrical winding with
![image2](../Resources/Images/Magnetic/FundamentalWave/m.png) phases.
For an odd number of phases the difference of the windings angles of two
adjacent phases is
![image3](../Resources/Images/Magnetic/FundamentalWave/2pi_over_m.png).
In case of an even number of phases the aligned orientation of winding
is not modeled since they do not add any information. Instead the
![image4](../Resources/Images/Magnetic/FundamentalWave/m.png) windings
are divided into two different groups. The first group refers to the
indices
![image5](../Resources/Images/Magnetic/FundamentalWave/k_le_m_over_2.png).
The second group covers the indices
![image6](../Resources/Images/Magnetic/FundamentalWave/k_gt_m_over_2.png).
The difference of the windings angles of two adjacent phases - of both
the first and the second group, respectively - is
![image7](../Resources/Images/Magnetic/FundamentalWave/4pi_over_m.png).
The phase shift of the two groups
![image8](../Resources/Images/Magnetic/FundamentalWave/pi_over_2m.png).

::

Inputs
------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m                      Number of phases

Outputs
-------

  ------------------------------------------------------------------------
  Type                         Name      Description
  ---------------------------- --------- ---------------------------------
  [Angle](Modelica_SIunits.htm orientati Orientation of the resulting
  l#Modelica.SIunits.Angle)    on[m]     fundamental wave field phasors
                                         [rad]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function symmetricOrientation 
      "Orientations of the resulting fundamental wave field phasors"

      import Modelica.Constants.pi;

      input Integer m "Number of phases";
      output Modelica.SIunits.Angle orientation[m] 
        "Orientation of the resulting fundamental wave field phasors";

    algorithm 
      if mod(m,2) == 0 then
        // Even number of phases
        for k in 1:integer(m/2) loop
          orientation[k] :=(k - 1)*4*pi/m;
          orientation[k+integer(m/2)] := orientation[k] + 2*pi/m;
        end for;
      else
        // Odd number of phases
        orientation :={(k - 1)*2*pi/m for k in 1:m};
      end if;
    end symmetricOrientation;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:02 2010.
