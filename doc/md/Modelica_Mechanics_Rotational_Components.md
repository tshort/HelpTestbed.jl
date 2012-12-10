% Modelica.Mechanics.Rotational.Components
% 
% 

[Modelica.Mechanics.Rotational](Modelica_Mechanics_Rotational.html#Modelica.Mechanics.Rotational).Components
============================================================================================================

**Components for 1D rotational mechanical drive trains**

Information
-----------

::

This package contains basic components 1D mechanical rotational drive
trains.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                       Description
  ------------------------------------------ -----------------------------
  ![image19](Modelica.Mechanics.Rotational.C Flange fixed in housing at a
  omponents.FixedS.png)                      given angle
  [Fixed](Modelica_Mechanics_Rotational_Comp 
  onents.html#Modelica.Mechanics.Rotational. 
  Components.Fixed)                          

  ![image20](Modelica.Mechanics.Rotational.C 1D-rotational component with
  omponents.InertiaS.png)                    inertia
  [Inertia](Modelica_Mechanics_Rotational_Co 
  mponents.html#Modelica.Mechanics.Rotationa 
  l.Components.Inertia)                      

  ![image21](Modelica.Mechanics.Rotational.C 1-dim. rotational rigid
  omponents.DiscS.png)                       component without inertia,
  [Disc](Modelica_Mechanics_Rotational_Compo where right flange is rotated
  nents.html#Modelica.Mechanics.Rotational.C by a fixed angle with respect
  omponents.Disc)                            to left flange

  ![image22](Modelica.Mechanics.Rotational.C Linear 1D rotational spring
  omponents.SpringS.png)                     
  [Spring](Modelica_Mechanics_Rotational_Com 
  ponents.html#Modelica.Mechanics.Rotational 
  .Components.Spring)                        

  ![image23](Modelica.Mechanics.Rotational.C Linear 1D rotational damper
  omponents.DamperS.png)                     
  [Damper](Modelica_Mechanics_Rotational_Com 
  ponents.html#Modelica.Mechanics.Rotational 
  .Components.Damper)                        

  ![image24](Modelica.Mechanics.Rotational.C Linear 1D rotational spring
  omponents.SpringDamperS.png)               and damper in parallel
  [SpringDamper](Modelica_Mechanics_Rotation 
  al_Components.html#Modelica.Mechanics.Rota 
  tional.Components.SpringDamper)            

  ![image25](Modelica.Mechanics.Rotational.C Backlash connected in series
  omponents.ElastoBacklashS.png)             to linear spring and damper
  [ElastoBacklash](Modelica_Mechanics_Rotati (backlash is modeled with
  onal_Components.html#Modelica.Mechanics.Ro elasticity)
  tational.Components.ElastoBacklash)        

  ![image26](Modelica.Mechanics.Rotational.C Coulomb friction in bearings
  omponents.BearingFrictionS.png)            
  [BearingFriction](Modelica_Mechanics_Rotat 
  ional_Components.html#Modelica.Mechanics.R 
  otational.Components.BearingFriction)      

  ![image27](Modelica.Mechanics.Rotational.C Brake based on Coulomb
  omponents.BrakeS.png)                      friction
  [Brake](Modelica_Mechanics_Rotational_Comp 
  onents.html#Modelica.Mechanics.Rotational. 
  Components.Brake)                          

  ![image28](Modelica.Mechanics.Rotational.C Clutch based on Coulomb
  omponents.ClutchS.png)                     friction
  [Clutch](Modelica_Mechanics_Rotational_Com 
  ponents.html#Modelica.Mechanics.Rotational 
  .Components.Clutch)                        

  ![image29](Modelica.Mechanics.Rotational.C Series connection of
  omponents.OneWayClutchS.png)               freewheel and clutch
  [OneWayClutch](Modelica_Mechanics_Rotation 
  al_Components.html#Modelica.Mechanics.Rota 
  tional.Components.OneWayClutch)            

  ![image30](Modelica.Mechanics.Rotational.C Ideal gear without inertia
  omponents.IdealGearS.png)                  
  [IdealGear](Modelica_Mechanics_Rotational_ 
  Components.html#Modelica.Mechanics.Rotatio 
  nal.Components.IdealGear)                  

  ![image31](Modelica.Mechanics.Rotational.C Gear with mesh efficiency and
  omponents.LossyGearS.png)                  bearing friction
  [LossyGear](Modelica_Mechanics_Rotational_ (stuck/rolling possible)
  Components.html#Modelica.Mechanics.Rotatio 
  nal.Components.LossyGear)                  

  ![image32](Modelica.Mechanics.Rotational.C Ideal planetary gear box
  omponents.IdealPlanetaryS.png)             
  [IdealPlanetary](Modelica_Mechanics_Rotati 
  onal_Components.html#Modelica.Mechanics.Ro 
  tational.Components.IdealPlanetary)        

  ![image33](Modelica.Mechanics.Rotational.C Realistic model of a gearbox
  omponents.GearboxS.png)                    (based on LossyGear)
  [Gearbox](Modelica_Mechanics_Rotational_Co 
  mponents.html#Modelica.Mechanics.Rotationa 
  l.Components.Gearbox)                      

  ![image34](Modelica.Mechanics.Rotational.C Gearbox transforming
  omponents.IdealGearR2TS.png)               rotational into translational
  [IdealGearR2T](Modelica_Mechanics_Rotation motion
  al_Components.html#Modelica.Mechanics.Rota 
  tional.Components.IdealGearR2T)            

  ![image35](Modelica.Mechanics.Rotational.C Simple 1-dim. model of an
  omponents.IdealRollingWheelS.png)          ideal rolling wheel without
  [IdealRollingWheel](Modelica_Mechanics_Rot inertia
  ational_Components.html#Modelica.Mechanics 
  .Rotational.Components.IdealRollingWheel)  

  ![image36](Modelica.Mechanics.Rotational.C Initializes a flange with
  omponents.InitializeFlangeS.png)           pre-defined angle, speed and
  [InitializeFlange](Modelica_Mechanics_Rota angular acceleration
  tional_Components.html#Modelica.Mechanics. (usually, this is reference
  Rotational.Components.InitializeFlange)    data from a control bus)

  ![image37](Modelica.Mechanics.Rotational.C Definition of relative state
  omponents.RelativeStatesS.png)             variables
  [RelativeStates](Modelica_Mechanics_Rotati 
  onal_Components.html#Modelica.Mechanics.Ro 
  tational.Components.RelativeStates)        
  ------------------------------------------------------------------------

* * * * *

![image38](Modelica.Mechanics.Rotational.Components.FixedI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).Fixed
========================================================================================================================================================================================================

**Flange fixed in housing at a given angle**

Information
-----------

::

The **flange** of a 1D rotational mechanical system is **fixed** at an
angle phi0 in the **housing**. May be used:

-   to connect a compliant element, such as a spring or a damper,
    between an inertia or gearbox component and the housing.
-   to fix a rigid element, such as an inertia, with a specific angle to
    the housing.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name  Default Description
  ----------------------------------- ----- ------- -----------------------
  [Angle](Modelica_SIunits.html#Model phi0  0       Fixed offset angle of
  ica.SIunits.Angle)                                housing [rad]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  [Flange\_b](Modelica_Mechanics_Rotational_Interface flan (right) flange
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla ge   fixed in housing
  nge_b)                                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Fixed "Flange fixed in housing at a given angle"
      parameter SI.Angle phi0=0 "Fixed offset angle of housing";

      Interfaces.Flange_b flange "(right) flange fixed in housing";

    equation 
      flange.phi = phi0;
    end Fixed;

* * * * *

![image39](Modelica.Mechanics.Rotational.Components.InertiaI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).Inertia
============================================================================================================================================================================================================

**1D-rotational component with inertia**

Information
-----------

::

Rotational component with **inertia** and two rigidly connected flanges.

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                             Name  Default  Description
  -------------------------------- ----- -------- ------------------------
  [Inertia](Modelica_SIunits.html# J              Moment of inertia
  Modelica.SIunits.Inertia)                       [kg.m2]

  Initialization                                  

  [Angle](Modelica_SIunits.html#Mo phi.s          Absolute rotation angle
  delica.SIunits.Angle)            tart           of component [rad]

  [AngularVelocity](Modelica_SIuni w.sta          Absolute angular
  ts.html#Modelica.SIunits.Angular rt             velocity of component (=
  Velocity)                                       der(phi)) [rad/s]

  [AngularAcceleration](Modelica_S a.sta          Absolute angular
  Iunits.html#Modelica.SIunits.Ang rt             acceleration of
  ularAcceleration)                               component (= der(w))
                                                  [rad/s2]

  **Advanced**                                    

  StateSelect                      state StateSel Priority to use phi and
                                   Selec ect.defa w as states
                                   t     ult      
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                  Name   Description
  ----------------------------------------------------- ------ ------------
  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces. flange Left flange
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_ \_a    of shaft
  a)                                                           

  [Flange\_b](Modelica_Mechanics_Rotational_Interfaces. flange Right flange
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_ \_b    of shaft
  b)                                                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Inertia "1D-rotational component with inertia"
      import SI = Modelica.SIunits;
      Rotational.Interfaces.Flange_a flange_a "Left flange of shaft";
      Rotational.Interfaces.Flange_b flange_b "Right flange of shaft";
      parameter SI.Inertia J(min=0, start=1) "Moment of inertia";
      parameter StateSelect stateSelect=StateSelect.default 
        "Priority to use phi and w as states";
      SI.Angle phi(stateSelect=stateSelect) "Absolute rotation angle of component";
      SI.AngularVelocity w(stateSelect=stateSelect) 
        "Absolute angular velocity of component (= der(phi))";
      SI.AngularAcceleration a 
        "Absolute angular acceleration of component (= der(w))";

    equation 
      phi = flange_a.phi;
      phi = flange_b.phi;
      w = der(phi);
      a = der(w);
      J*a = flange_a.tau + flange_b.tau;
    end Inertia;

* * * * *

![image40](Modelica.Mechanics.Rotational.Components.DiscI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).Disc
======================================================================================================================================================================================================

**1-dim. rotational rigid component without inertia, where right flange
is rotated by a fixed angle with respect to left flange**

Information
-----------

::

Rotational component with two rigidly connected flanges without
**inertia**. The right flange is rotated by the fixed angle "deltaPhi"
with respect to the left flange.

::

Extends from
[Rotational.Interfaces.PartialTwoFlanges](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges)
(Partial model for a component with two rotational 1-dim. shaft
flanges).

Parameters
----------

  ------------------------------------------------------------------------
  Type                   Name Defa Description
                              ult  
  ---------------------- ---- ---- ---------------------------------------
  [Angle](Modelica_SIuni delt 0    Fixed rotation of left flange with
  ts.html#Modelica.SIuni aPhi      respect to right flange (=
  ts.Angle)                        flange\_b.phi - flange\_a.phi) [rad]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                  Name   Description
  ----------------------------------------------------- ------ ------------
  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces. flange Flange of
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_ \_a    left shaft
  a)                                                           

  [Flange\_b](Modelica_Mechanics_Rotational_Interfaces. flange Flange of
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_ \_b    right shaft
  b)                                                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Disc 
      "1-dim. rotational rigid component without inertia, where right flange is rotated by a fixed angle with respect to left flange"
      import SI = Modelica.SIunits;
      extends Rotational.Interfaces.PartialTwoFlanges;
      parameter SI.Angle deltaPhi=0 
        "Fixed rotation of left flange with respect to right flange (= flange_b.phi - flange_a.phi)";
      SI.Angle phi "Absolute rotation angle of component";

    equation 
      flange_a.phi = phi - deltaPhi/2;
      flange_b.phi = phi + deltaPhi/2;
      0 = flange_a.tau + flange_b.tau;
    end Disc;

* * * * *

![image41](Modelica.Mechanics.Rotational.Components.SpringI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).Spring
==========================================================================================================================================================================================================

**Linear 1D rotational spring**

Information
-----------

::

