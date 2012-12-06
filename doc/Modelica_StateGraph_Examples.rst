============================
Modelica.StateGraph.Examples
============================

`Modelica.StateGraph <Modelica_StateGraph.html#Modelica.StateGraph>`_.Examples
------------------------------------------------------------------------------

**Examples to demonstrate the usage of the components of the StateGraph
library**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                     | Description                                                                                                            |
+==========================================================================================================================================================================+========================================================================================================================+
| |image8| `FirstExample <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples.FirstExample>`_                                                                   | A first simple StateGraph example                                                                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image9| `FirstExample\_Variant2 <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples.FirstExample_Variant2>`_                                                | A variant of the first simple StateGraph example                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image10| `FirstExample\_Variant3 <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples.FirstExample_Variant3>`_                                               | A variant of the first simple StateGraph example                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image11| `ExecutionPaths <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples.ExecutionPaths>`_                                                              | Example to demonstrate parallel and alternative execution paths                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image12| `ShowCompositeStep <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples.ShowCompositeStep>`_                                                        | Example to demonstrate parallel activities described by a StateGraph                                                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image13| `ShowExceptions <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples.ShowExceptions>`_                                                              | Example to demonstrate how a hierarchically structured StateGraph can suspend and resume actions on different levels   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image14| `ControlledTanks <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples.ControlledTanks>`_                                                            | Demonstrating the controller of a tank filling/emptying system                                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image15| `Utilities <Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities>`_                                                              | Utility components for the examples                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+

--------------

|image16| `Modelica.StateGraph.Examples <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples>`_.FirstExample
-----------------------------------------------------------------------------------------------------------------------

**A first simple StateGraph example**

.. figure:: Modelica.StateGraph.Examples.FirstExampleD.png
   :align: center
   :alt: Modelica.StateGraph.Examples.FirstExample

   Modelica.StateGraph.Examples.FirstExample

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FirstExample "A first simple StateGraph example"
      extends Modelica.Icons.Example;
      InitialStep initialStep;
      Transition transition1(enableTimer=true, waitTime=1);
      Step step;
      Transition transition2(enableTimer=true, waitTime=1);
        inner StateGraphRoot stateGraphRoot;
    equation 

      connect(initialStep.outPort[1], transition1.inPort);

      connect(transition1.outPort, step.inPort[1]);
      connect(step.outPort[1], transition2.inPort);
      connect(transition2.outPort, initialStep.inPort[1]);
    end FirstExample;

--------------

|image17| `Modelica.StateGraph.Examples <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples>`_.FirstExample\_Variant2
---------------------------------------------------------------------------------------------------------------------------------

**A variant of the first simple StateGraph example**

.. figure:: Modelica.StateGraph.Examples.FirstExample_Variant2D.png
   :align: center
   :alt: Modelica.StateGraph.Examples.FirstExample\_Variant2

   Modelica.StateGraph.Examples.FirstExample\_Variant2

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FirstExample_Variant2 
      "A variant of the first simple StateGraph example"
      extends Modelica.Icons.Example;
      InitialStep initialStep;
      Transition transition1(enableTimer=true, waitTime=1);
      StepWithSignal step;
      TransitionWithSignal transition2;
      Modelica.Blocks.Logical.Timer timer;
      Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqual(threshold=1);
        inner StateGraphRoot stateGraphRoot;
    equation 

      connect(initialStep.outPort[1], transition1.inPort);

      connect(transition1.outPort, step.inPort[1]);
      connect(step.active, timer.u);
      connect(step.outPort[1], transition2.inPort);
      connect(timer.y, greaterEqual.u);
      connect(greaterEqual.y, transition2.condition);
      connect(transition2.outPort, initialStep.inPort[1]);
    end FirstExample_Variant2;

--------------

|image18| `Modelica.StateGraph.Examples <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples>`_.FirstExample\_Variant3
---------------------------------------------------------------------------------------------------------------------------------

**A variant of the first simple StateGraph example**

