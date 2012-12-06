% Modelica.Mechanics.Rotational.Sources
% 
% 

[Modelica.Mechanics.Rotational](Modelica_Mechanics_Rotational.html#Modelica.Mechanics.Rotational).Sources
=========================================================================================================

**Sources to drive 1D rotational mechanical components**

Information
-----------

::

This package contains ideal sources to drive 1D mechanical rotational
drive trains.

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                               Description
  -------------------------------------------------- ---------------------
  ![image11](Modelica.Mechanics.Rotational.Sources.P Forced movement of a
  ositionS.png)                                      flange according to a
  [Position](Modelica_Mechanics_Rotational_Sources.h reference angle
  tml#Modelica.Mechanics.Rotational.Sources.Position signal
  )                                                  

  ![image12](Modelica.Mechanics.Rotational.Sources.P Forced movement of a
  ositionS.png)                                      flange according to a
  [Speed](Modelica_Mechanics_Rotational_Sources.html reference angular
  #Modelica.Mechanics.Rotational.Sources.Speed)      velocity signal

  ![image13](Modelica.Mechanics.Rotational.Sources.P Forced movement of a
  ositionS.png)                                      flange according to
  [Accelerate](Modelica_Mechanics_Rotational_Sources an acceleration
  .html#Modelica.Mechanics.Rotational.Sources.Accele signal
  rate)                                              

  ![image14](Modelica.Mechanics.Rotational.Sources.M Forced movement of a
  oveS.png)                                          flange according to
  [Move](Modelica_Mechanics_Rotational_Sources.html# an angle, speed and
  Modelica.Mechanics.Rotational.Sources.Move)        angular acceleration
                                                     signal

  ![image15](Modelica.Mechanics.Rotational.Sources.T Input signal acting
  orqueS.png)                                        as external torque on
  [Torque](Modelica_Mechanics_Rotational_Sources.htm a flange
  l#Modelica.Mechanics.Rotational.Sources.Torque)    

  ![image16](Modelica.Mechanics.Rotational.Sources.T Input signal acting
  orque2S.png)                                       as torque on two
  [Torque2](Modelica_Mechanics_Rotational_Sources.ht flanges
  ml#Modelica.Mechanics.Rotational.Sources.Torque2)  

  ![image17](Modelica.Mechanics.Rotational.Sources.L Linear dependency of
  inearSpeedDependentTorqueS.png)                    torque versus speed
  [LinearSpeedDependentTorque](Modelica_Mechanics_Ro 
  tational_Sources.html#Modelica.Mechanics.Rotationa 
  l.Sources.LinearSpeedDependentTorque)              

  ![image18](Modelica.Mechanics.Rotational.Sources.Q Quadratic dependency
  uadraticSpeedDependentTorqueS.png)                 of torque versus
  [QuadraticSpeedDependentTorque](Modelica_Mechanics speed
  _Rotational_Sources.html#Modelica.Mechanics.Rotati 
  onal.Sources.QuadraticSpeedDependentTorque)        

  ![image19](Modelica.Mechanics.Rotational.Sources.C Constant torque, not
  onstantTorqueS.png)                                dependent on speed
  [ConstantTorque](Modelica_Mechanics_Rotational_Sou 
  rces.html#Modelica.Mechanics.Rotational.Sources.Co 
  nstantTorque)                                      

  ![image20](Modelica.Mechanics.Rotational.Sources.C Constant speed, not
  onstantSpeedS.png)                                 dependent on torque
  [ConstantSpeed](Modelica_Mechanics_Rotational_Sour 
  ces.html#Modelica.Mechanics.Rotational.Sources.Con 
  stantSpeed)                                        

  ![image21](Modelica.Mechanics.Rotational.Sources.T Constant torque, not
  orqueStepS.png)                                    dependent on speed
  [TorqueStep](Modelica_Mechanics_Rotational_Sources 
  .html#Modelica.Mechanics.Rotational.Sources.Torque 
  Step)                                              
  ------------------------------------------------------------------------

* * * * *

![image22](Modelica.Mechanics.Rotational.Sources.PositionI.png) [Modelica.Mechanics.Rotational.Sources](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources).Position
==================================================================================================================================================================================================

**Forced movement of a flange according to a reference angle signal**

Information
-----------

::

The input signal **phi\_ref** defines the **reference angle** in [rad].
Flange **flange** is **forced** to move according to this reference
motion relative to flange support. According to parameter **exact**
(default = **false**), this is done in the following way:

1.  **exact=true**
      ~ The reference angle is treated **exactly**. This is only
        possible,

    if the input signal is defined by an analytical function which can
    be differentiated at least twice. If this prerequisite is fulfilled,
    the Modelica translator will differentiate the input signal twice in
    order to compute the reference acceleration of the flange.
2.  **exact=false**
      ~ The reference angle is **filtered** and the second derivative of
        the

    filtered curve is used to compute the reference acceleration of the
    flange. This second derivative is **not** computed by numerical
    differentiation but by an appropriate realization of the filter. For
    filtering, a second order Bessel filter is used. The critical
    frequency (also called cut-off frequency) of the filter is defined
    via parameter **f\_crit** in [Hz]. This value should be selected in
    such a way that it is higher as the essential low frequencies in the
    signal.

The input signal can be provided from one of the signal generator blocks
of the block library Modelica.Blocks.Sources.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2)
(Partial model for a component with one rotational 1-dim. shaft flange
and a support used for textual modeling, i.e., for elementary models).

Parameters
----------

  --------------------------------------------------------------------------
  Type                         Name   Defau Description
                                      lt    
  ---------------------------- ------ ----- --------------------------------
  Boolean                      useSup false = true, if support flange
                               port         enabled, otherwise implicitly
                                            grounded

  Boolean                      exact  false true/false exact
                                            treatment/filtering the input
                                            signal

  [Frequency](Modelica_SIunits f\_cri 50    if exact=false, critical
  .html#Modelica.SIunits.Frequ t            frequency of filter to filter
  ency)                                     input signal [Hz]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- --------------------------
  [Flange\_b](Modelica_Mechanics_Rotationa flan Flange of shaft
  l_Interfaces.html#Modelica.Mechanics.Rot ge   
  ational.Interfaces.Flange_b)                  

  [Support](Modelica_Mechanics_Rotational_ supp Support/housing of
  Interfaces.html#Modelica.Mechanics.Rotat ort  component
  ional.Interfaces.Support)                     

  input                                    phi\ Reference angle of flange
  [RealInput](Modelica_Blocks_Interfaces.h _ref with respect to support as
  tml#Modelica.Blocks.Interfaces.RealInput      input signal [rad]
  )                                             
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Position 
      "Forced movement of a flange according to a reference angle signal"
      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      parameter Boolean exact=false 
        "true/false exact treatment/filtering the input signal";
      parameter SI.Frequency f_crit=50 
        "if exact=false, critical frequency of filter to filter input signal";
      SI.Angle phi(stateSelect=if exact then StateSelect.default else StateSelect.prefer) 
        "Rotation angle of flange with respect to support";
      SI.AngularVelocity w(start=0,stateSelect=if exact then StateSelect.default else StateSelect.prefer) 
        "If exact=false, Angular velocity of flange with respect to support else dummy";
      SI.AngularAcceleration a(start=0) 
        "If exact=false, Angular acceleration of flange with respect to support else dummy";
      Modelica.Blocks.Interfaces.RealInput phi_ref(final quantity="Angle", final unit="rad", displayUnit="deg") 
        "Reference angle of flange with respect to support as input signal";

    protected 
      parameter Modelica.SIunits.AngularFrequency w_crit=2*Modelica.Constants.pi*f_crit 
        "Critical frequency";
      constant Real af=1.3617 "s coefficient of Bessel filter";
      constant Real bf=0.6180 "s*s coefficient of Bessel filter";
    initial equation 
      if not exact then
        phi = phi_ref;
      end if;
    equation 
      phi = flange.phi - phi_support;
      if exact then
        phi = phi_ref;
        w = 0;
        a = 0;
      else
        // Filter: a = phi_ref*s^2/(1 + (af/w_crit)*s + (bf/w_crit^2)*s^2)
        w = der(phi);
        a = der(w);
        a = ((phi_ref - phi)*w_crit - af*w)*(w_crit/bf);
      end if;
    end Position;

* * * * *

![image23](Modelica.Mechanics.Rotational.Sources.SpeedI.png) [Modelica.Mechanics.Rotational.Sources](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources).Speed
============================================================================================================================================================================================

**Forced movement of a flange according to a reference angular velocity
signal**

Information
-----------

::

The input signal **w\_ref** defines the **reference speed** in [rad/s].
Flange **flange** is **forced** to move relative to flange support
according to this reference motion. According to parameter **exact**
(default = **false**), this is done in the following way:

1.  **exact=true**
      ~ The reference speed is treated **exactly**. This is only
        possible,

    if the input signal is defined by an analytical function which can
    be differentiated at least once. If this prerequisite is fulfilled,
    the Modelica translator will differentiate the input signal once in
    order to compute the reference acceleration of the flange.
2.  **exact=false**
      ~ The reference angle is **filtered** and the second derivative of
        the

    filtered curve is used to compute the reference acceleration of the
    flange. This second derivative is **not** computed by numerical
    differentiation but by an appropriate realization of the filter. For
    filtering, a first order filter is used. The critical frequency
    (also called cut-off frequency) of the filter is defined via
    parameter **f\_crit** in [Hz]. This value should be selected in such
    a way that it is higher as the essential low frequencies in the
    signal.

The input signal can be provided from one of the signal generator blocks
of the block library Modelica.Blocks.Sources.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2)
(Partial model for a component with one rotational 1-dim. shaft flange
and a support used for textual modeling, i.e., for elementary models).

Parameters
----------

  --------------------------------------------------------------------------
  Type                         Name   Defau Description
                                      lt    
  ---------------------------- ------ ----- --------------------------------
  Boolean                      useSup false = true, if support flange
                               port         enabled, otherwise implicitly
                                            grounded

  Boolean                      exact  false true/false exact
                                            treatment/filtering the input
                                            signal

  [Frequency](Modelica_SIunits f\_cri 50    if exact=false, critical
  .html#Modelica.SIunits.Frequ t            frequency of filter to filter
  ency)                                     input signal [Hz]
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ----------------------------
  [Flange\_b](Modelica_Mechanics_Rotation flan Flange of shaft
  al_Interfaces.html#Modelica.Mechanics.R ge   
  otational.Interfaces.Flange_b)               

  [Support](Modelica_Mechanics_Rotational supp Support/housing of component
  _Interfaces.html#Modelica.Mechanics.Rot ort  
  ational.Interfaces.Support)                  

  input                                   w\_r Reference angular velocity
  [RealInput](Modelica_Blocks_Interfaces. ef   of flange with respect to
  html#Modelica.Blocks.Interfaces.RealInp      support as input signal
  ut)                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Speed 
      "Forced movement of a flange according to a reference angular velocity signal"
      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      parameter Boolean exact=false 
        "true/false exact treatment/filtering the input signal";
      parameter SI.Frequency f_crit=50 
        "if exact=false, critical frequency of filter to filter input signal";
      SI.Angle phi(start=0, fixed=true, stateSelect=StateSelect.prefer) 
        "Rotation angle of flange with respect to support";
      SI.AngularVelocity w(stateSelect=if exact then StateSelect.default else StateSelect.prefer) 
        "Angular velocity of flange with respect to support";
      SI.AngularAcceleration a 
        "If exact=false, angular acceleration of flange with respect to support else dummy";
      Modelica.Blocks.Interfaces.RealInput w_ref 
        "Reference angular velocity of flange with respect to support as input signal";

    protected 
      parameter Modelica.SIunits.AngularFrequency w_crit=2*Modelica.Constants.pi*f_crit 
        "Critical frequency";
    initial equation 
      if not exact then
        w = w_ref;
      end if;
    equation 
      phi = flange.phi - phi_support;
      w = der(phi);
      if exact then
        w = w_ref;
        a = 0;
      else
        // Filter: a = w_ref/(1 + (1/w_crit)*s)
        a = der(w);
        a = (w_ref - w)*w_crit;
      end if;
    end Speed;

* * * * *

![image24](Modelica.Mechanics.Rotational.Sources.AccelerateI.png) [Modelica.Mechanics.Rotational.Sources](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources).Accelerate
======================================================================================================================================================================================================

**Forced movement of a flange according to an acceleration signal**

Information
-----------

::

The input signal **a** defines an **angular acceleration** in [rad/s2].
Flange **flange** is **forced** to move relative to flange support with
this acceleration. The angular velocity **w** and the rotation angle
**phi** of the flange are automatically determined by integration of the
acceleration.

The input signal can be provided from one of the signal generator blocks
of the block library Modelica.Blocks.Sources.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2)
(Partial model for a component with one rotational 1-dim. shaft flange
and a support used for textual modeling, i.e., for elementary models).

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
  Type                                    Name Description
  --------------------------------------- ---- ----------------------------
  [Flange\_b](Modelica_Mechanics_Rotation flan Flange of shaft
  al_Interfaces.html#Modelica.Mechanics.R ge   
  otational.Interfaces.Flange_b)               

  [Support](Modelica_Mechanics_Rotational supp Support/housing of component
  _Interfaces.html#Modelica.Mechanics.Rot ort  
  ational.Interfaces.Support)                  

  input                                   a\_r Absolute angular
  [RealInput](Modelica_Blocks_Interfaces. ef   acceleration of flange with
  html#Modelica.Blocks.Interfaces.RealInp      respect to support as input
  ut)                                          signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Accelerate 
      "Forced movement of a flange according to an acceleration signal"
      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      SI.Angle phi(start=0, fixed=true, stateSelect=StateSelect.prefer) 
        "Rotation angle of flange with respect to support";
      SI.AngularVelocity w(start=0, fixed=true, stateSelect=StateSelect.prefer) 
        "Angular velocity of flange with respect to support";
      SI.AngularAcceleration a 
        "Angular acceleration of flange with respect to support";

      Modelica.Blocks.Interfaces.RealInput a_ref 
        "Absolute angular acceleration of flange with respect to support as input signal";

    equation 
      phi = flange.phi - phi_support;
      w = der(phi);
      a = der(w);
      a = a_ref;
    end Accelerate;

* * * * *

![image25](Modelica.Mechanics.Rotational.Sources.MoveI.png) [Modelica.Mechanics.Rotational.Sources](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources).Move
==========================================================================================================================================================================================

**Forced movement of a flange according to an angle, speed and angular
acceleration signal**

Information
-----------

::

Flange **flange** is **forced** to move relative to flange support with
a predefined motion according to the input signals:

    u[1]: angle of flange
    u[2]: angular velocity of flange
    u[3]: angular acceleration of flange

The user has to guarantee that the input signals are consistent to each
other, i.e., that u[2] is the derivative of u[1] and that u[3] is the
derivative of u[2]. There are, however, also applications where by
purpose these conditions do not hold. For example, if only the position
dependent terms of a mechanical system shall be calculated, one may
provide angle = angle(t) and set the angular velocity and the angular
acceleration to zero.

The input signals can be provided from one of the signal generator
blocks of the block library Modelica.Blocks.Sources.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2)
(Partial model for a component with one rotational 1-dim. shaft flange
and a support used for textual modeling, i.e., for elementary models).

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

  ------------------------------------------------------------------------
  Type                                Nam Description
                                      e   
  ----------------------------------- --- --------------------------------
  [Flange\_b](Modelica_Mechanics_Rota fla Flange of shaft
  tional_Interfaces.html#Modelica.Mec nge 
  hanics.Rotational.Interfaces.Flange     
  _b)                                     

  [Support](Modelica_Mechanics_Rotati sup Support/housing of component
  onal_Interfaces.html#Modelica.Mecha por 
  nics.Rotational.Interfaces.Support) t   

  input                               u[3 Angle, angular velocity and
  [RealInput](Modelica_Blocks_Interfa ]   angular acceleration of flange
  ces.html#Modelica.Blocks.Interfaces     with respect to support as input
  .RealInput)                             signals
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Move 
      "Forced movement of a flange according to an angle, speed and angular acceleration signal"
      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;

      Modelica.SIunits.Angle phi "Rotation angle of flange with respect to support";
      Modelica.Blocks.Interfaces.RealInput u[3] 
        "Angle, angular velocity and angular acceleration of flange with respect to support as input signals";

    protected 
      function position
      annotation(derivative=position_der);
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         output Real q;
      algorithm 
        q :=q_qd_qdd[1];
      end position;

      function position_der
      annotation(derivative=position_der2);
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         input Real dummy_der;
         output Real qd;
      algorithm 
        qd :=q_qd_qdd[2];
      end position_der;

      function position_der2
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         input Real dummy_der;
         input Real dummy_der2;
         output Real qdd;
      algorithm 
        qdd :=q_qd_qdd[3];
      end position_der2;
    equation 
      phi = flange.phi - phi_support;
      phi = position(u,time);
    end Move;

