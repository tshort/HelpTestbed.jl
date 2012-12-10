% Modelica.Electrical.Machines.SpacePhasors.Blocks
% 
% 

[Modelica.Electrical.Machines.SpacePhasors](Modelica_Electrical_Machines_SpacePhasors.html#Modelica.Electrical.Machines.SpacePhasors).Blocks
============================================================================================================================================

**Blocks for space phasor transformation**

Information
-----------

::

This package contains space phasor transformation blocks for use in
controllers:

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
  ![image5](Modelica.Electrical.Machines.SpacePhasors.Block Conversion:
  s.ToSpacePhasorS.png)                                     three phase
  [ToSpacePhasor](Modelica_Electrical_Machines_SpacePhasors -\> space
  _Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Bl phasor
  ocks.ToSpacePhasor)                                       

  ![image6](Modelica.Electrical.Machines.SpacePhasors.Block Conversion:
  s.FromSpacePhasorS.png)                                   space phasor
  [FromSpacePhasor](Modelica_Electrical_Machines_SpacePhaso -\> three
  rs_Blocks.html#Modelica.Electrical.Machines.SpacePhasors. phase
  Blocks.FromSpacePhasor)                                   

  ![image7](Modelica.Electrical.Machines.SpacePhasors.Block Rotates space
  s.RotatorS.png)                                           phasor
  [Rotator](Modelica_Electrical_Machines_SpacePhasors_Block 
  s.html#Modelica.Electrical.Machines.SpacePhasors.Blocks.R 
  otator)                                                   

  ![image8](Modelica.Electrical.Machines.SpacePhasors.Block Converts a
  s.ToPolarS.png)                                           space phasor
  [ToPolar](Modelica_Electrical_Machines_SpacePhasors_Block to polar
  s.html#Modelica.Electrical.Machines.SpacePhasors.Blocks.T coordinates
  oPolar)                                                   

  ![image9](Modelica.Electrical.Machines.SpacePhasors.Block Converts a
  s.FromPolarS.png)                                         space phasor
  [FromPolar](Modelica_Electrical_Machines_SpacePhasors_Blo from polar
  cks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks coordinates
  .FromPolar)                                               
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Electrical.Machines.SpacePhasors.Blocks.ToSpacePhasorI.png) [Modelica.Electrical.Machines.SpacePhasors.Blocks](Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks).ToSpacePhasor
========================================================================================================================================================================================================================================================

**Conversion: three phase -\> space phasor**

Information
-----------

::

Transformation of threephase values (voltages or currents) to space
phasor and zero sequence value.

::

Extends from
[Modelica.Blocks.Interfaces.MIMO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMO)
(Multiple Input Multiple Output continuous control block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------------
  Integer      nin       m            Number of inputs
  Integer      nout      2            Number of outputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- ------------------
  input                                           u[nin Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mod ]     input signals
  elica.Blocks.Interfaces.RealInput)                    

  output                                          y[nou Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo t]    output signals
  delica.Blocks.Interfaces.RealOutput)                  

  output                                          zero  
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo       
  delica.Blocks.Interfaces.RealOutput)                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block ToSpacePhasor "Conversion: three phase -> space phasor"
      extends Modelica.Blocks.Interfaces.MIMO(final nin=m, final nout=2);
      constant Integer m=3 "Number of phases";
      constant Real pi=Modelica.Constants.pi;
    protected 
      parameter Real TransformationMatrix[ 2, m]=2/m*
        {{cos(+(k - 1)/m*2*pi) for k in 1:m}, {+sin(+(k - 1)/m*2*pi) for k in 1:m}};
      parameter Real InverseTransformation[m, 2]=
        {{cos(-(k - 1)/m*2*pi), -sin(-(k - 1)/m*2*pi)} for k in 1:m};
    public 
      Modelica.Blocks.Interfaces.RealOutput zero;

    equation 
      m*zero = sum(u);
      y = TransformationMatrix *u;
    //u = fill(zero,m) + InverseTransformation*y;
    end ToSpacePhasor;

* * * * *

![image11](Modelica.Electrical.Machines.SpacePhasors.Blocks.FromSpacePhasorI.png) [Modelica.Electrical.Machines.SpacePhasors.Blocks](Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks).FromSpacePhasor
============================================================================================================================================================================================================================================================

**Conversion: space phasor -\> three phase**

Information
-----------

::

Transformation of space phasor and zero sequence value to threephase
values (voltages or currents).

::