A **linear 1D rotational spring**. The component can be connected either
between two inertias/gears to describe the shaft elasticity, or between
a inertia/gear and the housing (component Fixed), to describe a coupling
of the element with the housing via a spring.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialCompliant](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialCompliant)
(Partial model for the compliant connection of two rotational 1-dim.
shaft flanges).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                Name   Defa Description
                                             ult  
  ----------------------------------- ------ ---- ------------------------
  [RotationalSpringConstant](Modelica c           Spring constant
  _SIunits.html#Modelica.SIunits.Rota             [N.m/rad]
  tionalSpringConstant)                           

  [Angle](Modelica_SIunits.html#Model phi\_r 0    Unstretched spring angle
  ica.SIunits.Angle)                  el0         [rad]

  Initialization                                  

  [Angle](Modelica_SIunits.html#Model phi\_r 0    Relative rotation angle
  ica.SIunits.Angle)                  el.sta      (= flange\_b.phi -
                                      rt          flange\_a.phi) [rad]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                         Name  Description
  -------------------------------------------- ----- ----------------------
  [Flange\_a](Modelica_Mechanics_Rotational_In flang Left flange of
  terfaces.html#Modelica.Mechanics.Rotational. e\_a  compliant 1-dim.
  Interfaces.Flange_a)                               rotational component

  [Flange\_b](Modelica_Mechanics_Rotational_In flang Right flange of
  terfaces.html#Modelica.Mechanics.Rotational. e\_b  compliant 1-dim.
  Interfaces.Flange_b)                               rotational component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Spring "Linear 1D rotational spring"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialCompliant;
      parameter SI.RotationalSpringConstant c(final min=0, start=1.0e5) 
        "Spring constant";
      parameter SI.Angle phi_rel0=0 "Unstretched spring angle";

    equation 
      tau = c*(phi_rel - phi_rel0);
    end Spring;

* * * * *

![image42](Modelica.Mechanics.Rotational.Components.DamperI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).Damper
==========================================================================================================================================================================================================

**Linear 1D rotational damper**

Information
-----------

::

**Linear, velocity dependent damper** element. It can be either
connected between an inertia or gear and the housing (component Fixed),
or between two inertia/gear elements.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates)
(Partial model for the compliant connection of two rotational 1-dim.
shaft flanges where the relative angle and speed are used as preferred
states),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name   Default Description
  ---------------------------------- ------ ------- -----------------------
  [RotationalDampingConstant](Modeli d              Damping constant
  ca_SIunits.html#Modelica.SIunits.R                [N.m.s/rad]
  otationalDampingConstant)                         

  Boolean                            useHea false   =true, if heatPort is
                                     tPort          enabled

  Initialization                                    

  [Angle](Modelica_SIunits.html#Mode phi\_r 0       Relative rotation angle
  lica.SIunits.Angle)                el.sta         (= flange\_b.phi -
                                     rt             flange\_a.phi) [rad]

  [AngularVelocity](Modelica_SIunits w\_rel 0       Relative angular
  .html#Modelica.SIunits.AngularVelo .start         velocity (=
  city)                                             der(phi\_rel)) [rad/s]

  [AngularAcceleration](Modelica_SIu a\_rel 0       Relative angular
  nits.html#Modelica.SIunits.Angular .start         acceleration (=
  Acceleration)                                     der(w\_rel)) [rad/s2]

  **Advanced**                                      

  [Angle](Modelica_SIunits.html#Mode phi\_n 1e-4    Nominal value of
  lica.SIunits.Angle)                ominal         phi\_rel (used for
                                                    scaling) [rad]

  StateSelect                        stateS StateSe Priority to use
                                     elect  lect.pr phi\_rel and w\_rel as
                                            efer    states
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Rotationa flan Left flange of compliant
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 1-dim. rotational
  ational.Interfaces.Flange_a)             a    component

  [Flange\_b](Modelica_Mechanics_Rotationa flan Right flange of compliant
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 1-dim. rotational
  ational.Interfaces.Flange_b)             b    component

  [HeatPort\_a](Modelica_Thermal_HeatTrans heat Optional port to which
  fer_Interfaces.html#Modelica.Thermal.Hea Port dissipated losses are
  tTransfer.Interfaces.HeatPort_a)              transported in form of
                                                heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Damper "Linear 1D rotational damper"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates;
      parameter SI.RotationalDampingConstant d(final min=0, start=0) 
        "Damping constant";
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;
    equation 
      tau = d*w_rel;
      lossPower = tau*w_rel;
    end Damper;

* * * * *

![image43](Modelica.Mechanics.Rotational.Components.SpringDamperI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).SpringDamper
======================================================================================================================================================================================================================

**Linear 1D rotational spring and damper in parallel**

Information
-----------

::

A **spring** and **damper** element **connected in parallel**. The
component can be connected either between two inertias/gears to describe
the shaft elasticity and damping, or between an inertia/gear and the
housing (component Fixed), to describe a coupling of the element with
the housing via a spring/damper.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates)
(Partial model for the compliant connection of two rotational 1-dim.
shaft flanges where the relative angle and speed are used as preferred
states),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name   Default Description
  ---------------------------------- ------ ------- -----------------------
  [RotationalSpringConstant](Modelic c              Spring constant
  a_SIunits.html#Modelica.SIunits.Ro                [N.m/rad]
  tationalSpringConstant)                           

  [RotationalDampingConstant](Modeli d              Damping constant
  ca_SIunits.html#Modelica.SIunits.R                [N.m.s/rad]
  otationalDampingConstant)                         

  [Angle](Modelica_SIunits.html#Mode phi\_r 0       Unstretched spring
  lica.SIunits.Angle)                el0            angle [rad]

  Boolean                            useHea false   =true, if heatPort is
                                     tPort          enabled

  Initialization                                    

  [Angle](Modelica_SIunits.html#Mode phi\_r 0       Relative rotation angle
  lica.SIunits.Angle)                el.sta         (= flange\_b.phi -
                                     rt             flange\_a.phi) [rad]

  [AngularVelocity](Modelica_SIunits w\_rel 0       Relative angular
  .html#Modelica.SIunits.AngularVelo .start         velocity (=
  city)                                             der(phi\_rel)) [rad/s]

  [AngularAcceleration](Modelica_SIu a\_rel 0       Relative angular
  nits.html#Modelica.SIunits.Angular .start         acceleration (=
  Acceleration)                                     der(w\_rel)) [rad/s2]

  **Advanced**                                      

  [Angle](Modelica_SIunits.html#Mode phi\_n 1e-4    Nominal value of
  lica.SIunits.Angle)                ominal         phi\_rel (used for
                                                    scaling) [rad]

  StateSelect                        stateS StateSe Priority to use
                                     elect  lect.pr phi\_rel and w\_rel as
                                            efer    states
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Rotationa flan Left flange of compliant
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 1-dim. rotational
  ational.Interfaces.Flange_a)             a    component

  [Flange\_b](Modelica_Mechanics_Rotationa flan Right flange of compliant
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 1-dim. rotational
  ational.Interfaces.Flange_b)             b    component

  [HeatPort\_a](Modelica_Thermal_HeatTrans heat Optional port to which
  fer_Interfaces.html#Modelica.Thermal.Hea Port dissipated losses are
  tTransfer.Interfaces.HeatPort_a)              transported in form of
                                                heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SpringDamper 
      "Linear 1D rotational spring and damper in parallel"
      import SI = Modelica.SIunits;
      parameter SI.RotationalSpringConstant c(final min=0, start=1.0e5) 
        "Spring constant";
      parameter SI.RotationalDampingConstant d(final min=0, start=0) 
        "Damping constant";
      parameter SI.Angle phi_rel0=0 "Unstretched spring angle";
      extends Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;
    protected 
      Modelica.SIunits.Torque tau_c "Spring torque";
      Modelica.SIunits.Torque tau_d "Damping torque";
    equation 
      tau_c = c*(phi_rel - phi_rel0);
      tau_d = d*w_rel;
      tau = tau_c + tau_d;
      lossPower = tau_d*w_rel;
    end SpringDamper;

* * * * *

![image44](Modelica.Mechanics.Rotational.Components.ElastoBacklashI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).ElastoBacklash
==========================================================================================================================================================================================================================

**Backlash connected in series to linear spring and damper (backlash is
modeled with elasticity)**

Information
-----------

::

This element consists of a **backlash** element **connected in series**
to a **spring** and **damper** element which are **connected in
parallel**. The spring constant shall be non-zero, otherwise the
component cannot be used.

In combination with components IdealGear, the ElastoBacklash model can
be used to model a gear box with backlash, elasticity and damping.

During initialization, the backlash characteristic is replaced by a
continuous approximation in the backlash region, in order to reduce
problems during initialization, especially for inverse models.

If the backlash b is smaller as 1e-10 rad (especially, if b=0), then the
backlash is ignored and the component reduces to a spring/damper element
in parallel.

In the backlash region (-b/2 ≤ flange\_b.phi - flange\_a.phi - phi\_rel0
≤ b/2) no torque is exerted (flange\_b.tau = 0). Outside of this region,
contact is present and the contact torque is basically computed with a
linear spring/damper characteristic:

    desiredContactTorque = c*phi_contact + d*der(phi_contact)

             phi_contact = phi_rel - phi_rel0 - b/2 if phi_rel - phi_rel0 >  b/2
                         = phi_rel - phi_rel0 + b/2 if phi_rel - phi_rel0 < -b/2

             phi_rel     = flange_b.phi - flange_a.phi;

This torque characteristic leads to the following difficulties:

1.  If the damper torque becomes larger as the spring torque and with
    opposite sign, the contact torque would be "pulling/sticking" which
    is unphysical, since during contact only pushing torques can occur.
2.  When contact occurs with a non-zero relative speed (which is the
    usual situation), the damping torque has a non-zero value and
    therefore the contact torque changes discontinuously at phi\_rel =
    phi\_rel0. Again, this is not physical because the torque can only
    change continuously. (Note, this component is not an idealized model
    where a steep characteristic is approximated by a discontinuity, but
    it shall model the steep characteristic.)

In the literature there are several proposals to fix problem (2).
However, there seems to be no proposal to avoid sticking. For this
reason, the most simple approach is used in the ElastoBacklash model, to
fix both problems by slight changes to the linear spring/damper
characteristic:

    // Torque characteristic when phi_rel > phi_rel0
    if phi_rel - phi_rel0 < b/2 then
       tau_c = 0;          // spring torque
       tau_d = 0;          // damper torque
       flange_b.tau = 0;
    else
       tau_c = c*(phi_rel - phi_rel0);    // spring torque
       tau_d = d*der(phi_rel);            // damper torque
       flange_b.tau = if tau_c + tau_d ≤ 0 then 0 else tau_c + min( tau_c, tau_d );
    end if;

Note, when sticking would occur (tau\_c + tau\_d ≤ 0), then the contact
torque is explicitly set to zero. The "min(tau\_c, tau\_d)" part in the
if-expression, limits the damping torque when it is pushing. This means
that at the start of the contact (phi\_rel - phi\_rel0 = b/2), the
damping torque is zero and is continuous. The effect of both
modifications is that the absolute value of the damping torque is always
limited by the absolute value of the spring torque: |tau\_d| ≤ |tau\_c|.

In the next figure, a typical simulation with the ElastoBacklash model
is shown
([Examples.Backlash](Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.Backlash))
where the different effects are visualized:

1.  Curve 1 (elastoBacklash1.tau) is the unmodified contact torque,
    i.e., the linear spring/damper characteristic. A pulling/sticking
    torque is present at the end of the contact.
2.  Curve 2 (elastoBacklash2.tau) is the contact torque, where the
    torque is explicitly set to zero when pulling/sticking occurs. The
    contact torque is discontinuous at begin of contact.
3.  Curve 3 (elastoBacklash3.tau) is the ElastoBacklash model of this
    library. No discontinuity and no pulling/sticking occurs.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates)
