% Modelica.Mechanics.MultiBody.Forces
% 
% 

[Modelica.Mechanics.MultiBody](Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody).Forces
=====================================================================================================

**Components that exert forces and/or torques between frames**

Information
-----------

::

This package contains components that exert forces and torques between
two frame connectors, e.g., between two parts.

### Content

  ------------------------------------------------------------------------
  ***Model***               ***Description***
  ------------------------- ----------------------------------------------
  [WorldForce](Modelica_Mec External force acting at the frame to which
  hanics_MultiBody_Forces.h this component is connected and defined by 3
  tml#Modelica.Mechanics.Mu input signals, that are interpreted as one
  ltiBody.Forces.WorldForce vector resolved in frame world, frame\_b or
  )                         frame\_resolve.
                              ~ ![image12](../Resources/Images/MultiBody/F
                            orces/ArrowForce.png)
                            
                            

  [WorldTorque](Modelica_Me External torque acting at the frame to which
  chanics_MultiBody_Forces. this component is connected and defined by 3
  html#Modelica.Mechanics.M input signals, that are interpreted as one
  ultiBody.Forces.WorldTorq vector resolved in frame world, frame\_b or
  ue)                       frame\_resolve.
                              ~ ![image13](../Resources/Images/MultiBody/F
                            orces/ArrowTorque.png)
                            
                            

  [WorldForceAndTorque](Mod External force and external torque acting at
  elica_Mechanics_MultiBody the frame to which this component is connected
  _Forces.html#Modelica.Mec and defined by 3+3 input signals, that are
  hanics.MultiBody.Forces.W interpreted as a force and as a torque vector
  orldForceAndTorque)       resolved in frame world, frame\_b or
                            frame\_resolve.
                              ~ ![image14](../Resources/Images/MultiBody/F
                            orces/ArrowForce.png)
                                ![image15](../Resources/Images/MultiBody/F
                            orces/ArrowTorque.png)
                            
                            

  [Force](Modelica_Mechanic Force acting between two frames defined by 3
  s_MultiBody_Forces.html#M input signals resolved in frame world,
  odelica.Mechanics.MultiBo frame\_a, frame\_b or in frame\_resolve.
  dy.Forces.Force)            ~ ![image16](../Resources/Images/MultiBody/F
                            orces/ArrowForce2.png)
                            
                            

  [Torque](Modelica_Mechani Torque acting between two frames defined by 3
  cs_MultiBody_Forces.html# input signals resolved in frame world,
  Modelica.Mechanics.MultiB frame\_a, frame\_b or in frame\_resolve.
  ody.Forces.Torque)          ~ ![image17](../Resources/Images/MultiBody/F
                            orces/ArrowTorque2.png)
                            
                            

  [ForceAndTorque](Modelica Force and torque acting between two frames
  _Mechanics_MultiBody_Forc defined by 3+3 input signals resolved in frame
  es.html#Modelica.Mechanic world, frame\_a, frame\_b or in
  s.MultiBody.Forces.ForceA frame\_resolve.
  ndTorque)                   ~ ![image18](../Resources/Images/MultiBody/F
                            orces/ArrowForce2.png)
                                ![image19](../Resources/Images/MultiBody/F
                            orces/ArrowTorque2.png)
                            
                            

  [LineForceWithMass](Model General line force component with an optional
  ica_Mechanics_MultiBody_F point mass on the connection line. The force
  orces.html#Modelica.Mecha law can be defined by a component of
  nics.MultiBody.Forces.Lin Modelica.Mechanics.Translational
  eForceWithMass)             ~ ![image20](../Resources/Images/MultiBody/F
                            orces/LineForceWithMass.png)
                            
                            

  [LineForceWithTwoMasses]( General line force component with two optional
  Modelica_Mechanics_MultiB point masses on the connection line. The force
  ody_Forces.html#Modelica. law can be defined by a component of
  Mechanics.MultiBody.Force Modelica.Mechanics.Translational
  s.LineForceWithTwoMasses)   ~ ![image21](../Resources/Images/MultiBody/F
                            orces/LineForceWithTwoMasses.png)
                            
                            

  [Spring](Modelica_Mechani Linear translational spring with optional mass
  cs_MultiBody_Forces.html#   ~ ![image22](../Resources/Images/MultiBody/F
  Modelica.Mechanics.MultiB orces/Spring2.png)
  ody.Forces.Spring)        
                            

  [Damper](Modelica_Mechani Linear (velocity dependent) damper
  cs_MultiBody_Forces.html#   ~ ![image23](../Resources/Images/MultiBody/F
  Modelica.Mechanics.MultiB orces/Damper2.png)
  ody.Forces.Damper)        
                            

  [SpringDamperParallel](Mo Linear spring and damper in parallel
  delica_Mechanics_MultiBod connection
  y_Forces.html#Modelica.Me 
  chanics.MultiBody.Forces. 
  SpringDamperParallel)     

  [SpringDamperSeries](Mode Linear spring and damper in series connection
  lica_Mechanics_MultiBody_ 
  Forces.html#Modelica.Mech 
  anics.MultiBody.Forces.Sp 
  ringDamperSeries)         
  ------------------------------------------------------------------------

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                      Description
  ----------------------------------------- ------------------------------
  ![image37](Modelica.Mechanics.MultiBody.F External force acting at
  orces.WorldForceS.png)                    frame\_b, defined by 3 input
  [WorldForce](Modelica_Mechanics_MultiBody signals and resolved in frame
  _Forces.html#Modelica.Mechanics.MultiBody world, frame\_b or
  .Forces.WorldForce)                       frame\_resolve

  ![image38](Modelica.Mechanics.MultiBody.F External torque acting at
  orces.WorldTorqueS.png)                   frame\_b, defined by 3 input
  [WorldTorque](Modelica_Mechanics_MultiBod signals and resolved in frame
  y_Forces.html#Modelica.Mechanics.MultiBod world, frame\_b or
  y.Forces.WorldTorque)                     frame\_resolve

  ![image39](Modelica.Mechanics.MultiBody.F External force and torque
  orces.WorldForceAndTorqueS.png)           acting at frame\_b, defined by
  [WorldForceAndTorque](Modelica_Mechanics_ 3+3 input signals and resolved
  MultiBody_Forces.html#Modelica.Mechanics. in frame world, frame\_b or in
  MultiBody.Forces.WorldForceAndTorque)     frame\_resolve

  ![image40](Modelica.Mechanics.MultiBody.F Force acting between two
  orces.ForceS.png)                         frames, defined by 3 input
  [Force](Modelica_Mechanics_MultiBody_Forc signals and resolved in frame
  es.html#Modelica.Mechanics.MultiBody.Forc world, frame\_a, frame\_b or
  es.Force)                                 frame\_resolve

  ![image41](Modelica.Mechanics.MultiBody.F Torque acting between two
  orces.TorqueS.png)                        frames, defined by 3 input
  [Torque](Modelica_Mechanics_MultiBody_For signals and resolved in frame
  ces.html#Modelica.Mechanics.MultiBody.For world, frame\_a, frame\_b or
  ces.Torque)                               frame\_resolve

  ![image42](Modelica.Mechanics.MultiBody.F Force and torque acting
  orces.ForceAndTorqueS.png)                between two frames, defined by
  [ForceAndTorque](Modelica_Mechanics_Multi 3+3 input signals and resolved
  Body_Forces.html#Modelica.Mechanics.Multi in frame world, frame\_a,
  Body.Forces.ForceAndTorque)               frame\_b or frame\_resolve

  ![image43](Modelica.Mechanics.MultiBody.F General line force component
  orces.LineForceWithMassS.png)             with an optional point mass on
  [LineForceWithMass](Modelica_Mechanics_Mu the connection line
  ltiBody_Forces.html#Modelica.Mechanics.Mu 
  ltiBody.Forces.LineForceWithMass)         

  ![image44](Modelica.Mechanics.MultiBody.F General line force component
  orces.LineForceWithTwoMassesS.png)        with two optional point masses
  [LineForceWithTwoMasses](Modelica_Mechani on the connection line
  cs_MultiBody_Forces.html#Modelica.Mechani 
  cs.MultiBody.Forces.LineForceWithTwoMasse 
  s)                                        

  ![image45](Modelica.Mechanics.MultiBody.F Linear translational spring
  orces.SpringS.png)                        with optional mass
  [Spring](Modelica_Mechanics_MultiBody_For 
  ces.html#Modelica.Mechanics.MultiBody.For 
  ces.Spring)                               

  ![image46](Modelica.Mechanics.MultiBody.F Linear (velocity dependent)
  orces.DamperS.png)                        damper
  [Damper](Modelica_Mechanics_MultiBody_For 
  ces.html#Modelica.Mechanics.MultiBody.For 
  ces.Damper)                               

  ![image47](Modelica.Mechanics.MultiBody.F Linear spring and linear
  orces.SpringDamperParallelS.png)          damper in parallel
  [SpringDamperParallel](Modelica_Mechanics 
  _MultiBody_Forces.html#Modelica.Mechanics 
  .MultiBody.Forces.SpringDamperParallel)   

  ![image48](Modelica.Mechanics.MultiBody.F Linear spring and linear
  orces.SpringDamperSeriesS.png)            damper in series connection
  [SpringDamperSeries](Modelica_Mechanics_M 
  ultiBody_Forces.html#Modelica.Mechanics.M 
  ultiBody.Forces.SpringDamperSeries)       

  ![image49](Modelica.Mechanics.MultiBody.F Internal package, should not
  orces.InternalS.png)                      be used by user
  [Internal](Modelica_Mechanics_MultiBody_F 
  orces_Internal.html#Modelica.Mechanics.Mu 
  ltiBody.Forces.Internal)                  
  ------------------------------------------------------------------------

* * * * *

![image50](Modelica.Mechanics.MultiBody.Forces.WorldForceI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).WorldForce
==============================================================================================================================================================================================

**External force acting at frame\_b, defined by 3 input signals and
resolved in frame world, frame\_b or frame\_resolve**

Information
-----------

::

The **3** signals of the **force** connector are interpreted as the x-,
y- and z-coordinates of a **force** acting at the frame connector to
which frame\_b of this component is attached. Via parameter
**resolveInFrame** it is defined, in which frame these coordinates shall
be resolved:

  ------------------------------------------------------------------------
  **Types.ResolveInFra **Meaning**
  meB.**               
  -------------------- ---------------------------------------------------
  world                Resolve input force in world frame (= default)

  frame\_b             Resolve input force in frame\_b

  frame\_resolve       Resolve input force in frame\_resolve
                       (frame\_resolve must be connected)
  ------------------------------------------------------------------------

If resolveInFrame = Types.ResolveInFrameB.frame\_resolve, the force
coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If force={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a force of 100 N is acting along the
positive x-axis of frame\_b.

Note, the cut-torque in frame\_b (frame\_b.t) is always set to zero.
Conceptually, a force and torque acts on the world frame in such a way
that the force and torque balance between world.frame\_b and frame\_b is
fulfilled. For efficiency reasons, this reaction torque is, however, not
computed.

This force component is by default visualized as an arrow acting at the
connector to which it is connected. The diameter and color of the arrow
can be defined via variables **diameter** and **color**. The arrow
points in the direction defined by the force signal. The length of the
arrow is proportional to the length of the force vector using parameter
**N\_to\_m** as scaling factor. For example, if N\_to\_m = 100 N/m, then
a force of 350 N is displayed as an arrow of length 3.5 m.

An example how to use this model is given in the following figure:

This leads to the following animation

::

Extends from
[Interfaces.PartialOneFrame\_b](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_b)
(Base model for components providing one frame\_b connector + outer
world + assert to guarantee that the component is connected).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name   Default   Description
  --------------------------------- ------ --------- ----------------------
  Boolean                           animat true      = true, if animation
                                    ion              shall be enabled

  [ResolveInFrameB](Modelica_Mechan resolv Modelica. Frame in which input
  ics_MultiBody_Types.html#Modelica eInFra Mechanics force is resolved (1:
  .Mechanics.MultiBody.Types.Resolv me     .MultiBod world, 2: frame\_b, 3:
  eInFrameB)                               y...      frame\_resolve)

  if animation = true                                

  Real                              N\_to\ world.def Force arrow scaling
                                    _m     aultN\_to (length =
                                           \_m       force/N\_to\_m) [N/m]

  [Diameter](Modelica_SIunits.html# diamet world.def Diameter of force
  Modelica.SIunits.Diameter)        er     aultArrow arrow [m]
                                           Diameter  

  [Color](Modelica_Mechanics_MultiB color  Modelica. Color of arrow
  ody_Types.html#Modelica.Mechanics        Mechanics 
  .MultiBody.Types.Color)                  .MultiBod 
                                           y...      

  [SpecularCoefficient](Modelica_Me specul world.def Reflection of ambient
  chanics_MultiBody_Types.html#Mode arCoef aultSpecu light (= 0: light is
  lica.Mechanics.MultiBody.Types.Sp ficien larCoeffi completely absorbed)
  ecularCoefficient)                t      c...      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name   Description
  --------------------------------------- ------ --------------------------
  [Frame\_b](Modelica_Mechanics_MultiBody frame\ Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul _b     the component with one
  tiBody.Interfaces.Frame_b)                     cut-force and cut-torque

  [Frame\_resolve](Modelica_Mechanics_Mul frame\ The input signals are
  tiBody_Interfaces.html#Modelica.Mechani _resol optionally resolved in
  cs.MultiBody.Interfaces.Frame_resolve)  ve     this frame

  input                                   force[ x-, y-, z-coordinates of
  [RealInput](Modelica_Blocks_Interfaces. 3]     force resolved in frame
  html#Modelica.Blocks.Interfaces.RealInp        defined by resolveInFrame
  ut)                                            [N]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model WorldForce 
      "External force acting at frame_b, defined by 3 input signals and resolved in frame world, frame_b or frame_resolve"

      import SI = Modelica.SIunits;
      extends Interfaces.PartialOneFrame_b;
      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve 
        "The input signals are optionally resolved in this frame";
      Modelica.Blocks.Interfaces.RealInput force[3](each final quantity="Force", each final unit=
                       "N") 
        "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame";
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameB resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world 
        "Frame in which input force is resolved (1: world, 2: frame_b, 3: frame_resolve)";
      parameter Real N_to_m(unit="N/m") = world.defaultN_to_m 
        "Force arrow scaling (length = force/N_to_m)";
      input SI.Diameter diameter=world.defaultArrowDiameter 
        "Diameter of force arrow";
      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.ForceColor 
        "Color of arrow";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position f_in_m[3]=frame_b.f/N_to_m 
        "Force mapped from N to m for animation";
      Visualizers.Advanced.Arrow arrow(
        diameter=diameter,
        color=color,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=f_in_m,
        r_head=-f_in_m) if world.enableAnimation and animation;

    public 
      Internal.BasicWorldForce basicWorldForce(resolveInFrame=resolveInFrame);
    protected 
      Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve);
    equation 
      connect(basicWorldForce.frame_b, frame_b);
      connect(basicWorldForce.force, force);
      connect(basicWorldForce.frame_resolve, frame_resolve);
      connect(zeroPosition.frame_resolve, basicWorldForce.frame_resolve);
    end WorldForce;

