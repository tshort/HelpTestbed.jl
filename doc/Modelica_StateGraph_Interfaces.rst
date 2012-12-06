==============================
Modelica.StateGraph.Interfaces
==============================

`Modelica.StateGraph <Modelica_StateGraph.html#Modelica.StateGraph>`_.Interfaces
--------------------------------------------------------------------------------

**Connectors and partial models**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                          | Description                                                                                                               |
+===============================================================================================================================================================================================+===========================================================================================================================+
| |image11| `Step\_in <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.Step_in>`_                                                                                            | Input port of a step                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| |image12| `Step\_out <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.Step_out>`_                                                                                          | Output port of a step                                                                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| |image13| `Transition\_in <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.Transition_in>`_                                                                                | Input port of a transition                                                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| |image14| `Transition\_out <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.Transition_out>`_                                                                              | Output port of a transition                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| |image15| `CompositeStep\_resume <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.CompositeStep_resume>`_                                                                  | Input port of a step (used for resume connector of a CompositeStep)                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| |image16| `CompositeStep\_suspend <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.CompositeStep_suspend>`_                                                                | Output port of a step (used for suspend connector of a CompositeStep)                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| |image17| `CompositeStepStatePort\_in <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.CompositeStepStatePort_in>`_                                                        | Communication port between a CompositeStep and the ordinary steps within the CompositeStep (suspend/resume are inputs)    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| |image18| `CompositeStepStatePort\_out <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.CompositeStepStatePort_out>`_                                                      | Communication port between a CompositeStep and the ordinary steps within the CompositeStep (suspend/resume are outputs)   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| |image19| `PartialStep <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.PartialStep>`_                                                                                     | Partial step with one input and one output transition port                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| |image20| `PartialTransition <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.PartialTransition>`_                                                                         | Partial transition with input and output connections                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| |image21| `PartialStateGraphIcon <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.PartialStateGraphIcon>`_                                                                 | Icon for a StateGraph object                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+
| `CompositeStepState <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.CompositeStepState>`_                                                                                 | Communication channel between CompositeSteps and steps in the CompositeStep                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------+

--------------

|image22| `Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.Step\_in
-------------------------------------------------------------------------------------------------------------------------

**Input port of a step**

.. figure:: Modelica.StateGraph.Interfaces.Step_inD.png
   :align: center
   :alt: Modelica.StateGraph.Interfaces.Step\_in

   Modelica.StateGraph.Interfaces.Step\_in

Information
~~~~~~~~~~~

::

::

Contents
~~~~~~~~

+------------------+------------+---------------------------------------------------+
| Type             | Name       | Description                                       |
+==================+============+===================================================+
| output Boolean   | occupied   | true, if step is active                           |
+------------------+------------+---------------------------------------------------+
| input Boolean    | set        | true, if transition fires and step is activated   |
+------------------+------------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Step_in "Input port of a step"
      output Boolean occupied "true, if step is active";
      input Boolean set "true, if transition fires and step is activated";
    end Step_in;

--------------

|image23| `Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.Step\_out
--------------------------------------------------------------------------------------------------------------------------

**Output port of a step**

.. figure:: Modelica.StateGraph.Interfaces.Step_outD.png
   :align: center
   :alt: Modelica.StateGraph.Interfaces.Step\_out

   Modelica.StateGraph.Interfaces.Step\_out

Information
~~~~~~~~~~~

::

::

Contents
~~~~~~~~

+------------------+-------------+-----------------------------------------------------+
| Type             | Name        | Description                                         |
+==================+=============+=====================================================+
| output Boolean   | available   | true, if step is active                             |
+------------------+-------------+-----------------------------------------------------+
| input Boolean    | reset       | true, if transition fires and step is deactivated   |
+------------------+-------------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Step_out "Output port of a step"
      output Boolean available "true, if step is active";

      input Boolean reset "true, if transition fires and step is deactivated";

    end Step_out;

--------------

