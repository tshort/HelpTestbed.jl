% Modelica.Mechanics.MultiBody.Forces.Internal
% 
% 

[Modelica.Mechanics.MultiBody.Forces](Modelica_Mechanics_MultiBody_Forces.html#Modelica.Mechanics.MultiBody.Forces).Internal
============================================================================================================================

**Internal package, should not be used by user**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                     Description
  -------------------------------------------------------- ---------------
  ![image5](Modelica.Mechanics.MultiBody.Forces.Internal.B Force acting
  asicForceS.png)                                          between two
  [BasicForce](Modelica_Mechanics_MultiBody_Forces_Interna frames, defined
  l.html#Modelica.Mechanics.MultiBody.Forces.Internal.Basi by 3 input
  cForce)                                                  signals

  ![image6](Modelica.Mechanics.MultiBody.Forces.Internal.B Torque acting
  asicTorqueS.png)                                         between two
  [BasicTorque](Modelica_Mechanics_MultiBody_Forces_Intern frames, defined
  al.html#Modelica.Mechanics.MultiBody.Forces.Internal.Bas by 3 input
  icTorque)                                                signals

  ![image7](Modelica.Mechanics.MultiBody.Forces.Internal.B External force
  asicWorldForceS.png)                                     acting at
  [BasicWorldForce](Modelica_Mechanics_MultiBody_Forces_In frame\_b,
  ternal.html#Modelica.Mechanics.MultiBody.Forces.Internal defined by 3
  .BasicWorldForce)                                        input signals

  ![image8](Modelica.Mechanics.MultiBody.Forces.Internal.B External torque
  asicWorldTorqueS.png)                                    acting at
  [BasicWorldTorque](Modelica_Mechanics_MultiBody_Forces_I frame\_b,
  nternal.html#Modelica.Mechanics.MultiBody.Forces.Interna defined by 3
  l.BasicWorldTorque)                                      input signals

  ![image9](Modelica.Mechanics.MultiBody.Forces.Internal.s Standard
  tandardGravityAccelerationS.png)                         gravity fields
  [standardGravityAcceleration](Modelica_Mechanics_MultiBo (no/parallel/po
  dy_Forces_Internal.html#Modelica.Mechanics.MultiBody.For int
  ces.Internal.standardGravityAcceleration)                field)
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Mechanics.MultiBody.Forces.Internal.BasicForceI.png) [Modelica.Mechanics.MultiBody.Forces.Internal](Modelica_Mechanics_MultiBody_Forces_Internal.html#Modelica.Mechanics.MultiBody.Forces.Internal).BasicForce
==================================================================================================================================================================================================================================

**Force acting between two frames, defined by 3 input signals**

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

If resolveInFrame is not ResolveInFrameAB.frame\_resolve, then the
position vector and the orientation object of frame\_resolve must be set
to constant values from the outside in order that the model remains
balanced (these constant values are ignored).

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames)
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name  Default   Description
  ------------------------------- ----- --------- -------------------------
  [ResolveInFrameAB](Modelica_Mec resol Modelica. Frame in which force is
  hanics_MultiBody_Types.html#Mod veInF Mechanics resolved (1: world, 2:
  elica.Mechanics.MultiBody.Types rame  .MultiBod frame\_a, 3: frame\_b, 4:
  .ResolveInFrameAB)                    y...      frame\_resolve)
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

    model BasicForce 
      "Force acting between two frames, defined by 3 input signals"

      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;
      Interfaces.Frame_resolve frame_resolve 
        "The input signals are optionally resolved in this frame";
      Modelica.Blocks.Interfaces.RealInput force[3](each final quantity="Force", each final unit=
                     "N") 
        "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b 
        "Frame in which force is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";

      Modelica.SIunits.Position r_0[3] 
        "Position vector from origin of frame_a to origin of frame_b resolved in world frame";
      Modelica.SIunits.Force f_b_0[3] "frame_b.f resoved in world frame";

    equation 
      assert(cardinality(frame_resolve) > 0, "Connector frame_resolve must be connected at least once and frame_resolve.r_0/.R must be set");
      frame_resolve.f = zeros(3);
      frame_resolve.t = zeros(3);

       if resolveInFrame == ResolveInFrameAB.frame_a then
          f_b_0     = -Frames.resolve1(frame_a.R, force);
          frame_b.f =  Frames.resolve2(frame_b.R, f_b_0);
       elseif resolveInFrame == ResolveInFrameAB.frame_b then
          f_b_0     = -Frames.resolve1(frame_b.R, force);
          frame_b.f = -force;
       elseif resolveInFrame == ResolveInFrameAB.world then
          f_b_0     = -force;
          frame_b.f =  Frames.resolve2(frame_b.R, f_b_0);
       elseif resolveInFrame == ResolveInFrameAB.frame_resolve then
          f_b_0     = -Frames.resolve1(frame_resolve.R, force);
          frame_b.f = Frames.resolve2(frame_b.R, f_b_0);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          f_b_0     = zeros(3);
          frame_b.f = zeros(3);
       end if;
       frame_b.t = zeros(3);

       // Force and torque balance
       r_0 = frame_b.r_0 - frame_a.r_0;
       zeros(3) = frame_a.f + Frames.resolve2(frame_a.R, f_b_0);
       zeros(3) = frame_a.t + Frames.resolve2(frame_a.R, cross(r_0, f_b_0));
    end BasicForce;

