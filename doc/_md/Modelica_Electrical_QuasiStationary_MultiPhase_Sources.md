% Modelica.Electrical.QuasiStationary.MultiPhase.Sources
% 
% 

[Modelica.Electrical.QuasiStationary.MultiPhase](Modelica_Electrical_QuasiStationary_MultiPhase.html#Modelica.Electrical.QuasiStationary.MultiPhase).Sources
============================================================================================================================================================

**AC multiphase sources**

Information
-----------

::

This package hosts sources for quasi stationary multiphase circuits.
Quasi stationary theory can be found in the
[references](Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References).

### See also

[SinglePhase.Sources](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources)

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                            Descript
                                                                  ion
  --------------------------------------------------------------- --------
  ![image4](Modelica.Electrical.QuasiStationary.MultiPhase.Source Constant
  s.VoltageSourceS.png)                                           multipha
  [VoltageSource](Modelica_Electrical_QuasiStationary_MultiPhase_ se
  Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sou AC
  rces.VoltageSource)                                             voltage

  ![image5](Modelica.Electrical.QuasiStationary.MultiPhase.Source Variable
  s.VariableVoltageSourceS.png)                                   multipha
  [VariableVoltageSource](Modelica_Electrical_QuasiStationary_Mul se
  tiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiP AC
  hase.Sources.VariableVoltageSource)                             voltage

  ![image6](Modelica.Electrical.QuasiStationary.MultiPhase.Source Constant
  s.CurrentSourceS.png)                                           multipha
  [CurrentSource](Modelica_Electrical_QuasiStationary_MultiPhase_ se
  Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sou AC
  rces.CurrentSource)                                             current

  ![image7](Modelica.Electrical.QuasiStationary.MultiPhase.Source Variable
  s.VariableCurrentSourceS.png)                                   multipha
  [VariableCurrentSource](Modelica_Electrical_QuasiStationary_Mul se
  tiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiP AC
  hase.Sources.VariableCurrentSource)                             current
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSourceI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Sources](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources).VoltageSource
===============================================================================================================================================================================================================================================================================

**Constant multiphase AC voltage**

Information
-----------

::

This model describes *m* constant voltage sources, specifying the
complex voltages by the RMS voltages and the phase shifts. *m* [single
phase
VoltageSources](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource)
are used.

### See also

[SinglePhase.VoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource),
[VariableVoltageSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource),
[CurrentSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource),
[VariableCurrentSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource)

::

Extends from
[Interfaces.Source](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source)
(Partial voltage / current source).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name  Default           Description
  ------------------------------- ----- ----------------- -----------------
  Integer                         m     3                 Number of phases

  [Frequency](Modelica_SIunits.ht f                       Frequency of the
  ml#Modelica.SIunits.Frequency)                          source [Hz]

  [Voltage](Modelica_SIunits.html V[m]                    RMS voltage of
  #Modelica.SIunits.Voltage)                              the source [V]

  [Angle](Modelica_SIunits.html#M phi[m {0 - (j -         Phase shift of
  odelica.SIunits.Angle)          ]     1)\*2\*pi/m for j the source [rad]
                                        in...             
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VoltageSource "Constant multiphase AC voltage"
      extends Interfaces.Source;
      parameter Modelica.SIunits.Frequency f(start=1) "Frequency of the source";
      parameter Modelica.SIunits.Voltage V[m](start=fill(1,m)) 
        "RMS voltage of the source";
      parameter Modelica.SIunits.Angle phi[m]={0 - (j-1)*2*pi/m for j in 1:m} 
        "Phase shift of the source";
      QuasiStationary.SinglePhase.Sources.VoltageSource voltageSource[
                                                      m](
        each final f=f,
        final V=V,
        final phi=phi);
    equation 
      connect(plugToPins_p.pin_p, voltageSource.pin_p);
      connect(voltageSource.pin_n, plugToPins_n.pin_n);
    end VoltageSource;

* * * * *

![image9](Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSourceI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Sources](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources).VariableVoltageSource
===============================================================================================================================================================================================================================================================================================

**Variable multiphase AC voltage**

Information
-----------

::

This model describes *m* variable voltage sources, with *m* complex
signal inputs, specifying the complex voltages by the complex RMS
voltage components. Additionally, the frequency of the voltage source is
defined by a real signal input. *m* [single phase
VariableVoltageSources](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource)
are used.

### See also

[SinglePhase.VoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource),
[VoltageSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource),
[CurrentSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource),
[VariableCurrentSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource)

