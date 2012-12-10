% Modelica.Mechanics.Translational.Components
% 
% 

[Modelica.Mechanics.Translational](Modelica_Mechanics_Translational.html#Modelica.Mechanics.Translational).Components
=====================================================================================================================

**Components for 1D translational mechanical drive trains**

Information
-----------

::

This package contains basic components 1D mechanical translational drive
trains.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  ![image14](Modelica.Mechanics.Translational.C Fixed flange
  omponents.FixedS.png)                         
  [Fixed](Modelica_Mechanics_Translational_Comp 
  onents.html#Modelica.Mechanics.Translational. 
  Components.Fixed)                             

  ![image15](Modelica.Mechanics.Translational.C Sliding mass with inertia
  omponents.MassS.png)                          
  [Mass](Modelica_Mechanics_Translational_Compo 
  nents.html#Modelica.Mechanics.Translational.C 
  omponents.Mass)                               

  ![image16](Modelica.Mechanics.Translational.C Rod without inertia
  omponents.RodS.png)                           
  [Rod](Modelica_Mechanics_Translational_Compon 
  ents.html#Modelica.Mechanics.Translational.Co 
  mponents.Rod)                                 

  ![image17](Modelica.Mechanics.Translational.C Linear 1D translational
  omponents.SpringS.png)                        spring
  [Spring](Modelica_Mechanics_Translational_Com 
  ponents.html#Modelica.Mechanics.Translational 
  .Components.Spring)                           

  ![image18](Modelica.Mechanics.Translational.C Linear 1D translational
  omponents.DamperS.png)                        damper
  [Damper](Modelica_Mechanics_Translational_Com 
  ponents.html#Modelica.Mechanics.Translational 
  .Components.Damper)                           

  ![image19](Modelica.Mechanics.Translational.C Linear 1D translational
  omponents.SpringDamperS.png)                  spring and damper in
  [SpringDamper](Modelica_Mechanics_Translation parallel
  al_Components.html#Modelica.Mechanics.Transla 
  tional.Components.SpringDamper)               

  ![image20](Modelica.Mechanics.Translational.C 1D translational spring
  omponents.ElastoGapS.png)                     damper combination with
  [ElastoGap](Modelica_Mechanics_Translational_ gap
  Components.html#Modelica.Mechanics.Translatio 
  nal.Components.ElastoGap)                     

  ![image21](Modelica.Mechanics.Translational.C Coulomb friction in
  omponents.SupportFrictionS.png)               support
  [SupportFriction](Modelica_Mechanics_Translat 
  ional_Components.html#Modelica.Mechanics.Tran 
  slational.Components.SupportFriction)         

  ![image22](Modelica.Mechanics.Translational.C Brake basend on Coulomb
  omponents.BrakeS.png)                         friction
  [Brake](Modelica_Mechanics_Translational_Comp 
  onents.html#Modelica.Mechanics.Translational. 
  Components.Brake)                             

  ![image23](Modelica.Mechanics.Translational.C Gearbox transforming
  omponents.IdealGearR2TS.png)                  rotational into
  [IdealGearR2T](Modelica_Mechanics_Translation translational motion
  al_Components.html#Modelica.Mechanics.Transla 
  tional.Components.IdealGearR2T)               

  ![image24](Modelica.Mechanics.Translational.C Simple 1-dim. model of an
  omponents.IdealRollingWheelS.png)             ideal rolling wheel
  [IdealRollingWheel](Modelica_Mechanics_Transl without inertia
  ational_Components.html#Modelica.Mechanics.Tr 
  anslational.Components.IdealRollingWheel)     

  ![image25](Modelica.Mechanics.Translational.C Initializes a flange with
  omponents.InitializeFlangeS.png)              pre-defined position,
  [InitializeFlange](Modelica_Mechanics_Transla speed and acceleration
  tional_Components.html#Modelica.Mechanics.Tra (usually, this is
  nslational.Components.InitializeFlange)       reference data from a
                                                control bus)

  ![image26](Modelica.Mechanics.Translational.C Sliding mass with hard
  omponents.MassWithStopAndFrictionS.png)       stop and Stribeck friction
  [MassWithStopAndFriction](Modelica_Mechanics_ 
  Translational_Components.html#Modelica.Mechan 
  ics.Translational.Components.MassWithStopAndF 
  riction)                                      

  ![image27](Modelica.Mechanics.Translational.C Definition of relative
  omponents.RelativeStatesS.png)                state variables
  [RelativeStates](Modelica_Mechanics_Translati 
  onal_Components.html#Modelica.Mechanics.Trans 
  lational.Components.RelativeStates)           
  ------------------------------------------------------------------------

* * * * *

![image28](Modelica.Mechanics.Translational.Components.FixedI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).Fixed
====================================================================================================================================================================================================================

**Fixed flange**

Information
-----------

::

The *flange* of a 1D translational mechanical system *fixed* at an
position s0 in the *housing*. May be used:

-   to connect a compliant element, such as a spring or a damper,
    between a sliding mass and the housing.
-   to fix a rigid element, such as a sliding mass, at a specific
    position.

::

Parameters
----------

  --------------------------------------------------------------------------
  Type                                  Name  Defaul Description
                                              t      
  ------------------------------------- ----- ------ -----------------------
  [Position](Modelica_SIunits.html#Mode s0    0      Fixed offset position
  lica.SIunits.Position)                             of housing [m]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [Flange\_b](Modelica_Mechanics_Translational_Interfaces.ht flang 
  ml#Modelica.Mechanics.Translational.Interfaces.Flange_b)   e     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Fixed "Fixed flange"
      parameter SI.Position s0=0 "Fixed offset position of housing";

      Interfaces.Flange_b flange;
    equation 
      flange.s = s0;
    end Fixed;

* * * * *

![image29](Modelica.Mechanics.Translational.Components.MassI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).Mass
==================================================================================================================================================================================================================

**Sliding mass with inertia**

Information
-----------

::

Sliding mass with *inertia, without friction* and two rigidly connected
flanges.

The sliding mass has the length L, the position coordinate s is in the
middle. Sign convention: A positive force at flange flange\_a moves the
sliding mass in the positive direction. A negative force at flange
flange\_a moves the sliding mass to the negative direction.

::

Extends from
[Translational.Interfaces.PartialRigid](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRigid)
(Rigid connection of two translational 1D flanges ).

Parameters
----------

  -------------------------------------------------------------------------
  Type                    Name  Default  Description
  ----------------------- ----- -------- ----------------------------------
  [Mass](Modelica_SIunits m              Mass of the sliding mass [kg]
  .html#Modelica.SIunits.                
  Mass)                                  

  [Length](Modelica_SIuni L     0        Length of component, from left
  ts.html#Modelica.SIunit                flange to right flange (=
  s.Length)                              flange\_b.s - flange\_a.s) [m]

  **Advanced**                           

  StateSelect             state StateSel Priority to use s and v as states
                          Selec ect.defa 
                          t     ult      
  -------------------------------------------------------------------------

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

    model Mass "Sliding mass with inertia"
      parameter SI.Mass m(min=0, start=1) "Mass of the sliding mass";
      parameter StateSelect stateSelect=StateSelect.default 
        "Priority to use s and v as states";
      extends Translational.Interfaces.PartialRigid(L=0,s(start=0, stateSelect=stateSelect));
      SI.Velocity v(start=0, stateSelect=stateSelect) 
        "Absolute velocity of component";
      SI.Acceleration a(start=0) "Absolute acceleration of component";

    equation 
      v = der(s);
      a = der(v);
      m*a = flange_a.f + flange_b.f;
    end Mass;

* * * * *

![image30](Modelica.Mechanics.Translational.Components.RodI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).Rod
================================================================================================================================================================================================================

**Rod without inertia**

Information
-----------

::

Rod *without inertia* and two rigidly connected flanges.

::

Extends from
[Translational.Interfaces.PartialRigid](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRigid)
(Rigid connection of two translational 1D flanges ).

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

    model Rod "Rod without inertia"
      extends Translational.Interfaces.PartialRigid;

    equation 
      0 = flange_a.f + flange_b.f;
    end Rod;

* * * * *

![image31](Modelica.Mechanics.Translational.Components.SpringI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).Spring
======================================================================================================================================================================================================================

**Linear 1D translational spring**

Information
-----------

::

A *linear 1D translational spring*. The component can be connected
either between two sliding masses, or between a sliding mass and the
housing (model Fixed), to describe a coupling of the sliding mass with
the housing via a spring.

::