* * * * *

![image26](Modelica.Mechanics.Rotational.Sources.TorqueI.png) [Modelica.Mechanics.Rotational.Sources](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources).Torque
==============================================================================================================================================================================================

**Input signal acting as external torque on a flange**

Information
-----------

::

The input signal **tau** defines an external torque in [Nm] which acts
(with negative sign) at a flange connector, i.e., the component
connected to this flange is driven by torque **tau**.

The input signal can be provided from one of the signal generator blocks
of Modelica.Blocks.Sources.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2)
(Partial model for a component with one rotational 1-dim. shaft flange
and a support used for textual modeling, i.e., for elementary models).

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
  Type                                          Name Description
  --------------------------------------------- ---- ----------------------
  [Flange\_b](Modelica_Mechanics_Rotational_Int flan Flange of shaft
  erfaces.html#Modelica.Mechanics.Rotational.In ge   
  terfaces.Flange_b)                                 

  [Support](Modelica_Mechanics_Rotational_Inter supp Support/housing of
  faces.html#Modelica.Mechanics.Rotational.Inte ort  component
  rfaces.Support)                                    

  input                                         tau  Accelerating torque
  [RealInput](Modelica_Blocks_Interfaces.html#M      acting at flange (=
  odelica.Blocks.Interfaces.RealInput)               -flange.tau)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Torque "Input signal acting as external torque on a flange"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      Modelica.Blocks.Interfaces.RealInput tau 
        "Accelerating torque acting at flange (= -flange.tau)";

    equation 
      flange.tau = -tau;
    end Torque;