|image24| `Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.Transition\_in
-------------------------------------------------------------------------------------------------------------------------------

**Input port of a transition**

.. figure:: Modelica.StateGraph.Interfaces.Transition_inD.png
   :align: center
   :alt: Modelica.StateGraph.Interfaces.Transition\_in

   Modelica.StateGraph.Interfaces.Transition\_in

Information
~~~~~~~~~~~

::

::

Contents
~~~~~~~~

+------------------+-------------+-------------------------------------------------------------------------------------------+
| Type             | Name        | Description                                                                               |
+==================+=============+===========================================================================================+
| input Boolean    | available   | true, if step connected to the transition input is active                                 |
+------------------+-------------+-------------------------------------------------------------------------------------------+
| output Boolean   | reset       | true, if transition fires and the step connected to the transition input is deactivated   |
+------------------+-------------+-------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Transition_in "Input port of a transition"
      input Boolean available 
        "true, if step connected to the transition input is active";
      output Boolean reset 
        "true, if transition fires and the step connected to the transition input is deactivated";

    end Transition_in;

--------------

|image25| `Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.Transition\_out
--------------------------------------------------------------------------------------------------------------------------------

**Output port of a transition**

.. figure:: Modelica.StateGraph.Interfaces.Transition_outD.png
   :align: center
   :alt: Modelica.StateGraph.Interfaces.Transition\_out

   Modelica.StateGraph.Interfaces.Transition\_out

Information
~~~~~~~~~~~

::

::

Contents
~~~~~~~~

+------------------+------------+----------------------------------------------------------------------------------------+
| Type             | Name       | Description                                                                            |
+==================+============+========================================================================================+
| input Boolean    | occupied   | true, if step connected to the transition output is active                             |
+------------------+------------+----------------------------------------------------------------------------------------+
| output Boolean   | set        | true, if transition fires and step connected to the transition output becomes active   |
+------------------+------------+----------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Transition_out "Output port of a transition"
      input Boolean occupied 
        "true, if step connected to the transition output is active";
      output Boolean set 
        "true, if transition fires and step connected to the transition output becomes active";

    end Transition_out;

--------------

|image26| `Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.CompositeStep\_resume
--------------------------------------------------------------------------------------------------------------------------------------

**Input port of a step (used for resume connector of a CompositeStep)**

Information
~~~~~~~~~~~

::

::

Contents
~~~~~~~~

+------------------+------------+---------------------------------------------------+
| Type             | Name       | Description                                       |
+==================+============+===================================================+
| output Boolean   | occupied   | true, if step is active                           |
+------------------+------------+---------------------------------------------------+
| input Boolean    | set        | true, if transition fires and step is activated   |
+------------------+------------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector CompositeStep_resume 
      "Input port of a step (used for resume connector of a CompositeStep)"
      output Boolean occupied "true, if step is active";
      input Boolean set "true, if transition fires and step is activated";
    end CompositeStep_resume;

--------------

|image27| `Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.CompositeStep\_suspend
---------------------------------------------------------------------------------------------------------------------------------------

**Output port of a step (used for suspend connector of a
CompositeStep)**

Information
~~~~~~~~~~~

::

::

Contents
~~~~~~~~

+------------------+-------------+---------------------------------------------------+
| Type             | Name        | Description                                       |
+==================+=============+===================================================+
| output Boolean   | available   | true, if step is active                           |
+------------------+-------------+---------------------------------------------------+
| input Boolean    | reset       | true, if transition fires and step is deactived   |
+------------------+-------------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector CompositeStep_suspend 
      "Output port of a step (used for suspend connector of a CompositeStep)"

      output Boolean available "true, if step is active";

      input Boolean reset "true, if transition fires and step is deactived";

    end CompositeStep_suspend;

--------------

`Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.CompositeStepStatePort\_in
---------------------------------------------------------------------------------------------------------------------------------

**Communication port between a CompositeStep and the ordinary steps
within the CompositeStep (suspend/resume are inputs)**

Information
~~~~~~~~~~~

::

::

Contents
~~~~~~~~

+-----------------+--------------------+----------------------------------------------------------------------------+
| Type            | Name               | Description                                                                |
+=================+====================+============================================================================+
| input Boolean   | suspend            | = true, if suspend transition of CompositeStep fires                       |
+-----------------+--------------------+----------------------------------------------------------------------------+
| input Boolean   | resume             | = true, if resume transition of CompositeStep fires                        |
+-----------------+--------------------+----------------------------------------------------------------------------+
| Real            | activeStepsDummy   | Dummy variable in order that connector fulfills restriction of connector   |
+-----------------+--------------------+----------------------------------------------------------------------------+
| flow Real       | activeSteps        | Number of active steps in the CompositeStep                                |
+-----------------+--------------------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector CompositeStepStatePort_in 
      "Communication port between a CompositeStep and the ordinary steps within the CompositeStep (suspend/resume are inputs)"

      input Boolean suspend "= true, if suspend transition of CompositeStep fires";
      input Boolean resume "= true, if resume transition of CompositeStep fires";
      Real activeStepsDummy 
        "Dummy variable in order that connector fulfills restriction of connector";
      flow Real activeSteps "Number of active steps in the CompositeStep";
    end CompositeStepStatePort_in;

--------------

`Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.CompositeStepStatePort\_out
----------------------------------------------------------------------------------------------------------------------------------

**Communication port between a CompositeStep and the ordinary steps
within the CompositeStep (suspend/resume are outputs)**

Information
~~~~~~~~~~~

::

::

Contents
~~~~~~~~

+------------------+--------------------+----------------------------------------------------------------------------+
| Type             | Name               | Description                                                                |
+==================+====================+============================================================================+
| output Boolean   | suspend            | = true, if suspend transition of CompositeStep fires                       |
+------------------+--------------------+----------------------------------------------------------------------------+
| output Boolean   | resume             | = true, if resume transition of CompositeStep fires                        |
+------------------+--------------------+----------------------------------------------------------------------------+
| Real             | activeStepsDummy   | Dummy variable in order that connector fulfills restriction of connector   |
+------------------+--------------------+----------------------------------------------------------------------------+
| flow Real        | activeSteps        | Number of active steps in the CompositeStep                                |
+------------------+--------------------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector CompositeStepStatePort_out 
      "Communication port between a CompositeStep and the ordinary steps within the CompositeStep (suspend/resume are outputs)"

      output Boolean suspend "= true, if suspend transition of CompositeStep fires";
      output Boolean resume "= true, if resume transition of CompositeStep fires";
      Real activeStepsDummy 
        "Dummy variable in order that connector fulfills restriction of connector";
      flow Real activeSteps "Number of active steps in the CompositeStep";
    end CompositeStepStatePort_out;

--------------

