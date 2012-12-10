% Modelica.Mechanics.MultiBody.Sensors.Internal
% 
% 

[Modelica.Mechanics.MultiBody.Sensors](Modelica_Mechanics_MultiBody_Sensors.html#Modelica.Mechanics.MultiBody.Sensors).Internal
===============================================================================================================================

**Internal package, should not be used by user**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  ![image15](Modelica.Mechanics.MultiBody.Senso Partial absolute sensor
  rs.Internal.PartialAbsoluteSensorS.png)       model for sensors defined
  [PartialAbsoluteSensor](Modelica_Mechanics_Mu by components
  ltiBody_Sensors_Internal.html#Modelica.Mechan 
  ics.MultiBody.Sensors.Internal.PartialAbsolut 
  eSensor)                                      

  ![image16](Modelica.Mechanics.MultiBody.Senso Partial absolute sensor
  rs.Internal.PartialAbsoluteBaseSensorS.png)   models for sensors defined
  [PartialAbsoluteBaseSensor](Modelica_Mechanic by equations
  s_MultiBody_Sensors_Internal.html#Modelica.Me (frame\_resolve must be
  chanics.MultiBody.Sensors.Internal.PartialAbs connected exactly once)
  oluteBaseSensor)                              

  ![image17](Modelica.Mechanics.MultiBody.Senso Partial relative sensor
  rs.Internal.PartialRelativeSensorS.png)       model for sensors defined
  [PartialRelativeSensor](Modelica_Mechanics_Mu by components
  ltiBody_Sensors_Internal.html#Modelica.Mechan 
  ics.MultiBody.Sensors.Internal.PartialRelativ 
  eSensor)                                      

  ![image18](Modelica.Mechanics.MultiBody.Senso Partial relative sensor
  rs.Internal.PartialRelativeBaseSensorS.png)   models for sensors defined
  [PartialRelativeBaseSensor](Modelica_Mechanic by equations
  s_MultiBody_Sensors_Internal.html#Modelica.Me (frame\_resolve must be
  chanics.MultiBody.Sensors.Internal.PartialRel connected exactly once)
  ativeBaseSensor)                              

  ![image19](Modelica.Mechanics.MultiBody.Senso Measure absolute position
  rs.Internal.BasicAbsolutePositionS.png)       vector (same as
  [BasicAbsolutePosition](Modelica_Mechanics_Mu Sensors.AbsolutePosition,
  ltiBody_Sensors_Internal.html#Modelica.Mechan but frame\_resolve is not
  ics.MultiBody.Sensors.Internal.BasicAbsoluteP conditional and must be
  osition)                                      connected)

  ![image20](Modelica.Mechanics.MultiBody.Senso Measure absolute angular
  rs.Internal.BasicAbsoluteAngularVelocityS.png velocity
  )                                             
  [BasicAbsoluteAngularVelocity](Modelica_Mecha 
  nics_MultiBody_Sensors_Internal.html#Modelica 
  .Mechanics.MultiBody.Sensors.Internal.BasicAb 
  soluteAngularVelocity)                        

  ![image21](Modelica.Mechanics.MultiBody.Senso Measure relative position
  rs.Internal.BasicRelativePositionS.png)       vector (same as
  [BasicRelativePosition](Modelica_Mechanics_Mu Sensors.RelativePosition,
  ltiBody_Sensors_Internal.html#Modelica.Mechan but frame\_resolve is not
  ics.MultiBody.Sensors.Internal.BasicRelativeP conditional and must be
  osition)                                      connected)

  ![image22](Modelica.Mechanics.MultiBody.Senso Measure relative angular
  rs.Internal.BasicRelativePositionS.png)       velocity
  [BasicRelativeAngularVelocity](Modelica_Mecha 
  nics_MultiBody_Sensors_Internal.html#Modelica 
  .Mechanics.MultiBody.Sensors.Internal.BasicRe 
  lativeAngularVelocity)                        

  ![image23](Modelica.Mechanics.MultiBody.Senso Transform absolute vector
  rs.Internal.BasicTransformAbsoluteVectorS.png in to another frame
  )                                             
  [BasicTransformAbsoluteVector](Modelica_Mecha 
  nics_MultiBody_Sensors_Internal.html#Modelica 
  .Mechanics.MultiBody.Sensors.Internal.BasicTr 
  ansformAbsoluteVector)                        

  ![image24](Modelica.Mechanics.MultiBody.Senso Transform relative vector
  rs.Internal.BasicTransformRelativeVectorS.png in to another frame
  )                                             
  [BasicTransformRelativeVector](Modelica_Mecha 
  nics_MultiBody_Sensors_Internal.html#Modelica 
  .Mechanics.MultiBody.Sensors.Internal.BasicTr 
  ansformRelativeVector)                        

  ![image25](Modelica.Mechanics.MultiBody.Senso Set force and torque to
  rs.Internal.ZeroForceAndTorqueS.png)          zero
  [ZeroForceAndTorque](Modelica_Mechanics_Multi 
  Body_Sensors_Internal.html#Modelica.Mechanics 
  .MultiBody.Sensors.Internal.ZeroForceAndTorqu 
  e)                                            

  ![image26](Modelica.Mechanics.MultiBody.Senso Base model to measure the
  rs.Internal.PartialCutForceSensorS.png)       cut force and/or torque
  [PartialCutForceSensor](Modelica_Mechanics_Mu between two frames,
  ltiBody_Sensors_Internal.html#Modelica.Mechan defined by components
  ics.MultiBody.Sensors.Internal.PartialCutForc 
  eSensor)                                      

  ![image27](Modelica.Mechanics.MultiBody.Senso Base model to measure the
  rs.Internal.PartialCutForceSensorS.png)       cut force and/or torque
  [PartialCutForceBaseSensor](Modelica_Mechanic between two frames,
  s_MultiBody_Sensors_Internal.html#Modelica.Me defined by equations
  chanics.MultiBody.Sensors.Internal.PartialCut (frame\_resolve must be
  ForceBaseSensor)                              connected exactly once)

  ![image28](Modelica.Mechanics.MultiBody.Senso Measure cut force vector
  rs.Internal.BasicCutForceS.png)               (frame\_resolve must be
  [BasicCutForce](Modelica_Mechanics_MultiBody_ connected)
  Sensors_Internal.html#Modelica.Mechanics.Mult 
  iBody.Sensors.Internal.BasicCutForce)         

  ![image29](Modelica.Mechanics.MultiBody.Senso Measure cut torque vector
  rs.Internal.BasicCutForceS.png)               (frame\_resolve must be
  [BasicCutTorque](Modelica_Mechanics_MultiBody connected)
  _Sensors_Internal.html#Modelica.Mechanics.Mul 
  tiBody.Sensors.Internal.BasicCutTorque)       
  ------------------------------------------------------------------------

