% Modelica.Magnetic.FluxTubes.Interfaces
% 
% 

[Modelica.Magnetic.FluxTubes](Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes).Interfaces
======================================================================================================

**Interfaces of magnetic network components**

Information
-----------

::

This package contains connectors for the magnetic domain and partial
models for lumped magnetic network components.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  ![image8](Modelica.Magnetic.FluxTubes.Interfa Generic magnetic port
  ces.MagneticPortS.png)                        
  [MagneticPort](Modelica_Magnetic_FluxTubes_In 
  terfaces.html#Modelica.Magnetic.FluxTubes.Int 
  erfaces.MagneticPort)                         

  ![image9](Modelica.Magnetic.FluxTubes.Interfa Positive magnetic port
  ces.PositiveMagneticPortS.png)                
  [PositiveMagneticPort](Modelica_Magnetic_Flux 
  Tubes_Interfaces.html#Modelica.Magnetic.FluxT 
  ubes.Interfaces.PositiveMagneticPort)         

  ![image10](Modelica.Magnetic.FluxTubes.Interf Negative magnetic port
  aces.NegativeMagneticPortS.png)               
  [NegativeMagneticPort](Modelica_Magnetic_Flux 
  Tubes_Interfaces.html#Modelica.Magnetic.FluxT 
  ubes.Interfaces.NegativeMagneticPort)         

  ![image11](Modelica.Magnetic.FluxTubes.Interf Partial component with two
  aces.PartialTwoPortsElementaryS.png)          magnetic ports p and n for
  [PartialTwoPortsElementary](Modelica_Magnetic textual programming
  _FluxTubes_Interfaces.html#Modelica.Magnetic. 
  FluxTubes.Interfaces.PartialTwoPortsElementar 
  y)                                            

  ![image12](Modelica.Magnetic.FluxTubes.Interf Partial component with
  aces.PartialTwoPortsElementaryS.png)          magnetic potential
  [PartialTwoPorts](Modelica_Magnetic_FluxTubes difference between two
  _Interfaces.html#Modelica.Magnetic.FluxTubes. magnetic ports p and n and
  Interfaces.PartialTwoPorts)                   magnetic flux Phi from p
                                                to n

  ![image13](Modelica.Magnetic.FluxTubes.Interf Base class for flux tubes
  aces.PartialFixedShapeS.png)                  with fixed shape during
  [PartialFixedShape](Modelica_Magnetic_FluxTub simulation; linear or
  es_Interfaces.html#Modelica.Magnetic.FluxTube non-linear material
  s.Interfaces.PartialFixedShape)               characteristics

  ![image14](Modelica.Magnetic.FluxTubes.Interf Base class for flux tubes
  aces.PartialForceS.png)                       with reluctance force
  [PartialForce](Modelica_Magnetic_FluxTubes_In generation; constant
  terfaces.html#Modelica.Magnetic.FluxTubes.Int permeability
  erfaces.PartialForce)                         

  ![image15](Modelica.Magnetic.FluxTubes.Interf Base class for leakage
  aces.PartialLeakageS.png)                     flux tubes with
  [PartialLeakage](Modelica_Magnetic_FluxTubes_ position-independent
  Interfaces.html#Modelica.Magnetic.FluxTubes.I permeance and hence no
  nterfaces.PartialLeakage)                     force generation; mu\_r=1
  ------------------------------------------------------------------------

* * * * *

[Modelica.Magnetic.FluxTubes.Interfaces](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces).MagneticPort
=========================================================================================================================================

**Generic magnetic port**

Contents
--------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  [MagneticPotentialDifference](Modelica_SIunits. V\_m Magnetic potential
  html#Modelica.SIunits.MagneticPotentialDifferen      at the port [A]
  ce)                                                  

  flow                                            Phi  Magnetic flux
  [MagneticFlux](Modelica_SIunits.html#Modelica.S      flowing into the
  Iunits.MagneticFlux)                                 port [Wb]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector MagneticPort "Generic magnetic port"
      SI.MagneticPotentialDifference V_m "Magnetic potential at the port";
      flow SI.MagneticFlux Phi "Magnetic flux flowing into the port";

    end MagneticPort;

* * * * *

![image16](Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPortI.png) [Modelica.Magnetic.FluxTubes.Interfaces](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces).PositiveMagneticPort
==============================================================================================================================================================================================================================

**Positive magnetic port**

Information
-----------

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort)
(Generic magnetic port).

Contents
--------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  [MagneticPotentialDifference](Modelica_SIunits. V\_m Magnetic potential
  html#Modelica.SIunits.MagneticPotentialDifferen      at the port [A]
  ce)                                                  

  flow                                            Phi  Magnetic flux
  [MagneticFlux](Modelica_SIunits.html#Modelica.S      flowing into the
  Iunits.MagneticFlux)                                 port [Wb]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector PositiveMagneticPort "Positive magnetic port"
      extends Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort;


    end PositiveMagneticPort;

* * * * *