|image28| `Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.PartialStep
----------------------------------------------------------------------------------------------------------------------------

**Partial step with one input and one output transition port**

.. figure:: Modelica.StateGraph.Interfaces.PartialStepD.png
   :align: center
   :alt: Modelica.StateGraph.Interfaces.PartialStep

   Modelica.StateGraph.Interfaces.PartialStep

Information
~~~~~~~~~~~

::

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------------------+
| Type      | Name   | Default   | Description                    |
+===========+========+===========+================================+
| Integer   | nIn    | 1         | Number of input connections    |
+-----------+--------+-----------+--------------------------------+
| Integer   | nOut   | 1         | Number of output connections   |
+-----------+--------+-----------+--------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------+-----------------+------------------------------------+
| Type                                                                                         | Name            | Description                        |
+==============================================================================================+=================+====================================+
| `Step\_in <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.Step_in>`_     | inPort[nIn]     | Vector of step input connectors    |
+----------------------------------------------------------------------------------------------+-----------------+------------------------------------+
| `Step\_out <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.Step_out>`_   | outPort[nOut]   | Vector of step output connectors   |
+----------------------------------------------------------------------------------------------+-----------------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block PartialStep 
      "Partial step with one input and one output transition port"

      parameter Integer nIn(min=0) = 1 "Number of input connections";
      parameter Integer nOut(min=0) = 1 "Number of output connections";

      /* localActive is introduced since component 'Step' has Boolean variable 'active'
         and component 'StepWithSignal' has connector instance 'active' defined
         and both components inherit from PartialStep
      */
      output Boolean localActive 
        "= true if step is active, otherwise the step is not active";
      Interfaces.Step_in inPort[nIn] "Vector of step input connectors";
      Interfaces.Step_out outPort[nOut] "Vector of step output connectors";
    protected 
      outer Interfaces.CompositeStepState stateGraphRoot;
      model OuterStatePort
        CompositeStepStatePort_in subgraphStatePort;
      end OuterStatePort;
      OuterStatePort outerStatePort;

      Boolean newActive "Value of active in the next iteration";
      Boolean oldActive "Value of active when CompositeStep was aborted";
    initial equation 
      pre(newActive) = pre(localActive);
      pre(oldActive) = pre(localActive);
    equation 
      connect(outerStatePort.subgraphStatePort, stateGraphRoot.subgraphStatePort);

      // Check that connections to the connector are correct
      for i in 1:nIn loop

      assert(cardinality(inPort[i]) <= 1,
             "Connector is connected to more than one transition (this is not allowed)");
      end for;

      for i in 1:nOut loop

      assert(cardinality(outPort[i]) <= 1,
             "Connector is connected to more than one transition (this is not allowed)");
      end for;

      // set active state
      localActive = pre(newActive);
      newActive = if outerStatePort.subgraphStatePort.resume then 
                       oldActive else 
                       ( StateGraph.Temporary.anyTrue(inPort.set) or 
                            localActive
                         and not StateGraph.Temporary.anyTrue(outPort.reset))
                       and not outerStatePort.subgraphStatePort.suspend;

      // Remember state for suspend action
      when outerStatePort.subgraphStatePort.suspend then
        oldActive = localActive;
      end when;

      // Report state to CompositeStep
      outerStatePort.subgraphStatePort.activeSteps = if localActive then 1.0 else 0.0;

      // Report state to input and output transitions
      for i in 1:nIn loop
        inPort[i].occupied = if i == 1 then localActive else 
                                            inPort[i-1].occupied or 
                                            inPort[i-1].set;
      end for;

      for i in 1:nOut loop
         outPort[i].available = if i == 1 then localActive else 
                                               outPort[i-1].available and not 
                                               outPort[i-1].reset;
      end for;

      // Default setting, if an inPort or an outPort is not connected
      for i in 1:nIn loop
        if cardinality(inPort[i]) == 0 then
          inPort[i].set = false;
        end if;
      end for;

      for i in 1:nOut loop
        if cardinality(outPort[i]) == 0 then
          outPort[i].reset = false;
        end if;
      end for;
    end PartialStep;

--------------

|image29| `Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.PartialTransition
----------------------------------------------------------------------------------------------------------------------------------

**Partial transition with input and output connections**

.. figure:: Modelica.StateGraph.Interfaces.PartialTransitionD.png
   :align: center
   :alt: Modelica.StateGraph.Interfaces.PartialTransition

   Modelica.StateGraph.Interfaces.PartialTransition

Information
~~~~~~~~~~~