* * * * *

![image51](Modelica.Mechanics.MultiBody.Forces.WorldTorqueI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).WorldTorque
================================================================================================================================================================================================

**External torque acting at frame\_b, defined by 3 input signals and
resolved in frame world, frame\_b or frame\_resolve**

Information
-----------

::

The **3** signals of the **torque** connector are interpreted as the x-,
y- and z-coordinates of a **torque** acting at the frame connector to
which frame\_b of this component is attached. Via parameter
**resolveInFrame** it is defined, in which frame these coordinates shall
be resolved:

  ------------------------------------------------------------------------
  **Types.ResolveInFra **Meaning**
  meB.**               
  -------------------- ---------------------------------------------------
  world                Resolve input torque in world frame (= default)

  frame\_b             Resolve input torque in frame\_b

  frame\_resolve       Resolve input torque in frame\_resolve
                       (frame\_resolve must be connected)
  ------------------------------------------------------------------------

If resolveInFrame = Types.ResolveInFrameB.frame\_resolve, the torque
coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If torque={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a torque of 100 N is acting along the
positive x-axis of frame\_b.

Note, the cut-force in frame\_b (frame\_b.f) is always set to zero.
Conceptually, a force and torque acts on the world frame in such a way
that the force and torque balance between world.frame\_b and frame\_b is
fulfilled. For efficiency reasons, this reaction torque is, however, not
computed.

This torque component is by default visualized as a **double arrow**
acting at the connector to which it is connected. The diameter and color
of the arrow can be defined via variables **diameter** and **color**.
The double arrow points in the direction defined by the torque vector.
The length of the double arrow is proportional to the length of the
torque vector using parameter **Nm\_to\_m** as scaling factor. For
example, if Nm\_to\_m = 100 Nm/m, then a torque of 350 Nm is displayed
as an arrow of length 3.5 m.

An example how to use this model is given in the following figure:

This leads to the following animation

::

Extends from
[Interfaces.PartialOneFrame\_b](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_b)
(Base model for components providing one frame\_b connector + outer
world + assert to guarantee that the component is connected).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name   Default   Description
  -------------------------------- ------ --------- -----------------------
  Boolean                          animat true      = true, if animation
                                   ion              shall be enabled

  [ResolveInFrameB](Modelica_Mecha resolv Modelica. Frame in which input
  nics_MultiBody_Types.html#Modeli eInFra Mechanics torque is resolved (1:
  ca.Mechanics.MultiBody.Types.Res me     .MultiBod world, 2: frame\_b, 3:
  olveInFrameB)                           y...      frame\_resolve)

  if animation = true                               

  Real                             Nm\_to world.def Torque arrow scaling
                                   \_m    aultNm\_t (length =
                                          o\_m      torque/Nm\_to\_m)
                                                    [N.m/m]

  [Diameter](Modelica_SIunits.html diamet world.def Diameter of torque
  #Modelica.SIunits.Diameter)      er     aultArrow arrow [m]
                                          Diameter  

  [Color](Modelica_Mechanics_Multi color  Modelica. Color of arrow
  Body_Types.html#Modelica.Mechani        Mechanics 
  cs.MultiBody.Types.Color)               .MultiBod 
                                          y...      

  [SpecularCoefficient](Modelica_M specul world.def Reflection of ambient
  echanics_MultiBody_Types.html#Mo arCoef aultSpecu light (= 0: light is
  delica.Mechanics.MultiBody.Types ficien larCoeffi completely absorbed)
  .SpecularCoefficient)            t      c...      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                   Name   Description
  -------------------------------------- ------ ---------------------------
  [Frame\_b](Modelica_Mechanics_MultiBod frame\ Coordinate system fixed to
  y_Interfaces.html#Modelica.Mechanics.M _b     the component with one
  ultiBody.Interfaces.Frame_b)                  cut-force and cut-torque

  [Frame\_resolve](Modelica_Mechanics_Mu frame\ The input signals are
  ltiBody_Interfaces.html#Modelica.Mecha _resol optionally resolved in this
  nics.MultiBody.Interfaces.Frame_resolv ve     frame
  e)                                            

  input                                  torque x-, y-, z-coordiantes of
  [RealInput](Modelica_Blocks_Interfaces [3]    torque resolved in frame
  .html#Modelica.Blocks.Interfaces.RealI        defined by resolveInFrame
  nput)                                         [N.m]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model WorldTorque 
      "External torque acting at frame_b, defined by 3 input signals and resolved in frame world, frame_b or frame_resolve"

      extends Interfaces.PartialOneFrame_b;

      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve 
        "The input signals are optionally resolved in this frame";
      Modelica.Blocks.Interfaces.RealInput torque[3](each final quantity="Torque", each final unit=
                       "N.m") 
        "x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame";
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameB resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world 
        "Frame in which input torque is resolved (1: world, 2: frame_b, 3: frame_resolve)";
      parameter Real Nm_to_m(unit="N.m/m") = world.defaultNm_to_m 
        "Torque arrow scaling (length = torque/Nm_to_m)";
      input SI.Diameter diameter=world.defaultArrowDiameter 
        "Diameter of torque arrow";
      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.TorqueColor 
        "Color of arrow";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position t_in_m[3]=frame_b.t/Nm_to_m 
        "Torque mapped from Nm to m for animation";
      Visualizers.Advanced.DoubleArrow arrow(
        diameter=diameter,
        color=color,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=t_in_m,
        r_head=-t_in_m) if world.enableAnimation and animation;
    public 
      Internal.BasicWorldTorque basicWorldTorque(resolveInFrame=resolveInFrame);
    protected 
      Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve);
    equation 
      connect(basicWorldTorque.frame_b, frame_b);
      connect(basicWorldTorque.torque, torque);
      connect(frame_resolve, basicWorldTorque.frame_resolve);
      connect(zeroPosition.frame_resolve, basicWorldTorque.frame_resolve);
    end WorldTorque;

* * * * *

![image52](Modelica.Mechanics.MultiBody.Forces.WorldForceAndTorqueI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).WorldForceAndTorque
================================================================================================================================================================================================================

**External force and torque acting at frame\_b, defined by 3+3 input
signals and resolved in frame world, frame\_b or in frame\_resolve**

Information
-----------

::

The **3** signals of the **force** and **torque** connector are
interpreted as the x-, y- and z-coordinates of a **force** and
**torque** acting at the frame connector to which frame\_b of this
component is attached. Via parameter **resolveInFrame** it is defined,
in which frame these coordinates shall be resolved:

  ------------------------------------------------------------------------
  **Types.ResolveInF **Meaning**
  rameB.**           
  ------------------ -----------------------------------------------------
  world              Resolve input forceand torque in world frame (=
                     default)

  frame\_b           Resolve input force and torque in frame\_b

  frame\_resolve     Resolve input force and torque in frame\_resolve
                     (frame\_resolve must be connected)
  ------------------------------------------------------------------------