![image17](Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPortI.png) [Modelica.Magnetic.FluxTubes.Interfaces](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces).NegativeMagneticPort
==============================================================================================================================================================================================================================

**Negative magnetic port**

Information
-----------

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort)
(Generic magnetic port).

Contents
--------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  [MagneticPotentialDifference](Modelica_SIunits. V\_m Magnetic potential
  html#Modelica.SIunits.MagneticPotentialDifferen      at the port [A]
  ce)                                                  

  flow                                            Phi  Magnetic flux
  [MagneticFlux](Modelica_SIunits.html#Modelica.S      flowing into the
  Iunits.MagneticFlux)                                 port [Wb]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector NegativeMagneticPort "Negative magnetic port"
      extends Modelica.Magnetic.FluxTubes.Interfaces.MagneticPort;


    end NegativeMagneticPort;

* * * * *

![image18](Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementaryI.png) [Modelica.Magnetic.FluxTubes.Interfaces](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces).PartialTwoPortsElementary
========================================================================================================================================================================================================================================

**Partial component with two magnetic ports p and n for textual
programming**

Information
-----------

::

Partial model of a flux tube component with two magnetic ports: the
positive port connector port\_p, and the negative port connector
port\_n.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- -----------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Positive
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Posi \_p  magnetic
  tiveMagneticPort)                                            port

  [NegativeMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Negative
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Nega \_n  magnetic
  tiveMagneticPort)                                            port
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialTwoPortsElementary 
      "Partial component with two magnetic ports p and n for textual programming"

      Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort port_p 
        "Positive magnetic port";
      Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort port_n 
        "Negative magnetic port";

    end PartialTwoPortsElementary;

* * * * *

![image19](Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementaryI.png) [Modelica.Magnetic.FluxTubes.Interfaces](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces).PartialTwoPorts
==============================================================================================================================================================================================================================

**Partial component with magnetic potential difference between two
magnetic ports p and n and magnetic flux Phi from p to n**

Information
-----------

::

It is assumed that the magnetic flux flowing into port\_p is identical
to the flux flowing out of port\_n. This magnetic flux is provided
explicitly as flux Phi.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary)
(Partial component with two magnetic ports p and n for textual
programming).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- -----------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Positive
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Posi \_p  magnetic
  tiveMagneticPort)                                            port

  [NegativeMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Negative
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Nega \_n  magnetic
  tiveMagneticPort)                                            port
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialTwoPorts 
      "Partial component with magnetic potential difference between two magnetic ports p and n and magnetic flux Phi from p to n"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      SI.MagneticPotentialDifference V_m 
        "Magnetic potential difference between both ports";
      SI.MagneticFlux Phi "Magnetic flux from port_p to port_n";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;

    end PartialTwoPorts;

* * * * *

![image20](Modelica.Magnetic.FluxTubes.Interfaces.PartialFixedShapeI.png) [Modelica.Magnetic.FluxTubes.Interfaces](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces).PartialFixedShape
========================================================================================================================================================================================================================

**Base class for flux tubes with fixed shape during simulation; linear
or non-linear material characteristics**

Information
-----------

::

Please refer to the description of the sub-package
[Shapes.FixedShape](Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape)
for utilisation of this partial model.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts)
(Partial component with magnetic potential difference between two
magnetic ports p and n and magnetic flux Phi from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name   Default   Description
  --------------------------------- ------ --------- ----------------------
  Material                                           

  Boolean                           nonLin true      = true, if non-linear
                                    earPer           rel. permeability is
                                    meabil           used, otherwise
                                    ity              constant rel.
                                                     permeability

  [RelativePermeability](Modelica_S mu\_rC 1         Constant relative
  Iunits.html#Modelica.SIunits.Rela onst             permeability; used if
  tivePermeability)                                  nonLinearPermeability
                                                     = false [1]

  [BaseData](Modelica_Magnetic_Flux materi Modelica. Ferromagnetic material
  Tubes_Material_SoftMagnetic.html# al     Magnetic. characteristics; used
  Modelica.Magnetic.FluxTubes.Mater        FluxTubes if
  ial.SoftMagnetic.BaseData)               ....      nonLinearPermeability
                                                     = true
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- -----------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Positive
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Posi \_p  magnetic
  tiveMagneticPort)                                            port

  [NegativeMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Negative
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Nega \_n  magnetic
  tiveMagneticPort)                                            port
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialFixedShape 
      "Base class for flux tubes with fixed shape during simulation; linear or non-linear material characteristics"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts;

      parameter Boolean nonLinearPermeability = true 
        "= true, if non-linear rel. permeability is used, otherwise constant rel. permeability";
      parameter SI.RelativePermeability mu_rConst = 1 
        "Constant relative permeability; used if nonLinearPermeability = false";

      parameter Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData
        material=
        Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.BaseData() 
        "Ferromagnetic material characteristics; used if nonLinearPermeability = true";

      SI.Reluctance R_m "Magnetic reluctance";
      SI.Permeance G_m "Magnetic permeance";
      SI.MagneticFluxDensity B "Magnetic flux density";
      SI.CrossSection A "Cross-sectional area penetrated by magnetic flux";
      SI.MagneticFieldStrength H "Magnetic field strength";

        SI.RelativePermeability mu_r "Relative magnetic permeability";

    equation 
      mu_r = if nonLinearPermeability then 
        Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApprox(
            B,
            material.mu_i,
            material.B_myMax,
            material.c_a,
            material.c_b,
            material.n) else mu_rConst;
      R_m = 1/G_m;
      V_m = Phi * R_m;
      B = Phi/A;
      H = B / (mu_0 * mu_r);

    end PartialFixedShape;

