==========================================================
Modelica.Mechanics.MultiBody.Frames.TransformationMatrices
==========================================================

`Modelica.Mechanics.MultiBody.Frames <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames>`_.TransformationMatrices
--------------------------------------------------------------------------------------------------------------------------------------------

**Functions for transformation matrices**

Information
~~~~~~~~~~~

::

Package **Frames.TransformationMatrices** contains type definitions and
functions to transform rotational frame quantities using transformation
matrices.

Content
^^^^^^^

In the table below an example is given for every function definition.
The used variables have the following declaration:

::

       Orientation T, T1, T2, T_rel, T_inv;
       Real[3]     v1, v2, w1, w2, n_x, n_y, n_z, e, e_x, res_ori, phi;
       Real[6]     res_equal;
       Real        L, angle;

***Function/type***

***Description***

**Orientation T;**

New type defining an orientation object that describes
 the rotation of frame 1 into frame 2.

**der\_Orientation** der\_T;

New type defining the first time derivative of Frames.Orientation.

res\_ori = **orientationConstraint**(T);

Return the constraints between the variables of an orientation object
 (shall be zero).

w1 = **angularVelocity1**(T, der\_T);

Return angular velocity resolved in frame 1 from orientation object T
 and its derivative der\_T.

w2 = **angularVelocity2**(T, der\_T);

Return angular velocity resolved in frame 2 from orientation object T
 and its derivative der\_T.

v1 = **resolve1**(T,v2);

Transform vector v2 from frame 2 to frame 1.

v2 = **resolve2**(T,v1);

Transform vector v1 from frame 1 to frame 2.

[v1,w1] = **multipleResolve1**(T, [v2,w2]);

Transform several vectors from frame 2 to frame 1.

[v2,w2] = **multipleResolve2**(T, [v1,w1]);

Transform several vectors from frame 1 to frame 2.

D1 = **resolveDyade1**(T,D2);

Transform second order tensor D2 from frame 2 to frame 1.

D2 = **resolveDyade2**(T,D1);

Transform second order tensor D1 from frame 1 to frame 2.

T= **nullRotation**()

Return orientation object T that does not rotate a frame.

T\_inv = **inverseRotation**(T);

Return inverse orientation object.

T\_rel = **relativeRotation**(T1,T2);

Return relative orientation object from two absolute orientation
objects.

T2 = **absoluteRotation**(T1,T\_rel);

Return absolute orientation object from another absolute
 and a relative orientation object.

T = **planarRotation**(e, angle);

Return orientation object of a planar rotation.

angle = **planarRotationAngle**(e, v1, v2);

Return angle of a planar rotation, given the rotation axis
 and the representations of a vector in frame 1 and frame 2.

T = **axisRotation**(i, angle);

Return orientation object T for rotation around axis i of frame 1.

T = **axesRotations**(sequence, angles);

Return rotation object to rotate in sequence around 3 axes. Example:
 T = axesRotations({1,2,3},{90,45,-90});

angles = **axesRotationsAngles**(T, sequence);

Return the 3 angles to rotate in sequence around 3 axes to
 construct the given orientation object.

phi = **smallRotation**(T);

Return rotation angles phi valid for a small rotation.

T = **from\_nxy**(n\_x, n\_y);

Return orientation object from n\_x and n\_y vectors.

T = **from\_nxz**(n\_x, n\_z);

Return orientation object from n\_x and n\_z vectors.

R = **from\_T**(T);

Return orientation object R from transformation matrix T.

R = **from\_T\_inv**(T\_inv);

Return orientation object R from inverse transformation matrix T\_inv.

T = **from\_Q**(Q);

Return orientation object T from quaternion orientation object Q.

T = **to\_T**(R);

Return transformation matrix T from orientation object R.

T\_inv = **to\_T\_inv**(R);

Return inverse transformation matrix T\_inv from orientation object R.

Q = **to\_Q**(T);

Return quaternion orientation object Q from orientation object T.

exy = **to\_exy**(T);

Return [e\_x, e\_y] matrix of an orientation object T,
 with e\_x and e\_y vectors of frame 2, resolved in frame 1.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                             | Description                                                                                                             |
+==================================================================================================================================================================================================================================================================+=========================================================================================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_                                                                                                          | Orientation type defining rotation from a frame 1 into a frame 2 with a transformation matrix                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| `der\_Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.der_Orientation>`_                                                                                                 | New type defining the first time derivative of Orientation                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image29| `orientationConstraint <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraint>`_                                                                            | Return residues of orientation constraints (shall be zero)                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image30| `angularVelocity1 <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.angularVelocity1>`_                                                                                      | Return angular velocity resolved in frame 1 from orientation object and its derivative                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image31| `angularVelocity2 <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.angularVelocity2>`_                                                                                      | Return angular velocity resolved in frame 2 from orientation object and its derivative                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image32| `resolve1 <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.resolve1>`_                                                                                                      | Transform vector from frame 2 to frame 1                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image33| `resolve2 <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.resolve2>`_                                                                                                      | Transform vector from frame 1 to frame 2                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image34| `multipleResolve1 <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.multipleResolve1>`_                                                                                      | Transform several vectors from frame 2 to frame 1                                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image35| `multipleResolve2 <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.multipleResolve2>`_                                                                                      | Transform several vectors from frame 1 to frame 2                                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image36| `resolveDyade1 <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.resolveDyade1>`_                                                                                            | Transform second order tensor from frame 2 to frame 1                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image37| `resolveDyade2 <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.resolveDyade2>`_                                                                                            | Transform second order tensor from frame 1 to frame 2                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image38| `nullRotation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.nullRotation>`_                                                                                              | Return orientation object that does not rotate a frame                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image39| `inverseRotation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.inverseRotation>`_                                                                                        | Return inverse orientation object                                                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image40| `relativeRotation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.relativeRotation>`_                                                                                      | Return relative orientation object                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image41| `absoluteRotation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.absoluteRotation>`_                                                                                      | Return absolute orientation object from another absolute and a relative orientation object                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image42| `planarRotation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.planarRotation>`_                                                                                          | Return orientation object of a planar rotation                                                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image43| `planarRotationAngle <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.planarRotationAngle>`_                                                                                | Return angle of a planar rotation, given the rotation axis and the representations of a vector in frame 1 and frame 2   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image44| `axisRotation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.axisRotation>`_                                                                                              | Return rotation object to rotate around one frame axis                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image45| `axesRotations <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.axesRotations>`_                                                                                            | Return rotation object to rotate in sequence around 3 axes                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image46| `axesRotationsAngles <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.axesRotationsAngles>`_                                                                                | Return the 3 angles to rotate in sequence around 3 axes to construct the given orientation object                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image47| `smallRotation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.smallRotation>`_                                                                                            | Return rotation angles valid for a small rotation and optionally residues that should be zero                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image48| `from\_nxy <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from_nxy>`_                                                                                                     | Return orientation object from n\_x and n\_y vectors                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image49| `from\_nxz <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from_nxz>`_                                                                                                     | Return orientation object from n\_x and n\_z vectors                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image50| `from\_T <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from_T>`_                                                                                                         | Return orientation object R from transformation matrix T                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image51| `from\_T\_inv <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from_T_inv>`_                                                                                                | Return orientation object R from inverse transformation matrix T\_inv                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image52| `from\_Q <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from_Q>`_                                                                                                         | Return orientation object T from quaternion orientation object Q                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image53| `to\_T <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to_T>`_                                                                                                             | Return transformation matrix T from orientation object R                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image54| `to\_T\_inv <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to_T_inv>`_                                                                                                    | Return inverse transformation matrix T\_inv from orientation object R                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image55| `to\_Q <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to_Q>`_                                                                                                             | Return quaternion orientation object Q from orientation object T                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image56| `to\_vector <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to_vector>`_                                                                                                   | Map rotation object into vector                                                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
| |image57| `to\_exy <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to_exy>`_                                                                                                         | Map rotation object into e\_x and e\_y vectors of frame 2, resolved in frame 1                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