.. figure:: Modelica.StateGraph.Examples.FirstExample_Variant3D.png
   :align: center
   :alt: Modelica.StateGraph.Examples.FirstExample\_Variant3

   Modelica.StateGraph.Examples.FirstExample\_Variant3

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FirstExample_Variant3 
      "A variant of the first simple StateGraph example"
      extends Modelica.Icons.Example;
      InitialStep initialStep;
      Transition transition1(enableTimer=true, waitTime=1);
      StepWithSignal step;
      TransitionWithSignal transition2;
      Modelica.Blocks.Logical.Timer timer;
      Modelica.Blocks.Sources.BooleanExpression SetBoolean1(y=timer.y > 1);
      Modelica.Blocks.Sources.BooleanExpression SetBoolean2(y=step.active);
        inner StateGraphRoot stateGraphRoot;
    equation 

      connect(initialStep.outPort[1], transition1.inPort);

      connect(transition1.outPort, step.inPort[1]);
      connect(step.active, timer.u);
      connect(step.outPort[1], transition2.inPort);
      connect(transition2.outPort, initialStep.inPort[1]);
      connect(SetBoolean1.y, transition2.condition);
    end FirstExample_Variant3;

--------------

|image19| `Modelica.StateGraph.Examples <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples>`_.ExecutionPaths
-------------------------------------------------------------------------------------------------------------------------

**Example to demonstrate parallel and alternative execution paths**

.. figure:: Modelica.StateGraph.Examples.ExecutionPathsD.png
   :align: center
   :alt: Modelica.StateGraph.Examples.ExecutionPaths

   Modelica.StateGraph.Examples.ExecutionPaths

Information
~~~~~~~~~~~

::

This is an example to demonstrate in which way **parallel** activities
can be modelled by a StateGraph. When transition1 fires (after 1
second), two branches are executed in parallel. After 6 seconds the two
branches are synchronized in order to arrive at step6.

Before simulating the model, try to figure out whether which branch of
the alternative sequence is executed. Note, that alternatives have
priorities according to the port index (alternative.split[1] has a
higher priority to fire as alternative.split[2]).

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ExecutionPaths 
      "Example to demonstrate parallel and alternative execution paths"

      extends Modelica.Icons.Example;

      InitialStep step0;
      Transition transition1(enableTimer=true, waitTime=1);
      Step step1;
      Transition transition2(enableTimer=true, waitTime=1);
      Step step6;
      Step step2;
      Transition transition3(enableTimer=true, waitTime=1);
      Transition transition4(enableTimer=true, waitTime=1);
      Step step3;
      Step step4;
      Transition transition5(enableTimer=true, waitTime=1);
      Transition transition6(enableTimer=true, waitTime=1);
      Step step5;
      Modelica.Blocks.Sources.RealExpression setReal(y=time);
      TransitionWithSignal transition7;
      Modelica.Blocks.Sources.BooleanExpression setCondition(y=time > 7);
      Transition transition4a(enableTimer=true, waitTime=1);
      Step step4a;
      Transition transition6a(enableTimer=true, waitTime=2);
      StateGraph.Temporary.NumericValue NumericValue1;
      Alternative alternative(nBranches=3);
      Parallel Parallel1;
        inner StateGraphRoot stateGraphRoot;
    equation 
      connect(transition3.outPort, step3.inPort[1]);
      connect(step3.outPort[1], transition5.inPort);
      connect(transition4.outPort, step4.inPort[1]);
      connect(step4.outPort[1], transition6.inPort);
      connect(transition7.outPort, step0.inPort[1]);
      connect(step6.outPort[1], transition7.inPort);
      connect(transition4a.outPort, step4a.inPort[1]);
      connect(step4a.outPort[1], transition6a.inPort);
      connect(setCondition.y, transition7.condition);
      connect(setReal.y, NumericValue1.Value);
      connect(transition3.inPort, alternative.split[1]);
      connect(transition4.inPort, alternative.split[2]);
      connect(transition4a.inPort, alternative.split[3]);
      connect(transition5.outPort, alternative.join[1]);
      connect(transition6.outPort, alternative.join[2]);
      connect(transition6a.outPort, alternative.join[3]);
      connect(step2.outPort[1], alternative.inPort);
      connect(alternative.outPort, step5.inPort[1]);
      connect(step2.inPort[1], Parallel1.split[1]);
      connect(step1.outPort[1], Parallel1.join[2]);
      connect(step0.outPort[1], transition1.inPort);
      connect(transition2.outPort, step6.inPort[1]);
      connect(transition1.outPort, Parallel1.inPort);
      connect(Parallel1.outPort, transition2.inPort);
      connect(step5.outPort[1], Parallel1.join[1]);
      connect(Parallel1.split[2], step1.inPort[1]);
    end ExecutionPaths;