* * * * *

![image30](Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteSensorI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).PartialAbsoluteSensor
============================================================================================================================================================================================================================================================

**Partial absolute sensor model for sensors defined by components**

Information
-----------

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                      Name Description
  ----------------------------------------- ---- -------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_I fram Coordinate system at
  nterfaces.html#Modelica.Mechanics.MultiBo e\_a which the kinematic
  dy.Interfaces.Frame_a)                         quantities are measured
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialAbsoluteSensor 
      "Partial absolute sensor model for sensors defined by components"
      extends Modelica.Icons.RotationalSensor;

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
        "Coordinate system at which the kinematic quantities are measured";

    equation 
       assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
    end PartialAbsoluteSensor;

* * * * *

![image31](Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensorI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).PartialAbsoluteBaseSensor
====================================================================================================================================================================================================================================================================

**Partial absolute sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)**

Information
-----------

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name   Description
  ------------------------------------------ ------ -----------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_In frame\ Coordinate system from
  terfaces.html#Modelica.Mechanics.MultiBody _a     which kinematic
  .Interfaces.Frame_a)                              quantities are measured

  [Frame\_resolve](Modelica_Mechanics_MultiB frame\ Coordinate system in
  ody_Interfaces.html#Modelica.Mechanics.Mul _resol which vector is
  tiBody.Interfaces.Frame_resolve)           ve     optionally resolved
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PartialAbsoluteBaseSensor 
      "Partial absolute sensor models for sensors defined by equations (frame_resolve must be connected exactly once)"
      extends Modelica.Icons.RotationalSensor;

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
        "Coordinate system from which kinematic quantities are measured";

      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve 
        "Coordinate system in which vector is optionally resolved";

    equation 
       assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
       assert(cardinality(frame_resolve) == 1, "Connector frame_resolve must be connected exactly once");
       frame_a.f = zeros(3);
       frame_a.t = zeros(3);
       frame_resolve.f = zeros(3);
       frame_resolve.t = zeros(3);
    end PartialAbsoluteBaseSensor;

* * * * *

![image32](Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeSensorI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).PartialRelativeSensor
============================================================================================================================================================================================================================================================

**Partial relative sensor model for sensors defined by components**

Information
-----------

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name   Description
  ------------------------------------------------------ ------ -----------
  [Frame\_a](Modelica_Mechanics_MultiBody_Interfaces.htm frame\ Coordinate
  l#Modelica.Mechanics.MultiBody.Interfaces.Frame_a)     _a     system a

  [Frame\_b](Modelica_Mechanics_MultiBody_Interfaces.htm frame\ Coordinate
  l#Modelica.Mechanics.MultiBody.Interfaces.Frame_b)     _b     system b
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialRelativeSensor 
      "Partial relative sensor model for sensors defined by components"
      extends Modelica.Icons.RotationalSensor;

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system a";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system b";

    equation 
       assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
       assert(cardinality(frame_b) > 0, "Connector frame_b must be connected at least once");
    end PartialRelativeSensor;

* * * * *

![image33](Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensorI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).PartialRelativeBaseSensor
====================================================================================================================================================================================================================================================================

**Partial relative sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)**

Information
-----------

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                      Name   Description
  ----------------------------------------- ------ ------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_I frame\ Coordinate system a
  nterfaces.html#Modelica.Mechanics.MultiBo _a     (measurement is between
  dy.Interfaces.Frame_a)                           frame\_a and frame\_b)

  [Frame\_b](Modelica_Mechanics_MultiBody_I frame\ Coordinate system b
  nterfaces.html#Modelica.Mechanics.MultiBo _b     (measurement is between
  dy.Interfaces.Frame_b)                           frame\_a and frame\_b)

  [Frame\_resolve](Modelica_Mechanics_Multi frame\ Coordinate system in
  Body_Interfaces.html#Modelica.Mechanics.M _resol which vector is
  ultiBody.Interfaces.Frame_resolve)        ve     optionally resolved
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PartialRelativeBaseSensor 
      "Partial relative sensor models for sensors defined by equations (frame_resolve must be connected exactly once)"
      extends Modelica.Icons.RotationalSensor;

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
        "Coordinate system a (measurement is between frame_a and frame_b)";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b 
        "Coordinate system b (measurement is between frame_a and frame_b)";

      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve 
        "Coordinate system in which vector is optionally resolved";

    equation 
       assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
       assert(cardinality(frame_b) > 0, "Connector frame_b must be connected at least once");
       assert(cardinality(frame_resolve) == 1, "Connector frame_resolve must be connected exactly once");
       frame_a.f = zeros(3);
       frame_a.t = zeros(3);
       frame_b.f = zeros(3);
       frame_b.t = zeros(3);
       frame_resolve.f = zeros(3);
       frame_resolve.t = zeros(3);
    end PartialRelativeBaseSensor;