Types and constants
~~~~~~~~~~~~~~~~~~~

::

      type Orientation 
      "Orientation type defining rotation from a frame 1 into a frame 2 with a transformation matrix"

        extends Internal.TransformationMatrix;

        encapsulated function equalityConstraint 
        "Return the constraint residues to express that two frames have the same orientation"

          import Modelica;
          import Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
          extends Modelica.Icons.Function;
          input TransformationMatrices.Orientation T1 
          "Orientation object to rotate frame 0 into frame 1";
          input TransformationMatrices.Orientation T2 
          "Orientation object to rotate frame 0 into frame 2";
          output Real residue[3] 
          "The rotation angles around x-, y-, and z-axis of frame 1 to rotate frame 1 into frame 2 for a small rotation (should be zero)";
        algorithm 
          residue := {cross(T1[1, :], T1[2, :])*T2[2, :],-cross(T1[1, :], T1[2, :])
            *T2[1, :],T1[2, :]*T2[1, :]};
        end equalityConstraint;
      end Orientation;

::

      type der_Orientation = Real[3, 3] (each unit="1/s") 
      "New type defining the first time derivative of Orientation";

--------------

|image58| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.orientationConstraint
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return residues of orientation constraints (shall be zero)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Default   | Description                                         |
+===========================================================================================================================================================+========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T      |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+--------------+----------------------------------------------------------------------------------+
| Type   | Name         | Description                                                                      |
+========+==============+==================================================================================+
| Real   | residue[6]   | Residues of constraints between elements of orientation object (shall be zero)   |
+--------+--------------+----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function orientationConstraint 
      "Return residues of orientation constraints (shall be zero)"
      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      output Real residue[6] 
        "Residues of constraints between elements of orientation object (shall be zero)";
    algorithm 
      residue := {T[:, 1]*T[:, 1] - 1,T[:, 2]*T[:, 2] - 1,T[:, 3]*T[:, 3] - 1,T[
        :, 1]*T[:, 2],T[:, 1]*T[:, 3],T[:, 2]*T[:, 3]};
    end orientationConstraint;

--------------

|image59| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.angularVelocity1
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return angular velocity resolved in frame 1 from orientation object
and its derivative**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                               | Name     | Default   | Description                                         |
+====================================================================================================================================================================+==========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_            | T        |           | Orientation object to rotate frame 1 into frame 2   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+
| `der\_Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.der_Orientation>`_   | der\_T   |           | Derivative of T [1/s]                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-----------------------------------------------------------------------------------+
| Type                                                                          | Name   | Description                                                                       |
+===============================================================================+========+===================================================================================+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | w[3]   | Angular velocity of frame 2 with respect to frame 1 resolved in frame 1 [rad/s]   |
+-------------------------------------------------------------------------------+--------+-----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function angularVelocity1 
      "Return angular velocity resolved in frame 1 from orientation object and its derivative"

      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      input der_Orientation der_T "Derivative of T";
      output Modelica.SIunits.AngularVelocity w[3] 
        "Angular velocity of frame 2 with respect to frame 1 resolved in frame 1";
    algorithm 
      /* The angular velocity w of frame 2 with respect to frame 1 resolved in frame 1,
         is defined as:
            w = vec( der(transpose(T))*T );
         where
                       |   0 -w3  w2 |
             skew(w) = |  w3   0 -w1 | and w = vec(skew(w))
                       | -w2  w1   0 |
         i.e.
             W = der(transpose(T))*T)
             w = {W(3,2), -W(3,1), W(2,1)}
         Therefore, only 3 values of W need to be computed:
                 | der(T[:,1]) |
             W = | der(T[:,2]) | * | T[:,1], T[:,2], T[:,3] |
                 | der(T[:,3]) |
                 |  W(3,2) |   |  der(T[:,3])*T[:,2] |
             w = | -W(3,1) | = | -der(T[:,3])*T[:,1] |
                 |  W(2,1) |   |  der(T[:,2])*T[:,1] |
      */
      w := {der_T[:, 3]*T[:, 2],-der_T[:, 3]*T[:, 1],der_T[:, 2]*T[:, 1]};
    end angularVelocity1;

--------------

|image60| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.angularVelocity2
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return angular velocity resolved in frame 2 from orientation object
and its derivative**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                               | Name     | Default   | Description                                         |
+====================================================================================================================================================================+==========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_            | T        |           | Orientation object to rotate frame 1 into frame 2   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+
| `der\_Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.der_Orientation>`_   | der\_T   |           | Derivative of T [1/s]                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-----------------------------------------------------------------------------------+
| Type                                                                          | Name   | Description                                                                       |
+===============================================================================+========+===================================================================================+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | w[3]   | Angular velocity of frame 2 with respect to frame 1 resolved in frame 2 [rad/s]   |
+-------------------------------------------------------------------------------+--------+-----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function angularVelocity2 
      "Return angular velocity resolved in frame 2 from orientation object and its derivative"

      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      input der_Orientation der_T "Derivative of T";
      output Modelica.SIunits.AngularVelocity w[3] 
        "Angular velocity of frame 2 with respect to frame 1 resolved in frame 2";
    algorithm 
      /* The angular velocity w of frame 2 with respect to frame 1 resolved in frame 2,
         is defined as:
            w = vec(T*der(transpose(T)));
         where
                       |   0 -w3  w2 |
             skew(w) = |  w3   0 -w1 | and w = vec(skew(w))
                       | -w2  w1   0 |
         i.e.
             W = T*der(transpose(T))
             w = {W(3,2), -W(3,1), W(2,1)}
         Therefore, only 3 values of W need to be computed:
                 | T[1,:] |
             W = | T[2,:] | * | der(T[1,:]), der(T[2,:]), der(T[3,:]) |
                 | T[3,:] |
                 |  W(3,2) |   |  T[3,:]*der(T[2,:]) |
             w = | -W(3,1) | = | -T[3,:]*der(T[1,:]) |
                 |  W(2,1) |   |  T[2,:]*der(T[1,:]) |
      */
      w := {T[3, :]*der_T[2, :],-T[3, :]*der_T[1, :],T[2, :]*der_T[1, :]};
    end angularVelocity2;