* * * * *

![image27](Modelica.Mechanics.Rotational.Sources.Torque2I.png) [Modelica.Mechanics.Rotational.Sources](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources).Torque2
================================================================================================================================================================================================

**Input signal acting as torque on two flanges**

Information
-----------

::

The input signal **tau** defines an external torque in [Nm] which acts
at both flange connectors, i.e., the components connected to these
flanges are driven by torque **tau**.

The input signal can be provided from one of the signal generator blocks
of Modelica.Blocks.Sources.

::

Extends from
[Rotational.Interfaces.PartialTwoFlanges](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges)
(Partial model for a component with two rotational 1-dim. shaft
flanges).

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

  input                                    tau  Torque driving the two
  [RealInput](Modelica_Blocks_Interfaces.h      flanges (a positive value
  tml#Modelica.Blocks.Interfaces.RealInput      accelerates the flange)
  )                                             
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Torque2 "Input signal acting as torque on two flanges"
      extends Rotational.Interfaces.PartialTwoFlanges;

      Modelica.Blocks.Interfaces.RealInput tau 
        "Torque driving the two flanges (a positive value accelerates the flange)";

    equation 
      flange_a.tau =  tau;
      flange_b.tau = -tau;
    end Torque2;

* * * * *

![image28](Modelica.Mechanics.Rotational.Sources.LinearSpeedDependentTorqueI.png) [Modelica.Mechanics.Rotational.Sources](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources).LinearSpeedDependentTorque
======================================================================================================================================================================================================================================

**Linear dependency of torque versus speed**

Information
-----------

::

Model of torque, linearly dependent on angular velocity of flange.
  ~ Parameter TorqueDirection chooses whether direction of torque is the

same in both directions of rotation or not.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialTorque](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTorque)
(Partial model of a torque acting at the flange (accelerates the
flange)).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name    Defa Description
                                          ult  
  ------------------------------- ------- ---- ---------------------------
  Boolean                         useSupp fals = true, if support flange
                                  ort     e    enabled, otherwise
                                               implicitly grounded

  [Torque](Modelica_SIunits.html# tau\_no      Nominal torque (if
  Modelica.SIunits.Torque)        minal        negative, torque is acting
                                               as load) [N.m]

  Boolean                         TorqueD true Same direction of torque in
                                  irectio      both directions of rotation
                                  n            

  [AngularVelocity](Modelica_SIun w\_nomi      Nominal speed [rad/s]
  its.html#Modelica.SIunits.Angul nal          
  arVelocity)                                  
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                Name  Description
  --------------------------------------------------- ----- --------------
  [Flange\_b](Modelica_Mechanics_Rotational_Interface flang Flange of
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla e     shaft
  nge_b)                                                    

  [Support](Modelica_Mechanics_Rotational_Interfaces. suppo Support/housin
  html#Modelica.Mechanics.Rotational.Interfaces.Suppo rt    g
  rt)                                                       of component
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model LinearSpeedDependentTorque 
      "Linear dependency of torque versus speed"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTorque;
      parameter Modelica.SIunits.Torque tau_nominal 
        "Nominal torque (if negative, torque is acting as load)";
      parameter Boolean TorqueDirection=true 
        "Same direction of torque in both directions of rotation";
      parameter Modelica.SIunits.AngularVelocity w_nominal(min=Modelica.Constants.eps) 
        "Nominal speed";
      Modelica.SIunits.AngularVelocity w 
        "Angular velocity of flange with respect to support (= der(phi))";
      Modelica.SIunits.Torque tau 
        "Accelerating torque acting at flange (= -flange.tau)";
    equation 
      w = der(phi);
      tau = -flange.tau;
      if TorqueDirection then
        tau = tau_nominal*abs(w/w_nominal);
      else
        tau = tau_nominal*(w/w_nominal);
      end if;
    end LinearSpeedDependentTorque;