Extends from
[Translational.Interfaces.PartialCompliant](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialCompliant)
(Compliant connection of two translational 1D flanges).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                    Name   Defa Description
                                                 ult  
  --------------------------------------- ------ ---- ---------------------
  [TranslationalSpringConstant](Modelica_ c           Spring constant [N/m]
  SIunits.html#Modelica.SIunits.Translati             
  onalSpringConstant)                                 

  [Distance](Modelica_SIunits.html#Modeli s\_rel 0    Unstretched spring
  ca.SIunits.Distance)                    0           length [m]

  Initialization                                      

  [Distance](Modelica_SIunits.html#Modeli s\_rel 0    Relative distance (=
  ca.SIunits.Distance)                    .start      flange\_b.s -
                                                      flange\_a.s) [m]
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
  ional.Interfaces.Flange_b)                         translational
                                                     component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Spring "Linear 1D translational spring"
      extends Translational.Interfaces.PartialCompliant;
      parameter SI.TranslationalSpringConstant c(final min=0, start = 1) 
        "Spring constant ";
      parameter SI.Distance s_rel0=0 "Unstretched spring length";

    equation 
      f = c*(s_rel - s_rel0);
    end Spring;

* * * * *

![image32](Modelica.Mechanics.Translational.Components.DamperI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).Damper
======================================================================================================================================================================================================================

**Linear 1D translational damper**

Information
-----------

::

*Linear, velocity dependent damper* element. It can be either connected
between a sliding mass and the housing (model Fixed), or between two
sliding masses.

::

Extends from
[Translational.Interfaces.PartialCompliantWithRelativeStates](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialCompliantWithRelativeStates)
(Base model for the compliant connection of two translational 1-dim.
shaft flanges where the relative position and relative velocities are
used as states),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name   Default  Description
  ------------------------------------- ------ -------- -------------------
  [TranslationalDampingConstant](Modeli d               Damping constant
  ca_SIunits.html#Modelica.SIunits.Tran                 [N.s/m]
  slationalDampingConstant)                             

  Boolean                               useHea false    =true, if heatPort
                                        tPort           is enabled

  Initialization                                        

  [Distance](Modelica_SIunits.html#Mode s\_rel 0        Relative distance
  lica.SIunits.Distance)                .start          (= flange\_b.s -
                                                        flange\_a.s) [m]

  [Velocity](Modelica_SIunits.html#Mode v\_rel 0        Relative velocity
  lica.SIunits.Velocity)                .start          (= der(s\_rel))
                                                        [m/s]

  **Advanced**                                          

  StateSelect                           stateS StateSel Priority to use
                                        elect  ect.pref phi\_rel and w\_rel
                                               er       as states

  [Distance](Modelica_SIunits.html#Mode s\_nom 1e-4     Nominal value of
  lica.SIunits.Distance)                inal            s\_rel (used for
                                                        scaling) [m]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                      Name Description
  ----------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Translatio flan Left flange of compliant
  nal_Interfaces.html#Modelica.Mechanics.Tr ge\_ 1-dim. translational
  anslational.Interfaces.Flange_a)          a    component

  [Flange\_b](Modelica_Mechanics_Translatio flan Right flange of compliant
  nal_Interfaces.html#Modelica.Mechanics.Tr ge\_ 1-dim. transational
  anslational.Interfaces.Flange_b)          b    component

  [HeatPort\_a](Modelica_Thermal_HeatTransf heat Optional port to which
  er_Interfaces.html#Modelica.Thermal.HeatT Port dissipated losses are
  ransfer.Interfaces.HeatPort_a)                 transported in form of
                                                 heat
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Damper "Linear 1D translational damper"
      extends Translational.Interfaces.PartialCompliantWithRelativeStates;
      parameter SI.TranslationalDampingConstant d(final min=0, start = 0) 
        "Damping constant";
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;
    equation 
      f = d*v_rel;
      lossPower = f*v_rel;
    end Damper;

* * * * *

![image33](Modelica.Mechanics.Translational.Components.SpringDamperI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).SpringDamper
==================================================================================================================================================================================================================================

**Linear 1D translational spring and damper in parallel**

Information
-----------

::

A *spring and damper element connected in parallel*. The component can
be connected either between two sliding masses to describe the
elasticity and damping, or between a sliding mass and the housing (model
Fixed), to describe a coupling of the sliding mass with the housing via
a spring/damper.

::

Extends from
[Translational.Interfaces.PartialCompliantWithRelativeStates](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialCompliantWithRelativeStates)
(Base model for the compliant connection of two translational 1-dim.
shaft flanges where the relative position and relative velocities are
used as states),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name   Default  Description
  ------------------------------------- ------ -------- -------------------
  [TranslationalSpringConstant](Modelic c               Dpring constant
  a_SIunits.html#Modelica.SIunits.Trans                 [N/m]
  lationalSpringConstant)                               

  [TranslationalDampingConstant](Modeli d               Damping constant
  ca_SIunits.html#Modelica.SIunits.Tran                 [N.s/m]
  slationalDampingConstant)                             

  [Position](Modelica_SIunits.html#Mode s\_rel 0        Unstretched spring
  lica.SIunits.Position)                0               length [m]

  Boolean                               useHea false    =true, if heatPort
                                        tPort           is enabled

  Initialization                                        

  [Distance](Modelica_SIunits.html#Mode s\_rel 0        Relative distance
  lica.SIunits.Distance)                .start          (= flange\_b.s -
                                                        flange\_a.s) [m]

  [Velocity](Modelica_SIunits.html#Mode v\_rel 0        Relative velocity
  lica.SIunits.Velocity)                .start          (= der(s\_rel))
                                                        [m/s]

  **Advanced**                                          

  StateSelect                           stateS StateSel Priority to use
                                        elect  ect.pref phi\_rel and w\_rel
                                               er       as states

  [Distance](Modelica_SIunits.html#Mode s\_nom 1e-4     Nominal value of
  lica.SIunits.Distance)                inal            s\_rel (used for
                                                        scaling) [m]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                      Name Description
  ----------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Translatio flan Left flange of compliant
  nal_Interfaces.html#Modelica.Mechanics.Tr ge\_ 1-dim. translational
  anslational.Interfaces.Flange_a)          a    component

  [Flange\_b](Modelica_Mechanics_Translatio flan Right flange of compliant
  nal_Interfaces.html#Modelica.Mechanics.Tr ge\_ 1-dim. transational
  anslational.Interfaces.Flange_b)          b    component

  [HeatPort\_a](Modelica_Thermal_HeatTransf heat Optional port to which
  er_Interfaces.html#Modelica.Thermal.HeatT Port dissipated losses are
  ransfer.Interfaces.HeatPort_a)                 transported in form of
                                                 heat
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SpringDamper 
      "Linear 1D translational spring and damper in parallel"
      extends Translational.Interfaces.PartialCompliantWithRelativeStates;
      parameter SI.TranslationalSpringConstant c(final min=0, start = 1) 
        "Dpring constant";
      parameter SI.TranslationalDampingConstant d(final min=0, start = 1) 
        "Damping constant";
      parameter SI.Position s_rel0=0 "Unstretched spring length";
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;
    protected 
      Modelica.SIunits.Force f_c "Spring force";
      Modelica.SIunits.Force f_d "Damping force";
    equation 
      f_c = c*(s_rel - s_rel0);
      f_d = d*v_rel;
      f = f_c + f_d;
      lossPower = f_d*v_rel;
    end SpringDamper;

* * * * *

![image34](Modelica.Mechanics.Translational.Components.ElastoGapI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).ElastoGap
============================================================================================================================================================================================================================

**1D translational spring damper combination with gap**

Information
-----------

::

This component models a spring damper combination that can lift off. It
can be connected between a sliding mass and the housing (model
[Fixed](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components.Fixed)),
to describe the contact of a sliding mass with the housing.

As long as s\_rel \> s\_rel0, no force is exerted (s\_rel = flange\_b.s
-flange\_a.s). If s\_rel ≤ s\_rel0, the contact force is basically
computed with a linear spring/damper characteristic. With parameter n≥1
(exponent of spring force), a nonlinear spring force can be modeled:

    desiredContactForce = c*|s_rel - s_rel0|^n + d*der(s_rel)

Note, Hertzian contact is described by:

-   Contact between two metallic spheres: n=1.5
-   Contact between two metallic plates: n=1

The above force law leads to the following difficulties:

1.  If the damper force becomes larger as the spring force and with
    opposite sign, the contact force would be "pulling/sticking" which
    is unphysical, since during contact only pushing forces can occur.