--------------

|image61| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.resolve1
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transform vector from frame 2 to frame 1**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name    | Default   | Description                                         |
+===========================================================================================================================================================+=========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T       |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------------------------------------+
| Real                                                                                                                                                      | v2[3]   |           | Vector in frame 2                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+---------+---------------------+
| Type   | Name    | Description         |
+========+=========+=====================+
| Real   | v1[3]   | Vector in frame 1   |
+--------+---------+---------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function resolve1 "Transform vector from frame 2 to frame 1"
      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      input Real v2[3] "Vector in frame 2";
      output Real v1[3] "Vector in frame 1";
    algorithm 
      v1 := transpose(T)*v2;
    end resolve1;

--------------

|image62| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.resolve2
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transform vector from frame 1 to frame 2**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name    | Default   | Description                                         |
+===========================================================================================================================================================+=========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T       |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------------------------------------+
| Real                                                                                                                                                      | v1[3]   |           | Vector in frame 1                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+---------+---------------------+
| Type   | Name    | Description         |
+========+=========+=====================+
| Real   | v2[3]   | Vector in frame 2   |
+--------+---------+---------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function resolve2 "Transform vector from frame 1 to frame 2"
      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      input Real v1[3] "Vector in frame 1";
      output Real v2[3] "Vector in frame 2";
    algorithm 
      v2 := T*v1;
    end resolve2;

--------------

|image63| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.multipleResolve1
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transform several vectors from frame 2 to frame 1**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name       | Default   | Description                                         |
+===========================================================================================================================================================+============+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T          |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                                                                                      | v2[3, :]   |           | Vectors in frame 2                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+----------------------+----------------------+
| Type   | Name                 | Description          |
+========+======================+======================+
| Real   | v1[3, size(v2, 2)]   | Vectors in frame 1   |
+--------+----------------------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function multipleResolve1 
      "Transform several vectors from frame 2 to frame 1"

      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      input Real v2[3, :] "Vectors in frame 2";
      output Real v1[3, size(v2, 2)] "Vectors in frame 1";
    algorithm 
      v1 := transpose(T)*v2;
    end multipleResolve1;

--------------

|image64| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.multipleResolve2
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transform several vectors from frame 1 to frame 2**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name       | Default   | Description                                         |
+===========================================================================================================================================================+============+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T          |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                                                                                      | v1[3, :]   |           | Vectors in frame 1                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+----------------------+----------------------+
| Type   | Name                 | Description          |
+========+======================+======================+
| Real   | v2[3, size(v1, 2)]   | Vectors in frame 2   |
+--------+----------------------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function multipleResolve2 
      "Transform several vectors from frame 1 to frame 2"

      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      input Real v1[3, :] "Vectors in frame 1";
      output Real v2[3, size(v1, 2)] "Vectors in frame 2";
    algorithm 
      v2 := T*v1;
    end multipleResolve2;

--------------

|image65| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.resolveDyade1
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transform second order tensor from frame 2 to frame 1**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name       | Default   | Description                                         |
+===========================================================================================================================================================+============+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T          |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                                                                                      | D2[3, 3]   |           | Second order tensor resolved in frame 2             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+------------+-------------------------------------------+
| Type   | Name       | Description                               |
+========+============+===========================================+
| Real   | D1[3, 3]   | Second order tensor resolved in frame 1   |
+--------+------------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function resolveDyade1 
      "Transform second order tensor from frame 2 to frame 1"
      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      input Real D2[3, 3] "Second order tensor resolved in frame 2";
      output Real D1[3, 3] "Second order tensor resolved in frame 1";
    algorithm 
      D1 := transpose(T)*D2*T;
    end resolveDyade1;

--------------

|image66| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.resolveDyade2
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transform second order tensor from frame 1 to frame 2**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name       | Default   | Description                                         |
+===========================================================================================================================================================+============+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T          |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+
| Real                                                                                                                                                      | D1[3, 3]   |           | Second order tensor resolved in frame 1             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+------------+-------------------------------------------+
| Type   | Name       | Description                               |
+========+============+===========================================+
| Real   | D2[3, 3]   | Second order tensor resolved in frame 2   |
+--------+------------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function resolveDyade2 
      "Transform second order tensor from frame 1 to frame 2"
      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      input Real D1[3, 3] "Second order tensor resolved in frame 1";
      output Real D2[3, 3] "Second order tensor resolved in frame 2";
    algorithm 
      D2 := T*D1*transpose(T);
    end resolveDyade2;

--------------

|image67| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.nullRotation
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return orientation object that does not rotate a frame**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| Type                                                                                                                                                      | Name   | Description                                                      |
+===========================================================================================================================================================+========+==================================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T      | Orientation object such that frame 1 and frame 2 are identical   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function nullRotation 
      "Return orientation object that does not rotate a frame"
      extends Modelica.Icons.Function;
      output TransformationMatrices.Orientation T 
        "Orientation object such that frame 1 and frame 2 are identical";
    algorithm 
      T := identity(3);
    end nullRotation;

--------------

|image68| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.inverseRotation
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return inverse orientation object**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Default   | Description                                         |
+===========================================================================================================================================================+========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T      |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name     | Description                                         |
+===========================================================================================================================================================+==========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T\_inv   | Orientation object to rotate frame 2 into frame 1   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function inverseRotation "Return inverse orientation object"
      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      output TransformationMatrices.Orientation T_inv 
        "Orientation object to rotate frame 2 into frame 1";
    algorithm 
      T_inv := transpose(T);
    end inverseRotation;

--------------

|image69| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.relativeRotation
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return relative orientation object**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Default   | Description                                         |
+===========================================================================================================================================================+========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T1     |           | Orientation object to rotate frame 0 into frame 1   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T2     |           | Orientation object to rotate frame 0 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name     | Description                                         |
+===========================================================================================================================================================+==========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T\_rel   | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function relativeRotation "Return relative orientation object"
      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T1 
        "Orientation object to rotate frame 0 into frame 1";
      input TransformationMatrices.Orientation T2 
        "Orientation object to rotate frame 0 into frame 2";
      output TransformationMatrices.Orientation T_rel 
        "Orientation object to rotate frame 1 into frame 2";
    algorithm 
      T_rel := T2*transpose(T1);
    end relativeRotation;

--------------