(Partial model for the compliant connection of two rotational 1-dim.
shaft flanges where the relative angle and speed are used as preferred
states),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name   Default Description
  ---------------------------------- ------ ------- -----------------------
  [RotationalSpringConstant](Modelic c              Spring constant (c \> 0
  a_SIunits.html#Modelica.SIunits.Ro                required) [N.m/rad]
  tationalSpringConstant)                           

  [RotationalDampingConstant](Modeli d              Damping constant
  ca_SIunits.html#Modelica.SIunits.R                [N.m.s/rad]
  otationalDampingConstant)                         

  [Angle](Modelica_SIunits.html#Mode b      0       Total backlash [rad]
  lica.SIunits.Angle)                               

  [Angle](Modelica_SIunits.html#Mode phi\_r 0       Unstretched spring
  lica.SIunits.Angle)                el0            angle [rad]

  Boolean                            useHea false   =true, if heatPort is
                                     tPort          enabled

  Initialization                                    

  [Angle](Modelica_SIunits.html#Mode phi\_r 0       Relative rotation angle
  lica.SIunits.Angle)                el.sta         (= flange\_b.phi -
                                     rt             flange\_a.phi) [rad]

  [AngularVelocity](Modelica_SIunits w\_rel 0       Relative angular
  .html#Modelica.SIunits.AngularVelo .start         velocity (=
  city)                                             der(phi\_rel)) [rad/s]

  [AngularAcceleration](Modelica_SIu a\_rel 0       Relative angular
  nits.html#Modelica.SIunits.Angular .start         acceleration (=
  Acceleration)                                     der(w\_rel)) [rad/s2]

  **Advanced**                                      

  [Angle](Modelica_SIunits.html#Mode phi\_n 1e-4    Nominal value of
  lica.SIunits.Angle)                ominal         phi\_rel (used for
                                                    scaling) [rad]

  StateSelect                        stateS StateSe Priority to use
                                     elect  lect.pr phi\_rel and w\_rel as
                                            efer    states
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Rotationa flan Left flange of compliant
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 1-dim. rotational
  ational.Interfaces.Flange_a)             a    component

  [Flange\_b](Modelica_Mechanics_Rotationa flan Right flange of compliant
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 1-dim. rotational
  ational.Interfaces.Flange_b)             b    component

  [HeatPort\_a](Modelica_Thermal_HeatTrans heat Optional port to which
  fer_Interfaces.html#Modelica.Thermal.Hea Port dissipated losses are
  tTransfer.Interfaces.HeatPort_a)              transported in form of
                                                heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ElastoBacklash 
      "Backlash connected in series to linear spring and damper (backlash is modeled with elasticity)"
      import SI = Modelica.SIunits;

      parameter SI.RotationalSpringConstant c(final min=Modelica.Constants.small, start=1.0e5) 
        "Spring constant (c > 0 required)";
      parameter SI.RotationalDampingConstant d(final min=0, start = 0) 
        "Damping constant";
      parameter SI.Angle b(final min=0) = 0 "Total backlash";
      parameter SI.Angle phi_rel0=0 "Unstretched spring angle";

      extends Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;
    protected 
      final parameter SI.Angle bMax = b/2 
        "Backlash in range bMin <= phi_rel - phi_rel0 <= bMax";
      final parameter SI.Angle bMin = -bMax 
        "Backlash in range bMin <= phi_rel - phi_rel0 <= bMax";
      SI.Torque tau_c;
      SI.Torque tau_d;
      SI.Angle phi_diff =  phi_rel - phi_rel0;

      // A minimum backlash is defined in order to avoid an infinite
      // number of state events if backlash b is set to zero.
      constant SI.Angle bEps = 1e-10 "Minimum backlash";

    equation 
        if initial() then
         /* During initialization the characteristic is modified, in order that
            it is a strict monoton rising function. Otherwise, initialization might
            result in a singular system when the characteristic has to be
            inverted. The characteristic is modified in the range 1.5*bMin <= phi_rel - phi_rel0 <= 1.5 bMax,
            so that in this range a linear characteristic is present that approaches the original
            function continuously at its limits, e.g.,
              original:  tau(1.5*bMax) = c*(phi_diff - bMax)
                                       = c*(0.5*bMax)
              initial :  tau(1.5*bMax) = (c/3)*phi_diff
                                       = (c/3)*(3/2)*bMax
                                       = (c/2)*bMax
         */
         tau_c = if phi_diff > 1.5*bMax then c*(phi_diff - bMax) else 
                 if phi_diff < 1.5*bMin then c*(phi_diff - bMin) else (c/3)*phi_diff;
         tau_d = d*w_rel;
         tau   = tau_c + tau_d;
         lossPower = tau_d*w_rel;
      else
     /*
         if abs(b) <= bEps then
            tau_c = c*phi_diff;
            tau_d = d*w_rel;
            tau   = tau_c + tau_d;
         elseif phi_diff > bMax then
            tau_c = c*(phi_diff - bMax);
            tau_d = d*w_rel;
            tau   = smooth(0, noEvent(if tau_c + tau_d <= 0 then 0 else tau_c + min(tau_c,tau_d)));
         elseif phi_diff < bMin then
            tau_c = c*(phi_diff - bMin);
            tau_d = d*w_rel;
            tau   = smooth(0, noEvent(if tau_c + tau_d >= 0 then 0 else tau_c + max(tau_c,tau_d)));
         else
            tau_c = 0;
            tau_d = 0;
            tau   = 0;
         end if;

         This is written in the form below, in order that parameter "b"
         is not evaluated during translation (i.e., in the above form
         it cannot be changed anymore after translation).
       */

         tau_c = if abs(b) <= bEps then c*phi_diff else 
                 if phi_diff > bMax then c*(phi_diff - bMax) else 
                 if phi_diff < bMin then c*(phi_diff - bMin) else 0;
         tau_d = d*w_rel;
         tau   = if abs(b) <= bEps then tau_c + tau_d else 
                   if phi_diff > bMax then 
                      smooth(0, noEvent(if tau_c + tau_d <= 0 then 0 else tau_c + min(tau_c,tau_d))) else 
                   if phi_diff < bMin then 
                      smooth(0, noEvent(if tau_c + tau_d >= 0 then 0 else tau_c + max(tau_c,tau_d))) else 0;
         lossPower =  if abs(b) <= bEps then tau_d*w_rel else 
                        if phi_diff > bMax then 
                           smooth(0, noEvent(if tau_c + tau_d <= 0 then 0 else min(tau_c,tau_d)*w_rel)) else 
                        if phi_diff < bMin then 
                           smooth(0, noEvent(if tau_c + tau_d >= 0 then 0 else max(tau_c,tau_d)*w_rel)) else 0;
      end if;
    end ElastoBacklash;

* * * * *

![image45](Modelica.Mechanics.Rotational.Components.BearingFrictionI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).BearingFriction
============================================================================================================================================================================================================================

**Coulomb friction in bearings**

Information
-----------

::

This element describes **Coulomb friction** in **bearings**, i.e., a
frictional torque acting between a flange and the housing. The positive
sliding friction torque "tau" has to be defined by table "tau\_pos" as
function of the absolute angular velocity "w". E.g.

    w | tau

> ---+----- 0 | 0
>   ~ 1 | 2 2 | 5 3 | 8
>
gives the following table:

    tau_pos = [0, 0; 1, 2; 2, 5; 3, 8];

Currently, only linear interpolation in the table is supported. Outside
of the table, extrapolation through the last two table entries is used.
It is assumed that the negative sliding friction force has the same
characteristic with negative values. Friction is modelled in the
following way:

When the absolute angular velocity "w" is not zero, the friction torque
is a function of w and of a constant normal force. This dependency is
defined via table tau\_pos and can be determined by measurements, e.g.,
by driving the gear with constant velocity and measuring the needed
motor torque (= friction torque).

When the absolute angular velocity becomes zero, the elements connected
by the friction element become stuck, i.e., the absolute angle remains
constant. In this phase the friction torque is calculated from a torque
balance due to the requirement, that the absolute acceleration shall be
zero. The elements begin to slide when the friction torque exceeds a
threshold value, called the maximum static friction torque, computed
via:

    maximum_static_friction = peak * sliding_friction(w=0)  (peak >= 1)

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
[Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2)
(Partial model for a component with two rotational 1-dim. shaft flanges
and a support used for textual modeling, i.e., for elementary models),
[Rotational.Interfaces.PartialFriction](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialFriction)
(Partial model of Coulomb friction elements),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                 Name   Def Description
                              aul 
                              t   
  -------------------- ------ --- -----------------------------------------
  Boolean              useSup fal = true, if support flange enabled,
                       port   se  otherwise implicitly grounded

  Real                 tau\_p [0, [w,tau] Positive sliding friction
                       os[:,  1]  characteristic (w\>=0)
                       2]         

  Real                 peak   1   peak\*tau\_pos[1,2] = Maximum friction
                                  torque for w==0

  Boolean              useHea fal =true, if heatPort is enabled
                       tPort  se  

  Initialization                  

  Boolean              startF **f true, if w\_rel=0 and start of forward
                       orward als sliding
                       .start e** 

  Boolean              startB **f true, if w\_rel=0 and start of backward
                       ackwar als sliding
                       d.star e** 
                       t          

  Boolean              locked fal true, if w\_rel=0 and not sliding
                       .start se  

  **Advanced**                    

  [AngularVelocity](Mo w\_sma 1.0 Relative angular velocity near to zero if
  delica_SIunits.html# ll     e10 jumps due to a reinit(..) of the velocity
  Modelica.SIunits.Ang            can occur (set to low value only if such
  ularVelocity)                   impulses can occur) [rad/s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Rotationa flan Flange of left shaft
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 
  ational.Interfaces.Flange_a)             a    

  [Flange\_b](Modelica_Mechanics_Rotationa flan Flange of right shaft
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 
  ational.Interfaces.Flange_b)             b    

  [Support](Modelica_Mechanics_Rotational_ supp Support/housing of
  Interfaces.html#Modelica.Mechanics.Rotat ort  component
  ional.Interfaces.Support)                     

  [HeatPort\_a](Modelica_Thermal_HeatTrans heat Optional port to which
  fer_Interfaces.html#Modelica.Thermal.Hea Port dissipated losses are
  tTransfer.Interfaces.HeatPort_a)              transported in form of
                                                heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model BearingFriction "Coulomb friction in bearings "
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2;

      parameter Real tau_pos[:, 2]=[0, 1] 
        "[w,tau] Positive sliding friction characteristic (w>=0)";
      parameter Real peak(final min=1) = 1 
        "peak*tau_pos[1,2] = Maximum friction torque for w==0";

      extends Rotational.Interfaces.PartialFriction;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;

      SI.Angle phi "Angle between shaft flanges (flange_a, flange_b) and support";
      SI.Torque tau "Friction torque";
      SI.AngularVelocity w "Absolute angular velocity of flange_a and flange_b";
      SI.AngularAcceleration a 
        "Absolute angular acceleration of flange_a and flange_b";

    equation 
      // Constant auxiliary variables
      tau0 = Modelica.Math.tempInterpol1(0, tau_pos, 2);
      tau0_max = peak*tau0;
      free = false;

      phi = flange_a.phi - phi_support;
      flange_b.phi = flange_a.phi;

      // Angular velocity and angular acceleration of flanges
      w = der(phi);
      a = der(w);
      w_relfric = w;
      a_relfric = a;

      // Friction torque
      flange_a.tau + flange_b.tau - tau = 0;

      // Friction torque
      tau = if locked then sa*unitTorque else 
           (if startForward then         Modelica.Math.tempInterpol1( w, tau_pos, 2) else 
            if startBackward then       -Modelica.Math.tempInterpol1(-w, tau_pos, 2) else 
            if pre(mode) == Forward then Modelica.Math.tempInterpol1( w, tau_pos, 2) else 
                                        -Modelica.Math.tempInterpol1(-w, tau_pos, 2));
      lossPower = tau*w_relfric;
    end BearingFriction;

* * * * *

![image46](Modelica.Mechanics.Rotational.Components.BrakeI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).Brake
========================================================================================================================================================================================================

**Brake based on Coulomb friction**

Information
-----------

::

This component models a **brake**, i.e., a component where a frictional
torque is acting between the housing and a flange and a controlled
normal force presses the flange to the housing in order to increase
friction. The normal force fn has to be provided as input signal
f\_normalized in a normalized form (0 ≤ f\_normalized ≤ 1), fn =
fn\_max\*f\_normalized, where fn\_max has to be provided as parameter.
Friction in the brake is modelled in the following way:

When the absolute angular velocity "w" is not zero, the friction torque
is a function of the velocity dependent friction coefficient mue(w) , of
the normal force "fn", and of a geometry constant "cgeo" which takes
into account the geometry of the device and the assumptions on the
friction distributions:

    frictional_torque = cgeo * mue(w) * fn

Typical values of coefficients of friction:

    dry operation   :  mue = 0.2 .. 0.4
    operating in oil:  mue = 0.05 .. 0.1

When plates are pressed together, where **ri** is the inner radius,
**ro** is the outer radius and **N** is the number of friction
interfaces, the geometry constant is calculated in the following way
under the assumption of a uniform rate of wear at the interfaces:

    cgeo = N*(r0 + ri)/2

The positive part of the friction characteristic **mue**(w), w \>= 0, is
defined via table mue\_pos (first column = w, second column = mue).
Currently, only linear interpolation in the table is supported.

