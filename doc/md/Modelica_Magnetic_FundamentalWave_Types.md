% Modelica.Magnetic.FundamentalWave.Types
% 
% 

[Modelica.Magnetic.FundamentalWave](Modelica_Magnetic_FundamentalWave.html#Modelica.Magnetic.FundamentalWave).Types
===================================================================================================================

**Definition of salient types**

Information
-----------

::

This package provides types for modeling anisotropic saliency effects in
electric machines. These saliencies are usually considered by a
d-(direct) and q-axis (quadrature) components in the respective axis (of
the rotor).

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                     Description
  -------------------------------------------------------- ---------------
  ![image6](Modelica.Magnetic.FundamentalWave.Types.Salien Base record of
  tS.png)                                                  saliency with d
  [Salient](Modelica_Magnetic_FundamentalWave_Types.html#M and q component
  odelica.Magnetic.FundamentalWave.Types.Salient)          

  ![image7](Modelica.Magnetic.FundamentalWave.Types.Salien Salient current
  tS.png)                                                  
  [SalientCurrent](Modelica_Magnetic_FundamentalWave_Types 
  .html#Modelica.Magnetic.FundamentalWave.Types.SalientCur 
  rent)                                                    

  ![image8](Modelica.Magnetic.FundamentalWave.Types.Salien Salient voltage
  tS.png)                                                  
  [SalientVoltage](Modelica_Magnetic_FundamentalWave_Types 
  .html#Modelica.Magnetic.FundamentalWave.Types.SalientVol 
  tage)                                                    

  ![image9](Modelica.Magnetic.FundamentalWave.Types.Salien Salient
  tS.png)                                                  inductance
  [SalientInductance](Modelica_Magnetic_FundamentalWave_Ty 
  pes.html#Modelica.Magnetic.FundamentalWave.Types.Salient 
  Inductance)                                              

  ![image10](Modelica.Magnetic.FundamentalWave.Types.Salie Salient
  ntS.png)                                                 reluctance
  [SalientReluctance](Modelica_Magnetic_FundamentalWave_Ty 
  pes.html#Modelica.Magnetic.FundamentalWave.Types.Salient 
  Reluctance)                                              

  ![image11](Modelica.Magnetic.FundamentalWave.Types.Salie Salient
  ntS.png)                                                 resistance
  [SalientResistance](Modelica_Magnetic_FundamentalWave_Ty 
  pes.html#Modelica.Magnetic.FundamentalWave.Types.Salient 
  Resistance)                                              
  ------------------------------------------------------------------------

* * * * *

[Modelica.Magnetic.FundamentalWave.Types](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types).Salient
=======================================================================================================================================

**Base record of saliency with d and q component**

Information
-----------

::

Definition of saliency with respect to the orthogonal d- and q-axis.
Saliency, however, refers to different properties in d- and q-axis and
thus considers the anisotropic behavior.

### See also

[SalientCurrent](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientCurrent),
[SalientVoltage](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientVoltage),
[SalientInductance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance),
[SalientReluctance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance),
[SalientResistance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientResistance)

::

Modelica definition
-------------------

    record Salient "Base record of saliency with d and q component"
      Real d "Component of d (direct) axis, aligned to real part";
      Real q "Component of q (quadrature) axis, aligned to imaginary part";
    end Salient;

* * * * *

[Modelica.Magnetic.FundamentalWave.Types](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types).SalientCurrent
==============================================================================================================================================

**Salient current**

Information
-----------

::

Type representing the d- and q-axis of a current phasor.

### See also

[Salient](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient),
[SalientVoltage](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientVoltage),
[SalientInductance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance),
[SalientReluctance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance),
[SalientResistance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientResistance)

::

Extends from
[Salient](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient)
(Base record of saliency with d and q component).

Modelica definition
-------------------

    record SalientCurrent = Salient (
      redeclare Modelica.SIunits.Current d,
      redeclare Modelica.SIunits.Current q) "Salient current";

* * * * *

[Modelica.Magnetic.FundamentalWave.Types](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types).SalientVoltage
==============================================================================================================================================

**Salient voltage**

Information
-----------

::

Type representing the d- and q-axis of a voltage phasor.

### See also

[Salient](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient),
[SalientCurrent](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientCurrent),
[SalientInductance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance),
[SalientReluctance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance),
[SalientResistance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientResistance)

::

Extends from
[Salient](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient)
(Base record of saliency with d and q component).

Modelica definition
-------------------

    record SalientVoltage = Salient (
      redeclare Modelica.SIunits.Voltage d,
      redeclare Modelica.SIunits.Voltage q) "Salient voltage";

* * * * *

[Modelica.Magnetic.FundamentalWave.Types](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types).SalientInductance
=================================================================================================================================================

**Salient inductance**

Information
-----------

::

Type representing the d- and q-axis of an inductance with respect to the
fundamental wave.

### See also

[Salient](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient),
[SalientCurrent](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientCurrent),
[SalientVoltage](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientVoltage),
[SalientReluctance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance),
[SalientResistance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientResistance)

::

Extends from
[Salient](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient)
(Base record of saliency with d and q component).

Modelica definition
-------------------

    record SalientInductance = Salient (
      redeclare Modelica.SIunits.Inductance d,
      redeclare Modelica.SIunits.Inductance q) "Salient inductance";

* * * * *

[Modelica.Magnetic.FundamentalWave.Types](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types).SalientReluctance
=================================================================================================================================================

**Salient reluctance**

Information
-----------

::

Type representing the d- and q-axis of an reluctance with respect to the
fundamental wave.

### See also

[Salient](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient),
[SalientCurrent](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientCurrent),
[SalientVoltage](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientVoltage),
[SalientInductance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance),
[SalientResistance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientResistance)

::

Extends from
[Salient](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient)
(Base record of saliency with d and q component).

Modelica definition
-------------------

    record SalientReluctance = Salient (
      redeclare Modelica.SIunits.Reluctance d,
      redeclare Modelica.SIunits.Reluctance q) "Salient reluctance";

* * * * *

[Modelica.Magnetic.FundamentalWave.Types](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types).SalientResistance
=================================================================================================================================================

**Salient resistance**

Information
-----------

::

Type representing the d- and q-axis of an resistance with respect to the
fundamental wave.

### See also

[Salient](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient),
[SalientCurrent](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientCurrent),
[SalientVoltage](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientVoltage),
[SalientInductance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance),
[SalientReluctance](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientReluctance)

::

Extends from
[Salient](Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.Salient)
(Base record of saliency with d and q component).

Modelica definition
-------------------

    record SalientResistance = Salient (
      redeclare Modelica.SIunits.Resistance d,
      redeclare Modelica.SIunits.Resistance q) "Salient resistance";

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:03 2010.