|image70| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.absoluteRotation
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return absolute orientation object from another absolute and a
relative orientation object**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name     | Default   | Description                                         |
+===========================================================================================================================================================+==========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T1       |           | Orientation object to rotate frame 0 into frame 1   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T\_rel   |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Description                                         |
+===========================================================================================================================================================+========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T2     | Orientation object to rotate frame 0 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function absoluteRotation 
      "Return absolute orientation object from another absolute and a relative orientation object"

      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T1 
        "Orientation object to rotate frame 0 into frame 1";
      input TransformationMatrices.Orientation T_rel 
        "Orientation object to rotate frame 1 into frame 2";
      output TransformationMatrices.Orientation T2 
        "Orientation object to rotate frame 0 into frame 2";
    algorithm 
      T2 := T_rel*T1;
    end absoluteRotation;

--------------

|image71| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.planarRotation
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return orientation object of a planar rotation**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------+---------+-----------+--------------------------------------------------------------------+
| Type                                                      | Name    | Default   | Description                                                        |
+===========================================================+=========+===========+====================================================================+
| Real                                                      | e[3]    |           | Normalized axis of rotation (must have length=1) [1]               |
+-----------------------------------------------------------+---------+-----------+--------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_   | angle   |           | Rotation angle to rotate frame 1 into frame 2 along axis e [rad]   |
+-----------------------------------------------------------+---------+-----------+--------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Description                                         |
+===========================================================================================================================================================+========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T      | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function planarRotation 
      "Return orientation object of a planar rotation"
      import Modelica.Math;
      extends Modelica.Icons.Function;
      input Real e[3](each final unit="1") 
        "Normalized axis of rotation (must have length=1)";
      input Modelica.SIunits.Angle angle 
        "Rotation angle to rotate frame 1 into frame 2 along axis e";
      output TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
    algorithm 
      T := [e]*transpose([e]) + (identity(3) - [e]*transpose([e]))*Math.cos(
        angle) - skew(e)*Math.sin(angle);
    end planarRotation;

--------------

|image72| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.planarRotationAngle
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return angle of a planar rotation, given the rotation axis and the
representations of a vector in frame 1 and frame 2**

Information
~~~~~~~~~~~

::

A call to this function of the form

::

        Real[3]                e, v1, v2;
        Modelica.SIunits.Angle angle;
      equation
        angle = planarRotationAngle(e, v1, v2);

computes the rotation angle "**angle**" of a planar rotation along unit
vector **e**, rotating frame 1 into frame 2, given the coordinate
representations of a vector "v" in frame 1 (**v1**) and in frame 2
(**v2**). Therefore, the result of this function fulfills the following
equation:

::

        v2 = resolve2(planarRotation(e,angle), v1)

The rotation angle is returned in the range

::

        -p <= angle <= p

This function makes the following assumptions on the input arguments

-  Vector **e** has length 1, i.e., length(e) = 1
-  Vector "v" is not parallel to **e**, i.e., length(cross(e,v1)) ≠ 0

The function does not check the above assumptions. If these assumptions
are violated, a wrong result will be returned and/or a division by zero
will occur.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+---------+-----------+------------------------------------------------------------------------------------------------+
| Type   | Name    | Default   | Description                                                                                    |
+========+=========+===========+================================================================================================+
| Real   | e[3]    |           | Normalized axis of rotation to rotate frame 1 around e into frame 2 (must have length=1) [1]   |
+--------+---------+-----------+------------------------------------------------------------------------------------------------+
| Real   | v1[3]   |           | A vector v resolved in frame 1 (shall not be parallel to e)                                    |
+--------+---------+-----------+------------------------------------------------------------------------------------------------+
| Real   | v2[3]   |           | Vector v resolved in frame 2, i.e., v2 = resolve2(planarRotation(e,angle),v1)                  |
+--------+---------+-----------+------------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------+---------+-----------------------------------------------------------------------------------------------------+
| Type                                                      | Name    | Description                                                                                         |
+===========================================================+=========+=====================================================================================================+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_   | angle   | Rotation angle to rotate frame 1 into frame 2 along axis e in the range: -pi <= angle <= pi [rad]   |
+-----------------------------------------------------------+---------+-----------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function planarRotationAngle 
      "Return angle of a planar rotation, given the rotation axis and the representations of a vector in frame 1 and frame 2"

      extends Modelica.Icons.Function;
      input Real e[3](each final unit="1") 
        "Normalized axis of rotation to rotate frame 1 around e into frame 2 (must have length=1)";
      input Real v1[3] 
        "A vector v resolved in frame 1 (shall not be parallel to e)";
      input Real v2[3] 
        "Vector v resolved in frame 2, i.e., v2 = resolve2(planarRotation(e,angle),v1)";
      output Modelica.SIunits.Angle angle 
        "Rotation angle to rotate frame 1 into frame 2 along axis e in the range: -pi <= angle <= pi";
    algorithm 
      /* Vector v is resolved in frame 1 and frame 2 according to:
            (1)  v2 = (e*transpose(e) + (identity(3) - e*transpose(e))*cos(angle) - skew(e)*sin(angle))*v1;
                    = e*(e*v1) + (v1 - e*(e*v1))*cos(angle) - cross(e,v1)*sin(angle)
           Equation (1) is multiplied with "v1" resulting in (note: e*e = 1)
                v1*v2 = (e*v1)*(e*v2) + (v1*v1 - (e*v1)*(e*v1))*cos(angle)
           and therefore:
            (2) cos(angle) = ( v1*v2 - (e*v1)*(e*v2)) / (v1*v1 - (e*v1)*(e*v1))
           Similiarly, equation (1) is multiplied with cross(e,v1), i.e., a
           a vector that is orthogonal to e and to v1:
                  cross(e,v1)*v2 = - cross(e,v1)*cross(e,v1)*sin(angle)
           and therefore:
              (3) sin(angle) = -cross(e,v1)*v2/(cross(e,v1)*cross(e,v1));
           We have e*e=1; Therefore:
              (4) v1*v1 - (e*v1)*(e*v1) = |v1|^2 - (|v1|*cos(e,v1))^2
           and
              (5) cross(e,v1)*cross(e,v1) = (|v1|*sin(e,v1))^2
                                          = |v1|^2*(1 - cos(e,v1)^2)
                                          = |v1|^2 - (|v1|*cos(e,v1))^2
           The denominators of (2) and (3) are identical, according to (4) and (5).
           Furthermore, the denominators are always positive according to (5).
           Therefore, in the equation "angle = atan2(sin(angle), cos(angle))" the
           denominators of sin(angle) and cos(angle) can be removed,
           resulting in:
              angle = atan2(-cross(e,v1)*v2, v1*v2 - (e*v1)*(e*v2));
        */
      angle := Modelica.Math.atan2(-cross(e, v1)*v2, v1*v2 - (e*v1)*(e*v2));
    end planarRotationAngle;

--------------