Extends from
[Modelica.Blocks.Interfaces.MIMO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMO)
(Multiple Input Multiple Output continuous control block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------------
  Integer      nin       2            Number of inputs
  Integer      nout      m            Number of outputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- ------------------
  input                                           u[nin Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mod ]     input signals
  elica.Blocks.Interfaces.RealInput)                    

  output                                          y[nou Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo t]    output signals
  delica.Blocks.Interfaces.RealOutput)                  

  input                                           zero  
  [RealInput](Modelica_Blocks_Interfaces.html#Mod       
  elica.Blocks.Interfaces.RealInput)                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block FromSpacePhasor "Conversion: space phasor -> three phase"
      extends Modelica.Blocks.Interfaces.MIMO(final nin=2, final nout=m);
      constant Integer m=3 "Number of phases";
      constant Real pi=Modelica.Constants.pi;
    protected 
      parameter Real TransformationMatrix[ 2, m]=2/m*
        {{cos(+(k - 1)/m*2*pi) for k in 1:m}, {+sin(+(k - 1)/m*2*pi) for k in 1:m}};
      parameter Real InverseTransformation[m, 2]=
        {{cos(-(k - 1)/m*2*pi), -sin(-(k - 1)/m*2*pi)} for k in 1:m};
    public 
      Modelica.Blocks.Interfaces.RealInput zero;
    equation 
      y = fill(zero,m) + InverseTransformation*u;
    //m*zero = sum(y);
    //u = TransformationMatrix *y;
    end FromSpacePhasor;

* * * * *

![image12](Modelica.Electrical.Machines.SpacePhasors.Blocks.RotatorI.png) [Modelica.Electrical.Machines.SpacePhasors.Blocks](Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks).Rotator
============================================================================================================================================================================================================================================

**Rotates space phasor**

Information
-----------

::

Rotates a space phasor (voltage or current) by the angle provided by the
input signal "angle" from one coordinate system into another.

::

Extends from
[Modelica.Blocks.Interfaces.MIMOs](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMOs)
(Multiple Input Multiple Output continuous control block with same
number of inputs and outputs).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        2           Number of inputs (= number of outputs)

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- ------------------
  input                                            u[n]  Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode       input signals
  lica.Blocks.Interfaces.RealInput)                      

  output                                           y[n]  Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod       output signals
  elica.Blocks.Interfaces.RealOutput)                    

  input                                            angle 
  [RealInput](Modelica_Blocks_Interfaces.html#Mode       
  lica.Blocks.Interfaces.RealInput)                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Rotator "Rotates space phasor"
      extends Modelica.Blocks.Interfaces.MIMOs(final n=2);
    protected 
      Real RotationMatrix[2,2] = {{+cos(-angle),-sin(-angle)},{+sin(-angle),+cos(-angle)}};
    //Real InverseRotator[2,2] = {{+cos(+angle),-sin(+angle)},{+sin(+angle),+cos(+angle)}};
    public 
      Modelica.Blocks.Interfaces.RealInput angle;
    equation 
      y = RotationMatrix*u;
    //u = InverseRotator*y;
    end Rotator;

* * * * *

![image13](Modelica.Electrical.Machines.SpacePhasors.Blocks.ToPolarI.png) [Modelica.Electrical.Machines.SpacePhasors.Blocks](Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks).ToPolar
============================================================================================================================================================================================================================================

**Converts a space phasor to polar coordinates**

Information
-----------

::

Converts a space phasor from rectangular coordinates to polar
coordinates.

::

Extends from
[Modelica.Blocks.Interfaces.MIMOs](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMOs)
(Multiple Input Multiple Output continuous control block with same
number of inputs and outputs).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        2           Number of inputs (= number of outputs)

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u[n] Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signals
  lica.Blocks.Interfaces.RealInput)                     

  output                                           y[n] Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signals
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block ToPolar "Converts a space phasor to polar coordinates"
      extends Modelica.Blocks.Interfaces.MIMOs(final n=2);
      constant Real small=Modelica.Constants.small;
    equation 
      y[1] = sqrt(u[1]^2 + u[2]^2);
      y[2] = if noEvent(y[1] <= small) then 0 else Modelica.Math.atan2(u[2], u[1]);
    /*
      if y[1] <= small then
        y[2] = 0;
      else
        if u[2] >= 0 then
          y[2] =  Modelica.Math.acos(u[1]/y[1]);
        else
          y[2] = -Modelica.Math.acos(u[1]/y[1]);
        end if;
      end if;
    */
    end ToPolar;

* * * * *

![image14](Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolarI.png) [Modelica.Electrical.Machines.SpacePhasors.Blocks](Modelica_Electrical_Machines_SpacePhasors_Blocks.html#Modelica.Electrical.Machines.SpacePhasors.Blocks).FromPolar
================================================================================================================================================================================================================================================

**Converts a space phasor from polar coordinates**

Information
-----------

::

Converts a space phasor from polar coordinates to rectangular
coordinates.

::

Extends from
[Modelica.Blocks.Interfaces.MIMOs](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MIMOs)
(Multiple Input Multiple Output continuous control block with same
number of inputs and outputs).

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        2           Number of inputs (= number of outputs)

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u[n] Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mode      input signals
  lica.Blocks.Interfaces.RealInput)                     

  output                                           y[n] Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signals
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block FromPolar "Converts a space phasor from polar coordinates"
      extends Modelica.Blocks.Interfaces.MIMOs(final n=2);
    equation 
      y = u[1]*{cos(u[2]),sin(u[2])};
    end FromPolar;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:03 2010.
