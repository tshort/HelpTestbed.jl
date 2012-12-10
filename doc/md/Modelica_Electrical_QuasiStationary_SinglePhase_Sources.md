% Modelica.Electrical.QuasiStationary.SinglePhase.Sources
% 
% 

[Modelica.Electrical.QuasiStationary.SinglePhase](Modelica_Electrical_QuasiStationary_SinglePhase.html#Modelica.Electrical.QuasiStationary.SinglePhase).Sources
===============================================================================================================================================================

**AC singlephase sources**

Information
-----------

::

This package hosts sources for quasi stationary single phase circuits.
Quasi stationary theory for single phase circuits can be found in the
[references](Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References).

### See also

[MultiPhase.Sources](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources)

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                              Descri
                                                                    ption
  ----------------------------------------------------------------- ------
  ![image4](Modelica.Electrical.QuasiStationary.SinglePhase.Sources Consta
  .VoltageSourceS.png)                                              nt
  [VoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_S AC
  ources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sourc voltag
  es.VoltageSource)                                                 e

  ![image5](Modelica.Electrical.QuasiStationary.SinglePhase.Sources Variab
  .VariableVoltageSourceS.png)                                      le
  [VariableVoltageSource](Modelica_Electrical_QuasiStationary_Singl AC
  ePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePha voltag
  se.Sources.VariableVoltageSource)                                 e

  ![image6](Modelica.Electrical.QuasiStationary.SinglePhase.Sources Consta
  .CurrentSourceS.png)                                              nt
  [CurrentSource](Modelica_Electrical_QuasiStationary_SinglePhase_S AC
  ources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sourc curren
  es.CurrentSource)                                                 t

  ![image7](Modelica.Electrical.QuasiStationary.SinglePhase.Sources Variab
  .VariableCurrentSourceS.png)                                      le
  [VariableCurrentSource](Modelica_Electrical_QuasiStationary_Singl AC
  ePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePha curren
  se.Sources.VariableCurrentSource)                                 t
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSourceI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Sources](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources).VoltageSource
===================================================================================================================================================================================================================================================================================

**Constant AC voltage**

Information
-----------

::

This is a constant voltage source, specifying the complex voltage by the
RMS voltage and the phase shift.

### See also

[VariableVoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource),
[CurrentSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource),
[VariableCurrentSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource)

::

Extends from
[Interfaces.Source](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source)
(Partial voltage / current source).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                    Name  Defaul Description
                                                t      
  --------------------------------------- ----- ------ --------------------
  [Frequency](Modelica_SIunits.html#Model f            frequency of the
  ica.SIunits.Frequency)                               source [Hz]

  [Voltage](Modelica_SIunits.html#Modelic V            RMS voltage of the
  a.SIunits.Voltage)                                   source [V]

  [Angle](Modelica_SIunits.html#Modelica. phi          phase shift of the
  SIunits.Angle)                                       source [rad]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VoltageSource "Constant AC voltage"
      extends Interfaces.Source;
      parameter Modelica.SIunits.Frequency f(start=1) "frequency of the source";
      parameter Modelica.SIunits.Voltage V(start=1) "RMS voltage of the source";
      parameter Modelica.SIunits.Angle phi(start=0) "phase shift of the source";
    equation 
      omega = 2*Modelica.Constants.pi*f;
      v = Complex(V*cos(phi), V*sin(phi));
    end VoltageSource;

* * * * *

![image9](Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSourceI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Sources](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources).VariableVoltageSource
===================================================================================================================================================================================================================================================================================================

**Variable AC voltage**

Information
-----------

::

This is a voltage source with a complex signal input, specifying the
complex voltage by the complex RMS voltage components. Additionally, the
frequency of the voltage source is defined by a real signal input.

### See also

[VoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource),
[CurrentSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource),
[VariableCurrentSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource)

::

Extends from
[Interfaces.Source](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source)
(Partial voltage / current source).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin

  input                                                         f    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks.I      
  nterfaces.RealInput)                                               

  input                                                         V    
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.html#Modelic      
  a.ComplexBlocks.Interfaces.ComplexInput)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableVoltageSource "Variable AC voltage"
      extends Interfaces.Source;
      Modelica.Blocks.Interfaces.RealInput f;
      Modelica.ComplexBlocks.Interfaces.ComplexInput V;
    equation 
      omega = 2*Modelica.Constants.pi*f;
      v = V;
    end VariableVoltageSource;

* * * * *

![image10](Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSourceI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Sources](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources).CurrentSource
====================================================================================================================================================================================================================================================================================

**Constant AC current**

Information
-----------

::

This is a constant current source, specifying the complex current by the
RMS current and the phase shift.

### See also

[VoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource),
[VariableVoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource),
[VariableCurrentSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource)

::

Extends from
[Interfaces.Source](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source)
(Partial voltage / current source).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                    Name  Defaul Description
                                                t      
  --------------------------------------- ----- ------ --------------------
  [Frequency](Modelica_SIunits.html#Model f            frequency of the
  ica.SIunits.Frequency)                               source [Hz]

  [Current](Modelica_SIunits.html#Modelic I            RMS current of the
  a.SIunits.Current)                                   source [A]

  [Angle](Modelica_SIunits.html#Modelica. phi          phase shift of the
  SIunits.Angle)                                       source [rad]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model CurrentSource "Constant AC current"
      extends Interfaces.Source;
      parameter Modelica.SIunits.Frequency f(start=1) "frequency of the source";
      parameter Modelica.SIunits.Current I(start=1) "RMS current of the source";
      parameter Modelica.SIunits.Angle phi(start=0) "phase shift of the source";
    equation 
      omega = 2*Modelica.Constants.pi*f;
      i = Complex(I*cos(phi), I*sin(phi));
    end CurrentSource;

* * * * *

![image11](Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSourceI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Sources](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources).VariableCurrentSource
====================================================================================================================================================================================================================================================================================================

**Variable AC current**

Information
-----------

::

This is a current source with a complex signal input, specifying the
complex current by the complex RMS current components. Additionally, the
frequency of the voltage source is defined by a real signal input.

### See also

[VoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource),
[VariableVoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource),
[CurrentSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource),

::

Extends from
[Interfaces.Source](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source)
(Partial voltage / current source).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin

  input                                                         f    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks.I      
  nterfaces.RealInput)                                               

  input                                                         I    
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.html#Modelic      
  a.ComplexBlocks.Interfaces.ComplexInput)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableCurrentSource "Variable AC current"
      extends Interfaces.Source;
      Modelica.Blocks.Interfaces.RealInput f;
      Modelica.ComplexBlocks.Interfaces.ComplexInput I;
    equation 
      omega = 2*Modelica.Constants.pi*f;
      i = I;
    end VariableCurrentSource;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:24 2010.