* * * * *

![image34](Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsolutePositionI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).BasicAbsolutePosition
============================================================================================================================================================================================================================================================

**Measure absolute position vector (same as Sensors.AbsolutePosition,
but frame\_resolve is not conditional and must be connected)**

Information
-----------

Extends from
[Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor)
(Partial absolute sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name  Default   Description
  -------------------------------- ----- --------- ------------------------
  [ResolveInFrameA](Modelica_Mecha resol Modelica. Frame in which output
  nics_MultiBody_Types.html#Modeli veInF Mechanics vector r is resolved (1:
  ca.Mechanics.MultiBody.Types.Res rame  .MultiBod world, 2: frame\_a, 3:
  olveInFrameA)                          y...      frame\_resolve)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                   Name  Description
  -------------------------------------- ----- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBod frame Coordinate system from which
  y_Interfaces.html#Modelica.Mechanics.M \_a   kinematic quantities are
  ultiBody.Interfaces.Frame_a)                 measured

  [Frame\_resolve](Modelica_Mechanics_Mu frame Coordinate system in which
  ltiBody_Interfaces.html#Modelica.Mecha \_res vector is optionally
  nics.MultiBody.Interfaces.Frame_resolv olve  resolved
  e)                                           

  output                                 r[3]  Absolute position vector
  [RealOutput](Modelica_Blocks_Interface       frame\_a.r\_0 resolved in
  s.html#Modelica.Blocks.Interfaces.Real       frame defined by
  Output)                                      resolveInFrame [m]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model BasicAbsolutePosition 
      "Measure absolute position vector (same as Sensors.AbsolutePosition, but frame_resolve is not conditional and must be connected)"
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameA;
      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput r[3](each final quantity="Position", each final 
                unit = "m") 
        "Absolute position vector frame_a.r_0 resolved in frame defined by resolveInFrame";

      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a 
        "Frame in which output vector r is resolved (1: world, 2: frame_a, 3: frame_resolve)";

    equation 
       if resolveInFrame == ResolveInFrameA.world then
          r = frame_a.r_0;
       elseif resolveInFrame == ResolveInFrameA.frame_a then
          r = Frames.resolve2(frame_a.R, frame_a.r_0);
       elseif resolveInFrame == ResolveInFrameA.frame_resolve then
          r = Frames.resolve2(frame_resolve.R, frame_a.r_0);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          r = zeros(3);
       end if;
    end BasicAbsolutePosition;

* * * * *

![image35](Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsoluteAngularVelocityI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).BasicAbsoluteAngularVelocity
==========================================================================================================================================================================================================================================================================

**Measure absolute angular velocity**

Information
-----------

