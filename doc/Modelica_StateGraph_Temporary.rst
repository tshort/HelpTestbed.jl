=============================
Modelica.StateGraph.Temporary
=============================

`Modelica.StateGraph <Modelica_StateGraph.html#Modelica.StateGraph>`_.Temporary
-------------------------------------------------------------------------------

**Components that will be provided by other libraries in the future**

Information
~~~~~~~~~~~

::

This library is just temporarily present. The components of this library
will be present in the future in the Modelica standard library (with the
new block connectors) and in the UserInteraction library that is
currently under development.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                       | Description                                                                                             |
+============================================================================================================================================================+=========================================================================================================+
| |image6| `SetRealParameter <Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary.SetRealParameter>`_                                           | Define Real parameter (GUI not yet satisfactory)                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
| |image7| `anyTrue <Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary.anyTrue>`_                                                             | Returns true, if at least on element of the Boolean input vector is true                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
| |image8| `allTrue <Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary.allTrue>`_                                                             | Returns true, if all elements of the Boolean input vector are true                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
| |image9| `RadioButton <Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary.RadioButton>`_                                                     | Button that sets its output to true when pressed and is reset when an element of 'reset' becomes true   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
| |image10| `NumericValue <Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary.NumericValue>`_                                                  | Show value of Real input signal dynamically                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
| |image11| `IndicatorLamp <Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary.IndicatorLamp>`_                                                | Dynamically show Boolean input signal (false/true = white/green color)                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+

Types and constants
~~~~~~~~~~~~~~~~~~~

::

    type SetRealParameter = Real "Define Real parameter (GUI not yet satisfactory)";

--------------

|image12| `Modelica.StateGraph.Temporary <Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary>`_.anyTrue
---------------------------------------------------------------------------------------------------------------------

**Returns true, if at least on element of the Boolean input vector is
true**

Information
~~~~~~~~~~~

::

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
      "Returns true, if at least on element of the Boolean input vector is true"

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

|image13| `Modelica.StateGraph.Temporary <Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary>`_.allTrue
---------------------------------------------------------------------------------------------------------------------

**Returns true, if all elements of the Boolean input vector are true**

Information
~~~~~~~~~~~

::

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

    function allTrue 
      "Returns true, if all elements of the Boolean input vector are true"
      extends Modelica.Icons.Function;
      input Boolean b[:];
      output Boolean result;
    algorithm 
      result := true;
      for i in 1:size(b,1) loop
         result := result and b[i];
      end for;
    end allTrue;

--------------

|image14| `Modelica.StateGraph.Temporary <Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary>`_.RadioButton
-------------------------------------------------------------------------------------------------------------------------

**Button that sets its output to true when pressed and is reset when an
element of 'reset' becomes true**

.. figure:: Modelica.StateGraph.Temporary.RadioButtonD.png
   :align: center
   :alt: Modelica.StateGraph.Temporary.RadioButton

   Modelica.StateGraph.Temporary.RadioButton

Information
~~~~~~~~~~~

::

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------+----------------------+-----------+--------------------------------------------------------------+
| Type                                                    | Name                 | Default   | Description                                                  |
+=========================================================+======================+===========+==============================================================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | buttonTimeTable[:]   | {0}       | Time instants where button is pressend and released [s]      |
+---------------------------------------------------------+----------------------+-----------+--------------------------------------------------------------+
| Time varying expressions                                |
+---------------------------------------------------------+----------------------+-----------+--------------------------------------------------------------+
| Boolean                                                 | reset[:]             | {false}   | Reset button to false, if an element of reset becomes true   |
+---------------------------------------------------------+----------------------+-----------+--------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                 | Name   | Description   |
+======================================================================================================+========+===============+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | on     |               |
+------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block RadioButton 
      "Button that sets its output to true when pressed and is reset when an element of 'reset' becomes true"

      parameter Modelica.SIunits.Time buttonTimeTable[:]={0} 
        "Time instants where button is pressend and released";
      input Boolean reset[:]={false} 
        "Reset button to false, if an element of reset becomes true";

      Modelica.Blocks.Interfaces.BooleanOutput on;
    protected 
      Modelica.Blocks.Sources.BooleanTable table(table=buttonTimeTable);
    algorithm 
      on := table.y;
      when pre(reset) then
        on := false;
      end when;
    end RadioButton;

