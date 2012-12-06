% Modelica.Mechanics.Translational.Interfaces
% 
% 

[Modelica.Mechanics.Translational](Modelica_Mechanics_Translational.html#Modelica.Mechanics.Translational).Interfaces
=====================================================================================================================

**Interfaces for 1-dim. translational mechanical components**

Information
-----------

::

This package contains connectors and partial models for 1-dim.
translational mechanical components. The components of this package can
only be used as basic building elements for models.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                       Description
  ------------------------------------------ -----------------------------
  ![image18](Modelica.Mechanics.Translationa (left) 1D translational
  l.Interfaces.Flange_aS.png)                flange (flange axis directed
  [Flange\_a](Modelica_Mechanics_Translation INTO cut plane, e. g. from
  al_Interfaces.html#Modelica.Mechanics.Tran left to right)
  slational.Interfaces.Flange_a)             

  ![image19](Modelica.Mechanics.Translationa (right) 1D translational
  l.Interfaces.Flange_bS.png)                flange (flange axis directed
  [Flange\_b](Modelica_Mechanics_Translation OUT OF cut plane)
  al_Interfaces.html#Modelica.Mechanics.Tran 
  slational.Interfaces.Flange_b)             

  ![image20](Modelica.Mechanics.Translationa Support/housing 1D
  l.Interfaces.SupportS.png)                 translational flange
  [Support](Modelica_Mechanics_Translational 
  _Interfaces.html#Modelica.Mechanics.Transl 
  ational.Interfaces.Support)                

  ![image21](Modelica.Mechanics.Translationa Adapter model to utilize
  l.Interfaces.InternalSupportS.png)         conditional support connector
  [InternalSupport](Modelica_Mechanics_Trans 
  lational_Interfaces.html#Modelica.Mechanic 
  s.Translational.Interfaces.InternalSupport 
  )                                          

  ![image22](Modelica.Mechanics.Translationa Component with two
  l.Interfaces.PartialTwoFlangesS.png)       translational 1D flanges
  [PartialTwoFlanges](Modelica_Mechanics_Tra 
  nslational_Interfaces.html#Modelica.Mechan 
  ics.Translational.Interfaces.PartialTwoFla 
  nges)                                      

  ![image23](Modelica.Mechanics.Translationa Partial model for a component
  l.Interfaces.PartialOneFlangeAndSupportS.p with one translational 1-dim.
  ng)                                        shaft flange and a support
  [PartialOneFlangeAndSupport](Modelica_Mech used for graphical modeling,
  anics_Translational_Interfaces.html#Modeli i.e., the model is build up
  ca.Mechanics.Translational.Interfaces.Part by drag-and-drop from
  ialOneFlangeAndSupport)                    elementary components

  ![image24](Modelica.Mechanics.Translationa Partial model for a component
  l.Interfaces.PartialTwoFlangesAndSupportS. with two translational 1-dim.
  png)                                       shaft flanges and a support
  [PartialTwoFlangesAndSupport](Modelica_Mec used for graphical modeling,
  hanics_Translational_Interfaces.html#Model i.e., the model is build up
  ica.Mechanics.Translational.Interfaces.Par by drag-and-drop from
  tialTwoFlangesAndSupport)                  elementary components

  ![image25](Modelica.Mechanics.Translationa Rigid connection of two
  l.Interfaces.PartialRigidS.png)            translational 1D flanges
  [PartialRigid](Modelica_Mechanics_Translat 
  ional_Interfaces.html#Modelica.Mechanics.T 
  ranslational.Interfaces.PartialRigid)      

  ![image26](Modelica.Mechanics.Translationa Compliant connection of two
  l.Interfaces.PartialRigidS.png)            translational 1D flanges
  [PartialCompliant](Modelica_Mechanics_Tran 
  slational_Interfaces.html#Modelica.Mechani 
  cs.Translational.Interfaces.PartialComplia 
  nt)                                        

  ![image27](Modelica.Mechanics.Translationa Base model for the compliant
  l.Interfaces.PartialRigidS.png)            connection of two
  [PartialCompliantWithRelativeStates](Model translational 1-dim. shaft
  ica_Mechanics_Translational_Interfaces.htm flanges where the relative
  l#Modelica.Mechanics.Translational.Interfa position and relative
  ces.PartialCompliantWithRelativeStates)    velocities are used as states

  ![image28](Modelica.Mechanics.Translationa Obsolete partial model. Use
  l.Interfaces.PartialElementaryOneFlangeAnd PartialElementaryOneFlangeAnd
  SupportS.png)                              Support2.
  [PartialElementaryOneFlangeAndSupport](Mod 
  elica_Mechanics_Translational_Interfaces.h 
  tml#Modelica.Mechanics.Translational.Inter 
  faces.PartialElementaryOneFlangeAndSupport 
  )                                          

  ![image29](Modelica.Mechanics.Translationa Partial model for a component
  l.Interfaces.PartialElementaryOneFlangeAnd with one translational 1-dim.
  Support2S.png)                             shaft flange and a support
  [PartialElementaryOneFlangeAndSupport2](Mo used for textual modeling,
  delica_Mechanics_Translational_Interfaces. i.e., for elementary models
  html#Modelica.Mechanics.Translational.Inte 
  rfaces.PartialElementaryOneFlangeAndSuppor 
  t2)                                        

  ![image30](Modelica.Mechanics.Translationa Obsolete partial model. Use
  l.Interfaces.PartialElementaryTwoFlangesAn PartialElementaryTwoFlangesAn
  dSupportS.png)                             dSupport2.
  [PartialElementaryTwoFlangesAndSupport](Mo 
  delica_Mechanics_Translational_Interfaces. 
  html#Modelica.Mechanics.Translational.Inte 
  rfaces.PartialElementaryTwoFlangesAndSuppo 
  rt)                                        

  ![image31](Modelica.Mechanics.Translationa Partial model for a component
  l.Interfaces.PartialElementaryTwoFlangesAn with one translational 1-dim.
  dSupport2S.png)                            shaft flange and a support
  [PartialElementaryTwoFlangesAndSupport2](M used for textual modeling,
  odelica_Mechanics_Translational_Interfaces i.e., for elementary models
  .html#Modelica.Mechanics.Translational.Int 
  erfaces.PartialElementaryTwoFlangesAndSupp 
  ort2)                                      

  ![image32](Modelica.Mechanics.Translationa Partial model to transform
  l.Interfaces.PartialElementaryRotationalTo rotational into translational
  TranslationalS.png)                        motion
  [PartialElementaryRotationalToTranslationa 
  l](Modelica_Mechanics_Translational_Interf 
  aces.html#Modelica.Mechanics.Translational 
  .Interfaces.PartialElementaryRotationalToT 
  ranslational)                              

  ![image33](Modelica.Mechanics.Translationa Partial model of a force
  l.Interfaces.PartialForceS.png)            acting at the flange
  [PartialForce](Modelica_Mechanics_Translat (accelerates the flange)
  ional_Interfaces.html#Modelica.Mechanics.T 
  ranslational.Interfaces.PartialForce)      

  ![image34](Modelica.Mechanics.Translationa Device to measure a single
  l.Interfaces.PartialAbsoluteSensorS.png)   absolute flange variable
  [PartialAbsoluteSensor](Modelica_Mechanics 
  _Translational_Interfaces.html#Modelica.Me 
  chanics.Translational.Interfaces.PartialAb 
  soluteSensor)                              

  ![image35](Modelica.Mechanics.Translationa Device to measure a single
  l.Interfaces.PartialRelativeSensorS.png)   relative variable between two
  [PartialRelativeSensor](Modelica_Mechanics flanges
  _Translational_Interfaces.html#Modelica.Me 
  chanics.Translational.Interfaces.PartialRe 
  lativeSensor)                              

  [PartialFriction](Modelica_Mechanics_Trans Base model of Coulomb
  lational_Interfaces.html#Modelica.Mechanic friction elements
  s.Translational.Interfaces.PartialFriction 
  )                                          
  ------------------------------------------------------------------------

* * * * *

![image36](Modelica.Mechanics.Translational.Interfaces.Flange_aI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).Flange\_a
===========================================================================================================================================================================================================================

**(left) 1D translational flange (flange axis directed INTO cut plane,
e. g. from left to right)**

Information
-----------

::

This is a flange for 1D translational mechanical systems. In the cut
plane of the flange a unit vector n, called flange axis, is defined
which is directed INTO the cut plane, i. e. from left to right. All
vectors in the cut plane are resolved with respect to this unit vector.
E.g. force f characterizes a vector which is directed in the direction
of n with value equal to f. When this flange is connected to other 1D
translational flanges, this means that the axes vectors of the connected
flanges are identical.

The following variables are transported through this connector:

    s: Absolute position of the flange in [m]. A positive translation
       means that the flange is translated along the flange axis.
    f: Cut-force in direction of the flange axis in [N].

::

Contents
--------

  ------------------------------------------------------------------------
  Type                                      Name  Description
  ----------------------------------------- ----- ------------------------
  [Position](Modelica_SIunits.html#Modelica s     Absolute position of
  .SIunits.Position)                              flange [m]

  flow                                      f     Cut force directed into
  [Force](Modelica_SIunits.html#Modelica.SI       flange [N]
  units.Force)                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Flange_a 
      "(left) 1D translational flange (flange axis directed INTO cut plane, e. g. from left to right)"

      SI.Position s "Absolute position of flange";
      flow SI.Force f "Cut force directed into flange";
    end Flange_a;

* * * * *

![image37](Modelica.Mechanics.Translational.Interfaces.Flange_bI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).Flange\_b
===========================================================================================================================================================================================================================

**(right) 1D translational flange (flange axis directed OUT OF cut
plane)**

Information
-----------

::

This is a flange for 1D translational mechanical systems. In the cut
plane of the flange a unit vector n, called flange axis, is defined
which is directed OUT OF the cut plane. All vectors in the cut plane are
resolved with respect to this unit vector. E.g. force f characterizes a
vector which is directed in the direction of n with value equal to f.
When this flange is connected to other 1D translational flanges, this
means that the axes vectors of the connected flanges are identical.

The following variables are transported through this connector:

    s: Absolute position of the flange in [m]. A positive translation
       means that the flange is translated along the flange axis.
    f: Cut-force in direction of the flange axis in [N].

::

Contents
--------

  ------------------------------------------------------------------------
  Type                                      Name  Description
  ----------------------------------------- ----- ------------------------
  [Position](Modelica_SIunits.html#Modelica s     Absolute position of
  .SIunits.Position)                              flange [m]

  flow                                      f     Cut force directed into
  [Force](Modelica_SIunits.html#Modelica.SI       flange [N]
  units.Force)                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Flange_b 
      "(right) 1D translational flange (flange axis directed OUT OF cut plane)"

      SI.Position s "Absolute position of flange";
      flow SI.Force f "Cut force directed into flange";
    end Flange_b;

* * * * *

![image38](Modelica.Mechanics.Translational.Interfaces.SupportI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).Support
========================================================================================================================================================================================================================

**Support/housing 1D translational flange**

Information
-----------

::

This is a connector for 1-dim. rotational mechanical systems and models
the support or housing of a shaft. The following variables are defined
in this connector:

### s

Absolute psotion of the support/housing in [m]

### f

Reaction force in the support/housing in [N]

The support connector is usually defined as conditional connector. It is
most convenient to utilize it

-   For models to be build graphically (i.e., the model is build up by
    drag-and-drop from elementary components):
    [PartialOneFlangeAndSupport](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupport),
    [PartialTwoFlangesAndSupport](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupport),
-   For models to be build textually (i.e., elementary models):
    [PartialElementaryOneFlangeAndSupport](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport),
    [PartialElementaryTwoFlangesAndSupport](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport),
    [PartialElementaryRotationalToTranslational](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslational).

::

Contents
--------

  ------------------------------------------------------------------------
  Type                                      Name  Description
  ----------------------------------------- ----- ------------------------
  [Position](Modelica_SIunits.html#Modelica s     Absolute position of
  .SIunits.Position)                              flange [m]

  flow                                      f     Cut force directed into
  [Force](Modelica_SIunits.html#Modelica.SI       flange [N]
  units.Force)                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Support "Support/housing 1D translational flange"

      SI.Position s "Absolute position of flange";
      flow SI.Force f "Cut force directed into flange";
    end Support;

* * * * *

![image39](Modelica.Mechanics.Translational.Interfaces.InternalSupportI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).InternalSupport
========================================================================================================================================================================================================================================

**Adapter model to utilize conditional support connector**

Information
-----------

::

This is an adapter model to utilize a conditional support connector in
an elementary component, i.e., where the component equations are defined
textually:

-   If *useSupport = true*, the flange has to be connected to the
    conditional support connector.
-   If *useSupport = false*, the flange has to be connected to the
    conditional fixed model.

Variable **f** is defined as **input** and must be provided when using
this component as a modifier (computed via a force balance in the model
where InternalSupport is used). Usually, model InternalSupport is
utilized via the partial models:

> [PartialElementaryOneFlangeAndSupport](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport),
>
> [PartialElementaryTwoFlangesAndSupport](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport),
>
> [PartialElementaryRotationalToTranslational](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslational).

Note, the support position can always be accessed as internalSupport.s,
and the support force can always be accessed as internalSupport.f.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                           Na Description
                                 me 
  ------------------------------ -- ---------------------------------------
  [Flange\_a](Modelica_Mechanics fl Internal support flange (must be
  _Translational_Interfaces.html an connected to the conditional support
  #Modelica.Mechanics.Translatio ge connector for useSupport=true and to
  nal.Interfaces.Flange_a)          conditional fixed model for
                                    useSupport=false)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model InternalSupport 
      "Adapter model to utilize conditional support connector"
      input SI.Force f 
        "External support force (must be computed via force balance in model where InternalSupport is used; = flange.f)";
      SI.Position s "External support position (= flange.s)";
      Flange_a flange 
        "Internal support flange (must be connected to the conditional support connector for useSupport=true and to conditional fixed model for useSupport=false)";

    equation 
      flange.f = f;
      flange.s = s;
    end InternalSupport;

* * * * *

![image40](Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialTwoFlanges
============================================================================================================================================================================================================================================

**Component with two translational 1D flanges**

Information
-----------

::

This is a 1D translational component with two flanges. It is used e.g.,
to built up parts of a drive train consisting of several base
components.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Flange\_a](Modelica_Mechanics_Transla flan (left) driving flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed in to
  ics.Translational.Interfaces.Flange_a) a    cut plane, e. g. from left
                                              to right)

  [Flange\_b](Modelica_Mechanics_Transla flan (right) driven flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed out of
  ics.Translational.Interfaces.Flange_b) b    cut plane)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialTwoFlanges 
      "Component with two translational 1D flanges "

      Flange_a flange_a 
        "(left) driving flange (flange axis directed in to cut plane, e. g. from left to right)";
      Flange_b flange_b 
        "(right) driven flange (flange axis directed out of cut plane)";
    end PartialTwoFlanges;