If resolveInFrame = Types.ResolveInFrameB.frame\_resolve, the force and
torque coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If force={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a force of 100 N is acting along the
positive x-axis of frame\_b.

Conceptually, a force and torque acts on the world frame in such a way
that the force and torque balance between world.frame\_b and frame\_b is
fulfilled. For efficiency reasons, this reaction torque is, however, not
computed.

The force and torque are by default visualized as an arrow (force) and
as a double arrow (torque) acting at the connector to which they are
connected. The diameters and colors of the arrows can be defined via
variables **forceDiameter**, **torqueDiameter**, **forceColor** and
**torqueColor**. The arrows point in the directions defined by the force
and torque vectors. The lengths of the arrows are proportional to the
length of the force and torque vectors, respectively, using parameters
**N\_to\_m** and **Nm\_to\_m** as scaling factors. For example, if
N\_to\_m = 100 N/m, then a force of 350 N is displayed as an arrow of
length 3.5 m.

An example how to use this model is given in the following figure:

This leads to the following animation

::

Extends from
[Interfaces.PartialOneFrame\_b](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_b)
(Base model for components providing one frame\_b connector + outer
world + assert to guarantee that the component is connected).

Parameters
----------

  --------------------------------------------------------------------------
  Type                            Name   Default   Description
  ------------------------------- ------ --------- -------------------------
  Boolean                         animat true      = true, if animation
                                  ion              shall be enabled

  [ResolveInFrameB](Modelica_Mech resolv Modelica. Frame in which input
  anics_MultiBody_Types.html#Mode eInFra Mechanics force and torque are
  lica.Mechanics.MultiBody.Types. me     .MultiBod resolved (1: world, 2:
  ResolveInFrameB)                       y...      frame\_b, 3:
                                                   frame\_resolve)

  if animation = true                              

  Real                            N\_to\ world.def Force arrow scaling
                                  _m     aultN\_to (length = force/N\_to\_m)
                                         \_m       [N/m]

  Real                            Nm\_to world.def Torque arrow scaling
                                  \_m    aultNm\_t (length =
                                         o\_m      torque/Nm\_to\_m) [N.m/m]

  [Diameter](Modelica_SIunits.htm forceD world.def Diameter of force arrow
  l#Modelica.SIunits.Diameter)    iamete aultArrow [m]
                                  r      Diameter  

  [Diameter](Modelica_SIunits.htm torque forceDiam Diameter of torque arrow
  l#Modelica.SIunits.Diameter)    Diamet eter      [m]
                                  er               

  [Color](Modelica_Mechanics_Mult forceC Modelica. Color of force arrow
  iBody_Types.html#Modelica.Mecha olor   Mechanics 
  nics.MultiBody.Types.Color)            .MultiBod 
                                         y...      

  [Color](Modelica_Mechanics_Mult torque Modelica. Color of torque arrow
  iBody_Types.html#Modelica.Mecha Color  Mechanics 
  nics.MultiBody.Types.Color)            .MultiBod 
                                         y...      

  [SpecularCoefficient](Modelica_ specul world.def Reflection of ambient
  Mechanics_MultiBody_Types.html# arCoef aultSpecu light (= 0: light is
  Modelica.Mechanics.MultiBody.Ty ficien larCoeffi completely absorbed)
  pes.SpecularCoefficient)        t      c...      
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                   Name   Description
  -------------------------------------- ------ ---------------------------
  [Frame\_b](Modelica_Mechanics_MultiBod frame\ Coordinate system fixed to
  y_Interfaces.html#Modelica.Mechanics.M _b     the component with one
  ultiBody.Interfaces.Frame_b)                  cut-force and cut-torque

  [Frame\_resolve](Modelica_Mechanics_Mu frame\ The input signals are
  ltiBody_Interfaces.html#Modelica.Mecha _resol optionally resolved in this
  nics.MultiBody.Interfaces.Frame_resolv ve     frame
  e)                                            

  input                                  force[ x-, y-, z-coordinates of
  [RealInput](Modelica_Blocks_Interfaces 3]     force resolved in frame
  .html#Modelica.Blocks.Interfaces.RealI        defined by resolveInFrame
  nput)                                         [N]

  input                                  torque x-, y-, z-coordiantes of
  [RealInput](Modelica_Blocks_Interfaces [3]    torque resolved in frame
  .html#Modelica.Blocks.Interfaces.RealI        defined by resolveInFrame
  nput)                                         [N.m]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model WorldForceAndTorque 
      "External force and torque acting at frame_b, defined by 3+3 input signals and resolved in frame world, frame_b or in frame_resolve"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      extends Interfaces.PartialOneFrame_b;
      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve 
        "The input signals are optionally resolved in this frame";
      Blocks.Interfaces.RealInput force[3](each final quantity="Force", each final unit=
                       "N") 
        "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame";
      Blocks.Interfaces.RealInput torque[3](each final quantity="Torque", each final unit=
                       "N.m") 
        "x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame";

      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameB resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world 
        "Frame in which input force and torque are resolved (1: world, 2: frame_b, 3: frame_resolve)";

      parameter Real N_to_m(unit="N/m") = world.defaultN_to_m 
        " Force arrow scaling (length = force/N_to_m)";
      parameter Real Nm_to_m(unit="N.m/m") = world.defaultNm_to_m 
        " Torque arrow scaling (length = torque/Nm_to_m)";
      input SI.Diameter forceDiameter=world.defaultArrowDiameter 
        " Diameter of force arrow";
      input SI.Diameter torqueDiameter=forceDiameter " Diameter of torque arrow";
      input Types.Color forceColor=Modelica.Mechanics.MultiBody.Types.Defaults.ForceColor 
        " Color of force arrow";
      input Types.Color torqueColor=Modelica.Mechanics.MultiBody.Types.Defaults.TorqueColor 
        " Color of torque arrow";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position f_in_m[3]=frame_b.f/N_to_m 
        "Force mapped from N to m for animation";
      SI.Position t_in_m[3]=frame_b.t/Nm_to_m 
        "Torque mapped from Nm to m for animation";
      Visualizers.Advanced.Arrow forceArrow(
        diameter=forceDiameter,
        color=forceColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=f_in_m,
        r_head=-f_in_m) if world.enableAnimation and animation;
      Visualizers.Advanced.DoubleArrow torqueArrow(
        diameter=torqueDiameter,
        color=torqueColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=t_in_m,
        r_head=-t_in_m) if world.enableAnimation and animation;
    public 
      Internal.BasicWorldForce basicWorldForce(resolveInFrame=resolveInFrame);
      Internal.BasicWorldTorque basicWorldTorque(resolveInFrame=resolveInFrame);
    protected 
      Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_resolve);
    equation 
      connect(basicWorldForce.frame_b, frame_b);
      connect(basicWorldForce.force, force);
      connect(basicWorldTorque.frame_b, frame_b);
      connect(basicWorldTorque.torque, torque);
      connect(basicWorldForce.frame_resolve, frame_resolve);
      connect(basicWorldTorque.frame_resolve, frame_resolve);
      connect(zeroPosition.frame_resolve, basicWorldTorque.frame_resolve);
      connect(zeroPosition.frame_resolve, basicWorldForce.frame_resolve);
    end WorldForceAndTorque;

* * * * *

![image53](Modelica.Mechanics.MultiBody.Forces.ForceI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).Force
====================================================================================================================================================================================

**Force acting between two frames, defined by 3 input signals and
resolved in frame world, frame\_a, frame\_b or frame\_resolve**

Information
-----------

::

The **3** signals of the **force** connector are interpreted as the x-,
y- and z-coordinates of a **force** acting at the frame connector to
which frame\_b of this component is attached. Via parameter
**resolveInFrame** it is defined, in which frame these coordinates shall
be resolved:

  ------------------------------------------------------------------------
  **Types.ResolveInFram **Meaning**
  eAB.**                
  --------------------- --------------------------------------------------
  world                 Resolve input force in world frame

  frame\_a              Resolve input force in frame\_a

  frame\_b              Resolve input force in frame\_b (= default)

  frame\_resolve        Resolve input force in frame\_resolve
                        (frame\_resolve must be connected)
  ------------------------------------------------------------------------

If resolveInFrame = ResolveInFrameAB.frame\_resolve, the force
coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If force={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a force of 100 N is acting along the
positive x-axis of frame\_b.

Note, the cut-torque in frame\_b (frame\_b.t) is always set to zero.
Additionally, a force and torque acts on frame\_a in such a way that the
force and torque balance between frame\_a and frame\_b is fulfilled.

An example how to use this model is given in the following figure:

This leads to the following animation (the yellow cylinder characterizes
the line between frame\_a and frame\_b of the Force component, i.e., the
force acts with negative sign also on the opposite side of this
cylinder, but for clarity this is not shown in the animation):

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames)
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name   Default   Description
  ------------------------------- ------ --------- ------------------------
  Boolean                         animat true      = true, if animation
                                  ion              shall be enabled

  [ResolveInFrameAB](Modelica_Mec resolv Modelica. Frame in which input
  hanics_MultiBody_Types.html#Mod eInFra Mechanics force is resolved (1:
  elica.Mechanics.MultiBody.Types me     .MultiBod world, 2: frame\_a, 3:
  .ResolveInFrameAB)                     y...      frame\_b, 4:
                                                   frame\_resolve)

  if animation = true                              

  Real                            N\_to\ world.def Force arrow scaling
                                  _m     aultN\_to (length =
                                         \_m       force/N\_to\_m) [N/m]

  [Diameter](Modelica_SIunits.htm forceD world.def Diameter of force arrow
  l#Modelica.SIunits.Diameter)    iamete aultArrow [m]
                                  r      Diameter  

  [Diameter](Modelica_SIunits.htm connec forceDiam Diameter of line
  l#Modelica.SIunits.Diameter)    tionLi eter      connecting frame\_a and
                                  neDiam           frame\_b [m]
                                  eter             

  [Color](Modelica_Mechanics_Mult forceC Modelica. Color of force arrow
  iBody_Types.html#Modelica.Mecha olor   Mechanics 
  nics.MultiBody.Types.Color)            .MultiBod 
                                         y...      

  [Color](Modelica_Mechanics_Mult connec Modelica. Color of line connecting
  iBody_Types.html#Modelica.Mecha tionLi Mechanics frame\_a and frame\_b
  nics.MultiBody.Types.Color)     neColo .MultiBod 
                                  r      y...      

  [SpecularCoefficient](Modelica_ specul world.def Reflection of ambient
  Mechanics_MultiBody_Types.html# arCoef aultSpecu light (= 0: light is
  Modelica.Mechanics.MultiBody.Ty ficien larCoeffi completely absorbed)
  pes.SpecularCoefficient)        t      c...      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name   Description
  --------------------------------------- ------ --------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody frame\ Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul _a     the component with one
  tiBody.Interfaces.Frame_a)                     cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody frame\ Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul _b     the component with one
  tiBody.Interfaces.Frame_b)                     cut-force and cut-torque

  [Frame\_resolve](Modelica_Mechanics_Mul frame\ The input signals are
  tiBody_Interfaces.html#Modelica.Mechani _resol optionally resolved in
  cs.MultiBody.Interfaces.Frame_resolve)  ve     this frame

  input                                   force[ x-, y-, z-coordinates of
  [RealInput](Modelica_Blocks_Interfaces. 3]     force resolved in frame
  html#Modelica.Blocks.Interfaces.RealInp        defined by resolveInFrame
  ut)                                            [N]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Force 
      "Force acting between two frames, defined by 3 input signals and resolved in frame world, frame_a, frame_b or frame_resolve"

      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;
      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve 
        "The input signals are optionally resolved in this frame";
      Modelica.Blocks.Interfaces.RealInput force[3](each final quantity="Force", each final unit=
                       "N") 
        "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame";
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b 
        "Frame in which input force is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";
      parameter Real N_to_m(unit="N/m") = world.defaultN_to_m 
        " Force arrow scaling (length = force/N_to_m)";
      input SI.Diameter forceDiameter=world.defaultArrowDiameter 
        " Diameter of force arrow";
      input SI.Diameter connectionLineDiameter=forceDiameter 
        " Diameter of line connecting frame_a and frame_b";
      input Types.Color forceColor=Modelica.Mechanics.MultiBody.Types.Defaults.ForceColor 
        " Color of force arrow";
      input Types.Color connectionLineColor=Modelica.Mechanics.MultiBody.Types.Defaults.SensorColor 
        " Color of line connecting frame_a and frame_b";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position f_in_m[3]=frame_b.f/N_to_m 
        "Force mapped from N to m for animation";
      Visualizers.Advanced.Arrow forceArrow(
        diameter=forceDiameter,
        color=forceColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=f_in_m,
        r_head=-f_in_m) if world.enableAnimation and animation;
      Visualizers.Advanced.Shape connectionLine(
        shapeType="cylinder",
        lengthDirection=basicForce.r_0,
        widthDirection={0,1,0},
        length=Modelica.Math.Vectors.length(basicForce.r_0),
        width=connectionLineDiameter,
        height=connectionLineDiameter,
        color=connectionLineColor,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0) if world.enableAnimation and animation;

    public 
      MultiBody.Forces.Internal.BasicForce basicForce(resolveInFrame=resolveInFrame);
    protected 
      MultiBody.Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve);
    equation 
      connect(basicForce.frame_a, frame_a);
      connect(basicForce.frame_b, frame_b);
      connect(force, basicForce.force);
      connect(basicForce.frame_resolve, frame_resolve);
      connect(zeroPosition.frame_resolve, basicForce.frame_resolve);
    end Force;

* * * * *

![image54](Modelica.Mechanics.MultiBody.Forces.TorqueI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).Torque
======================================================================================================================================================================================

**Torque acting between two frames, defined by 3 input signals and
resolved in frame world, frame\_a, frame\_b or frame\_resolve**

Information
-----------

::

The **3** signals of the **torque** connector are interpreted as the x-,
y- and z-coordinates of a **torque** acting at the frame connector to
which frame\_b of this component is attached. Via parameter
**resolveInFrame** it is defined, in which frame these coordinates shall
be resolved:

  ------------------------------------------------------------------------
  **Types.ResolveInFra **Meaning**
  meAB.**              
  -------------------- ---------------------------------------------------
  world                Resolve input torque in world frame

  frame\_a             Resolve input torque in frame\_a

  frame\_b             Resolve input torque in frame\_b (= default)

  frame\_resolve       Resolve input torque in frame\_resolve
                       (frame\_resolve must be connected)
  ------------------------------------------------------------------------

If resolveInFrame = ResolveInFrameAB.frame\_resolve, the torque
coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If torque={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a torque of 100 N.m is acting along the
positive x-axis of frame\_b.

Note, the cut-forces in frame\_a and frame\_b (frame\_a.f, frame\_b.f)
are always set to zero and the cut-torque at frame\_a (frame\_a.t) is
the same as the cut-torque at frame\_b (frame\_b.t) but with opposite
sign.

An example how to use this model is given in the following figure:

This leads to the following animation (the yellow cylinder characterizes
the line between frame\_a and frame\_b of the Torque component, i.e.,
the torque acts with negative sign also on the opposite side of this
cylinder, but for clarity this is not shown in the animation):

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames)
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name   Default   Description
  ------------------------------- ------ --------- ------------------------
  Boolean                         animat true      = true, if animation
                                  ion              shall be enabled

  [ResolveInFrameAB](Modelica_Mec resolv Modelica. Frame in which input
  hanics_MultiBody_Types.html#Mod eInFra Mechanics force is resolved (1:
  elica.Mechanics.MultiBody.Types me     .MultiBod world, 2: frame\_a, 3:
  .ResolveInFrameAB)                     y...      frame\_b, 4:
                                                   frame\_resolve)

  if animation = true                              

  Real                            Nm\_to world.def Torque arrow scaling
                                  \_m    aultNm\_t (length =
                                         o\_m      torque/Nm\_to\_m)
                                                   [N.m/m]

  [Diameter](Modelica_SIunits.htm torque world.def Diameter of torque arrow
  l#Modelica.SIunits.Diameter)    Diamet aultArrow [m]
                                  er     Diameter  

  [Diameter](Modelica_SIunits.htm connec torqueDia Diameter of line
  l#Modelica.SIunits.Diameter)    tionLi meter     connecting frame\_a and
                                  neDiam           frame\_b [m]
                                  eter             

  [Color](Modelica_Mechanics_Mult torque Modelica. Color of torque arrow
  iBody_Types.html#Modelica.Mecha Color  Mechanics 
  nics.MultiBody.Types.Color)            .MultiBod 
                                         y...      

  [Color](Modelica_Mechanics_Mult connec Modelica. Color of line connecting
  iBody_Types.html#Modelica.Mecha tionLi Mechanics frame\_a and frame\_b
  nics.MultiBody.Types.Color)     neColo .MultiBod 
                                  r      y...      

  [SpecularCoefficient](Modelica_ specul world.def Reflection of ambient
  Mechanics_MultiBody_Types.html# arCoef aultSpecu light (= 0: light is
  Modelica.Mechanics.MultiBody.Ty ficien larCoeffi completely absorbed)
  pes.SpecularCoefficient)        t      c...      
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                   Name   Description
  -------------------------------------- ------ ---------------------------
  [Frame\_a](Modelica_Mechanics_MultiBod frame\ Coordinate system fixed to
  y_Interfaces.html#Modelica.Mechanics.M _a     the component with one
  ultiBody.Interfaces.Frame_a)                  cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBod frame\ Coordinate system fixed to
  y_Interfaces.html#Modelica.Mechanics.M _b     the component with one
  ultiBody.Interfaces.Frame_b)                  cut-force and cut-torque

  [Frame\_resolve](Modelica_Mechanics_Mu frame\ The input signals are
  ltiBody_Interfaces.html#Modelica.Mecha _resol optionally resolved in this
  nics.MultiBody.Interfaces.Frame_resolv ve     frame
  e)                                            

  input                                  torque x-, y-, z-coordiantes of
  [RealInput](Modelica_Blocks_Interfaces [3]    torque resolved in frame
  .html#Modelica.Blocks.Interfaces.RealI        defined by resolveInFrame
  nput)                                         [N.m]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Torque 
      "Torque acting between two frames, defined by 3 input signals and resolved in frame world, frame_a, frame_b or frame_resolve"

      import SI = Modelica.SIunits;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;
      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve 
        "The input signals are optionally resolved in this frame";

      Modelica.Blocks.Interfaces.RealInput torque[3](each final quantity="Torque", each final unit=
                       "N.m") 
        "x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame";
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b 
        "Frame in which input force is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";
      parameter Real Nm_to_m(unit="N.m/m") = world.defaultNm_to_m 
        " Torque arrow scaling (length = torque/Nm_to_m)";
      input SI.Diameter torqueDiameter=world.defaultArrowDiameter 
        " Diameter of torque arrow";
      input SI.Diameter connectionLineDiameter=torqueDiameter 
        " Diameter of line connecting frame_a and frame_b";
      input Types.Color torqueColor=Modelica.Mechanics.MultiBody.Types.Defaults.TorqueColor 
        " Color of torque arrow";
      input Types.Color connectionLineColor=Modelica.Mechanics.MultiBody.Types.Defaults.SensorColor 
        " Color of line connecting frame_a and frame_b";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position t_in_m[3]=frame_b.t/Nm_to_m 
        "Torque mapped from Nm to m for animation";
      Visualizers.Advanced.DoubleArrow torqueArrow(
        diameter=torqueDiameter,
        color=torqueColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=t_in_m,
        r_head=-t_in_m) if world.enableAnimation and animation;
      Visualizers.Advanced.Shape connectionLine(
        shapeType="cylinder",
        lengthDirection=basicTorque.r_0,
        widthDirection={0,1,0},
        length=Modelica.Math.Vectors.length(
                             basicTorque.r_0),
        width=connectionLineDiameter,
        height=connectionLineDiameter,
        color=connectionLineColor,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0) if world.enableAnimation and animation;

    public 
      Internal.BasicTorque basicTorque(resolveInFrame=resolveInFrame);
    protected 
      Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve);
    equation 
      connect(basicTorque.frame_a, frame_a);
      connect(basicTorque.frame_b, frame_b);
      connect(basicTorque.torque, torque);
      connect(basicTorque.frame_resolve, frame_resolve);
      connect(zeroPosition.frame_resolve, basicTorque.frame_resolve);
    end Torque;

