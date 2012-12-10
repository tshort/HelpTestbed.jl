% Modelica.Magnetic.FundamentalWave.Sources
% 
% 

[Modelica.Magnetic.FundamentalWave](Modelica_Magnetic_FundamentalWave.html#Modelica.Magnetic.FundamentalWave).Sources
=====================================================================================================================

**Sources**

Information
-----------

::

This package provides sources of magnetic potential difference and
magnetic flux.

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image4](Modelica.Magnetic.FundamentalWave.Sources.Const Source with
  antMagneticPotentialDifferenceS.png)                      constant
  [ConstantMagneticPotentialDifference](Modelica_Magnetic_F magnetic
  undamentalWave_Sources.html#Modelica.Magnetic.Fundamental potential
  Wave.Sources.ConstantMagneticPotentialDifference)         difference

  ![image5](Modelica.Magnetic.FundamentalWave.Sources.Signa Source of
  lMagneticPotentialDifferenceS.png)                        magnetic
  [SignalMagneticPotentialDifference](Modelica_Magnetic_Fun potential
  damentalWave_Sources.html#Modelica.Magnetic.FundamentalWa difference
  ve.Sources.SignalMagneticPotentialDifference)             with signal
                                                            input

  ![image6](Modelica.Magnetic.FundamentalWave.Sources.Const Source of
  antFluxS.png)                                             constant
  [ConstantFlux](Modelica_Magnetic_FundamentalWave_Sources. magnetic flux
  html#Modelica.Magnetic.FundamentalWave.Sources.ConstantFl 
  ux)                                                       

  ![image7](Modelica.Magnetic.FundamentalWave.Sources.Signa Source of
  lFluxS.png)                                               constant
  [SignalFlux](Modelica_Magnetic_FundamentalWave_Sources.ht magnetic flux
  ml#Modelica.Magnetic.FundamentalWave.Sources.SignalFlux)  
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifferenceI.png) [Modelica.Magnetic.FundamentalWave.Sources](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources).ConstantMagneticPotentialDifference
=======================================================================================================================================================================================================================================================================

**Source with constant magnetic potential difference**

Information
-----------

::

Source of constant magneto motive force.

### See also

[SignalMagneticPotentialDifference](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference),
[ConstantFlux](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux),
[SignalFlux](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalFlux)

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort)
(Two magnetic ports for graphical modeling).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                         Nam Default  Description
                                               e            
  -------------------------------------------- --- -------- ---------------
  [ComplexMagneticPotentialDifference](Modelic V\_ Complex( Complex
  a_SIunits.html#Modelica.SIunits.ComplexMagne m   re=1,    magnetic
  ticPotentialDifference)                          im=0)    potential
                                                            difference
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  [PositiveMagneticPort](Modelica_Magnetic_FundamentalWa port Positive
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_p  complex
  nterfaces.PositiveMagneticPort)                             magnetic port

  [NegativeMagneticPort](Modelica_Magnetic_FundamentalWa port Negative
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_n  complex
  nterfaces.NegativeMagneticPort)                             magnetic port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ConstantMagneticPotentialDifference 
      "Source with constant magnetic potential difference"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;
      parameter Modelica.SIunits.ComplexMagneticPotentialDifference  V_m=
            Complex(re=1, im=0) "Complex magnetic potential difference";

      Modelica.SIunits.ComplexMagneticFlux  Phi "Complex magnetic flux";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

    end ConstantMagneticPotentialDifference;

* * * * *

![image9](Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifferenceI.png) [Modelica.Magnetic.FundamentalWave.Sources](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources).SignalMagneticPotentialDifference
===================================================================================================================================================================================================================================================================

**Source of magnetic potential difference with signal input**

Information
-----------

::

Source of magneto motive force with complex signal input.

### See also

