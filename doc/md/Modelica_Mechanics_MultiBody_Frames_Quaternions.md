% Modelica.Mechanics.MultiBody.Frames.Quaternions
% 
% 

[Modelica.Mechanics.MultiBody.Frames](Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames).Quaternions
===============================================================================================================================

**Functions to transform rotational frame quantities based on
quaternions (also called Euler parameters)**

Information
-----------

::

Package **Frames.Quaternions** contains type definitions and functions
to transform rotational frame quantities with quaternions. Functions of
this package are currently only utilized in MultiBody.Parts.Body
components, when quaternions shall be used as parts of the body states.
Some functions are also used in a new Modelica package for B-Spline
interpolation that is able to interpolate paths consisting of position
vectors and orientation objects.

### Content

In the table below an example is given for every function definition.
The used variables have the following declaration:

    Quaternions.Orientation Q, Q1, Q2, Q_rel, Q_inv;
    Real[3,3]   T, T_inv;
    Real[3]     v1, v2, w1, w2, n_x, n_y, n_z, res_ori, phi;
    Real[6]     res_equal;
    Real        L, angle;

***Function/type***

***Description***

**Orientation Q;**

New type defining a quaternion object that describes
  ~ the rotation of frame 1 into frame 2.

**der\_Orientation** der\_Q;

New type defining the first time derivative of
Frames.Quaternions.Orientation.

res\_ori = **orientationConstraint**(Q);

Return the constraints between the variables of a quaternion object
  ~ (shall be zero).

w1 = **angularVelocity1**(Q, der\_Q);

Return angular velocity resolved in frame 1 from quaternion object Q
  ~ and its derivative der\_Q.

w2 = **angularVelocity2**(Q, der\_Q);

Return angular velocity resolved in frame 2 from quaternion object Q
  ~ and its derivative der\_Q.

v1 = **resolve1**(Q,v2);

Transform vector v2 from frame 2 to frame 1.

v2 = **resolve2**(Q,v1);

Transform vector v1 from frame 1 to frame 2.

[v1,w1] = **multipleResolve1**(Q, [v2,w2]);

Transform several vectors from frame 2 to frame 1.

[v2,w2] = **multipleResolve2**(Q, [v1,w1]);

Transform several vectors from frame 1 to frame 2.

Q = **nullRotation**()

Return quaternion object R that does not rotate a frame.

Q\_inv = **inverseRotation**(Q);

Return inverse quaternion object.

Q\_rel = **relativeRotation**(Q1,Q2);

Return relative quaternion object from two absolute quaternion objects.

Q2 = **absoluteRotation**(Q1,Q\_rel);

Return absolute quaternion object from another absolute
  ~ and a relative quaternion object.

Q = **planarRotation**(e, angle);

Return quaternion object of a planar rotation.

phi = **smallRotation**(Q);

Return rotation angles phi valid for a small rotation.

Q = **from\_T**(T);

Return quaternion object Q from transformation matrix T.

Q = **from\_T\_inv**(T\_inv);

Return quaternion object Q from inverse transformation matrix T\_inv.

T = **to\_T**(Q);

Return transformation matrix T from quaternion object Q.

T\_inv = **to\_T\_inv**(Q);