* * * * *

![image29](Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorqueI.png) [Modelica.Mechanics.Rotational.Sources](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources).QuadraticSpeedDependentTorque
============================================================================================================================================================================================================================================

**Quadratic dependency of torque versus speed**

Information
-----------

::

Model of torque, quadratic dependent on angular velocity of flange.
  ~ Parameter TorqueDirection chooses whether direction of torque is the

same in both directions of rotation or not.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialTorque](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTorque)
(Partial model of a torque acting at the flange (accelerates the
flange)).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name    Defa Description
                                          ult  
  ------------------------------- ------- ---- ---------------------------
  Boolean                         useSupp fals = true, if support flange
                                  ort     e    enabled, otherwise
                                               implicitly grounded

  [Torque](Modelica_SIunits.html# tau\_no      Nominal torque (if
  Modelica.SIunits.Torque)        minal        negative, torque is acting
                                               as load) [N.m]

  Boolean                         TorqueD true Same direction of torque in
                                  irectio      both directions of rotation
                                  n            

  [AngularVelocity](Modelica_SIun w\_nomi      Nominal speed [rad/s]
  its.html#Modelica.SIunits.Angul nal          
  arVelocity)                                  
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                Name  Description
  --------------------------------------------------- ----- --------------
  [Flange\_b](Modelica_Mechanics_Rotational_Interface flang Flange of
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla e     shaft
  nge_b)                                                    

  [Support](Modelica_Mechanics_Rotational_Interfaces. suppo Support/housin
  html#Modelica.Mechanics.Rotational.Interfaces.Suppo rt    g
  rt)                                                       of component
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model QuadraticSpeedDependentTorque 
      "Quadratic dependency of torque versus speed"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTorque;
      parameter Modelica.SIunits.Torque tau_nominal 
        "Nominal torque (if negative, torque is acting as load)";
      parameter Boolean TorqueDirection=true 
        "Same direction of torque in both directions of rotation";
      parameter Modelica.SIunits.AngularVelocity w_nominal(min=Modelica.Constants.eps) 
        "Nominal speed";
      Modelica.SIunits.AngularVelocity w 
        "Angular velocity of flange with respect to support (= der(phi))";
      Modelica.SIunits.Torque tau 
        "Accelerating torque acting at flange (= -flange.tau)";
    equation 
      w = der(phi);
      tau = -flange.tau;
      if TorqueDirection then
        tau = tau_nominal*(w/w_nominal)^2;
      else
        tau = tau_nominal*smooth(1,if w >= 0 then (w/w_nominal)^2 else -(w/w_nominal)^2);
      end if;
    end QuadraticSpeedDependentTorque;