::

Extends from
[Interfaces.Source](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source)
(Partial voltage / current source).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        

  input                                                         f    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks.I      
  nterfaces.RealInput)                                               

  input                                                         V[m] 
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.html#Modelic      
  a.ComplexBlocks.Interfaces.ComplexInput)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableVoltageSource "Variable multiphase AC voltage"
      extends Interfaces.Source;
      QuasiStationary.SinglePhase.Sources.VariableVoltageSource
        variableVoltageSource[m];
      Modelica.Blocks.Interfaces.RealInput f;
      Modelica.ComplexBlocks.Interfaces.ComplexInput V[m];
    equation 
      for j in 1:m loop
        connect(f, variableVoltageSource[j].f);
      end for;
      connect(plugToPins_p.pin_p, variableVoltageSource.pin_p);
      connect(variableVoltageSource.pin_n, plugToPins_n.pin_n);
      connect(V, variableVoltageSource.V);
    end VariableVoltageSource;

* * * * *

![image10](Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSourceI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Sources](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources).CurrentSource
================================================================================================================================================================================================================================================================================

**Constant multiphase AC current**

Information
-----------

::

This model describes *m* constant current sources, specifying the
complex currents by the RMS currents and the phase shifts. *m* [single
phase
CurrentSources](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource)
are used.

### See also

[SinglePhase.CurrentSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource),
[VoltageSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource),
[VariableVoltageSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource),
[VariableCurrentSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource)

::

Extends from
[Interfaces.Source](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source)
(Partial voltage / current source).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name  Default           Description
  ------------------------------- ----- ----------------- -----------------
  Integer                         m     3                 Number of phases

  [Frequency](Modelica_SIunits.ht f                       Frequency of the
  ml#Modelica.SIunits.Frequency)                          source [Hz]

  [Current](Modelica_SIunits.html I[m]                    RMS current of
  #Modelica.SIunits.Current)                              the source [A]

  [Angle](Modelica_SIunits.html#M phi[m {0 - (j -         Phase shift of
  odelica.SIunits.Angle)          ]     1)\*2\*pi/m for j the source [rad]
                                        in...             
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model CurrentSource "Constant multiphase AC current"
      extends Interfaces.Source;
      parameter Modelica.SIunits.Frequency f(start=1) "Frequency of the source";
      parameter Modelica.SIunits.Current I[m](start=fill(1,m)) 
        "RMS current of the source";
      parameter Modelica.SIunits.Angle phi[m]={0 - (j-1)*2*pi/m for j in 1:m} 
        "Phase shift of the source";
      QuasiStationary.SinglePhase.Sources.CurrentSource currentSource[
                                                      m](
        each final f=f,
        final phi=phi,
        final I=I);
    equation 
      connect(plugToPins_p.pin_p,currentSource. pin_p);
      connect(currentSource.pin_n, plugToPins_n.pin_n);
    end CurrentSource;

* * * * *

![image11](Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSourceI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Sources](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources).VariableCurrentSource
================================================================================================================================================================================================================================================================================================

**Variable multiphase AC current**

Information
-----------

::

This model describes *m* variable current sources, with *m* complex
signal inputs, specifying the complex current by the complex RMS voltage
components. Additionally, the frequency of the current source is defined
by a real signal input. *m* [single phase
VariableCurrentSources](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource)
are used.

### See also

[SinglePhase.VoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource),
[VoltageSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource),
[VariableVoltageSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource),
[CurrentSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource).

::

Extends from
[Interfaces.Source](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source)
(Partial voltage / current source).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        

  input                                                         f    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks.I      
  nterfaces.RealInput)                                               

  input                                                         I[m] 
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.html#Modelic      
  a.ComplexBlocks.Interfaces.ComplexInput)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VariableCurrentSource "Variable multiphase AC current"
      extends Interfaces.Source;
      QuasiStationary.SinglePhase.Sources.VariableCurrentSource
        variableCurrentSource[m];
      Modelica.Blocks.Interfaces.RealInput f;
      Modelica.ComplexBlocks.Interfaces.ComplexInput I[m];
    equation 
      for j in 1:m loop
        connect(f, variableCurrentSource[j].f);
      end for;
      connect(plugToPins_p.pin_p, variableCurrentSource.pin_p);
      connect(variableCurrentSource.pin_n, plugToPins_n.pin_n);
      connect(I, variableCurrentSource.I);
    end VariableCurrentSource;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:44 2010.
