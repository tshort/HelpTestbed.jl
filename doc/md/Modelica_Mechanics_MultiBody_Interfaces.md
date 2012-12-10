% Modelica.Mechanics.MultiBody.Interfaces
% 
% 

[Modelica.Mechanics.MultiBody](Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody).Interfaces
=========================================================================================================

**Connectors and partial models for 3-dim. mechanical components**

Information
-----------

::

This package contains connectors and partial models (i.e., models that
are only used to build other models) of the MultiBody library.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                     Description
  ---------------------------------------- -------------------------------
  ![image20](Modelica.Mechanics.MultiBody. Coordinate system fixed to the
  Interfaces.FrameS.png)                   component with one cut-force
  [Frame](Modelica_Mechanics_MultiBody_Int and cut-torque (no icon)
  erfaces.html#Modelica.Mechanics.MultiBod 
  y.Interfaces.Frame)                      

  ![image21](Modelica.Mechanics.MultiBody. Coordinate system fixed to the
  Interfaces.Frame_aS.png)                 component with one cut-force
  [Frame\_a](Modelica_Mechanics_MultiBody_ and cut-torque (filled
  Interfaces.html#Modelica.Mechanics.Multi rectangular icon)
  Body.Interfaces.Frame_a)                 

  ![image22](Modelica.Mechanics.MultiBody. Coordinate system fixed to the
  Interfaces.Frame_bS.png)                 component with one cut-force
  [Frame\_b](Modelica_Mechanics_MultiBody_ and cut-torque (non-filled
  Interfaces.html#Modelica.Mechanics.Multi rectangular icon)
  Body.Interfaces.Frame_b)                 

  ![image23](Modelica.Mechanics.MultiBody. Coordinate system fixed to the
  Interfaces.Frame_resolveS.png)           component used to express in
  [Frame\_resolve](Modelica_Mechanics_Mult which coordinate system a
  iBody_Interfaces.html#Modelica.Mechanics vector is resolved (non-filled
  .MultiBody.Interfaces.Frame_resolve)     rectangular icon)

  ![image24](Modelica.Mechanics.MultiBody. Connector consisting of 1-dim.
  Interfaces.FlangeWithBearingS.png)       rotational flange and its
  [FlangeWithBearing](Modelica_Mechanics_M bearing frame
  ultiBody_Interfaces.html#Modelica.Mechan 
  ics.MultiBody.Interfaces.FlangeWithBeari 
  ng)                                      

  ![image25](Modelica.Mechanics.MultiBody. Adaptor to allow direct
  Interfaces.FlangeWithBearingAdaptorS.png connections to the
  )                                        sub-connectors of
  [FlangeWithBearingAdaptor](Modelica_Mech FlangeWithBearing
  anics_MultiBody_Interfaces.html#Modelica 
  .Mechanics.MultiBody.Interfaces.FlangeWi 
  thBearingAdaptor)                        

  ![image26](Modelica.Mechanics.MultiBody. Base model for components
  Interfaces.PartialTwoFramesS.png)        providing two frame connectors
  [PartialTwoFrames](Modelica_Mechanics_Mu + outer world + assert to
  ltiBody_Interfaces.html#Modelica.Mechani guarantee that the component is
  cs.MultiBody.Interfaces.PartialTwoFrames connected
  )                                        

  ![image27](Modelica.Mechanics.MultiBody. Base model for components
  Interfaces.PartialTwoFramesDoubleSizeS.p providing two frame connectors
  ng)                                      + outer world + assert to
  [PartialTwoFramesDoubleSize](Modelica_Me guarantee that the component is
  chanics_MultiBody_Interfaces.html#Modeli connected (default icon size is
  ca.Mechanics.MultiBody.Interfaces.Partia factor 2 larger as usual)
  lTwoFramesDoubleSize)                    

  ![image28](Modelica.Mechanics.MultiBody. Base model for components
  Interfaces.PartialOneFrame_aS.png)       providing one frame\_a
  [PartialOneFrame\_a](Modelica_Mechanics_ connector + outer world +
  MultiBody_Interfaces.html#Modelica.Mecha assert to guarantee that the
  nics.MultiBody.Interfaces.PartialOneFram component is connected
  e_a)                                     

  ![image29](Modelica.Mechanics.MultiBody. Base model for components
  Interfaces.PartialOneFrame_bS.png)       providing one frame\_b
  [PartialOneFrame\_b](Modelica_Mechanics_ connector + outer world +
  MultiBody_Interfaces.html#Modelica.Mecha assert to guarantee that the
  nics.MultiBody.Interfaces.PartialOneFram component is connected
  e_b)                                     

  ![image30](Modelica.Mechanics.MultiBody. Base model for elementary
  Interfaces.PartialElementaryJointS.png)  joints (has two frames + outer
  [PartialElementaryJoint](Modelica_Mechan world + assert to guarantee
  ics_MultiBody_Interfaces.html#Modelica.M that the joint is connected)
  echanics.MultiBody.Interfaces.PartialEle 
  mentaryJoint)                            

  ![image31](Modelica.Mechanics.MultiBody. Base model for force elements
  Interfaces.PartialForceS.png)            (provide frame\_b.f and
  [PartialForce](Modelica_Mechanics_MultiB frame\_b.t in subclasses)
  ody_Interfaces.html#Modelica.Mechanics.M 
  ultiBody.Interfaces.PartialForce)        

  ![image32](Modelica.Mechanics.MultiBody. Base model for line force
  Interfaces.PartialLineForceS.png)        elements
  [PartialLineForce](Modelica_Mechanics_Mu 
  ltiBody_Interfaces.html#Modelica.Mechani 
  cs.MultiBody.Interfaces.PartialLineForce 
  )                                        

  ![image33](Modelica.Mechanics.MultiBody. Base model to measure an
  Interfaces.PartialAbsoluteSensorS.png)   absolute frame variable
  [PartialAbsoluteSensor](Modelica_Mechani 
  cs_MultiBody_Interfaces.html#Modelica.Me 
  chanics.MultiBody.Interfaces.PartialAbso 
  luteSensor)                              

  ![image34](Modelica.Mechanics.MultiBody. Base model to measure a
  Interfaces.PartialRelativeSensorS.png)   relative variable between two
  [PartialRelativeSensor](Modelica_Mechani frames
  cs_MultiBody_Interfaces.html#Modelica.Me 
  chanics.MultiBody.Interfaces.PartialRela 
  tiveSensor)                              

  ![image35](Modelica.Mechanics.MultiBody. Base model for visualizers (has
  Interfaces.PartialVisualizerS.png)       a frame\_a on the left side +
  [PartialVisualizer](Modelica_Mechanics_M outer world + assert to
  ultiBody_Interfaces.html#Modelica.Mechan guarantee that the component is
  ics.MultiBody.Interfaces.PartialVisualiz connected)
  er)                                      

  ![image36](Modelica.Mechanics.MultiBody. Set absolute position vector of
  Interfaces.ZeroPositionS.png)            frame\_resolve to a zero vector
  [ZeroPosition](Modelica_Mechanics_MultiB and the orientation object to a
  ody_Interfaces.html#Modelica.Mechanics.M null rotation
  ultiBody.Interfaces.ZeroPosition)        

  ![image37](Modelica.Mechanics.MultiBody. 
  Interfaces.partialGravityAccelerationS.p 
  ng)                                      
  [partialGravityAcceleration](Modelica_Me 
  chanics_MultiBody_Interfaces.html#Modeli 
  ca.Mechanics.MultiBody.Interfaces.partia 
  lGravityAcceleration)                    

  ![image38](Modelica.Mechanics.MultiBody. 
  Interfaces.partialGravityAccelerationS.p 
  ng)                                      
  [partialSurfaceCharacteristic](Modelica_ 
  Mechanics_MultiBody_Interfaces.html#Mode 
  lica.Mechanics.MultiBody.Interfaces.part 
  ialSurfaceCharacteristic)                

  ![image39](Modelica.Mechanics.MultiBody. Interface for a function
  Interfaces.partialGravityAccelerationS.p returning a color map
  ng)                                      
  [partialColorMap](Modelica_Mechanics_Mul 
  tiBody_Interfaces.html#Modelica.Mechanic 
  s.MultiBody.Interfaces.partialColorMap)  
  ------------------------------------------------------------------------

* * * * *

[Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).Frame
=====================================================================================================================================

**Coordinate system fixed to the component with one cut-force and
cut-torque (no icon)**

Information
-----------

::

Basic definition of a coordinate system that is fixed to a mechanical
component. In the origin of the coordinate system the cut-force and the
cut-torque is acting. This component has no icon definition and is only
used by inheritance from frame connectors to define different icons.

::

Contents
--------

  ------------------------------------------------------------------------
  Type                                 Nam Description
                                       e   
  ------------------------------------ --- -------------------------------
  [Position](Modelica_SIunits.html#Mod r\_ Position vector from world
  elica.SIunits.Position)              0[3 frame to the connector frame
                                       ]   origin, resolved in world frame
                                           [m]

  [Orientation](Modelica_Mechanics_Mul R   Orientation object to rotate
  tiBody_Frames.html#Modelica.Mechanic     the world frame into the
  s.MultiBody.Frames.Orientation)          connector frame

  flow                                 f[3 Cut-force resolved in connector
  [Force](Modelica_SIunits.html#Modeli ]   frame [N]
  ca.SIunits.Force)                        

  flow                                 t[3 Cut-torque resolved in
  [Torque](Modelica_SIunits.html#Model ]   connector frame [N.m]
  ica.SIunits.Torque)                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Frame 
      "Coordinate system fixed to the component with one cut-force and cut-torque (no icon)"
      import SI = Modelica.SIunits;
      SI.Position r_0[3] 
        "Position vector from world frame to the connector frame origin, resolved in world frame";
      Frames.Orientation R 
        "Orientation object to rotate the world frame into the connector frame";
      flow SI.Force f[3] "Cut-force resolved in connector frame";
      flow SI.Torque t[3] "Cut-torque resolved in connector frame";
    end Frame;

* * * * *

![image40](Modelica.Mechanics.MultiBody.Interfaces.Frame_aI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).Frame\_a
=========================================================================================================================================================================================================

**Coordinate system fixed to the component with one cut-force and
cut-torque (filled rectangular icon)**

Information
-----------

::

Basic definition of a coordinate system that is fixed to a mechanical
component. In the origin of the coordinate system the cut-force and the
cut-torque is acting. This component has a filled rectangular icon.

::

Extends from
[Frame](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame)
(Coordinate system fixed to the component with one cut-force and
cut-torque (no icon)).

Contents
--------

  ------------------------------------------------------------------------
  Type                                 Nam Description
                                       e   
  ------------------------------------ --- -------------------------------
  [Position](Modelica_SIunits.html#Mod r\_ Position vector from world
  elica.SIunits.Position)              0[3 frame to the connector frame
                                       ]   origin, resolved in world frame
                                           [m]

  [Orientation](Modelica_Mechanics_Mul R   Orientation object to rotate
  tiBody_Frames.html#Modelica.Mechanic     the world frame into the
  s.MultiBody.Frames.Orientation)          connector frame

  flow                                 f[3 Cut-force resolved in connector
  [Force](Modelica_SIunits.html#Modeli ]   frame [N]
  ca.SIunits.Force)                        

  flow                                 t[3 Cut-torque resolved in
  [Torque](Modelica_SIunits.html#Model ]   connector frame [N.m]
  ica.SIunits.Torque)                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Frame_a 
      "Coordinate system fixed to the component with one cut-force and cut-torque (filled rectangular icon)"
      extends Frame;

    end Frame_a;

* * * * *

![image41](Modelica.Mechanics.MultiBody.Interfaces.Frame_bI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).Frame\_b
=========================================================================================================================================================================================================

**Coordinate system fixed to the component with one cut-force and
cut-torque (non-filled rectangular icon)**

Information
-----------

::

Basic definition of a coordinate system that is fixed to a mechanical
component. In the origin of the coordinate system the cut-force and the
cut-torque is acting. This component has a non-filled rectangular icon.

::

Extends from
[Frame](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame)
(Coordinate system fixed to the component with one cut-force and
cut-torque (no icon)).

Contents
--------

  ------------------------------------------------------------------------
  Type                                 Nam Description
                                       e   
  ------------------------------------ --- -------------------------------
  [Position](Modelica_SIunits.html#Mod r\_ Position vector from world
  elica.SIunits.Position)              0[3 frame to the connector frame
                                       ]   origin, resolved in world frame
                                           [m]

  [Orientation](Modelica_Mechanics_Mul R   Orientation object to rotate
  tiBody_Frames.html#Modelica.Mechanic     the world frame into the
  s.MultiBody.Frames.Orientation)          connector frame

  flow                                 f[3 Cut-force resolved in connector
  [Force](Modelica_SIunits.html#Modeli ]   frame [N]
  ca.SIunits.Force)                        

  flow                                 t[3 Cut-torque resolved in
  [Torque](Modelica_SIunits.html#Model ]   connector frame [N.m]
  ica.SIunits.Torque)                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Frame_b 
      "Coordinate system fixed to the component with one cut-force and cut-torque (non-filled rectangular icon)"
      extends Frame;

    end Frame_b;

* * * * *

![image42](Modelica.Mechanics.MultiBody.Interfaces.Frame_resolveI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).Frame\_resolve
=====================================================================================================================================================================================================================

**Coordinate system fixed to the component used to express in which
coordinate system a vector is resolved (non-filled rectangular icon)**

Information
-----------

::

Basic definition of a coordinate system that is fixed to a mechanical
component. In the origin of the coordinate system the cut-force and the
cut-torque is acting. This coordinate system is used to express in which
coordinate system a vector is resolved. A component that uses a
Frame\_resolve connector has to set the cut-force and cut-torque of this
frame to zero. When connecting from a Frame\_resolve connector to
another frame connector, by default the connecting line has line style
"dotted". This component has a non-filled rectangular icon.

::

Extends from
[Frame](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame)
(Coordinate system fixed to the component with one cut-force and
cut-torque (no icon)).

Contents
--------

  ------------------------------------------------------------------------
  Type                                 Nam Description
                                       e   
  ------------------------------------ --- -------------------------------
  [Position](Modelica_SIunits.html#Mod r\_ Position vector from world
  elica.SIunits.Position)              0[3 frame to the connector frame
                                       ]   origin, resolved in world frame
                                           [m]

  [Orientation](Modelica_Mechanics_Mul R   Orientation object to rotate
  tiBody_Frames.html#Modelica.Mechanic     the world frame into the
  s.MultiBody.Frames.Orientation)          connector frame

  flow                                 f[3 Cut-force resolved in connector
  [Force](Modelica_SIunits.html#Modeli ]   frame [N]
  ca.SIunits.Force)                        

  flow                                 t[3 Cut-torque resolved in
  [Torque](Modelica_SIunits.html#Model ]   connector frame [N.m]
  ica.SIunits.Torque)                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Frame_resolve "Coordinate system fixed to the component used to express in which
    coordinate system a vector is resolved (non-filled rectangular icon)"
      extends Frame;

    end Frame_resolve;

* * * * *

![image43](Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).FlangeWithBearing
============================================================================================================================================================================================================================

**Connector consisting of 1-dim. rotational flange and its bearing
frame**

Information
-----------

::

This hierarchical connector models a 1-dim. rotational flange connector
and its optional bearing defined by a 3-dim. frame connector. If a
connection to the subconnectors should be clearly visible, connect first
an instance of
[FlangeWithBearingAdaptor](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptor)
to the FlangeWithBearing connector.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type   Name             Defaul Description
                          t      
  ------ ---------------- ------ ------------------------------------------
  Boolea includeBearingCo false  = true, if bearing frame connector is
  n      nnector                 present, otherwise not present
  -------------------------------------------------------------------------

Contents
--------

  -------------------------------------------------------------------------
  Type                                   Name      Description
  -------------------------------------- --------- ------------------------
  Boolean                                includeBe = true, if bearing frame
                                         aringConn connector is present,
                                         ector     otherwise not present

  [Flange\_a](Modelica_Mechanics_Rotatio flange    1-dim. rotational flange
  nal_Interfaces.html#Modelica.Mechanics           
  .Rotational.Interfaces.Flange_a)                 

  [Frame](Modelica_Mechanics_MultiBody_I bearingFr 3-dim. frame in which
  nterfaces.html#Modelica.Mechanics.Mult ame       the 1-dim. shaft is
  iBody.Interfaces.Frame)                          mounted
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FlangeWithBearing 
      "Connector consisting of 1-dim. rotational flange and its bearing frame"
      parameter Boolean includeBearingConnector=false 
        "= true, if bearing frame connector is present, otherwise not present";
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange 
        "1-dim. rotational flange";
      Modelica.Mechanics.MultiBody.Interfaces.Frame bearingFrame if 
        includeBearingConnector "3-dim. frame in which the 1-dim. shaft is mounted";


    end FlangeWithBearing;

* * * * *

![image44](Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptorI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).FlangeWithBearingAdaptor
==========================================================================================================================================================================================================================================

**Adaptor to allow direct connections to the sub-connectors of
FlangeWithBearing**

Information
-----------

::

Adaptor object to make a more visible connection to the flange and frame
subconnectors of a
[FlangeWithBearing](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing)
connector.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type   Name             Defaul Description
                          t      
  ------ ---------------- ------ ------------------------------------------
  Boolea includeBearingCo false  = true, if bearing frame connector is
  n      nnector                 present, otherwise not present
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                    Name  Description
  --------------------------------------- ----- --------------------------
  [FlangeWithBearing](Modelica_Mechanics_ flang Compound connector
  MultiBody_Interfaces.html#Modelica.Mech eAndF consisting of 1-dim.
  anics.MultiBody.Interfaces.FlangeWithBe rame  rotational flange and
  aring)                                        3-dim. frame mounting

  [Flange\_b](Modelica_Mechanics_Rotation flang 1-dim. rotational flange
  al_Interfaces.html#Modelica.Mechanics.R e     
  otational.Interfaces.Flange_b)                

  [Frame\_a](Modelica_Mechanics_MultiBody frame 3-dim. frame in which the
  _Interfaces.html#Modelica.Mechanics.Mul       1-dim. shaft is mounted
  tiBody.Interfaces.Frame_a)                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model FlangeWithBearingAdaptor 
      "Adaptor to allow direct connections to the sub-connectors of FlangeWithBearing"
      parameter Boolean includeBearingConnector=false 
        "= true, if bearing frame connector is present, otherwise not present";

      Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing flangeAndFrame(
          includeBearingConnector=includeBearingConnector) 
        "Compound connector consisting of 1-dim. rotational flange and 3-dim. frame mounting";
      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange 
        "1-dim. rotational flange";
      Frame_a frame if includeBearingConnector 
        "3-dim. frame in which the 1-dim. shaft is mounted";

    equation 
      connect(flange, flangeAndFrame.flange);
      connect(frame, flangeAndFrame.bearingFrame);
    end FlangeWithBearingAdaptor;

* * * * *

![image45](Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).PartialTwoFrames
==========================================================================================================================================================================================================================

**Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected**

Information
-----------

::

This partial model provides two frame connectors, access to the world
object and an assert to check that both frame connectors are connected.
Therefore, inherit from this partial model if the two frame connectors
are needed and if the two frame connectors should be connected for a
correct model.

::

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

    partial model PartialTwoFrames 
      "Base model for components providing two frame connectors + outer world + assert to guarantee that the component is connected"

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of component is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of component is not connected");
    end PartialTwoFrames;

* * * * *

![image46](Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFramesDoubleSizeI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).PartialTwoFramesDoubleSize
==============================================================================================================================================================================================================================================

**Base model for components providing two frame connectors + outer world
+ assert to guarantee that the component is connected (default icon size
is factor 2 larger as usual)**

Information
-----------

::

This partial model provides two frame connectors, access to the world
object and an assert to check that both frame connectors are connected.
Therefore, inherit from this partial model if the two frame connectors
are needed and if the two frame connectors should be connected for a
correct model.

When dragging "PartialTwoFrames", the default size is a factor of two
larger as usual. This partial model is used by the Joint.Assemblies
joint aggregation models.

::

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

    partial model PartialTwoFramesDoubleSize 
      "Base model for components providing two frame connectors + outer world + assert to guarantee that the component is connected (default icon size is factor 2 larger as usual)"

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the component with one cut-force and cut-torque";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of component is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of component is not connected");
    end PartialTwoFramesDoubleSize;

* * * * *

![image47](Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_aI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).PartialOneFrame\_a
=============================================================================================================================================================================================================================

**Base model for components providing one frame\_a connector + outer
world + assert to guarantee that the component is connected**

Information
-----------

::

This partial model provides one frame\_a connector, access to the world
object and an assert to check that the frame\_a connector is connected.
Therefore, inherit from this partial model if the frame\_a connector is
needed and if this connector should be connected for a correct model.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_a the component with one
  tiBody.Interfaces.Frame_a)                   cut-force and cut-torque
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialOneFrame_a 
      "Base model for components providing one frame_a connector + outer world + assert to guarantee that the component is connected"

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of component is not connected");
    end PartialOneFrame_a;

* * * * *

![image48](Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_bI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).PartialOneFrame\_b
=============================================================================================================================================================================================================================

**Base model for components providing one frame\_b connector + outer
world + assert to guarantee that the component is connected**

Information
-----------

::

This partial model provides one frame\_b connector, access to the world
object and an assert to check that the frame\_b connector is connected.
Therefore, inherit from this partial model if the frame\_b connector is
needed and if this connector should be connected for a correct model.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ----------------------------
  [Frame\_b](Modelica_Mechanics_MultiBody fram Coordinate system fixed to
  _Interfaces.html#Modelica.Mechanics.Mul e\_b the component with one
  tiBody.Interfaces.Frame_b)                   cut-force and cut-torque
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialOneFrame_b 
      "Base model for components providing one frame_b connector + outer world + assert to guarantee that the component is connected"

      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the component with one cut-force and cut-torque";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of component is not connected");
    end PartialOneFrame_b;

* * * * *

![image49](Modelica.Mechanics.MultiBody.Interfaces.PartialElementaryJointI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).PartialElementaryJoint
======================================================================================================================================================================================================================================

**Base model for elementary joints (has two frames + outer world +
assert to guarantee that the joint is connected)**

Information
-----------

::

All **elementary joints** should inherit from this base model, i.e.,
joints that are directly defined by equations, provided they compute
either the rotation object of frame\_b from the rotation object of
frame\_a and from relative quantities (or vice versa), or there is a
constraint equation between the rotation objects of the two frames. In
other cases, a joint object should inherit from
**Interfaces.PartialTwoFrames** (e.g., joint Spherical, because there is
no constraint between the rotation objects of frame\_a and frame\_b or
joint Cylindrical because it is not an elementary joint).

This partial model provides two frame connectors, a "Connections.branch"
between frame\_a and frame\_b, access to the world object and an assert
to check that both frame connectors are connected.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- ---------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_ fram Coordinate system fixed to
  Interfaces.html#Modelica.Mechanics.Multi e\_a the joint with one
  Body.Interfaces.Frame_a)                      cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody_ fram Coordinate system fixed to
  Interfaces.html#Modelica.Mechanics.Multi e\_b the joint with one
  Body.Interfaces.Frame_b)                      cut-force and cut-torque
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialElementaryJoint 
      "Base model for elementary joints (has two frames + outer world + assert to guarantee that the joint is connected)"

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the joint with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the joint with one cut-force and cut-torque";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      Connections.branch(frame_a.R, frame_b.R);
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of joint object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of joint object is not connected");
    end PartialElementaryJoint;

* * * * *

![image50](Modelica.Mechanics.MultiBody.Interfaces.PartialForceI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).PartialForce
==================================================================================================================================================================================================================

**Base model for force elements (provide frame\_b.f and frame\_b.t in
subclasses)**

Information
-----------

::

All **3-dimensional force** and **torque elements** should be based on
this superclass. This model defines frame\_a and frame\_b, computes the
relative translation and rotation between the two frames and calculates
the cut-force and cut-torque at frame\_a by a force and torque balance
from the cut-force and cut-torque at frame\_b. As a result, in a
subclass, only the relationship between the cut-force and cut-torque at
frame\_b has to be defined as a function of the following relative
quantities:

    r_rel_b[3]: Position vector from origin of frame_a to origin
                of frame_b, resolved in frame_b
    R_rel     : Relative orientation object to rotate from frame_a to frame_b

Assume that force f = {100,0,0} should be applied on the body to which
this force element is attached at frame\_b, then the definition should
be:

    model Constant_x_Force
       extends Modelica.Mechanics.MultiBody.Interfaces.PartialForce;
    equation
       frame_b.f = {-100, 0, 0};
       frame_b.t = zeros(3);
    end Constant_x_Force;

Note, that frame\_b.f and frame\_b.t are flow variables and therefore
the negative value of frame\_b.f and frame\_b.t is acting at the part to
which this force element is connected.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- ---------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_ fram Coordinate system fixed to
  Interfaces.html#Modelica.Mechanics.Multi e\_a the joint with one
  Body.Interfaces.Frame_a)                      cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBody_ fram Coordinate system fixed to
  Interfaces.html#Modelica.Mechanics.Multi e\_b the joint with one
  Body.Interfaces.Frame_b)                      cut-force and cut-torque
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialForce 
      "Base model for force elements (provide frame_b.f and frame_b.t in subclasses)"

      import SI = Modelica.SIunits;
      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the joint with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the joint with one cut-force and cut-torque";

      SI.Position r_rel_b[3] 
        "Position vector from origin of frame_a to origin of frame_b, resolved in frame_b";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of force object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of force object is not connected");

      /* Determine relative position vector
         between frame_a and frame_b
      */
      r_rel_b = Frames.resolve2(frame_b.R, frame_b.r_0 - frame_a.r_0);

      /* Force and torque balance between frame_a and frame_b */
      zeros(3) = frame_a.f + Frames.resolveRelative(frame_b.f, frame_b.R, frame_a.
         R);
      zeros(3) = frame_a.t + Frames.resolveRelative(frame_b.t + cross(r_rel_b,
        frame_b.f), frame_b.R, frame_a.R);
    end PartialForce;

* * * * *

![image51](Modelica.Mechanics.MultiBody.Interfaces.PartialLineForceI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).PartialLineForce
==========================================================================================================================================================================================================================

**Base model for line force elements**

Information
-----------

::

All **line force** elements should be based on this base model. This
model defines frame\_a and frame\_b, computes the relative distance
**s** and provides the force and torque balance of the cut-forces and
cut-torques at frame\_a and frame\_b, respectively. In sub-models, only
the line force **f**, acting at frame\_b on the line from frame\_a to
frame\_b, as a function of the relative distance **s** and its
derivative **der**(**s**) has to be defined. Example:

    model Spring
       parameter Real c "spring constant",
       parameter Real s_unstretched "unstretched spring length";
       extends Modelica.Mechanics.MultiBody.Interfaces.PartialLineForce;
    equation
       f = c*(s-s_unstretched);
    end Spring;

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name      Defa Description
                                             ult  
  -------------------------------- --------- ---- -------------------------
  **Advanced**                                    

  [Position](Modelica_SIunits.html s\_small  1.E- Prevent zero-division if
  #Modelica.SIunits.Position)                6    relative distance s=0 [m]

  If enabled, can give wrong                      
  results, see                                    
  MultiBody.UsersGuide.Tutorial.Co                
  nnectionOfLineForces                            

  Boolean                          fixedRota fals =true, if rotation
                                   tionAtFra e    frame\_a.R is fixed (to
                                   me\_a          directly connect line
                                                  forces)

  Boolean                          fixedRota fals =true, if rotation
                                   tionAtFra e    frame\_b.R is fixed (to
                                   me\_b          directly connect line
                                                  forces)
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBod fram Coordinate system fixed to
  y_Interfaces.html#Modelica.Mechanics.M e\_a the force element with one
  ultiBody.Interfaces.Frame_a)                cut-force and cut-torque

  [Frame\_b](Modelica_Mechanics_MultiBod fram Coordinate system fixed to
  y_Interfaces.html#Modelica.Mechanics.M e\_b the force element with one
  ultiBody.Interfaces.Frame_b)                cut-force and cut-torque
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialLineForce "Base model for line force elements"
      import SI = Modelica.SIunits;
      parameter SI.Position s_small=1.E-6 
        " Prevent zero-division if relative distance s=0";
      parameter Boolean fixedRotationAtFrame_a=false 
        "=true, if rotation frame_a.R is fixed (to directly connect line forces)";
      parameter Boolean fixedRotationAtFrame_b=false 
        "=true, if rotation frame_b.R is fixed (to directly connect line forces)";

      Interfaces.Frame_a frame_a 
        "Coordinate system fixed to the force element with one cut-force and cut-torque";
      Interfaces.Frame_b frame_b 
        "Coordinate system fixed to the force element with one cut-force and cut-torque";
      SI.Force f 
        "Line force acting on frame_a and on frame_b (positive, if acting on frame_b and directed from frame_a to frame_b)";
      SI.Position s 
        "(Guarded) distance between the origin of frame_a and the origin of frame_b (>= s_small))";
      Real e_a[3](each final unit="1") 
        "Unit vector on the line connecting the origin of frame_a with the origin of frame_b resolved in frame_a (directed from frame_a to frame_b)";
      Modelica.SIunits.Position r_rel_a[3] 
        "Position vector from origin of frame_a to origin of frame_b, resolved in frame_a";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of line force object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of line force object is not connected");

      // Determine distance s and n_a
      r_rel_a = Frames.resolve2(frame_a.R, frame_b.r_0 - frame_a.r_0);
      s = noEvent(max(Modelica.Math.Vectors.length(
                                    r_rel_a), s_small));
      e_a = r_rel_a/s;

      /* Determine forces and torques at frame_a and frame_b */
      frame_a.f = -e_a*f;
      frame_b.f = -Frames.resolve2(Frames.relativeRotation(frame_a.R, frame_b.R),
         frame_a.f);

      // Additional equations, if direct connections of line forces
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

    end PartialLineForce;

* * * * *

![image52](Modelica.Mechanics.MultiBody.Interfaces.PartialAbsoluteSensorI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).PartialAbsoluteSensor
====================================================================================================================================================================================================================================

**Base model to measure an absolute frame variable**

Information
-----------

::

This is the base class of a 3-dim. mechanics component with one frame
and one output port in order to measure an absolute quantity in the
frame connector and to provide the measured signal as output for further
processing with the blocks of package Modelica.Blocks.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  Type         Name        Default      Description
  ------------ ----------- ------------ -----------------------------
  Integer      n\_out      1            Number of output signals

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Frame\_a](Modelica_Mechanics_MultiBod fram Coordinate system from which
  y_Interfaces.html#Modelica.Mechanics.M e\_a absolute quantities are
  ultiBody.Interfaces.Frame_a)                provided as output signals

  output                                 y[n\ Measured data as signal
  [RealOutput](Modelica_Blocks_Interface _out vector
  s.html#Modelica.Blocks.Interfaces.Real ]    
  Output)                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialAbsoluteSensor 
      "Base model to measure an absolute frame variable"
      extends Modelica.Icons.RotationalSensor;
      parameter Integer n_out = 1 "Number of output signals";
      Interfaces.Frame_a frame_a 
        "Coordinate system from which absolute quantities are provided as output signals";

      Modelica.Blocks.Interfaces.RealOutput y[n_out] 
        "Measured data as signal vector";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;

    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of absolute sensor object is not connected");
    end PartialAbsoluteSensor;

* * * * *

![image53](Modelica.Mechanics.MultiBody.Interfaces.PartialRelativeSensorI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).PartialRelativeSensor
====================================================================================================================================================================================================================================

**Base model to measure a relative variable between two frames**

Information
-----------

::

This is a base class for 3-dim. mechanical components with two frames
and one output port in order to measure relative quantities between the
two frames or the cut-forces/torques in the frame and to provide the
measured signals as output for further processing with the blocks of
package Modelica.Blocks.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  Type         Name        Default      Description
  ------------ ----------- ------------ -----------------------------
  Integer      n\_out      1            Number of output signals

Connectors
----------

  ------------------------------------------------------------------------
  Type                                              Name   Description
  ------------------------------------------------- ------ ---------------
  [Frame\_a](Modelica_Mechanics_MultiBody_Interface frame\ Coordinate
  s.html#Modelica.Mechanics.MultiBody.Interfaces.Fr _a     system a
  ame_a)                                                   

  [Frame\_b](Modelica_Mechanics_MultiBody_Interface frame\ Coordinate
  s.html#Modelica.Mechanics.MultiBody.Interfaces.Fr _b     system b
  ame_b)                                                   

  output                                            y[n\_o Measured data
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode ut]    as signal
  lica.Blocks.Interfaces.RealOutput)                       vector
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialRelativeSensor 
      "Base model to measure a relative variable between two frames"
      extends Modelica.Icons.RotationalSensor;
      parameter Integer n_out = 1 "Number of output signals";
      Interfaces.Frame_a frame_a "Coordinate system a";
      Interfaces.Frame_b frame_b "Coordinate system b";

      Modelica.Blocks.Interfaces.RealOutput y[n_out] 
        "Measured data as signal vector";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;

    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of relative sensor object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of relative sensor object is not connected");

    end PartialRelativeSensor;

* * * * *

![image54](Modelica.Mechanics.MultiBody.Interfaces.PartialVisualizerI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).PartialVisualizer
============================================================================================================================================================================================================================

**Base model for visualizers (has a frame\_a on the left side + outer
world + assert to guarantee that the component is connected)**

Information
-----------

::

This partial model provides one frame\_a connector, access to the world
object and an assert to check that the frame\_a connector is connected.
It is used by inheritance from all visualizer objects.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name  Description
  ------------------------------------------ ----- ------------------------
  [Frame\_a](Modelica_Mechanics_MultiBody_In frame Coordinate system in
  terfaces.html#Modelica.Mechanics.MultiBody \_a   which visualization data
  .Interfaces.Frame_a)                             is resolved
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialVisualizer 
      "Base model for visualizers (has a frame_a on the left side + outer world + assert to guarantee that the component is connected)"

      Interfaces.Frame_a frame_a 
        "Coordinate system in which visualization data is resolved";
    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of visualizer object is not connected");
    end PartialVisualizer;

* * * * *

![image55](Modelica.Mechanics.MultiBody.Interfaces.ZeroPositionI.png) [Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).ZeroPosition
==================================================================================================================================================================================================================

**Set absolute position vector of frame\_resolve to a zero vector and
the orientation object to a null rotation**

Information
-----------

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                     Name     Descrip
                                                                    tion
  -------------------------------------------------------- -------- -------
  [Frame\_resolve](Modelica_Mechanics_MultiBody_Interfaces frame\_r 
  .html#Modelica.Mechanics.MultiBody.Interfaces.Frame_reso esolve   
  lve)                                                              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ZeroPosition 
      "Set absolute position vector of frame_resolve to a zero vector and the orientation object to a null rotation"
       extends Modelica.Blocks.Interfaces.BlockIcon;
      Interfaces.Frame_resolve frame_resolve;
    equation 
      Connections.root(frame_resolve.R);
      frame_resolve.R = Modelica.Mechanics.MultiBody.Frames.nullRotation();
      frame_resolve.r_0 = zeros(3);
    end ZeroPosition;

* * * * *

[Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).partialGravityAcceleration
==========================================================================================================================================================

Information
-----------

::

This partial function defines the interface to the gravity function used
in the World object. All gravity field functions must inherit from this
function. The input to the function is the absolute position vector of a
point in the gravity field, whereas the output is the gravity
acceleration at this point, resolved in the world frame.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                         Nam Defau Description
                               e   lt    
  ---------------------------- --- ----- ----------------------------------
  [Position](Modelica_SIunits. r[3       Position vector from world frame
  html#Modelica.SIunits.Positi ]         to actual point, resolved in world
  on)                                    frame [m]
  -------------------------------------------------------------------------

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

    partial function partialGravityAcceleration
       input Modelica.SIunits.Position r[3] 
        "Position vector from world frame to actual point, resolved in world frame";
       output Modelica.SIunits.Acceleration gravity[3] 
        "Gravity acceleration at position r, resolved in world frame";
    end partialGravityAcceleration;

* * * * *

[Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).partialSurfaceCharacteristic
============================================================================================================================================================

Inputs
------

  -------------------------------------------------------------------------
  Type     Name              Default  Description
  -------- ----------------- -------- -------------------------------------
  Integer  nu                         Number of points in u-Dimension

  Integer  nv                         Number of points in v-Dimension

  Boolean  multiColoredSurfa false    = true: Color is defined for each
           ce                         surface point
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                 Name                        Description
  -------------------- --------------------------- ------------------------
  [Position](Modelica_ X[nu, nv]                   [nu,nv] positions of
  SIunits.html#Modelic                             points in x-Direction
  a.SIunits.Position)                              resolved in surface
                                                   frame [m]

  [Position](Modelica_ Y[nu, nv]                   [nu,nv] positions of
  SIunits.html#Modelic                             points in y-Direction
  a.SIunits.Position)                              resolved in surface
                                                   frame [m]

  [Position](Modelica_ Z[nu, nv]                   [nu,nv] positions of
  SIunits.html#Modelic                             points in z-Direction
  a.SIunits.Position)                              resolved in surface
                                                   frame [m]

  Real                 C[if multiColoredSurface    [nu,nv,3] Color array,
                       then nu else 0, if          defining the color for
                       multiColoredSurface then nv each surface point
                       else 0, 3]                  
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial function partialSurfaceCharacteristic
       input Integer nu "Number of points in u-Dimension";
       input Integer nv "Number of points in v-Dimension";
       input Boolean multiColoredSurface=false 
        "= true: Color is defined for each surface point";
       output Modelica.SIunits.Position X[nu,nv] 
        "[nu,nv] positions of points in x-Direction resolved in surface frame";
       output Modelica.SIunits.Position Y[nu,nv] 
        "[nu,nv] positions of points in y-Direction resolved in surface frame";
       output Modelica.SIunits.Position Z[nu,nv] 
        "[nu,nv] positions of points in z-Direction resolved in surface frame";
       output Real C[if multiColoredSurface then nu else 0,
                     if multiColoredSurface then nv else 0,3] 
        "[nu,nv,3] Color array, defining the color for each surface point";
    end partialSurfaceCharacteristic;

* * * * *

[Modelica.Mechanics.MultiBody.Interfaces](Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces).partialColorMap
===============================================================================================================================================

**Interface for a function returning a color map**

Information
-----------

::

This partial function defines the interface of a function that returns a
color map. Predefined color map functions are defined in package
[Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps](Modelica_Mechanics_MultiBody_Visualizers_Colors_ColorMaps.html#Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps).

::

Inputs
------

  Type        Name          Default     Description
  ----------- ------------- ----------- ------------------------------------
  Integer     n\_colors     64          Number of colors in the color map

Outputs
-------

  Type     Name                      Description
  -------- ------------------------- --------------------------------------
  Real     colorMap[n\_colors, 3]    Color map to map a scalar to a color

Modelica definition
-------------------

    partial function partialColorMap 
      "Interface for a function returning a color map"
      input Integer n_colors=64 "Number of colors in the color map";
      output Real colorMap[n_colors,3] "Color map to map a scalar to a color";
    end partialColorMap;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:28 2010.