2.  When contact occurs with a non-zero relative speed (which is the
    usual situation), the damping force has a non-zero value and
    therefore the contact force changes discontinuously at s\_rel =
    s\_rel0. Again, this is not physical because the force can only
    change continuously. (Note, this component is not an idealized model
    where a steep characteristic is approximated by a discontinuity, but
    it shall model the steep characteristic.)

In the literature there are several proposals to fix problem (2).
Especially, often the following model is used (see, e.g., Lankarani,
Nikravesh: Continuous Contact Force Models for Impact Analysis in
Multibody Systems, Nonlinear Dynamics 5, pp. 193-207, 1994,
[pdf-download](http://www.springerlink.com/content/h50x61270q06p65n/fulltext.pdf)):

    f = c*s_rel^n + (d*s_rel^n)*der(s_rel)

However, this and other models proposed in literature violate issue (1),
i.e., unphysical pulling forces can occur (if d\***der**(s\_rel) becomes
large enough). Note, if the force law is of the form "f = f\_c + f\_d",
then a necessary condition is that |f\_d| ≤ |f\_c|, otherwise (1) and
(2) are violated. For this reason, the most simplest approach is used in
the ElastoGap model to fix both problems by using this necessary
condition in the force law directly. If s\_rel0 = 0, the equations are:

    if s_rel ≥ 0 then
       f = 0;    // contact force
    else
       f_c  = -c*|s_rel|^n;          // contact spring force (Hertzian contact force)
       f_d2 = d*der(s_rel);         // linear contact damper force
       f_d  = if f_d2 <  f_c then  f_c else
              if f_d2 > -f_c then -f_c else f_d2;  // bounded damper force
       f    = f_c + f_d;            // contact force
    end if;

Note, since |f\_d| ≤ |f\_c|, pulling forces cannot occur and the contact
force is always continuous, especially around the start of the
penetration at s\_rel = s\_rel0.

In the next figure, a typical simulation with the ElastoGap model is
shown
([Examples.ElastoGap](Modelica_Mechanics_Translational_Examples.html#Modelica.Mechanics.Translational.Examples.ElastoGap))
where the different effects are visualized:

1.  Curve 1 (elastoGap1.f) is the unmodified contact force, i.e., the
    linear spring/damper characteristic. A pulling/sticking force is
    present at the end of the contact.
2.  Curve 2 (elastoGap2.f) is the contact force, where the force is
    explicitly set to zero when pulling/sticking occurs. The contact
    force is discontinuous when contact starts.
3.  Curve 3 (elastoGap3.f) is the ElastoGap model of this library. No
    discontinuity and no pulling/sticking occurs.

::

Extends from
[Modelica.Mechanics.Translational.Interfaces.PartialCompliantWithRelativeStates](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialCompliantWithRelativeStates)
(Base model for the compliant connection of two translational 1-dim.
shaft flanges where the relative position and relative velocities are
used as states),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                        Name    Default   Description
  --------------------------- ------- --------- ---------------------------
  Real                        c                 Spring constant [N/m]

  Real                        d                 Damping constant [N/ (m/s)]

  [Position](Modelica_SIunits s\_rel0 0         Unstretched spring length
  .html#Modelica.SIunits.Posi                   [m]
  tion)                                         

  Real                        n       1         Exponent of spring force (
                                                f\_c =
                                                -c\*|s\_rel-s\_rel0|\^n )

  Boolean                     useHeat false     =true, if heatPort is
                              Port              enabled

  Initialization                                

  [Distance](Modelica_SIunits s\_rel. 0         Relative distance (=
  .html#Modelica.SIunits.Dist start             flange\_b.s - flange\_a.s)
  ance)                                         [m]

  [Velocity](Modelica_SIunits v\_rel. 0         Relative velocity (=
  .html#Modelica.SIunits.Velo start             der(s\_rel)) [m/s]
  city)                                         

  **Advanced**                                  

  StateSelect                 stateSe StateSele Priority to use phi\_rel
                              lect    ct.prefer and w\_rel as states

  [Distance](Modelica_SIunits s\_nomi 1e-4      Nominal value of s\_rel
  .html#Modelica.SIunits.Dist nal               (used for scaling) [m]
  ance)                                         
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                      Name Description
  ----------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Translatio flan Left flange of compliant
  nal_Interfaces.html#Modelica.Mechanics.Tr ge\_ 1-dim. translational
  anslational.Interfaces.Flange_a)          a    component

  [Flange\_b](Modelica_Mechanics_Translatio flan Right flange of compliant
  nal_Interfaces.html#Modelica.Mechanics.Tr ge\_ 1-dim. transational
  anslational.Interfaces.Flange_b)          b    component

  [HeatPort\_a](Modelica_Thermal_HeatTransf heat Optional port to which
  er_Interfaces.html#Modelica.Thermal.HeatT Port dissipated losses are
  ransfer.Interfaces.HeatPort_a)                 transported in form of
                                                 heat
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ElastoGap "1D translational spring damper combination with gap"
      extends Modelica.Mechanics.Translational.Interfaces.PartialCompliantWithRelativeStates;
      parameter Real c(final unit="N/m", final min=0, start=1) "Spring constant";
      parameter Real d(final unit="N/ (m/s)", final min=0, start=1) 
        "Damping constant";
      parameter Modelica.SIunits.Position s_rel0=0 "Unstretched spring length";
      parameter Real n(final min=1) = 1 
        "Exponent of spring force ( f_c = -c*|s_rel-s_rel0|^n )";
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;

    /*
    Please note that initialization might fail due to the nonlinear spring characteristic
    (spring force is zero for s_rel > s_rel0)
    if a positive force is acting on the element and no other force balances this force
    (e.g., when setting both initial velocity and acceleration to 0)
    */
      Boolean contact "=true, if contact, otherwise no contact";
    protected 
      Modelica.SIunits.Force f_c "Spring force";
      Modelica.SIunits.Force f_d2 "Linear damping force";
      Modelica.SIunits.Force f_d 
        "Linear damping force which is limited by spring force (|f_d| <= |f_c|)";
    equation 
      // Modify contact force, so that it is only "pushing" and not
      // "pulling/sticking" and that it is continous
      contact = s_rel < s_rel0;
      f_c  = smooth(1, noEvent( if contact then -c*abs(s_rel - s_rel0)^n else 0));
      f_d2 = if contact then d*v_rel else 0;
      f_d  = smooth(0, noEvent( if contact then (if f_d2 <  f_c then  f_c else 
                                                 if f_d2 > -f_c then -f_c else f_d2) else 0));
      f = f_c + f_d;
      lossPower = f_d*v_rel;
    end ElastoGap;

* * * * *

![image35](Modelica.Mechanics.Translational.Components.SupportFrictionI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).SupportFriction
========================================================================================================================================================================================================================================

**Coulomb friction in support**

Information
-----------

::

This element describes **Coulomb friction** in **support**, i.e., a
frictional force acting between a flange and the housing. The positive
sliding friction force "f" has to be defined by table "f\_pos" as
function of the absolute velocity "v". E.g.

    v |   f

> ---+----- 0 | 0
>   ~ 1 | 2 2 | 5 3 | 8
>
gives the following table:

    f_pos = [0, 0; 1, 2; 2, 5; 3, 8];

Currently, only linear interpolation in the table is supported. Outside
of the table, extrapolation through the last two table entries is used.
It is assumed that the negative sliding friction force has the same
characteristic with negative values. Friction is modelled in the
following way:

When the absolute velocity "v" is not zero, the friction force is a
function of v and of a constant normal force. This dependency is defined
via table f\_pos and can be determined by measurements, e.g., by driving
the gear with constant velocity and measuring the needed driving force
(= friction force).

When the absolute velocity becomes zero, the elements connected by the
friction element become stuck, i.e., the absolute position remains
constant. In this phase the friction force is calculated from a force
balance due to the requirement, that the absolute acceleration shall be
zero. The elements begin to slide when the friction force exceeds a
threshold value, called the maximum static friction force, computed via:

    maximum_static_friction = peak * sliding_friction(v=0)  (peak >= 1)

This procedure is implemented in a "clean" way by state events and leads
to continuous/discrete systems of equations if friction elements are
dynamically coupled which have to be solved by appropriate numerical
methods. The method is described in:

Otter M., Elmqvist H., and Mattsson S.E. (1999):

**Hybrid Modeling in Modelica based on the Synchronous Data Flow
Principle**. CACSD'99, Aug. 22.-26, Hawaii.

More precise friction models take into account the elasticity of the
material when the two elements are "stuck", as well as other effects,
like hysteresis. This has the advantage that the friction element can be
completely described by a differential equation without events. The
drawback is that the system becomes stiff (about 10-20 times slower
simulation) and that more material constants have to be supplied which
requires more sophisticated identification. For more details, see the
following references, especially (Armstrong and Canudas de Witt 1996):

Armstrong B. (1991):

**Control of Machines with Friction**. Kluwer Academic Press, Boston MA.

Armstrong B., and Canudas de Wit C. (1996):

**Friction Modeling and Compensation.** The Control Handbook, edited by
W.S.Levine, CRC Press, pp. 1369-1382.

Canudas de Wit C., Olsson H., Astroem K.J., and Lischinsky P. (1995):

**A new model for control of systems with friction.** IEEE Transactions
on Automatic Control, Vol. 40, No. 3, pp. 419-425.

::

Extends from
[Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2)
(Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models),
[Translational.Interfaces.PartialFriction](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialFriction)
(Base model of Coulomb friction elements).

Parameters
----------

  ------------------------------------------------------------------------
  Type                        Name      Defau Description
                                        lt    
  --------------------------- --------- ----- ----------------------------
  Boolean                     useSuppor false = true, if support flange
                              t               enabled, otherwise
                                              implicitly grounded

  Boolean                     useHeatPo false =true, if heatPort is
                              rt              enabled

  Real                        f\_pos[:, [0,   [v, f] Positive sliding
                              2]        1]    friction characteristic
                                              (v\>=0)

  Real                        peak      1     peak\*f\_pos[1,2] = Maximum
                                              friction force for v==0

  Initialization                              

  Boolean                     startForw **fal true, if v\_rel=0 and start
                              ard.start se**  of forward sliding

  Boolean                     startBack **fal true, if v\_rel=0 and start
                              ward.star se**  of backward sliding
                              t               

  Boolean                     locked.st false true, if v\_rel=0 and not
                              art             sliding

  **Advanced**                                

  [Velocity](Modelica_SIunits v\_small  1e-3  Relative velocity near to
  .html#Modelica.SIunits.Velo                 zero (see model info text)
  city)                                       [m/s]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                      Name Description
  ----------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Translatio flan Flange of left shaft
  nal_Interfaces.html#Modelica.Mechanics.Tr ge\_ 
  anslational.Interfaces.Flange_a)          a    

  [Flange\_b](Modelica_Mechanics_Translatio flan Flange of right shaft
  nal_Interfaces.html#Modelica.Mechanics.Tr ge\_ 
  anslational.Interfaces.Flange_b)          b    

  [Support](Modelica_Mechanics_Translationa supp Support/housing of
  l_Interfaces.html#Modelica.Mechanics.Tran ort  component
  slational.Interfaces.Support)                  

  [HeatPort\_a](Modelica_Thermal_HeatTransf heat Optional port to which
  er_Interfaces.html#Modelica.Thermal.HeatT Port dissipated losses are
  ransfer.Interfaces.HeatPort_a)                 transported in form of
                                                 heat
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SupportFriction "Coulomb friction in support"

      extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;

      parameter Real f_pos[:, 2]=[0, 1] 
        "[v, f] Positive sliding friction characteristic (v>=0)";
      parameter Real peak(final min=1) = 1 
        "peak*f_pos[1,2] = Maximum friction force for v==0";
      extends Translational.Interfaces.PartialFriction;

      SI.Position s;
      SI.Force f "Friction force";
      SI.Velocity v "Absolute velocity of flange_a and flange_b";
      SI.Acceleration a "Absolute acceleration of flange_a and flange_b";
    equation 
      // Constant auxiliary variables
      f0 = Modelica.Math.tempInterpol1(0, f_pos, 2);
      f0_max = peak*f0;
      free = false;

      s = s_a - s_support;
      s_a = s_b;

    // velocity and acceleration of flanges
      v = der(s);
      a = der(v);
      v_relfric = v;
      a_relfric = a;

    // Friction force
      flange_a.f + flange_b.f - f = 0;

    // Friction force
      f = if locked then sa*unitForce else 
         (if startForward then          Modelica.Math.tempInterpol1( v, f_pos, 2) else 
          if startBackward then        -Modelica.Math.tempInterpol1(-v, f_pos, 2) else 
          if pre(mode) == Forward then  Modelica.Math.tempInterpol1( v, f_pos, 2) else 
                                       -Modelica.Math.tempInterpol1(-v, f_pos, 2));

      lossPower = f*v_relfric;
    end SupportFriction;

* * * * *

![image36](Modelica.Mechanics.Translational.Components.BrakeI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).Brake
====================================================================================================================================================================================================================

**Brake basend on Coulomb friction**

Information
-----------

::

This component models a **brake**, i.e., a component where a frictional
force is acting between the housing and a flange and a controlled normal
force presses the flange to the housing in order to increase friction.
The normal force fn has to be provided as input signal f\_normalized in
a normalized form (0 ≤ f\_normalized ≤ 1), fn = fn\_max\*f\_normalized,
where fn\_max has to be provided as parameter. Friction in the brake is
modelled in the following way:

When the absolute velocity "v" is not zero, the friction force is a
function of the velocity dependent friction coefficient mue(v) , of the
normal force "fn", and of a geometry constant "cgeo" which takes into
account the geometry of the device and the assumptions on the friction
distributions:

    frictional_force = cgeo * mue(v) * fn

Typical values of coefficients of friction:

    dry operation   :  mue = 0.2 .. 0.4
    operating in oil:  mue = 0.05 .. 0.1

The positive part of the friction characteristic **mue**(v), v \>= 0, is
defined via table mue\_pos (first column = v, second column = mue).
Currently, only linear interpolation in the table is supported.

When the absolute velocity becomes zero, the elements connected by the
friction element become stuck, i.e., the absolute position remains
constant. In this phase the friction force is calculated from a force
balance due to the requirement, that the absolute acceleration shall be
zero. The elements begin to slide when the friction force exceeds a
threshold value, called the maximum static friction force, computed via:

    frictional_force = peak * cgeo * mue(w=0) * fn   (peak >= 1)

This procedure is implemented in a "clean" way by state events and leads
to continuous/discrete systems of equations if friction elements are
dynamically coupled. The method is described in:

Otter M., Elmqvist H., and Mattsson S.E. (1999):

**Hybrid Modeling in Modelica based on the Synchronous Data Flow
Principle**. CACSD'99, Aug. 22.-26, Hawaii.

More precise friction models take into account the elasticity of the
material when the two elements are "stuck", as well as other effects,
like hysteresis. This has the advantage that the friction element can be
completely described by a differential equation without events. The
drawback is that the system becomes stiff (about 10-20 times slower
simulation) and that more material constants have to be supplied which
requires more sophisticated identification. For more details, see the
following references, especially (Armstrong and Canudas de Witt 1996):

Armstrong B. (1991):

**Control of Machines with Friction**. Kluwer Academic Press, Boston MA.

Armstrong B., and Canudas de Wit C. (1996):

**Friction Modeling and Compensation.** The Control Handbook, edited by
W.S.Levine, CRC Press, pp. 1369-1382.

Canudas de Wit C., Olsson H., Astroem K.J., and Lischinsky P. (1995):

**A new model for control of systems with friction.** IEEE Transactions
on Automatic Control, Vol. 40, No. 3, pp. 419-425.

::

Extends from
[Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2)
(Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models),
[Translational.Interfaces.PartialFriction](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialFriction)
(Base model of Coulomb friction elements).

Parameters
----------

  ------------------------------------------------------------------------
  Type                        Name      Defau Description
                                        lt    
  --------------------------- --------- ----- ----------------------------
  Boolean                     useSuppor false = true, if support flange
                              t               enabled, otherwise
                                              implicitly grounded

  Boolean                     useHeatPo false =true, if heatPort is
                              rt              enabled

  Real                        mue\_pos[ [0,   [v, f] Positive sliding
                              :,        0.5]  friction characteristic
                              2]              (v\>=0)

  Real                        peak      1     peak\*mue\_pos[1,2] =
                                              Maximum friction force for
                                              v==0

  Real                        cgeo      1     Geometry constant containing
                                              friction distribution
                                              assumption

  [Force](Modelica_SIunits.ht fn\_max         Maximum normal force [N]
  ml#Modelica.SIunits.Force)                  

  Initialization                              

  Boolean                     startForw **fal true, if v\_rel=0 and start
                              ard.start se**  of forward sliding

  Boolean                     startBack **fal true, if v\_rel=0 and start
                              ward.star se**  of backward sliding
                              t               

  Boolean                     locked.st false true, if v\_rel=0 and not
                              art             sliding

  **Advanced**                                

  [Velocity](Modelica_SIunits v\_small  1e-3  Relative velocity near to
  .html#Modelica.SIunits.Velo                 zero (see model info text)
  city)                                       [m/s]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                 Name  Description
  ------------------------------------ ----- -----------------------------
  [Flange\_a](Modelica_Mechanics_Trans flang Flange of left shaft
  lational_Interfaces.html#Modelica.Me e\_a  
  chanics.Translational.Interfaces.Fla       
  nge_a)                                     

  [Flange\_b](Modelica_Mechanics_Trans flang Flange of right shaft
  lational_Interfaces.html#Modelica.Me e\_b  
  chanics.Translational.Interfaces.Fla       
  nge_b)                                     

  [Support](Modelica_Mechanics_Transla suppo Support/housing of component
  tional_Interfaces.html#Modelica.Mech rt    
  anics.Translational.Interfaces.Suppo       
  rt)                                        

  [HeatPort\_a](Modelica_Thermal_HeatT heatP Optional port to which
  ransfer_Interfaces.html#Modelica.The ort   dissipated losses are
  rmal.HeatTransfer.Interfaces.HeatPor       transported in form of heat
  t_a)                                       

  input                                f\_no Normalized force signal 0..1
  [RealInput](Modelica_Blocks_Interfac rmali (normal force =
  es.html#Modelica.Blocks.Interfaces.R zed   fn\_max\*f\_normalized; brake
  ealInput)                                  is active if \> 0)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Brake "Brake basend on Coulomb friction"

      extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;
      parameter Real mue_pos[:, 2]=[0, 0.5] 
        "[v, f] Positive sliding friction characteristic (v>=0)";
      parameter Real peak(final min=1) = 1 
        "peak*mue_pos[1,2] = Maximum friction force for v==0";
      parameter Real cgeo(final min=0) = 1 
        "Geometry constant containing friction distribution assumption";
      parameter SI.Force fn_max(final min=0, start=1) "Maximum normal force";
      extends Translational.Interfaces.PartialFriction;

      SI.Position s;
      SI.Force f "Brake friction force";
      SI.Velocity v "Absolute velocity of flange_a and flange_b";
      SI.Acceleration a "Absolute acceleration of flange_a and flange_b";

      Real mue0 "Friction coefficient for v=0 and forward sliding";
      SI.Force fn "Normal force (=fn_max*f_normalized)";

      // Constant auxiliary variable
      Modelica.Blocks.Interfaces.RealInput f_normalized 
        "Normalized force signal 0..1 (normal force = fn_max*f_normalized; brake is active if > 0)";

    equation 
      mue0 = Modelica.Math.tempInterpol1(0, mue_pos, 2);

      s = s_a;
      s = s_b;

      // velocity and acceleration of flanges flange_a and flange_b
      v = der(s);
      a = der(v);
      v_relfric = v;
      a_relfric = a;

      // Friction force, normal force and friction force for v_rel=0
      flange_a.f + flange_b.f - f = 0;
      fn = fn_max*f_normalized;
      f0 = mue0*cgeo*fn;
      f0_max = peak*f0;
      free = fn <= 0;

      // Friction force
      f = if locked then sa*unitForce else 
          if free then   0 else 
          cgeo*fn*(if startForward then          Modelica.Math.tempInterpol1( v, mue_pos, 2) else 
                   if startBackward then        -Modelica.Math.tempInterpol1(-v, mue_pos, 2) else 
                   if pre(mode) == Forward then  Modelica.Math.tempInterpol1( v, mue_pos, 2) else 
                                                -Modelica.Math.tempInterpol1(-v, mue_pos, 2));

      lossPower = f*v_relfric;
    end Brake;

* * * * *

![image37](Modelica.Mechanics.Translational.Components.IdealGearR2TI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).IdealGearR2T
==================================================================================================================================================================================================================================

**Gearbox transforming rotational into translational motion**

Information
-----------

::

Couples rotational and translational motion, like a toothed wheel with a
toothed rack, specifying the ratio of rotational / translational motion.

::

Extends from
[Modelica.Mechanics.Rotational.Components.IdealGearR2T](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components.IdealGearR2T)
(Gearbox transforming rotational into translational motion).

Parameters
----------

  --------------------------------------------------------------------------
  Type    Name      Default Description
  ------- --------- ------- ------------------------------------------------
  Boolean useSuppor false   = true, if rotational support flange enabled,
          tR                otherwise implicitly grounded

  Boolean useSuppor false   = true, if translational support flange enabled,
          tT                otherwise implicitly grounded

  Real    ratio             Transmission ratio (flange\_a.phi/flange\_b.s)
                            [rad/m]
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

    model IdealGearR2T 
      "Gearbox transforming rotational into translational motion"
      extends Modelica.Mechanics.Rotational.Components.IdealGearR2T;
    equation 

    end IdealGearR2T;

* * * * *

![image38](Modelica.Mechanics.Translational.Components.IdealRollingWheelI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).IdealRollingWheel
============================================================================================================================================================================================================================================

**Simple 1-dim. model of an ideal rolling wheel without inertia**

Information
-----------

::

Couples rotational and translational motion, like an ideal rolling
wheel, specifying the wheel radius.

::

Extends from
[Modelica.Mechanics.Rotational.Components.IdealRollingWheel](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components.IdealRollingWheel)
(Simple 1-dim. model of an ideal rolling wheel without inertia).

Parameters
----------

  ------------------------------------------------------------------------
  Type                       Name   Defa Description
                                    ult  
  -------------------------- ------ ---- ---------------------------------
  Boolean                    useSup fals = true, if rotational support
                             portR  e    flange enabled, otherwise
                                         implicitly grounded

  Boolean                    useSup fals = true, if translational support
                             portT  e    flange enabled, otherwise
                                         implicitly grounded

  [Distance](Modelica_SIunit radius      Wheel radius [m]
  s.html#Modelica.SIunits.Di             
  stance)                                
  ------------------------------------------------------------------------

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

    model IdealRollingWheel 
      "Simple 1-dim. model of an ideal rolling wheel without inertia"
      extends Modelica.Mechanics.Rotational.Components.IdealRollingWheel;
    equation 

    end IdealRollingWheel;

* * * * *

![image39](Modelica.Mechanics.Translational.Components.InitializeFlangeI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).InitializeFlange
==========================================================================================================================================================================================================================================

**Initializes a flange with pre-defined position, speed and acceleration
(usually, this is reference data from a control bus)**

Information
-----------

::

This component is used to optionally initialize the position, speed,
and/or acceleration of the flange to which this component is connected.
Via parameters use\_s\_start, use\_v\_start, use\_a\_start the
corresponding input signals s\_start, v\_start, a\_start are
conditionally activated. If an input is activated, the corresponding
flange property is initialized with the input value at start time.

For example, if "use\_s\_start = true", then flange.s is initialized
with the value of the input signal "s\_start" at the start time.

Additionally, it is optionally possible to define the "StateSelect"
attribute of the flange position and the flange speed via paramater
"stateSelection".

This component is especially useful when the initial values of a flange
shall be set according to reference signals of a controller that are
provided via a signal bus.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  -------------------------------------------------------------------------
  Type    Name     Default     Description
  ------- -------- ----------- --------------------------------------------
  Boolean use\_s\_ true        = true, if initial position is defined by
          start                input s\_start, otherwise not initialized

  Boolean use\_v\_ true        = true, if initial speed is defined by input
          start                v\_start, otherwise not initialized

  Boolean use\_a\_ true        = true, if initial acceleration is defined
          start                by input a\_start, otherwise not initialized

  StateSe stateSel StateSelect Priority to use flange angle and speed as
  lect    ect      .default    states
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  input                                             s\_st Initial position
  [RealInput](Modelica_Blocks_Interfaces.html#Model art   of flange
  ica.Blocks.Interfaces.RealInput)                        

  input                                             v\_st Initial speed of
  [RealInput](Modelica_Blocks_Interfaces.html#Model art   flange
  ica.Blocks.Interfaces.RealInput)                        

  input                                             a\_st Initial angular
  [RealInput](Modelica_Blocks_Interfaces.html#Model art   acceleration of
  ica.Blocks.Interfaces.RealInput)                        flange

  [Flange\_b](Modelica_Mechanics_Translational_Inte flang Flange that is
  rfaces.html#Modelica.Mechanics.Translational.Inte e     initialized
  rfaces.Flange_b)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model InitializeFlange 
      "Initializes a flange with pre-defined position, speed and acceleration (usually, this is reference data from a control bus)"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Boolean use_s_start = true 
        "= true, if initial position is defined by input s_start, otherwise not initialized";
      parameter Boolean use_v_start = true 
        "= true, if initial speed is defined by input v_start, otherwise not initialized";
      parameter Boolean use_a_start = true 
        "= true, if initial acceleration is defined by input a_start, otherwise not initialized";

      parameter StateSelect stateSelect=StateSelect.default 
        "Priority to use flange angle and speed as states";

      Modelica.Blocks.Interfaces.RealInput s_start if use_s_start 
        "Initial position of flange";
      Modelica.Blocks.Interfaces.RealInput v_start if use_v_start 
        "Initial speed of flange";
      Modelica.Blocks.Interfaces.RealInput a_start if use_a_start 
        "Initial angular acceleration of flange";
      Interfaces.Flange_b flange "Flange that is initialized";

      Modelica.SIunits.Position s_flange(stateSelect=stateSelect)=flange.s 
        "Flange position";
      Modelica.SIunits.Velocity v_flange(stateSelect=stateSelect)= der(s_flange) 
        "= der(s_flange)";

    protected 
      encapsulated model Set_s_start "Set s_start"
        import Modelica;
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Blocks.Interfaces.RealInput s_start "Start position";

        Modelica.Mechanics.Translational.Interfaces.Flange_b flange;
      initial equation 
        flange.s = s_start;
      equation 
        flange.f = 0;

      end Set_s_start;

      encapsulated model Set_v_start "Set v_start"
        import Modelica;
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Blocks.Interfaces.RealInput v_start "Start velocity";

        Modelica.Mechanics.Translational.Interfaces.Flange_b flange;
      initial equation 
        der(flange.s) = v_start;
      equation 
        flange.f = 0;

      end Set_v_start;

      encapsulated model Set_a_start "Set a_start"
        import Modelica;
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Blocks.Interfaces.RealInput a_start "Start acceleration";

        Modelica.Mechanics.Translational.Interfaces.Flange_b flange(s(stateSelect=StateSelect.avoid));
        Modelica.SIunits.Velocity v = der(flange.s);
      initial equation 
        der(v) = a_start;
      equation 
        flange.f = 0;

      end Set_a_start;

      encapsulated model Set_flange_f "Set flange_f to zero"
        import Modelica;
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Mechanics.Translational.Interfaces.Flange_b flange;
      equation 
        flange.f = 0;
      end Set_flange_f;
    protected 
      Set_s_start set_s_start if use_s_start;
      Set_v_start set_v_start if use_v_start;
      Set_a_start set_a_start if use_a_start;
      Set_flange_f set_flange_f;
    equation 
      connect(set_s_start.flange, flange);
      connect(set_v_start.flange, flange);
      connect(set_a_start.flange, flange);
      connect(set_flange_f.flange, flange);
      connect(s_start, set_s_start.s_start);
      connect(v_start, set_v_start.v_start);
      connect(a_start, set_a_start.a_start);
    end InitializeFlange;

* * * * *

![image40](Modelica.Mechanics.Translational.Components.MassWithStopAndFrictionI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).MassWithStopAndFriction
========================================================================================================================================================================================================================================================

**Sliding mass with hard stop and Stribeck friction**

Information
-----------

::

This element describes the *Stribeck friction characteristics* of a
sliding mass, i. e. the frictional force acting between the sliding mass
and the support. Included is a *hard stop* for the position. The surface
is fixed and there is friction between sliding mass and surface. The
frictional force f is given for positive velocity v by:

\*\*

The distance between the left and the right connector is given by
parameter L. The position of the center of gravity, coordinate s, is in
the middle between the two flanges.

There are hard stops at smax and smin, i. e. if \*\*

flange\_a.s \>= smin

flange\_b.s <= xmax

the sliding mass can move freely.

When the absolute velocity becomes zero, the sliding mass becomes stuck,
i.e., the absolute position remains constant. In this phase the friction
force is calculated from a force balance due to the requirement that the
absolute acceleration shall be zero. The elements begin to slide when
the friction force exceeds a threshold value, called the maximum static
friction force, computed via:

\*\*

**This requires the states Stop.s and Stop.v** . If these states are
eliminated during the index reduction the model will not work. To avoid
this any inertias should be connected via springs to the Stop element,
other sliding masses, dampers or hydraulic chambers must be avoided.

For more details of the used friction model see the following reference:

Beater P. (1999):
  ~ [Entwurf hydraulischer
    Maschinen](http://www.springer.de/cgi-bin/search_book.pl?isbn=3-540-65444-5).
    Springer Verlag Berlin Heidelberg New York.

The friction model is implemented in a "clean" way by state events and
leads to continuous/discrete systems of equations which have to be
solved by appropriate numerical methods. The method is described in:

Otter M., Elmqvist H., and Mattsson S.E. (1999):
  ~ *Hybrid Modeling in Modelica based on the Synchronous Data Flow
    Principle*. CACSD'99, Aug. 22.-26, Hawaii.

More precise friction models take into account the elasticity of the
material when the two elements are "stuck", as well as other effects,
like hysteresis. This has the advantage that the friction element can be
completely described by a differential equation without events. The
drawback is that the system becomes stiff (about 10-20 times slower
simulation) and that more material constants have to be supplied which
requires more sophisticated identification. For more details, see the
following references, especially (Armstrong and Canudas de Witt 1996):

> Armstrong B. (1991):
>   ~ *Control of Machines with Friction*. Kluwer Academic Press, Boston
>     MA.
>
Armstrong B., and Canudas de Wit C. (1996):
  ~ *Friction Modeling and Compensation.* The Control Handbook, edited
    by W.S.Levine, CRC Press, pp. 1369-1382.

Canudas de Wit C., Olsson H., Astroem K.J., and Lischinsky P. (1995):
  ~ A*new model for control of systems with friction.* IEEE Transactions
    on Automatic Control, Vol. 40, No. 3, pp. 419-425.

### Optional heatPort

The dissipated energy is transported in form of heat to the optional
heatPort connector that can be enabled via parameter "useHeatPort".
Independently whether the heatPort is or is not enabled, the dissipated
power is defined with variable "lossPower". If contact occurs at the
hard stops, the lossPower is not correctly modelled at this time
instant, because the hard stop would introduce a dirac impulse in the
lossPower due to the discontinuously changing kinetic energy of the mass
(lossPower is the derivative of the kinetic energy at the time instant
of the impact).

::

Extends from
[PartialFrictionWithStop](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components.MassWithStopAndFriction.PartialFrictionWithStop)
(Base model of Coulomb friction elements with stop),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                     Name     Defau Description
                                    lt    
  ------------------------ -------- ----- ---------------------------------
  [Position](Modelica_SIun smax           Right stop for (right end of)
  its.html#Modelica.SIunit                sliding mass [m]
  s.Position)                             

  [Position](Modelica_SIun smin           Left stop for (left end of)
  its.html#Modelica.SIunit                sliding mass [m]
  s.Position)                             

  [Length](Modelica_SIunit L              Length of component, from left
  s.html#Modelica.SIunits.                flange to right flange (=
  Length)                                 flange\_b.s - flange\_a.s) [m]

  [Mass](Modelica_SIunits. m              Mass [kg]
  html#Modelica.SIunits.Ma                
  ss)                                     

  Real                     F\_prop        Velocity dependent friction
                                          [N.s/m]

  [Force](Modelica_SIunits F\_Coulo       Constant friction: Coulomb force
  .html#Modelica.SIunits.F mb             [N]
  orce)                                   

  [Force](Modelica_SIunits F\_Strib       Stribeck effect [N]
  .html#Modelica.SIunits.F eck            
  orce)                                   

  Real                     fexp           Exponential decay [s/m]

  Boolean                  useHeatP false =true, if heatPort is enabled
                           ort            

  Initialization                          

  Boolean                  startFor **fal = true, if v\_rel=0 and start of
                           ward.sta se**  forward sliding or v\_rel \>
                           rt             v\_small

  Boolean                  startBac **fal = true, if v\_rel=0 and start of
                           kward.st se**  backward sliding or v\_rel <
                           art            -v\_small

  Boolean                  locked.s false true, if v\_rel=0 and not sliding
                           tart           

  [Position](Modelica_SIun s.start  0     Absolute position of center of
  its.html#Modelica.SIunit                component (s = flange\_a.s + L/2
  s.Position)                             = flange\_b.s - L/2) [m]

  **Advanced**                            

  [Velocity](Modelica_SIun v\_small 1e-3  Relative velocity near to zero
  its.html#Modelica.SIunit                (see model info text) [m/s]
  s.Velocity)                             
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                      Name Description
  ----------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Translatio flan Left flange of
  nal_Interfaces.html#Modelica.Mechanics.Tr ge\_ translational component
  anslational.Interfaces.Flange_a)          a    

  [Flange\_b](Modelica_Mechanics_Translatio flan Right flange of
  nal_Interfaces.html#Modelica.Mechanics.Tr ge\_ translational component
  anslational.Interfaces.Flange_b)          b    

  [HeatPort\_a](Modelica_Thermal_HeatTransf heat Optional port to which
  er_Interfaces.html#Modelica.Thermal.HeatT Port dissipated losses are
  ransfer.Interfaces.HeatPort_a)                 transported in form of
                                                 heat
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model MassWithStopAndFriction 
      "Sliding mass with hard stop and Stribeck friction"
      extends PartialFrictionWithStop;
      SI.Velocity v(start=0, stateSelect = StateSelect.always) 
        "Absolute velocity of flange_a and flange_b";
      SI.Acceleration a(start=0) "Absolute acceleration of flange_a and flange_b";
      parameter Modelica.SIunits.Mass m(start=1) "Mass";
      parameter Real F_prop(final unit="N.s/m", final min=0, start = 1) 
        "Velocity dependent friction";
      parameter Modelica.SIunits.Force F_Coulomb(start=5) 
        "Constant friction: Coulomb force";
      parameter Modelica.SIunits.Force F_Stribeck(start=10) "Stribeck effect";
      parameter Real fexp(final unit="s/m", final min=0, start = 2) 
        "Exponential decay";
    extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;
      Integer stopped = if s <= smin + L/2 then -1 else if s >= smax - L/2 then +1 else 0;
    encapsulated partial model PartialFrictionWithStop 
        "Base model of Coulomb friction elements with stop"

        import SI = Modelica.SIunits;
        import Modelica.Mechanics.Translational.Interfaces.PartialRigid;
      parameter SI.Position smax(start= 25) 
          "Right stop for (right end of) sliding mass";
      parameter SI.Position smin(start=-25) 
          "Left stop for (left end of) sliding mass";
      parameter SI.Velocity v_small=1e-3 
          "Relative velocity near to zero (see model info text)";
    // Equations to define the following variables have to be defined in subclasses
      SI.Velocity v_relfric "Relative velocity between frictional surfaces";
      SI.Acceleration a_relfric "Relative acceleration between frictional surfaces";
      SI.Force f 
          "Friction force (positive, if directed in opposite direction of v_rel)";
      SI.Force f0 "Friction force for v=0 and forward sliding";
      SI.Force f0_max "Maximum friction force for v=0 and locked";
      Boolean free "true, if frictional element is not active";
    // Equations to define the following variables are given in this class
      Real sa(unit="1") 
          "Path parameter of friction characteristic f = f(a_relfric)";
      Boolean startForward(start=false, fixed=true) 
          "= true, if v_rel=0 and start of forward sliding or v_rel > v_small";
      Boolean startBackward(start=false, fixed=true) 
          "= true, if v_rel=0 and start of backward sliding or v_rel < -v_small";
      Boolean locked(start=false) "true, if v_rel=0 and not sliding";
      extends PartialRigid(s(start=0, stateSelect = StateSelect.always));
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
      startForward = pre(mode) == Stuck and (sa > f0_max/unitForce and s < (smax - L/2) or 
            pre(startForward) and sa > f0/unitForce and s < (smax - L/2)) or pre(mode)
         == Backward and v_relfric > v_small or initial() and (v_relfric > 0);
      startBackward = pre(mode) == Stuck and (sa < -f0_max/unitForce and s > (smin + L/2) or 
            pre(startBackward) and sa < -f0/unitForce and s > (smin + L/2)) or pre(mode)
         == Forward and v_relfric < -v_small or initial() and (v_relfric < 0);
      locked = not free and 
        not (pre(mode) == Forward or startForward or pre(mode) == Backward or startBackward);

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
        (if (pre(mode) == Forward  or pre(mode) == Free or startForward)  and v_relfric > 0 and s < (smax - L/2) then 
           Forward else 
         if (pre(mode) == Backward or pre(mode) == Free or startBackward) and v_relfric < 0 and s > (smin + L/2) then 
           Backward else 
           Stuck);
    end PartialFrictionWithStop;
    equation 
      // Constant auxiliary variables
      f0 = (F_Coulomb + F_Stribeck);
      f0_max = f0*1.001;
      free = f0 <= 0 and F_prop <= 0 and s > smin + L/2 and s < smax - L/2;
      // Velocity and acceleration of flanges
      v = der(s);
      a = der(v);
      v_relfric = v;
      a_relfric = a;
    // Equilibrium of forces
      0 = flange_a.f + flange_b.f - f - m*der(v);
    // Friction force
      f = if locked then sa*unitForce else 
          if free then   0 else 
                        (if startForward then         F_prop*v + F_Coulomb + F_Stribeck else 
                         if startBackward then        F_prop*v - F_Coulomb - F_Stribeck else 
                         if pre(mode) == Forward then F_prop*v + F_Coulomb + F_Stribeck*exp(-fexp*abs(v)) else 
                                                      F_prop*v - F_Coulomb - F_Stribeck*exp(-fexp*abs(v)));
      lossPower = f*v_relfric;

    // Define events for hard stops and reinitilize the state variables velocity v and position s
    algorithm 
      when (initial()) then
        assert(s > smin + L/2 or s >= smin + L/2 and v >= 0,
          "Error in initialization of hard stop. (s - L/2) must be >= smin\n"+
          "(s=" + String(s) + ", L=" + String(L) + ", smin=" + String(smin) + ")");
        assert(s < smax - L/2 or s <= smax - L/2 and v <= 0,
          "Error in initialization of hard stop. (s + L/2) must be <= smax\n"+
          "(s=" + String(s) + ", L=" + String(L) + ", smax=" + String(smax) + ")");
      end when;
      when stopped <> 0 then
        reinit(s, if stopped < 0 then smin + L/2 else smax - L/2);
        if (not initial() or stopped*v>0) then
           reinit(v, 0);
        end if;
      end when;
    /*
      when not (s < smax - L/2) then
        reinit(s, smax - L/2);
        if (not initial() or v>0) then
          reinit(v, 0);
        end if;
      end when;

      when not (s > smin + L/2) then
        reinit(s, smin + L/2);
        if (not initial() or v<0) then
          reinit(v, 0);
        end if;
      end when;
    */
    end MassWithStopAndFriction;

* * * * *

![image41](Modelica.Mechanics.Translational.Components.RelativeStatesI.png) [Modelica.Mechanics.Translational.Components](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components).RelativeStates
======================================================================================================================================================================================================================================

**Definition of relative state variables**

Information
-----------

::

Usually, the absolute position and the absolute velocity of
Modelica.Mechanics.Translational.Inertia models are used as state
variables. In some circumstances, relative quantities are better suited,
e.g., because it may be easier to supply initial values. In such cases,
model **RelativeStates** allows the definition of state variables in the
following way:

-   Connect an instance of this model between two flange connectors.
-   The **relative position** and the **relative velocity** between the
    two connectors are used as **state variables**.

An example is given in the next figure

Here, the relative position and the relative velocity between the two
masses are used as state variables. Additionally, the simulator selects
either the absolute position and absolute velocity of model mass1 or of
model mass2 as state variables.

::

Extends from
[Translational.Interfaces.PartialTwoFlanges](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialTwoFlanges)
(Component with two translational 1D flanges ).

Parameters
----------

  -------------------------------------------------------------------------
  Type      Name      Default       Description
  --------- --------- ------------- ---------------------------------------
  StateSele stateSele StateSelect.p Priority to use the relative angle and
  ct        ct        refer         relative speed as states
  -------------------------------------------------------------------------

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

    model RelativeStates "Definition of relative state variables"
      extends Translational.Interfaces.PartialTwoFlanges;
      parameter StateSelect stateSelect=StateSelect.prefer 
        "Priority to use the relative angle and relative speed as states";
      SI.Position s_rel(start=0, stateSelect=StateSelect.prefer) 
        "Relative position used as state variable";
      SI.Velocity v_rel(start=0, stateSelect=StateSelect.prefer) 
        "Relative velocity used as state variable";
      SI.Acceleration a_rel(start=0) "Relative angular acceleration";

    equation 
      s_rel = flange_b.s - flange_a.s;
      v_rel = der(s_rel);
      a_rel = der(v_rel);
      flange_a.f = 0;
      flange_b.f = 0;
    end RelativeStates;

* * * * *

![Modelica.Mechanics.Translational.Components.InitializeFlange.Set\_s\_start](Modelica.Mechanics.Translational.Components.InitializeFlange.Set_s_startI.png) [Modelica.Mechanics.Translational.Components.InitializeFlange](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components.InitializeFlange).Set\_s\_start
========================================================================================================================================================================================================================================================================================================================================================

**Set s\_start**

Information
-----------

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name   Descript
                                                                  ion
  -------------------------------------------------------- ------ --------
  input                                                    s\_sta Start
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blo rt     position
  cks.Interfaces.RealInput)                                       

  [Flange\_b](Modelica_Mechanics_Translational_Interfaces. flange 
  html#Modelica.Mechanics.Translational.Interfaces.Flange_        
  b)                                                              
  ------------------------------------------------------------------------

Modelica definition
-------------------

    encapsulated model Set_s_start "Set s_start"
      import Modelica;
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Blocks.Interfaces.RealInput s_start "Start position";

      Modelica.Mechanics.Translational.Interfaces.Flange_b flange;
    initial equation 
      flange.s = s_start;
    equation 
      flange.f = 0;

    end Set_s_start;

* * * * *

![Modelica.Mechanics.Translational.Components.InitializeFlange.Set\_v\_start](Modelica.Mechanics.Translational.Components.InitializeFlange.Set_s_startI.png) [Modelica.Mechanics.Translational.Components.InitializeFlange](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components.InitializeFlange).Set\_v\_start
========================================================================================================================================================================================================================================================================================================================================================

**Set v\_start**

Information
-----------

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name   Descript
                                                                  ion
  -------------------------------------------------------- ------ --------
  input                                                    v\_sta Start
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blo rt     velocity
  cks.Interfaces.RealInput)                                       

  [Flange\_b](Modelica_Mechanics_Translational_Interfaces. flange 
  html#Modelica.Mechanics.Translational.Interfaces.Flange_        
  b)                                                              
  ------------------------------------------------------------------------

Modelica definition
-------------------

    encapsulated model Set_v_start "Set v_start"
      import Modelica;
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Blocks.Interfaces.RealInput v_start "Start velocity";

      Modelica.Mechanics.Translational.Interfaces.Flange_b flange;
    initial equation 
      der(flange.s) = v_start;
    equation 
      flange.f = 0;

    end Set_v_start;

* * * * *

![Modelica.Mechanics.Translational.Components.InitializeFlange.Set\_a\_start](Modelica.Mechanics.Translational.Components.InitializeFlange.Set_s_startI.png) [Modelica.Mechanics.Translational.Components.InitializeFlange](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components.InitializeFlange).Set\_a\_start
========================================================================================================================================================================================================================================================================================================================================================

**Set a\_start**

Information
-----------

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name  Descriptio
                                                                n
  ------------------------------------------------------- ----- ----------
  input                                                   a\_st Start
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bl art   accelerati
  ocks.Interfaces.RealInput)                                    on

  [Flange\_b](Modelica_Mechanics_Translational_Interfaces flang 
  .html#Modelica.Mechanics.Translational.Interfaces.Flang e     
  e_b)                                                          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    encapsulated model Set_a_start "Set a_start"
      import Modelica;
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Blocks.Interfaces.RealInput a_start "Start acceleration";

      Modelica.Mechanics.Translational.Interfaces.Flange_b flange(s(stateSelect=StateSelect.avoid));
      Modelica.SIunits.Velocity v = der(flange.s);
    initial equation 
      der(v) = a_start;
    equation 
      flange.f = 0;

    end Set_a_start;

