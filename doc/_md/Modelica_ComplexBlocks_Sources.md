% Modelica.ComplexBlocks.Sources
% 
% 

[Modelica.ComplexBlocks](Modelica_ComplexBlocks.html#Modelica.ComplexBlocks).Sources
====================================================================================

**Library of signal source blocks generating Complex signals**

Information
-----------

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                            Description
  ----------------------------------------------- ------------------------
  ![image4](Modelica.ComplexBlocks.Sources.Comple Set output signal to a
  xExpressionS.png)                               time varying Complex
  [ComplexExpression](Modelica_ComplexBlocks_Sour expression
  ces.html#Modelica.ComplexBlocks.Sources.Complex 
  Expression)                                     

  ![image5](Modelica.ComplexBlocks.Sources.Comple Generate constant signal
  xConstantS.png)                                 of type Complex
  [ComplexConstant](Modelica_ComplexBlocks_Source 
  s.html#Modelica.ComplexBlocks.Sources.ComplexCo 
  nstant)                                         

  ![image6](Modelica.ComplexBlocks.Sources.Comple Generate step signal of
  xStepS.png)                                     type Complex
  [ComplexStep](Modelica_ComplexBlocks_Sources.ht 
  ml#Modelica.ComplexBlocks.Sources.ComplexStep)  

  ![image7](Modelica.ComplexBlocks.Sources.Comple Generate a phasor with
  xRotatingPhasorS.png)                           constant magnitude and
  [ComplexRotatingPhasor](Modelica_ComplexBlocks_ constant angular
  Sources.html#Modelica.ComplexBlocks.Sources.Com velocity of type Complex
  plexRotatingPhasor)                             
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.ComplexBlocks.Sources.ComplexExpressionI.png) [Modelica.ComplexBlocks.Sources](Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources).ComplexExpression
=======================================================================================================================================================================================

**Set output signal to a time varying Complex expression**

Information
-----------

::

The (time varying) Complex output signal of this block can be defined in
its parameter menu via variable **y**. The purpose is to support the
easy definition of Complex expressions in a block diagram. Note, that
"time" is a built-in variable that is always accessible and represents
the "model time" and that Variable **y** is both a variable and a
connector.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name Defaul Description
                                                        t      
  ------------------------------------------------ ---- ------ ------------
  Time varying output signal                                   

  [ComplexOutput](Modelica_ComplexBlocks_Interface y    Comple Value of
  s.html#Modelica.ComplexBlocks.Interfaces.Complex      x(0)   Complex
  Output)                                                      output
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  Time varying output signal                                  

  output                                                 y    Value of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html      Complex
  #Modelica.ComplexBlocks.Interfaces.ComplexOutput)           output
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block ComplexExpression 
      "Set output signal to a time varying Complex expression"

      output Modelica.ComplexBlocks.Interfaces.ComplexOutput y=Complex(0) 
        "Value of Complex output";


    end ComplexExpression;

* * * * *

![image9](Modelica.ComplexBlocks.Sources.ComplexConstantI.png) [Modelica.ComplexBlocks.Sources](Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources).ComplexConstant
===================================================================================================================================================================================

**Generate constant signal of type Complex**

Information
-----------

::

The Complex output y is a constant signal:

::

Extends from
[Modelica.ComplexBlocks.Interfaces.ComplexSO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSO)
(Single Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name  Default Description
  ------------------------------------------ ----- ------- ----------------
  [Complex](../../../Modelica/Library/help/C k             Constant output
  omplex.html#Complex)                                     value
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block ComplexConstant "Generate constant signal of type Complex"
      parameter Complex k(re(start=1),im(start=0)) "Constant output value";
      extends Modelica.ComplexBlocks.Interfaces.ComplexSO;

    equation 
      y = k;
    end ComplexConstant;

* * * * *

![image10](Modelica.ComplexBlocks.Sources.ComplexStepI.png) [Modelica.ComplexBlocks.Sources](Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources).ComplexStep
============================================================================================================================================================================

**Generate step signal of type Complex**

Information
-----------

::

The Complex output y is a step signal (of real and imaginary part):

::

Extends from
[ComplexBlocks.Interfaces.ComplexSignalSource](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSignalSource)
(Base class for continuous signal source).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name   Default Description
  ---------------------------------- ------ ------- -----------------------
  [Complex](../../../Modelica/Librar height Complex Height of step
  y/help/Complex.html#Complex)              (1)     

  [Complex](../../../Modelica/Librar offset Complex Offset of output signal
  y/help/Complex.html#Complex)              (0)     y

  [Time](Modelica_SIunits.html#Model startT 0       Output y = offset for
  ica.SIunits.Time)                  ime            time < startTime [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block ComplexStep "Generate step signal of type Complex"
      parameter Complex height=Complex(1) "Height of step";
      extends ComplexBlocks.Interfaces.ComplexSignalSource;

    equation 
      y = offset + (if time < startTime then Complex(0) else height);
    end ComplexStep;

* * * * *

![image11](Modelica.ComplexBlocks.Sources.ComplexRotatingPhasorI.png) [Modelica.ComplexBlocks.Sources](Modelica_ComplexBlocks_Sources.html#Modelica.ComplexBlocks.Sources).ComplexRotatingPhasor
================================================================================================================================================================================================

**Generate a phasor with constant magnitude and constant angular
velocity of type Complex**

Information
-----------

::

The output y is a complex phasor with constant magnitude, spinning with
constant angular velocity.

::

Extends from
[Modelica.ComplexBlocks.Interfaces.ComplexSO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSO)
(Single Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name   Defau Description
                                             lt    
  ----------------------------------- ------ ----- ------------------------
  Real                                magnit 1     Magnitude of complex
                                      ude          phasor

  [AngularVelocity](Modelica_SIunits. w      1     Constant angular
  html#Modelica.SIunits.AngularVeloci              velocity of complex
  ty)                                              phasor [rad/s]

  [Angle](Modelica_SIunits.html#Model phi0   0     Initial angle of complex
  ica.SIunits.Angle)                               phasor at time = 0 [rad]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block ComplexRotatingPhasor 
      "Generate a phasor with constant magnitude and constant angular velocity of type Complex"
      parameter Real magnitude=1 "Magnitude of complex phasor";
      parameter Modelica.SIunits.AngularVelocity w=1 
        "Constant angular velocity of complex phasor";
      parameter Modelica.SIunits.Angle phi0 = 0 
        "Initial angle of complex phasor at time = 0";
      extends Modelica.ComplexBlocks.Interfaces.ComplexSO;

    equation 
      y = magnitude * Modelica.ComplexMath.exp(Complex(0,w*time+phi0));
    end ComplexRotatingPhasor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:41 2010.
