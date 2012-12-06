% Modelica.Mechanics.Translational.Sources
% 
% 

[Modelica.Mechanics.Translational](Modelica_Mechanics_Translational.html#Modelica.Mechanics.Translational).Sources
==================================================================================================================

**Sources to drive 1D translational mechanical components**

Information
-----------

::

This package contains ideal sources to drive 1D mechanical translational
drive trains.

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                Description
  --------------------------------------------------- --------------------
  ![image11](Modelica.Mechanics.Translational.Sources Forced movement of a
  .PositionS.png)                                     flange according to
  [Position](Modelica_Mechanics_Translational_Sources a reference position
  .html#Modelica.Mechanics.Translational.Sources.Posi 
  tion)                                               

  ![image12](Modelica.Mechanics.Translational.Sources Forced movement of a
  .PositionS.png)                                     flange according to
  [Speed](Modelica_Mechanics_Translational_Sources.ht a reference speed
  ml#Modelica.Mechanics.Translational.Sources.Speed)  

  ![image13](Modelica.Mechanics.Translational.Sources Forced movement of a
  .PositionS.png)                                     flange according to
  [Accelerate](Modelica_Mechanics_Translational_Sourc an acceleration
  es.html#Modelica.Mechanics.Translational.Sources.Ac signal
  celerate)                                           

  ![image14](Modelica.Mechanics.Translational.Sources Forced movement of a
  .PositionS.png)                                     flange according to
  [Move](Modelica_Mechanics_Translational_Sources.htm a position, velocity
  l#Modelica.Mechanics.Translational.Sources.Move)    and acceleration
                                                      signal

  ![image15](Modelica.Mechanics.Translational.Sources External force
  .ForceS.png)                                        acting on a drive
  [Force](Modelica_Mechanics_Translational_Sources.ht train element as
  ml#Modelica.Mechanics.Translational.Sources.Force)  input signal

  ![image16](Modelica.Mechanics.Translational.Sources Input signal acting
  .Force2S.png)                                       as torque on two
  [Force2](Modelica_Mechanics_Translational_Sources.h flanges
  tml#Modelica.Mechanics.Translational.Sources.Force2 
  )                                                   

  ![image17](Modelica.Mechanics.Translational.Sources Linear dependency of
  .LinearSpeedDependentForceS.png)                    force versus speed
  [LinearSpeedDependentForce](Modelica_Mechanics_Tran 
  slational_Sources.html#Modelica.Mechanics.Translati 
  onal.Sources.LinearSpeedDependentForce)             

  ![image18](Modelica.Mechanics.Translational.Sources Quadratic dependency
  .QuadraticSpeedDependentForceS.png)                 of force versus
  [QuadraticSpeedDependentForce](Modelica_Mechanics_T speed
  ranslational_Sources.html#Modelica.Mechanics.Transl 
  ational.Sources.QuadraticSpeedDependentForce)       

  ![image19](Modelica.Mechanics.Translational.Sources Constant force, not
  .ConstantForceS.png)                                dependent on speed
  [ConstantForce](Modelica_Mechanics_Translational_So 
  urces.html#Modelica.Mechanics.Translational.Sources 
  .ConstantForce)                                     

  ![image20](Modelica.Mechanics.Translational.Sources Constant speed, not
  .ConstantSpeedS.png)                                dependent on force
  [ConstantSpeed](Modelica_Mechanics_Translational_So 
  urces.html#Modelica.Mechanics.Translational.Sources 
  .ConstantSpeed)                                     

  ![image21](Modelica.Mechanics.Translational.Sources Constant force, not
  .ForceStepS.png)                                    dependent on speed
  [ForceStep](Modelica_Mechanics_Translational_Source 
  s.html#Modelica.Mechanics.Translational.Sources.For 
  ceStep)                                             
  ------------------------------------------------------------------------

* * * * *

![image22](Modelica.Mechanics.Translational.Sources.PositionI.png) [Modelica.Mechanics.Translational.Sources](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources).Position
==============================================================================================================================================================================================================

**Forced movement of a flange according to a reference position**

Information
-----------

::

The input signal **s\_ref** defines the **reference position** in [m].
Flange **flange\_b** is **forced** to move relative to the support
connector according to this reference motion. According to parameter
**exact** (default = **false**), this is done in the following way:

1.  **exact=true**
      ~ The reference position is treated **exactly**. This is only

    possible, if the input signal is defined by an analytical function
    which can be differentiated at least twice. If this prerequisite is
    fulfilled, the Modelica translator will differentiate the input
    signal twice in order to compute the reference acceleration of the
    flange.
2.  **exact=false**
      ~ The reference position is **filtered** and the second derivative
        of

    the filtered curve is used to compute the reference acceleration of
    the flange. This second derivative is **not** computed by numerical
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
[Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2)
(Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models).

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
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [Flange\_b](Modelica_Mechanics_Translational_In flan Flange of component
  terfaces.html#Modelica.Mechanics.Translational. ge   
  Interfaces.Flange_b)                                 

  [Support](Modelica_Mechanics_Translational_Inte supp Support/housing of
  rfaces.html#Modelica.Mechanics.Translational.In ort  component
  terfaces.Support)                                    

  input                                           s\_r Reference position
  [RealInput](Modelica_Blocks_Interfaces.html#Mod ef   of flange as input
  elica.Blocks.Interfaces.RealInput)                   signal
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Position 
      "Forced movement of a flange according to a reference position"
      extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2
        ( s(stateSelect=if exact then StateSelect.default else StateSelect.prefer));
      parameter Boolean exact=false 
        "true/false exact treatment/filtering the input signal";
      parameter SI.Frequency f_crit=50 
        "if exact=false, critical frequency of filter to filter input signal";
      SI.Velocity v(start=0, stateSelect=if exact then StateSelect.default else StateSelect.prefer) 
        "If exact=false, absolute velocity of flange_b else dummy";
      SI.Acceleration a(start=0) 
        "If exact=false, absolute acceleration of flange_b else dummy";
      Modelica.Blocks.Interfaces.RealInput s_ref 
        "Reference position of flange as input signal";
    protected 
      parameter Modelica.SIunits.AngularFrequency w_crit=2*Modelica.Constants.pi*f_crit 
        "Critical frequency";
      constant Real af=1.3617 "s coefficient of Bessel filter";
      constant Real bf=0.6180 "s*s coefficient of Bessel filter";

    initial equation 
      if not exact then
        s = s_ref;
      end if;
    equation 
      if exact then
        s = s_ref;
        v = 0;
        a = 0;
      else
        // Filter: a = s_ref*S^2/(1 + (af/w_crit)*S + (bf/w_crit^2)*S^2)
        v = der(s);
        a = der(v);
        a = ((s_ref - s)*w_crit - af*v)*(w_crit/bf);
      end if;
    end Position;

* * * * *

![image23](Modelica.Mechanics.Translational.Sources.SpeedI.png) [Modelica.Mechanics.Translational.Sources](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources).Speed
========================================================================================================================================================================================================

**Forced movement of a flange according to a reference speed**

Information
-----------

::

The input signal **v\_ref** defines the **reference speed** in [m/s].
Flange **flange\_b** is **forced** to move relative to the support
connector according to this reference motion. According to parameter
**exact** (default = **false**), this is done in the following way:

1.  **exact=true**
      ~ The reference speed is treated **exactly**. This is only
        possible,

    if the input signal is defined by an analytical function which can
    be differentiated at least once. If this prerequisite is fulfilled,
    the Modelica translator will differentiate the input signal once in
    order to compute the reference acceleration of the flange.
2.  **exact=false**
      ~ The reference speed is **filtered** and the first derivative of
        the

    filtered curve is used to compute the reference acceleration of the
    flange. This first derivative is **not** computed by numerical
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
[Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2)
(Partial model for a component with one translational 1-dim. shaft
flange and a support used for textual modeling, i.e., for elementary
models).

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
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  [Flange\_b](Modelica_Mechanics_Translational_Int flan Flange of
  erfaces.html#Modelica.Mechanics.Translational.In ge   component
  terfaces.Flange_b)                                    

  [Support](Modelica_Mechanics_Translational_Inter supp Support/housing of
  faces.html#Modelica.Mechanics.Translational.Inte ort  component
  rfaces.Support)                                       

  input                                            v\_r Reference speed of
  [RealInput](Modelica_Blocks_Interfaces.html#Mode ef   flange as input
  lica.Blocks.Interfaces.RealInput)                     signal
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Speed 
      "Forced movement of a flange according to a reference speed"
      extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2
        (       s(start=0, fixed=true, stateSelect=StateSelect.prefer));
      parameter Boolean exact=false 
        "true/false exact treatment/filtering the input signal";
      parameter SI.Frequency f_crit=50 
        "if exact=false, critical frequency of filter to filter input signal";
      SI.Velocity v(stateSelect=if exact then StateSelect.default else StateSelect.prefer) 
        "Absolute velocity of flange_b";
      SI.Acceleration a 
        "If exact=false, absolute acceleration of flange_b else dummy";
      Modelica.Blocks.Interfaces.RealInput v_ref 
        "Reference speed of flange as input signal";

    protected 
      parameter Modelica.SIunits.AngularFrequency w_crit=2*Modelica.Constants.pi*f_crit 
        "Critical frequency";
    initial equation 
      if not exact then
        v = v_ref;
      end if;
    equation 
      v = der(s);
      if exact then
        v = v_ref;
        a = 0;
      else
        // Filter: a = v_ref/(1 + (1/w_crit)*s)
        a = der(v);
        a = (v_ref - v)*w_crit;
      end if;
    end Speed;

* * * * *

![image24](Modelica.Mechanics.Translational.Sources.AccelerateI.png) [Modelica.Mechanics.Translational.Sources](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources).Accelerate
==================================================================================================================================================================================================================

**Forced movement of a flange according to an acceleration signal**

Information
-----------

::

The input signal **a** in [m/s2] moves the 1D translational flange
connector flange\_b with a predefined *acceleration*, i.e., the flange
is *forced* to move relative to the support connector with this
acceleration. The velocity and the position of the flange are also
predefined and are determined by integration of the acceleration.

The acceleration "a(t)" can be provided from one of the signal generator
blocks of the block library Modelica.Blocks.Source.

::

Extends from
[Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2)
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
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  [Flange\_b](Modelica_Mechanics_Translational_In flan Flange of component
  terfaces.html#Modelica.Mechanics.Translational. ge   
  Interfaces.Flange_b)                                 

  [Support](Modelica_Mechanics_Translational_Inte supp Support/housing of
  rfaces.html#Modelica.Mechanics.Translational.In ort  component
  terfaces.Support)                                    

  input                                           a\_r Absolute
  [RealInput](Modelica_Blocks_Interfaces.html#Mod ef   acceleration of
  elica.Blocks.Interfaces.RealInput)                   flange as input
                                                       signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Accelerate 
      "Forced movement of a flange according to an acceleration signal"
       extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2
        (s(start=0, fixed=true, stateSelect=StateSelect.prefer));
      SI.Velocity v(start=0, fixed=true, stateSelect=StateSelect.prefer) 
        "Absolute velocity of flange_b";
      SI.Acceleration a "Absolute acceleration of flange_b";

      Modelica.Blocks.Interfaces.RealInput a_ref 
        "Absolute acceleration of flange as input signal";

    equation 
      v = der(s);
      a = der(v);
      a = a_ref;
    end Accelerate;

* * * * *

![image25](Modelica.Mechanics.Translational.Sources.MoveI.png) [Modelica.Mechanics.Translational.Sources](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources).Move
======================================================================================================================================================================================================

**Forced movement of a flange according to a position, velocity and
acceleration signal**

Information
-----------

::

Flange **flange\_b** is **forced** to move relative to the support
connector with a predefined motion according to the input signals:

    u[1]: position of flange
    u[2]: velocity of flange
    u[3]: acceleration of flange

The user has to guarantee that the input signals are consistent to each
other, i.e., that u[2] is the derivative of u[1] and that u[3] is the
derivative of u. There are, however, also applications where by purpose
these conditions do not hold. For example, if only the position
dependent terms of a mechanical system shall be calculated, one may
provide position = position(t) and set the velocity and the acceleration
to zero.

The input signals can be provided from one of the signal generator
blocks of the block library Modelica.Blocks.Sources.

::

Extends from
[Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2)
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
  Type                                        Name Description
  ------------------------------------------- ---- ------------------------
  [Flange\_b](Modelica_Mechanics_Translationa flan Flange of component
  l_Interfaces.html#Modelica.Mechanics.Transl ge   
  ational.Interfaces.Flange_b)                     

  [Support](Modelica_Mechanics_Translational_ supp Support/housing of
  Interfaces.html#Modelica.Mechanics.Translat ort  component
  ional.Interfaces.Support)                        

  input                                       u[3] Position, velocity and
  [RealInput](Modelica_Blocks_Interfaces.html      acceleration of flange
  #Modelica.Blocks.Interfaces.RealInput)           as input signals
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Move 
      "Forced movement of a flange according to a position, velocity and acceleration signal"
       extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      Modelica.Blocks.Interfaces.RealInput u[3] 
        "Position, velocity and acceleration of flange as input signals";
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
      s = position(u,time);
    end Move;

* * * * *

![image26](Modelica.Mechanics.Translational.Sources.ForceI.png) [Modelica.Mechanics.Translational.Sources](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources).Force
========================================================================================================================================================================================================

**External force acting on a drive train element as input signal**

Information
-----------

::

The input signal "f" in [N] characterizes an *external force* which acts
(with positive sign) at a flange, i.e., the component connected to the
flange is driven by force f.

Input signal f can be provided from one of the signal generator blocks
of Modelica.Blocks.Source.

::

Extends from
[Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2)
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

  input                                                f     Driving force
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica       as input
  .Blocks.Interfaces.RealInput)                              signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Force 
      "External force acting on a drive train element as input signal"
      extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryOneFlangeAndSupport2;
      Modelica.Blocks.Interfaces.RealInput f "Driving force as input signal";

    equation 
      flange.f = -f;
    end Force;

* * * * *

![image27](Modelica.Mechanics.Translational.Sources.Force2I.png) [Modelica.Mechanics.Translational.Sources](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources).Force2
==========================================================================================================================================================================================================

**Input signal acting as torque on two flanges**

Information
-----------

::

The input signal "f" in [N] characterizes an *external force* which acts
(with positive sign) at both flanges, i.e., the components connected to
these flanges are driven by force f.

Input signal s can be provided from one of the signal generator blocks
of Modelica.Blocks.Source.

::

Extends from
[Translational.Interfaces.PartialTwoFlanges](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialTwoFlanges)
(Component with two translational 1D flanges ).

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

  input                                  f    Driving force as input
  [RealInput](Modelica_Blocks_Interfaces      signal
  .html#Modelica.Blocks.Interfaces.RealI      
  nput)                                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Force2 "Input signal acting as torque on two flanges"
      extends Translational.Interfaces.PartialTwoFlanges;
      Modelica.Blocks.Interfaces.RealInput f "Driving force as input signal";

    equation 
      flange_a.f =  f;
      flange_b.f = -f;
    end Force2;

* * * * *

![image28](Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForceI.png) [Modelica.Mechanics.Translational.Sources](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources).LinearSpeedDependentForce
================================================================================================================================================================================================================================================

**Linear dependency of force versus speed**

Information
-----------

::

Model of force, linearly dependent on velocity of flange.
  ~ Parameter ForceDirection chooses whether direction of force is the
    same

in both directions of movement or not.

::

Extends from
[Modelica.Mechanics.Translational.Interfaces.PartialForce](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialForce)
(Partial model of a force acting at the flange (accelerates the
flange)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name     Defau Description
                                        lt    
  ---------------------------- -------- ----- -----------------------------
  Boolean                      useSuppo false = true, if support flange
                               rt             enabled, otherwise implicitly
                                              grounded

  [Force](Modelica_SIunits.htm f\_nomin       Nominal force (if negative,
  l#Modelica.SIunits.Force)    al             force is acting as load) [N]

  Boolean                      ForceDir true  Same direction of force in
                               ection         both directions of movement

  [Velocity](Modelica_SIunits. v\_nomin       Nominal speed [m/s]
  html#Modelica.SIunits.Veloci al             
  ty)                                         
  -------------------------------------------------------------------------

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

    model LinearSpeedDependentForce 
      "Linear dependency of force versus speed"
      extends Modelica.Mechanics.Translational.Interfaces.PartialForce;
      parameter Modelica.SIunits.Force f_nominal 
        "Nominal force (if negative, force is acting as load)";
      parameter Boolean ForceDirection=true 
        "Same direction of force in both directions of movement";
      parameter Modelica.SIunits.Velocity v_nominal(min=Modelica.Constants.eps) 
        "Nominal speed";
      Modelica.SIunits.Velocity v 
        "Velocity of flange with respect to support (= der(s))";

    equation 
      v = der(s);
      if ForceDirection then
        f = -f_nominal*abs(v/v_nominal);
      else
        f = -f_nominal*(v/v_nominal);
      end if;
    end LinearSpeedDependentForce;

* * * * *

![image29](Modelica.Mechanics.Translational.Sources.QuadraticSpeedDependentForceI.png) [Modelica.Mechanics.Translational.Sources](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources).QuadraticSpeedDependentForce
======================================================================================================================================================================================================================================================

**Quadratic dependency of force versus speed**

Information
-----------

::

Model of force, quadratic dependent on velocity of flange.
  ~ Parameter ForceDirection chooses whether direction of force is the
    same

in both directions of movement or not.

::

Extends from
[Modelica.Mechanics.Translational.Interfaces.PartialForce](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialForce)
(Partial model of a force acting at the flange (accelerates the
flange)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name     Defau Description
                                        lt    
  ---------------------------- -------- ----- -----------------------------
  Boolean                      useSuppo false = true, if support flange
                               rt             enabled, otherwise implicitly
                                              grounded

  [Force](Modelica_SIunits.htm f\_nomin       Nominal force (if negative,
  l#Modelica.SIunits.Force)    al             force is acting as load) [N]

  Boolean                      ForceDir true  Same direction of force in
                               ection         both directions of movement

  [Velocity](Modelica_SIunits. v\_nomin       Nominal speed [m/s]
  html#Modelica.SIunits.Veloci al             
  ty)                                         
  -------------------------------------------------------------------------

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

    model QuadraticSpeedDependentForce 
      "Quadratic dependency of force versus speed"
      extends Modelica.Mechanics.Translational.Interfaces.PartialForce;
      parameter Modelica.SIunits.Force f_nominal 
        "Nominal force (if negative, force is acting as load)";
      parameter Boolean ForceDirection=true 
        "Same direction of force in both directions of movement";
      parameter Modelica.SIunits.Velocity v_nominal(min=Modelica.Constants.eps) 
        "Nominal speed";
      Modelica.SIunits.Velocity v 
        "Velocity of flange with respect to support (= der(s))";
    equation 
      v = der(s);
      if ForceDirection then
        f = -f_nominal*(v/v_nominal)^2;
      else
        f = -f_nominal*smooth(1, if v >= 0 then (v/v_nominal)^2 else -(v/v_nominal)^2);
      end if;
    end QuadraticSpeedDependentForce;

* * * * *

![image30](Modelica.Mechanics.Translational.Sources.ConstantForceI.png) [Modelica.Mechanics.Translational.Sources](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources).ConstantForce
========================================================================================================================================================================================================================

**Constant force, not dependent on speed**

Information
-----------

::

Model of constant force, not dependent on velocity of flange.
  ~ Positive force acts accelerating.

::

Extends from
[Modelica.Mechanics.Translational.Interfaces.PartialForce](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialForce)
(Partial model of a force acting at the flange (accelerates the
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

  [Force](Modelica_SIunits.ht f\_cons       Nominal force (if negative,
  ml#Modelica.SIunits.Force)  tant          force is acting as load) [N]
  -------------------------------------------------------------------------

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

    model ConstantForce "Constant force, not dependent on speed"
      extends Modelica.Mechanics.Translational.Interfaces.PartialForce;
      parameter Modelica.SIunits.Force f_constant 
        "Nominal force (if negative, force is acting as load)";
    equation 
      f = -f_constant;
    end ConstantForce;

* * * * *

![image31](Modelica.Mechanics.Translational.Sources.ConstantSpeedI.png) [Modelica.Mechanics.Translational.Sources](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources).ConstantSpeed
========================================================================================================================================================================================================================

**Constant speed, not dependent on force**

Information
-----------

::

Model of **fixed** verlocity of flange, not dependent on force.

::

Extends from
[Modelica.Mechanics.Translational.Interfaces.PartialForce](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialForce)
(Partial model of a force acting at the flange (accelerates the
flange)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                          Name   Defau Description
                                       lt    
  ----------------------------- ------ ----- ------------------------------
  Boolean                       useSup false = true, if support flange
                                port         enabled, otherwise implicitly
                                             grounded

  [Velocity](Modelica_SIunits.h v\_fix       Fixed speed (if negative,
  tml#Modelica.SIunits.Velocity ed           force is acting as load) [m/s]
  )                                          
  -------------------------------------------------------------------------

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

    model ConstantSpeed "Constant speed, not dependent on force"
      extends Modelica.Mechanics.Translational.Interfaces.PartialForce;
      parameter Modelica.SIunits.Velocity v_fixed 
        "Fixed speed (if negative, force is acting as load)";
      Modelica.SIunits.Velocity v 
        "Velocity of flange with respect to support (= der(s))";
    equation 
      v = der(s);
      v = v_fixed;
    end ConstantSpeed;

* * * * *

![image32](Modelica.Mechanics.Translational.Sources.ForceStepI.png) [Modelica.Mechanics.Translational.Sources](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources).ForceStep
================================================================================================================================================================================================================

**Constant force, not dependent on speed**

Information
-----------

::

Model of a force step at time .
  ~ Positive force acts accelerating.

::

Extends from
[Modelica.Mechanics.Translational.Interfaces.PartialForce](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialForce)
(Partial model of a force acting at the flange (accelerates the
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

  [Force](Modelica_SIunits.ht stepFor       Height of force step (if
  ml#Modelica.SIunits.Force)  ce            negative, force is acting as
                                            load) [N]

  [Force](Modelica_SIunits.ht offsetF       Offset of force [N]
  ml#Modelica.SIunits.Force)  orce          

  [Time](Modelica_SIunits.htm startTi 0     Force = offset for time <
  l#Modelica.SIunits.Time)    me            startTime [s]
  -------------------------------------------------------------------------

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

    model ForceStep "Constant force, not dependent on speed"
      extends Modelica.Mechanics.Translational.Interfaces.PartialForce;
      parameter Modelica.SIunits.Force stepForce(start=1) 
        "Height of force step (if negative, force is acting as load)";
      parameter Modelica.SIunits.Force offsetForce(start=0) "Offset of force";
      parameter Modelica.SIunits.Time startTime=0 
        "Force = offset for time < startTime";
    equation 
      f = -offsetForce - (if time < startTime then 0 else stepForce);
    end ForceStep;

* * * * *

[Modelica.Mechanics.Translational.Sources.Move](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.Move).position\_der
==========================================================================================================================================================

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

[Modelica.Mechanics.Translational.Sources.Move](Modelica_Mechanics_Translational_Sources.html#Modelica.Mechanics.Translational.Sources.Move).position\_der2
===========================================================================================================================================================

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

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:51 2010.