* * * * *

![Modelica.Mechanics.Translational.Components.InitializeFlange.Set\_flange\_f](Modelica.Mechanics.Translational.Components.InitializeFlange.Set_flange_fI.png) [Modelica.Mechanics.Translational.Components.InitializeFlange](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components.InitializeFlange).Set\_flange\_f
===========================================================================================================================================================================================================================================================================================================================================================

**Set flange\_f to zero**

Information
-----------

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [Flange\_b](Modelica_Mechanics_Translational_Interfaces.ht flang 
  ml#Modelica.Mechanics.Translational.Interfaces.Flange_b)   e     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    encapsulated model Set_flange_f "Set flange_f to zero"
      import Modelica;
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Mechanics.Translational.Interfaces.Flange_b flange;
    equation 
      flange.f = 0;
    end Set_flange_f;

* * * * *

![Modelica.Mechanics.Translational.Components.MassWithStopAndFriction.PartialFrictionWithStop](Modelica.Mechanics.Translational.Components.MassWithStopAndFriction.PartialFrictionWithStopI.png) [Modelica.Mechanics.Translational.Components.MassWithStopAndFriction](Modelica_Mechanics_Translational_Components.html#Modelica.Mechanics.Translational.Components.MassWithStopAndFriction).PartialFrictionWithStop
====================================================================================================================================================================================================================================================================================================================================================================================================================

**Base model of Coulomb friction elements with stop**

Information
-----------

::

Basic model for Coulomb friction that models the stuck phase in a
reliable way. Additionally, a left and right stop are handled.

::

Extends from
[PartialRigid](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRigid)
(Rigid connection of two translational 1D flanges ).

Parameters
----------

  -------------------------------------------------------------------------
  Type                      Name  Defa Description
                                  ult  
  ------------------------- ----- ---- ------------------------------------
  [Position](Modelica_SIuni smax       Right stop for (right end of)
  ts.html#Modelica.SIunits.            sliding mass [m]
  Position)                            

  [Position](Modelica_SIuni smin       Left stop for (left end of) sliding
  ts.html#Modelica.SIunits.            mass [m]
  Position)                            

  [Length](Modelica_SIunits L          Length of component, from left
  .html#Modelica.SIunits.Le            flange to right flange (=
  ngth)                                flange\_b.s - flange\_a.s) [m]

  **Advanced**                         

  [Velocity](Modelica_SIuni v\_sm 1e-3 Relative velocity near to zero (see
  ts.html#Modelica.SIunits. all        model info text) [m/s]
  Velocity)                            
  -------------------------------------------------------------------------

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

    encapsulated partial model PartialFrictionWithStop 
      "Base model of Coulomb friction elements with stop"

        import SI = Modelica.SIunits;
        import Modelica.Mechanics.Translational.Interfaces.PartialRigid;
      parameter SI.Position smax(start= 25) 
        "Right stop for (right end of) sliding mass";
      parameter SI.Position smin(start=-25) 
        "Left stop for (left end of) sliding mass";
      parameter SI.Velocity v_small=1e-3 
        "Relative velocity near to zero (see model info text)";
    // Equations to define the following variables have to be defined in subclasses
      SI.Velocity v_relfric "Relative velocity between frictional surfaces";
      SI.Acceleration a_relfric "Relative acceleration between frictional surfaces";
      SI.Force f 
        "Friction force (positive, if directed in opposite direction of v_rel)";
      SI.Force f0 "Friction force for v=0 and forward sliding";
      SI.Force f0_max "Maximum friction force for v=0 and locked";
      Boolean free "true, if frictional element is not active";
    // Equations to define the following variables are given in this class
      Real sa(unit="1") 
        "Path parameter of friction characteristic f = f(a_relfric)";
      Boolean startForward(start=false, fixed=true) 
        "= true, if v_rel=0 and start of forward sliding or v_rel > v_small";
      Boolean startBackward(start=false, fixed=true) 
        "= true, if v_rel=0 and start of backward sliding or v_rel < -v_small";
      Boolean locked(start=false) "true, if v_rel=0 and not sliding";
      extends PartialRigid(s(start=0, stateSelect = StateSelect.always));
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
      startForward = pre(mode) == Stuck and (sa > f0_max/unitForce and s < (smax - L/2) or 
            pre(startForward) and sa > f0/unitForce and s < (smax - L/2)) or pre(mode)
         == Backward and v_relfric > v_small or initial() and (v_relfric > 0);
      startBackward = pre(mode) == Stuck and (sa < -f0_max/unitForce and s > (smin + L/2) or 
            pre(startBackward) and sa < -f0/unitForce and s > (smin + L/2)) or pre(mode)
         == Forward and v_relfric < -v_small or initial() and (v_relfric < 0);
      locked = not free and 
        not (pre(mode) == Forward or startForward or pre(mode) == Backward or startBackward);

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
        (if (pre(mode) == Forward  or pre(mode) == Free or startForward)  and v_relfric > 0 and s < (smax - L/2) then 
           Forward else 
         if (pre(mode) == Backward or pre(mode) == Free or startBackward) and v_relfric < 0 and s > (smin + L/2) then 
           Backward else 
           Stuck);
    end PartialFrictionWithStop;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:51 2010.