* * * * *

![image11](Modelica.Mechanics.MultiBody.Forces.Internal.BasicTorqueI.png) [Modelica.Mechanics.MultiBody.Forces.Internal](Modelica_Mechanics_MultiBody_Forces_Internal.html#Modelica.Mechanics.MultiBody.Forces.Internal).BasicTorque
====================================================================================================================================================================================================================================

**Torque acting between two frames, defined by 3 input signals**

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

If resolveInFrame is not ResolveInFrameAB.frame\_resolve, then the
position vector and the orientation object of frame\_resolve must be set
to constant values from the outside in order that the model remains
balanced (these constant values are ignored).

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames)
(Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name  Default   Description
  ------------------------------- ----- --------- -------------------------
  [ResolveInFrameAB](Modelica_Mec resol Modelica. Frame in which torque is
  hanics_MultiBody_Types.html#Mod veInF Mechanics resolved (1: world, 2:
  elica.Mechanics.MultiBody.Types rame  .MultiBod frame\_a, 3: frame\_b, 4:
  .ResolveInFrameAB)                    y...      frame\_resolve)
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

    model BasicTorque 
      "Torque acting between two frames, defined by 3 input signals"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB;
      extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;
      Interfaces.Frame_resolve frame_resolve 
        "The input signals are optionally resolved in this frame";

      Modelica.Blocks.Interfaces.RealInput torque[3](each final quantity="Torque", each final unit=
                     "N.m") 
        "x-, y-, z-coordiantes of torque resolved in frame defined by resolveInFrame";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_b 
        "Frame in which torque is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";

      SI.Position r_0[3] 
        "Position vector from origin of frame_a to origin of frame_b resolved in world frame";
      SI.Torque t_b_0[3] "frame_b.t resoved in world frame";

    equation 
      assert(cardinality(frame_resolve) > 0, "Connector frame_resolve must be connected at least once and frame_resolve.r_0/.R must be set");
      frame_resolve.f = zeros(3);
      frame_resolve.t = zeros(3);

      r_0 = frame_b.r_0 - frame_a.r_0;
      frame_a.f = zeros(3);
      frame_b.f = zeros(3);

       if resolveInFrame == ResolveInFrameAB.frame_a then
          t_b_0     = -Frames.resolve1(frame_a.R, torque);
          frame_b.t =  Frames.resolve2(frame_b.R, t_b_0);
       elseif resolveInFrame == ResolveInFrameAB.frame_b then
          t_b_0     = -Frames.resolve1(frame_b.R, torque);
          frame_b.t = -torque;
       elseif resolveInFrame == ResolveInFrameAB.world then
          t_b_0     = -torque;
          frame_b.t =  Frames.resolve2(frame_b.R, t_b_0);
       elseif resolveInFrame == ResolveInFrameAB.frame_resolve then
          t_b_0     = -Frames.resolve1(frame_resolve.R, torque);
          frame_b.t =  Frames.resolve2(frame_b.R, t_b_0);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          t_b_0     = zeros(3);
          frame_b.t = zeros(3);
       end if;

       // torque balance
       zeros(3) = frame_a.t + Frames.resolve2(frame_a.R, t_b_0);
    end BasicTorque;

* * * * *