|image73| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.axisRotation
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return rotation object to rotate around one frame axis**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------+---------+-----------+-------------------------------------------------------------------------------+
| Type                                                      | Name    | Default   | Description                                                                   |
+===========================================================+=========+===========+===============================================================================+
| Integer                                                   | axis    |           | Rotate around 'axis' of frame 1                                               |
+-----------------------------------------------------------+---------+-----------+-------------------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_   | angle   |           | Rotation angle to rotate frame 1 into frame 2 along 'axis' of frame 1 [rad]   |
+-----------------------------------------------------------+---------+-----------+-------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Description                                         |
+===========================================================================================================================================================+========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T      | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function axisRotation 
      "Return rotation object to rotate around one frame axis"
      import Modelica.Math.*;
      extends Modelica.Icons.Function;
      input Integer axis(min=1, max=3) "Rotate around 'axis' of frame 1";
      input Modelica.SIunits.Angle angle 
        "Rotation angle to rotate frame 1 into frame 2 along 'axis' of frame 1";
      output TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
    algorithm 
      T := if axis == 1 then [1, 0, 0; 0, cos(angle), sin(angle); 0, -sin(angle),
         cos(angle)] else if axis == 2 then [cos(angle), 0, -sin(angle); 0, 1,
        0; sin(angle), 0, cos(angle)] else [cos(angle), sin(angle), 0; -sin(
        angle), cos(angle), 0; 0, 0, 1];
    end axisRotation;

--------------

|image74| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.axesRotations
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return rotation object to rotate in sequence around 3 axes**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------+
| Type                                                      | Name          | Default   | Description                                                            |
+===========================================================+===============+===========+========================================================================+
| Integer                                                   | sequence[3]   | {1,2,3}   | Sequence of rotations from frame 1 to frame 2 along axis sequence[i]   |
+-----------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_   | angles[3]     | {0,0,0}   | Rotation angles around the axes defined in 'sequence' [rad]            |
+-----------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Description                                         |
+===========================================================================================================================================================+========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T      | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function axesRotations 
      "Return rotation object to rotate in sequence around 3 axes"
      extends Modelica.Icons.Function;
      input Integer sequence[3](
        min={1,1,1},
        max={3,3,3}) = {1,2,3} 
        "Sequence of rotations from frame 1 to frame 2 along axis sequence[i]";
      input Modelica.SIunits.Angle angles[3]={0,0,0} 
        "Rotation angles around the axes defined in 'sequence'";
      output TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
    algorithm 
      T := absoluteRotation(absoluteRotation(axisRotation(sequence[1], angles[1]),
         axisRotation(sequence[2], angles[2])), axisRotation(sequence[3],
        angles[3]));
    end axesRotations;

--------------

|image75| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.axesRotationsAngles
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return the 3 angles to rotate in sequence around 3 axes to construct
the given orientation object**

Information
~~~~~~~~~~~

::

A call to this function of the form

::

        TransformationMatrices.Orientation     T;
        parameter Integer      sequence[3] = {1,2,3};
        Modelica.SIunits.Angle angles[3];
      equation
        angle = axesRotationAngles(T, sequence);

computes the rotation angles "**angles**[1:3]" to rotate frame 1 into
frame 2 along axes **sequence**[1:3], given the orientation object **T**
from frame 1 to frame 2. Therefore, the result of this function fulfills
the following equation:

::

        T = axesRotation(sequence, angles)

The rotation angles are returned in the range

::

        -p <= angles[i] <= p

There are **two solutions** for "angles[1]" in this range. Via the third
argument **guessAngle1** (default = 0) the returned solution is selected
such that \|angles[1] - guessAngle1\| is minimal. The orientation object
T may be in a singular configuration, i.e., there is an infinite number
of angle values leading to the same T. The returned solution is selected
by setting angles[1] = guessAngle1. Then angles[2] and angles[3] can be
uniquely determined in the above range.

Note, that input argument **sequence** has the restriction that only
values 1,2,3 can be used and that sequence[1] ≠ sequence[2] and
sequence[2] ≠ sequence[3]. Often used values are:

::

      sequence = {1,2,3}  // Cardan angle sequence
               = {3,1,3}  // Euler angle sequence
               = {3,2,1}  // Tait-Bryan angle sequence

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------------+
| Type                                                                                                                                                      | Name          | Default   | Description                                                                 |
+===========================================================================================================================================================+===============+===========+=============================================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T             |           | Orientation object to rotate frame 1 into frame 2                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------------+
| Integer                                                                                                                                                   | sequence[3]   | {1,2,3}   | Sequence of rotations from frame 1 to frame 2 along axis sequence[i]        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                                                                                   | guessAngle1   | 0         | Select angles[1] such that \|angles[1] - guessAngle1\| is a minimum [rad]   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------+-------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
| Type                                                      | Name        | Description                                                                                                                                           |
+===========================================================+=============+=======================================================================================================================================================+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_   | angles[3]   | Rotation angles around the axes defined in 'sequence' such that T=TransformationMatrices.axesRotation(sequence,angles); -pi < angles[i] <= pi [rad]   |
+-----------------------------------------------------------+-------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function axesRotationsAngles 
      "Return the 3 angles to rotate in sequence around 3 axes to construct the given orientation object"

      import SI = Modelica.SIunits;

      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      input Integer sequence[3](
        min={1,1,1},
        max={3,3,3}) = {1,2,3} 
        "Sequence of rotations from frame 1 to frame 2 along axis sequence[i]";
      input SI.Angle guessAngle1=0 
        "Select angles[1] such that |angles[1] - guessAngle1| is a minimum";
      output SI.Angle angles[3] 
        "Rotation angles around the axes defined in 'sequence' such that T=TransformationMatrices.axesRotation(sequence,angles); -pi < angles[i] <= pi";
    protected 
      Real e1_1[3](each final unit="1") "First rotation axis, resolved in frame 1";
      Real e2_1a[3](each final unit="1") 
        "Second rotation axis, resolved in frame 1a";
      Real e3_1[3](each final unit="1") "Third rotation axis, resolved in frame 1";
      Real e3_2[3](each final unit="1") "Third rotation axis, resolved in frame 2";
      Real A "Coefficient A in the equation A*cos(angles[1])+B*sin(angles[1]) = 0";
      Real B "Coefficient B in the equation A*cos(angles[1])+B*sin(angles[1]) = 0";
      SI.Angle angle_1a "Solution 1 for angles[1]";
      SI.Angle angle_1b "Solution 2 for angles[1]";
      TransformationMatrices.Orientation T_1a 
        "Orientation object to rotate frame 1 into frame 1a";
    algorithm 
      /* The rotation object T is constructed by:
         (1) Rotating frame 1 along axis e1 (= axis sequence[1]) with angles[1]
             arriving at frame 1a.
         (2) Rotating frame 1a along axis e2 (= axis sequence[2]) with angles[2]
             arriving at frame 1b.
         (3) Rotating frame 1b along axis e3 (= axis sequence[3]) with angles[3]
             arriving at frame 2.
         The goal is to determine angles[1:3]. This is performed in the following way:
         1. e2 and e3 are perpendicular to each other, i.e., e2*e3 = 0;
            Both vectors are resolved in frame 1 (T_ij is transformation matrix
            from frame j to frame i; e1_1*e2_1a = 0, since the vectors are
            perpendicular to each other):
               e3_1 = T_12*e3_2
                    = T[sequence[3],:];
               e2_1 = T_11a*e2_1a
                    = ( e1_1*transpose(e1_1) + (identity(3) - e1_1*transpose(e1_1))*cos(angles[1])
                        + skew(e1_1)*sin(angles[1]) )*e2_1a
                    = e2_1a*cos(angles[1]) + cross(e1_1, e2_1a)*sin(angles[1]);
            From this follows finally an equation for angles[1]
               e2_1*e3_1 = 0
                         = (e2_1a*cos(angles[1]) + cross(e1_1, e2_1a)*sin(angles[1]))*e3_1
                         = (e2_1a*e3_1)*cos(angles[1]) + cross(e1_1, e2_1a)*e3_1*sin(angles[1])
                         = A*cos(angles[1]) + B*sin(angles[1])
                           with A = e2_1a*e3_1, B = cross(e1_1, e2_1a)*e3_1
            This equation has two solutions in the range -pi < angles[1] <= pi:
               sin(angles[1]) =  k*A/sqrt(A*A + B*B)
               cos(angles[1]) = -k*B/sqrt(A*A + B*B)
                            k = +/-1
               tan(angles[1]) = k*A/(-k*B)
            that is:
               angles[1] = atan2(k*A, -k*B)
            If A and B are both zero at the same time, there is a singular configuration
            resulting in an infinite number of solutions for angles[1] (every value
            is possible).
         2. angles[2] is determined with function TransformationMatrices.planarRotationAngle.
            This function requires to provide e_3 in frame 1a and in frame 1b:
              e3_1a = TransformationMatrices.resolve2(planarRotation(e1_1,angles[1]), e3_1);
              e3_1b = e3_2
         3. angles[3] is determined with function TransformationMatrices.planarRotationAngle.
            This function requires to provide e_2 in frame 1b and in frame 2:
              e2_1b = e2_1a
              e2_2  = TransformationMatrices.resolve2( T, TransformationMatrices.resolve1(planarRotation(e1_1,angles[1]), e2_1a));
      */
      assert(sequence[1] <> sequence[2] and sequence[2] <> sequence[3],
        "input argument 'sequence[1:3]' is not valid");
      e1_1 := if sequence[1] == 1 then {1,0,0} else if sequence[1] == 2 then {0,
        1,0} else {0,0,1};
      e2_1a := if sequence[2] == 1 then {1,0,0} else if sequence[2] == 2 then {
        0,1,0} else {0,0,1};
      e3_1 := T[sequence[3], :];
      e3_2 := if sequence[3] == 1 then {1,0,0} else if sequence[3] == 2 then {0,
        1,0} else {0,0,1};

      A := e2_1a*e3_1;
      B := cross(e1_1, e2_1a)*e3_1;
      if abs(A) <= 1.e-12 and abs(B) <= 1.e-12 then
        angles[1] := guessAngle1;
      else
        angle_1a := Modelica.Math.atan2(A, -B);
        angle_1b := Modelica.Math.atan2(-A, B);
        angles[1] := if abs(angle_1a - guessAngle1) <= abs(angle_1b -
          guessAngle1) then angle_1a else angle_1b;
      end if;
      T_1a := planarRotation(e1_1, angles[1]);
      angles[2] := TransformationMatrices.planarRotationAngle(e2_1a,
        TransformationMatrices.resolve2(T_1a, e3_1), e3_2);
      angles[3] := TransformationMatrices.planarRotationAngle(e3_2, e2_1a,
        TransformationMatrices.resolve2(T, TransformationMatrices.resolve1(T_1a,
         e2_1a)));

    end axesRotationsAngles;

--------------

|image76| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.smallRotation
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return rotation angles valid for a small rotation and optionally
residues that should be zero**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------+
| Type                                                                                                                                                      | Name           | Default   | Description                                                           |
+===========================================================================================================================================================+================+===========+=======================================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T              |           | Orientation object to rotate frame 1 into frame 2                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------+
| Boolean                                                                                                                                                   | withResidues   | false     | = false/true, if 'angles'/'angles and residues' are returned in phi   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------+--------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Type                                                      | Name                                 | Description                                                                                                                                                      |
+===========================================================+======================================+==================================================================================================================================================================+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_   | phi[if withResidues then 6 else 3]   | The rotation angles around x-, y-, and z-axis of frame 1 to rotate frame 1 into frame 2 for a small rotation + optionally 3 residues that should be zero [rad]   |
+-----------------------------------------------------------+--------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function smallRotation 
      "Return rotation angles valid for a small rotation and optionally residues that should be zero"

      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      input Boolean withResidues=false 
        "= false/true, if 'angles'/'angles and residues' are returned in phi";
      output Modelica.SIunits.Angle phi[if withResidues then 6 else 3] 
        "The rotation angles around x-, y-, and z-axis of frame 1 to rotate frame 1 into frame 2 for a small rotation + optionally 3 residues that should be zero";
    algorithm 
      /* Planar rotation:
           Trel = [e]*transpose([e]) + (identity(3) - [e]*transpose([e]))*cos(angle) - skew(e)*sin(angle)
                = identity(3) - skew(e)*angle, for small angles
                = identity(3) - skew(e*angle)
                   define phi = e*angle, then
           Trel = [1,      phi3,   -phi2;
                   -phi3,     1,    phi1;
                    phi2, -phi1,       1 ];
      */
      phi := if withResidues then {T[2, 3],-T[1, 3],T[1, 2],T[1, 1] - 1,T[2, 2]
         - 1,T[1, 1]*T[2, 2] - T[2, 1]*T[1, 2] - 1} else {T[2, 3],-T[1, 3],T[1,
         2]};
    end smallRotation;

--------------

|image77| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.from\_nxy
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return orientation object from n\_x and n\_y vectors**

Information
~~~~~~~~~~~

::

It is assumed that the two input vectors n\_x and n\_y are resolved in
frame 1 and are directed along the x and y axis of frame 2 (i.e., n\_x
and n\_y are orthogonal to each other) The function returns the
orientation object T to rotate from frame 1 to frame 2.

The function is robust in the sense that it returns always an
orientation object T, even if n\_y is not orthogonal to n\_x. This is
performed in the following way:

If n\_x and n\_y are not orthogonal to each other, first a unit vector
e\_y is determined that is orthogonal to n\_x and is lying in the plane
spanned by n\_x and n\_y. If n\_x and n\_y are parallel or nearly
parallel to each other, a vector e\_y is selected arbitrarily such that
e\_x and e\_y are orthogonal to each other.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+-----------+-----------+---------------------------------------------------------------------+
| Type   | Name      | Default   | Description                                                         |
+========+===========+===========+=====================================================================+
| Real   | n\_x[3]   |           | Vector in direction of x-axis of frame 2, resolved in frame 1 [1]   |
+--------+-----------+-----------+---------------------------------------------------------------------+
| Real   | n\_y[3]   |           | Vector in direction of y-axis of frame 2, resolved in frame 1 [1]   |
+--------+-----------+-----------+---------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Description                                         |
+===========================================================================================================================================================+========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T      | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_nxy 
      "Return orientation object from n_x and n_y vectors"
      extends Modelica.Icons.Function;
      input Real n_x[3](each final unit="1") 
        "Vector in direction of x-axis of frame 2, resolved in frame 1";
      input Real n_y[3](each final unit="1") 
        "Vector in direction of y-axis of frame 2, resolved in frame 1";
      output TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
    protected 
      Real abs_n_x=sqrt(n_x*n_x);
      Real e_x[3](each final unit="1")=if abs_n_x < 1.e-10 then {1,0,0} else n_x/abs_n_x;
      Real n_z_aux[3](each final unit="1")=cross(e_x, n_y);
      Real n_y_aux[3](each final unit="1")=if n_z_aux*n_z_aux > 1.0e-6 then n_y else (if abs(e_x[1])
           > 1.0e-6 then {0,1,0} else {1,0,0});
      Real e_z_aux[3](each final unit="1")=cross(e_x, n_y_aux);
      Real e_z[3](each final unit="1")=e_z_aux/sqrt(e_z_aux*e_z_aux);
    algorithm 
      T := {e_x,cross(e_z, e_x),e_z};
    end from_nxy;

--------------

|image78| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.from\_nxz
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return orientation object from n\_x and n\_z vectors**

Information
~~~~~~~~~~~

::

It is assumed that the two input vectors n\_x and n\_z are resolved in
frame 1 and are directed along the x and z axis of frame 2 (i.e., n\_x
and n\_z are orthogonal to each other) The function returns the
orientation object T to rotate from frame 1 to frame 2.

The function is robust in the sense that it returns always an
orientation object T, even if n\_z is not orthogonal to n\_x. This is
performed in the following way:

If n\_x and n\_z are not orthogonal to each other, first a unit vector
e\_z is determined that is orthogonal to n\_x and is lying in the plane
spanned by n\_x and n\_z. If n\_x and n\_z are parallel or nearly
parallel to each other, a vector e\_z is selected arbitrarily such that
n\_x and e\_z are orthogonal to each other.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+-----------+-----------+---------------------------------------------------------------------+
| Type   | Name      | Default   | Description                                                         |
+========+===========+===========+=====================================================================+
| Real   | n\_x[3]   |           | Vector in direction of x-axis of frame 2, resolved in frame 1 [1]   |
+--------+-----------+-----------+---------------------------------------------------------------------+
| Real   | n\_z[3]   |           | Vector in direction of z-axis of frame 2, resolved in frame 1 [1]   |
+--------+-----------+-----------+---------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Description                                         |
+===========================================================================================================================================================+========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T      | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_nxz 
      "Return orientation object from n_x and n_z vectors"
      extends Modelica.Icons.Function;
      input Real n_x[3](each final unit="1") 
        "Vector in direction of x-axis of frame 2, resolved in frame 1";
      input Real n_z[3](each final unit="1") 
        "Vector in direction of z-axis of frame 2, resolved in frame 1";
      output TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
    protected 
      Real abs_n_x=sqrt(n_x*n_x);
      Real e_x[3](each final unit="1")=if abs_n_x < 1.e-10 then {1,0,0} else n_x/abs_n_x;
      Real n_y_aux[3](each final unit="1")=cross(n_z, e_x);
      Real n_z_aux[3](each final unit="1")=if n_y_aux*n_y_aux > 1.0e-6 then n_z else (if abs(e_x[1])
           > 1.0e-6 then {0,0,1} else {1,0,0});
      Real e_y_aux[3](each final unit="1")=cross(n_z_aux, e_x);
      Real e_y[3](each final unit="1")=e_y_aux/sqrt(e_y_aux*e_y_aux);
    algorithm 
      T := {e_x,e_y,cross(e_x, e_y)};
    end from_nxz;

--------------

|image79| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.from\_T
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return orientation object R from transformation matrix T**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+-----------+-----------+--------------------------------------------------------------------------------+
| Type   | Name      | Default   | Description                                                                    |
+========+===========+===========+================================================================================+
| Real   | T[3, 3]   |           | Transformation matrix to transform vector from frame 1 to frame 2 (v2=T\*v1)   |
+--------+-----------+-----------+--------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Description                                         |
+===========================================================================================================================================================+========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | R      | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_T 
      "Return orientation object R from transformation matrix T"
      extends Modelica.Icons.Function;
      input Real T[3, 3] 
        "Transformation matrix to transform vector from frame 1 to frame 2 (v2=T*v1)";
      output TransformationMatrices.Orientation R 
        "Orientation object to rotate frame 1 into frame 2";
    algorithm 
      R := T;
    end from_T;

--------------

|image80| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.from\_T\_inv
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return orientation object R from inverse transformation matrix
T\_inv**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+----------------+-----------+---------------------------------------------------------------------------------------------+
| Type   | Name           | Default   | Description                                                                                 |
+========+================+===========+=============================================================================================+
| Real   | T\_inv[3, 3]   |           | Inverse transformation matrix to transform vector from frame 2 to frame 1 (v1=T\_inv\*v2)   |
+--------+----------------+-----------+---------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Description                                         |
+===========================================================================================================================================================+========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | R      | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_T_inv 
      "Return orientation object R from inverse transformation matrix T_inv"

      extends Modelica.Icons.Function;
      input Real T_inv[3, 3] 
        "Inverse transformation matrix to transform vector from frame 2 to frame 1 (v1=T_inv*v2)";
      output TransformationMatrices.Orientation R 
        "Orientation object to rotate frame 1 into frame 2";
    algorithm 
      R := transpose(T_inv);
    end from_T_inv;

--------------