--------------

|image20| `Modelica.StateGraph.Examples <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples>`_.ShowCompositeStep
----------------------------------------------------------------------------------------------------------------------------

**Example to demonstrate parallel activities described by a StateGraph**

.. figure:: Modelica.StateGraph.Examples.ShowCompositeStepD.png
   :align: center
   :alt: Modelica.StateGraph.Examples.ShowCompositeStep

   Modelica.StateGraph.Examples.ShowCompositeStep

Information
~~~~~~~~~~~

::

This is the same example as "ExecutionPaths". The only difference is
that the alternative paths are included in a "CompositeStep".

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ShowCompositeStep 
      "Example to demonstrate parallel activities described by a StateGraph"

      extends Modelica.Icons.Example;

      Utilities.CompositeStep compositeStep;
      InitialStep step0;
      Transition transition1(enableTimer=true, waitTime=1);
      Step step1;
      Transition transition2(enableTimer=true, waitTime=1);
      Step step6;
      TransitionWithSignal transition7;
      Parallel Parallel1;
      Modelica.Blocks.Sources.BooleanExpression setCondition(y=time > 7);
        inner StateGraphRoot stateGraphRoot;
    equation 
      connect(step0.outPort[1], transition1.inPort);
      connect(transition7.outPort, step0.inPort[1]);
      connect(step6.outPort[1], transition7.inPort);
      connect(transition2.outPort, step6.inPort[1]);
      connect(transition1.outPort, Parallel1.inPort);
      connect(Parallel1.outPort, transition2.inPort);
      connect(compositeStep.inPort, Parallel1.split[1]);
      connect(compositeStep.outPort, Parallel1.join[1]);
      connect(step1.inPort[1], Parallel1.split[2]);
      connect(step1.outPort[1], Parallel1.join[2]);
      connect(setCondition.y, transition7.condition);
    end ShowCompositeStep;

--------------

|image21| `Modelica.StateGraph.Examples <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples>`_.ShowExceptions
-------------------------------------------------------------------------------------------------------------------------

**Example to demonstrate how a hierarchically structured StateGraph can
suspend and resume actions on different levels**

.. figure:: Modelica.StateGraph.Examples.ShowExceptionsD.png
   :align: center
   :alt: Modelica.StateGraph.Examples.ShowExceptions

   Modelica.StateGraph.Examples.ShowExceptions

Information
~~~~~~~~~~~

::

CompositeStep "compositeStep" is a hierarchical StateGraph consisting of
two other subgraphs. Whenever component "compositeStep" is suspended,
all steps with in "compositeStep" are deactivated. By entering
"compositeStep" via its "resume" port, all steps within "compositeStep"
are activated according to their setting before leaving the
"compositeStep" via its "suspend" port.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ShowExceptions 
      "Example to demonstrate how a hierarchically structured StateGraph can suspend and resume actions on different levels"

      extends Modelica.Icons.Example;

      Utilities.CompositeStep1 compositeStep;
      InitialStep initialStep;
      Transition transition1(enableTimer=true, waitTime=1);
      Transition transition2(enableTimer=true, waitTime=1);
      Transition transition3(enableTimer=true, waitTime=2);
      Step step1;
      Transition transition4(enableTimer=true, waitTime=1);
        inner StateGraphRoot stateGraphRoot;
    equation 

      connect(transition1.outPort, compositeStep.inPort);
      connect(initialStep.outPort[1], transition1.inPort);
      connect(compositeStep.outPort, transition2.inPort);
      connect(transition2.outPort, initialStep.inPort[1]);
      connect(compositeStep.suspend[1], transition3.inPort);
      connect(transition3.outPort, step1.inPort[1]);
      connect(step1.outPort[1], transition4.inPort);
      connect(transition4.outPort, compositeStep.resume[1]);
    end ShowExceptions;

--------------

|image22| `Modelica.StateGraph.Examples <Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples>`_.ControlledTanks
--------------------------------------------------------------------------------------------------------------------------

**Demonstrating the controller of a tank filling/emptying system**

