% Modelica.Mechanics.MultiBody.Frames.Internal
% 
% 

[Modelica.Mechanics.MultiBody.Frames](Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames).Internal
============================================================================================================================

**Internal definitions that may be removed or changed (do not use)**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                              Description
  ------------------------------------------------- ----------------------
  [TransformationMatrix](Modelica_Mechanics_MultiBo 
  dy_Frames_Internal.html#Modelica.Mechanics.MultiB 
  ody.Frames.Internal.TransformationMatrix)         

  [QuaternionBase](Modelica_Mechanics_MultiBody_Fra 
  mes_Internal.html#Modelica.Mechanics.MultiBody.Fr 
  ames.Internal.QuaternionBase)                     

  ![image6](Modelica.Mechanics.MultiBody.Frames.Int Maximum of the input
  ernal.maxWithoutEventS.png)                       arguments, without
  [maxWithoutEvent](Modelica_Mechanics_MultiBody_Fr event and without
  ames_Internal.html#Modelica.Mechanics.MultiBody.F warning message when
  rames.Internal.maxWithoutEvent)                   differentiating

  ![image7](Modelica.Mechanics.MultiBody.Frames.Int First derivative of
  ernal.maxWithoutEventS.png)                       function
  [maxWithoutEvent\_d](Modelica_Mechanics_MultiBody maxWithoutEvent(..)
  _Frames_Internal.html#Modelica.Mechanics.MultiBod 
  y.Frames.Internal.maxWithoutEvent_d)              

  ![image8](Modelica.Mechanics.MultiBody.Frames.Int First derivative of
  ernal.maxWithoutEventS.png)                       function
  [maxWithoutEvent\_dd](Modelica_Mechanics_MultiBod maxWithoutEvent\_d(..)
  y_Frames_Internal.html#Modelica.Mechanics.MultiBo 
  dy.Frames.Internal.maxWithoutEvent_dd)            

  ![image9](Modelica.Mechanics.MultiBody.Frames.Int Derivative of function
  ernal.resolve1_derS.png)                          Frames.resolve1(..)
  [resolve1\_der](Modelica_Mechanics_MultiBody_Fram 
  es_Internal.html#Modelica.Mechanics.MultiBody.Fra 
  mes.Internal.resolve1_der)                        

  ![image10](Modelica.Mechanics.MultiBody.Frames.In Derivative of function
  ternal.resolve1_derS.png)                         Frames.resolve2(..)
  [resolve2\_der](Modelica_Mechanics_MultiBody_Fram 
  es_Internal.html#Modelica.Mechanics.MultiBody.Fra 
  mes.Internal.resolve2_der)                        

  ![image11](Modelica.Mechanics.MultiBody.Frames.In Derivative of function
  ternal.resolve1_derS.png)                         Frames.resolveRelative
  [resolveRelative\_der](Modelica_Mechanics_MultiBo (..)
  dy_Frames_Internal.html#Modelica.Mechanics.MultiB 
  ody.Frames.Internal.resolveRelative_der)          
  ------------------------------------------------------------------------

Types and constants
-------------------

    type TransformationMatrix = Real[3, 3];

    type QuaternionBase = Real[4];

* * * * *

[Modelica.Mechanics.MultiBody.Frames.Internal](Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal).maxWithoutEvent
==============================================================================================================================================================

**Maximum of the input arguments, without event and without warning
message when differentiating**

Information
-----------

::

Function **maxWithoutEvent** returns the maximum of its two input
arguments. This functions is used instead of the Modelica built-in
function "max" or an if-statement with "noEvent(..)", because Dymola
prints a warning message when differentiating in these cases. For the
special cases as used in the MultiBody library, these warning messages
are irrelevant but will potentially irritate the user. The C-function
"maxWithoutEvent" and its derivatives provided as additional functions
"maxWithoutEvent\_d" and "maxWithoutEvent\_dd" will not lead to such
warning messages.