|image81| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.from\_Q
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return orientation object T from quaternion orientation object Q**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------------------+
| Type                                                                                                                                | Name   | Default   | Description                                                     |
+=====================================================================================================================================+========+===========+=================================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions.Orientation>`_   | Q      |           | Quaternions orientation object to rotate frame 1 into frame 2   |
+-------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Description                                         |
+===========================================================================================================================================================+========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T      | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_Q 
      "Return orientation object T from quaternion orientation object Q"

      extends Modelica.Icons.Function;
      input Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
      output TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
    algorithm 
      /*
      T := (2*Q[4]*Q[4] - 1)*identity(3) + 2*([Q[1:3]]*transpose([Q[1:3]]) - Q[4]*
        skew(Q[1:3]));
    */
      T := [2*(Q[1]*Q[1] + Q[4]*Q[4]) - 1, 2*(Q[1]*Q[2] + Q[3]*Q[4]), 2*(Q[1]*Q[
        3] - Q[2]*Q[4]); 2*(Q[2]*Q[1] - Q[3]*Q[4]), 2*(Q[2]*Q[2] + Q[4]*Q[4])
         - 1, 2*(Q[2]*Q[3] + Q[1]*Q[4]); 2*(Q[3]*Q[1] + Q[2]*Q[4]), 2*(Q[3]*Q[2]
         - Q[1]*Q[4]), 2*(Q[3]*Q[3] + Q[4]*Q[4]) - 1];
    end from_Q;

--------------

|image82| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.to\_T
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return transformation matrix T from orientation object R**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Default   | Description                                         |
+===========================================================================================================================================================+========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | R      |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+-----------+--------------------------------------------------------------------------------+
| Type   | Name      | Description                                                                    |
+========+===========+================================================================================+
| Real   | T[3, 3]   | Transformation matrix to transform vector from frame 1 to frame 2 (v2=T\*v1)   |
+--------+-----------+--------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_T 
      "Return transformation matrix T from orientation object R"
      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation R 
        "Orientation object to rotate frame 1 into frame 2";
      output Real T[3, 3] 
        "Transformation matrix to transform vector from frame 1 to frame 2 (v2=T*v1)";
    algorithm 
      T := R;
    end to_T;

--------------

|image83| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.to\_T\_inv
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return inverse transformation matrix T\_inv from orientation object
R**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Default   | Description                                         |
+===========================================================================================================================================================+========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | R      |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+----------------+-----------------------------------------------------------------------------------------------+
| Type   | Name           | Description                                                                                   |
+========+================+===============================================================================================+
| Real   | T\_inv[3, 3]   | Inverse transformation matrix to transform vector from frame 2 into frame 1 (v1=T\_inv\*v2)   |
+--------+----------------+-----------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_T_inv 
      "Return inverse transformation matrix T_inv from orientation object R"

      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation R 
        "Orientation object to rotate frame 1 into frame 2";
      output Real T_inv[3, 3] 
        "Inverse transformation matrix to transform vector from frame 2 into frame 1 (v1=T_inv*v2)";
    algorithm 
      T_inv := transpose(R);
    end to_T_inv;

--------------

|image84| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.to\_Q
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return quaternion orientation object Q from orientation object T**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------+---------------------------------------------------------------------------------------+
| Type                                                                                                                                                      | Name       | Default                      | Description                                                                           |
+===========================================================================================================================================================+============+==============================+=======================================================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T          |                              | Orientation object to rotate frame 1 into frame 2                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------+---------------------------------------------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions.Orientation>`_                         | Q\_guess   | Quaternions.nullRotation()   | Guess value for output Q (there are 2 solutions; the one closer to Q\_guess is used   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+------------------------------+---------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------------------+
| Type                                                                                                                                | Name   | Description                                                     |
+=====================================================================================================================================+========+=================================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_Quaternions.html#Modelica.Mechanics.MultiBody.Frames.Quaternions.Orientation>`_   | Q      | Quaternions orientation object to rotate frame 1 into frame 2   |
+-------------------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_Q 
      "Return quaternion orientation object Q from orientation object T"

      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      input Quaternions.Orientation Q_guess=Quaternions.nullRotation() 
        "Guess value for output Q (there are 2 solutions; the one closer to Q_guess is used";
      output Quaternions.Orientation Q 
        "Quaternions orientation object to rotate frame 1 into frame 2";
    algorithm 
      Q := Quaternions.from_T(T, Q_guess);
    end to_Q;

--------------

|image85| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.to\_vector
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Map rotation object into vector**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Default   | Description                                         |
+===========================================================================================================================================================+========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T      |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+----------+-------------------------------+
| Type   | Name     | Description                   |
+========+==========+===============================+
| Real   | vec[9]   | Elements of T in one vector   |
+--------+----------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_vector "Map rotation object into vector"
      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      output Real vec[9] "Elements of T in one vector";
    algorithm 
      vec := {T[1, 1],T[2, 1],T[3, 1],T[1, 2],T[2, 2],T[3, 2],T[1, 3],T[2, 3],T[
        3, 3]};
    end to_vector;

--------------

|image86| `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices>`_.to\_exy
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Map rotation object into e\_x and e\_y vectors of frame 2, resolved in
frame 1**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                      | Name   | Default   | Description                                         |
+===========================================================================================================================================================+========+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames_TransformationMatrices.html#Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation>`_   | T      |           | Orientation object to rotate frame 1 into frame 2   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+-------------+--------------------------------------------------------------------------------------------+
| Type   | Name        | Description                                                                                |
+========+=============+============================================================================================+
| Real   | exy[3, 2]   | = [e\_x, e\_y] where e\_x and e\_y are axes unit vectors of frame 2, resolved in frame 1   |
+--------+-------------+--------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_exy 
      "Map rotation object into e_x and e_y vectors of frame 2, resolved in frame 1"

      extends Modelica.Icons.Function;
      input TransformationMatrices.Orientation T 
        "Orientation object to rotate frame 1 into frame 2";
      output Real exy[3, 2] 
        "= [e_x, e_y] where e_x and e_y are axes unit vectors of frame 2, resolved in frame 1";
    algorithm 
      exy := [T[1, :], T[2, :]];
    end to_exy;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:27
2010.

.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraint| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.angularVelocity1| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.angularVelocity2| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.resolve1| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.resolve2| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.multipleResolve1| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.multipleResolve2| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.resolveDyade1| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.resolveDyade2| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.nullRotation| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.inverseRotation| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.relativeRotation| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.absoluteRotation| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.planarRotation| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.planarRotationAngle| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.axisRotation| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.axesRotations| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.axesRotationsAngles| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.smallRotation| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from\_nxy| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from\_nxz| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from\_T| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from\_T\_inv| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from\_Q| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to\_T| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to\_T\_inv| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to\_Q| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to\_vector| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to\_exy| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image29| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image30| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image31| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image32| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image33| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image34| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image35| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image36| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image37| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image38| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image39| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image40| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image41| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image42| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image43| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image44| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image45| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image46| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image47| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image48| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image49| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image50| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image51| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image52| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image53| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image54| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image55| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image56| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image57| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintS.png
.. |image58| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image59| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image60| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image61| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image62| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image63| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image64| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image65| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image66| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image67| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image68| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image69| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image70| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image71| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image72| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image73| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image74| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image75| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image76| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image77| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image78| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image79| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image80| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image81| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image82| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image83| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image84| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image85| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
.. |image86| image:: Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraintI.png