Extends from
[Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor)
(Partial absolute sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name  Default   Description
  -------------------------------- ----- --------- ------------------------
  [ResolveInFrameA](Modelica_Mecha resol Modelica. Frame in which output
  nics_MultiBody_Types.html#Modeli veInF Mechanics vector w is resolved (1:
  ca.Mechanics.MultiBody.Types.Res rame  .MultiBod world, 2: frame\_a, 3:
  olveInFrameA)                          y...      frame\_resolve)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name   Description
  ------------------------------------------ ------ -----------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_In frame\ Coordinate system from
  terfaces.html#Modelica.Mechanics.MultiBody _a     which kinematic
  .Interfaces.Frame_a)                              quantities are measured

  [Frame\_resolve](Modelica_Mechanics_MultiB frame\ Coordinate system in
  ody_Interfaces.html#Modelica.Mechanics.Mul _resol which vector is
  tiBody.Interfaces.Frame_resolve)           ve     optionally resolved

  output                                     w[3]   Absolute angular
  [RealOutput](Modelica_Blocks_Interfaces.ht        velocity vector [rad/s]
  ml#Modelica.Blocks.Interfaces.RealOutput)         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model BasicAbsoluteAngularVelocity 
      "Measure absolute angular velocity"
      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameA;

      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput w[3](final quantity="AngularVelocity",final unit = "rad/s") 
        "Absolute angular velocity vector";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a 
        "Frame in which output vector w is resolved (1: world, 2: frame_a, 3: frame_resolve)";

    equation 
       if resolveInFrame == ResolveInFrameA.world then
          w = Frames.angularVelocity1(frame_a.R);
       elseif resolveInFrame == ResolveInFrameA.frame_a then
          w = Frames.angularVelocity2(frame_a.R);
       elseif resolveInFrame == ResolveInFrameA.frame_resolve then
          w = Frames.resolveRelative(Frames.angularVelocity1(frame_a.R), frame_a.R, frame_resolve.R);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          w = zeros(3);
       end if;
    end BasicAbsoluteAngularVelocity;

* * * * *

![image36](Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativePositionI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).BasicRelativePosition
============================================================================================================================================================================================================================================================

**Measure relative position vector (same as Sensors.RelativePosition,
but frame\_resolve is not conditional and must be connected)**

Information
-----------

Extends from
[Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor)
(Partial relative sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name Default   Description
  ------------------------------ ---- --------- ---------------------------
  [ResolveInFrameAB](Modelica_Me reso Modelica. Frame in which output
  chanics_MultiBody_Types.html#M lveI Mechanics vector r\_rel is resolved
  odelica.Mechanics.MultiBody.Ty nFra .MultiBod (1: world, 2: frame\_a, 3:
  pes.ResolveInFrameAB)          me   y...      frame\_b, 4:
                                                frame\_resolve)
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                Name  Description
  ----------------------------------- ----- ------------------------------
  [Frame\_a](Modelica_Mechanics_Multi frame Coordinate system a
  Body_Interfaces.html#Modelica.Mecha \_a   (measurement is between
  nics.MultiBody.Interfaces.Frame_a)        frame\_a and frame\_b)

  [Frame\_b](Modelica_Mechanics_Multi frame Coordinate system b
  Body_Interfaces.html#Modelica.Mecha \_b   (measurement is between
  nics.MultiBody.Interfaces.Frame_b)        frame\_a and frame\_b)

  [Frame\_resolve](Modelica_Mechanics frame Coordinate system in which
  _MultiBody_Interfaces.html#Modelica \_res vector is optionally resolved
  .Mechanics.MultiBody.Interfaces.Fra olve  
  me_resolve)                               

  output                              r\_re Relative position vector
  [RealOutput](Modelica_Blocks_Interf l[3]  frame\_b.r\_0 - frame\_a.r\_0
  aces.html#Modelica.Blocks.Interface       resolved in frame defined by
  s.RealOutput)                             resolveInFrame [m]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model BasicRelativePosition 
      "Measure relative position vector (same as Sensors.RelativePosition, but frame_resolve is not conditional and must be connected)"
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB;
      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput r_rel[3](each final quantity="Position", each final 
                unit = "m") 
        "Relative position vector frame_b.r_0 - frame_a.r_0 resolved in frame defined by resolveInFrame";


      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a 
        "Frame in which output vector r_rel is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";

    equation 
       if resolveInFrame == ResolveInFrameAB.frame_a then
          r_rel = Frames.resolve2(frame_a.R, frame_b.r_0 - frame_a.r_0);
       elseif resolveInFrame == ResolveInFrameAB.frame_b then
          r_rel = Frames.resolve2(frame_b.R, frame_b.r_0 - frame_a.r_0);
       elseif resolveInFrame == ResolveInFrameAB.world then
          r_rel = frame_b.r_0 - frame_a.r_0;
       elseif resolveInFrame == ResolveInFrameAB.frame_resolve then
          r_rel = Frames.resolve2(frame_resolve.R, frame_b.r_0 - frame_a.r_0);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          r_rel = zeros(3);
       end if;
    end BasicRelativePosition;

* * * * *

![image37](Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativeAngularVelocityI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).BasicRelativeAngularVelocity
==========================================================================================================================================================================================================================================================================

**Measure relative angular velocity**

Information
-----------

Extends from
[Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor)
(Partial relative sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name Default   Description
  ------------------------------ ---- --------- ---------------------------
  [ResolveInFrameAB](Modelica_Me reso Modelica. Frame in which output
  chanics_MultiBody_Types.html#M lveI Mechanics vector w\_rel is resolved
  odelica.Mechanics.MultiBody.Ty nFra .MultiBod (1: world, 2: frame\_a, 3:
  pes.ResolveInFrameAB)          me   y...      frame\_b, 4:
                                                frame\_resolve)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                      Name   Description
  ----------------------------------------- ------ ------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_I frame\ Coordinate system a
  nterfaces.html#Modelica.Mechanics.MultiBo _a     (measurement is between
  dy.Interfaces.Frame_a)                           frame\_a and frame\_b)

  [Frame\_b](Modelica_Mechanics_MultiBody_I frame\ Coordinate system b
  nterfaces.html#Modelica.Mechanics.MultiBo _b     (measurement is between
  dy.Interfaces.Frame_b)                           frame\_a and frame\_b)

  [Frame\_resolve](Modelica_Mechanics_Multi frame\ Coordinate system in
  Body_Interfaces.html#Modelica.Mechanics.M _resol which vector is
  ultiBody.Interfaces.Frame_resolve)        ve     optionally resolved

  output                                    w\_rel Relative angular
  [RealOutput](Modelica_Blocks_Interfaces.h [3]    velocity vector [rad/s]
  tml#Modelica.Blocks.Interfaces.RealOutput        
  )                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model BasicRelativeAngularVelocity 
      "Measure relative angular velocity"
      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB;

      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput w_rel[3](final quantity="AngularVelocity",final unit = "rad/s") 
        "Relative angular velocity vector";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a 
        "Frame in which output vector w_rel is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";

    protected 
      Modelica.Mechanics.MultiBody.Frames.Orientation R_rel 
        "Relative orientation object from frame_a to frame_b";
    equation 
       R_rel = Frames.relativeRotation(frame_a.R, frame_b.R);
       if resolveInFrame == ResolveInFrameAB.frame_a then
          w_rel = Frames.angularVelocity1(R_rel);
       elseif resolveInFrame == ResolveInFrameAB.frame_b then
          w_rel = Frames.angularVelocity2(R_rel);
       elseif resolveInFrame == ResolveInFrameAB.world then
          w_rel = Frames.resolve1(frame_a.R, Frames.angularVelocity1(R_rel));
       elseif resolveInFrame == ResolveInFrameAB.frame_resolve then
          w_rel = Frames.resolveRelative(Frames.angularVelocity1(R_rel), frame_a.R, frame_resolve.R);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          w_rel = zeros(3);
       end if;
    end BasicRelativeAngularVelocity;

