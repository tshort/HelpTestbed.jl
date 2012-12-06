% Modelica.StateGraph.Examples.Utilities
% 
% 

[Modelica.StateGraph.Examples](Modelica_StateGraph_Examples.html#Modelica.StateGraph.Examples).Utilities
========================================================================================================

**Utility components for the examples**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                           Description
  ---------------------------------------------- -------------------------
  ![image12](Modelica.StateGraph.Examples.Utilit Controller for tank
  ies.TankControllerS.png)                       system
  [TankController](Modelica_StateGraph_Examples_ 
  Utilities.html#Modelica.StateGraph.Examples.Ut 
  ilities.TankController)                        

  ![image13](Modelica.StateGraph.Examples.Utilit State machine defining
  ies.MakeProductS.png)                          the time instants when to
  [MakeProduct](Modelica_StateGraph_Examples_Uti fill or empty a tank
  lities.html#Modelica.StateGraph.Examples.Utili 
  ties.MakeProduct)                              

  ![image14](Modelica.StateGraph.Examples.Utilit Inflow connector (this is
  ies.inflow1S.png)                              a copy from Isolde
  [inflow1](Modelica_StateGraph_Examples_Utiliti Dressler's master thesis
  es.html#Modelica.StateGraph.Examples.Utilities project)
  .inflow1)                                      

  ![image15](Modelica.StateGraph.Examples.Utilit Inflow connector (this is
  ies.inflow1S.png)                              a copy from Isolde
  [inflow2](Modelica_StateGraph_Examples_Utiliti Dressler's master thesis
  es.html#Modelica.StateGraph.Examples.Utilities project)
  .inflow2)                                      

  ![image16](Modelica.StateGraph.Examples.Utilit Outflow connector (this
  ies.outflow1S.png)                             is a copy from Isolde
  [outflow1](Modelica_StateGraph_Examples_Utilit Dressler's master thesis
  ies.html#Modelica.StateGraph.Examples.Utilitie project)
  s.outflow1)                                    

  ![image17](Modelica.StateGraph.Examples.Utilit Outflow connector (this
  ies.outflow1S.png)                             is a copy from Isolde
  [outflow2](Modelica_StateGraph_Examples_Utilit Dressler's master thesis
  ies.html#Modelica.StateGraph.Examples.Utilitie project)
  s.outflow2)                                    

  ![image18](Modelica.StateGraph.Examples.Utilit Simple valve model (this
  ies.valveS.png)                                is a copy from Isolde
  [valve](Modelica_StateGraph_Examples_Utilities Dressler's master thesis
  .html#Modelica.StateGraph.Examples.Utilities.v project)
  alve)                                          

  ![image19](Modelica.StateGraph.Examples.Utilit Simple tank model (this
  ies.TankS.png)                                 is a copy from Isolde
  [Tank](Modelica_StateGraph_Examples_Utilities. Dressler's master thesis
  html#Modelica.StateGraph.Examples.Utilities.Ta project)
  nk)                                            

  ![image20](Modelica.StateGraph.Examples.Utilit Simple source model (this
  ies.SourceS.png)                               is a copy from Isolde
  [Source](Modelica_StateGraph_Examples_Utilitie Dressler's master thesis
  s.html#Modelica.StateGraph.Examples.Utilities. project)
  Source)                                        

  ![image21](Modelica.StateGraph.Examples.Utilit State machine
  ies.CompositeStepS.png)                        demonstrating a composite
  [CompositeStep](Modelica_StateGraph_Examples_U step (used in
  tilities.html#Modelica.StateGraph.Examples.Uti StateGraph.Examples.ShowC
  lities.CompositeStep)                          ompositeStep)

  ![image22](Modelica.StateGraph.Examples.Utilit Composite step used to
  ies.CompositeStepS.png)                        demonstrate exceptions
  [CompositeStep1](Modelica_StateGraph_Examples_ (in
  Utilities.html#Modelica.StateGraph.Examples.Ut StateGraph.Examples.ShowE
  ilities.CompositeStep1)                        xceptions)

  ![image23](Modelica.StateGraph.Examples.Utilit Composite step used to
  ies.CompositeStepS.png)                        demonstrate exceptions
  [CompositeStep2](Modelica_StateGraph_Examples_ (in
  Utilities.html#Modelica.StateGraph.Examples.Ut StateGraph.Examples.ShowE
  ilities.CompositeStep2)                        xceptions)
  ------------------------------------------------------------------------

* * * * *

![image24](Modelica.StateGraph.Examples.Utilities.TankControllerI.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).TankController
==================================================================================================================================================================================================================

**Controller for tank system**

Information
-----------

Extends from
[StateGraph.Interfaces.PartialStateGraphIcon](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.PartialStateGraphIcon)
(Icon for a StateGraph object).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                             Name  Defau Description
                                                         lt    
  ------------------------------------------------ ----- ----- -----------
  [SetRealParameter](Modelica_StateGraph_Temporary limit 0.98  Limit level
  .html#Modelica.StateGraph.Temporary.SetRealParam             of tank 1
  eter)                                                        

  [SetRealParameter](Modelica_StateGraph_Temporary waitT 3     Wait time
  .html#Modelica.StateGraph.Temporary.SetRealParam ime         
  eter)                                                        
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name   Descript
                                                                   ion
  --------------------------------------------------------- ------ --------
  input                                                     start  
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modelica.B        
  locks.Interfaces.BooleanInput)                                   

  input                                                     stop   
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modelica.B        
  locks.Interfaces.BooleanInput)                                   

  input                                                     shut   
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modelica.B        
  locks.Interfaces.BooleanInput)                                   

  input                                                     level1 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bloc        
  ks.Interfaces.RealInput)                                         

  input                                                     level2 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bloc        
  ks.Interfaces.RealInput)                                         

  output                                                    valve1 
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Modelica.        
  Blocks.Interfaces.BooleanOutput)                                 

  output                                                    valve2 
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Modelica.        
  Blocks.Interfaces.BooleanOutput)                                 

  output                                                    valve3 
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Modelica.        
  Blocks.Interfaces.BooleanOutput)                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model TankController "Controller for tank system"
      extends StateGraph.Interfaces.PartialStateGraphIcon;
      parameter Temporary.SetRealParameter limit=0.98 "Limit level of tank 1";
      parameter Temporary.SetRealParameter waitTime=3 "Wait time";

      InitialStep s1(nIn=2);
      MakeProduct makeProduct(limit=limit, waitTime=waitTime);
      Transition T1(condition=start);
      Transition T2(condition=level2<0.001);
      Transition T3(condition=stop);
      Step s2(nOut=2);
      Transition T4(condition=start);
      Transition T5(condition=shut);
      Step emptyTanks;
      Transition T6(condition=level1+level2<0.001);
      Modelica.Blocks.Interfaces.BooleanInput start;
      Modelica.Blocks.Interfaces.BooleanInput stop;
      Modelica.Blocks.Interfaces.BooleanInput shut;
      Modelica.Blocks.Interfaces.RealInput level1;
      Modelica.Blocks.Interfaces.RealInput level2;
      Modelica.Blocks.Interfaces.BooleanOutput valve1;
      Modelica.Blocks.Interfaces.BooleanOutput valve2;
      Modelica.Blocks.Interfaces.BooleanOutput valve3;
      Modelica.Blocks.Sources.BooleanExpression setValve1(y=makeProduct.fillTank1.active);
      Modelica.Blocks.Sources.BooleanExpression setValve2(y=makeProduct.fillTank2.active or emptyTanks.active);
      Modelica.Blocks.Sources.BooleanExpression setValve3(y=makeProduct.emptyTank2.active or emptyTanks.active);
    equation 

      connect(s1.outPort[1], T1.inPort);
      connect(T1.outPort, makeProduct.inPort);
      connect(makeProduct.outPort, T2.inPort);
      connect(T5.outPort, emptyTanks.inPort[1]);
      connect(emptyTanks.outPort[1], T6.inPort);
      connect(setValve1.y, valve1);
      connect(setValve2.y, valve2);
      connect(setValve3.y, valve3);
      connect(makeProduct.suspend[1], T3.inPort);
      connect(T3.outPort, s2.inPort[1]);
      connect(T4.outPort, makeProduct.resume[1]);
      connect(level1, makeProduct.level1);
      connect(s2.outPort[1], T5.inPort);
      connect(s2.outPort[2], T4.inPort);
      connect(T2.outPort, s1.inPort[1]);
      connect(T6.outPort, s1.inPort[2]);
    end TankController;