![image12](Modelica.Mechanics.MultiBody.Forces.Internal.BasicWorldForceI.png) [Modelica.Mechanics.MultiBody.Forces.Internal](Modelica_Mechanics_MultiBody_Forces_Internal.html#Modelica.Mechanics.MultiBody.Forces.Internal).BasicWorldForce
============================================================================================================================================================================================================================================

**External force acting at frame\_b, defined by 3 input signals**

Information
-----------

::

The 3 signals of the **force** connector are interpreted as the x-,
y-and z-coordinates of a **force** acting at the frame connector to
which this component is attached. Via parameter **resolveInFrame** it is
defined, in which frame these coordinates shall be resolved:

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

If resolveInFrame is not Types.ResolveInFrameB.frame\_resolve, then the
position vector and the orientation object of frame\_resolve must be set
to constant values from the outside in order that the model remains
balanced (these constant values are ignored).

::

Extends from
[Interfaces.PartialOneFrame\_b](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_b)
(Base model for components providing one frame\_b connector + outer
world + assert to guarantee that the component is connected).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name  Default    Description
  --------------------------------- ----- ---------- ----------------------
  [ResolveInFrameB](Modelica_Mechan resol Modelica.M Frame in which force
  ics_MultiBody_Types.html#Modelica veInF echanics.M is resolved (1: world,
  .Mechanics.MultiBody.Types.Resolv rame  ultiBody.. 2: frame\_b, 3:
  eInFrameB)                              .          frame\_resolve)
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

    model BasicWorldForce 
      "External force acting at frame_b, defined by 3 input signals"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameB;
      extends Interfaces.PartialOneFrame_b;
      Interfaces.Frame_resolve frame_resolve 
        "The input signals are optionally resolved in this frame";

      Modelica.Blocks.Interfaces.RealInput force[3](each final quantity="Force", each final unit=
                     "N") 
        "x-, y-, z-coordinates of force resolved in frame defined by resolveInFrame";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameB
        resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world 
        "Frame in which force is resolved (1: world, 2: frame_b, 3: frame_resolve)";

    equation 
       assert(cardinality(frame_resolve) > 0, "Connector frame_resolve must be connected at least once and frame_resolve.r_0/.R must be set");
       frame_resolve.f = zeros(3);
       frame_resolve.t = zeros(3);

       if resolveInFrame == ResolveInFrameB.world then
          frame_b.f = -Frames.resolve2(frame_b.R, force);
       elseif resolveInFrame == ResolveInFrameB.frame_b then
          frame_b.f = -force;
       elseif resolveInFrame == ResolveInFrameB.frame_resolve then
          frame_b.f = -Frames.resolveRelative(force, frame_resolve.R, frame_b.R);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          frame_b.f = zeros(3);
       end if;
       frame_b.t = zeros(3);
    end BasicWorldForce;

* * * * *

![image13](Modelica.Mechanics.MultiBody.Forces.Internal.BasicWorldTorqueI.png) [Modelica.Mechanics.MultiBody.Forces.Internal](Modelica_Mechanics_MultiBody_Forces_Internal.html#Modelica.Mechanics.MultiBody.Forces.Internal).BasicWorldTorque
==============================================================================================================================================================================================================================================

**External torque acting at frame\_b, defined by 3 input signals**

Information
-----------

::

The 3 signals of the **torque** connector are interpreted as the x-,
y-and z-coordinates of a **torque** acting at the frame connector to
which this component is attached. Via parameter **resolveInFrame** it is
defined, in which frame these coordinates shall be resolved:

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

If resolveInFrame is not Types.ResolveInFrameB.frame\_resolve, then the
position vector and the orientation object of frame\_resolve must be set
to constant values from the outside in order that the model remains
balanced (these constant values are ignored).

::

Extends from
[Interfaces.PartialOneFrame\_b](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_b)
(Base model for components providing one frame\_b connector + outer
world + assert to guarantee that the component is connected).

Parameters
----------

  --------------------------------------------------------------------------
  Type                              Name  Default    Description
  --------------------------------- ----- ---------- -----------------------
  [ResolveInFrameB](Modelica_Mechan resol Modelica.M Frame in which torque
  ics_MultiBody_Types.html#Modelica veInF echanics.M is resolved (1: world,
  .Mechanics.MultiBody.Types.Resolv rame  ultiBody.. 2: frame\_b, 3:
  eInFrameB)                              .          frame\_resolve)
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

  input                                  torque x-, y-, z-coordinates of
  [RealInput](Modelica_Blocks_Interfaces [3]    torque resolved in frame
  .html#Modelica.Blocks.Interfaces.RealI        defined by resolveInFrame
  nput)                                         [N.m]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model BasicWorldTorque 
      "External torque acting at frame_b, defined by 3 input signals"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameB;
      extends Interfaces.PartialOneFrame_b;
      Interfaces.Frame_resolve frame_resolve 
        "The input signals are optionally resolved in this frame";

      Modelica.Blocks.Interfaces.RealInput torque[3](each final quantity="Torque", each final unit=
                     "N.m") 
        "x-, y-, z-coordinates of torque resolved in frame defined by resolveInFrame";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameB
        resolveInFrame=
        Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.world 
        "Frame in which torque is resolved (1: world, 2: frame_b, 3: frame_resolve)";

    equation 
       assert(cardinality(frame_resolve) > 0, "Connector frame_resolve must be connected at least once and frame_resolve.r_0/.R must be set");
       frame_resolve.f = zeros(3);
       frame_resolve.t = zeros(3);

       if resolveInFrame == ResolveInFrameB.world then
          frame_b.t = -Frames.resolve2(frame_b.R, torque);
       elseif resolveInFrame == ResolveInFrameB.frame_b then
          frame_b.t = -torque;
       elseif resolveInFrame == ResolveInFrameB.frame_resolve then
          frame_b.t = -Frames.resolveRelative(torque, frame_resolve.R, frame_b.R);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          frame_b.t = zeros(3);
       end if;
       frame_b.f = zeros(3);
    end BasicWorldTorque;