* * * * *

![image38](Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformAbsoluteVectorI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).BasicTransformAbsoluteVector
==========================================================================================================================================================================================================================================================================

**Transform absolute vector in to another frame**

Information
-----------

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  -------------------------------------------------------------------------
  Type                          Name Default   Description
  ----------------------------- ---- --------- ----------------------------
  [ResolveInFrameA](Modelica_Me fram Modelica. Frame in which vector r\_in
  chanics_MultiBody_Types.html# e\_r Mechanics is resolved (1: world, 2:
  Modelica.Mechanics.MultiBody. \_in .MultiBod frame\_a, 3: frame\_resolve)
  Types.ResolveInFrameA)             y...      

  [ResolveInFrameA](Modelica_Me fram frame\_r\ Frame in which vector r\_out
  chanics_MultiBody_Types.html# e\_r _in       (= r\_in in other frame) is
  Modelica.Mechanics.MultiBody. \_ou           resolved (1: world, 2:
  Types.ResolveInFrameA)        t              frame\_a, 3: frame\_resolve)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                     Name   Description
  ---------------------------------------- ------ -------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_ frame\ Coordinate system from
  Interfaces.html#Modelica.Mechanics.Multi _a     which absolute kinematic
  Body.Interfaces.Frame_a)                        quantities are measured

  [Frame\_resolve](Modelica_Mechanics_Mult frame\ Coordinate system in
  iBody_Interfaces.html#Modelica.Mechanics _resol which vector is
  .MultiBody.Interfaces.Frame_resolve)     ve     optionally resolved

  input                                    r\_in[ Input vector resolved in
  [RealInput](Modelica_Blocks_Interfaces.h 3]     frame defined by
  tml#Modelica.Blocks.Interfaces.RealInput        frame\_r\_in
  )                                               

  output                                   r\_out Input vector r\_in
  [RealOutput](Modelica_Blocks_Interfaces. [3]    resolved in frame defined
  html#Modelica.Blocks.Interfaces.RealOutp        by frame\_r\_out
  ut)                                             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model BasicTransformAbsoluteVector 
      "Transform absolute vector in to another frame"
      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameA;

      extends Modelica.Icons.RotationalSensor;

      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA frame_r_in=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a 
        "Frame in which vector r_in is resolved (1: world, 2: frame_a, 3: frame_resolve)";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA frame_r_out=
                      frame_r_in 
        "Frame in which vector r_out (= r_in in other frame) is resolved (1: world, 2: frame_a, 3: frame_resolve)";

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
        "Coordinate system from which absolute kinematic quantities are measured";

      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve 
        "Coordinate system in which vector is optionally resolved";

      Blocks.Interfaces.RealInput r_in[3] 
        "Input vector resolved in frame defined by frame_r_in";
      Blocks.Interfaces.RealOutput r_out[3] 
        "Input vector r_in resolved in frame defined by frame_r_out";

    protected 
      Modelica.Mechanics.MultiBody.Frames.Orientation R1 
        "Orientation object from world frame to frame in which r_in is resolved";
    equation 
       assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
       assert(cardinality(frame_resolve) == 1, "Connector frame_resolve must be connected exactly once");
       frame_a.f = zeros(3);
       frame_a.t = zeros(3);
       frame_resolve.f = zeros(3);
       frame_resolve.t = zeros(3);

       if frame_r_out == frame_r_in then
          r_out = r_in;
          R1 = Frames.nullRotation();
       else
          if frame_r_in == ResolveInFrameA.world then
             R1 = Frames.nullRotation();
          elseif frame_r_in == ResolveInFrameA.frame_a then
             R1 = frame_a.R;
          elseif frame_r_in == ResolveInFrameA.frame_resolve then
             R1 = frame_resolve.R;
          else
             assert(false, "Wrong value for parameter frame_r_in");
             R1 = Frames.nullRotation();
          end if;

          if frame_r_out == ResolveInFrameA.world then
             r_out = Frames.resolve1(R1, r_in);
          elseif frame_r_out == ResolveInFrameA.frame_a then
             r_out = Frames.resolveRelative(r_in, R1, frame_a.R);
          elseif frame_r_out == ResolveInFrameA.frame_resolve then
             r_out = Frames.resolveRelative(r_in, R1, frame_resolve.R);
          else
             assert(false, "Wrong value for parameter frame_r_out");
             r_out = zeros(3);
          end if;
       end if;
    end BasicTransformAbsoluteVector;