::

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u1                     
  Real      u2                     

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function maxWithoutEvent 
      "Maximum of the input arguments, without event and without warning message when differentiating"
      annotation(derivative=maxWithoutEvent_d);

      input Real u1;
      input Real u2;
      output Real y;
      //  annotation (Header="#include \"MultiBody.h\"");
    protected 
      Integer dummy;
    algorithm 
      y := if u1 > u2 then u1 else u2;
      dummy := 0;
    end maxWithoutEvent;

* * * * *

[Modelica.Mechanics.MultiBody.Frames.Internal](Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal).maxWithoutEvent\_d
=================================================================================================================================================================

**First derivative of function maxWithoutEvent(..)**

Inputs
------

  Type      Name       Default      Description
  --------- ---------- ------------ ----------------
  Real      u1                      
  Real      u2                      
  Real      u1\_d                   
  Real      u2\_d                   

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y\_d      

Modelica definition
-------------------

    function maxWithoutEvent_d 
      "First derivative of function maxWithoutEvent(..)"
      annotation(derivative=maxWithoutEvent_dd);
      input Real u1;
      input Real u2;
      input Real u1_d;
      input Real u2_d;
      output Real y_d;
      //annotation (Header="#include \"MultiBody.h\"");
    protected 
      Integer dummy;
    algorithm 
      y_d := if u1 > u2 then u1_d else u2_d;
      dummy := 0;
    end maxWithoutEvent_d;

* * * * *

[Modelica.Mechanics.MultiBody.Frames.Internal](Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal).maxWithoutEvent\_dd
==================================================================================================================================================================

**First derivative of function maxWithoutEvent\_d(..)**

Inputs
------

  Type      Name        Default      Description
  --------- ----------- ------------ ----------------
  Real      u1                       
  Real      u2                       
  Real      u1\_d                    
  Real      u2\_d                    
  Real      u1\_dd                   
  Real      u2\_dd                   

Outputs
-------

  Type      Name       Description
  --------- ---------- ----------------
  Real      y\_dd      

Modelica definition
-------------------

    function maxWithoutEvent_dd 
      "First derivative of function maxWithoutEvent_d(..)"
      input Real u1;
      input Real u2;
      input Real u1_d;
      input Real u2_d;
      input Real u1_dd;
      input Real u2_dd;
      output Real y_dd;
    algorithm 
      y_dd := if u1 > u2 then u1_dd else u2_dd;
    end maxWithoutEvent_dd;

* * * * *

![image12](Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derI.png) [Modelica.Mechanics.MultiBody.Frames.Internal](Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal).resolve1\_der
=======================================================================================================================================================================================================================================

**Derivative of function Frames.resolve1(..)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name  Defa Description
                                                  ult  
  ----------------------------------------- ----- ---- --------------------
  [Orientation](Modelica_Mechanics_MultiBod R          Orientation object
  y_Frames.html#Modelica.Mechanics.MultiBod            to rotate frame 1
  y.Frames.Orientation)                                into frame 2

  Real                                      v2[3]      Vector resolved in
                                                       frame 2

  Real                                      v2\_d      = der(v2)
                                            er[3]      
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name            Description
  --------- --------------- -----------------------------------------------
  Real      v1\_der[3]      Derivative of vector v resolved in frame 1

Modelica definition
-------------------

    function resolve1_der "Derivative of function Frames.resolve1(..)"
      import Modelica.Mechanics.MultiBody.Frames;
      extends Modelica.Icons.Function;
      input Orientation R "Orientation object to rotate frame 1 into frame 2";
      input Real v2[3] "Vector resolved in frame 2";
      input Real v2_der[3] "= der(v2)";
      output Real v1_der[3] "Derivative of vector v resolved in frame 1";
    algorithm 
      v1_der := Frames.resolve1(R, v2_der + cross(R.w, v2));
    end resolve1_der;

