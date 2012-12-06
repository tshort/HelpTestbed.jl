============================================
Modelica.Mechanics.MultiBody.Frames.Internal
============================================

`Modelica.Mechanics.MultiBody.Frames <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames>`_.Internal
------------------------------------------------------------------------------------------------------------------------------

**Internal definitions that may be removed or changed (do not use)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                               | Description                                                                                      |
+====================================================================================================================================================================================================================+==================================================================================================+
| `TransformationMatrix <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal.TransformationMatrix>`_                                                                      |                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| `QuaternionBase <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal.QuaternionBase>`_                                                                                  |                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image6| `maxWithoutEvent <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEvent>`_                                                                       | Maximum of the input arguments, without event and without warning message when differentiating   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image7| `maxWithoutEvent\_d <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEvent_d>`_                                                                  | First derivative of function maxWithoutEvent(..)                                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image8| `maxWithoutEvent\_dd <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEvent_dd>`_                                                                | First derivative of function maxWithoutEvent\_d(..)                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image9| `resolve1\_der <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_der>`_                                                                            | Derivative of function Frames.resolve1(..)                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image10| `resolve2\_der <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal.resolve2_der>`_                                                                           | Derivative of function Frames.resolve2(..)                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image11| `resolveRelative\_der <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal.resolveRelative_der>`_                                                             | Derivative of function Frames.resolveRelative(..)                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+

Types and constants
~~~~~~~~~~~~~~~~~~~

::

      type TransformationMatrix = Real[3, 3];

::

      type QuaternionBase = Real[4];

--------------

`Modelica.Mechanics.MultiBody.Frames.Internal <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal>`_.maxWithoutEvent
----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Maximum of the input arguments, without event and without warning
message when differentiating**

Information
~~~~~~~~~~~

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
~~~~~~

+--------+--------+-----------+---------------+
| Type   | Name   | Default   | Description   |
+========+========+===========+===============+
| Real   | u1     |           |               |
+--------+--------+-----------+---------------+
| Real   | u2     |           |               |
+--------+--------+-----------+---------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | y      |               |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Modelica.Mechanics.MultiBody.Frames.Internal <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal>`_.maxWithoutEvent\_d
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**First derivative of function maxWithoutEvent(..)**

Inputs
~~~~~~

+--------+---------+-----------+---------------+
| Type   | Name    | Default   | Description   |
+========+=========+===========+===============+
| Real   | u1      |           |               |
+--------+---------+-----------+---------------+
| Real   | u2      |           |               |
+--------+---------+-----------+---------------+
| Real   | u1\_d   |           |               |
+--------+---------+-----------+---------------+
| Real   | u2\_d   |           |               |
+--------+---------+-----------+---------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | y\_d   |               |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Modelica.Mechanics.MultiBody.Frames.Internal <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal>`_.maxWithoutEvent\_dd
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**First derivative of function maxWithoutEvent\_d(..)**

Inputs
~~~~~~

+--------+----------+-----------+---------------+
| Type   | Name     | Default   | Description   |
+========+==========+===========+===============+
| Real   | u1       |           |               |
+--------+----------+-----------+---------------+
| Real   | u2       |           |               |
+--------+----------+-----------+---------------+
| Real   | u1\_d    |           |               |
+--------+----------+-----------+---------------+
| Real   | u2\_d    |           |               |
+--------+----------+-----------+---------------+
| Real   | u1\_dd   |           |               |
+--------+----------+-----------+---------------+
| Real   | u2\_dd   |           |               |
+--------+----------+-----------+---------------+

Outputs
~~~~~~~

+--------+---------+---------------+
| Type   | Name    | Description   |
+========+=========+===============+
| Real   | y\_dd   |               |
+--------+---------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image12| `Modelica.Mechanics.MultiBody.Frames.Internal <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal>`_.resolve1\_der
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Derivative of function Frames.resolve1(..)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+
| Type                                                                                                        | Name         | Default   | Description                                         |
+=============================================================================================================+==============+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_   | R            |           | Orientation object to rotate frame 1 into frame 2   |
+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+
| Real                                                                                                        | v2[3]        |           | Vector resolved in frame 2                          |
+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+
| Real                                                                                                        | v2\_der[3]   |           | = der(v2)                                           |
+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+--------------+----------------------------------------------+
| Type   | Name         | Description                                  |
+========+==============+==============================================+
| Real   | v1\_der[3]   | Derivative of vector v resolved in frame 1   |
+--------+--------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image13| `Modelica.Mechanics.MultiBody.Frames.Internal <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal>`_.resolve2\_der
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Derivative of function Frames.resolve2(..)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+
| Type                                                                                                        | Name         | Default   | Description                                         |
+=============================================================================================================+==============+===========+=====================================================+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_   | R            |           | Orientation object to rotate frame 1 into frame 2   |
+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+
| Real                                                                                                        | v1[3]        |           | Vector resolved in frame 1                          |
+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+
| Real                                                                                                        | v1\_der[3]   |           | = der(v1)                                           |
+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+--------------+----------------------------------------------+
| Type   | Name         | Description                                  |
+========+==============+==============================================+
| Real   | v2\_der[3]   | Derivative of vector v resolved in frame 2   |
+--------+--------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image14| `Modelica.Mechanics.MultiBody.Frames.Internal <Modelica_Mechanics_MultiBody_Frames_Internal.html#Modelica.Mechanics.MultiBody.Frames.Internal>`_.resolveRelative\_der
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Derivative of function Frames.resolveRelative(..)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+
| Type                                                                                                        | Name         | Default   | Description                                         |
+=============================================================================================================+==============+===========+=====================================================+
| Real                                                                                                        | v1[3]        |           | Vector in frame 1                                   |
+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_   | R1           |           | Orientation object to rotate frame 0 into frame 1   |
+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+
| `Orientation <Modelica_Mechanics_MultiBody_Frames.html#Modelica.Mechanics.MultiBody.Frames.Orientation>`_   | R2           |           | Orientation object to rotate frame 0 into frame 2   |
+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+
| Real                                                                                                        | v1\_der[3]   |           | = der(v1)                                           |
+-------------------------------------------------------------------------------------------------------------+--------------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+--------+--------------+----------------------------------------------+
| Type   | Name         | Description                                  |
+========+==============+==============================================+
| Real   | v2\_der[3]   | Derivative of vector v resolved in frame 2   |
+--------+--------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:28
2010.

.. |Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEvent| image:: Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEventS.png
.. |Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEvent\_d| image:: Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEventS.png
.. |Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEvent\_dd| image:: Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEventS.png
.. |Modelica.Mechanics.MultiBody.Frames.Internal.resolve1\_der| image:: Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derS.png
.. |Modelica.Mechanics.MultiBody.Frames.Internal.resolve2\_der| image:: Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derS.png
.. |Modelica.Mechanics.MultiBody.Frames.Internal.resolveRelative\_der| image:: Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derS.png
.. |image6| image:: Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEventS.png
.. |image7| image:: Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEventS.png
.. |image8| image:: Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEventS.png
.. |image9| image:: Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derS.png
.. |image10| image:: Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derS.png
.. |image11| image:: Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derS.png
.. |image12| image:: Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derI.png
.. |image13| image:: Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derI.png
.. |image14| image:: Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_derI.png