* * * * *

![image41](Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupportI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialOneFlangeAndSupport
==============================================================================================================================================================================================================================================================

**Partial model for a component with one translational 1-dim. shaft
flange and a support used for graphical modeling, i.e., the model is
build up by drag-and-drop from elementary components**

Information
-----------

::

This is a 1-dim. translational component with one flange and a
support/housing. It is used e.g., to build up parts of a drive train
graphically consisting of several components.

If *useSupport=true*, the support connector is conditionally enabled and
needs to be connected. If *useSupport=false*, the support connector is
conditionally disabled and instead the component is internally fixed to
ground.

::

Parameters
----------

  ---------------------------------------------------------------------------
  Type     Name       Default  Description
  -------- ---------- -------- ----------------------------------------------
  Boolean  useSupport false    = true, if support flange enabled, otherwise
                               implicitly grounded
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name  Description
  ---------------------------------------------------- ----- --------------
  [Flange\_b](Modelica_Mechanics_Translational_Interfa flang Flange of
  ces.html#Modelica.Mechanics.Translational.Interfaces e     component
  .Flange_b)                                                 

  [Support](Modelica_Mechanics_Translational_Interface suppo Support/housin
  s.html#Modelica.Mechanics.Translational.Interfaces.S rt    g
  upport)                                                    of component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialOneFlangeAndSupport 
      "Partial model for a component with one translational 1-dim. shaft flange and a support used for graphical modeling, i.e., the model is build up by drag-and-drop from elementary components"
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Flange_b flange "Flange of component";
      Support support if useSupport "Support/housing of component";
    protected 
      Support internalSupport 
        "Internal support/housing of component (either connected to support, if useSupport=true, or connected to fixed, if useSupport=false)";
      Components.Fixed fixed if not useSupport 
        "Fixed support/housing, if not useSupport";
    equation 
      connect(fixed.flange, internalSupport);
      connect(internalSupport, support);
    end PartialOneFlangeAndSupport;

* * * * *

![image42](Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupportI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialTwoFlangesAndSupport
================================================================================================================================================================================================================================================================

**Partial model for a component with two translational 1-dim. shaft
flanges and a support used for graphical modeling, i.e., the model is
build up by drag-and-drop from elementary components**

Information
-----------

::

This is a 1-dim. translational component with two flanges and a
support/housing. It is used e.g., to build up parts of a drive train
graphically consisting of several components.

If *useSupport=true*, the support connector is conditionally enabled and
needs to be connected. If *useSupport=false*, the support connector is
conditionally disabled and instead the component is internally fixed to
ground.

::

Parameters
----------

  ---------------------------------------------------------------------------
  Type     Name       Default  Description
  -------- ---------- -------- ----------------------------------------------
  Boolean  useSupport false    = true, if support flange enabled, otherwise
                               implicitly grounded
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Flange\_a](Modelica_Mechanics_Translational_Interf flange Flange of left
  aces.html#Modelica.Mechanics.Translational.Interfac \_a    end
  es.Flange_a)                                               

  [Flange\_b](Modelica_Mechanics_Translational_Interf flange Flange of
  aces.html#Modelica.Mechanics.Translational.Interfac \_b    right end
  es.Flange_b)                                               

  [Support](Modelica_Mechanics_Translational_Interfac suppor Support/housin
  es.html#Modelica.Mechanics.Translational.Interfaces t      g
  .Support)                                                  of component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialTwoFlangesAndSupport 
      "Partial model for a component with two translational 1-dim. shaft flanges and a support used for graphical modeling, i.e., the model is build up by drag-and-drop from elementary components"
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Flange_a flange_a "Flange of left end";
      Flange_b flange_b "Flange of right end";
      Support support if useSupport "Support/housing of component";
    protected 
      Support internalSupport 
        "Internal support/housing of component (either connected to support, if useSupport=true, or connected to fixed, if useSupport=false)";
      Components.Fixed fixed if not useSupport 
        "Fixed support/housing, if not useSupport";
    equation 
      connect(fixed.flange, internalSupport);
      connect(internalSupport, support);
    end PartialTwoFlangesAndSupport;

* * * * *

![image43](Modelica.Mechanics.Translational.Interfaces.PartialRigidI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialRigid
==================================================================================================================================================================================================================================

**Rigid connection of two translational 1D flanges**

Information
-----------

::

This is a 1-dim. translational component with two *rigidly* connected
flanges. The fixed distance between the left and the right flange is
defined by parameter "L". The forces at the right and left flange can be
different. It is used e.g., to built up sliding masses.

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                      Nam Defa Description
                            e   ult  
  ------------------------- --- ---- -------------------------------------
  [Length](Modelica_SIunits L        Length of component, from left flange
  .html#Modelica.SIunits.Le          to right flange (= flange\_b.s -
  ngth)                              flange\_a.s) [m]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- -----------------
  [Flange\_a](Modelica_Mechanics_Translational_Int flang Left flange of
  erfaces.html#Modelica.Mechanics.Translational.In e\_a  translational
  terfaces.Flange_a)                                     component

  [Flange\_b](Modelica_Mechanics_Translational_Int flang Right flange of
  erfaces.html#Modelica.Mechanics.Translational.In e\_b  translational
  terfaces.Flange_b)                                     component
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialRigid 
      "Rigid connection of two translational 1D flanges "
      SI.Position s 
        "Absolute position of center of component (s = flange_a.s + L/2 = flange_b.s - L/2)";
      parameter SI.Length L(start=0) 
        "Length of component, from left flange to right flange (= flange_b.s - flange_a.s)";
      Flange_a flange_a "Left flange of translational component";
      Flange_b flange_b "Right flange of translational component";
    equation 
      flange_a.s = s - L/2;
      flange_b.s = s + L/2;
    end PartialRigid;

* * * * *

![image44](Modelica.Mechanics.Translational.Interfaces.PartialRigidI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialCompliant
======================================================================================================================================================================================================================================

**Compliant connection of two translational 1D flanges**

Information
-----------

::

This is a 1D translational component with a *compliant*connection of two
translational 1D flanges where inertial effects between the two flanges
are not included. The absolute value of the force at the left and the
right flange is the same. It is used to built up springs, dampers etc.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                         Name  Description
  -------------------------------------------- ----- ----------------------
  [Flange\_a](Modelica_Mechanics_Translational flang Left flange of
  _Interfaces.html#Modelica.Mechanics.Translat e\_a  compliant 1-dim.
  ional.Interfaces.Flange_a)                         translational
                                                     component

  [Flange\_b](Modelica_Mechanics_Translational flang Right flange of
  _Interfaces.html#Modelica.Mechanics.Translat e\_b  compliant 1-dim.
  ional.Interfaces.Flange_b)                         translational
                                                     component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialCompliant 
      "Compliant connection of two translational 1D flanges"

      Flange_a flange_a "Left flange of compliant 1-dim. translational component";
      Flange_b flange_b "Right flange of compliant 1-dim. translational component";
      SI.Distance s_rel(start=0) "Relative distance (= flange_b.s - flange_a.s)";
      SI.Force f "Force between flanges (positive in direction of flange axis R)";

    equation 
      s_rel = flange_b.s - flange_a.s;
      flange_b.f = f;
      flange_a.f = -f;
    end PartialCompliant;

* * * * *

![image45](Modelica.Mechanics.Translational.Interfaces.PartialRigidI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialCompliantWithRelativeStates
========================================================================================================================================================================================================================================================

**Base model for the compliant connection of two translational 1-dim.
shaft flanges where the relative position and relative velocities are
used as states**

Information
-----------

::

This is a 1-dim. translational component with a compliant connection of
two translational 1-dim. flanges where inertial effects between the two
flanges are neglected. The basic assumption is that the cut-forces of
the two flanges sum-up to zero, i.e., they have the same absolute value
but opposite sign: flange\_a.f + flange\_b.f = 0. This base class is
used to built up force elements such as springs, dampers, friction.

The difference to base classe "PartialCompliant" is that the relative
distance and the relative velocity are defined as preferred states. The
reason is that for a large class of drive trains, the absolute position
is quickly increasing during operation. Numerically, it is better to use
relative distances between drive train components because they remain in
a limited size. For this reason, StateSelect.prefer is set for the
relative distance of this component.

In order to improve the numerics, a nominal value for the relative
distance should be set, since drive train distances are in a small order
and then step size control of the integrator is practically switched off
for such a variable. A default nominal value of s\_nominal = 1e-4 is
defined. This nominal value might also be computed from other values,
such as "s\_nominal = f\_nominal / c" for a spring, if f\_nominal and c
have more meaningful values for the user.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name    Default    Description
  ------------------------------ ------- ---------- -----------------------
  **Advanced**                                      

  StateSelect                    stateSe StateSelec Priority to use
                                 lect    t.prefer   phi\_rel and w\_rel as
                                                    states

  [Distance](Modelica_SIunits.ht s\_nomi 1e-4       Nominal value of s\_rel
  ml#Modelica.SIunits.Distance)  nal                (used for scaling) [m]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                         Name  Description
  -------------------------------------------- ----- ----------------------
  [Flange\_a](Modelica_Mechanics_Translational flang Left flange of
  _Interfaces.html#Modelica.Mechanics.Translat e\_a  compliant 1-dim.
  ional.Interfaces.Flange_a)                         translational
                                                     component

  [Flange\_b](Modelica_Mechanics_Translational flang Right flange of
  _Interfaces.html#Modelica.Mechanics.Translat e\_b  compliant 1-dim.
  ional.Interfaces.Flange_b)                         transational component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialCompliantWithRelativeStates 
      "Base model for the compliant connection of two translational 1-dim. shaft flanges where the relative position and relative velocities are used as states"

      parameter StateSelect stateSelect=StateSelect.prefer 
        "Priority to use phi_rel and w_rel as states";
      parameter SI.Distance s_nominal=1e-4 
        "Nominal value of s_rel (used for scaling)";

      SI.Distance s_rel(start=0, stateSelect=stateSelect, nominal=s_nominal) 
        "Relative distance (= flange_b.s - flange_a.s)";
      SI.Velocity v_rel(start=0, stateSelect=stateSelect) 
        "Relative velocity (= der(s_rel))";

      SI.Force f "Forces between flanges (= flange_b.f)";
      Translational.Interfaces.Flange_a flange_a 
        "Left flange of compliant 1-dim. translational component";
      Translational.Interfaces.Flange_b flange_b 
        "Right flange of compliant 1-dim. transational component";

    equation 
      s_rel = flange_b.s - flange_a.s;
      v_rel = der(s_rel);
      flange_b.f =  f;
      flange_a.f = -f;
    end PartialCompliantWithRelativeStates;

* * * * *

![image46](Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupportI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialElementaryOneFlangeAndSupport
==================================================================================================================================================================================================================================================================================

**Obsolete partial model. Use PartialElementaryOneFlangeAndSupport2.**

Information
-----------

::

This is a 1-dim. translational component with one flange and a
support/housing. It is used to build up elementary components of a drive
train with equations in the text layer.

If *useSupport=true*, the support connector is conditionally enabled and
needs to be connected. If *useSupport=false*, the support connector is
conditionally disabled and instead the component is internally fixed to
ground.

::

Extends from
[Modelica.Icons.ObsoleteModel](Modelica_Icons.html#Modelica.Icons.ObsoleteModel)
(Icon for classes that are obsolete and will be removed in later
versions).

Parameters
----------

  ---------------------------------------------------------------------------
  Type     Name       Default  Description
  -------- ---------- -------- ----------------------------------------------
  Boolean  useSupport false    = true, if support flange enabled, otherwise
                               implicitly grounded
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name  Description
  ---------------------------------------------------- ----- --------------
  [Flange\_b](Modelica_Mechanics_Translational_Interfa flang Flange of
  ces.html#Modelica.Mechanics.Translational.Interfaces e     component
  .Flange_b)                                                 

  [Support](Modelica_Mechanics_Translational_Interface suppo Support/housin
  s.html#Modelica.Mechanics.Translational.Interfaces.S rt    g
  upport)                                                    of component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialElementaryOneFlangeAndSupport 
      "Obsolete partial model. Use PartialElementaryOneFlangeAndSupport2."
      extends Modelica.Icons.ObsoleteModel;

      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Modelica.SIunits.Length s = flange.s - internalSupport.s 
        "Distance between flange and support (= flange.s - support.s)";
      Flange_b flange "Flange of component";

    protected 
      InternalSupport internalSupport(f=-flange.f) 
        "Internal support/housing of component as a model with connector flange (flange is either connected to support, if useSupport=true, or connected to fixed, if useSupport=false)";
      Components.Fixed fixed if not useSupport 
        "Fixed support/housing, if not useSupport";
    public 
      Support support if useSupport "Support/housing of component";
    equation 
      connect(internalSupport.flange, support);
      connect(fixed.flange, internalSupport.flange);
    end PartialElementaryOneFlangeAndSupport;

* * * * *

![image47](Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2I.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialElementaryOneFlangeAndSupport2
====================================================================================================================================================================================================================================================================================

**Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models**

Information
-----------

::

This is a 1-dim. translational component with one flange and a
support/housing. It is used to build up elementary components of a drive
train with equations in the text layer.

If *useSupport=true*, the support connector is conditionally enabled and
needs to be connected. If *useSupport=false*, the support connector is
conditionally disabled and instead the component is internally fixed to
ground.

::

Parameters
----------

  ---------------------------------------------------------------------------
  Type     Name       Default  Description
  -------- ---------- -------- ----------------------------------------------
  Boolean  useSupport false    = true, if support flange enabled, otherwise
                               implicitly grounded
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name  Description
  ---------------------------------------------------- ----- --------------
  [Flange\_b](Modelica_Mechanics_Translational_Interfa flang Flange of
  ces.html#Modelica.Mechanics.Translational.Interfaces e     component
  .Flange_b)                                                 

  [Support](Modelica_Mechanics_Translational_Interface suppo Support/housin
  s.html#Modelica.Mechanics.Translational.Interfaces.S rt    g
  upport)                                                    of component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialElementaryOneFlangeAndSupport2 
      "Partial model for a component with one translational 1-dim. shaft flange and a support used for textual modeling, i.e., for elementary models"
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Modelica.SIunits.Length s = flange.s - s_support 
        "Distance between flange and support (= flange.s - support.s)";
      Flange_b flange "Flange of component";
      Support support(s=s_support, f=-flange.f) if useSupport 
        "Support/housing of component";
    protected 
      Modelica.SIunits.Length s_support "Absolute position of support flange";
    equation 
      if not useSupport then
         s_support = 0;
      end if;

    end PartialElementaryOneFlangeAndSupport2;

* * * * *

![image48](Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupportI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialElementaryTwoFlangesAndSupport
====================================================================================================================================================================================================================================================================================

**Obsolete partial model. Use PartialElementaryTwoFlangesAndSupport2.**

Information
-----------

::

This is a 1-dim. translational component with two flanges and an
additional support. It is used e.g., to build up elementary ideal gear
components. The component contains the force balance, i.e., the sum of
the forces of the connectors is zero (therefore, components that are
based on PartialGear cannot have a mass). The support connector needs to
be connected to avoid the unphysical behavior that the support force is
required to be zero (= the default value, if the connector is not
connected).

::

Extends from
[Modelica.Icons.ObsoleteModel](Modelica_Icons.html#Modelica.Icons.ObsoleteModel)
(Icon for classes that are obsolete and will be removed in later
versions).

Parameters
----------

  ---------------------------------------------------------------------------
  Type     Name       Default  Description
  -------- ---------- -------- ----------------------------------------------
  Boolean  useSupport false    = true, if support flange enabled, otherwise
                               implicitly grounded
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Flange\_a](Modelica_Mechanics_Translational_Interf flange Flange of left
  aces.html#Modelica.Mechanics.Translational.Interfac \_a    shaft
  es.Flange_a)                                               

  [Flange\_b](Modelica_Mechanics_Translational_Interf flange Flange of
  aces.html#Modelica.Mechanics.Translational.Interfac \_b    right shaft
  es.Flange_b)                                               

  [Support](Modelica_Mechanics_Translational_Interfac suppor Support/housin
  es.html#Modelica.Mechanics.Translational.Interfaces t      g
  .Support)                                                  of component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialElementaryTwoFlangesAndSupport 
      "Obsolete partial model. Use PartialElementaryTwoFlangesAndSupport2."
      extends Modelica.Icons.ObsoleteModel;
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Flange_a flange_a "Flange of left shaft";
      Flange_b flange_b "Flange of right shaft";
      Modelica.SIunits.Length s_a = flange_a.s - internalSupport.s 
        "Distance between left flange and support";
      Modelica.SIunits.Length s_b = flange_b.s - internalSupport.s 
        "Distance between right flange and support";
    protected 
      InternalSupport internalSupport(f=-flange_a.f - flange_b.f) 
        "Internal support/housing of component as a model with connector flange (flange is either connected to support, if useSupport=true, or connected to fixed, if useSupport=false)";
      Components.Fixed fixed if not useSupport 
        "Fixed support/housing, if not useSupport";
    public 
      Support support if useSupport "Support/housing of component";
    equation 
      connect(internalSupport.flange, support);
      connect(fixed.flange, internalSupport.flange);
    end PartialElementaryTwoFlangesAndSupport;

* * * * *

![image49](Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2I.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialElementaryTwoFlangesAndSupport2
======================================================================================================================================================================================================================================================================================

**Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models**

Information
-----------

::

This is a 1-dim. translational component with two flanges and an
additional support. It is used e.g., to build up elementary ideal gear
components. The component contains the force balance, i.e., the sum of
the forces of the connectors is zero (therefore, components that are
based on PartialGear cannot have a mass). The support connector needs to
be connected to avoid the unphysical behavior that the support force is
required to be zero (= the default value, if the connector is not
connected).

::

Parameters
----------

  ---------------------------------------------------------------------------
  Type     Name       Default  Description
  -------- ---------- -------- ----------------------------------------------
  Boolean  useSupport false    = true, if support flange enabled, otherwise
                               implicitly grounded
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Flange\_a](Modelica_Mechanics_Translational_Interf flange Flange of left
  aces.html#Modelica.Mechanics.Translational.Interfac \_a    shaft
  es.Flange_a)                                               

  [Flange\_b](Modelica_Mechanics_Translational_Interf flange Flange of
  aces.html#Modelica.Mechanics.Translational.Interfac \_b    right shaft
  es.Flange_b)                                               

  [Support](Modelica_Mechanics_Translational_Interfac suppor Support/housin
  es.html#Modelica.Mechanics.Translational.Interfaces t      g
  .Support)                                                  of component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialElementaryTwoFlangesAndSupport2 
      "Partial model for a component with one translational 1-dim. shaft flange and a support used for textual modeling, i.e., for elementary models"
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      Flange_a flange_a "Flange of left shaft";
      Flange_b flange_b "Flange of right shaft";
      Support support(s=s_support, f = -flange_a.f - flange_b.f) if useSupport 
        "Support/housing of component";
      Modelica.SIunits.Length s_a = flange_a.s - s_support 
        "Distance between left flange and support";
      Modelica.SIunits.Length s_b = flange_b.s - s_support 
        "Distance between right flange and support";
    protected 
      Modelica.SIunits.Length s_support "Absolute position of support flange";
    equation 
      if not useSupport then
         s_support = 0;
      end if;

    end PartialElementaryTwoFlangesAndSupport2;

* * * * *

![image50](Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslationalI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialElementaryRotationalToTranslational
==============================================================================================================================================================================================================================================================================================

**Partial model to transform rotational into translational motion**

Information
-----------

::

This is a 1-dim. rotational component with

-   one rotational flange,
-   one rotational support/housing,
-   one translational flange, and
-   one translatinal support/housing

This model is used to build up elementary components of a drive train
transforming rotational into translational motion with equations in the
text layer.

If *useSupportR=true*, the rotational support connector is conditionally
enabled and needs to be connected.

If *useSupportR=false*, the rotational support connector is
conditionally disabled and instead the rotational part is internally
fixed to ground.

If *useSupportT=true*, the translational support connector is
conditionally enabled and needs to be connected.

If *useSupportT=false*, the translational support connector is
conditionally disabled and instead the translational part is internally
fixed to ground.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialElementaryRotationalToTranslational](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryRotationalToTranslational)
(Partial model to transform rotational into translational motion).

Parameters
----------

  --------------------------------------------------------------------------
  Type    Name      Default Description
  ------- --------- ------- ------------------------------------------------
  Boolean useSuppor false   = true, if rotational support flange enabled,
          tR                otherwise implicitly grounded

  Boolean useSuppor false   = true, if translational support flange enabled,
          tT                otherwise implicitly grounded
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- ------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Interf flang Flange of
  aces.html#Modelica.Mechanics.Rotational.Interfac eR    rotational shaft
  es.Flange_a)                                           

  [Flange\_b](Modelica_Mechanics_Translational_Int flang Flange of
  erfaces.html#Modelica.Mechanics.Translational.In eT    translational rod
  terfaces.Flange_b)                                     

  [Support](Modelica_Mechanics_Rotational_Interfac suppo Rotational
  es.html#Modelica.Mechanics.Rotational.Interfaces rtR   support/housing of
  .Support)                                              component

  [Support](Modelica_Mechanics_Translational_Inter suppo Translational
  faces.html#Modelica.Mechanics.Translational.Inte rtT   support/housing of
  rfaces.Support)                                        component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialElementaryRotationalToTranslational 
      "Partial model to transform rotational into translational motion"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryRotationalToTranslational;
    end PartialElementaryRotationalToTranslational;

* * * * *

![image51](Modelica.Mechanics.Translational.Interfaces.PartialForceI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialForce
==================================================================================================================================================================================================================================

**Partial model of a force acting at the flange (accelerates the
flange)**

Information
-----------

::

Partial model of force that accelerates the flange.

If *useSupport=true*, the support connector is conditionally enabled and
needs to be connected. If *useSupport=false*, the support connector is
conditionally disabled and instead the component is internally fixed to
ground.

::

Extends from
[PartialElementaryOneFlangeAndSupport2](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2)
(Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models).

Parameters
----------

  ---------------------------------------------------------------------------
  Type     Name       Default  Description
  -------- ---------- -------- ----------------------------------------------
  Boolean  useSupport false    = true, if support flange enabled, otherwise
                               implicitly grounded
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name  Description
  ---------------------------------------------------- ----- --------------
  [Flange\_b](Modelica_Mechanics_Translational_Interfa flang Flange of
  ces.html#Modelica.Mechanics.Translational.Interfaces e     component
  .Flange_b)                                                 

  [Support](Modelica_Mechanics_Translational_Interface suppo Support/housin
  s.html#Modelica.Mechanics.Translational.Interfaces.S rt    g
  upport)                                                    of component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialForce 
      "Partial model of a force acting at the flange (accelerates the flange)"
      extends PartialElementaryOneFlangeAndSupport2;
      Modelica.SIunits.Force f = flange.f 
        "Accelerating force acting at flange (= flange.f)";
    end PartialForce;

* * * * *

![image52](Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensorI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialAbsoluteSensor
====================================================================================================================================================================================================================================================

**Device to measure a single absolute flange variable**

Information
-----------

::

This is the superclass of a 1D translational component with one flange
and one output signal in order to measure an absolute kinematic quantity
in the flange and to provide the measured signal as output signal for
further processing with the Modelica.Blocks blocks.

::

Extends from
[Modelica.Icons.TranslationalSensor](Modelica_Icons.html#Modelica.Icons.TranslationalSensor)
(Icon representing a linear measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Nam Description
                                          e   
  --------------------------------------- --- -----------------------------
  [Flange\_a](Modelica_Mechanics_Translat fla Flange to be measured (flange
  ional_Interfaces.html#Modelica.Mechanic nge axis directed in to cut
  s.Translational.Interfaces.Flange_a)        plane, e. g. from left to
                                              right)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialAbsoluteSensor 
      "Device to measure a single absolute flange variable"

      extends Modelica.Icons.TranslationalSensor;

      Interfaces.Flange_a flange 
        "Flange to be measured (flange axis directed in to cut plane, e. g. from left to right)";


    equation 
      0 = flange.f;
    end PartialAbsoluteSensor;

* * * * *

![image53](Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensorI.png) [Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialRelativeSensor
====================================================================================================================================================================================================================================================

**Device to measure a single relative variable between two flanges**

Information
-----------

::

This is a superclass for 1D translational components with two rigidly
connected flanges and one output signal in order to measure relative
kinematic quantities between the two flanges or the cut-force in the
flange and to provide the measured signal as output signal for further
processing with the Modelica.Blocks blocks.

::

Extends from
[Modelica.Icons.TranslationalSensor](Modelica_Icons.html#Modelica.Icons.TranslationalSensor)
(Icon representing a linear measurement device).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Flange\_a](Modelica_Mechanics_Transla flan (left) driving flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed in to
  ics.Translational.Interfaces.Flange_a) a    cut plane, e. g. from left
                                              to right)

  [Flange\_b](Modelica_Mechanics_Transla flan (right) driven flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed out of
  ics.Translational.Interfaces.Flange_b) b    cut plane)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialRelativeSensor 
      "Device to measure a single relative variable between two flanges"

      extends Modelica.Icons.TranslationalSensor;

      Interfaces.Flange_a flange_a 
        "(left) driving flange (flange axis directed in to cut plane, e. g. from left to right)";
      Interfaces.Flange_b flange_b 
        "(right) driven flange (flange axis directed out of cut plane)";

    equation 
      0 = flange_a.f + flange_b.f;
    end PartialRelativeSensor;

* * * * *

[Modelica.Mechanics.Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces).PartialFriction
===========================================================================================================================================================

**Base model of Coulomb friction elements**

Information
-----------

::

Basic model for Coulomb friction that models the stuck phase in a
reliable way.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name   Defau Description
                                        lt    
  ------------------------------ ------ ----- -----------------------------
  **Advanced**                                

  [Velocity](Modelica_SIunits.ht v\_sma 1e-3  Relative velocity near to
  ml#Modelica.SIunits.Velocity)  ll           zero (see model info text)
                                              [m/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialFriction 
      "Base model of Coulomb friction elements"

    //extends Translational.Interfaces.PartialRigid;
      parameter SI.Velocity v_small=1e-3 
        "Relative velocity near to zero (see model info text)";
    // Equations to define the following variables have to be defined in subclasses
      SI.Velocity v_relfric "Relative velocity between frictional surfaces";
      SI.Acceleration a_relfric "Relative acceleration between frictional surfaces";
    //SI.Force f "Friction force (positive, if directed in opposite direction of v_rel)";
      SI.Force f0 "Friction force for v=0 and forward sliding";
      SI.Force f0_max "Maximum friction force for v=0 and locked";
      Boolean free "true, if frictional element is not active";
    // Equations to define the following variables are given in this class
      Real sa(unit="1") 
        "Path parameter of friction characteristic f = f(a_relfric)";
      Boolean startForward(start=false, fixed=true) 
        "true, if v_rel=0 and start of forward sliding";
      Boolean startBackward(start=false, fixed=true) 
        "true, if v_rel=0 and start of backward sliding";
      Boolean locked(start=false) "true, if v_rel=0 and not sliding";
      constant Integer Unknown=3 "Value of mode is not known";
      constant Integer Free=2 "Element is not active";
      constant Integer Forward=1 "v_rel > 0 (forward sliding)";
      constant Integer Stuck=0 
        "v_rel = 0 (forward sliding, locked or backward sliding)";
      constant Integer Backward=-1 "v_rel < 0 (backward sliding)";
      Integer mode(
        final min=Backward,
        final max=Unknown,
        start=Unknown, fixed=true);
    protected 
      constant SI.Acceleration unitAcceleration = 1;
      constant SI.Force unitForce = 1;
    equation 
    /* Friction characteristic
       (locked is introduced to help the Modelica translator determining
       the different structural configurations,
       if for each configuration special code shall be generated)
    */
      startForward = pre(mode) == Stuck and (sa > f0_max/unitForce or pre(startForward)
         and sa > f0/unitForce) or pre(mode) == Backward and v_relfric > v_small or 
        initial() and (v_relfric > 0);
      startBackward = pre(mode) == Stuck and (sa < -f0_max/unitForce or pre(
        startBackward) and sa < -f0/unitForce) or pre(mode) == Forward and v_relfric <
        -v_small or initial() and (v_relfric < 0);
      locked = not free and not (pre(mode) == Forward or startForward or pre(
        mode) == Backward or startBackward);

      a_relfric/unitAcceleration = if locked then               0 else 
                                   if free then                 sa else 
                                   if startForward then         sa - f0_max/unitForce else 
                                   if startBackward then        sa + f0_max/unitForce else 
                                   if pre(mode) == Forward then sa - f0_max/unitForce else 
                                                                sa + f0_max/unitForce;

    /* Friction torque has to be defined in a subclass. Example for a clutch:
       f = if locked then sa else
           if free then   0 else
           cgeo*fn*(if startForward then          Math.tempInterpol1( v_relfric, mue_pos, 2) else
                    if startBackward then        -Math.tempInterpol1(-v_relfric, mue_pos, 2) else
                    if pre(mode) == Forward then  Math.tempInterpol1( v_relfric, mue_pos, 2) else
                                                 -Math.tempInterpol1(-v_relfric, mue_pos, 2));
    */
    // finite state machine to determine configuration
      mode = if free then Free else 
        (if (pre(mode) == Forward  or pre(mode) == Free or startForward)  and v_relfric > 0 then 
           Forward else 
         if (pre(mode) == Backward or pre(mode) == Free or startBackward) and v_relfric < 0 then 
           Backward else 
           Stuck);
    end PartialFriction;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:52 2010.