* * * * *

![image39](Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformRelativeVectorI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).BasicTransformRelativeVector
==========================================================================================================================================================================================================================================================================

**Transform relative vector in to another frame**

Information
-----------

Extends from
[Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor)
(Partial relative sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name Default  Description
  ---------------------------- ---- -------- ------------------------------
  [ResolveInFrameAB](Modelica_ fram Modelica Frame in which vector r\_in is
  Mechanics_MultiBody_Types.ht e\_r .Mechani resolved (1: world, 2:
  ml#Modelica.Mechanics.MultiB \_in cs.Multi frame\_a, 3: frame\_b, 4:
  ody.Types.ResolveInFrameAB)       Body...  frame\_resolve)

  [ResolveInFrameAB](Modelica_ fram frame\_r Frame in which vector r\_out
  Mechanics_MultiBody_Types.ht e\_r \_in     (= r\_in in other frame) is
  ml#Modelica.Mechanics.MultiB \_ou          resolved (1: world, 2:
  ody.Types.ResolveInFrameAB)  t             frame\_a, 3: frame\_b, 4:
                                             frame\_resolve)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                      Name   Description
  ----------------------------------------- ------ ------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_I frame\ Coordinate system a
  nterfaces.html#Modelica.Mechanics.MultiBo _a     (measurement is between
  dy.Interfaces.Frame_a)                           frame\_a and frame\_b)

  [Frame\_b](Modelica_Mechanics_MultiBody_I frame\ Coordinate system b
  nterfaces.html#Modelica.Mechanics.MultiBo _b     (measurement is between
  dy.Interfaces.Frame_b)                           frame\_a and frame\_b)

  [Frame\_resolve](Modelica_Mechanics_Multi frame\ Coordinate system in
  Body_Interfaces.html#Modelica.Mechanics.M _resol which vector is
  ultiBody.Interfaces.Frame_resolve)        ve     optionally resolved

  input                                     r\_in[ Input vector resolved in
  [RealInput](Modelica_Blocks_Interfaces.ht 3]     frame defined by
  ml#Modelica.Blocks.Interfaces.RealInput)         frame\_r\_in

  output                                    r\_out Input vector r\_in
  [RealOutput](Modelica_Blocks_Interfaces.h [3]    resolved in frame
  tml#Modelica.Blocks.Interfaces.RealOutput        defined by frame\_r\_out
  )                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model BasicTransformRelativeVector 
      "Transform relative vector in to another frame"
      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB;
      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor;
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB frame_r_in=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a 
        "Frame in which vector r_in is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB frame_r_out=
                      frame_r_in 
        "Frame in which vector r_out (= r_in in other frame) is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";

      Blocks.Interfaces.RealInput r_in[3] 
        "Input vector resolved in frame defined by frame_r_in";
      Blocks.Interfaces.RealOutput r_out[3] 
        "Input vector r_in resolved in frame defined by frame_r_out";

    protected 
      Modelica.Mechanics.MultiBody.Frames.Orientation R1 
        "Orientation object from world frame to frame in which r_in is resolved";
    equation 
       if frame_r_out == frame_r_in then
          r_out = r_in;
          R1 = Frames.nullRotation();
       else
          if frame_r_in == ResolveInFrameAB.world then
             R1 = Frames.nullRotation();
          elseif frame_r_in == ResolveInFrameAB.frame_a then
             R1 = frame_a.R;
          elseif frame_r_in == ResolveInFrameAB.frame_b then
             R1 = frame_b.R;
          else
             R1 = frame_resolve.R;
          end if;

          if frame_r_out == ResolveInFrameAB.world then
             r_out = Frames.resolve1(R1, r_in);
          elseif frame_r_out == ResolveInFrameAB.frame_a then
             r_out = Frames.resolveRelative(r_in, R1, frame_a.R);
          elseif frame_r_out == ResolveInFrameAB.frame_b then
             r_out = Frames.resolveRelative(r_in, R1, frame_b.R);
          else
             r_out = Frames.resolveRelative(r_in, R1, frame_resolve.R);
          end if;
       end if;
    end BasicTransformRelativeVector;

* * * * *

![image40](Modelica.Mechanics.MultiBody.Sensors.Internal.ZeroForceAndTorqueI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).ZeroForceAndTorque
======================================================================================================================================================================================================================================================

**Set force and torque to zero**

Information
-----------

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name   Descript
                                                                   ion
  --------------------------------------------------------- ------ --------
  [Frame\_a](Modelica_Mechanics_MultiBody_Interfaces.html#M frame\ 
  odelica.Mechanics.MultiBody.Interfaces.Frame_a)           _a     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ZeroForceAndTorque "Set force and torque to zero"
       extends Modelica.Blocks.Interfaces.BlockIcon;
      Interfaces.Frame_a frame_a;
    equation 
      frame_a.f = zeros(3);
      frame_a.t = zeros(3);
    end ZeroForceAndTorque;

* * * * *

![image41](Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensorI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).PartialCutForceSensor
============================================================================================================================================================================================================================================================

**Base model to measure the cut force and/or torque between two frames,
defined by components**

Information
-----------

::

This is a base class for 3-dim. mechanical components with two frames
and one output port in order to measure the cut-force and/or cut-torque
acting between the two frames and to provide the measured signals as
output for further processing with the blocks of package
Modelica.Blocks.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name  Default   Description
  ------------------------------- ----- --------- -------------------------
  [ResolveInFrameA](Modelica_Mech resol Modelica. Frame in which output
  anics_MultiBody_Types.html#Mode veInF Mechanics vector(s) is/are resolved
  lica.Mechanics.MultiBody.Types. rame  .MultiBod (1: world, 2: frame\_a,
  ResolveInFrameA)                      y...      3: frame\_resolve)
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBo frame Coordinate system a
  dy_Interfaces.html#Modelica.Mechanics \_a   
  .MultiBody.Interfaces.Frame_a)              

  [Frame\_b](Modelica_Mechanics_MultiBo frame Coordinate system b
  dy_Interfaces.html#Modelica.Mechanics \_b   
  .MultiBody.Interfaces.Frame_b)              

  [Frame\_resolve](Modelica_Mechanics_M frame Output vectors are
  ultiBody_Interfaces.html#Modelica.Mec \_res optionally resolved in this
  hanics.MultiBody.Interfaces.Frame_res olve  frame (cut-force/-torque are
  olve)                                       set to zero)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialCutForceSensor 
      "Base model to measure the cut force and/or torque between two frames, defined by components"

      extends Modelica.Icons.RotationalSensor;
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system a";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system b";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve if 
             resolveInFrame==Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_resolve 
        "Output vectors are optionally resolved in this frame (cut-force/-torque are set to zero)";


      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a 
        "Frame in which output vector(s) is/are resolved (1: world, 2: frame_a, 3: frame_resolve)";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of cut-force/-torque sensor object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of cut-force/-torque sensor object is not connected");

    end PartialCutForceSensor;