--------------

|image15| `Modelica.StateGraph.Temporary <Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary>`_.NumericValue
--------------------------------------------------------------------------------------------------------------------------

**Show value of Real input signal dynamically**

.. figure:: Modelica.StateGraph.Temporary.NumericValueD.png
   :align: center
   :alt: Modelica.StateGraph.Temporary.NumericValue

   Modelica.StateGraph.Temporary.NumericValue

Information
~~~~~~~~~~~

::

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------------------------------------------+
| Type                                                                                  | Name            | Default   | Description                                                       |
+=======================================================================================+=================+===========+===================================================================+
| Integer                                                                               | precision       | 3         | Number of significant digits to be shown                          |
+---------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------------------------------------------+
| Boolean                                                                               | hideConnector   | false     | = true, if connector is not shown in the dynamic object diagram   |
+---------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------------------------------------------+
| `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | Value           |           | Real value to be shown in icon                                    |
+---------------------------------------------------------------------------------------+-----------------+-----------+-------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+---------+----------------------------------+
| Type                                                                                        | Name    | Description                      |
+=============================================================================================+=========+==================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | Value   | Real value to be shown in icon   |
+---------------------------------------------------------------------------------------------+---------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model NumericValue "Show value of Real input signal dynamically"
      parameter Integer precision(min=0) = 3 
        "Number of significant digits to be shown";
      parameter Boolean hideConnector=false 
        "= true, if connector is not shown in the dynamic object diagram";

      Modelica.Blocks.Interfaces.RealInput Value "Real value to be shown in icon";


    end NumericValue;

--------------

|image16| `Modelica.StateGraph.Temporary <Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary>`_.IndicatorLamp
---------------------------------------------------------------------------------------------------------------------------

**Dynamically show Boolean input signal (false/true = white/green
color)**

.. figure:: Modelica.StateGraph.Temporary.IndicatorLampD.png
   :align: center
   :alt: Modelica.StateGraph.Temporary.IndicatorLamp

   Modelica.StateGraph.Temporary.IndicatorLamp

Information
~~~~~~~~~~~

::

::

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                              | Name   | Description   |
+===================================================================================================+========+===============+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_   | u      |               |
+---------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IndicatorLamp 
      "Dynamically show Boolean input signal (false/true = white/green color)"

      Modelica.Blocks.Interfaces.BooleanInput u;


    end IndicatorLamp;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:51
2010.

.. |Modelica.StateGraph.Temporary.SetRealParameter| image:: Modelica.StateGraph.Temporary.SetRealParameterS.png
.. |Modelica.StateGraph.Temporary.anyTrue| image:: Modelica.StateGraph.Temporary.anyTrueS.png
.. |Modelica.StateGraph.Temporary.allTrue| image:: Modelica.StateGraph.Temporary.anyTrueS.png
.. |Modelica.StateGraph.Temporary.RadioButton| image:: Modelica.StateGraph.Temporary.RadioButtonS.png
.. |Modelica.StateGraph.Temporary.NumericValue| image:: Modelica.StateGraph.Temporary.NumericValueS.png
.. |Modelica.StateGraph.Temporary.IndicatorLamp| image:: Modelica.StateGraph.Temporary.IndicatorLampS.png
.. |image6| image:: Modelica.StateGraph.Temporary.SetRealParameterS.png
.. |image7| image:: Modelica.StateGraph.Temporary.anyTrueS.png
.. |image8| image:: Modelica.StateGraph.Temporary.anyTrueS.png
.. |image9| image:: Modelica.StateGraph.Temporary.RadioButtonS.png
.. |image10| image:: Modelica.StateGraph.Temporary.NumericValueS.png
.. |image11| image:: Modelica.StateGraph.Temporary.IndicatorLampS.png
.. |image12| image:: Modelica.StateGraph.Temporary.anyTrueI.png
.. |image13| image:: Modelica.StateGraph.Temporary.anyTrueI.png
.. |image14| image:: Modelica.StateGraph.Temporary.RadioButtonI.png
.. |image15| image:: Modelica.StateGraph.Temporary.NumericValueI.png
.. |image16| image:: Modelica.StateGraph.Temporary.IndicatorLampI.png