When the absolute angular velocity becomes zero, the elements connected
by the friction element become stuck, i.e., the absolute angle remains
constant. In this phase the friction torque is calculated from a torque
balance due to the requirement, that the absolute acceleration shall be
zero. The elements begin to slide when the friction torque exceeds a
threshold value, called the maximum static friction torque, computed
via:

    frictional_torque = peak * cgeo * mue(w=0) * fn   (peak >= 1)

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
[Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2)
(Partial model for a component with two rotational 1-dim. shaft flanges
and a support used for textual modeling, i.e., for elementary models),
[Rotational.Interfaces.PartialFriction](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialFriction)
(Partial model of Coulomb friction elements),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                 Name   Def Description
                              aul 
                              t   
  -------------------- ------ --- -----------------------------------------
  Boolean              useSup fal = true, if support flange enabled,
                       port   se  otherwise implicitly grounded

  Real                 mue\_p [0, [w,mue] positive sliding friction
                       os[:,  0.5 coefficient (w\_rel\>=0)
                       2]     ]   

  Real                 peak   1   peak\*mue\_pos[1,2] = maximum value of
                                  mue for w\_rel==0

  Real                 cgeo   1   Geometry constant containing friction
                                  distribution assumption

  [Force](Modelica_SIu fn\_ma     Maximum normal force [N]
  nits.html#Modelica.S x          
  Iunits.Force)                   

  Boolean              useHea fal =true, if heatPort is enabled
                       tPort  se  

  Initialization                  

  Boolean              startF **f true, if w\_rel=0 and start of forward
                       orward als sliding
                       .start e** 

  Boolean              startB **f true, if w\_rel=0 and start of backward
                       ackwar als sliding
                       d.star e** 
                       t          

  Boolean              locked fal true, if w\_rel=0 and not sliding
                       .start se  

  **Advanced**                    

  [AngularVelocity](Mo w\_sma 1.0 Relative angular velocity near to zero if
  delica_SIunits.html# ll     e10 jumps due to a reinit(..) of the velocity
  Modelica.SIunits.Ang            can occur (set to low value only if such
  ularVelocity)                   impulses can occur) [rad/s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                 Name  Description
  ------------------------------------ ----- -----------------------------
  [Flange\_a](Modelica_Mechanics_Rotat flang Flange of left shaft
  ional_Interfaces.html#Modelica.Mecha e\_a  
  nics.Rotational.Interfaces.Flange_a)       

  [Flange\_b](Modelica_Mechanics_Rotat flang Flange of right shaft
  ional_Interfaces.html#Modelica.Mecha e\_b  
  nics.Rotational.Interfaces.Flange_b)       

  [Support](Modelica_Mechanics_Rotatio suppo Support/housing of component
  nal_Interfaces.html#Modelica.Mechani rt    
  cs.Rotational.Interfaces.Support)          

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

    model Brake "Brake based on Coulomb friction "
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2;

      parameter Real mue_pos[:, 2]=[0, 0.5] 
        "[w,mue] positive sliding friction coefficient (w_rel>=0)";
      parameter Real peak(final min=1) = 1 
        "peak*mue_pos[1,2] = maximum value of mue for w_rel==0";
      parameter Real cgeo(final min=0) = 1 
        "Geometry constant containing friction distribution assumption";
      parameter SI.Force fn_max(final min=0, start=1) "Maximum normal force";

      extends Rotational.Interfaces.PartialFriction;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;

      SI.Angle phi "Angle between shaft flanges (flange_a, flange_b) and support";
      SI.Torque tau "Brake friction torqu";
      SI.AngularVelocity w "Absolute angular velocity of flange_a and flange_b";
      SI.AngularAcceleration a 
        "Absolute angular acceleration of flange_a and flange_b";

      Real mue0 "Friction coefficient for w=0 and forward sliding";
      SI.Force fn "Normal force (=fn_max*f_normalized)";

      // Constant auxiliary variable
      Modelica.Blocks.Interfaces.RealInput f_normalized 
        "Normalized force signal 0..1 (normal force = fn_max*f_normalized; brake is active if > 0)";


    equation 
      mue0 = Modelica.Math.tempInterpol1(0, mue_pos, 2);

      phi = flange_a.phi - phi_support;
      flange_b.phi = flange_a.phi;

      // Angular velocity and angular acceleration of flanges flange_a and flange_b
      w = der(phi);
      a = der(w);
      w_relfric = w;
      a_relfric = a;

      // Friction torque, normal force and friction torque for w_rel=0
      flange_a.tau + flange_b.tau - tau = 0;
      fn = fn_max*f_normalized;
      tau0 = mue0*cgeo*fn;
      tau0_max = peak*tau0;
      free = fn <= 0;

      // Friction torque
      tau = if locked then sa*unitTorque else 
            if free then   0 else 
            cgeo*fn*(if startForward then         Modelica.Math.tempInterpol1( w, mue_pos, 2) else 
                     if startBackward then       -Modelica.Math.tempInterpol1(-w, mue_pos, 2) else 
                     if pre(mode) == Forward then Modelica.Math.tempInterpol1( w, mue_pos, 2) else 
                                                 -Modelica.Math.tempInterpol1(-w, mue_pos, 2));
      lossPower = tau*w_relfric;
    end Brake;

* * * * *

![image47](Modelica.Mechanics.Rotational.Components.ClutchI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).Clutch
==========================================================================================================================================================================================================

**Clutch based on Coulomb friction**

Information
-----------

::

This component models a **clutch**, i.e., a component with two flanges
where friction is present between the two flanges and these flanges are
pressed together via a normal force. The normal force fn has to be
provided as input signal f\_normalized in a normalized form (0 ≤
f\_normalized ≤ 1), fn = fn\_max\*f\_normalized, where fn\_max has to be
provided as parameter. Friction in the clutch is modelled in the
following way:

When the relative angular velocity is not zero, the friction torque is a
function of the velocity dependent friction coefficient mue(w\_rel) , of
the normal force "fn", and of a geometry constant "cgeo" which takes
into account the geometry of the device and the assumptions on the
friction distributions:

    frictional_torque = cgeo * mue(w_rel) * fn

Typical values of coefficients of friction:

    dry operation   :  mue = 0.2 .. 0.4
    operating in oil:  mue = 0.05 .. 0.1

When plates are pressed together, where **ri** is the inner radius,
**ro** is the outer radius and **N** is the number of friction
interfaces, the geometry constant is calculated in the following way
under the assumption of a uniform rate of wear at the interfaces:

    cgeo = N*(r0 + ri)/2

The positive part of the friction characteristic **mue**(w\_rel), w\_rel
\>= 0, is defined via table mue\_pos (first column = w\_rel, second
column = mue). Currently, only linear interpolation in the table is
supported.

When the relative angular velocity becomes zero, the elements connected
by the friction element become stuck, i.e., the relative angle remains
constant. In this phase the friction torque is calculated from a torque
balance due to the requirement, that the relative acceleration shall be
zero. The elements begin to slide when the friction torque exceeds a
threshold value, called the maximum static friction torque, computed
via:

    frictional_torque = peak * cgeo * mue(w_rel=0) * fn   (peak >= 1)

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
[Modelica.Mechanics.Rotational.Icons.Clutch](Modelica_Mechanics_Rotational_Icons.html#Modelica.Mechanics.Rotational.Icons.Clutch)
(Icon of a clutch),
[Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates)
(Partial model for the compliant connection of two rotational 1-dim.
shaft flanges where the relative angle and speed are used as preferred
states),
[Rotational.Interfaces.PartialFriction](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialFriction)
(Partial model of Coulomb friction elements),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  ------------------------------------------------------------------------
  Type                  Name  Defau Description
                              lt    
  --------------------- ----- ----- --------------------------------------
  Real                  mue\_ [0,   [w,mue] positive sliding friction
                        pos[: 0.5]  coefficient (w\_rel\>=0)
                        ,           
                        2]          

  Real                  peak  1     peak\*mue\_pos[1,2] = maximum value of
                                    mue for w\_rel==0

  Real                  cgeo  1     Geometry constant containing friction
                                    distribution assumption

  [Force](Modelica_SIun fn\_m       Maximum normal force [N]
  its.html#Modelica.SIu ax          
  nits.Force)                       

  Boolean               useHe false =true, if heatPort is enabled
                        atPor       
                        t           

  Initialization                    

  [Angle](Modelica_SIun phi\_ 0     Relative rotation angle (=
  its.html#Modelica.SIu rel.s       flange\_b.phi - flange\_a.phi) [rad]
  nits.Angle)           tart        

  [AngularVelocity](Mod w\_re 0     Relative angular velocity (=
  elica_SIunits.html#Mo l.sta       der(phi\_rel)) [rad/s]
  delica.SIunits.Angula rt          
  rVelocity)                        

  [AngularAcceleration] a\_re 0     Relative angular acceleration (=
  (Modelica_SIunits.htm l.sta       der(w\_rel)) [rad/s2]
  l#Modelica.SIunits.An rt          
  gularAcceleration)                

  Boolean               start **fal true, if w\_rel=0 and start of forward
                        Forwa se**  sliding
                        rd.st       
                        art         

  Boolean               start **fal true, if w\_rel=0 and start of
                        Backw se**  backward sliding
                        ard.s       
                        tart        

  Boolean               locke false true, if w\_rel=0 and not sliding
                        d.sta       
                        rt          

  **Advanced**                      

  [Angle](Modelica_SIun phi\_ 1e-4  Nominal value of phi\_rel (used for
  its.html#Modelica.SIu nomin       scaling) [rad]
  nits.Angle)           al          

  StateSelect           state State Priority to use phi\_rel and w\_rel as
                        Selec Selec states
                        t     t.pre 
                              fer   

  [AngularVelocity](Mod w\_sm 1.0e1 Relative angular velocity near to zero
  elica_SIunits.html#Mo all   0     if jumps due to a reinit(..) of the
  delica.SIunits.Angula             velocity can occur (set to low value
  rVelocity)                        only if such impulses can occur)
                                    [rad/s]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                 Name  Description
  ------------------------------------ ----- ------------------------------
  [Flange\_a](Modelica_Mechanics_Rotat flang Left flange of compliant
  ional_Interfaces.html#Modelica.Mecha e\_a  1-dim. rotational component
  nics.Rotational.Interfaces.Flange_a)       

  [Flange\_b](Modelica_Mechanics_Rotat flang Right flange of compliant
  ional_Interfaces.html#Modelica.Mecha e\_b  1-dim. rotational component
  nics.Rotational.Interfaces.Flange_b)       

  [HeatPort\_a](Modelica_Thermal_HeatT heatP Optional port to which
  ransfer_Interfaces.html#Modelica.The ort   dissipated losses are
  rmal.HeatTransfer.Interfaces.HeatPor       transported in form of heat
  t_a)                                       

  input                                f\_no Normalized force signal 0..1
  [RealInput](Modelica_Blocks_Interfac rmali (normal force =
  es.html#Modelica.Blocks.Interfaces.R zed   fn\_max\*f\_normalized; clutch
  ealInput)                                  is engaged if \> 0)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Clutch "Clutch based on Coulomb friction"
      extends Modelica.Mechanics.Rotational.Icons.Clutch;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates;

      parameter Real mue_pos[:, 2]=[0, 0.5] 
        "[w,mue] positive sliding friction coefficient (w_rel>=0)";
      parameter Real peak(final min=1) = 1 
        "peak*mue_pos[1,2] = maximum value of mue for w_rel==0";
      parameter Real cgeo(final min=0) = 1 
        "Geometry constant containing friction distribution assumption";
      parameter SI.Force fn_max(final min=0, start=1) "Maximum normal force";

      Modelica.SIunits.AngularAcceleration a_rel(start=0) 
        "Relative angular acceleration (= der(w_rel))";
      extends Rotational.Interfaces.PartialFriction;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;

      Real mue0 "Friction coefficient for w=0 and forward sliding";
      SI.Force fn "Normal force (fn=fn_max*f_normalized)";
      Modelica.Blocks.Interfaces.RealInput f_normalized 
        "Normalized force signal 0..1 (normal force = fn_max*f_normalized; clutch is engaged if > 0)";


    equation 
      // Constant auxiliary variable
      mue0 = Modelica.Math.tempInterpol1(0, mue_pos, 2);

      // Relative quantities
      w_relfric = w_rel;
      a_relfric = a_rel;

      // Normal force and friction torque for w_rel=0
      fn = fn_max*f_normalized;
      free = fn <= 0;
      tau0 = mue0*cgeo*fn;
      tau0_max = peak*tau0;

      // Friction torque
      tau = if locked then sa*unitTorque else 
            if free then   0 else 
            cgeo*fn*(if startForward then         Modelica.Math.tempInterpol1( w_rel, mue_pos, 2) else 
                     if startBackward then       -Modelica.Math.tempInterpol1(-w_rel, mue_pos, 2) else 
                     if pre(mode) == Forward then Modelica.Math.tempInterpol1( w_rel, mue_pos, 2) else 
                                                 -Modelica.Math.tempInterpol1(-w_rel, mue_pos, 2));
      lossPower = tau*w_relfric;
    end Clutch;

* * * * *

![image48](Modelica.Mechanics.Rotational.Components.OneWayClutchI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).OneWayClutch
======================================================================================================================================================================================================================

**Series connection of freewheel and clutch**

Information
-----------

::

This component models a **one-way clutch**, i.e., a component with two
flanges where friction is present between the two flanges and these
flanges are pressed together via a normal force. These flanges maybe
sliding with respect to each other Parallel connection of ClutchCombi
and of FreeWheel. The element is introduced to resolve the ambiguity of
the constraint torques of the elements.

A one-way-clutch is an element where a clutch is connected in parallel
to a free wheel. This special element is provided, because such a
parallel connection introduces an ambiguity into the model (the
constraint torques are not uniquely defined when both elements are
stuck) and this element resolves it by introducing **one** constraint
torque and not two.

Note, initial values have to be chosen for the model, such that the
relative speed of the one-way-clutch \>= 0. Otherwise, the configuration
is physically not possible and an error occurs.

The normal force fn has to be provided as input signal f\_normalized in
a normalized form (0 ≤ f\_normalized ≤ 1), fn = fn\_max\*f\_normalized,
where fn\_max has to be provided as parameter. Friction in the clutch is
modelled in the following way:

When the relative angular velocity is positive, the friction torque is a
function of the velocity dependent friction coefficient mue(w\_rel) , of
the normal force "fn", and of a geometry constant "cgeo" which takes
into account the geometry of the device and the assumptions on the
friction distributions:

    frictional_torque = cgeo * mue(w_rel) * fn

Typical values of coefficients of friction:

    dry operation   :  mue = 0.2 .. 0.4
    operating in oil:  mue = 0.05 .. 0.1

When plates are pressed together, where **ri** is the inner radius,
**ro** is the outer radius and **N** is the number of friction
interfaces, the geometry constant is calculated in the following way
under the assumption of a uniform rate of wear at the interfaces:

    cgeo = N*(r0 + ri)/2

The positive part of the friction characteristic **mue**(w\_rel), w\_rel
\>= 0, is defined via table mue\_pos (first column = w\_rel, second
column = mue). Currently, only linear interpolation in the table is
supported.

When the relative angular velocity becomes zero, the elements connected
by the friction element become stuck, i.e., the relative angle remains
constant. In this phase the friction torque is calculated from a torque
balance due to the requirement, that the relative acceleration shall be
zero. The elements begin to slide when the friction torque exceeds a
threshold value, called the maximum static friction torque, computed
via:

    frictional_torque = peak * cgeo * mue(w_rel=0) * fn   (peak >= 1)

This procedure is implemented in a "clean" way by state events and leads
to continuous/discrete systems of equations if friction elements are
dynamically coupled. The method is described in:

Otter M., Elmqvist H., and Mattsson S.E. (1999):

**Hybrid Modeling in Modelica based on the Synchronous Data Flow
Principle**. CACSD'99, Aug. 22.-26, Hawaii.

::

Extends from
[Modelica.Mechanics.Rotational.Icons.Clutch](Modelica_Mechanics_Rotational_Icons.html#Modelica.Mechanics.Rotational.Icons.Clutch)
(Icon of a clutch),
[Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates)
(Partial model for the compliant connection of two rotational 1-dim.
shaft flanges where the relative angle and speed are used as preferred
states),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                   Name Defau Description
                              lt    
  ---------------------- ---- ----- ---------------------------------------
  Real                   mue\ [0,   [w,mue] positive sliding friction
                         _pos 0.5]  coefficient (w\_rel\>=0)
                         [:,        
                         2]         

  Real                   peak 1     peak\*mue\_pos[1,2] = maximum value of
                                    mue for w\_rel==0

  Real                   cgeo 1     Geometry constant containing friction
                                    distribution assumption

  [Force](Modelica_SIuni fn\_       Maximum normal force [N]
  ts.html#Modelica.SIuni max        
  ts.Force)                         

  Boolean                useH false =true, if heatPort is enabled
                         eatP       
                         ort        

  Initialization                    

  [Angle](Modelica_SIuni phi\ 0     Relative rotation angle (=
  ts.html#Modelica.SIuni _rel       flange\_b.phi - flange\_a.phi) [rad]
  ts.Angle)              .sta       
                         rt         

  [AngularVelocity](Mode w\_r 0     Relative angular velocity (=
  lica_SIunits.html#Mode el.s       der(phi\_rel)) [rad/s]
  lica.SIunits.AngularVe tart       
  locity)                           

  [AngularAcceleration]( a\_r 0     Relative angular acceleration (=
  Modelica_SIunits.html# el.s       der(w\_rel)) [rad/s2]
  Modelica.SIunits.Angul tart       
  arAcceleration)                   

  **Advanced**                      

  [Angle](Modelica_SIuni phi\ 1e-4  Nominal value of phi\_rel (used for
  ts.html#Modelica.SIuni _nom       scaling) [rad]
  ts.Angle)              inal       

  StateSelect            stat State Priority to use phi\_rel and w\_rel as
                         eSel Selec states
                         ect  t.pre 
                              fer   

  [AngularVelocity](Mode w\_s 1e10  Relative angular velocity near to zero
  lica_SIunits.html#Mode mall       if jumps due to a reinit(..) of the
  lica.SIunits.AngularVe            velocity can occur (set to low value
  locity)                           only if such impulses can occur)
                                    [rad/s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                 Name  Description
  ------------------------------------ ----- ------------------------------
  [Flange\_a](Modelica_Mechanics_Rotat flang Left flange of compliant
  ional_Interfaces.html#Modelica.Mecha e\_a  1-dim. rotational component
  nics.Rotational.Interfaces.Flange_a)       

  [Flange\_b](Modelica_Mechanics_Rotat flang Right flange of compliant
  ional_Interfaces.html#Modelica.Mecha e\_b  1-dim. rotational component
  nics.Rotational.Interfaces.Flange_b)       

  [HeatPort\_a](Modelica_Thermal_HeatT heatP Optional port to which
  ransfer_Interfaces.html#Modelica.The ort   dissipated losses are
  rmal.HeatTransfer.Interfaces.HeatPor       transported in form of heat
  t_a)                                       

  input                                f\_no Normalized force signal 0..1
  [RealInput](Modelica_Blocks_Interfac rmali (normal force =
  es.html#Modelica.Blocks.Interfaces.R zed   fn\_max\*f\_normalized; clutch
  ealInput)                                  is engaged if \> 0)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model OneWayClutch "Series connection of freewheel and clutch"
      extends Modelica.Mechanics.Rotational.Icons.Clutch;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialCompliantWithRelativeStates;

      parameter Real mue_pos[:, 2]=[0, 0.5] 
        "[w,mue] positive sliding friction coefficient (w_rel>=0)";
      parameter Real peak(final min=1) = 1 
        "peak*mue_pos[1,2] = maximum value of mue for w_rel==0";
      parameter Real cgeo(final min=0) = 1 
        "Geometry constant containing friction distribution assumption";
      parameter SI.Force fn_max(final min=0, start=1) "Maximum normal force";
      parameter SI.AngularVelocity w_small=1e10 
        "Relative angular velocity near to zero if jumps due to a reinit(..) of the velocity can occur (set to low value only if such impulses can occur)";
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;

      Real u "Normalized force input signal (0..1)";
      SI.Force fn "Normal force (fn=fn_max*inPort.signal)";
      Boolean startForward(start=false) 
        "true, if w_rel=0 and start of forward sliding or w_rel > w_small";
      Boolean locked(start=false) "true, if w_rel=0 and not sliding";
      Boolean stuck(start=false) "w_rel=0 (locked or start forward sliding)";

    protected 
      SI.Torque tau0 "Friction torque for w=0 and sliding";
      SI.Torque tau0_max "Maximum friction torque for w=0 and locked";
      Real mue0 "Friction coefficient for w=0 and sliding";
      Boolean free "true, if frictional element is not active";
      Real sa(final unit="1") 
        "Path parameter of tau = f(a_rel) Friction characteristic";
      constant Real eps0=1.0e-4 "Relative hysteresis epsilon";
      SI.Torque tau0_max_low "Lowest value for tau0_max";
      parameter Real peak2=max([peak, 1 + eps0]);
      constant SI.AngularAcceleration unitAngularAcceleration = 1;
      constant SI.Torque unitTorque = 1;
    public 
      Modelica.Blocks.Interfaces.RealInput f_normalized 
        "Normalized force signal 0..1 (normal force = fn_max*f_normalized; clutch is engaged if > 0)";


    equation 
      // Constant auxiliary variable
      mue0 = Modelica.Math.tempInterpol1(0, mue_pos, 2);
      tau0_max_low = eps0*mue0*cgeo*fn_max;

      // Normal force and friction torque for w_rel=0
      u = f_normalized;
      free = u <= 0;
      fn = if free then 0 else fn_max*u;
      tau0 = mue0*cgeo*fn;
      tau0_max = if free then tau0_max_low else peak2*tau0;

      /* Friction characteristic
           (locked is introduced to help the Modelica translator determining
           the different structural configurations, if for each configuration
           special code shall be generated)
        */
      startForward = pre(stuck) and (sa > tau0_max/unitTorque or pre(startForward) and sa >
        tau0/unitTorque or w_rel > w_small) or initial() and (w_rel > 0);
      locked = pre(stuck) and not startForward;

      // acceleration and friction torque
      a_rel = unitAngularAcceleration* (if locked then 0 else sa - tau0/unitTorque);
      tau = if locked then sa*unitTorque else (if free then 0 else cgeo*fn*
        Modelica.Math.tempInterpol1(w_rel, mue_pos, 2));

      // Determine configuration
      stuck = locked or w_rel <= 0;

      lossPower = if stuck then 0 else tau*w_rel;
    end OneWayClutch;

* * * * *

![image49](Modelica.Mechanics.Rotational.Components.IdealGearI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).IdealGear
================================================================================================================================================================================================================

**Ideal gear without inertia**

Information
-----------

::

This element characterices any type of gear box which is fixed in the
ground and which has one driving shaft and one driven shaft. The gear is
**ideal**, i.e., it does not have inertia, elasticity, damping or
backlash. If these effects have to be considered, the gear has to be
connected to other elements in an appropriate way.

::

Extends from
[Modelica.Mechanics.Rotational.Icons.Gear](Modelica_Mechanics_Rotational_Icons.html#Modelica.Mechanics.Rotational.Icons.Gear)
(Rotational gear icon),
[Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2)
(Partial model for a component with two rotational 1-dim. shaft flanges
and a support used for textual modeling, i.e., for elementary models).

Parameters
----------

  ---------------------------------------------------------------------------
  Type     Name       Default  Description
  -------- ---------- -------- ----------------------------------------------
  Boolean  useSupport false    = true, if support flange enabled, otherwise
                               implicitly grounded

  Real     ratio               Transmission ratio
                               (flange\_a.phi/flange\_b.phi)
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Flange\_a](Modelica_Mechanics_Rotational_Interface flange Flange of left
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla \_a    shaft
  nge_a)                                                     

  [Flange\_b](Modelica_Mechanics_Rotational_Interface flange Flange of
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla \_b    right shaft
  nge_b)                                                     

  [Support](Modelica_Mechanics_Rotational_Interfaces. suppor Support/housin
  html#Modelica.Mechanics.Rotational.Interfaces.Suppo t      g
  rt)                                                        of component
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealGear "Ideal gear without inertia"
      extends Modelica.Mechanics.Rotational.Icons.Gear;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2;
      parameter Real ratio(start=1) 
        "Transmission ratio (flange_a.phi/flange_b.phi)";
      Modelica.SIunits.Angle phi_a "Angle between left shaft flange and support";
      Modelica.SIunits.Angle phi_b "Angle between right shaft flange and support";

    equation 
      phi_a = flange_a.phi - phi_support;
      phi_b = flange_b.phi - phi_support;
      phi_a = ratio*phi_b;
      0 = ratio*flange_a.tau + flange_b.tau;
    end IdealGear;

* * * * *

![image50](Modelica.Mechanics.Rotational.Components.LossyGearI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).LossyGear
================================================================================================================================================================================================================

**Gear with mesh efficiency and bearing friction (stuck/rolling
possible)**

Information
-----------

::

This component models the gear ratio and the **losses** of a standard
gear box in a **reliable** way including the stuck phases that may occur
at zero speed. The gear boxes that can be handeled are fixed in the
ground or on a moving support, have one input and one output shaft, and
are essentially described by the equations:

>     flange_a.phi  = i*flange_b.phi;
>
> > -(flange\_b.tau - tau\_bf\_b) = i*eta\_mf*(flange\_a.tau -
> > tau\_bf\_a);
> >
> > // or -flange\_b.tau = i*eta\_mf*(flange\_a.tau - tau\_bf\_a -
> > tau\_bf\_b/(i\*eta\_mf));

where

-   **i** is the constant **gear ratio**,
-   **eta\_mf** = eta\_mf(w\_a) is the **mesh efficiency** due to the
    friction between the teeth of the gear wheels,
-   **tau\_bf\_a** = tau\_bf\_a(w\_a) is the **bearing friction torque**
    on the flange\_a side,
-   **tau\_bf\_b** = tau\_bf\_b(w\_a) is the **bearing friction torque**
    on the flange\_b side, and
-   **w\_a** = der(flange\_a.phi) is the speed of flange\_a

The loss terms "eta\_mf", "tau\_bf\_a" and "tau\_bf\_b" are functions of
the *absolute value* of the input shaft speed w\_a and of the energy
flow direction. They are defined by parameter **lossTable[:,5]** where
the columns of this table have the following meaning:

  ------------ ------------ ------------ ---------------- ----------------
  |w\_a|       eta\_mf1     eta\_mf2     |tau\_bf1|       |tau\_bf2|
  ...          ...          ...          ...              ...
  ...          ...          ...          ...              ...
  ------------ ------------ ------------ ---------------- ----------------

with

  --------- --------------------------------------------------------------
  |w\_a|    Absolute value of angular velocity of input shaft flange\_a

  eta\_mf1  Mesh efficiency in case that flange\_a is driving

  eta\_mf2  Mesh efficiency in case that flange\_b is driving

  |tau\_bf1 Absolute resultant bearing friction torque with respect to
  |         flange\_a in case that flange\_a is driving
              ~ (= |tau\_bf\_a\*eta\_mf1 + tau\_bf\_b/i|)
            
            

  |tau\_bf2 Absolute resultant bearing friction torque with respect to
  |         flange\_a in case that flange\_b is driving
              ~ (= |tau\_bf\_a/eta\_mf2 + tau\_bf\_b/i|)
            
            
  --------- --------------------------------------------------------------

With these variables, the mesh efficiency and the bearing friction are
formally defined as:

>     if (flange_a.tau - tau_bf_a)*w_a > 0 or
>        (flange_a.tau - tau_bf_a) == 0 and w_a > 0 then
>        eta_mf := eta_mf1
>        tau_bf := tau_bf1
>     elseif (flange_a.tau - tau_bf_a)*w_a < 0 or
>            (flange_a.tau - tau_bf_a) == 0 and w_a < 0 then
>        eta_mf := 1/eta_mf2
>        tau_bf := tau_bf2
>     else // w_a == 0
>        eta_mf and tau_bf are computed such that der(w_a) = 0
>     end if;
>     -flange_b.tau = i*(eta_mf*flange_a.tau - tau_bf);

Note, that the losses are modeled in a physically meaningful way taking
into account that at zero speed the movement may be locked due to the
friction in the gear teeth and/or in the bearings. Due to this important
property, this component can be used in situations where the combination
of the components Modelica.Mechanics.Rotational.IdealGear and
Modelica.Mechanics.Rotational.GearEfficiency will fail because, e.g.,
chattering occurs when using the
Modelica.Mechanics.Rotational.GearEfficiency model.

### Acknowledgement:

-   The essential idea to model efficiency in this way is from Christoph
    Pelchen, ZF Friedrichshafen.
-   The article (Pelchen et.al. 2002), see Literature below, and the
    first implementation of LossyGear (up to version 3.1 of package
    Modelica) contained a bug leading to a non-converging solution in
    cases where the driving side is not obvious. This was pointed out by
    Christian Bertsch and Max Westenkirchner, Bosch, and Christian
    Bertsch proposed a concrete solution how to fix this bug, see
    Literature below.

### Literature

-   Pelchen C., \`Schweiger
    C.  <[http://www.robotic.dlr.de/Christian.Schweiger/](http://www.robotic.dlr.de/Christian.Schweiger/)\>\`\_,
        and \`Otter

    M.
    <[http://www.robotic.dlr.de/Martin.Otter/](http://www.robotic.dlr.de/Martin.Otter/)\>\`\_:
    "[Modeling and Simulating the Efficiency of Gearboxes and of
    Planetary
    Gearboxes](http://www.modelica.org/Conference2002/papers/p33_Pelchen.pdf),"
    in *Proceedings of the 2nd International Modelica Conference,
    Oberpfaffenhofen, Germany,* pp. 257-266, The Modelica Association
    and Institute of Robotics and Mechatronics, Deutsches Zentrum für
    Luft-und Raumfahrt e. V., March 18-19, 2002.
-   Bertsch C. (2009): "Problem with model LossyGear and a proposed
    solution", Ticket
    [\#108](http://trac.modelica.org/Modelica/ticket/108), Sept. 11,
    2009.

::

Extends from
[Modelica.Mechanics.Rotational.Icons.Gear](Modelica_Mechanics_Rotational_Icons.html#Modelica.Mechanics.Rotational.Icons.Gear)
(Rotational gear icon),
[Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2)
(Partial model for a component with two rotational 1-dim. shaft flanges
and a support used for textual modeling, i.e., for elementary models),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  ------------------------------------------------------------------------
  Type   Name        Default     Description
  ------ ----------- ----------- -----------------------------------------
  Boolea useSupport  false       = true, if support flange enabled,
  n                              otherwise implicitly grounded

  Real   ratio                   Transmission ratio
                                 (flange\_a.phi/flange\_b.phi)

  Real   lossTable[: [0, 1, 1,   Array for mesh efficiencies and bearing
         ,           0, 0]       friction depending on speed
         5]                      

  Boolea useHeatPort false       =true, if heatPort is enabled
  n                              
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Rotationa flan Flange of left shaft
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 
  ational.Interfaces.Flange_a)             a    

  [Flange\_b](Modelica_Mechanics_Rotationa flan Flange of right shaft
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 
  ational.Interfaces.Flange_b)             b    

  [Support](Modelica_Mechanics_Rotational_ supp Support/housing of
  Interfaces.html#Modelica.Mechanics.Rotat ort  component
  ional.Interfaces.Support)                     

  [HeatPort\_a](Modelica_Thermal_HeatTrans heat Optional port to which
  fer_Interfaces.html#Modelica.Thermal.Hea Port dissipated losses are
  tTransfer.Interfaces.HeatPort_a)              transported in form of
                                                heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model LossyGear 
      "Gear with mesh efficiency and bearing friction (stuck/rolling possible)"

      extends Modelica.Mechanics.Rotational.Icons.Gear;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2;

      parameter Real ratio(start=1) 
        "Transmission ratio (flange_a.phi/flange_b.phi)";
      parameter Real lossTable[:, 5]=[0, 1, 1, 0, 0] 
        "Array for mesh efficiencies and bearing friction depending on speed";
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPortWithoutT;
      Modelica.SIunits.Angle phi_a "Angle between left shaft flange and support";
      Modelica.SIunits.Angle phi_b "Angle between right shaft flange and support";

      Real sa(final unit="1") "Path parameter for acceleration and torque loss";
      SI.AngularVelocity w_a "Angular velocity of flange_a with respect to support";
      SI.AngularAcceleration a_a 
        "Angular acceleration of flange_a with respect to support";

      Real interpolation_result[1, size(lossTable, 2) - 1];
      Real eta_mf1;
      Real eta_mf2;
      Real tau_bf_a "Bearing friction torque on flange_a side";
      Real tau_eta 
        "Torque that determines the driving side (= if forwardSliding then flange_a.tau-tau_bf_a else if backwardSliding then flange_a.tau+tau_bf_a else flange_a.tau)";

      Real tau_bf1;
      Real tau_bf2;

      Real quadrant1;
      Real quadrant2;
      Real quadrant3;
      Real quadrant4;

      // quadrant values for angular verlocities near zero
      Real quadrant1_p; // w=0+
      Real quadrant2_p; // w=0+
      Real quadrant3_m; // w=0-
      Real quadrant4_m; // w=0-

      SI.Torque tauLoss 
        "Torque loss due to friction in the gear teeth and in the bearings";
      SI.Torque tauLossMax "Torque loss for positive speed";
      SI.Torque tauLossMin "Torque loss for negative speed";

      SI.Torque tauLossMax_p "Torque loss for positive speed";
      SI.Torque tauLossMin_m "Torque loss for negative speed";

      Boolean tau_aPos(start=true) 
        "Only for backwards compatibility (was previously: true, if torque of flange_a is not negative)";
      Boolean tau_etaPos(start=true) "true, if torque tau_eta is not negative";
      Boolean startForward(start=false) "true, if starting to roll forward";
      Boolean startBackward(start=false) "true, if starting to roll backward";
      Boolean locked(start=false) "true, if gear is locked";

      Boolean ideal "true, if losses are neglected";

      constant Integer Unknown=3 "Value of mode is not known";
      constant Integer Free=2 "Element is not active";
      constant Integer Forward=1 "w_a > 0 (forward rolling)";
      constant Integer Stuck=0 
        "w_a = 0 (forward rolling, locked or backward rolling)";
      constant Integer Backward=-1 "w_a < 0 (backward rolling)";
      Integer mode(
        final min=Backward,
        final max=Unknown,
        start=Free,
        fixed=true);

      SI.Torque tau_eta_p "tau_eta assuming positive omega";
      SI.Torque tau_eta_m "tau_eta assuming negative omega";
    protected 
      constant SI.AngularAcceleration unitAngularAcceleration = 1;
      constant SI.Torque unitTorque = 1;

      // get friction and eta information for omega=0
      parameter Real interpolation_result_0[1, size(lossTable, 2) - 1] =  Modelica.Math.tempInterpol2(0, lossTable, {2,3,4,5});
      parameter Real eta_mf1_0 = interpolation_result_0[1, 1];
      parameter Real eta_mf2_0 = interpolation_result_0[1, 2];
      parameter Real tau_bf1_0 = abs(interpolation_result_0[1, 3]);
      parameter Real tau_bf2_0 = abs(interpolation_result_0[1, 4]);
      parameter Real tau_bf_a_0= if Modelica.Math.isEqual(eta_mf1_0, 1.0, Modelica.Constants.eps) and 
                                    Modelica.Math.isEqual(eta_mf2_0, 1.0, Modelica.Constants.eps) then 
                                    tau_bf1_0/2 else 
                                    (tau_bf1_0-tau_bf2_0)/(eta_mf1_0-1.0/eta_mf2_0);
                                 // For eta_mf1_0=eta_mf2_0=1 the given bearing
                                 // friction can not be separated into a part
                                 // on side A or B, so it is done arbitrarily.
                                 // Calculate tau_bf_a_0 from the following equations
                                 //  tau_bf1_0=eta_mf1_0*tau_bf_a_0 + 1/ratio a_0
                                 //  tau_bf2_0=1/eta_mf2*tau_bf_a_0 + 1/ratio tau_bf_a_0
    equation 
      assert(abs(ratio) > 0,
        "Error in initialization of LossyGear: ratio may not be zero");

      ideal = Modelica.Math.Matrices.isEqual(lossTable, [0, 1, 1, 0, 0], Modelica.Constants.eps);

      interpolation_result = if ideal then [1, 1, 0, 0] else 
        Modelica.Math.tempInterpol2(noEvent(abs(w_a)), lossTable, {2,3,4,5});
      eta_mf1 = interpolation_result[1, 1];
      eta_mf2 = interpolation_result[1, 2];
      tau_bf1 = noEvent(abs(interpolation_result[1, 3]));
      tau_bf2 = noEvent(abs(interpolation_result[1, 4]));

      if Modelica.Math.isEqual(eta_mf1, 1.0, Modelica.Constants.eps) and 
         Modelica.Math.isEqual(eta_mf2, 1.0, Modelica.Constants.eps) then
         // For eta_mf1=eta_mf2=1 the given bearing friction can not be
         // separated into a part on side A or B, so it is done arbitrarily.
         tau_bf_a = tau_bf1/2;
      else
        //calculate tau_bf_a from the following equations
        //tau_bf1 = eta_mf1*tau_bf_a + tau_bf_b / ratio
        //tau_bf2 = 1/eta_mf2*tau_bf_a + tau_bf_b / ratio
        tau_bf_a=(tau_bf1-tau_bf2)/(eta_mf1-1.0/eta_mf2);
      end if;

      phi_a = flange_a.phi - phi_support;
      phi_b = flange_b.phi - phi_support;
      phi_a = ratio*phi_b;

      // Torque balance (no inertias)
      0 = flange_b.tau + ratio*(flange_a.tau - tauLoss);

      // Speed for friction element
      w_a = der(phi_a);
      a_a = der(w_a);

      // Determine driving side
         //assuming positive omega
         tau_eta_p=flange_a.tau-tau_bf_a_0;
         //assuming negative omega
         tau_eta_m=flange_a.tau+tau_bf_a_0;

      // assuming w>=0, take value at w=0 to decide rolling/stuck mode
      quadrant1_p = (1 - eta_mf1_0)*flange_a.tau + tau_bf1_0;
      quadrant2_p = (1 - 1/eta_mf2_0)*flange_a.tau + tau_bf2_0;
      tauLossMax_p = if noEvent(tau_eta_p>0) then quadrant1_p else quadrant2_p;

      // assuming w<=0, take value at w=0 to decide rolling/stuck mode
      quadrant4_m = (1 - 1/eta_mf2_0)*flange_a.tau - tau_bf2_0;
      quadrant3_m = (1 - eta_mf1_0)*flange_a.tau - tau_bf1_0;
      tauLossMin_m = if noEvent(tau_eta_m>0) then quadrant4_m else quadrant3_m;

      quadrant1 = (1 - eta_mf1)*flange_a.tau + tau_bf1;
      quadrant2 = (1 - 1/eta_mf2)*flange_a.tau + tau_bf2;
      quadrant4 = (1 - 1/eta_mf2)*flange_a.tau - tau_bf2;
      quadrant3 = (1 - eta_mf1)*flange_a.tau - tau_bf1;

      //tau eta: only for determination of driving side for calculation of tauloss
      tau_eta = if ideal then flange_a.tau else 
                     (if locked then flange_a.tau else 
                     (if (startForward or pre(mode) == Forward) then flange_a.tau-tau_bf_a else 
                     flange_a.tau+tau_bf_a));

      // Torque Losses
      tau_etaPos = tau_eta >= 0;
      tau_aPos   = tau_etaPos;
      tauLossMax = if tau_etaPos then quadrant1 else quadrant2;
      tauLossMin = if tau_etaPos then quadrant4 else quadrant3;

      // Determine rolling/stuck mode when w_rel = 0
      startForward = pre(mode) == Stuck and sa > tauLossMax_p/unitTorque or initial() and w_a > 0;
      startBackward = pre(mode) == Stuck and sa < tauLossMin_m/unitTorque or initial() and w_a < 0;
      locked = not (ideal or pre(mode) == Forward or startForward or pre(mode) == Backward or startBackward);

      /* Parameterized curve description a_a = f1(sa), tauLoss = f2(sa)
           In comparison to Modelica.Mechanics.Rotational.FrictionBase it is possible
           to simplify the following expression as mode == Stuck is assured in case
           of startForward or startBackward */
      tauLoss = if ideal then 0 else (if locked then sa*unitTorque else (if (startForward or 
            pre(mode) == Forward) then tauLossMax else tauLossMin));

      a_a = unitAngularAcceleration*(if locked then 0 else sa - tauLoss/unitTorque);

      /* Finite state machine to fix configuration after the computation above
           The above equations are only dependent on pre(mode) and not on the actual
           value of mode. This prevents loops. So mode can be determined in one step. */
      mode = if ideal then Free else (if (pre(mode) == Forward or startForward)
         and w_a > 0 then Forward else if (pre(mode) == Backward or startBackward)
         and w_a < 0 then Backward else Stuck);

      lossPower = tauLoss*w_a;
    end LossyGear;

* * * * *

![image51](Modelica.Mechanics.Rotational.Components.IdealPlanetaryI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).IdealPlanetary
==========================================================================================================================================================================================================================

**Ideal planetary gear box**

Information
-----------

::

The IdealPlanetary gear box is an ideal gear without inertia,
elasticity, damping or backlash consisting of an inner **sun** wheel, an
outer **ring** wheel and a **planet** wheel located between sun and ring
wheel. The bearing of the planet wheel shaft is fixed in the planet
**carrier**. The component can be connected to other elements at the
sun, ring and/or carrier flanges. It is not possible to connect to the
planet wheel. If inertia shall not be neglected, the sun, ring and
carrier inertias can be easily added by attaching inertias (= model
Inertia) to the corresponding connectors. The inertias of the planet
wheels are always neglected.

The icon of the planetary gear signals that the sun and carrier flanges
are on the left side and the ring flange is on the right side of the
gear box. However, this component is generic and is valid independantly
how the flanges are actually placed (e.g., sun wheel may be placed on
the right side instead on the left side in reality).

The ideal planetary gearbox is uniquely defined by the ratio of the
number of ring teeth zr with respect to the number of sun teeth zs. For
example, if there are 100 ring teeth and 50 sun teeth then ratio = zr/zs
= 2. The number of planet teeth zp has to fulfill the following
relationship:

    zp := (zr - zs) / 2

Therefore, in the above example zp = 25 is required.

According to the overall convention, the positive direction of all
vectors, especially the absolute angular velocities and cut-torques in
the flanges, are along the axis vector displayed in the icon.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type    Name     Default   Description
  ------- -------- --------- ----------------------------------------------
  Real    ratio              Number of ring\_teeth/sun\_teeth (e.g.,
                             ratio=100/50)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                  Name  Description
  ----------------------------------------------------- ----- -------------
  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces. sun   Flange of sun
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_       shaft
  a)                                                          

  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces. carri Flange of
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_ er    carrier shaft
  a)                                                          

  [Flange\_b](Modelica_Mechanics_Rotational_Interfaces. ring  Flange of
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_       ring shaft
  b)                                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealPlanetary "Ideal planetary gear box"
      parameter Real ratio(start=100/50) 
        "Number of ring_teeth/sun_teeth (e.g., ratio=100/50)";

      // kinematic relationship
      Interfaces.Flange_a sun "Flange of sun shaft";
      Interfaces.Flange_a carrier "Flange of carrier shaft";
      Interfaces.Flange_b ring "Flange of ring shaft";

    equation 
      (1 + ratio)*carrier.phi = sun.phi + ratio*ring.phi;

      // torque balance (no inertias)
      ring.tau = ratio*sun.tau;
      carrier.tau = -(1 + ratio)*sun.tau;
    end IdealPlanetary;

* * * * *

![image52](Modelica.Mechanics.Rotational.Components.GearboxI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).Gearbox
============================================================================================================================================================================================================

**Realistic model of a gearbox (based on LossyGear)**

Information
-----------

::

This component models the essential effects of a gearbox, in particular

in component **lossyGear**

-   gear **efficiency** due to friction between the teeth
-   **bearing friction**

in component **elastoBacklash**

-   gear **elasticity**
-   **damping**
-   **backlash**

The inertia of the gear wheels is not modeled. If necessary, inertia has
to be taken into account by connecting components of model Inertia to
the left and/or the right flange of component Gearbox.

::

Extends from
[Modelica.Mechanics.Rotational.Icons.Gearbox](Modelica_Mechanics_Rotational_Icons.html#Modelica.Mechanics.Rotational.Icons.Gearbox)
(Icon of gear box),
[Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlangesAndSupport](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlangesAndSupport)
(Partial model for a component with two rotational 1-dim. shaft flanges
and a support used for graphical modeling, i.e., the model is build up
by drag-and-drop from elementary components),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialConditionalHeatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for graphical modeling, i.e., for bulding modelsby
drag-and-drop).

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name   Defaul Description
                                        t      
  ------------------------------ ------ ------ ----------------------------
  Boolean                        useSup false  = true, if support flange
                                 port          enabled, otherwise
                                               implicitly grounded

  Real                           ratio         Transmission ratio
                                               (flange\_a.phi/flange\_b.phi
                                               )

  Real                           lossTa [0, 1, Array for mesh efficiencies
                                 ble[:, 1, 0,  and bearing friction
                                 5]     0]     depending on speed (see docu
                                               of LossyGear)

  [RotationalSpringConstant](Mod c             Gear elasticity (spring
  elica_SIunits.html#Modelica.SI               constant) [N.m/rad]
  units.RotationalSpringConstant               
  )                                            

  [RotationalDampingConstant](Mo d             (relative) gear damping
  delica_SIunits.html#Modelica.S               [N.m.s/rad]
  Iunits.RotationalDampingConsta               
  nt)                                          

  [Angle](Modelica_SIunits.html# b      0      Total backlash [rad]
  Modelica.SIunits.Angle)                      

  Boolean                        useHea false  =true, if HeatPort is
                                 tPort         enabled

  [Temperature](Modelica_SIunits T      293.15 Fixed device temperature if
  .html#Modelica.SIunits.Tempera               useHeatPort = false [K]
  ture)                                        

  **Advanced**                                 

  StateSelect                    stateS StateS Priority to use phi\_rel and
                                 elect  elect. w\_rel as states
                                        prefer 
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Rotationa flan Flange of left shaft
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 
  ational.Interfaces.Flange_a)             a    

  [Flange\_b](Modelica_Mechanics_Rotationa flan Flange of right shaft
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 
  ational.Interfaces.Flange_b)             b    

  [Support](Modelica_Mechanics_Rotational_ supp Support/housing of
  Interfaces.html#Modelica.Mechanics.Rotat ort  component
  ional.Interfaces.Support)                     

  [HeatPort\_a](Modelica_Thermal_HeatTrans heat Optional port to which
  fer_Interfaces.html#Modelica.Thermal.Hea Port dissipated losses are
  tTransfer.Interfaces.HeatPort_a)              transported in form of
                                                heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Gearbox "Realistic model of a gearbox (based on LossyGear)"
      extends Modelica.Mechanics.Rotational.Icons.Gearbox;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlangesAndSupport;

      parameter Real ratio(start=1) 
        "Transmission ratio (flange_a.phi/flange_b.phi)";
      parameter Real lossTable[:, 5]=[0, 1, 1, 0, 0] 
        "Array for mesh efficiencies and bearing friction depending on speed (see docu of LossyGear)";
      parameter SI.RotationalSpringConstant c(final min=Modelica.Constants.small, start=1.0e5) 
        "Gear elasticity (spring constant)";
      parameter SI.RotationalDampingConstant d(final min=0, start=0) 
        "(relative) gear damping";
      parameter SI.Angle b(final min=0) = 0 "Total backlash";
      parameter StateSelect stateSelect=StateSelect.prefer 
        "Priority to use phi_rel and w_rel as states";
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialConditionalHeatPort(
         final T=293.15);
      Modelica.SIunits.Angle phi_rel(start=0, stateSelect=stateSelect, nominal=1e-4)=
        flange_b.phi - lossyGear.flange_b.phi 
        "Relative rotation angle over gear elasticity (= flange_b.phi - lossyGear.flange_b.phi)";
      Modelica.SIunits.AngularVelocity w_rel(start=0, stateSelect=stateSelect) = der(phi_rel) 
        "Relative angular velocity over gear elasticity (= der(phi_rel))";
      Modelica.SIunits.AngularAcceleration a_rel(start=0) = der(w_rel) 
        "Relative angular acceleration over gear elasticity (= der(w_rel))";

      Rotational.Components.LossyGear lossyGear(final ratio=ratio, final 
          lossTable =                                                              lossTable,
        final useSupport=true,
        final useHeatPort=true);
      Rotational.Components.ElastoBacklash elastoBacklash(
        final b=b,
        final c=c,
        final phi_rel0=0,
        final d=d,
        final useHeatPort=true);
    equation 
      connect(flange_a, lossyGear.flange_a);
      connect(lossyGear.flange_b, elastoBacklash.flange_a);
      connect(elastoBacklash.flange_b, flange_b);
      connect(elastoBacklash.heatPort, internalHeatPort);
      connect(lossyGear.heatPort, internalHeatPort);
      connect(lossyGear.support, internalSupport);
    end Gearbox;

* * * * *

![image53](Modelica.Mechanics.Rotational.Components.IdealGearR2TI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).IdealGearR2T
======================================================================================================================================================================================================================

**Gearbox transforming rotational into translational motion**

Information
-----------

::

This is an ideal mass- and inertialess gearbox which transforms a
1D-rotational into a 1D-translational motion. If elasticity, damping or
backlash has to be considered, this ideal gearbox has to be connected
with corresponding elements. This component defines the kinematic
constraint:

    (flangeR.phi - internalSupportR.phi) = ratio*(flangeT.s - internalSupportT.s);

::

Extends from
[Rotational.Interfaces.PartialElementaryRotationalToTranslational](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryRotationalToTranslational)
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
      extends Rotational.Interfaces.PartialElementaryRotationalToTranslational;
      parameter Real ratio(final unit="rad/m", start=1) 
        "Transmission ratio (flange_a.phi/flange_b.s)";

    equation 
      (flangeR.phi - internalSupportR.phi) = ratio*(flangeT.s - internalSupportT.s);
      0 = ratio*flangeR.tau + flangeT.f;
    end IdealGearR2T;

* * * * *

![image54](Modelica.Mechanics.Rotational.Components.IdealRollingWheelI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).IdealRollingWheel
================================================================================================================================================================================================================================

**Simple 1-dim. model of an ideal rolling wheel without inertia**

Information
-----------

::

A simple kinematic model of a rolling wheel which has no inertia and no
rolling resistance. This component defines the kinematic constraint:

    (flangeR.phi - internalSupportR.phi)*wheelRadius = (flangeT.s - internalSupportT.s);

::

Extends from
[Rotational.Interfaces.PartialElementaryRotationalToTranslational](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryRotationalToTranslational)
(Partial model to transform rotational into translational motion).

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

      extends Rotational.Interfaces.PartialElementaryRotationalToTranslational;
      parameter Modelica.SIunits.Distance radius(start=0.3) "Wheel radius";

    equation 
      (flangeR.phi - internalSupportR.phi)*radius = (flangeT.s - internalSupportT.s);
      0 = radius*flangeT.f + flangeR.tau;
    end IdealRollingWheel;

* * * * *

![image55](Modelica.Mechanics.Rotational.Components.InitializeFlangeI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).InitializeFlange
==============================================================================================================================================================================================================================

**Initializes a flange with pre-defined angle, speed and angular
acceleration (usually, this is reference data from a control bus)**

Information
-----------

::

This component is used to optionally initialize the angle, speed, and/or
angular acceleration of the flange to which this component is connected.
Via parameters use\_phi\_start, use\_w\_start, use\_a\_start the
corresponding input signals phi\_start, w\_start, a\_start are
conditionally activated. If an input is activated, the corresponding
flange property is initialized with the input value at start time.

For example, if "use\_phi\_start = true", then flange.phi is initialized
with the value of the input signal "phi\_start" at the start time.

Additionally, it is optionally possible to define the "StateSelect"
attribute of the flange angle and the flange speed via paramater
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

  --------------------------------------------------------------------------
  Type    Name      Default    Description
  ------- --------- ---------- ---------------------------------------------
  Boolean use\_phi\ true       = true, if initial angle is defined by input
          _start               phi\_start, otherwise not initialized

  Boolean use\_w\_s true       = true, if initial speed is defined by input
          tart                 w\_start, otherwise not initialized

  Boolean use\_a\_s true       = true, if initial angular acceleration is
          tart                 defined by input a\_start, otherwise not
                               initialized

  StateSe stateSele StateSelec Priority to use flange angle and speed as
  lect    ct        t.default  states
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name   Description
  ----------------------------------------------- ------ -----------------
  input                                           phi\_s Initial angle of
  [RealInput](Modelica_Blocks_Interfaces.html#Mod tart   flange
  elica.Blocks.Interfaces.RealInput)                     

  input                                           w\_sta Initial speed of
  [RealInput](Modelica_Blocks_Interfaces.html#Mod rt     flange
  elica.Blocks.Interfaces.RealInput)                     

  input                                           a\_sta Initial angular
  [RealInput](Modelica_Blocks_Interfaces.html#Mod rt     acceleration of
  elica.Blocks.Interfaces.RealInput)                     flange

  [Flange\_b](Modelica_Mechanics_Rotational_Inter flange Flange that is
  faces.html#Modelica.Mechanics.Rotational.Interf        initialized
  aces.Flange_b)                                         
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model InitializeFlange 
      "Initializes a flange with pre-defined angle, speed and angular acceleration (usually, this is reference data from a control bus)"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      parameter Boolean use_phi_start = true 
        "= true, if initial angle is defined by input phi_start, otherwise not initialized";
      parameter Boolean use_w_start = true 
        "= true, if initial speed is defined by input w_start, otherwise not initialized";
      parameter Boolean use_a_start = true 
        "= true, if initial angular acceleration is defined by input a_start, otherwise not initialized";

      parameter StateSelect stateSelect=StateSelect.default 
        "Priority to use flange angle and speed as states";

      Modelica.Blocks.Interfaces.RealInput phi_start if use_phi_start 
        "Initial angle of flange";
      Modelica.Blocks.Interfaces.RealInput w_start if use_w_start 
        "Initial speed of flange";
      Modelica.Blocks.Interfaces.RealInput a_start if use_a_start 
        "Initial angular acceleration of flange";
      Interfaces.Flange_b flange "Flange that is initialized";

      Modelica.SIunits.Angle phi_flange(stateSelect=stateSelect)=flange.phi 
        "Flange angle";
      Modelica.SIunits.AngularVelocity w_flange(stateSelect=stateSelect)= der(phi_flange) 
        "= der(phi_flange)";

    protected 
      encapsulated model Set_phi_start "Set phi_start"
        import Modelica;
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Blocks.Interfaces.RealInput phi_start "Start angle";

        Modelica.Mechanics.Rotational.Interfaces.Flange_b flange;
      initial equation 
        flange.phi = phi_start;
      equation 
        flange.tau = 0;

      end Set_phi_start;

      encapsulated model Set_w_start "Set w_start"
        import Modelica;
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Blocks.Interfaces.RealInput w_start "Start angular velocity";

        Modelica.Mechanics.Rotational.Interfaces.Flange_b flange;
      initial equation 
        der(flange.phi) = w_start;
      equation 
        flange.tau = 0;

      end Set_w_start;

      encapsulated model Set_a_start "Set a_start"
        import Modelica;
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Blocks.Interfaces.RealInput a_start "Start angular acceleration";

        Modelica.Mechanics.Rotational.Interfaces.Flange_b flange(phi(stateSelect=StateSelect.avoid));

        Modelica.SIunits.AngularVelocity w = der(flange.phi);
      initial equation 
        der(w) = a_start;
      equation 
        flange.tau = 0;
      end Set_a_start;

      encapsulated model Set_flange_tau "Set flange.tau to zero"
        import Modelica;
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Mechanics.Rotational.Interfaces.Flange_b flange;
      equation 
        flange.tau = 0;
      end Set_flange_tau;
    protected 
      Set_phi_start set_phi_start if use_phi_start;
      Set_w_start set_w_start if use_w_start;
      Set_a_start set_a_start if use_a_start;
      Set_flange_tau set_flange_tau;
    equation 
      connect(set_phi_start.phi_start, phi_start);
      connect(set_phi_start.flange, flange);
      connect(set_w_start.flange, flange);
      connect(set_w_start.w_start, w_start);
      connect(set_a_start.a_start, a_start);
      connect(set_a_start.flange, flange);
      connect(set_flange_tau.flange, flange);
    end InitializeFlange;

* * * * *

![image56](Modelica.Mechanics.Rotational.Components.RelativeStatesI.png) [Modelica.Mechanics.Rotational.Components](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components).RelativeStates
==========================================================================================================================================================================================================================

**Definition of relative state variables**

Information
-----------

::

Usually, the absolute angle and the absolute angular velocity of
Modelica.Mechanics.Rotational.Components.Inertia models are used as
state variables. In some circumstances, relative quantities are better
suited, e.g., because it may be easier to supply initial values. In such
cases, model **RelativeStates** allows the definition of state variables
in the following way:

-   Connect an instance of this model between two flange connectors.
-   The **relative rotation angle** and the **relative angular
    velocity** between the two connectors are used as **state
    variables**.

An example is given in the next figure

Here, the relative angle and the relative angular velocity between the
two inertias are used as state variables. Additionally, the simulator
selects either the absolute angle and absolute angular velocity of model
inertia1 or of model inertia2 as state variables.

::

Extends from
[Rotational.Interfaces.PartialTwoFlanges](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges)
(Partial model for a component with two rotational 1-dim. shaft
flanges).

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

  -------------------------------------------------------------------------
  Type                                                  Name   Description
  ----------------------------------------------------- ------ ------------
  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces. flange Flange of
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_ \_a    left shaft
  a)                                                           

  [Flange\_b](Modelica_Mechanics_Rotational_Interfaces. flange Flange of
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_ \_b    right shaft
  b)                                                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model RelativeStates "Definition of relative state variables"
      extends Rotational.Interfaces.PartialTwoFlanges;
      parameter StateSelect stateSelect=StateSelect.prefer 
        "Priority to use the relative angle and relative speed as states";
      SI.Angle phi_rel(start=0, stateSelect=stateSelect) 
        "Relative rotation angle used as state variable";
      SI.AngularVelocity w_rel(start=0, stateSelect=stateSelect) 
        "Relative angular velocity used as state variable";
      SI.AngularAcceleration a_rel(start=0) "Relative angular acceleration";

    equation 
      phi_rel = flange_b.phi - flange_a.phi;
      w_rel = der(phi_rel);
      a_rel = der(w_rel);
      flange_a.tau = 0;
      flange_b.tau = 0;
    end RelativeStates;

* * * * *

![Modelica.Mechanics.Rotational.Components.InitializeFlange.Set\_phi\_start](Modelica.Mechanics.Rotational.Components.InitializeFlange.Set_phi_startI.png) [Modelica.Mechanics.Rotational.Components.InitializeFlange](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components.InitializeFlange).Set\_phi\_start
===============================================================================================================================================================================================================================================================================================================================================

**Set phi\_start**

Information
-----------

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  input                                                    phi\_st Start
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blo art     angle
  cks.Interfaces.RealInput)                                        

  [Flange\_b](Modelica_Mechanics_Rotational_Interfaces.htm flange  
  l#Modelica.Mechanics.Rotational.Interfaces.Flange_b)             
  ------------------------------------------------------------------------

Modelica definition
-------------------

    encapsulated model Set_phi_start "Set phi_start"
      import Modelica;
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Blocks.Interfaces.RealInput phi_start "Start angle";

      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange;
    initial equation 
      flange.phi = phi_start;
    equation 
      flange.tau = 0;

    end Set_phi_start;

* * * * *

![Modelica.Mechanics.Rotational.Components.InitializeFlange.Set\_w\_start](Modelica.Mechanics.Rotational.Components.InitializeFlange.Set_phi_startI.png) [Modelica.Mechanics.Rotational.Components.InitializeFlange](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components.InitializeFlange).Set\_w\_start
===========================================================================================================================================================================================================================================================================================================================================

**Set w\_start**

Information
-----------

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                  Name   Description
  ----------------------------------------------------- ------ ------------
  input                                                 w\_sta Start
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica. rt     angular
  Blocks.Interfaces.RealInput)                                 velocity

  [Flange\_b](Modelica_Mechanics_Rotational_Interfaces. flange 
  html#Modelica.Mechanics.Rotational.Interfaces.Flange_        
  b)                                                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    encapsulated model Set_w_start "Set w_start"
      import Modelica;
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Blocks.Interfaces.RealInput w_start "Start angular velocity";

      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange;
    initial equation 
      der(flange.phi) = w_start;
    equation 
      flange.tau = 0;

    end Set_w_start;

* * * * *

![Modelica.Mechanics.Rotational.Components.InitializeFlange.Set\_a\_start](Modelica.Mechanics.Rotational.Components.InitializeFlange.Set_phi_startI.png) [Modelica.Mechanics.Rotational.Components.InitializeFlange](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components.InitializeFlange).Set\_a\_start
===========================================================================================================================================================================================================================================================================================================================================

**Set a\_start**

Information
-----------

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name  Description
  ---------------------------------------------------- ----- --------------
  input                                                a\_st Start angular
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica art   acceleration
  .Blocks.Interfaces.RealInput)                              

  [Flange\_b](Modelica_Mechanics_Rotational_Interfaces flang 
  .html#Modelica.Mechanics.Rotational.Interfaces.Flang e     
  e_b)                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    encapsulated model Set_a_start "Set a_start"
      import Modelica;
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Blocks.Interfaces.RealInput a_start "Start angular acceleration";

      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange(phi(stateSelect=StateSelect.avoid));

      Modelica.SIunits.AngularVelocity w = der(flange.phi);
    initial equation 
      der(w) = a_start;
    equation 
      flange.tau = 0;
    end Set_a_start;

* * * * *

![Modelica.Mechanics.Rotational.Components.InitializeFlange.Set\_flange\_tau](Modelica.Mechanics.Rotational.Components.InitializeFlange.Set_flange_tauI.png) [Modelica.Mechanics.Rotational.Components.InitializeFlange](Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components.InitializeFlange).Set\_flange\_tau
==================================================================================================================================================================================================================================================================================================================================================

**Set flange.tau to zero**

Information
-----------

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                       Name  Descript
                                                                   ion
  ---------------------------------------------------------- ----- --------
  [Flange\_b](Modelica_Mechanics_Rotational_Interfaces.html# flang 
  Modelica.Mechanics.Rotational.Interfaces.Flange_b)         e     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    encapsulated model Set_flange_tau "Set flange.tau to zero"
      import Modelica;
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange;
    equation 
      flange.tau = 0;
    end Set_flange_tau;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:46 2010.