* * * * *

![image55](Modelica.Mechanics.MultiBody.Forces.ForceAndTorqueI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).ForceAndTorque
======================================================================================================================================================================================================

**Force and torque acting between two frames, defined by 3+3 input
signals and resolved in frame world, frame\_a, frame\_b or
frame\_resolve**

Information
-----------

::

The **3** signals of the **force** connector and the **3** signals of
the **torque** connector are interpreted as the x-, y- and z-coordinates
of a **force** and of a **torque** acting at the frame connector to
which frame\_b of this component is attached. Via parameter
**resolveInFrame** it is defined, in which frame these coordinates shall
be resolved:

  ------------------------------------------------------------------------
  **Types.ResolveInFr **Meaning**
  ameAB.**            
  ------------------- ----------------------------------------------------
  world               Resolve input force/torque in world frame

  frame\_a            Resolve input force/torque in frame\_a

  frame\_b            Resolve input force/torque in frame\_b (= default)

  frame\_resolve      Resolve input force/torque in frame\_resolve
                      (frame\_resolve must be connected)
  ------------------------------------------------------------------------

If resolveInFrame = ResolveInFrameAB.frame\_resolve, the force and
torque coordinates are with respect to the frame, that is connected to
**frame\_resolve**.

If force={100,0,0}, and for all parameters the default setting is used,
then the interpretation is that a force of 100 N is acting along the
positive x-axis of frame\_b.

Note, a force and torque acts on frame\_a in such a way that the force
and torque balance between frame\_a and frame\_b is fulfilled.

An example how to use this model is given in the following figure:

This leads to the following animation (the yellow cylinder characterizes
the line between frame\_a and frame\_b of the ForceAndTorque component,
i.e., the force and torque acts with negative sign also on the opposite
side of this cylinder, but for clarity this is not shown in the
animation):

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames)
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
----------

  ------------------------------------------------------------------------
  Type                          Name   Default  Description
  ----------------------------- ------ -------- --------------------------
  Boolean                       animat true     = true, if animation shall
                                ion             be enabled

  [ResolveInFrameAB](Modelica_M resolv Modelica Frame in which input force
  echanics_MultiBody_Types.html eInFra .Mechani and torque are resolved
  #Modelica.Mechanics.MultiBody me     cs.Multi (1: world, 2: frame\_a, 3:
  .Types.ResolveInFrameAB)             Body...  frame\_b, 4:
                                                frame\_resolve)

  if animation = true                           

  Real                          N\_to\ world.de Force arrow scaling
                                _m     faultN\_ (length = force/N\_to\_m)
                                       to\_m    [N/m]

  Real                          Nm\_to world.de Torque arrow scaling
                                \_m    faultNm\ (length =
                                       _to\_m   torque/Nm\_to\_m) [N.m/m]

  [Diameter](Modelica_SIunits.h forceD world.de Diameter of force arrow
  tml#Modelica.SIunits.Diameter iamete faultArr [m]
  )                             r      owDiamet 
                                       er       

  [Diameter](Modelica_SIunits.h torque forceDia Diameter of torque arrow
  tml#Modelica.SIunits.Diameter Diamet meter    [m]
  )                             er              

  [Diameter](Modelica_SIunits.h connec forceDia Diameter of line
  tml#Modelica.SIunits.Diameter tionLi meter    connecting frame\_a and
  )                             neDiam          frame\_b [m]
                                eter            

  [Color](Modelica_Mechanics_Mu forceC Modelica Color of force arrow
  ltiBody_Types.html#Modelica.M olor   .Mechani 
  echanics.MultiBody.Types.Colo        cs.Multi 
  r)                                   Body...  

  [Color](Modelica_Mechanics_Mu torque Modelica Color of torque arrow
  ltiBody_Types.html#Modelica.M Color  .Mechani 
  echanics.MultiBody.Types.Colo        cs.Multi 
  r)                                   Body...  

  [Color](Modelica_Mechanics_Mu connec Modelica Color of line connecting
  ltiBody_Types.html#Modelica.M tionLi .Mechani frame\_a and frame\_b
  echanics.MultiBody.Types.Colo neColo cs.Multi 
  r)                            r      Body...  

  [SpecularCoefficient](Modelic specul world.de Reflection of ambient
  a_Mechanics_MultiBody_Types.h arCoef faultSpe light (= 0: light is
  tml#Modelica.Mechanics.MultiB ficien cularCoe completely absorbed)
  ody.Types.SpecularCoefficient t      ffic...  
  )                                             
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                   Name   Description
  -------------------------------------- ------ ---------------------------
  [Frame\_a](Modelica_Mechanics_MultiBod frame\ Coordinate system fixed to
  y_Interfaces.html#Modelica.Mechanics.M _a     the component with one
  ultiBody.Interfaces.Frame_a)                  cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBod frame\ Coordinate system fixed to
  y_Interfaces.html#Modelica.Mechanics.M _b     the component with one
  ultiBody.Interfaces.Frame_b)                  cut-force and cut-torque

  input                                  force[ x-, y-, z-coordinates of
  [RealInput](Modelica_Blocks_Interfaces 3]     force resolved in frame
  .html#Modelica.Blocks.Interfaces.RealI        defined by resolveInFrame
  nput)                                         [N]

  input                                  torque x-, y-, z-coordiantes of
  [RealInput](Modelica_Blocks_Interfaces [3]    torque resolved in frame
  .html#Modelica.Blocks.Interfaces.RealI        defined by resolveInFrame
  nput)                                         [N.m]

  [Frame\_resolve](Modelica_Mechanics_Mu frame\ The input signals are
  ltiBody_Interfaces.html#Modelica.Mecha _resol optionally resolved in this
  nics.MultiBody.Interfaces.Frame_resolv ve     frame
  e)                                            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ForceAndTorque 
      "Force and torque acting between two frames, defined by 3+3 input signals and resolved in frame world, frame_a, frame_b or frame_resolve"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;

      Blocks.Interfaces.RealInput force[3](each final quantity="Force", each final unit=
                       "N") 
        "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame";
      Blocks.Interfaces.RealInput torque[3](each final quantity="Torque", each final unit=
                       "N.m") 
        "x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame";
      Interfaces.Frame_resolve frame_resolve if 
           resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve 
        "The input signals are optionally resolved in this frame";

      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b 
        "Frame in which input force and torque are resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";
      parameter Real N_to_m(unit="N/m") = world.defaultN_to_m 
        "Force arrow scaling (length = force/N_to_m)";
      parameter Real Nm_to_m(unit="N.m/m") = world.defaultNm_to_m 
        "Torque arrow scaling (length = torque/Nm_to_m)";
      input SI.Diameter forceDiameter=world.defaultArrowDiameter 
        "Diameter of force arrow";
      input SI.Diameter torqueDiameter=forceDiameter " Diameter of torque arrow";
      input SI.Diameter connectionLineDiameter=forceDiameter 
        "Diameter of line connecting frame_a and frame_b";
      input Types.Color forceColor=Modelica.Mechanics.MultiBody.Types.Defaults.ForceColor 
        "Color of force arrow";
      input Types.Color torqueColor=Modelica.Mechanics.MultiBody.Types.Defaults.TorqueColor 
        "Color of torque arrow";
      input Types.Color connectionLineColor=Modelica.Mechanics.MultiBody.Types.Defaults.SensorColor 
        "Color of line connecting frame_a and frame_b";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";

    protected 
      SI.Position f_in_m[3]=frame_b.f/N_to_m 
        "Force mapped from N to m for animation";
      SI.Position t_in_m[3]=frame_b.t/Nm_to_m 
        "Torque mapped from Nm to m for animation";
      Visualizers.Advanced.Arrow forceArrow(
        diameter=forceDiameter,
        color=forceColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=f_in_m,
        r_head=-f_in_m) if world.enableAnimation and animation;
      Visualizers.Advanced.DoubleArrow torqueArrow(
        diameter=torqueDiameter,
        color=torqueColor,
        specularCoefficient=specularCoefficient,
        R=frame_b.R,
        r=frame_b.r_0,
        r_tail=t_in_m,
        r_head=-t_in_m) if world.enableAnimation and animation;
      Visualizers.Advanced.Shape connectionLine(
        shapeType="cylinder",
        lengthDirection=basicForce.r_0,
        widthDirection={0,1,0},
        length=Modelica.Math.Vectors.length(
                             basicForce.r_0),
        width=connectionLineDiameter,
        height=connectionLineDiameter,
        color=connectionLineColor,
        specularCoefficient=specularCoefficient,
        r=frame_a.r_0) if world.enableAnimation and animation;

    public 
      Internal.BasicForce basicForce(resolveInFrame=resolveInFrame);
      Internal.BasicTorque basicTorque(resolveInFrame=resolveInFrame);
    protected 
      Interfaces.ZeroPosition zeroPosition if 
           not (resolveInFrame == Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_resolve);
    equation 
      connect(basicForce.frame_a, frame_a);
      connect(basicForce.frame_b, frame_b);
      connect(basicTorque.frame_b, frame_b);
      connect(basicTorque.frame_a, frame_a);
      connect(basicForce.force, force);
      connect(basicTorque.torque, torque);
      connect(basicTorque.frame_resolve, frame_resolve);
      connect(basicForce.frame_resolve, frame_resolve);
      connect(zeroPosition.frame_resolve, basicTorque.frame_resolve);
      connect(zeroPosition.frame_resolve, basicForce.frame_resolve);
    end ForceAndTorque;

* * * * *

![image56](Modelica.Mechanics.MultiBody.Forces.LineForceWithMassI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).LineForceWithMass
============================================================================================================================================================================================================

**General line force component with an optional point mass on the
connection line**

Information
-----------

::

This component is used to exert a **line force** between the origin of
frame\_a and the origin of frame\_b by attaching components of the
**1-dimensional translational** mechanical library of Modelica
(Modelica.Mechanics.Translational) between the two flange connectors
**flange\_a** and **flange\_b**. Optionally, there is a **point mass**
on the line connecting the origin of frame\_a and the origin of
frame\_b. This point mass approximates the **mass** of the **force
element**. The distance of the point mass from frame\_a as a fraction of
the distance between frame\_a and frame\_b is defined via parameter
**lengthFraction** (default is 0.5, i.e., the point mass is in the
middle of the line).

In the translational library there is the implicit assumption that
forces of components that have only one flange connector act with
opposite sign on the bearings of the component. This assumption is also
used in the LineForceWithMass component: If a connection is present to
only one of the flange connectors, then the force in this flange
connector acts implicitly with opposite sign also in the other flange
connector.

::