Return inverse transformation matrix T\_inv from quaternion object Q.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                            Description
  ----------------------------------------------- ------------------------
  [Orientation](Modelica_Mechanics_MultiBody_Fram Orientation type
  es_Quaternions.html#Modelica.Mechanics.MultiBod defining rotation from a
  y.Frames.Quaternions.Orientation)               frame 1 into a frame 2
                                                  with quaternions
                                                  {p1,p2,p3,p0}

  [der\_Orientation](Modelica_Mechanics_MultiBody First time derivative of
  _Frames_Quaternions.html#Modelica.Mechanics.Mul Quaternions.Orientation
  tiBody.Frames.Quaternions.der_Orientation)      

  ![image17](Modelica.Mechanics.MultiBody.Frames. Return residues of
  Quaternions.orientationConstraintS.png)         orientation constraints
  [orientationConstraint](Modelica_Mechanics_Mult (shall be zero)
  iBody_Frames_Quaternions.html#Modelica.Mechanic 
  s.MultiBody.Frames.Quaternions.orientationConst 
  raint)                                          

  ![image18](Modelica.Mechanics.MultiBody.Frames. Compute angular velocity
  Quaternions.orientationConstraintS.png)         resolved in frame 1 from
  [angularVelocity1](Modelica_Mechanics_MultiBody quaternion orientation
  _Frames_Quaternions.html#Modelica.Mechanics.Mul object and its
  tiBody.Frames.Quaternions.angularVelocity1)     derivative

  ![image19](Modelica.Mechanics.MultiBody.Frames. Compute angular velocity
  Quaternions.orientationConstraintS.png)         resolved in frame 2 from
  [angularVelocity2](Modelica_Mechanics_MultiBody quaternions orientation
  _Frames_Quaternions.html#Modelica.Mechanics.Mul object and its
  tiBody.Frames.Quaternions.angularVelocity2)     derivative

  ![image20](Modelica.Mechanics.MultiBody.Frames. Transform vector from
  Quaternions.orientationConstraintS.png)         frame 2 to frame 1
  [resolve1](Modelica_Mechanics_MultiBody_Frames_ 
  Quaternions.html#Modelica.Mechanics.MultiBody.F 
  rames.Quaternions.resolve1)                     

  ![image21](Modelica.Mechanics.MultiBody.Frames. Transform vector from
  Quaternions.orientationConstraintS.png)         frame 1 to frame 2
  [resolve2](Modelica_Mechanics_MultiBody_Frames_ 
  Quaternions.html#Modelica.Mechanics.MultiBody.F 
  rames.Quaternions.resolve2)                     

  ![image22](Modelica.Mechanics.MultiBody.Frames. Transform several
  Quaternions.orientationConstraintS.png)         vectors from frame 2 to
  [multipleResolve1](Modelica_Mechanics_MultiBody frame 1
  _Frames_Quaternions.html#Modelica.Mechanics.Mul 
  tiBody.Frames.Quaternions.multipleResolve1)     

  ![image23](Modelica.Mechanics.MultiBody.Frames. Transform several
  Quaternions.orientationConstraintS.png)         vectors from frame 1 to
  [multipleResolve2](Modelica_Mechanics_MultiBody frame 2
  _Frames_Quaternions.html#Modelica.Mechanics.Mul 
  tiBody.Frames.Quaternions.multipleResolve2)     

  ![image24](Modelica.Mechanics.MultiBody.Frames. Return quaternion
  Quaternions.orientationConstraintS.png)         orientation object that
  [nullRotation](Modelica_Mechanics_MultiBody_Fra does not rotate a frame
  mes_Quaternions.html#Modelica.Mechanics.MultiBo 
  dy.Frames.Quaternions.nullRotation)             

  ![image25](Modelica.Mechanics.MultiBody.Frames. Return inverse
  Quaternions.orientationConstraintS.png)         quaternions orientation
  [inverseRotation](Modelica_Mechanics_MultiBody_ object
  Frames_Quaternions.html#Modelica.Mechanics.Mult 
  iBody.Frames.Quaternions.inverseRotation)       

  ![image26](Modelica.Mechanics.MultiBody.Frames. Return relative
  Quaternions.orientationConstraintS.png)         quaternions orientation
  [relativeRotation](Modelica_Mechanics_MultiBody object
  _Frames_Quaternions.html#Modelica.Mechanics.Mul 
  tiBody.Frames.Quaternions.relativeRotation)     

  ![image27](Modelica.Mechanics.MultiBody.Frames. Return absolute
  Quaternions.orientationConstraintS.png)         quaternions orientation
  [absoluteRotation](Modelica_Mechanics_MultiBody object from another
  _Frames_Quaternions.html#Modelica.Mechanics.Mul absolute and a relative
  tiBody.Frames.Quaternions.absoluteRotation)     quaternions orientation
                                                  object

  ![image28](Modelica.Mechanics.MultiBody.Frames. Return quaternion
  Quaternions.orientationConstraintS.png)         orientation object of a
  [planarRotation](Modelica_Mechanics_MultiBody_F planar rotation
  rames_Quaternions.html#Modelica.Mechanics.Multi 
  Body.Frames.Quaternions.planarRotation)         

  ![image29](Modelica.Mechanics.MultiBody.Frames. Return rotation angles
  Quaternions.orientationConstraintS.png)         valid for a small
  [smallRotation](Modelica_Mechanics_MultiBody_Fr rotation
  ames_Quaternions.html#Modelica.Mechanics.MultiB 
  ody.Frames.Quaternions.smallRotation)           

  ![image30](Modelica.Mechanics.MultiBody.Frames. Return quaternion
  Quaternions.orientationConstraintS.png)         orientation object Q
  [from\_T](Modelica_Mechanics_MultiBody_Frames_Q from transformation
  uaternions.html#Modelica.Mechanics.MultiBody.Fr matrix T
  ames.Quaternions.from_T)                        

  ![image31](Modelica.Mechanics.MultiBody.Frames. Return quaternion
  Quaternions.orientationConstraintS.png)         orientation object Q
  [from\_T\_inv](Modelica_Mechanics_MultiBody_Fra from inverse
  mes_Quaternions.html#Modelica.Mechanics.MultiBo transformation matrix
  dy.Frames.Quaternions.from_T_inv)               T\_inv

  ![image32](Modelica.Mechanics.MultiBody.Frames. Return transformation
  Quaternions.orientationConstraintS.png)         matrix T from quaternion
  [to\_T](Modelica_Mechanics_MultiBody_Frames_Qua orientation object Q
  ternions.html#Modelica.Mechanics.MultiBody.Fram 
  es.Quaternions.to_T)                            

  ![image33](Modelica.Mechanics.MultiBody.Frames. Return inverse
  Quaternions.orientationConstraintS.png)         transformation matrix
  [to\_T\_inv](Modelica_Mechanics_MultiBody_Frame T\_inv from quaternion
  s_Quaternions.html#Modelica.Mechanics.MultiBody orientation object Q
  .Frames.Quaternions.to_T_inv)                   
  ------------------------------------------------------------------------

