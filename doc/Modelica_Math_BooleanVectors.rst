============================
Modelica.Math.BooleanVectors
============================

`Modelica.Math <Modelica_Math.html#Modelica.Math>`_.BooleanVectors
------------------------------------------------------------------

**Library of functions operating on Boolean vectors**

Information
~~~~~~~~~~~

::

This library provides functions operating on vectors that have a Boolean
vector as input argument.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                              | Description                                                                                                      |
+===================================================================================================================================================+==================================================================================================================+
| |image4| `allTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.allTrue>`_                                                      | Returns true, if all elements of the Boolean input vector are true ('and')                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image5| `anyTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.anyTrue>`_                                                      | Returns true, if at least on element of the Boolean input vector is true ('or')                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image6| `oneTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.oneTrue>`_                                                      | Returns true, if exactly one element of the Boolean input vector is true ('xor')                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image7| `firstTrueIndex <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.firstTrueIndex>`_                                        | Returns the index of the first element of the Boolean vector that is true and returns 0, if no element is true   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+

--------------

|image8| `Modelica.Math.BooleanVectors <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors>`_.allTrue
-----------------------------------------------------------------------------------------------------------------

**Returns true, if all elements of the Boolean input vector are true
('and')**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        allTrue(b);

Description
^^^^^^^^^^^

Returns **true** if all elements of the Boolean input vector b are
**true**. Otherwise the function returns **false**. If b is an empty
vector, i.e., size(b,1)=0, the function returns **false**.

Example
^^^^^^^

    ::

          Boolean b1[3] = {true, true, true};
          Boolean b2[3] = {false, true, false};
          Boolean r1, r2;
        algorithm
          r1 = allTrue(b1);  // r1 = true
          r2 = allTrue(b2);  // r2 = false

See also
^^^^^^^^

`anyTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.anyTrue>`_,
`oneTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.oneTrue>`_,
`firstTrueIndex <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.firstTrueIndex>`_.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------+-----------+------------------+
| Type      | Name   | Default   | Description      |
+===========+========+===========+==================+
| Boolean   | b[:]   |           | Boolean vector   |
+-----------+--------+-----------+------------------+

Outputs
~~~~~~~

+-----------+----------+-----------------------------------------+
| Type      | Name     | Description                             |
+===========+==========+=========================================+
| Boolean   | result   | = true, if all elements of b are true   |
+-----------+----------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function allTrue 
      "Returns true, if all elements of the Boolean input vector are true ('and')"
      extends Modelica.Icons.Function;
      input Boolean b[:] "Boolean vector";
      output Boolean result "= true, if all elements of b are true";
    algorithm 
      result := size(b,1) > 0;
      for i in 1:size(b,1) loop
         result := result and b[i];
      end for;
    end allTrue;

--------------

|image9| `Modelica.Math.BooleanVectors <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors>`_.anyTrue
-----------------------------------------------------------------------------------------------------------------

**Returns true, if at least on element of the Boolean input vector is
true ('or')**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        anyTrue(b);

Description
^^^^^^^^^^^

Returns **true** if at least one elements of the input Boolean vector b
is **true**. Otherwise the function returns **false**. If b is an empty
vector, i.e., size(b,1)=0, the function returns **false**.

Example
^^^^^^^

    ::

          Boolean b1[3] = {false, false, false};
          Boolean b2[3] = {false, true, false};
          Boolean r1, r2;
        algorithm
          r1 = anyTrue(b1);  // r1 = false
          r2 = anyTrue(b2);  // r2 = true

See also
^^^^^^^^

`allTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.allTrue>`_,
`oneTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.oneTrue>`_,
`firstTrueIndex <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.firstTrueIndex>`_.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------+-----------+---------------+
| Type      | Name   | Default   | Description   |
+===========+========+===========+===============+
| Boolean   | b[:]   |           |               |
+-----------+--------+-----------+---------------+

Outputs
~~~~~~~

+-----------+----------+---------------+
| Type      | Name     | Description   |
+===========+==========+===============+
| Boolean   | result   |               |
+-----------+----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function anyTrue 
      "Returns true, if at least on element of the Boolean input vector is true ('or')"

      extends Modelica.Icons.Function;
      input Boolean b[:];
      output Boolean result;
    algorithm 
      result := false;
      for i in 1:size(b,1) loop
         result := result or b[i];
      end for;
    end anyTrue;

--------------

|image10| `Modelica.Math.BooleanVectors <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors>`_.oneTrue
------------------------------------------------------------------------------------------------------------------

**Returns true, if exactly one element of the Boolean input vector is
true ('xor')**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        oneTrue(b);