[ConstantMagneticPotentialDifference](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference),
[ConstantFlux](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux),
[SignalFlux](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalFlux)

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort)
(Two magnetic ports for graphical modeling).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  [PositiveMagneticPort](Modelica_Magnetic_Fundame port Positive complex
  ntalWave_Interfaces.html#Modelica.Magnetic.Funda \_p  magnetic port
  mentalWave.Interfaces.PositiveMagneticPort)           

  [NegativeMagneticPort](Modelica_Magnetic_Fundame port Negative complex
  ntalWave_Interfaces.html#Modelica.Magnetic.Funda \_n  magnetic port
  mentalWave.Interfaces.NegativeMagneticPort)           

  input                                            V\_m Complex signal
  [ComplexInput](Modelica_ComplexBlocks_Interfaces      input of magnetic
  .html#Modelica.ComplexBlocks.Interfaces.ComplexI      potential
  nput)                                                 difference
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SignalMagneticPotentialDifference 
      "Source of magnetic potential difference with signal input"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      Modelica.ComplexBlocks.Interfaces.ComplexInput V_m 
        "Complex signal input of magnetic potential difference";
      Modelica.SIunits.ComplexMagneticFlux  Phi "Complex magnetic flux";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

    end SignalMagneticPotentialDifference;

* * * * *

![image10](Modelica.Magnetic.FundamentalWave.Sources.ConstantFluxI.png) [Modelica.Magnetic.FundamentalWave.Sources](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources).ConstantFlux
==========================================================================================================================================================================================================================

**Source of constant magnetic flux**

Information
-----------

::

Source of constant magnetic flux.

### See also

[ConstantMagneticPotentialDifference](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference),
[SignalMagneticPotentialDifference](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference),
[SignalFlux](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalFlux)

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort)
(Two magnetic ports for graphical modeling).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                        Name Default     Description
  ------------------------------------------- ---- ----------- ------------
  [ComplexMagneticFlux](Modelica_SIunits.html Phi  Complex(re= Complex
  #Modelica.SIunits.ComplexMagneticFlux)           1,          magnetic
                                                   im=0)       flux
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  [PositiveMagneticPort](Modelica_Magnetic_FundamentalWa port Positive
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_p  complex
  nterfaces.PositiveMagneticPort)                             magnetic port

  [NegativeMagneticPort](Modelica_Magnetic_FundamentalWa port Negative
  ve_Interfaces.html#Modelica.Magnetic.FundamentalWave.I \_n  complex
  nterfaces.NegativeMagneticPort)                             magnetic port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ConstantFlux "Source of constant magnetic flux"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      Modelica.SIunits.ComplexMagneticPotentialDifference  V_m 
        "Complex magnetic potential difference";
      parameter Modelica.SIunits.ComplexMagneticFlux  Phi=
        Complex(re=1, im=0) "Complex magnetic flux";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

    end ConstantFlux;

* * * * *

![image11](Modelica.Magnetic.FundamentalWave.Sources.SignalFluxI.png) [Modelica.Magnetic.FundamentalWave.Sources](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources).SignalFlux
======================================================================================================================================================================================================================

**Source of constant magnetic flux**

Information
-----------

::

Source of magnetic flux with complex signal input.

### See also

[ConstantMagneticPotentialDifference](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference),
[SignalMagneticPotentialDifference](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference),
[ConstantFlux](Modelica_Magnetic_FundamentalWave_Sources.html#Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux),

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort)
(Two magnetic ports for graphical modeling).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- ---------------
  [PositiveMagneticPort](Modelica_Magnetic_Fundamental port Positive
  Wave_Interfaces.html#Modelica.Magnetic.FundamentalWa \_p  complex
  ve.Interfaces.PositiveMagneticPort)                       magnetic port

  [NegativeMagneticPort](Modelica_Magnetic_Fundamental port Negative
  Wave_Interfaces.html#Modelica.Magnetic.FundamentalWa \_n  complex
  ve.Interfaces.NegativeMagneticPort)                       magnetic port

  input                                                Phi  Complex signal
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.htm      input of
  l#Modelica.ComplexBlocks.Interfaces.ComplexInput)         magnetic flux
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SignalFlux "Source of constant magnetic flux"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      Modelica.SIunits.ComplexMagneticPotentialDifference  V_m 
        "Complex magnetic potential difference";
      Modelica.ComplexBlocks.Interfaces.ComplexInput Phi 
        "Complex signal input of magnetic flux";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

    end SignalFlux;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:02 2010.