* * * * *

![image25](Modelica.StateGraph.Examples.Utilities.MakeProductI.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).MakeProduct
============================================================================================================================================================================================================

**State machine defining the time instants when to fill or empty a
tank**

Information
-----------

Extends from
[StateGraph.PartialCompositeStep](Modelica_StateGraph.html#Modelica.StateGraph.PartialCompositeStep)
(Superclass of a subgraph, i.e., a composite step that has internally a
StateGraph).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name  Defau Description
                                                         lt    
  ------------------------------------------------ ----- ----- ------------
  [SetRealParameter](Modelica_StateGraph_Temporary limit 0.98  Limit level
  .html#Modelica.StateGraph.Temporary.SetRealParam             of tank 1
  eter)                                                        

  [SetRealParameter](Modelica_StateGraph_Temporary waitT 3     Wait time
  .html#Modelica.StateGraph.Temporary.SetRealParam ime         
  eter)                                                        

  Exception connections                                        

  Integer                                          nSusp 1     Number of
                                                   end         suspend
                                                               ports

  Integer                                          nResu 1     Number of
                                                   me          resume ports
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                   Name      Descrip
                                                                   tion
  ------------------------------------------------------ --------- -------
  [Step\_in](Modelica_StateGraph_Interfaces.html#Modelic inPort    
  a.StateGraph.Interfaces.Step_in)                                 

  [Step\_out](Modelica_StateGraph_Interfaces.html#Modeli outPort   
  ca.StateGraph.Interfaces.Step_out)                               

  [CompositeStep\_suspend](Modelica_StateGraph_Interface suspend[n 
  s.html#Modelica.StateGraph.Interfaces.CompositeStep_su Suspend]  
  spend)                                                           

  [CompositeStep\_resume](Modelica_StateGraph_Interfaces resume[nR 
  .html#Modelica.StateGraph.Interfaces.CompositeStep_res esume]    
  ume)                                                             

  input                                                  level1    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.B           
  locks.Interfaces.RealInput)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model MakeProduct 
      "State machine defining the time instants when to fill or empty a tank"
      extends StateGraph.PartialCompositeStep;
      parameter StateGraph.Temporary.SetRealParameter limit=0.98 
        "Limit level of tank 1";
      parameter StateGraph.Temporary.SetRealParameter waitTime=3 "Wait time";

      Modelica.Blocks.Interfaces.RealInput level1;
      Step fillTank1;
      Transition T1(condition=level1 > limit);
      Step fillTank2;
      Transition T3(condition=level1 < 0.001);
      Step emptyTank2;
      Step wait1;
      Transition T2(enableTimer=true, waitTime=waitTime);
      Step wait2;
      Transition T4(enableTimer=true, waitTime=waitTime);
    equation 
      connect(fillTank1.inPort[1], inPort);
      connect(fillTank1.outPort[1], T1.inPort);
      connect(fillTank2.outPort[1], T3.inPort);
      connect(emptyTank2.outPort[1], outPort);
      connect(wait1.outPort[1], T2.inPort);
      connect(T2.outPort, fillTank2.inPort[1]);
      connect(T1.outPort, wait1.inPort[1]);
      connect(wait2.outPort[1], T4.inPort);
      connect(T3.outPort, wait2.inPort[1]);
      connect(T4.outPort,emptyTank2.inPort[1]);
    end MakeProduct;

* * * * *

![image26](Modelica.StateGraph.Examples.Utilities.inflow1I.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).inflow1
====================================================================================================================================================================================================

**Inflow connector (this is a copy from Isolde Dressler's master thesis
project)**

Contents
--------

  ------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- -----------
  input                                                  Fi    inflow
  [VolumeFlowRate](Modelica_SIunits.html#Modelica.SIunit       [m3/s]
  s.VolumeFlowRate)                                            
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector inflow1 
      "Inflow connector (this is a copy from Isolde Dressler's master thesis project)"

      import Units = Modelica.SIunits;

      input Units.VolumeFlowRate Fi "inflow";
    end inflow1;

* * * * *

![image27](Modelica.StateGraph.Examples.Utilities.inflow1I.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).inflow2
====================================================================================================================================================================================================

**Inflow connector (this is a copy from Isolde Dressler's master thesis
project)**

Contents
--------

  ------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- -----------
  output                                                 Fi    inflow
  [VolumeFlowRate](Modelica_SIunits.html#Modelica.SIunit       [m3/s]
  s.VolumeFlowRate)                                            
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector inflow2 
      "Inflow connector (this is a copy from Isolde Dressler's master thesis project)"

      import Units = Modelica.SIunits;

      output Units.VolumeFlowRate Fi "inflow";
    end inflow2;

* * * * *

![image28](Modelica.StateGraph.Examples.Utilities.outflow1I.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).outflow1
======================================================================================================================================================================================================

**Outflow connector (this is a copy from Isolde Dressler's master thesis
project)**

Contents
--------

  -------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- ------------
  output                                                 Fo    outflow
  [VolumeFlowRate](Modelica_SIunits.html#Modelica.SIunit       [m3/s]
  s.VolumeFlowRate)                                            

  input Boolean                                          open  valve open
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector outflow1 
      "Outflow connector (this is a copy from Isolde Dressler's master thesis project)"

      import Units = Modelica.SIunits;

      output Units.VolumeFlowRate Fo "outflow";
      input Boolean open "valve open";
    end outflow1;

* * * * *

![image29](Modelica.StateGraph.Examples.Utilities.outflow1I.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).outflow2
======================================================================================================================================================================================================

**Outflow connector (this is a copy from Isolde Dressler's master thesis
project)**

Contents
--------

  -------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- ------------
  input                                                  Fo    outflow
  [VolumeFlowRate](Modelica_SIunits.html#Modelica.SIunit       [m3/s]
  s.VolumeFlowRate)                                            

  output Boolean                                         open  valve open
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector outflow2 
      "Outflow connector (this is a copy from Isolde Dressler's master thesis project)"

      import Units = Modelica.SIunits;

      input Units.VolumeFlowRate Fo "outflow";
      output Boolean open "valve open";
    end outflow2;

* * * * *

![image30](Modelica.StateGraph.Examples.Utilities.valveI.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).valve
================================================================================================================================================================================================

**Simple valve model (this is a copy from Isolde Dressler's master
thesis project)**

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                    Name     Descript
                                                                   ion
  ------------------------------------------------------- -------- --------
  input                                                   valveCon 
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modelica trol     
  .Blocks.Interfaces.BooleanInput)                                 

  [inflow2](Modelica_StateGraph_Examples_Utilities.html#M inflow1  
  odelica.StateGraph.Examples.Utilities.inflow2)                   

  [outflow2](Modelica_StateGraph_Examples_Utilities.html# outflow1 
  Modelica.StateGraph.Examples.Utilities.outflow2)                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model valve 
      "Simple valve model (this is a copy from Isolde Dressler's master thesis project)"

      Modelica.Blocks.Interfaces.BooleanInput valveControl;
      Modelica.StateGraph.Examples.Utilities.inflow2 inflow1;
      Modelica.StateGraph.Examples.Utilities.outflow2 outflow1;
    equation 
      outflow1.Fo = inflow1.Fi;
      outflow1.open = valveControl;
    end valve;

* * * * *

![image31](Modelica.StateGraph.Examples.Utilities.TankI.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).Tank
==============================================================================================================================================================================================

**Simple tank model (this is a copy from Isolde Dressler's master thesis
project)**

Parameters
----------

  Type      Name      Default      Description
  --------- --------- ------------ -------------------------------
  Real      A         1            Ground area of tank in m\^2
  Real      a         0.2          Area of drain hole in m\^2
  Real      hmax      1            Max height of tank in m

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                    Name     Descript
                                                                   ion
  ------------------------------------------------------- -------- --------
  output                                                  levelSen 
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.B sor      
  locks.Interfaces.RealOutput)                                     

  [inflow1](Modelica_StateGraph_Examples_Utilities.html#M inflow1  
  odelica.StateGraph.Examples.Utilities.inflow1)                   

  [outflow1](Modelica_StateGraph_Examples_Utilities.html# outflow1 
  Modelica.StateGraph.Examples.Utilities.outflow1)                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Tank 
      "Simple tank model (this is a copy from Isolde Dressler's master thesis project)"

      Modelica.Blocks.Interfaces.RealOutput levelSensor;

      Modelica.StateGraph.Examples.Utilities.inflow1 inflow1;
      Modelica.StateGraph.Examples.Utilities.outflow1 outflow1;
      Real level "Tank level in % of max height";
      parameter Real A=1 "Ground area of tank in m^2";
      parameter Real a=0.2 "Area of drain hole in m^2";
      parameter Real hmax=1 "Max height of tank in m";
      constant Real g=Modelica.Constants.g_n;
    equation 
      der(level) = (inflow1.Fi - outflow1.Fo)/(hmax*A);
      if outflow1.open then
        outflow1.Fo = sqrt(max(0,2*g*hmax*level))*a;
      else
        outflow1.Fo = 0;
      end if;
      levelSensor = level;

    end Tank;