* * * * *

![image30](Modelica.Mechanics.Rotational.Sources.ConstantTorqueI.png) [Modelica.Mechanics.Rotational.Sources](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources).ConstantTorque
==============================================================================================================================================================================================================

**Constant torque, not dependent on speed**

Information
-----------

::

Model of constant torque, not dependent on angular velocity of flange.
  ~ Positive torque acts accelerating.

::

Extends from
[Rotational.Interfaces.PartialTorque](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTorque)
(Partial model of a torque acting at the flange (accelerates the
flange)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                        Name     Defau Description
                                       lt    
  --------------------------- -------- ----- ------------------------------
  Boolean                     useSuppo false = true, if support flange
                              rt             enabled, otherwise implicitly
                                             grounded

  [Torque](Modelica_SIunits.h tau\_con       Constant torque (if negative,
  tml#Modelica.SIunits.Torque stant          torque is acting as load)
  )                                          [N.m]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                Name  Description
  --------------------------------------------------- ----- --------------
  [Flange\_b](Modelica_Mechanics_Rotational_Interface flang Flange of
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla e     shaft
  nge_b)                                                    

  [Support](Modelica_Mechanics_Rotational_Interfaces. suppo Support/housin
  html#Modelica.Mechanics.Rotational.Interfaces.Suppo rt    g
  rt)                                                       of component
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ConstantTorque "Constant torque, not dependent on speed"
      extends Rotational.Interfaces.PartialTorque;
      parameter Modelica.SIunits.Torque tau_constant 
        "Constant torque (if negative, torque is acting as load)";
      Modelica.SIunits.Torque tau 
        "Accelerating torque acting at flange (= -flange.tau)";
    equation 
      tau = -flange.tau;
      tau = tau_constant;
    end ConstantTorque;

* * * * *

![image31](Modelica.Mechanics.Rotational.Sources.ConstantSpeedI.png) [Modelica.Mechanics.Rotational.Sources](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources).ConstantSpeed
============================================================================================================================================================================================================

**Constant speed, not dependent on torque**

Information
-----------

::

Model of **fixed** angular verlocity of flange, not dependent on torque.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialTorque](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTorque)
(Partial model of a torque acting at the flange (accelerates the
flange)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name   Defa Description
                                          ult  
  -------------------------------- ------ ---- ----------------------------
  Boolean                          useSup fals = true, if support flange
                                   port   e    enabled, otherwise
                                               implicitly grounded

  [AngularVelocity](Modelica_SIuni w\_fix      Fixed speed [rad/s]
  ts.html#Modelica.SIunits.Angular ed          
  Velocity)                                    
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                Name  Description
  --------------------------------------------------- ----- --------------
  [Flange\_b](Modelica_Mechanics_Rotational_Interface flang Flange of
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla e     shaft
  nge_b)                                                    

  [Support](Modelica_Mechanics_Rotational_Interfaces. suppo Support/housin
  html#Modelica.Mechanics.Rotational.Interfaces.Suppo rt    g
  rt)                                                       of component
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ConstantSpeed "Constant speed, not dependent on torque"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTorque;
      Modelica.SIunits.AngularVelocity w 
        "Angular velocity of flange with respect to support (= der(phi))";
      parameter Modelica.SIunits.AngularVelocity w_fixed "Fixed speed";
    equation 
      w = der(phi);
      w = w_fixed;
    end ConstantSpeed;

* * * * *

![image32](Modelica.Mechanics.Rotational.Sources.TorqueStepI.png) [Modelica.Mechanics.Rotational.Sources](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources).TorqueStep
======================================================================================================================================================================================================

**Constant torque, not dependent on speed**

Information
-----------

::

Model of a torque step at time .
  ~ Positive torque acts accelerating.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialTorque](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTorque)
(Partial model of a torque acting at the flange (accelerates the
flange)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                        Name    Defau Description
                                      lt    
  --------------------------- ------- ----- -------------------------------
  Boolean                     useSupp false = true, if support flange
                              ort           enabled, otherwise implicitly
                                            grounded

  [Torque](Modelica_SIunits.h stepTor       Height of torque step (if
  tml#Modelica.SIunits.Torque que           negative, torque is acting as
  )                                         load) [N.m]

  [Torque](Modelica_SIunits.h offsetT       Offset of torque [N.m]
  tml#Modelica.SIunits.Torque orque         
  )                                         

  [Time](Modelica_SIunits.htm startTi 0     Torque = offset for time <
  l#Modelica.SIunits.Time)    me            startTime [s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                Name  Description
  --------------------------------------------------- ----- --------------
  [Flange\_b](Modelica_Mechanics_Rotational_Interface flang Flange of
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla e     shaft
  nge_b)                                                    

  [Support](Modelica_Mechanics_Rotational_Interfaces. suppo Support/housin
  html#Modelica.Mechanics.Rotational.Interfaces.Suppo rt    g
  rt)                                                       of component
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model TorqueStep "Constant torque, not dependent on speed"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTorque;
      parameter Modelica.SIunits.Torque stepTorque(start=1) 
        "Height of torque step (if negative, torque is acting as load)";
      parameter Modelica.SIunits.Torque offsetTorque(start=0) "Offset of torque";
      parameter Modelica.SIunits.Time startTime=0 
        "Torque = offset for time < startTime";
      Modelica.SIunits.Torque tau 
        "Accelerating torque acting at flange (= -flange.tau)";

    equation 
      tau = -flange.tau;
      tau = offsetTorque + (if time < startTime then 0 else stepTorque);
    end TorqueStep;

* * * * *

[Modelica.Mechanics.Rotational.Sources.Move](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.Move).position\_der
=================================================================================================================================================

Inputs
------

  ------------------------------------------------------------------------
  Typ Name    Defau Description
  e           lt    
  --- ------- ----- ------------------------------------------------------
  Rea q\_qd\_       Required values for position, speed, acceleration
  l   qdd[3]        

  Rea dummy         Just to have one input signal that should be
  l                 differentiated to avoid possible problems in the
                    Modelica tool (is not used)

  Rea dummy\_       
  l   der           
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      qd        

Modelica definition
-------------------

    function position_der
      annotation(derivative=position_der2);
       input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
       input Real dummy 
        "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
       input Real dummy_der;
       output Real qd;
    algorithm 
      qd :=q_qd_qdd[2];
    end position_der;

* * * * *

[Modelica.Mechanics.Rotational.Sources.Move](Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources.Move).position\_der2
==================================================================================================================================================

Inputs
------

  ------------------------------------------------------------------------
  Typ Name    Defau Description
  e           lt    
  --- ------- ----- ------------------------------------------------------
  Rea q\_qd\_       Required values for position, speed, acceleration
  l   qdd[3]        

  Rea dummy         Just to have one input signal that should be
  l                 differentiated to avoid possible problems in the
                    Modelica tool (is not used)

  Rea dummy\_       
  l   der           

  Rea dummy\_       
  l   der2          
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      qdd       

Modelica definition
-------------------

    function position_der2
       input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
       input Real dummy 
        "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
       input Real dummy_der;
       input Real dummy_der2;
       output Real qdd;
    algorithm 
      qdd :=q_qd_qdd[3];
    end position_der2;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:46 2010.