::

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------+---------------+-----------+-----------------------------------------+
| Type                                                    | Name          | Default   | Description                             |
+=========================================================+===============+===========+=========================================+
| Timer                                                   |
+---------------------------------------------------------+---------------+-----------+-----------------------------------------+
| Boolean                                                 | enableTimer   | false     | = true, if timer is enabled             |
+---------------------------------------------------------+---------------+-----------+-----------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | waitTime      | 0         | Wait time before transition fires [s]   |
+---------------------------------------------------------+---------------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------+-----------+------------------------------------------+
| Type                                                                                                     | Name      | Description                              |
+==========================================================================================================+===========+==========================================+
| `Transition\_in <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.Transition_in>`_     | inPort    | Vector of transition input connectors    |
+----------------------------------------------------------------------------------------------------------+-----------+------------------------------------------+
| `Transition\_out <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.Transition_out>`_   | outPort   | Vector of transition output connectors   |
+----------------------------------------------------------------------------------------------------------+-----------+------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block PartialTransition 
      "Partial transition with input and output connections"
      input Boolean localCondition "= true, if transition may fire";
      parameter Boolean enableTimer=false "= true, if timer is enabled";
      parameter Modelica.SIunits.Time waitTime(min=0) = 0 
        "Wait time before transition fires";
      output Modelica.SIunits.Time t 
        "= actual waiting time (transition will fire when t > waitTime)";
      output Boolean enableFire "= true, if all firing conditions are true";
      output Boolean fire "= true, if transition fires";

      StateGraph.Interfaces.Transition_in inPort 
        "Vector of transition input connectors";
      StateGraph.Interfaces.Transition_out outPort 
        "Vector of transition output connectors";
    protected 
      Modelica.SIunits.Time t_start 
        "Time instant at which the transition would fire, if waitTime would be zero";
      Real t_dummy;
    initial equation 

      pre(enableFire) = false;
    equation 
      assert(cardinality(inPort) == 1,
        "Connector inPort is not connected to exactly one other connector");
      assert(cardinality(outPort) == 1,
        "Connector outPort is not connected to exactly one other connector");

      // Handling of Timer
      if enableTimer then
        when enableFire then
          t_start = time;
        end when;
        t_dummy = time - t_start;
        t = if enableFire then t_dummy else 0;
        fire = enableFire and time >= t_start + waitTime;
      else
        t_start = 0;
        t_dummy = 0;
        t = 0;
        fire = enableFire;
      end if;

      // Determine fire setting and report it to the connected step
      enableFire = localCondition and inPort.available and not outPort.occupied;
      inPort.reset = fire;
      outPort.set = fire;
    end PartialTransition;

--------------