* * * * *

![image42](Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensorI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).PartialCutForceBaseSensor
================================================================================================================================================================================================================================================================

**Base model to measure the cut force and/or torque between two frames,
defined by equations (frame\_resolve must be connected exactly once)**

Information
-----------

::

This is a base class for 3-dim. mechanical components with two frames
and one output port in order to measure the cut-force and/or cut-torque
acting between the two frames and to provide the measured signals as
output for further processing with the blocks of package
Modelica.Blocks.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  --------------------------------------------------------------------------
  Type                             Name  Default    Description
  -------------------------------- ----- ---------- ------------------------
  [ResolveInFrameA](Modelica_Mecha resol Modelica.M Frame in which output
  nics_MultiBody_Types.html#Modeli veInF echanics.M vector is resolved (1:
  ca.Mechanics.MultiBody.Types.Res rame  ultiBody.. world, 2: frame\_a, 3:
  olveInFrameA)                          .          frame\_resolve)
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBo frame Coordinate system a
  dy_Interfaces.html#Modelica.Mechanics \_a   
  .MultiBody.Interfaces.Frame_a)              

  [Frame\_b](Modelica_Mechanics_MultiBo frame Coordinate system b
  dy_Interfaces.html#Modelica.Mechanics \_b   
  .MultiBody.Interfaces.Frame_b)              

  [Frame\_resolve](Modelica_Mechanics_M frame The output vector is
  ultiBody_Interfaces.html#Modelica.Mec \_res optionally resolved in this
  hanics.MultiBody.Interfaces.Frame_res olve  frame (cut-force/-torque are
  olve)                                       set to zero)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialCutForceBaseSensor 
      "Base model to measure the cut force and/or torque between two frames, defined by equations (frame_resolve must be connected exactly once)"

      extends Modelica.Icons.RotationalSensor;
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system a";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system b";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve 
        "The output vector is optionally resolved in this frame (cut-force/-torque are set to zero)";


      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a 
        "Frame in which output vector is resolved (1: world, 2: frame_a, 3: frame_resolve)";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      Connections.branch(frame_a.R, frame_b.R);
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of cut-force/-torque sensor object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of cut-force/-torque sensor object is not connected");

      // frame_a and frame_b are identical
      frame_a.r_0 = frame_b.r_0;
      frame_a.R = frame_b.R;

      // force and torque balance
      zeros(3) = frame_a.f + frame_b.f;
      zeros(3) = frame_a.t + frame_b.t;
      frame_resolve.f = zeros(3);
      frame_resolve.t = zeros(3);
    end PartialCutForceBaseSensor;

* * * * *

![image43](Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutForceI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).BasicCutForce
============================================================================================================================================================================================================================================

**Measure cut force vector (frame\_resolve must be connected)**

Information
-----------

::

::