Description
^^^^^^^^^^^

Returns **true** if exactly one element of the input Boolean vector b is
**true**. Otherwise the function returns **false**. If b is an empty
vector, i.e., size(b,1)=0, the function returns **false**.

Example
^^^^^^^

    ::

          Boolean b1[3] = {false, false, false};
          Boolean b2[3] = {false, true, false};
          Boolean b3[3] = {false, true, true};
          Boolean r1, r2, r3;
        algorithm
          r1 = oneTrue(b1);  // r1 = false
          r2 = oneTrue(b2);  // r2 = true
          r3 = oneTrue(b3);  // r3 = false

See also
^^^^^^^^

`allTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.allTrue>`_,
`anyTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.anyTrue>`_,
`firstTrueIndex <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.firstTrueIndex>`_.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+--------+-----------+---------------+
| Type      | Name   | Default   | Description   |
+===========+========+===========+===============+
| Boolean   | b[:]   |           |               |
+-----------+--------+-----------+---------------+

Outputs
~~~~~~~

+-----------+----------+---------------+
| Type      | Name     | Description   |
+===========+==========+===============+
| Boolean   | result   |               |
+-----------+----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function oneTrue 
      "Returns true, if exactly one element of the Boolean input vector is true ('xor')"

      extends Modelica.Icons.Function;
      input Boolean b[:];
      output Boolean result;
    protected 
      Integer count = 0;
    algorithm 
      for i in 1:size(b,1) loop
         count := if b[i] then count+1 else count;
      end for;
      result :=count == 1;
    end oneTrue;

--------------

`Modelica.Math.BooleanVectors <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors>`_.firstTrueIndex
---------------------------------------------------------------------------------------------------------------

**Returns the index of the first element of the Boolean vector that is
true and returns 0, if no element is true**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        firstTrueIndex(b);

Description
^^^^^^^^^^^

Returns the index of the first element of the Boolean vector b that is
**true** and returns 0, if no element is **true**" If b is an empty
vector, i.e., size(b,1)=0, the function returns 0.

Example
^^^^^^^

    ::

          Boolean b1[3] = {false, false, false};
          Boolean b2[3] = {false, true, false};
          Boolean b3[4] = {false, true, false, true};
          Integer r1, r2, r3;
        algorithm
          r1 = firstTrueIndex(b1);  // r1 = 0
          r2 = firstTrueIndex(b2);  // r2 = 2
          r3 = firstTrueIndex(b3);  // r3 = 2

See also
^^^^^^^^

`allTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.allTrue>`_,
`anyTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.anyTrue>`_,
`oneTrue <Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.oneTrue>`_.

::

Inputs
~~~~~~

+-----------+--------+-----------+---------------+
| Type      | Name   | Default   | Description   |
+===========+========+===========+===============+
| Boolean   | b[:]   |           |               |
+-----------+--------+-----------+---------------+

Outputs
~~~~~~~

+-----------+---------+---------------+
| Type      | Name    | Description   |
+===========+=========+===============+
| Integer   | index   |               |
+-----------+---------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function firstTrueIndex 
      "Returns the index of the first element of the Boolean vector that is true and returns 0, if no element is true"
       input Boolean b[:];
       output Integer index;
    algorithm 
       index :=0;
       for i in 1:size(b,1) loop
          if b[i] then
             index :=i;
             return;
          end if;
       end for;
    end firstTrueIndex;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:49
2010.

.. |Modelica.Math.BooleanVectors.allTrue| image:: Modelica.Math.BooleanVectors.allTrueS.png
.. |Modelica.Math.BooleanVectors.anyTrue| image:: Modelica.Math.BooleanVectors.allTrueS.png
.. |Modelica.Math.BooleanVectors.oneTrue| image:: Modelica.Math.BooleanVectors.allTrueS.png
.. |Modelica.Math.BooleanVectors.firstTrueIndex| image:: Modelica.Math.BooleanVectors.firstTrueIndexS.png
.. |image4| image:: Modelica.Math.BooleanVectors.allTrueS.png
.. |image5| image:: Modelica.Math.BooleanVectors.allTrueS.png
.. |image6| image:: Modelica.Math.BooleanVectors.allTrueS.png
.. |image7| image:: Modelica.Math.BooleanVectors.firstTrueIndexS.png
.. |image8| image:: Modelica.Math.BooleanVectors.allTrueI.png
.. |image9| image:: Modelica.Math.BooleanVectors.allTrueI.png
.. |image10| image:: Modelica.Math.BooleanVectors.allTrueI.png