Types and constants
-------------------

    type Orientation 
    "Orientation type defining rotation from a frame 1 into a frame 2 with quaternions {p1,p2,p3,p0}"

      extends Internal.QuaternionBase;

      encapsulated function equalityConstraint 
      "Return the constraint residues to express that two frames have the same quaternion orientation"

        import Modelica;
        import Modelica.Mechanics.MultiBody.Frames.Quaternions;
        extends Modelica.Icons.Function;
        input Quaternions.Orientation Q1 
        "Quaternions orientation object to rotate frame 0 into frame 1";
        input Quaternions.Orientation Q2 
        "Quaternions orientation object to rotate frame 0 into frame 2";
        output Real residue[3] 
        "The half of the rotation angles around x-, y-, and z-axis of frame 1 to rotate frame 1 into frame 2 for a small rotation (shall be zero)";
      algorithm 
        residue := [Q1[4], Q1[3], -Q1[2], -Q1[1]; -Q1[3], Q1[4], Q1[1], -Q1[2];
           Q1[2], -Q1[1], Q1[4], -Q1[3]]*Q2;
      end equalityConstraint;

    end Orientation;

    type der_Orientation = Real[4] (each unit="1/s") 
    "First time derivative of Quaternions.Orientation";

* * * * *

![image34](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).orientationConstraint
====================================================================================================================================================================================================================================================================

**Return residues of orientation constraints (shall be zero)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                        Na Def Description
                                              me aul 
                                                 t   
  ------------------------------------------- -- --- ---------------------
  [Orientation](Modelica_Mechanics_MultiBody_ Q      Quaternions
  Frames_Quaternions.html#Modelica.Mechanics.        orientation object to
  MultiBody.Frames.Quaternions.Orientation)          rotate frame 1 into
                                                     frame 2
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name            Description
  --------- --------------- ---------------------------------------
  Real      residue[1]      Residue constraint (shall be zero)

Modelica definition
-------------------

    function orientationConstraint 
      "Return residues of orientation constraints (shall be zero)"
      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      output Real residue[1] "Residue constraint (shall be zero)";
    algorithm 
      residue := {Q*Q - 1};
    end orientationConstraint;

* * * * *

![image35](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).angularVelocity1
===============================================================================================================================================================================================================================================================

**Compute angular velocity resolved in frame 1 from quaternion
orientation object and its derivative**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Nam Def Description
                                               e   aul 
                                                   t   
  -------------------------------------------- --- --- --------------------
  [Orientation](Modelica_Mechanics_MultiBody_F Q       Quaternions
  rames_Quaternions.html#Modelica.Mechanics.Mu         orientation object
  ltiBody.Frames.Quaternions.Orientation)              to rotate frame 1
                                                       into frame 2

  [der\_Orientation](Modelica_Mechanics_MultiB der     Derivative of Q
  ody_Frames_Quaternions.html#Modelica.Mechani \_Q     [1/s]
  cs.MultiBody.Frames.Quaternions.der_Orientat         
  ion)                                                 
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                      Name Description
  ----------------------------------------- ---- -------------------------
  [AngularVelocity](Modelica_SIunits.html#M w[3] Angular velocity resolved
  odelica.SIunits.AngularVelocity)               in frame 1 [rad/s]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function angularVelocity1 
      "Compute angular velocity resolved in frame 1 from quaternion orientation object and its derivative"

      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      input der_Orientation der_Q "Derivative of Q";
      output Modelica.SIunits.AngularVelocity w[3] 
        "Angular velocity resolved in frame 1";
    algorithm 
      w := 2*([Q[4], -Q[3], Q[2], -Q[1]; Q[3], Q[4], -Q[1], -Q[2]; -Q[2], Q[1],
         Q[4], -Q[3]]*der_Q);
    end angularVelocity1;

* * * * *

![image36](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).angularVelocity2
===============================================================================================================================================================================================================================================================