Extends from
[Interfaces.PartialTwoFrames](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames)
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
----------

  ------------------------------------------------------------------------
  Type                          Name   Default  Description
  ----------------------------- ------ -------- --------------------------
  Boolean                       animat true     = true, if a line shape
                                eLine           between frame\_a and
                                                frame\_b shall be
                                                visualized

  Boolean                       animat true     = true, if point mass
                                eMass           shall be visualized as
                                                sphere provided m \> 0

  [Mass](Modelica_SIunits.html# m      0        Mass of point mass on the
  Modelica.SIunits.Mass)                        connetion line between the
                                                origin of frame\_a and the
                                                origin of frame\_b [kg]

  Real                          length 0.5      Location of point mass
                                Fracti          with respect to frame\_a
                                on              as a fraction of the
                                                distance from frame\_a to
                                                frame\_b [1]

  **Animation**                                 

  [SpecularCoefficient](Modelic specul world.de Reflection of ambient
  a_Mechanics_MultiBody_Types.h arCoef faultSpe light (= 0: light is
  tml#Modelica.Mechanics.MultiB ficien cularCoe completely absorbed)
  ody.Types.SpecularCoefficient t      ffic...  
  )                                             

  if animateLine = true                         

  [ShapeType](Modelica_Mechanic lineSh "cylinde Type of shape visualizing
  s_MultiBody_Types.html#Modeli apeTyp r"       the line from frame\_a to
  ca.Mechanics.MultiBody.Types. e               frame\_b
  ShapeType)                                    

  [Length](Modelica_SIunits.htm lineSh world.de Width of shape [m]
  l#Modelica.SIunits.Length)    apeWid faultArr 
                                th     owDiamet 
                                       er       

  [Length](Modelica_SIunits.htm lineSh lineShap Height of shape [m]
  l#Modelica.SIunits.Length)    apeHei eWidth   
                                ght             

  [ShapeExtra](Modelica_Mechani lineSh 0.0      Extra parameter for shape
  cs_MultiBody_Types.html#Model apeExt          
  ica.Mechanics.MultiBody.Types ra              
  .ShapeExtra)                                  

  [Color](Modelica_Mechanics_Mu lineSh Modelica Color of line shape
  ltiBody_Types.html#Modelica.M apeCol .Mechani 
  echanics.MultiBody.Types.Colo or     cs.Multi 
  r)                                   Body...  

  if animateMass = true                         

  Real                          massDi world.de Diameter of point mass
                                ameter faultBod sphere
                                       yDiamete 
                                       r        

  [Color](Modelica_Mechanics_Mu massCo Modelica Color of point mass
  ltiBody_Types.html#Modelica.M lor    .Mechani 
  echanics.MultiBody.Types.Colo        cs.Multi 
  r)                                   Body...  

  **Advanced**                                  

  [Position](Modelica_SIunits.h s\_sma 1.E-10   Prevent zero-division if
  tml#Modelica.SIunits.Position ll              distance between frame\_a
  )                                             and frame\_b is zero [m]

  If enabled, can give wrong                    
  results, see                                  
  MultiBody.UsersGuide.Tutorial                 
  .ConnectionOfLineForces                       

  Boolean                       fixedR false    =true, if rotation
                                otatio          frame\_a.R is fixed (to
                                nAtFra          directly connect line
                                me\_a           forces)

  Boolean                       fixedR false    =true, if rotation
                                otatio          frame\_b.R is fixed (to
                                nAtFra          directly connect line
                                me\_b           forces)
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                 Name Description
  ------------------------------------ ---- -------------------------------
  [Frame\_a](Modelica_Mechanics_MultiB fram Coordinate system fixed to the
  ody_Interfaces.html#Modelica.Mechani e\_a component with one cut-force
  cs.MultiBody.Interfaces.Frame_a)          and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiB fram Coordinate system fixed to the
  ody_Interfaces.html#Modelica.Mechani e\_b component with one cut-force
  cs.MultiBody.Interfaces.Frame_b)          and cut-torque

  [Flange\_a](Modelica_Mechanics_Trans flan 1-dim. translational flange
  lational_Interfaces.html#Modelica.Me ge\_ (connect force of Translational
  chanics.Translational.Interfaces.Fla b    library between flange\_a and
  nge_a)                                    flange\_b)

  [Flange\_b](Modelica_Mechanics_Trans flan 1-dim. translational flange
  lational_Interfaces.html#Modelica.Me ge\_ (connect force of Translational
  chanics.Translational.Interfaces.Fla a    library between flange\_a and
  nge_b)                                    flange\_b)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model LineForceWithMass 
      "General line force component with an optional point mass on the connection line"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      extends Interfaces.PartialTwoFrames;
      Modelica.Mechanics.Translational.Interfaces.Flange_a flange_b 
        "1-dim. translational flange (connect force of Translational library between flange_a and flange_b)";
      Modelica.Mechanics.Translational.Interfaces.Flange_b flange_a 
        "1-dim. translational flange (connect force of Translational library between flange_a and flange_b)";


      parameter Boolean animateLine=true 
        "= true, if a line shape between frame_a and frame_b shall be visualized";
      parameter Boolean animateMass=true 
        "= true, if point mass shall be visualized as sphere provided m > 0";
      parameter SI.Mass m(min=0)=0 
        "Mass of point mass on the connetion line between the origin of frame_a and the origin of frame_b";
      parameter Real lengthFraction(
        unit="1",
        min=0,
        max=1) = 0.5 
        "Location of point mass with respect to frame_a as a fraction of the distance from frame_a to frame_b";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      parameter Types.ShapeType lineShapeType="cylinder" 
        "Type of shape visualizing the line from frame_a to frame_b";
      input SI.Length lineShapeWidth=world.defaultArrowDiameter "Width of shape";
      input SI.Length lineShapeHeight=lineShapeWidth "Height of shape";
      parameter Types.ShapeExtra lineShapeExtra=0.0 "Extra parameter for shape";
      input Types.Color lineShapeColor=Modelica.Mechanics.MultiBody.Types.Defaults.SensorColor 
        "Color of line shape";
      input Real massDiameter=world.defaultBodyDiameter 
        "Diameter of point mass sphere";
      input Types.Color massColor=Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor 
        "Color of point mass";
      parameter SI.Position s_small=1.E-10 
        "Prevent zero-division if distance between frame_a and frame_b is zero";
      parameter Boolean fixedRotationAtFrame_a=false 
        "=true, if rotation frame_a.R is fixed (to directly connect line forces)";
      parameter Boolean fixedRotationAtFrame_b=false 
        "=true, if rotation frame_b.R is fixed (to directly connect line forces)";

      SI.Distance length 
        "Distance between the origin of frame_a and the origin of frame_b";
      SI.Position r_rel_0[3] 
        "Position vector from frame_a to frame_b resolved in world frame";
      Real e_rel_0[3](each final unit="1") 
        "Unit vector in direction from frame_a to frame_b, resolved in world frame";

    protected 
      SI.Force fa "Force from flange_a";
      SI.Force fb "Force from flange_b";
      SI.Position r_CM_0[3](stateSelect=StateSelect.avoid) 
        "Position vector from world frame to point mass, resolved in world frame";
      SI.Velocity v_CM_0[3](stateSelect=StateSelect.avoid) 
        "First derivative of r_CM_0";
      SI.Acceleration ag_CM_0[3] "der(v_CM_0) - gravityAcceleration";

      Visualizers.Advanced.Shape lineShape(
        shapeType=lineShapeType,
        color=lineShapeColor,
        specularCoefficient=specularCoefficient,
        length=length,
        width=lineShapeWidth,
        height=lineShapeHeight,
        lengthDirection=e_rel_0,
        widthDirection=Frames.resolve1(frame_a.R, {0,1,0}),
        extra=lineShapeExtra,
        r=frame_a.r_0) if world.enableAnimation and animateLine;

      Visualizers.Advanced.Shape massShape(
        shapeType="sphere",
        color=massColor,
        specularCoefficient=specularCoefficient,
        length=massDiameter,
        width=massDiameter,
        height=massDiameter,
        lengthDirection=e_rel_0,
        widthDirection={0,1,0},
        r_shape=e_rel_0*(length*lengthFraction - massDiameter/2),
        r=frame_a.r_0) if world.enableAnimation and animateMass and m > 0;
    equation 
      assert(noEvent(length > s_small), "
    The distance between the origin of frame_a and the origin of frame_b
    of a LineForceWithMass component became smaller as parameter s_small
    (= a small number, defined in the \"Advanced\" menu). The distance is
    set to s_small, although it is smaller, to avoid a division by zero
    when computing the direction of the line force. Possible reasons
    for this situation:
    - At initial time the distance may already be zero: Change the initial
      positions of the bodies connected by this element.
    - Hardware stops are not modeled or are modeled not stiff enough.
      Include stops, e.g., stiff springs, or increase the stiffness
      if already present.
    - Another error in your model may lead to unrealistically large forces
      and torques that would in reality destroy the stops.
    - The flange_b connector might be defined by a pre-defined motion,
      e.g., with Modelica.Mechanics.Translational.Position and the
      predefined flange_b.s is zero or negative.
    ");

      // Determine relative position vector between the two frames
      r_rel_0 = frame_b.r_0 - frame_a.r_0;
      length = Modelica.Math.Vectors.length(
                             r_rel_0);
      flange_a.s = 0;
      flange_b.s = length;
      e_rel_0 = r_rel_0/Frames.Internal.maxWithoutEvent(length, s_small);

      // Determine translational flange forces
      if cardinality(flange_a) > 0 and cardinality(flange_b) > 0 then
        fa = flange_a.f;
        fb = flange_b.f;
      elseif cardinality(flange_a) > 0 and cardinality(flange_b) == 0 then
        fa = flange_a.f;
        fb = -fa;
      elseif cardinality(flange_a) == 0 and cardinality(flange_b) > 0 then
        fa = -fb;
        fb = flange_b.f;
      else
        fa = 0;
        fb = 0;
      end if;

      /* Force and torque balance of point mass
         - Kinematics for center of mass CM of point mass including gravity
           r_CM_0 = frame_a.r0 + r_rel_CM_0;
           v_CM_0 = der(r_CM_0);
           ag_CM_0 = der(v_CM_0) - world.gravityAcceleration(r_CM_0);
         - Power balance for the connection line
           (f1=force on frame_a side, f2=force on frame_b side, h=lengthFraction)
           0 = f1*va - m*ag_CM*(va+(vb-va)*h) + f2*vb
             = (f1 - m*ag_CM*(1-h))*va + (f2 - m*ag_CM*h)*vb
           since va and vb are completely indepedent from other
           the paranthesis must vanish:
             f1 := m*ag_CM*(1-h)
             f2 := m*ag_CM*h
         - Force balance on frame_a and frame_b finally results in
             0 = frame_a.f + e_rel_a*fa - f1_a
             0 = frame_b.f + e_rel_b*fb - f2_b
           and therefore
             frame_a.f = -e_rel_a*fa + m*ag_CM_a*(1-h)
             frame_b.f = -e_rel_b*fb + m*ag_CM_b*h
      */
      if m > 0 then
        r_CM_0 = frame_a.r_0 + r_rel_0*lengthFraction;
        v_CM_0 = der(r_CM_0);
        ag_CM_0 = der(v_CM_0) - world.gravityAcceleration(r_CM_0);
        frame_a.f = Frames.resolve2(frame_a.R, (m*(1 - lengthFraction))*ag_CM_0
           - e_rel_0*fa);
        frame_b.f = Frames.resolve2(frame_b.R, (m*lengthFraction)*ag_CM_0 -
          e_rel_0*fb);
      else
        r_CM_0 = zeros(3);
        v_CM_0 = zeros(3);
        ag_CM_0 = zeros(3);
        frame_a.f = -Frames.resolve2(frame_a.R, e_rel_0*fa);
        frame_b.f = -Frames.resolve2(frame_b.R, e_rel_0*fb);
      end if;

      // Provide appropriate equations, if direct connections of line forces
      if fixedRotationAtFrame_a then
        Connections.root(frame_a.R);
        frame_a.R = Frames.nullRotation();
      else
        frame_a.t = zeros(3);
      end if;

      if fixedRotationAtFrame_b then
        Connections.root(frame_b.R);
        frame_b.R = Frames.nullRotation();
      else
        frame_b.t = zeros(3);
      end if;
    end LineForceWithMass;

* * * * *

![image57](Modelica.Mechanics.MultiBody.Forces.LineForceWithTwoMassesI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).LineForceWithTwoMasses
======================================================================================================================================================================================================================

**General line force component with two optional point masses on the
connection line**

Information
-----------

::

This component is used to exert a **line force** between the origin of
frame\_a and the origin of frame\_b by attaching components of the
**1-dimensional translational** mechanical library of Modelica
(Modelica.Mechanics.Translational) between the two flange connectors
**flange\_a** and **flange\_b**. Optionally, there are **two point
masses** on the line connecting the origin of frame\_a and the origin of
frame\_b. These point masses approximate the **masses** of the **force
element**. The locations of the two point masses are defined by their
(fixed) distances of L\_a relative to frame\_a and of L\_b relative to
frame\_b, respectively.

In example
[MultiBody.Examples.Elementary.LineForceWithTwoMasses](Modelica_Mechanics_MultiBody_Examples_Elementary.html#Modelica.Mechanics.MultiBody.Examples.Elementary.LineForceWithTwoMasses)
the usage of this line force element is shown and is compared with an
alternative implementation using a
[MultiBody.Joints.Assemblies.JointUPS](Modelica_Mechanics_MultiBody_Joints_Assemblies.html#Modelica.Mechanics.MultiBody.Joints.Assemblies.JointUPS)
component. The composition diagram of this example is displayed in the
figure below.

The animation view at time = 0 is shown in the next figure. The system
on the left side in the front is the animation with the
LineForceWithTwoMasses component whereas the system on the right side in
the back is the animation with the JointUPS component. Both
implementations yield the same result. However, the implementation with
the LineForceWithTwoMasses component is simpler.

In the translational library there is the implicit assumption that
forces of components that have only one flange connector act with
opposite sign on the bearings of the component. This assumption is also
used in the LineForceWithTwoMasses component: If a connection is present
to only one of the flange connectors, then the force in this flange
connector acts implicitly with opposite sign also in the other flange
connector.

::

Extends from
[Interfaces.PartialTwoFrames](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames)
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
----------

  ------------------------------------------------------------------------
  Type                          Name   Default  Description
  ----------------------------- ------ -------- --------------------------
  Boolean                       animat true     = true, if animation shall
                                e               be enabled

  Boolean                       animat true     = true, if point masses
                                eMasse          shall be visualized
                                s               provided animate=true and
                                                m\_a, m\_b \> 0

  [Mass](Modelica_SIunits.html# m\_a   0        Mass of point mass a on
  Modelica.SIunits.Mass)                        the connetion line between
                                                the origin of frame\_a and
                                                the origin of frame\_b
                                                [kg]

  [Mass](Modelica_SIunits.html# m\_b   0        Mass of point mass b on
  Modelica.SIunits.Mass)                        the connetion line between
                                                the origin of frame\_a and
                                                the origin of frame\_b
                                                [kg]

  [Position](Modelica_SIunits.h L\_a   0        Distance between point
  tml#Modelica.SIunits.Position                 mass a and frame\_a
  )                                             (positive, if in direction
                                                of frame\_b) [m]

  [Position](Modelica_SIunits.h L\_b   L\_a     Distance between point
  tml#Modelica.SIunits.Position                 mass b and frame\_b
  )                                             (positive, if in direction
                                                of frame\_a) [m]

  **Animation**                                 

  Cylinder at frame\_a if                       
  animation = true                              

  [Diameter](Modelica_SIunits.h cylind world.de Diameter of cylinder at
  tml#Modelica.SIunits.Diameter erDiam faultFor frame\_a [m]
  )                             eter\_ ceWidth  
                                a               

  [Length](Modelica_SIunits.htm cylind 2\*L\_a  Length of cylinder at
  l#Modelica.SIunits.Length)    erLeng          frame\_a [m]
                                th\_a           

  [Color](Modelica_Mechanics_Mu color\ {155,155 Color of cylinder at
  ltiBody_Types.html#Modelica.M _a     ,155}    frame\_a
  echanics.MultiBody.Types.Colo                 
  r)                                            

  [SpecularCoefficient](Modelic specul world.de Reflection of ambient
  a_Mechanics_MultiBody_Types.h arCoef faultSpe light (= 0: light is
  tml#Modelica.Mechanics.MultiB ficien cularCoe completely absorbed)
  ody.Types.SpecularCoefficient t      ffic...  
  )                                             

  Cylinder at frame\_b if                       
  animation = true                              

  Real                          diamet 0.8      Diameter of cylinder at
                                erFrac          frame\_b with respect to
                                tion            diameter of cylinder at
                                                frame\_a

  [Length](Modelica_SIunits.htm cylind 2\*L\_b  Length of cylinder at
  l#Modelica.SIunits.Length)    erLeng          frame\_b [m]
                                th\_b           

  [Color](Modelica_Mechanics_Mu color\ {100,100 Color of cylinder at
  ltiBody_Types.html#Modelica.M _b     ,100}    frame\_b
  echanics.MultiBody.Types.Colo                 
  r)                                            

  if animation = true and                       
  animateMasses = true                          

  Real                          massDi 1.7      Diameter of point mass
                                ameter          spheres with respect to
                                Factio          cylinderDiameter\_a
                                n               

  [Color](Modelica_Mechanics_Mu massCo Modelica Color of point masses
  ltiBody_Types.html#Modelica.M lor    .Mechani 
  echanics.MultiBody.Types.Colo        cs.Multi 
  r)                                   Body...  

  **Advanced**                                  

  [Position](Modelica_SIunits.h s\_sma 1.E-10   Prevent zero-division if
  tml#Modelica.SIunits.Position ll              distance between frame\_a
  )                                             and frame\_b is zero [m]

  If enabled, can give wrong                    
  results, see                                  
  MultiBody.UsersGuide.Tutorial                 
  .ConnectionOfLineForces                       

  Boolean                       fixedR false    =true, if rotation
                                otatio          frame\_a.R is fixed (to
                                nAtFra          directly connect line
                                me\_a           forces)

  Boolean                       fixedR false    =true, if rotation
                                otatio          frame\_b.R is fixed (to
                                nAtFra          directly connect line
                                me\_b           forces)
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                 Name Description
  ------------------------------------ ---- -------------------------------
  [Frame\_a](Modelica_Mechanics_MultiB fram Coordinate system fixed to the
  ody_Interfaces.html#Modelica.Mechani e\_a component with one cut-force
  cs.MultiBody.Interfaces.Frame_a)          and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiB fram Coordinate system fixed to the
  ody_Interfaces.html#Modelica.Mechani e\_b component with one cut-force
  cs.MultiBody.Interfaces.Frame_b)          and cut-torque

  [Flange\_a](Modelica_Mechanics_Trans flan 1-dim. translational flange
  lational_Interfaces.html#Modelica.Me ge\_ (connect force of Translational
  chanics.Translational.Interfaces.Fla b    library between flange\_a and
  nge_a)                                    flange\_b)

  [Flange\_b](Modelica_Mechanics_Trans flan 1-dim. translational flange
  lational_Interfaces.html#Modelica.Me ge\_ (connect force of Translational
  chanics.Translational.Interfaces.Fla a    library between flange\_a and
  nge_b)                                    flange\_b)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model LineForceWithTwoMasses 
      "General line force component with two optional point masses on the connection line"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;

      extends Interfaces.PartialTwoFrames;
      Modelica.Mechanics.Translational.Interfaces.Flange_a flange_b 
        "1-dim. translational flange (connect force of Translational library between flange_a and flange_b)";
      Modelica.Mechanics.Translational.Interfaces.Flange_b flange_a 
        "1-dim. translational flange (connect force of Translational library between flange_a and flange_b)";


      parameter Boolean animate=true "= true, if animation shall be enabled";
      parameter Boolean animateMasses=true 
        "= true, if point masses shall be visualized provided animate=true and m_a, m_b > 0";
      parameter SI.Mass m_a(min=0)=0 
        "Mass of point mass a on the connetion line between the origin of frame_a and the origin of frame_b";
      parameter SI.Mass m_b(min=0)=0 
        "Mass of point mass b on the connetion line between the origin of frame_a and the origin of frame_b";
      parameter SI.Position L_a=0 
        "Distance between point mass a and frame_a (positive, if in direction of frame_b)";
      parameter SI.Position L_b=L_a 
        "Distance between point mass b and frame_b (positive, if in direction of frame_a)";
      input SI.Diameter cylinderDiameter_a=world.defaultForceWidth 
        " Diameter of cylinder at frame_a";
      parameter SI.Length cylinderLength_a=2*L_a " Length of cylinder at frame_a";
      input Types.Color color_a={155,155,155} " Color of cylinder at frame_a";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      input Real diameterFraction=0.8 
        " Diameter of cylinder at frame_b with respect to diameter of cylinder at frame_a";
      parameter SI.Length cylinderLength_b=2*L_b " Length of cylinder at frame_b";
      input Types.Color color_b={100,100,100} " Color of cylinder at frame_b";
      input Real massDiameterFaction=1.7 
        " Diameter of point mass spheres with respect to cylinderDiameter_a";
      input Types.Color massColor=Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor 
        " Color of point masses";
      parameter SI.Position s_small=1.E-10 
        " Prevent zero-division if distance between frame_a and frame_b is zero";
      parameter Boolean fixedRotationAtFrame_a=false 
        "=true, if rotation frame_a.R is fixed (to directly connect line forces)";
      parameter Boolean fixedRotationAtFrame_b=false 
        "=true, if rotation frame_b.R is fixed (to directly connect line forces)";

      SI.Distance length 
        "Distance between the origin of frame_a and the origin of frame_b";
      SI.Position r_rel_0[3] 
        "Position vector from frame_a to frame_b resolved in world frame";
      Real e_rel_0[3](each final unit="1") 
        "Unit vector in direction from frame_a to frame_b, resolved in world frame";

    protected 
      SI.Force fa "Force from flange_a";
      SI.Force fb "Force from flange_b";
      SI.Position r_CM1_0[3](stateSelect=StateSelect.avoid) 
        "Position vector from world frame to point mass 1, resolved in world frame";
      SI.Position r_CM2_0[3](stateSelect=StateSelect.avoid) 
        "Position vector from world frame to point mass 2, resolved in world frame";
      SI.Velocity v_CM1_0[3](stateSelect=StateSelect.avoid) 
        "der(r_CM_1_0) - velocity of point mass 1";
      SI.Velocity v_CM2_0[3](stateSelect=StateSelect.avoid) 
        "der(r_CM_2_0) - velocity of point mass 2";
      SI.Acceleration ag_CM1_0[3] "der(v_CM1_0) - gravityAcceleration(r_CM1_0)";
      SI.Acceleration ag_CM2_0[3] "der(v_CM2_0) - gravityAcceleration(r_CM2_0)";
      SI.Force aux1_0[3] "Auxiliary force 1";
      SI.Force aux2_0[3] "Auxiliary force 2";

      input SI.Length cylinderDiameter_b=cylinderDiameter_a*diameterFraction;
      input SI.Length massDiameter=cylinderDiameter_a*massDiameterFaction;
      parameter Boolean animateMasses2=world.enableAnimation and animate and animateMasses and m_a > 0 and m_b > 0;
      Visualizers.Advanced.Shape cylinder_a(
        shapeType="cylinder",
        color=color_a,
        specularCoefficient=specularCoefficient,
        length=cylinderLength_a,
        width=cylinderDiameter_a,
        height=cylinderDiameter_a,
        lengthDirection=e_rel_0,
        widthDirection={0,1,0},
        r=frame_a.r_0) if world.enableAnimation and animate;

      Visualizers.Advanced.Shape cylinder_b(
        shapeType="cylinder",
        color=color_b,
        specularCoefficient=specularCoefficient,
        length=cylinderLength_b,
        width=cylinderDiameter_b,
        height=cylinderDiameter_b,
        lengthDirection=-e_rel_0,
        widthDirection={0,1,0},
        r=frame_b.r_0) if world.enableAnimation and animate;

      Visualizers.Advanced.Shape sphere_a(
        shapeType="sphere",
        color=massColor,
        specularCoefficient=specularCoefficient,
        length=massDiameter,
        width=massDiameter,
        height=massDiameter,
        lengthDirection=e_rel_0,
        widthDirection={0,1,0},
        r_shape=e_rel_0*(L_a - massDiameter/2),
        r=frame_a.r_0) if animateMasses2;

      Visualizers.Advanced.Shape sphere_b(
        shapeType="sphere",
        color=massColor,
        specularCoefficient=specularCoefficient,
        length=massDiameter,
        width=massDiameter,
        height=massDiameter,
        lengthDirection=-e_rel_0,
        widthDirection={0,1,0},
        r_shape=-e_rel_0*(L_b - massDiameter/2),
        r=frame_b.r_0) if animateMasses2;
    equation 
      assert(noEvent(length > s_small), "
    The distance between the origin of frame_a and the origin of frame_b
    of a LineForceWithTwoMasses component became smaller as parameter s_small
    (= a small number, defined in the \"Advanced\" menu). The distance is
    set to s_small, although it is smaller, to avoid a division by zero
    when computing the direction of the line force. Possible reasons
    for this situation:
    - At initial time the distance may already be zero: Change the initial
      positions of the bodies connected by this element.
    - Hardware stops are not modeled or are modeled not stiff enough.
      Include stops, e.g., stiff springs, or increase the stiffness
      if already present.
    - Another error in your model may lead to unrealistically large forces
      and torques that would in reality destroy the stops.
    - The flange_b connector might be defined by a pre-defined motion,
      e.g., with Modelica.Mechanics.Translational.Position and the
      predefined flange_b.s is zero or negative.
    ");

      // Determine relative position vector between the two frames
      r_rel_0 = frame_b.r_0 - frame_a.r_0;
      length = Modelica.Math.Vectors.length(
                             r_rel_0);
      flange_a.s = 0;
      flange_b.s = length;
      e_rel_0 = r_rel_0/Frames.Internal.maxWithoutEvent(length, s_small);

      // Determine translational flange forces
      if cardinality(flange_a) > 0 and cardinality(flange_b) > 0 then
        fa = flange_a.f;
        fb = flange_b.f;
      elseif cardinality(flange_a) > 0 and cardinality(flange_b) == 0 then
        fa = flange_a.f;
        fb = -fa;
      elseif cardinality(flange_a) == 0 and cardinality(flange_b) > 0 then
        fa = -fb;
        fb = flange_b.f;
      else
        fa = 0;
        fb = 0;
      end if;

      /* Force and torque balance of the two point masses
         - Kinematics for center of masses CM1, CM2 of point masses including gravity
           (L = length, va = der(frame_a.r_0), vb = der(frame_b.r_0))
           r_CM1_0 = frame_a.r_0 + e_rel_0*L_a;
           r_CM2_0 = frame_b.r_0 - e_rel_0*L_b;
           v_CM1_0 = der(r_CM1_0);
           v_CM2_0 = der(r_CM2_0);
           ag_CM1_0 = der(v_CM1_0) - world.gravityAcceleration(r_CM1_0);
           ag_CM2_0 = der(v_CM2_0) - world.gravityAcceleration(r_CM2_0);
           der(e_rel_0) = der(r_rel_0/sqrt(r_rel_0*r_rel_0))
                        = 1/L*(I - e_rel_0*e_rel_0')*der(r_rel_0)
                        = 1/L*(I - e_rel_0*e_rel_0')*(vb - va)
           v_CM1_0 = va + L_a/L*(I - e_rel_0*e_rel_0')*(vb - va)
           v_CM2_0 = vb - L_b/L*(I - e_rel_0*e_rel_0')*(vb - va)
         - Power balance for the connection line
           (f1=force on frame_a side, f2=force on frame_b side)
           0 = f1*va - m_a*ag_CM1*v_CM1 + f2*vb - m_b*ag_CM2*v_CM2
             = f1*va - m_a*ag_CM1*(va + L_a/L*(I - e_rel*e_rel')*(vb - va)) +
               f2*vb - m_b*ag_CM2*(vb - L_b/L*(I - e_rel*e_rel')*(vb - va))
             = (f1 - m_a*ag_CM1*(I - L_a/L*(I - e_rel*e_rel'))
                   - m_b*ag_CM2*(L_b/L*(I - e_rel*e_rel')))*va +
               (f2 - m_b*ag_CM2*(I - L_b/L*(I - e_rel_0*e_rel_0'))
                   - m_a*ag_CM1*(L_a/L*(I - e_rel*e_rel')))*vb
             = va*(f1 - m_a*ag_CM1 +
                   (m_a*ag_CM1*L_a/L - m_b*ag_CM2*L_b/L)*(I - e_rel*e_rel')) +
               vb*(f2 - m_b*ag_CM2 +
                   (m_b*ag_CM2*L_b/L - m_a*ag_CM1*L_a/L)*(I - e_rel*e_rel'))
           since va and vb are completely independent from other
           the paranthesis must vanish:
             f1 := m_a*ag_CM1 - (m_a*ag_CM1*L_a/L - m_b*ag_CM2*L_b/L)*(I - e_rel*e_rel')
             f2 := m_b*ag_CM2 + (m_a*ag_CM1*L_a/L - m_b*ag_CM2*L_b/L)*(I - e_rel*e_rel')
           or
             aux1 := ag_CM1*(m_a*L_a/L) - ag_CM2*(m_b*L_b/L);
             aux2 := aux1 - (aux1'*e_rel)*e_rel
             f1 := m_a*ag_CM1 - aux2
             f2 := m_b*ag_CM2 + aux2
         - Force balance on frame_a and frame_b finally results in
             0 = frame_a.f + e_rel_a*fa - f1_a
             0 = frame_b.f + e_rel_b*fb - f2_b
           and therefore
             frame_a.f = -e_rel_a*fa + m_a*ag_CM1 - aux2
             frame_b.f = -e_rel_b*fb + m_b*ag_CM2 + aux2
      */
      if m_a > 0 or m_b > 0 then
        r_CM1_0 = frame_a.r_0 + e_rel_0*L_a;
        r_CM2_0 = frame_b.r_0 - e_rel_0*L_b;
        v_CM1_0 = der(r_CM1_0);
        v_CM2_0 = der(r_CM2_0);
        ag_CM1_0 = der(v_CM1_0) - world.gravityAcceleration(r_CM1_0);
        ag_CM2_0 = der(v_CM2_0) - world.gravityAcceleration(r_CM2_0);
        aux1_0 = ag_CM1_0*(m_a*L_a/length) - ag_CM2_0*(m_b*L_b/length);
        aux2_0 = aux1_0 - (aux1_0*e_rel_0)*e_rel_0;
        frame_a.f = Frames.resolve2(frame_a.R, m_a*ag_CM1_0 - aux2_0 - e_rel_0*fa);
        frame_b.f = Frames.resolve2(frame_b.R, m_b*ag_CM2_0 + aux2_0 - e_rel_0*fb);
      else
        r_CM1_0 = zeros(3);
        r_CM2_0 = zeros(3);
        v_CM1_0 = zeros(3);
        v_CM2_0 = zeros(3);
        ag_CM1_0 = zeros(3);
        ag_CM2_0 = zeros(3);
        aux1_0 = zeros(3);
        aux2_0 = zeros(3);
        frame_a.f = -Frames.resolve2(frame_a.R, e_rel_0*fa);
        frame_b.f = -Frames.resolve2(frame_b.R, e_rel_0*fb);
      end if;

      // Provide appropriate equations, if direct connections of line forces
      if fixedRotationAtFrame_a then
        Connections.root(frame_a.R);
        frame_a.R = Frames.nullRotation();
      else
        frame_a.t = zeros(3);
      end if;

      if fixedRotationAtFrame_b then
        Connections.root(frame_b.R);
        frame_b.R = Frames.nullRotation();
      else
        frame_b.t = zeros(3);
      end if;

    end LineForceWithTwoMasses;

* * * * *

![image58](Modelica.Mechanics.MultiBody.Forces.SpringI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).Spring
======================================================================================================================================================================================

**Linear translational spring with optional mass**

Information
-----------

::

**Linear spring** acting as line force between frame\_a and frame\_b. A
**force f** is exerted on the origin of frame\_b and with opposite sign
on the origin of frame\_a along the line from the origin of frame\_a to
the origin of frame\_b according to the equation:

    f = c*(s - s_unstretched);

where "c" and "s\_unstretched" are parameters and "s" is the distance
between the origin of frame\_a and the origin of frame\_b.

Optionally, the mass of the spring is taken into account by a point mass
located on the line between frame\_a and frame\_b (default: middle of
the line). If the spring mass is zero, the additional equations to
handle the mass are removed.

In the following figure a typical animation of the spring is shown. The
blue sphere in the middle of the spring characterizes the location of
the point mass.

::

Extends from
[Interfaces.PartialTwoFrames](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames)
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
----------

  --------------------------------------------------------------------------
  Type                       Name   Default  Description
  -------------------------- ------ -------- -------------------------------
  Boolean                    animat true     = true, if animation shall be
                             ion             enabled

  Boolean                    showMa true     = true, if point mass shall be
                             ss              visualized as sphere if
                                             animation=true and m\>0

  [TranslationalSpringConsta c               Spring constant [N/m]
  nt](Modelica_SIunits.html#                 
  Modelica.SIunits.Translati                 
  onalSpringConstant)                        

  [Length](Modelica_SIunits. s\_uns 0        Unstretched spring length [m]
  html#Modelica.SIunits.Leng tretch          
  th)                        ed              

  [Mass](Modelica_SIunits.ht m      0        Spring mass located on the
  ml#Modelica.SIunits.Mass)                  connetion line between the
                                             origin of frame\_a and the
                                             origin of frame\_b [kg]

  Real                       length 0.5      Location of spring mass with
                             Fracti          respect to frame\_a as a
                             on              fraction of the distance from
                                             frame\_a to frame\_b (=0: at
                                             frame\_a; =1: at frame\_b)

  **Animation**                              

  if animation = true                        

  [Distance](Modelica_SIunit width  world.de Width of spring [m]
  s.html#Modelica.SIunits.Di        faultFor 
  stance)                           ceWidth  

  [Distance](Modelica_SIunit coilWi width/10 Width of spring coil [m]
  s.html#Modelica.SIunits.Di dth             
  stance)                                    

  Integer                    number 5        Number of spring windings
                             OfWind          
                             ings            

  [Color](Modelica_Mechanics color  Modelica Color of spring
  _MultiBody_Types.html#Mode        .Mechani 
  lica.Mechanics.MultiBody.T        cs.Multi 
  ypes.Color)                       Body...  

  [SpecularCoefficient](Mode specul world.de Reflection of ambient light (=
  lica_Mechanics_MultiBody_T arCoef faultSpe 0: light is completely
  ypes.html#Modelica.Mechani ficien cularCoe absorbed)
  cs.MultiBody.Types.Specula t      ffic...  
  rCoefficient)                              

  if animation = true and                    
  showMass = true                            

  [Diameter](Modelica_SIunit massDi max(0,   Diameter of mass point sphere
  s.html#Modelica.SIunits.Di ameter (width - [m]
  ameter)                           2\*coilW 
                                    idth)... 

  [Color](Modelica_Mechanics massCo Modelica Color of mass point
  _MultiBody_Types.html#Mode lor    .Mechani 
  lica.Mechanics.MultiBody.T        cs.Multi 
  ypes.Color)                       Body...  

  **Advanced**                               

  If enabled, can give wrong                 
  results, see                               
  MultiBody.UsersGuide.Tutor                 
  ial.ConnectionOfLineForces                 

  Boolean                    fixedR false    =true, if rotation frame\_a.R
                             otatio          is fixed (to directly connect
                             nAtFra          line forces)
                             me\_a           

  Boolean                    fixedR false    =true, if rotation frame\_b.R
                             otatio          is fixed (to directly connect
                             nAtFra          line forces)
                             me\_b           
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_a the component with one
  tiBody.Interfaces.Frame_a)                   cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_b the component with one
  tiBody.Interfaces.Frame_b)                   cut-force and cut-torque
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Spring "Linear translational spring with optional mass"
      import Modelica.Mechanics.MultiBody.Types;
      extends Interfaces.PartialTwoFrames;
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter Boolean showMass=true 
        "= true, if point mass shall be visualized as sphere if animation=true and m>0";

      parameter SI.TranslationalSpringConstant c(final min=0) "Spring constant";
      parameter SI.Length s_unstretched=0 "Unstretched spring length";
      parameter SI.Mass m(min=0)=0 
        "Spring mass located on the connetion line between the origin of frame_a and the origin of frame_b";
      parameter Real lengthFraction(
        min=0,
        max=1) = 0.5 
        "Location of spring mass with respect to frame_a as a fraction of the distance from frame_a to frame_b (=0: at frame_a; =1: at frame_b)";
      input SI.Distance width=world.defaultForceWidth " Width of spring";
      input SI.Distance coilWidth=width/10 " Width of spring coil";
      parameter Integer numberOfWindings=5 " Number of spring windings";
      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.SpringColor 
        " Color of spring";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      input SIunits.Diameter massDiameter=max(0, (width - 2*coilWidth)*0.9) 
        " Diameter of mass point sphere";
      input Types.Color massColor=Modelica.Mechanics.MultiBody.Types.Defaults.BodyColor 
        " Color of mass point";
      parameter Boolean fixedRotationAtFrame_a=false 
        "=true, if rotation frame_a.R is fixed (to directly connect line forces)";
      parameter Boolean fixedRotationAtFrame_b=false 
        "=true, if rotation frame_b.R is fixed (to directly connect line forces)";

      Forces.LineForceWithMass lineForce(
        animateLine=animation,
        animateMass=showMass,
        m=m,
        lengthFraction=lengthFraction,
        lineShapeType="spring",
        lineShapeHeight=coilWidth*2,
        lineShapeWidth=width,
        lineShapeExtra=numberOfWindings,
        lineShapeColor=color,
        specularCoefficient=specularCoefficient,
        massDiameter=massDiameter,
        massColor=massColor,
        fixedRotationAtFrame_a=fixedRotationAtFrame_a,
        fixedRotationAtFrame_b=fixedRotationAtFrame_b);
      Modelica.Mechanics.Translational.Components.Spring spring(
                                                     s_rel0=s_unstretched, c=c);

    equation 
      connect(lineForce.frame_a, frame_a);
      connect(lineForce.frame_b, frame_b);
      connect(spring.flange_b, lineForce.flange_b);
      connect(spring.flange_a, lineForce.flange_a);

    end Spring;

* * * * *

![image59](Modelica.Mechanics.MultiBody.Forces.DamperI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).Damper
======================================================================================================================================================================================

**Linear (velocity dependent) damper**

Information
-----------

::

**Linear damper** acting as line force between frame\_a and frame\_b. A
**force f** is exerted on the origin of frame\_b and with opposite sign
on the origin of frame\_a along the line from the origin of frame\_a to
the origin of frame\_b according to the equation:

    f = d*der(s);

where "d" is a parameter, "s" is the distance between the origin of
frame\_a and the origin of frame\_b and der(s) is the time derivative of
"s".

In the following figure a typical animation is shown where a mass is
hanging on a damper.

::

Extends from
[Interfaces.PartialLineForce](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce)
(Base model for line force elements),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  ------------------------------------------------------------------------
  Type                              Name    Default   Description
  --------------------------------- ------- --------- --------------------
  Boolean                           animati true      = true, if animation
                                    on                shall be enabled

  [TranslationalDampingConstant](Mo d                 Damping constant
  delica_SIunits.html#Modelica.SIun                   [N.s/m]
  its.TranslationalDampingConstant)                   

  Boolean                           useHeat false     =true, if heatPort
                                    Port              is enabled

  [Temperature](Modelica_SIunits.ht T       293.15    Fixed device
  ml#Modelica.SIunits.Temperature)                    temperature if
                                                      useHeatPort = false
                                                      [K]

  **Animation**                                       

  if animation = true                                 

  [Distance](Modelica_SIunits.html# length\ world.def Length of cylinder
  Modelica.SIunits.Distance)        _a      aultForce at frame\_a side [m]
                                            Length    

  [Diameter](Modelica_SIunits.html# diamete world.def Diameter of cylinder
  Modelica.SIunits.Diameter)        r\_a    aultForce at frame\_a side [m]
                                            Width     

  [Diameter](Modelica_SIunits.html# diamete 0.6\*diam Diameter of cylinder
  Modelica.SIunits.Diameter)        r\_b    eter\_a   at frame\_b side [m]

  [Color](Modelica_Mechanics_MultiB color\_ {100,100, Color at frame\_a
  ody_Types.html#Modelica.Mechanics a       100}      
  .MultiBody.Types.Color)                             

  [Color](Modelica_Mechanics_MultiB color\_ {155,155, Color at frame\_b
  ody_Types.html#Modelica.Mechanics b       155}      
  .MultiBody.Types.Color)                             

  [SpecularCoefficient](Modelica_Me specula world.def Reflection of
  chanics_MultiBody_Types.html#Mode rCoeffi aultSpecu ambient light (= 0:
  lica.Mechanics.MultiBody.Types.Sp cient   larCoeffi light is completely
  ecularCoefficient)                        c...      absorbed)

  **Advanced**                                        

  [Position](Modelica_SIunits.html# s\_smal 1.E-6     Prevent
  Modelica.SIunits.Position)        l                 zero-division if
                                                      relative distance
                                                      s=0 [m]

  If enabled, can give wrong                          
  results, see                                        
  MultiBody.UsersGuide.Tutorial.Con                   
  nectionOfLineForces                                 

  Boolean                           fixedRo false     =true, if rotation
                                    tationA           frame\_a.R is fixed
                                    tFrame\           (to directly connect
                                    _a                line forces)

  Boolean                           fixedRo false     =true, if rotation
                                    tationA           frame\_b.R is fixed
                                    tFrame\           (to directly connect
                                    _b                line forces)
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ---------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_a the force element with one
  tiBody.Interfaces.Frame_a)                   cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_b the force element with one
  tiBody.Interfaces.Frame_b)                   cut-force and cut-torque

  [HeatPort\_a](Modelica_Thermal_HeatTran heat Optional port to which
  sfer_Interfaces.html#Modelica.Thermal.H Port dissipated losses are
  eatTransfer.Interfaces.HeatPort_a)           transported in form of heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Damper "Linear (velocity dependent) damper"
      import Modelica.Mechanics.MultiBody.Types;
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter SI.TranslationalDampingConstant d(final min=0, start = 0) 
        "Damping constant";
      parameter SI.Distance length_a=world.defaultForceLength 
        " Length of cylinder at frame_a side";
      input SIunits.Diameter diameter_a=world.defaultForceWidth 
        " Diameter of cylinder at frame_a side";
      input SIunits.Diameter diameter_b=0.6*diameter_a 
        " Diameter of cylinder at frame_b side";
      input Types.Color color_a={100,100,100} " Color at frame_a";
      input Types.Color color_b={155,155,155} " Color at frame_b";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      extends Interfaces.PartialLineForce;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort
        (final T=293.15);
    protected 
      SI.Position r0_b[3]=e_a*noEvent(min(length_a, s));
      Visualizers.Advanced.Shape shape_a(
        shapeType="cylinder",
        color=color_a,
        specularCoefficient=specularCoefficient,
        length=noEvent(min(length_a, s)),
        width=diameter_a,
        height=diameter_a,
        lengthDirection=e_a,
        widthDirection={0,1,0},
        r=frame_a.r_0,
        R=frame_a.R) if 
                       world.enableAnimation and animation;
      Visualizers.Advanced.Shape shape_b(
        shapeType="cylinder",
        color=color_b,
        specularCoefficient=specularCoefficient,
        length=noEvent(max(s - length_a, 0)),
        width=diameter_b,
        height=diameter_b,
        lengthDirection=e_a,
        widthDirection={0,1,0},
        r_shape=r0_b,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
    equation 
      f = d*der(s);
      lossPower = f*der(s);
    end Damper;

* * * * *

![image60](Modelica.Mechanics.MultiBody.Forces.SpringDamperParallelI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).SpringDamperParallel
==================================================================================================================================================================================================================

**Linear spring and linear damper in parallel**

Information
-----------

::

**Linear spring** and **dinear damper** in parallel acting as line force
between frame\_a and frame\_b. A **force f** is exerted on the origin of
frame\_b and with opposite sign on the origin of frame\_a along the line
from the origin of frame\_a to the origin of frame\_b according to the
equation:

    f = c*(s - s_unstretched) + d*der(s);

where "c", "s\_unstretched" and "d" are parameters, "s" is the distance
between the origin of frame\_a and the origin of frame\_b and der(s) is
the time derivative of s.

::

Extends from
[Interfaces.PartialLineForce](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce)
(Base model for line force elements),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  ------------------------------------------------------------------------
  Type                              Name    Default   Description
  --------------------------------- ------- --------- --------------------
  Boolean                           animati true      = true, if animation
                                    on                shall be enabled

  [TranslationalSpringConstant](Mod c                 Spring constant
  elica_SIunits.html#Modelica.SIuni                   [N/m]
  ts.TranslationalSpringConstant)                     

  [Length](Modelica_SIunits.html#Mo s\_unst 0         Unstretched spring
  delica.SIunits.Length)            retched           length [m]

  [TranslationalDampingConstant](Mo d       0         Damping constant
  delica_SIunits.html#Modelica.SIun                   [N.s/m]
  its.TranslationalDampingConstant)                   

  Boolean                           useHeat false     =true, if heatPort
                                    Port              is enabled

  [Temperature](Modelica_SIunits.ht T       293.15    Fixed device
  ml#Modelica.SIunits.Temperature)                    temperature if
                                                      useHeatPort = false
                                                      [K]

  **Animation**                                       

  if animation = true                                 

  [Distance](Modelica_SIunits.html# width   world.def Width of spring [m]
  Modelica.SIunits.Distance)                aultForce 
                                            Width     

  [Distance](Modelica_SIunits.html# coilWid width/10  Width of spring coil
  Modelica.SIunits.Distance)        th                [m]

  Integer                           numberO 5         Number of spring
                                    fWindin           windings
                                    gs                

  [Color](Modelica_Mechanics_MultiB color   Modelica. Color of spring
  ody_Types.html#Modelica.Mechanics         Mechanics 
  .MultiBody.Types.Color)                   .MultiBod 
                                            y...      

  [SpecularCoefficient](Modelica_Me specula world.def Reflection of
  chanics_MultiBody_Types.html#Mode rCoeffi aultSpecu ambient light (= 0:
  lica.Mechanics.MultiBody.Types.Sp cient   larCoeffi light is completely
  ecularCoefficient)                        c...      absorbed)

  **Advanced**                                        

  [Position](Modelica_SIunits.html# s\_smal 1.E-6     Prevent
  Modelica.SIunits.Position)        l                 zero-division if
                                                      relative distance
                                                      s=0 [m]

  If enabled, can give wrong                          
  results, see                                        
  MultiBody.UsersGuide.Tutorial.Con                   
  nectionOfLineForces                                 

  Boolean                           fixedRo false     =true, if rotation
                                    tationA           frame\_a.R is fixed
                                    tFrame\           (to directly connect
                                    _a                line forces)

  Boolean                           fixedRo false     =true, if rotation
                                    tationA           frame\_b.R is fixed
                                    tFrame\           (to directly connect
                                    _b                line forces)
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ---------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_a the force element with one
  tiBody.Interfaces.Frame_a)                   cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_b the force element with one
  tiBody.Interfaces.Frame_b)                   cut-force and cut-torque

  [HeatPort\_a](Modelica_Thermal_HeatTran heat Optional port to which
  sfer_Interfaces.html#Modelica.Thermal.H Port dissipated losses are
  eatTransfer.Interfaces.HeatPort_a)           transported in form of heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SpringDamperParallel 
      "Linear spring and linear damper in parallel"
      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types;
      parameter Boolean animation=true "= true, if animation shall be enabled";
      parameter SI.TranslationalSpringConstant c(final min=0) "Spring constant";
      parameter SI.Length s_unstretched=0 "Unstretched spring length";
      parameter SI.TranslationalDampingConstant d(final min=0) = 0 
        "Damping constant";
      input SI.Distance width=world.defaultForceWidth " Width of spring";
      input SI.Distance coilWidth=width/10 " Width of spring coil";
      parameter Integer numberOfWindings=5 " Number of spring windings";
      input Types.Color color=Modelica.Mechanics.MultiBody.Types.Defaults.SpringColor 
        " Color of spring";
      input Types.SpecularCoefficient specularCoefficient = world.defaultSpecularCoefficient 
        "Reflection of ambient light (= 0: light is completely absorbed)";
      extends Interfaces.PartialLineForce;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort
        (final T=293.15);

    protected 
      Modelica.SIunits.Force f_d "Damping force";
      Visualizers.Advanced.Shape shape(
        shapeType="spring",
        color=color,
        length=s,
        width=width,
        height=coilWidth*2,
        lengthDirection=e_a,
        widthDirection={0,1,0},
        extra=numberOfWindings,
        r=frame_a.r_0,
        R=frame_a.R) if world.enableAnimation and animation;
    equation 
      f_d = d*der(s);
      f = c*(s - s_unstretched) + f_d;
      lossPower = f_d*der(s);
    end SpringDamperParallel;

* * * * *

![image61](Modelica.Mechanics.MultiBody.Forces.SpringDamperSeriesI.png) [Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).SpringDamperSeries
==============================================================================================================================================================================================================

**Linear spring and linear damper in series connection**

Information
-----------

::

**Linear spring** and **linear damper** in series connection acting as
line force between frame\_a and frame\_b:

    frame_a --> damper ----> spring --> frame_b
            |              |
            |-- s_damper --|  (s_damper is the state variable of this system)

A **force f** is exerted on the origin of frame\_b and with opposite
sign on the origin of frame\_a along the line from the origin of
frame\_a to the origin of frame\_b according to the equations:

    f = c*(s - s_unstretched - s_damper);
    f = d*der(s_damper);

where "c", "s\_unstretched" and "d" are parameters, "s" is the distance
between the origin of frame\_a and the origin of frame\_b. "s\_damper"
is the length of the damper (= an internal state of this force element)
and der(s\_damper) is the time derivative of s\_damper.

::

Extends from
[Interfaces.PartialLineForce](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce)
(Base model for line force elements),
[Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to dissipate
losses, used for textual modeling, i.e., for elementary models).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name      Def Description
                                               aul 
                                               t   
  ---------------------------------- --------- --- ------------------------
  [TranslationalSpringConstant](Mode c             Spring constant [N/m]
  lica_SIunits.html#Modelica.SIunits               
  .TranslationalSpringConstant)                    

  [Length](Modelica_SIunits.html#Mod s\_unstre 0   Unstretched spring
  elica.SIunits.Length)              tched         length [m]

  [TranslationalDampingConstant](Mod d         0   Damping constant [N.s/m]
  elica_SIunits.html#Modelica.SIunit               
  s.TranslationalDampingConstant)                  

  [Length](Modelica_SIunits.html#Mod s\_damper 0   Initial length of damper
  elica.SIunits.Length)              \_start       [m]

  Boolean                            useHeatPo fal =true, if heatPort is
                                     rt        se  enabled

  [Temperature](Modelica_SIunits.htm T         293 Fixed device temperature
  l#Modelica.SIunits.Temperature)              .15 if useHeatPort = false
                                                   [K]

  **Advanced**                                     

  [Position](Modelica_SIunits.html#M s\_small  1.E Prevent zero-division if
  odelica.SIunits.Position)                    -6  relative distance s=0
                                                   [m]

  If enabled, can give wrong                       
  results, see                                     
  MultiBody.UsersGuide.Tutorial.Conn               
  ectionOfLineForces                               

  Boolean                            fixedRota fal =true, if rotation
                                     tionAtFra se  frame\_a.R is fixed (to
                                     me\_a         directly connect line
                                                   forces)

  Boolean                            fixedRota fal =true, if rotation
                                     tionAtFra se  frame\_b.R is fixed (to
                                     me\_b         directly connect line
                                                   forces)
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ---------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_a the force element with one
  tiBody.Interfaces.Frame_a)                   cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_b the force element with one
  tiBody.Interfaces.Frame_b)                   cut-force and cut-torque

  [HeatPort\_a](Modelica_Thermal_HeatTran heat Optional port to which
  sfer_Interfaces.html#Modelica.Thermal.H Port dissipated losses are
  eatTransfer.Interfaces.HeatPort_a)           transported in form of heat
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SpringDamperSeries 
      "Linear spring and linear damper in series connection"
      import SI = Modelica.SIunits;
      parameter SI.TranslationalSpringConstant c(final min=0) "Spring constant";
      parameter SI.Length s_unstretched=0 "Unstretched spring length";
      parameter SI.TranslationalDampingConstant d(final min=0) = 0 
        "Damping constant";
      parameter SI.Length s_damper_start=0 "Initial length of damper";
      SI.Position s_damper(start=s_damper_start, fixed=true) 
        "Actual length of damper (frame_a - damper - spring - frame_b)";
      extends Interfaces.PartialLineForce;
      extends Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort
        (final T=293.15);
    equation 
      f = c*(s - s_unstretched - s_damper);
      d*der(s_damper) = f;
      lossPower = f*der(s_damper);
    end SpringDamperSeries;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:27 2010.