.. figure:: Modelica.StateGraph.Examples.ControlledTanksD.png
   :align: center
   :alt: Modelica.StateGraph.Examples.ControlledTanks

   Modelica.StateGraph.Examples.ControlledTanks

Information
~~~~~~~~~~~

::

With this example the controller of a tank filling/emptying system is
demonstrated. This example is from Dressler (2004), see
`Literature <Modelica_StateGraph_UsersGuide.html#Modelica.StateGraph.UsersGuide.Literature>`_.
The basic operation is to fill and empty the two tanks:

#. Valve 1 is opened and tank 1 is filled.
#. When tank 1 reaches its fill level limit, valve 1 is closed.
#. After a waiting time, valve 2 is opened and the fluid flows from tank
   1 into tank 2.
#. When tank 1 is empty, valve 2 is closed.
#. After a waiting time, valve 3 is opened and the fluid flows out of
   tank 2
#. When tank 3 is empty, valve 3 is closed

The above "normal" process can be influenced by three buttons:

-  Button **start** starts the above process. When this button is
   pressed after a "stop" or "shut" operation, the process operation
   continues.
-  Button **stop** stops the above process by closing all valves. Then,
   the controller waits for further input (either "start" or "shut"
   operation).
-  Button **shut** is used to shutdown the process, by emptying at once
   both tanks. When this is achieved, the process goes back to its start
   configuration. Clicking on "start", restarts the process.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ControlledTanks 
      "Demonstrating the controller of a tank filling/emptying system"
      extends Modelica.Icons.Example;
      Utilities.TankController tankController;
      StateGraph.Temporary.RadioButton start(reset={stop.on,shut.on},
          buttonTimeTable={1,13,15,19});
      StateGraph.Temporary.RadioButton stop(reset={start.on,shut.on},
          buttonTimeTable={13,15,19,21});
      StateGraph.Temporary.RadioButton shut(reset={start.on,stop.on},
          buttonTimeTable={21,100});

      Utilities.Tank tank1;
      Utilities.Tank tank2;
      Utilities.valve valve1;
      Utilities.Source source;
      Utilities.valve valve2;
      Utilities.valve valve3;
        inner StateGraphRoot stateGraphRoot;
    equation 
      connect(tank1.outflow1, valve2.outflow1);
      connect(tank2.inflow1, valve2.inflow1);
      connect(tank2.outflow1, valve3.outflow1);
      connect(tank1.inflow1, valve1.inflow1);
      connect(shut.on, tankController.shut);
      connect(stop.on, tankController.stop);
      connect(start.on, tankController.start);
      connect(tank1.levelSensor, tankController.level1);
      connect(tank2.levelSensor, tankController.level2);
      connect(tankController.valve1, valve1.valveControl);
      connect(tankController.valve2, valve2.valveControl);
      connect(tankController.valve3, valve3.valveControl);

      connect(source.outflow1, valve1.outflow1);

    end ControlledTanks;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:44
2010.

.. |Modelica.StateGraph.Examples.FirstExample| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |Modelica.StateGraph.Examples.FirstExample\_Variant2| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |Modelica.StateGraph.Examples.FirstExample\_Variant3| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |Modelica.StateGraph.Examples.ExecutionPaths| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |Modelica.StateGraph.Examples.ShowCompositeStep| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |Modelica.StateGraph.Examples.ShowExceptions| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |Modelica.StateGraph.Examples.ControlledTanks| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |Modelica.StateGraph.Examples.Utilities| image:: Modelica.StateGraph.Examples.UtilitiesS.png
.. |image8| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |image9| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |image10| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |image11| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |image12| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |image13| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |image14| image:: Modelica.StateGraph.Examples.FirstExampleS.png
.. |image15| image:: Modelica.StateGraph.Examples.UtilitiesS.png
.. |image16| image:: Modelica.StateGraph.Examples.FirstExampleI.png
.. |image17| image:: Modelica.StateGraph.Examples.FirstExampleI.png
.. |image18| image:: Modelica.StateGraph.Examples.FirstExampleI.png
.. |image19| image:: Modelica.StateGraph.Examples.FirstExampleI.png
.. |image20| image:: Modelica.StateGraph.Examples.FirstExampleI.png
.. |image21| image:: Modelica.StateGraph.Examples.FirstExampleI.png
.. |image22| image:: Modelica.StateGraph.Examples.FirstExampleI.png