* * * * *

![image13](Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derI.png) [Modelica.Mechanics.MultiBody.Frames.Internal](Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal).resolve2\_der
=======================================================================================================================================================================================================================================

**Derivative of function Frames.resolve2(..)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name  Defa Description
                                                  ult  
  ----------------------------------------- ----- ---- --------------------
  [Orientation](Modelica_Mechanics_MultiBod R          Orientation object
  y_Frames.html#Modelica.Mechanics.MultiBod            to rotate frame 1
  y.Frames.Orientation)                                into frame 2

  Real                                      v1[3]      Vector resolved in
                                                       frame 1

  Real                                      v1\_d      = der(v1)
                                            er[3]      
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name            Description
  --------- --------------- -----------------------------------------------
  Real      v2\_der[3]      Derivative of vector v resolved in frame 2

Modelica definition
-------------------

    function resolve2_der "Derivative of function Frames.resolve2(..)"
      import Modelica.Mechanics.MultiBody.Frames;
      extends Modelica.Icons.Function;
      input Orientation R "Orientation object to rotate frame 1 into frame 2";
      input Real v1[3] "Vector resolved in frame 1";
      input Real v1_der[3] "= der(v1)";
      output Real v2_der[3] "Derivative of vector v resolved in frame 2";
    algorithm 
      v2_der := Frames.resolve2(R, v1_der) - cross(R.w, Frames.resolve2(R, v1));
    end resolve2_der;

* * * * *

![image14](Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derI.png) [Modelica.Mechanics.MultiBody.Frames.Internal](Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal).resolveRelative\_der
==============================================================================================================================================================================================================================================

**Derivative of function Frames.resolveRelative(..)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name  Defa Description
                                                  ult  
  ----------------------------------------- ----- ---- --------------------
  Real                                      v1[3]      Vector in frame 1

  [Orientation](Modelica_Mechanics_MultiBod R1         Orientation object
  y_Frames.html#Modelica.Mechanics.MultiBod            to rotate frame 0
  y.Frames.Orientation)                                into frame 1

  [Orientation](Modelica_Mechanics_MultiBod R2         Orientation object
  y_Frames.html#Modelica.Mechanics.MultiBod            to rotate frame 0
  y.Frames.Orientation)                                into frame 2

  Real                                      v1\_d      = der(v1)
                                            er[3]      
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name            Description
  --------- --------------- -----------------------------------------------
  Real      v2\_der[3]      Derivative of vector v resolved in frame 2

Modelica definition
-------------------

    function resolveRelative_der 
      "Derivative of function Frames.resolveRelative(..)"
      import Modelica.Mechanics.MultiBody.Frames;
      extends Modelica.Icons.Function;
      input Real v1[3] "Vector in frame 1";
      input Orientation R1 "Orientation object to rotate frame 0 into frame 1";
      input Orientation R2 "Orientation object to rotate frame 0 into frame 2";
      input Real v1_der[3] "= der(v1)";
      output Real v2_der[3] "Derivative of vector v resolved in frame 2";
    algorithm 
      v2_der := Frames.resolveRelative(v1_der+cross(R1.w,v1), R1, R2)
                - cross(R2.w, Frames.resolveRelative(v1, R1, R2));

      /* skew(w) = T*der(T'), -skew(w) = der(T)*T'

         v2 = T2*(T1'*v1)
         der(v2) = der(T2)*T1'*v1 + T2*der(T1')*v1 + T2*T1'*der(v1)
                 = der(T2)*T2'*T2*T1'*v1 + T2*T1'*T1*der(T1')*v1 + T2*T1'*der(v1)
                 = -w2 x (T2*T1'*v1) + T2*T1'*(w1 x v1) + T2*T1'*der(v1)
                 = T2*T1'*(der(v1) + w1 x v1) - w2 x (T2*T1'*v1)
      */
    end resolveRelative_der;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:28 2010.