|image30| `Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.PartialStateGraphIcon
--------------------------------------------------------------------------------------------------------------------------------------

**Icon for a StateGraph object**

Information
~~~~~~~~~~~

::

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial block PartialStateGraphIcon "Icon for a StateGraph object"

    end PartialStateGraphIcon;

--------------

`Modelica.StateGraph.Interfaces <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces>`_.CompositeStepState
-------------------------------------------------------------------------------------------------------------------------

**Communication channel between CompositeSteps and steps in the
CompositeStep**

Information
~~~~~~~~~~~

::

::

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------+---------------------+---------------+
| Type                                                                                                                             | Name                | Description   |
+==================================================================================================================================+=====================+===============+
| `CompositeStepStatePort\_out <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.CompositeStepStatePort_out>`_   | subgraphStatePort   |               |
+----------------------------------------------------------------------------------------------------------------------------------+---------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CompositeStepState 
      "Communication channel between CompositeSteps and steps in the CompositeStep"

      output Boolean suspend = false;
      output Boolean resume =  false;
      CompositeStepStatePort_out subgraphStatePort;

    /*
        missingInnerMessage="No \"stateGraphRoot\" component is defined on highest level
    of the StateGraph. A stateGraphRoot component is automatically introduced.
    In order to get rid of this message, drag StateGraph.StateGraphRoot into the
    top level your model.");
    */
    equation 
      suspend = subgraphStatePort.suspend;
      resume  = subgraphStatePort.resume;
      subgraphStatePort.activeStepsDummy = 0;
    end CompositeStepState;

--------------

`Modelica.StateGraph.Interfaces.PartialStep <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.PartialStep>`_.OuterStatePort
---------------------------------------------------------------------------------------------------------------------------------------------

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------+---------------------+---------------+
| Type                                                                                                                           | Name                | Description   |
+================================================================================================================================+=====================+===============+
| `CompositeStepStatePort\_in <Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.CompositeStepStatePort_in>`_   | subgraphStatePort   |               |
+--------------------------------------------------------------------------------------------------------------------------------+---------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model OuterStatePort
      CompositeStepStatePort_in subgraphStatePort;
    end OuterStatePort;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:51
2010.

.. |Modelica.StateGraph.Interfaces.Step\_in| image:: Modelica.StateGraph.Interfaces.Step_inS.png
.. |Modelica.StateGraph.Interfaces.Step\_out| image:: Modelica.StateGraph.Interfaces.Step_outS.png
.. |Modelica.StateGraph.Interfaces.Transition\_in| image:: Modelica.StateGraph.Interfaces.Transition_inS.png
.. |Modelica.StateGraph.Interfaces.Transition\_out| image:: Modelica.StateGraph.Interfaces.Transition_outS.png
.. |Modelica.StateGraph.Interfaces.CompositeStep\_resume| image:: Modelica.StateGraph.Interfaces.CompositeStep_resumeS.png
.. |Modelica.StateGraph.Interfaces.CompositeStep\_suspend| image:: Modelica.StateGraph.Interfaces.CompositeStep_suspendS.png
.. |Modelica.StateGraph.Interfaces.CompositeStepStatePort\_in| image:: Modelica.StateGraph.Interfaces.CompositeStepStatePort_inS.png
.. |Modelica.StateGraph.Interfaces.CompositeStepStatePort\_out| image:: Modelica.StateGraph.Interfaces.CompositeStepStatePort_inS.png
.. |Modelica.StateGraph.Interfaces.PartialStep| image:: Modelica.StateGraph.Interfaces.PartialStepS.png
.. |Modelica.StateGraph.Interfaces.PartialTransition| image:: Modelica.StateGraph.Interfaces.PartialTransitionS.png
.. |Modelica.StateGraph.Interfaces.PartialStateGraphIcon| image:: Modelica.StateGraph.Interfaces.PartialStateGraphIconS.png
.. |image11| image:: Modelica.StateGraph.Interfaces.Step_inS.png
.. |image12| image:: Modelica.StateGraph.Interfaces.Step_outS.png
.. |image13| image:: Modelica.StateGraph.Interfaces.Transition_inS.png
.. |image14| image:: Modelica.StateGraph.Interfaces.Transition_outS.png
.. |image15| image:: Modelica.StateGraph.Interfaces.CompositeStep_resumeS.png
.. |image16| image:: Modelica.StateGraph.Interfaces.CompositeStep_suspendS.png
.. |image17| image:: Modelica.StateGraph.Interfaces.CompositeStepStatePort_inS.png
.. |image18| image:: Modelica.StateGraph.Interfaces.CompositeStepStatePort_inS.png
.. |image19| image:: Modelica.StateGraph.Interfaces.PartialStepS.png
.. |image20| image:: Modelica.StateGraph.Interfaces.PartialTransitionS.png
.. |image21| image:: Modelica.StateGraph.Interfaces.PartialStateGraphIconS.png
.. |image22| image:: Modelica.StateGraph.Interfaces.Step_inI.png
.. |image23| image:: Modelica.StateGraph.Interfaces.Step_outI.png
.. |image24| image:: Modelica.StateGraph.Interfaces.Transition_inI.png
.. |image25| image:: Modelica.StateGraph.Interfaces.Transition_outI.png
.. |image26| image:: Modelica.StateGraph.Interfaces.CompositeStep_resumeI.png
.. |image27| image:: Modelica.StateGraph.Interfaces.CompositeStep_suspendI.png
.. |image28| image:: Modelica.StateGraph.Interfaces.PartialStepI.png
.. |image29| image:: Modelica.StateGraph.Interfaces.PartialTransitionI.png
.. |image30| image:: Modelica.StateGraph.Interfaces.PartialStateGraphIconI.png