* * * * *

![image32](Modelica.StateGraph.Examples.Utilities.SourceI.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).Source
==================================================================================================================================================================================================

**Simple source model (this is a copy from Isolde Dressler's master
thesis project)**

Parameters
----------

  Type      Name         Default      Description
  --------- ------------ ------------ -------------------------------
  Real      maxflow      1            maximal flow out of source

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name   Descript
                                                                  ion
  -------------------------------------------------------- ------ --------
  [outflow1](Modelica_StateGraph_Examples_Utilities.html#M outflo 
  odelica.StateGraph.Examples.Utilities.outflow1)          w1     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Source 
      "Simple source model (this is a copy from Isolde Dressler's master thesis project)"

      Modelica.StateGraph.Examples.Utilities.outflow1 outflow1;
      parameter Real maxflow=1 "maximal flow out of source";
    equation 
      if outflow1.open then
        outflow1.Fo = maxflow;
      else
        outflow1.Fo = 0;
      end if;
    end Source;

* * * * *

![image33](Modelica.StateGraph.Examples.Utilities.CompositeStepI.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).CompositeStep
================================================================================================================================================================================================================

**State machine demonstrating a composite step (used in
StateGraph.Examples.ShowCompositeStep)**

Information
-----------

Extends from
[StateGraph.PartialCompositeStep](Modelica_StateGraph.html#Modelica.StateGraph.PartialCompositeStep)
(Superclass of a subgraph, i.e., a composite step that has internally a
StateGraph).

Parameters
----------

  Type                    Name        Default    Description
  ----------------------- ----------- ---------- -------------------------
  Exception connections                          
  Integer                 nSuspend    1          Number of suspend ports
  Integer                 nResume     1          Number of resume ports

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                   Name      Descrip
                                                                   tion
  ------------------------------------------------------ --------- -------
  [Step\_in](Modelica_StateGraph_Interfaces.html#Modelic inPort    
  a.StateGraph.Interfaces.Step_in)                                 

  [Step\_out](Modelica_StateGraph_Interfaces.html#Modeli outPort   
  ca.StateGraph.Interfaces.Step_out)                               

  [CompositeStep\_suspend](Modelica_StateGraph_Interface suspend[n 
  s.html#Modelica.StateGraph.Interfaces.CompositeStep_su Suspend]  
  spend)                                                           

  [CompositeStep\_resume](Modelica_StateGraph_Interfaces resume[nR 
  .html#Modelica.StateGraph.Interfaces.CompositeStep_res esume]    
  ume)                                                             
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model CompositeStep 
      "State machine demonstrating a composite step (used in StateGraph.Examples.ShowCompositeStep)"
      extends StateGraph.PartialCompositeStep;
      Transition transition3(enableTimer=true, waitTime=1);
      Transition transition4(enableTimer=true, waitTime=1);
      Step step3;
      Step step4;
      Transition transition5(enableTimer=true, waitTime=2);
      Transition transition6(enableTimer=true, waitTime=2);
      Transition transition4a(enableTimer=true, waitTime=1);
      Step step4a;
      Transition transition6a(enableTimer=true, waitTime=2);
      Step initStep;
      Step exitStep;
      Alternative Alternative1(nBranches=3);
    equation 
      connect(transition3.outPort, step3.inPort[1]);
      connect(step3.outPort[1], transition5.inPort);
      connect(transition4.outPort, step4.inPort[1]);
      connect(step4.outPort[1], transition6.inPort);
      connect(transition4a.outPort, step4a.inPort[1]);
      connect(step4a.outPort[1], transition6a.inPort);
      connect(initStep.inPort[1], inPort);
      connect(exitStep.outPort[1], outPort);
      connect(initStep.outPort[1], Alternative1.inPort);
      connect(Alternative1.outPort, exitStep.inPort[1]);
      connect(transition3.inPort, Alternative1.split[1]);
      connect(transition4.inPort, Alternative1.split[2]);
      connect(transition4a.inPort, Alternative1.split[3]);
      connect(transition5.outPort, Alternative1.join[1]);
      connect(transition6.outPort, Alternative1.join[2]);
      connect(transition6a.outPort, Alternative1.join[3]);
    end CompositeStep;

* * * * *

![image34](Modelica.StateGraph.Examples.Utilities.CompositeStepI.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).CompositeStep1
=================================================================================================================================================================================================================

**Composite step used to demonstrate exceptions (in
StateGraph.Examples.ShowExceptions)**

Information
-----------

Extends from
[PartialCompositeStep](Modelica_StateGraph.html#Modelica.StateGraph.PartialCompositeStep)
(Superclass of a subgraph, i.e., a composite step that has internally a
StateGraph).

Parameters
----------

  Type                    Name        Default    Description
  ----------------------- ----------- ---------- -------------------------
  Exception connections                          
  Integer                 nSuspend    1          Number of suspend ports
  Integer                 nResume     1          Number of resume ports

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                   Name      Descrip
                                                                   tion
  ------------------------------------------------------ --------- -------
  [Step\_in](Modelica_StateGraph_Interfaces.html#Modelic inPort    
  a.StateGraph.Interfaces.Step_in)                                 

  [Step\_out](Modelica_StateGraph_Interfaces.html#Modeli outPort   
  ca.StateGraph.Interfaces.Step_out)                               

  [CompositeStep\_suspend](Modelica_StateGraph_Interface suspend[n 
  s.html#Modelica.StateGraph.Interfaces.CompositeStep_su Suspend]  
  spend)                                                           

  [CompositeStep\_resume](Modelica_StateGraph_Interfaces resume[nR 
  .html#Modelica.StateGraph.Interfaces.CompositeStep_res esume]    
  ume)                                                             
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model CompositeStep1 
      "Composite step used to demonstrate exceptions (in StateGraph.Examples.ShowExceptions)"
      extends PartialCompositeStep;
      Transition transition1(
        enableTimer=false,
        waitTime=0,
        condition=time > 8);
      Step initStep;
      Step exitStep;
      CompositeStep2 compositeStep11(waitTime=3);
      CompositeStep2 compositeStep12(waitTime=2);
      Transition transition2(
        condition=time > 4,
        enableTimer=false,
        waitTime=0);
      Transition transition3(enableTimer=false, waitTime=0);
      Transition transition4(enableTimer=false, waitTime=0);
      Alternative Alternative1;
    equation 
      connect(exitStep.outPort[1], outPort);
      connect(initStep.inPort[1], inPort);
      connect(transition1.outPort, compositeStep11.inPort);
      connect(transition2.outPort, compositeStep12.inPort);
      connect(compositeStep11.outPort, transition3.inPort);
      connect(compositeStep12.outPort, transition4.inPort);
      connect(initStep.outPort[1], Alternative1.inPort);
      connect(Alternative1.outPort, exitStep.inPort[1]);
      connect(transition1.inPort, Alternative1.split[1]);
      connect(transition2.inPort, Alternative1.split[2]);
      connect(transition3.outPort, Alternative1.join[1]);
      connect(transition4.outPort, Alternative1.join[2]);
    end CompositeStep1;

* * * * *

![image35](Modelica.StateGraph.Examples.Utilities.CompositeStepI.png) [Modelica.StateGraph.Examples.Utilities](Modelica_StateGraph_Examples_Utilities.html#Modelica.StateGraph.Examples.Utilities).CompositeStep2
=================================================================================================================================================================================================================

**Composite step used to demonstrate exceptions (in
StateGraph.Examples.ShowExceptions)**

Information
-----------

Extends from
[PartialCompositeStep](Modelica_StateGraph.html#Modelica.StateGraph.PartialCompositeStep)
(Superclass of a subgraph, i.e., a composite step that has internally a
StateGraph).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                         Name  Defa Description
                                                     ult  
  -------------------------------------------- ----- ---- ----------------
  [SetRealParameter](Modelica_StateGraph_Tempo waitT 2    waiting time in
  rary.html#Modelica.StateGraph.Temporary.SetR ime        this composite
  ealParameter)                                           step

  Exception connections                                   

  Integer                                      nSusp 1    Number of
                                               end        suspend ports

  Integer                                      nResu 1    Number of resume
                                               me         ports
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                   Name      Descrip
                                                                   tion
  ------------------------------------------------------ --------- -------
  [Step\_in](Modelica_StateGraph_Interfaces.html#Modelic inPort    
  a.StateGraph.Interfaces.Step_in)                                 

  [Step\_out](Modelica_StateGraph_Interfaces.html#Modeli outPort   
  ca.StateGraph.Interfaces.Step_out)                               

  [CompositeStep\_suspend](Modelica_StateGraph_Interface suspend[n 
  s.html#Modelica.StateGraph.Interfaces.CompositeStep_su Suspend]  
  spend)                                                           

  [CompositeStep\_resume](Modelica_StateGraph_Interfaces resume[nR 
  .html#Modelica.StateGraph.Interfaces.CompositeStep_res esume]    
  ume)                                                             
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model CompositeStep2 
      "Composite step used to demonstrate exceptions (in StateGraph.Examples.ShowExceptions)"
      extends PartialCompositeStep;
      Transition transition(enableTimer=true, waitTime=waitTime);
      Step initStep;
      Step exitStep;
      parameter Temporary.SetRealParameter waitTime=2 
        "waiting time in this composite step";
    equation 
      connect(exitStep.outPort[1], outPort);
      connect(initStep.inPort[1], inPort);
      connect(initStep.outPort[1], transition.inPort);
      connect(transition.outPort, exitStep.inPort[1]);
    end CompositeStep2;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:51 2010.