* * * * *

![image21](Modelica.Magnetic.FluxTubes.Interfaces.PartialForceI.png) [Modelica.Magnetic.FluxTubes.Interfaces](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces).PartialForce
==============================================================================================================================================================================================================

**Base class for flux tubes with reluctance force generation; constant
permeability**

Information
-----------

::

Please refer to the description of the sub-package
[Shapes.Force](Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force)
for utilisation of this partial model.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts)
(Partial component with magnetic potential difference between two
magnetic ports p and n and magnetic flux Phi from p to n).

Parameters
----------

  ---------------------------------------------------------------------------
  Type                           Name  Defa Description
                                       ult  
  ------------------------------ ----- ---- ---------------------------------
  Boolean                        useSu fals = true, if support flange
                                 pport e    enabled, otherwise implicitly
                                            grounded

  [RelativePermeability](Modelic mu\_r      Relative magnetic permeability
  a_SIunits.html#Modelica.SIunit            [1]
  s.RelativePermeability)                   

  Integer                        dlByd 1    Derivative of flux tube's varying
                                 x          dimension with respect to
                                            armature position; set to +1 or
                                            -1
  ---------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTub port Positive magnetic
  es_Interfaces.html#Modelica.Magnetic.FluxTubes.I \_p  port
  nterfaces.PositiveMagneticPort)                       

  [NegativeMagneticPort](Modelica_Magnetic_FluxTub port Negative magnetic
  es_Interfaces.html#Modelica.Magnetic.FluxTubes.I \_n  port
  nterfaces.NegativeMagneticPort)                       

  [Flange\_b](Modelica_Mechanics_Translational_Int flan Generated
  erfaces.html#Modelica.Mechanics.Translational.In ge   reluctance force
  terfaces.Flange_b)                                    at armature
                                                        position

  [Support](Modelica_Mechanics_Translational_Inter supp Support/housing of
  faces.html#Modelica.Mechanics.Translational.Inte ort  component
  rfaces.Support)                                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialForce 
      "Base class for flux tubes with reluctance force generation; constant permeability"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts;

      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";

      parameter SI.RelativePermeability mu_r(start = 1) 
        "Relative magnetic permeability";

      SI.Force F_m "Reluctance force";
      Modelica.SIunits.Length s = flange.s - s_support 
        "Distance between flange and support";

      SI.Reluctance R_m "Magnetic reluctance";
      SI.Permeance G_m "Magnetic permeance";
      SI.Permeability dGmBydx 
        "Derivative of permeance with respect to armature position";
      parameter Integer dlBydx = 1 
        "Derivative of flux tube's varying dimension with respect to armature position; set to +1 or -1";

     Modelica.Mechanics.Translational.Interfaces.Flange_b flange 
        "Generated reluctance force at armature position";
     Modelica.Mechanics.Translational.Interfaces.Support support(
                 s=s_support, f=-flange.f) if 
        useSupport "Support/housing of component";

    protected 
      Modelica.SIunits.Length s_support "Absolute position of support flange";

    equation 
      V_m = Phi * R_m;
      R_m = 1/G_m;
      F_m = 0.5 * V_m^2 * dGmBydx;

      if not useSupport then
         s_support = 0;
      end if;
      flange.f = -F_m;

    end PartialForce;

* * * * *

![image22](Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakageI.png) [Modelica.Magnetic.FluxTubes.Interfaces](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces).PartialLeakage
==================================================================================================================================================================================================================

**Base class for leakage flux tubes with position-independent permeance
and hence no force generation; mu\_r=1**

Information
-----------

::

Please refer to the description of the sub-package
[Shapes.Leakage](Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage)
for utilisation of this partial model.

::

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts)
(Partial component with magnetic potential difference between two
magnetic ports p and n and magnetic flux Phi from p to n).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- -----------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Positive
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Posi \_p  magnetic
  tiveMagneticPort)                                            port

  [NegativeMagneticPort](Modelica_Magnetic_FluxTubes_Inte port Negative
  rfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.Nega \_n  magnetic
  tiveMagneticPort)                                            port
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialLeakage 
      "Base class for leakage flux tubes with position-independent permeance and hence no force generation; mu_r=1"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPorts;

      SI.Reluctance R_m "Magnetic reluctance";
      SI.Permeance G_m "Magnetic permeance";

    equation 
      V_m = Phi * R_m;
      R_m = 1/G_m;

    end PartialLeakage;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:53 2010.