**Compute angular velocity resolved in frame 2 from quaternions
orientation object and its derivative**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Nam Def Description
                                               e   aul 
                                                   t   
  -------------------------------------------- --- --- --------------------
  [Orientation](Modelica_Mechanics_MultiBody_F Q       Quaternions
  rames_Quaternions.html#Modelica.Mechanics.Mu         orientation object
  ltiBody.Frames.Quaternions.Orientation)              to rotate frame 1
                                                       into frame 2

  [der\_Orientation](Modelica_Mechanics_MultiB der     Derivative of Q
  ody_Frames_Quaternions.html#Modelica.Mechani \_Q     [1/s]
  cs.MultiBody.Frames.Quaternions.der_Orientat         
  ion)                                                 
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                              Nam Description
                                    e   
  --------------------------------- --- ----------------------------------
  [AngularVelocity](Modelica_SIunit w[3 Angular velocity of frame 2 with
  s.html#Modelica.SIunits.AngularVe ]   respect to frame 1 resolved in
  locity)                               frame 2 [rad/s]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function angularVelocity2 
      "Compute angular velocity resolved in frame 2 from quaternions orientation object and its derivative"

      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      input der_Orientation der_Q "Derivative of Q";
      output Modelica.SIunits.AngularVelocity w[3] 
        "Angular velocity of frame 2 with respect to frame 1 resolved in frame 2";
    algorithm 
      w := 2*([Q[4], Q[3], -Q[2], -Q[1]; -Q[3], Q[4], Q[1], -Q[2]; Q[2], -Q[1],
         Q[4], -Q[3]]*der_Q);
    end angularVelocity2;

* * * * *

![image37](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).resolve1
=======================================================================================================================================================================================================================================================

**Transform vector from frame 2 to frame 1**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Nam Def Description
                                              e   aul 
                                                  t   
  ------------------------------------------- --- --- ---------------------
  [Orientation](Modelica_Mechanics_MultiBody_ Q       Quaternions
  Frames_Quaternions.html#Modelica.Mechanics.         orientation object to
  MultiBody.Frames.Quaternions.Orientation)           rotate frame 1 into
                                                      frame 2

  Real                                        v2[     Vector in frame 2
                                              3]      
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name       Description
  --------- ---------- ----------------------
  Real      v1[3]      Vector in frame 1

Modelica definition
-------------------

    function resolve1 "Transform vector from frame 2 to frame 1"
      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      input Real v2[3] "Vector in frame 2";
      output Real v1[3] "Vector in frame 1";
    algorithm 
      v1 := 2*((Q[4]*Q[4] - 0.5)*v2 + (Q[1:3]*v2)*Q[1:3] + Q[4]*cross(Q[1:3],
        v2));
    end resolve1;

* * * * *

![image38](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).resolve2
=======================================================================================================================================================================================================================================================

**Transform vector from frame 1 to frame 2**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Nam Def Description
                                              e   aul 
                                                  t   
  ------------------------------------------- --- --- ---------------------
  [Orientation](Modelica_Mechanics_MultiBody_ Q       Quaternions
  Frames_Quaternions.html#Modelica.Mechanics.         orientation object to
  MultiBody.Frames.Quaternions.Orientation)           rotate frame 1 into
                                                      frame 2

  Real                                        v1[     Vector in frame 1
                                              3]      
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name       Description
  --------- ---------- ----------------------
  Real      v2[3]      Vector in frame 2

Modelica definition
-------------------

    function resolve2 "Transform vector from frame 1 to frame 2"
      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      input Real v1[3] "Vector in frame 1";
      output Real v2[3] "Vector in frame 2";
    algorithm 
      v2 := 2*((Q[4]*Q[4] - 0.5)*v1 + (Q[1:3]*v1)*Q[1:3] - Q[4]*cross(Q[1:3],
        v1));
    end resolve2;

* * * * *

![image39](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).multipleResolve1
===============================================================================================================================================================================================================================================================

**Transform several vectors from frame 2 to frame 1**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                       Name Def Description
                                                  aul 
                                                  t   
  ------------------------------------------ ---- --- ---------------------
  [Orientation](Modelica_Mechanics_MultiBody Q        Quaternions
  _Frames_Quaternions.html#Modelica.Mechanic          orientation object to
  s.MultiBody.Frames.Quaternions.Orientation          rotate frame 1 into
  )                                                   frame 2

  Real                                       v2[3     Vectors in frame 2
                                             ,        
                                             :]       
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name                    Description
  --------- ----------------------- -----------------------
  Real      v1[3, size(v2, 2)]      Vectors in frame 1

Modelica definition
-------------------

    function multipleResolve1 
      "Transform several vectors from frame 2 to frame 1"
      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      input Real v2[3, :] "Vectors in frame 2";
      output Real v1[3, size(v2, 2)] "Vectors in frame 1";
    algorithm 
      v1 := ((2*Q[4]*Q[4] - 1)*identity(3) + 2*([Q[1:3]]*transpose([Q[1:3]]) +
        Q[4]*skew(Q[1:3])))*v2;
    end multipleResolve1;

* * * * *

![image40](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).multipleResolve2
===============================================================================================================================================================================================================================================================

**Transform several vectors from frame 1 to frame 2**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                       Name Def Description
                                                  aul 
                                                  t   
  ------------------------------------------ ---- --- ---------------------
  [Orientation](Modelica_Mechanics_MultiBody Q        Quaternions
  _Frames_Quaternions.html#Modelica.Mechanic          orientation object to
  s.MultiBody.Frames.Quaternions.Orientation          rotate frame 1 into
  )                                                   frame 2

  Real                                       v1[3     Vectors in frame 1
                                             ,        
                                             :]       
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name                    Description
  --------- ----------------------- -----------------------
  Real      v2[3, size(v1, 2)]      Vectors in frame 2

Modelica definition
-------------------

    function multipleResolve2 
      "Transform several vectors from frame 1 to frame 2"
      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      input Real v1[3, :] "Vectors in frame 1";
      output Real v2[3, size(v1, 2)] "Vectors in frame 2";
    algorithm 
      v2 := ((2*Q[4]*Q[4] - 1)*identity(3) + 2*([Q[1:3]]*transpose([Q[1:3]]) -
        Q[4]*skew(Q[1:3])))*v1;
    end multipleResolve2;

* * * * *

![image41](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).nullRotation
===========================================================================================================================================================================================================================================================

**Return quaternion orientation object that does not rotate a frame**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Outputs
-------

  -------------------------------------------------------------------------
  Type                                           Nam Description
                                                 e   
  ---------------------------------------------- --- ----------------------
  [Orientation](Modelica_Mechanics_MultiBody_Fra Q   Quaternions
  mes_Quaternions.html#Modelica.Mechanics.MultiB     orientation object to
  ody.Frames.Quaternions.Orientation)                rotate frame 1 into
                                                     frame 2
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function nullRotation 
      "Return quaternion orientation object that does not rotate a frame"

      extends Modelica.Icons.Function;
      output Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
    algorithm 
      Q := {0,0,0,1};
    end nullRotation;

* * * * *

![image42](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).inverseRotation
==============================================================================================================================================================================================================================================================

**Return inverse quaternions orientation object**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                        Na Def Description
                                              me aul 
                                                 t   
  ------------------------------------------- -- --- ---------------------
  [Orientation](Modelica_Mechanics_MultiBody_ Q      Quaternions
  Frames_Quaternions.html#Modelica.Mechanics.        orientation object to
  MultiBody.Frames.Quaternions.Orientation)          rotate frame 1 into
                                                     frame 2
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                          Nam Description
                                                e   
  --------------------------------------------- --- ----------------------
  [Orientation](Modelica_Mechanics_MultiBody_Fr Q\_ Quaternions
  ames_Quaternions.html#Modelica.Mechanics.Mult inv orientation object to
  iBody.Frames.Quaternions.Orientation)             rotate frame 2 into
                                                    frame 1
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function inverseRotation 
      "Return inverse quaternions orientation object"
      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      output Quaternions.Orientation Q_inv 
        "Quaternions orientation object to rotate frame 2 into frame 1";
    algorithm 
      Q_inv := {-Q[1],-Q[2],-Q[3],Q[4]};
    end inverseRotation;

* * * * *

![image43](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).relativeRotation
===============================================================================================================================================================================================================================================================

**Return relative quaternions orientation object**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                        Na Def Description
                                              me aul 
                                                 t   
  ------------------------------------------- -- --- ---------------------
  [Orientation](Modelica_Mechanics_MultiBody_ Q1     Quaternions
  Frames_Quaternions.html#Modelica.Mechanics.        orientation object to
  MultiBody.Frames.Quaternions.Orientation)          rotate frame 0 into
                                                     frame 1

  [Orientation](Modelica_Mechanics_MultiBody_ Q2     Quaternions
  Frames_Quaternions.html#Modelica.Mechanics.        orientation object to
  MultiBody.Frames.Quaternions.Orientation)          rotate frame 0 into
                                                     frame 2
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                          Nam Description
                                                e   
  --------------------------------------------- --- ----------------------
  [Orientation](Modelica_Mechanics_MultiBody_Fr Q\_ Quaternions
  ames_Quaternions.html#Modelica.Mechanics.Mult rel orientation object to
  iBody.Frames.Quaternions.Orientation)             rotate frame 1 into
                                                    frame 2
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function relativeRotation 
      "Return relative quaternions orientation object"
      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q1 
        "Quaternions orientation object to rotate frame 0 into frame 1";
      input Quaternions.Orientation Q2 
        "Quaternions orientation object to rotate frame 0 into frame 2";
      output Quaternions.Orientation Q_rel 
        "Quaternions orientation object to rotate frame 1 into frame 2";
    algorithm 
      Q_rel := [Q1[4], Q1[3], -Q1[2], -Q1[1]; -Q1[3], Q1[4], Q1[1], -Q1[2]; Q1[
        2], -Q1[1], Q1[4], -Q1[3]; Q1[1], Q1[2], Q1[3], Q1[4]]*Q2;
    end relativeRotation;

* * * * *

![image44](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).absoluteRotation
===============================================================================================================================================================================================================================================================

**Return absolute quaternions orientation object from another absolute
and a relative quaternions orientation object**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Nam Def Description
                                              e   aul 
                                                  t   
  ------------------------------------------- --- --- ---------------------
  [Orientation](Modelica_Mechanics_MultiBody_ Q1      Quaternions
  Frames_Quaternions.html#Modelica.Mechanics.         orientation object to
  MultiBody.Frames.Quaternions.Orientation)           rotate frame 0 into
                                                      frame 1

  [Orientation](Modelica_Mechanics_MultiBody_ Q\_     Quaternions
  Frames_Quaternions.html#Modelica.Mechanics. rel     orientation object to
  MultiBody.Frames.Quaternions.Orientation)           rotate frame 1 into
                                                      frame 2
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                           Nam Description
                                                 e   
  ---------------------------------------------- --- ----------------------
  [Orientation](Modelica_Mechanics_MultiBody_Fra Q2  Quaternions
  mes_Quaternions.html#Modelica.Mechanics.MultiB     orientation object to
  ody.Frames.Quaternions.Orientation)                rotate frame 0 into
                                                     frame 2
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function absoluteRotation 
      "Return absolute quaternions orientation object from another absolute and a relative quaternions orientation object"

      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q1 
        "Quaternions orientation object to rotate frame 0 into frame 1";
      input Quaternions.Orientation Q_rel 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      output Quaternions.Orientation Q2 
        "Quaternions orientation object to rotate frame 0 into frame 2";
    algorithm 
      Q2 := [Q_rel[4], Q_rel[3], -Q_rel[2], Q_rel[1]; -Q_rel[3], Q_rel[4],
        Q_rel[1], Q_rel[2]; Q_rel[2], -Q_rel[1], Q_rel[4], Q_rel[3]; -Q_rel[1],
         -Q_rel[2], -Q_rel[3], Q_rel[4]]*Q1;
    end absoluteRotation;

* * * * *

![image45](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).planarRotation
=============================================================================================================================================================================================================================================================

**Return quaternion orientation object of a planar rotation**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                         Name Defau Description
                                    lt    
  ---------------------------- ---- ----- --------------------------------
  Real                         e[3]       Normalized axis of rotation
                                          (must have length=1) [1]

  [Angle](Modelica_SIunits.htm angl       Rotation angle to rotate frame 1
  l#Modelica.SIunits.Angle)    e          into frame 2 along axis e [rad]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                        Na Description
                                              me 
  ------------------------------------------- -- -------------------------
  [Orientation](Modelica_Mechanics_MultiBody_ Q  Quaternions orientation
  Frames_Quaternions.html#Modelica.Mechanics.    object to rotate frame 1
  MultiBody.Frames.Quaternions.Orientation)      into frame 2 along axis e
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function planarRotation 
      "Return quaternion orientation object of a planar rotation"
      import Modelica.Math;
      extends Modelica.Icons.Function;
      input Real e[3](each final unit="1") 
        "Normalized axis of rotation (must have length=1)";
      input Modelica.SIunits.Angle angle 
        "Rotation angle to rotate frame 1 into frame 2 along axis e";
      output Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2 along axis e";
    algorithm 
      Q := vector([e*Math.sin(angle/2); Math.cos(angle/2)]);
    end planarRotation;

* * * * *

![image46](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).smallRotation
============================================================================================================================================================================================================================================================

**Return rotation angles valid for a small rotation**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                        Na Def Description
                                              me aul 
                                                 t   
  ------------------------------------------- -- --- ---------------------
  [Orientation](Modelica_Mechanics_MultiBody_ Q      Quaternions
  Frames_Quaternions.html#Modelica.Mechanics.        orientation object to
  MultiBody.Frames.Quaternions.Orientation)          rotate frame 1 into
                                                     frame 2
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                  Nam Description
                        e   
  --------------------- --- ----------------------------------------------
  [Angle](Modelica_SIun phi The rotation angles around x-, y-, and z-axis
  its.html#Modelica.SIu [3] of frame 1 to rotate frame 1 into frame 2 for
  nits.Angle)               a small relative rotation [rad]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function smallRotation 
      "Return rotation angles valid for a small rotation"
      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      output Modelica.SIunits.Angle phi[3] 
        "The rotation angles around x-, y-, and z-axis of frame 1 to rotate frame 1 into frame 2 for a small relative rotation";
    algorithm 
      phi := 2*{Q[1],Q[2],Q[3]};
    end smallRotation;

* * * * *

![image47](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).from\_T
======================================================================================================================================================================================================================================================

**Return quaternion orientation object Q from transformation matrix T**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                    Nam Defau Description
                                          e   lt    
  --------------------------------------- --- ----- -----------------------
  Real                                    T[3       Transformation matrix
                                          ,         to transform vector
                                          3]        from frame 1 to frame 2
                                                    (v2=T\*v1)

  [Orientation](Modelica_Mechanics_MultiB Q\_ nullR Guess value for Q
  ody_Frames_Quaternions.html#Modelica.Me gue otati (there are 2 solutions;
  chanics.MultiBody.Frames.Quaternions.Or ss  on()  the one close to
  ientation)                                        Q\_guess is used
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                   Na Description
                                         me 
  -------------------------------------- -- -------------------------------
  [Orientation](Modelica_Mechanics_Multi Q  Quaternions orientation object
  Body_Frames_Quaternions.html#Modelica.    to rotate frame 1 into frame 2
  Mechanics.MultiBody.Frames.Quaternions    (Q and -Q have same
  .Orientation)                             transformation matrix)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function from_T 
      "Return quaternion orientation object Q from transformation matrix T"

      extends Modelica.Icons.Function;
      input Real T[3, 3] 
        "Transformation matrix to transform vector from frame 1 to frame 2 (v2=T*v1)";
      input Quaternions.Orientation Q_guess=nullRotation() 
        "Guess value for Q (there are 2 solutions; the one close to Q_guess is used";
      output Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2 (Q and -Q have same transformation matrix)";
    protected 
      Real paux;
      Real paux4;
      Real c1;
      Real c2;
      Real c3;
      Real c4;
      constant Real p4limit=0.1;
      constant Real c4limit=4*p4limit*p4limit;
    algorithm 
      /*
       Note, for quaternions, Q and -Q have the same transformation matrix.
       Calculation of quaternions from transformation matrix T:
       It is guaranteed that c1>=0, c2>=0, c3>=0, c4>=0 and
       that not all of them can be zero at the same time
       (e.g., if 3 of them are zero, the 4th variable is 1).
       Since the sqrt(..) has to be performed on one of these variables,
       it is applied on a variable which is far enough from zero.
       This guarantees that the sqrt(..) is never taken near zero
       and therefore the derivative of sqrt(..) can never be infinity.
       There is an ambiguity for quaternions, since Q and -Q
       lead to the same transformation matrix. The ambiguity
       is resolved here by selecting the Q that is closer to
       the input argument Q_guess.
    */
      c1 := 1 + T[1, 1] - T[2, 2] - T[3, 3];
      c2 := 1 + T[2, 2] - T[1, 1] - T[3, 3];
      c3 := 1 + T[3, 3] - T[1, 1] - T[2, 2];
      c4 := 1 + T[1, 1] + T[2, 2] + T[3, 3];

      if c4 > c4limit or (c4 > c1 and c4 > c2 and c4 > c3) then
        paux := sqrt(c4)/2;
        paux4 := 4*paux;
        Q := {(T[2, 3] - T[3, 2])/paux4,(T[3, 1] - T[1, 3])/paux4,(T[1, 2] - T[
          2, 1])/paux4,paux};

      elseif c1 > c2 and c1 > c3 and c1 > c4 then
        paux := sqrt(c1)/2;
        paux4 := 4*paux;
        Q := {paux,(T[1, 2] + T[2, 1])/paux4,(T[1, 3] + T[3, 1])/paux4,(T[2, 3]
           - T[3, 2])/paux4};

      elseif c2 > c1 and c2 > c3 and c2 > c4 then
        paux := sqrt(c2)/2;
        paux4 := 4*paux;
        Q := {(T[1, 2] + T[2, 1])/paux4,paux,(T[2, 3] + T[3, 2])/paux4,(T[3, 1]
           - T[1, 3])/paux4};

      else
        paux := sqrt(c3)/2;
        paux4 := 4*paux;
        Q := {(T[1, 3] + T[3, 1])/paux4,(T[2, 3] + T[3, 2])/paux4,paux,(T[1, 2]
           - T[2, 1])/paux4};
      end if;

      if Q*Q_guess < 0 then
        Q := -Q;
      end if;
    end from_T;

* * * * *

![image48](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).from\_T\_inv
===========================================================================================================================================================================================================================================================

**Return quaternion orientation object Q from inverse transformation
matrix T\_inv**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                 Name Defau Description
                                            lt    
  ------------------------------------ ---- ----- -------------------------
  Real                                 T\_i       Inverse transformation
                                       nv[3       matrix to transform
                                       ,          vector from frame 2 to
                                       3]         frame 1 (v1=T\_inv\*v2)

  [Orientation](Modelica_Mechanics_Mul Q\_g nullR Guess value for output Q
  tiBody_Frames_Quaternions.html#Model uess otati (there are 2 solutions;
  ica.Mechanics.MultiBody.Frames.Quate      on()  the one closer to
  rnions.Orientation)                             Q\_guess is used
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                   Na Description
                                         me 
  -------------------------------------- -- -------------------------------
  [Orientation](Modelica_Mechanics_Multi Q  Quaternions orientation object
  Body_Frames_Quaternions.html#Modelica.    to rotate frame 1 into frame 2
  Mechanics.MultiBody.Frames.Quaternions    (Q and -Q have same
  .Orientation)                             transformation matrix)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function from_T_inv 
      "Return quaternion orientation object Q from inverse transformation matrix T_inv"

      extends Modelica.Icons.Function;
      input Real T_inv[3, 3] 
        "Inverse transformation matrix to transform vector from frame 2 to frame 1 (v1=T_inv*v2)";
      input Quaternions.Orientation Q_guess=nullRotation() 
        "Guess value for output Q (there are 2 solutions; the one closer to Q_guess is used";
      output Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2 (Q and -Q have same transformation matrix)";
    algorithm 
      Q := from_T(transpose(T_inv), Q_guess);
    end from_T_inv;

* * * * *

![image49](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).to\_T
====================================================================================================================================================================================================================================================

**Return transformation matrix T from quaternion orientation object Q**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                        Na Def Description
                                              me aul 
                                                 t   
  ------------------------------------------- -- --- ---------------------
  [Orientation](Modelica_Mechanics_MultiBody_ Q      Quaternions
  Frames_Quaternions.html#Modelica.Mechanics.        orientation object to
  MultiBody.Frames.Quaternions.Orientation)          rotate frame 1 into
                                                     frame 2
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type   Name     Description
  ------ -------- ---------------------------------------------------------
  Real   T[3, 3]  Transformation matrix to transform vector from frame 1 to
                  frame 2 (v2=T\*v1)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function to_T 
      "Return transformation matrix T from quaternion orientation object Q"

      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      output Real T[3, 3] 
        "Transformation matrix to transform vector from frame 1 to frame 2 (v2=T*v1)";
    algorithm 
      /*
      T := (2*Q[4]*Q[4] - 1)*identity(3) + 2*([Q[1:3]]*transpose([Q[1:3]]) - Q[4]*
        skew(Q[1:3]));
    */
      T := [2*(Q[1]*Q[1] + Q[4]*Q[4]) - 1, 2*(Q[1]*Q[2] + Q[3]*Q[4]), 2*(Q[1]*Q[
        3] - Q[2]*Q[4]); 2*(Q[2]*Q[1] - Q[3]*Q[4]), 2*(Q[2]*Q[2] + Q[4]*Q[4])
         - 1, 2*(Q[2]*Q[3] + Q[1]*Q[4]); 2*(Q[3]*Q[1] + Q[2]*Q[4]), 2*(Q[3]*Q[2]
         - Q[1]*Q[4]), 2*(Q[3]*Q[3] + Q[4]*Q[4]) - 1];
    end to_T;

* * * * *

![image50](Modelica.Mechanics.MultiBody.Frames.Quaternions.orientationConstraintI.png) [Modelica.Mechanics.MultiBody.Frames.Quaternions](Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions).to\_T\_inv
=========================================================================================================================================================================================================================================================

**Return inverse transformation matrix T\_inv from quaternion
orientation object Q**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                        Na Def Description
                                              me aul 
                                                 t   
  ------------------------------------------- -- --- ---------------------
  [Orientation](Modelica_Mechanics_MultiBody_ Q      Quaternions
  Frames_Quaternions.html#Modelica.Mechanics.        orientation object to
  MultiBody.Frames.Quaternions.Orientation)          rotate frame 1 into
                                                     frame 2
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type   Name        Description
  ------ ----------- ------------------------------------------------------
  Real   T\_inv[3,   Transformation matrix to transform vector from frame 2
         3]          to frame 1 (v1=T\*v2)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function to_T_inv 
      "Return inverse transformation matrix T_inv from quaternion orientation object Q"

      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      output Real T_inv[3, 3] 
        "Transformation matrix to transform vector from frame 2 to frame 1 (v1=T*v2)";
    algorithm 
      /*
      T_inv := (2*Q[4]*Q[4] - 1)*identity(3) + 2*([Q[1:3]]*transpose([Q[1:3]]) + Q[
        4]*skew(Q[1:3]));
    */
      T_inv := [2*(Q[1]*Q[1] + Q[4]*Q[4]) - 1, 2*(Q[2]*Q[1] - Q[3]*Q[4]), 2*(Q[
        3]*Q[1] + Q[2]*Q[4]); 2*(Q[1]*Q[2] + Q[3]*Q[4]), 2*(Q[2]*Q[2] + Q[4]*Q[
        4]) - 1, 2*(Q[3]*Q[2] - Q[1]*Q[4]); 2*(Q[1]*Q[3] - Q[2]*Q[4]), 2*(Q[2]*
        Q[3] + Q[1]*Q[4]), 2*(Q[3]*Q[3] + Q[4]*Q[4]) - 1];
    end to_T_inv;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:27 2010.
