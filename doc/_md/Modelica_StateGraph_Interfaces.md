% Modelica.StateGraph.Interfaces
% 
% 

[Modelica.StateGraph](Modelica_StateGraph.html#Modelica.StateGraph).Interfaces
==============================================================================

**Connectors and partial models**

Information
-----------

::

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                        Description
  ------------------------------------------- ----------------------------
  ![image11](Modelica.StateGraph.Interfaces.S Input port of a step
  tep_inS.png)                                
  [Step\_in](Modelica_StateGraph_Interfaces.h 
  tml#Modelica.StateGraph.Interfaces.Step_in) 

  ![image12](Modelica.StateGraph.Interfaces.S Output port of a step
  tep_outS.png)                               
  [Step\_out](Modelica_StateGraph_Interfaces. 
  html#Modelica.StateGraph.Interfaces.Step_ou 
  t)                                          

  ![image13](Modelica.StateGraph.Interfaces.T Input port of a transition
  ransition_inS.png)                          
  [Transition\_in](Modelica_StateGraph_Interf 
  aces.html#Modelica.StateGraph.Interfaces.Tr 
  ansition_in)                                

  ![image14](Modelica.StateGraph.Interfaces.T Output port of a transition
  ransition_outS.png)                         
  [Transition\_out](Modelica_StateGraph_Inter 
  faces.html#Modelica.StateGraph.Interfaces.T 
  ransition_out)                              

  ![image15](Modelica.StateGraph.Interfaces.C Input port of a step (used
  ompositeStep_resumeS.png)                   for resume connector of a
  [CompositeStep\_resume](Modelica_StateGraph CompositeStep)
  _Interfaces.html#Modelica.StateGraph.Interf 
  aces.CompositeStep_resume)                  

  ![image16](Modelica.StateGraph.Interfaces.C Output port of a step (used
  ompositeStep_suspendS.png)                  for suspend connector of a
  [CompositeStep\_suspend](Modelica_StateGrap CompositeStep)
  h_Interfaces.html#Modelica.StateGraph.Inter 
  faces.CompositeStep_suspend)                

  ![image17](Modelica.StateGraph.Interfaces.C Communication port between a
  ompositeStepStatePort_inS.png)              CompositeStep and the
  [CompositeStepStatePort\_in](Modelica_State ordinary steps within the
  Graph_Interfaces.html#Modelica.StateGraph.I CompositeStep
  nterfaces.CompositeStepStatePort_in)        (suspend/resume are inputs)

  ![image18](Modelica.StateGraph.Interfaces.C Communication port between a
  ompositeStepStatePort_inS.png)              CompositeStep and the
  [CompositeStepStatePort\_out](Modelica_Stat ordinary steps within the
  eGraph_Interfaces.html#Modelica.StateGraph. CompositeStep
  Interfaces.CompositeStepStatePort_out)      (suspend/resume are outputs)

  ![image19](Modelica.StateGraph.Interfaces.P Partial step with one input
  artialStepS.png)                            and one output transition
  [PartialStep](Modelica_StateGraph_Interface port
  s.html#Modelica.StateGraph.Interfaces.Parti 
  alStep)                                     

  ![image20](Modelica.StateGraph.Interfaces.P Partial transition with
  artialTransitionS.png)                      input and output connections
  [PartialTransition](Modelica_StateGraph_Int 
  erfaces.html#Modelica.StateGraph.Interfaces 
  .PartialTransition)                         

  ![image21](Modelica.StateGraph.Interfaces.P Icon for a StateGraph object
  artialStateGraphIconS.png)                  
  [PartialStateGraphIcon](Modelica_StateGraph 
  _Interfaces.html#Modelica.StateGraph.Interf 
  aces.PartialStateGraphIcon)                 

  [CompositeStepState](Modelica_StateGraph_In Communication channel
  terfaces.html#Modelica.StateGraph.Interface between CompositeSteps and
  s.CompositeStepState)                       steps in the CompositeStep
  ------------------------------------------------------------------------

* * * * *

![image22](Modelica.StateGraph.Interfaces.Step_inI.png) [Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).Step\_in
=====================================================================================================================================================================

**Input port of a step**

Information
-----------

::

::

Contents
--------

  -------------------------------------------------------------------------
  Type             Name        Description
  ---------------- ----------- --------------------------------------------
  output Boolean   occupied    true, if step is active

  input Boolean    set         true, if transition fires and step is
                               activated
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector Step_in "Input port of a step"
      output Boolean occupied "true, if step is active";
      input Boolean set "true, if transition fires and step is activated";
    end Step_in;

* * * * *

![image23](Modelica.StateGraph.Interfaces.Step_outI.png) [Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).Step\_out
=======================================================================================================================================================================

**Output port of a step**

Information
-----------

::

::

Contents
--------

  ------------------------------------------------------------------------
  Type            Name        Description
  --------------- ----------- --------------------------------------------
  output Boolean  available   true, if step is active

  input Boolean   reset       true, if transition fires and step is
                              deactivated
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Step_out "Output port of a step"
      output Boolean available "true, if step is active";

      input Boolean reset "true, if transition fires and step is deactivated";

    end Step_out;

* * * * *

![image24](Modelica.StateGraph.Interfaces.Transition_inI.png) [Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).Transition\_in
=================================================================================================================================================================================

**Input port of a transition**

Information
-----------

::

::

Contents
--------

  ------------------------------------------------------------------------
  Type       Name     Description
  ---------- -------- ----------------------------------------------------
  input      availabl true, if step connected to the transition input is
  Boolean    e        active

  output     reset    true, if transition fires and the step connected to
  Boolean             the transition input is deactivated
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Transition_in "Input port of a transition"
      input Boolean available 
        "true, if step connected to the transition input is active";
      output Boolean reset 
        "true, if transition fires and the step connected to the transition input is deactivated";

    end Transition_in;

* * * * *

![image25](Modelica.StateGraph.Interfaces.Transition_outI.png) [Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).Transition\_out
===================================================================================================================================================================================

**Output port of a transition**

Information
-----------

::

::

Contents
--------

  ------------------------------------------------------------------------
  Type        Name    Description
  ----------- ------- ----------------------------------------------------
  input       occupie true, if step connected to the transition output is
  Boolean     d       active

  output      set     true, if transition fires and step connected to the
  Boolean             transition output becomes active
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Transition_out "Output port of a transition"
      input Boolean occupied 
        "true, if step connected to the transition output is active";
      output Boolean set 
        "true, if transition fires and step connected to the transition output becomes active";

    end Transition_out;

* * * * *

![image26](Modelica.StateGraph.Interfaces.CompositeStep_resumeI.png) [Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).CompositeStep\_resume
===============================================================================================================================================================================================

**Input port of a step (used for resume connector of a CompositeStep)**

Information
-----------

::

::

Contents
--------

  -------------------------------------------------------------------------
  Type             Name        Description
  ---------------- ----------- --------------------------------------------
  output Boolean   occupied    true, if step is active

  input Boolean    set         true, if transition fires and step is
                               activated
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector CompositeStep_resume 
      "Input port of a step (used for resume connector of a CompositeStep)"
      output Boolean occupied "true, if step is active";
      input Boolean set "true, if transition fires and step is activated";
    end CompositeStep_resume;

* * * * *

![image27](Modelica.StateGraph.Interfaces.CompositeStep_suspendI.png) [Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).CompositeStep\_suspend
=================================================================================================================================================================================================

**Output port of a step (used for suspend connector of a
CompositeStep)**

Information
-----------

::

::

Contents
--------

  -------------------------------------------------------------------------
  Type             Name        Description
  ---------------- ----------- --------------------------------------------
  output Boolean   available   true, if step is active

  input Boolean    reset       true, if transition fires and step is
                               deactived
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector CompositeStep_suspend 
      "Output port of a step (used for suspend connector of a CompositeStep)"

      output Boolean available "true, if step is active";

      input Boolean reset "true, if transition fires and step is deactived";

    end CompositeStep_suspend;

* * * * *

[Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).CompositeStepStatePort\_in
===============================================================================================================================

**Communication port between a CompositeStep and the ordinary steps
within the CompositeStep (suspend/resume are inputs)**

Information
-----------

::

::

Contents
--------

  -------------------------------------------------------------------------
  Type        Name          Description
  ----------- ------------- -----------------------------------------------
  input       suspend       = true, if suspend transition of CompositeStep
  Boolean                   fires

  input       resume        = true, if resume transition of CompositeStep
  Boolean                   fires

  Real        activeStepsDu Dummy variable in order that connector fulfills
              mmy           restriction of connector

  flow Real   activeSteps   Number of active steps in the CompositeStep
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector CompositeStepStatePort_in 
      "Communication port between a CompositeStep and the ordinary steps within the CompositeStep (suspend/resume are inputs)"

      input Boolean suspend "= true, if suspend transition of CompositeStep fires";
      input Boolean resume "= true, if resume transition of CompositeStep fires";
      Real activeStepsDummy 
        "Dummy variable in order that connector fulfills restriction of connector";
      flow Real activeSteps "Number of active steps in the CompositeStep";
    end CompositeStepStatePort_in;

* * * * *

[Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).CompositeStepStatePort\_out
================================================================================================================================

**Communication port between a CompositeStep and the ordinary steps
within the CompositeStep (suspend/resume are outputs)**

Information
-----------

::

::

Contents
--------

  ------------------------------------------------------------------------
  Type        Name         Description
  ----------- ------------ -----------------------------------------------
  output      suspend      = true, if suspend transition of CompositeStep
  Boolean                  fires

  output      resume       = true, if resume transition of CompositeStep
  Boolean                  fires

  Real        activeStepsD Dummy variable in order that connector fulfills
              ummy         restriction of connector

  flow Real   activeSteps  Number of active steps in the CompositeStep
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector CompositeStepStatePort_out 
      "Communication port between a CompositeStep and the ordinary steps within the CompositeStep (suspend/resume are outputs)"

      output Boolean suspend "= true, if suspend transition of CompositeStep fires";
      output Boolean resume "= true, if resume transition of CompositeStep fires";
      Real activeStepsDummy 
        "Dummy variable in order that connector fulfills restriction of connector";
      flow Real activeSteps "Number of active steps in the CompositeStep";
    end CompositeStepStatePort_out;

* * * * *

![image28](Modelica.StateGraph.Interfaces.PartialStepI.png) [Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).PartialStep
============================================================================================================================================================================

**Partial step with one input and one output transition port**

Information
-----------

::

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------------------
  Integer      nIn       1            Number of input connections
  Integer      nOut      1            Number of output connections

Connectors
----------

  ------------------------------------------------------------------------
  Type                                          Name     Description
  --------------------------------------------- -------- -----------------
  [Step\_in](Modelica_StateGraph_Interfaces.htm inPort[n Vector of step
  l#Modelica.StateGraph.Interfaces.Step_in)     In]      input connectors

  [Step\_out](Modelica_StateGraph_Interfaces.ht outPort[ Vector of step
  ml#Modelica.StateGraph.Interfaces.Step_out)   nOut]    output connectors
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image29](Modelica.StateGraph.Interfaces.PartialTransitionI.png) [Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).PartialTransition
========================================================================================================================================================================================

**Partial transition with input and output connections**

Information
-----------

::

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name      Defaul Description
                                             t      
  -------------------------------- --------- ------ -----------------------
  Timer                                             

  Boolean                          enableTim false  = true, if timer is
                                   er               enabled

  [Time](Modelica_SIunits.html#Mod waitTime  0      Wait time before
  elica.SIunits.Time)                               transition fires [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  [Transition\_in](Modelica_StateGraph_Interfaces inPor Vector of
  .html#Modelica.StateGraph.Interfaces.Transition t     transition input
  _in)                                                  connectors

  [Transition\_out](Modelica_StateGraph_Interface outPo Vector of
  s.html#Modelica.StateGraph.Interfaces.Transitio rt    transition output
  n_out)                                                connectors
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image30](Modelica.StateGraph.Interfaces.PartialStateGraphIconI.png) [Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).PartialStateGraphIcon
================================================================================================================================================================================================

**Icon for a StateGraph object**

Information
-----------

::

::

Modelica definition
-------------------

    partial block PartialStateGraphIcon "Icon for a StateGraph object"

    end PartialStateGraphIcon;

* * * * *

[Modelica.StateGraph.Interfaces](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces).CompositeStepState
=======================================================================================================================

**Communication channel between CompositeSteps and steps in the
CompositeStep**

Information
-----------

::

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name      Descri
                                                                    ption
  ------------------------------------------------------- --------- ------
  [CompositeStepStatePort\_out](Modelica_StateGraph_Inter subgraphS 
  faces.html#Modelica.StateGraph.Interfaces.CompositeStep tatePort  
  StatePort_out)                                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Modelica.StateGraph.Interfaces.PartialStep](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.PartialStep).OuterStatePort
===========================================================================================================================================

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name      Descri
                                                                    ption
  ------------------------------------------------------- --------- ------
  [CompositeStepStatePort\_in](Modelica_StateGraph_Interf subgraphS 
  aces.html#Modelica.StateGraph.Interfaces.CompositeStepS tatePort  
  tatePort_in)                                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model OuterStatePort
      CompositeStepStatePort_in subgraphStatePort;
    end OuterStatePort;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:51 2010.