* * * * *

[Modelica.Mechanics.MultiBody.Forces.Internal](Modelica_Mechanics_MultiBody_Forces_Internal.html#Modelica.Mechanics.MultiBody.Forces.Internal).standardGravityAcceleration
==========================================================================================================================================================================

**Standard gravity fields (no/parallel/point field)**

Information
-----------

::

This function defines the standard gravity fields for the World object.

  ------------------------ ------------------ ----------------------------
  ***gravityType***        ***gravity         ***description***
                           [m/s2]***          

  Types.GravityType.NoGrav = {0,0,0}          No gravity
  ity                                         

  Types.GravityType.Unifor = g                Constant parallel gravity
  mGravity                                    field

  Types.GravityType.PointG =                  Point gravity field with
  ravity                   -(mue/(r\*r))\*r/| spherical mass
                           r|                 
  ------------------------ ------------------ ----------------------------

::

Extends from
[Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration).

Inputs
------

  ------------------------------------------------------------------------
  Type                              Name Def Description
                                         aul 
                                         t   
  --------------------------------- ---- --- -----------------------------
  [Position](Modelica_SIunits.html# r[3]     Position vector from world
  Modelica.SIunits.Position)                 frame to actual point,
                                             resolved in world frame [m]

  [GravityTypes](Modelica_Mechanics grav     Type of gravity field
  _MultiBody_Types.html#Modelica.Me ityT     
  chanics.MultiBody.Types.GravityTy ype      
  pes)                                       

  [Acceleration](Modelica_SIunits.h g[3]     Constant gravity
  tml#Modelica.SIunits.Acceleration          acceleration, resolved in
  )                                          world frame, if
                                             gravityType=UniformGravity
                                             [m/s2]

  Real                              mue      Field constant of point
                                             gravity field, if
                                             gravityType=PointGravity
                                             [m3/s2]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                              Name   Description
  --------------------------------- ------ -------------------------------
  [Acceleration](Modelica_SIunits.h gravit Gravity acceleration at
  tml#Modelica.SIunits.Acceleration y[3]   position r, resolved in world
  )                                        frame [m/s2]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function standardGravityAcceleration 
      "Standard gravity fields (no/parallel/point field)"
      extends Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration;
      import Modelica.Mechanics.MultiBody.Types.GravityTypes;
      input GravityTypes gravityType "Type of gravity field";
      input Modelica.SIunits.Acceleration g[3] 
        "Constant gravity acceleration, resolved in world frame, if gravityType=UniformGravity";
      input Real mue(unit="m3/s2") 
        "Field constant of point gravity field, if gravityType=PointGravity";
    algorithm 
    gravity := if gravityType == GravityTypes.UniformGravity then g else 
               if gravityType == GravityTypes.PointGravity then 
                  -(mue/(r*r))*(r/Modelica.Math.Vectors.length(r)) else zeros(3);
    end standardGravityAcceleration;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:27 2010.