Extends from
[Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor)
(Base model to measure the cut force and/or torque between two frames,
defined by equations (frame\_resolve must be connected exactly once)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                          Name Default   Description
  ----------------------------- ---- --------- ----------------------------
  [ResolveInFrameA](Modelica_Me reso Modelica. Frame in which output vector
  chanics_MultiBody_Types.html# lveI Mechanics is resolved (1: world, 2:
  Modelica.Mechanics.MultiBody. nFra .MultiBod frame\_a, 3: frame\_resolve)
  Types.ResolveInFrameA)        me   y...      

  Boolean                       posi true      = true, if force with
                                tive           positive sign is returned (=
                                Sign           frame\_a.f), otherwise with
                                               negative sign (= frame\_b.f)
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBo frame Coordinate system a
  dy_Interfaces.html#Modelica.Mechanics \_a   
  .MultiBody.Interfaces.Frame_a)              

  [Frame\_b](Modelica_Mechanics_MultiBo frame Coordinate system b
  dy_Interfaces.html#Modelica.Mechanics \_b   
  .MultiBody.Interfaces.Frame_b)              

  [Frame\_resolve](Modelica_Mechanics_M frame The output vector is
  ultiBody_Interfaces.html#Modelica.Mec \_res optionally resolved in this
  hanics.MultiBody.Interfaces.Frame_res olve  frame (cut-force/-torque are
  olve)                                       set to zero)

  output                                force Cut force resolved in frame
  [RealOutput](Modelica_Blocks_Interfac [3]   defined by resolveInFrame
  es.html#Modelica.Blocks.Interfaces.Re       [N]
  alOutput)                                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model BasicCutForce 
      "Measure cut force vector (frame_resolve must be connected)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameA;
      import Modelica.Mechanics.MultiBody.Frames;

      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput force[3](final quantity="Force", final unit="N") 
        "Cut force resolved in frame defined by resolveInFrame";
        parameter Boolean positiveSign=true 
        "= true, if force with positive sign is returned (= frame_a.f), otherwise with negative sign (= frame_b.f)";
    protected 
      parameter Integer csign=if positiveSign then +1 else -1;
    equation 
       if resolveInFrame == ResolveInFrameA.world then
          force = Frames.resolve1(frame_a.R, frame_a.f)*csign;
       elseif resolveInFrame == ResolveInFrameA.frame_a then
          force = frame_a.f*csign;
       elseif resolveInFrame == ResolveInFrameA.frame_resolve then
          force = Frames.resolveRelative(frame_a.f, frame_a.R, frame_resolve.R)*csign;
       else
          assert(false,"Wrong value for parameter resolveInFrame");
          force = zeros(3);
       end if;
    end BasicCutForce;

* * * * *

![image44](Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutTorqueI.png) [Modelica.Mechanics.MultiBody.Sensors.Internal](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal).BasicCutTorque
==============================================================================================================================================================================================================================================

**Measure cut torque vector (frame\_resolve must be connected)**

Information
-----------

::

::

Extends from
[Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor](Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor)
(Base model to measure the cut force and/or torque between two frames,
defined by equations (frame\_resolve must be connected exactly once)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                          Name Default   Description
  ----------------------------- ---- --------- ----------------------------
  [ResolveInFrameA](Modelica_Me reso Modelica. Frame in which output vector
  chanics_MultiBody_Types.html# lveI Mechanics is resolved (1: world, 2:
  Modelica.Mechanics.MultiBody. nFra .MultiBod frame\_a, 3: frame\_resolve)
  Types.ResolveInFrameA)        me   y...      

  Boolean                       posi true      = true, if torque with
                                tive           positive sign is returned (=
                                Sign           frame\_a.t), otherwise with
                                               negative sign (= frame\_b.t)
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBo frame Coordinate system a
  dy_Interfaces.html#Modelica.Mechanics \_a   
  .MultiBody.Interfaces.Frame_a)              

  [Frame\_b](Modelica_Mechanics_MultiBo frame Coordinate system b
  dy_Interfaces.html#Modelica.Mechanics \_b   
  .MultiBody.Interfaces.Frame_b)              

  [Frame\_resolve](Modelica_Mechanics_M frame The output vector is
  ultiBody_Interfaces.html#Modelica.Mec \_res optionally resolved in this
  hanics.MultiBody.Interfaces.Frame_res olve  frame (cut-force/-torque are
  olve)                                       set to zero)

  output                                torqu Cut torque resolved in frame
  [RealOutput](Modelica_Blocks_Interfac e[3]  defined by resolveInFrame
  es.html#Modelica.Blocks.Interfaces.Re       [N.m]
  alOutput)                                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model BasicCutTorque 
      "Measure cut torque vector (frame_resolve must be connected)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameA;
      import Modelica.Mechanics.MultiBody.Frames;

      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput torque[3](final quantity="Torque", final unit=
            "N.m") "Cut torque resolved in frame defined by resolveInFrame";

      parameter Boolean positiveSign=true 
        "= true, if torque with positive sign is returned (= frame_a.t), otherwise with negative sign (= frame_b.t)";

    protected 
      parameter Integer csign=if positiveSign then +1 else -1;
    equation 
       if resolveInFrame == ResolveInFrameA.world then
          torque = Frames.resolve1(frame_a.R, frame_a.t)*csign;
       elseif resolveInFrame == ResolveInFrameA.frame_a then
          torque = frame_a.t*csign;
       elseif resolveInFrame == ResolveInFrameA.frame_resolve then
          torque = Frames.resolveRelative(frame_a.t, frame_a.R, frame_resolve.R)*csign;
       else
          assert(false,"Wrong value for parameter resolveInFrame");
          torque = zeros(3);
       end if;
    end BasicCutTorque;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:40 2010.
