% Modelica.Fluid.Examples.ControlledTankSystem.Utilities
% 
% 

[Modelica.Fluid.Examples.ControlledTankSystem](Modelica_Fluid_Examples_ControlledTankSystem.html#Modelica.Fluid.Examples.ControlledTankSystem).Utilities
========================================================================================================================================================

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
  ![image3](Modelica.Fluid.Examples.ControlledTankS Controller for tank
  ystem.Utilities.TankControllerS.png)              system
  [TankController](Modelica_Fluid_Examples_Controll 
  edTankSystem_Utilities.html#Modelica.Fluid.Exampl 
  es.ControlledTankSystem.Utilities.TankController) 

  ![image4](Modelica.Fluid.Examples.ControlledTankS Normal operation of
  ystem.Utilities.NormalOperationS.png)             tank system (button
  [NormalOperation](Modelica_Fluid_Examples_Control start pressed)
  ledTankSystem_Utilities.html#Modelica.Fluid.Examp 
  les.ControlledTankSystem.Utilities.NormalOperatio 
  n)                                                

  ![image5](Modelica.Fluid.Examples.ControlledTankS Button that sets its
  ystem.Utilities.RadioButtonS.png)                 output to true when
  [RadioButton](Modelica_Fluid_Examples_ControlledT pressed and is reset
  ankSystem_Utilities.html#Modelica.Fluid.Examples. when an element of
  ControlledTankSystem.Utilities.RadioButton)       'reset' becomes true
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Fluid.Examples.ControlledTankSystem.Utilities.TankControllerI.png) [Modelica.Fluid.Examples.ControlledTankSystem.Utilities](Modelica_Fluid_Examples_ControlledTankSystem_Utilities.html#Modelica.Fluid.Examples.ControlledTankSystem.Utilities).TankController
=================================================================================================================================================================================================================================================================================

**Controller for tank system**

Information
-----------

Extends from
[Modelica.StateGraph.Interfaces.PartialStateGraphIcon](Modelica_StateGraph_Interfaces.html#Modelica.StateGraph.Interfaces.PartialStateGraphIcon)
(Icon for a StateGraph object).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                Name    Defaul Description
                                              t      
  ----------------------------------- ------- ------ ---------------------
  [Height](Modelica_SIunits.html#Mode maxLeve        Fill level of tank 1
  lica.SIunits.Height)                l              [m]

  [Height](Modelica_SIunits.html#Mode minLeve        Lowest level of tank
  lica.SIunits.Height)                l              1 and 2 [m]

  [Time](Modelica_SIunits.html#Modeli waitTim        Wait time, between
  ca.SIunits.Time)                    e              operations [s]
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
          extends Modelica.StateGraph.Interfaces.PartialStateGraphIcon;
      parameter SI.Height maxLevel "Fill level of tank 1";
      parameter SI.Height minLevel "Lowest level of tank 1 and 2";
      parameter SI.Time waitTime "Wait time, between operations";

      Modelica.StateGraph.InitialStep s1(nIn=2);
      Modelica.Fluid.Examples.ControlledTankSystem.Utilities.NormalOperation
        normal(
        maxLevel=maxLevel,
        minLevel=minLevel,
        waitTime=waitTime);
      Modelica.StateGraph.Transition T1(condition=start);
      Modelica.StateGraph.Transition T2(condition=level2 < minLevel);
      Modelica.StateGraph.Transition T3(condition=stop);
      Modelica.StateGraph.Step s2(nOut=2);
      Modelica.StateGraph.Transition T4(condition=start);
      Modelica.StateGraph.Transition T5(condition=shut);
      Modelica.StateGraph.Step emptyTanks;
      Modelica.StateGraph.Transition T6(condition=level1 < minLevel and level2
             < minLevel);
      Modelica.Blocks.Interfaces.BooleanInput start;
      Modelica.Blocks.Interfaces.BooleanInput stop;
      Modelica.Blocks.Interfaces.BooleanInput shut;
      Modelica.Blocks.Interfaces.RealInput level1;
      Modelica.Blocks.Interfaces.RealInput level2;
      Modelica.Blocks.Interfaces.BooleanOutput valve1;
      Modelica.Blocks.Interfaces.BooleanOutput valve2;
      Modelica.Blocks.Interfaces.BooleanOutput valve3;
      Modelica.Blocks.Sources.BooleanExpression setValve1(y=normal.fillTank1.
            active);
      Modelica.Blocks.Sources.BooleanExpression setValve2(y=normal.fillTank2.
            active or emptyTanks.active and level1 > minLevel);
      Modelica.Blocks.Sources.BooleanExpression setValve3(y=normal.emptyTank2.
            active or emptyTanks.active and level2 > minLevel);
    equation 

      connect(s1.outPort[1], T1.inPort);
      connect(T1.outPort, normal.inPort);
      connect(normal.outPort, T2.inPort);
      connect(T5.outPort, emptyTanks.inPort[1]);
      connect(emptyTanks.outPort[1], T6.inPort);
      connect(setValve1.y, valve1);
      connect(setValve2.y, valve2);
      connect(setValve3.y, valve3);
      connect(normal.suspend[1], T3.inPort);
      connect(T3.outPort, s2.inPort[1]);
      connect(level1, normal.level1);
      connect(s2.outPort[1], T5.inPort);
      connect(s2.outPort[2], T4.inPort);
      connect(T2.outPort, s1.inPort[1]);
      connect(T6.outPort, s1.inPort[2]);
      connect(T4.outPort, normal.resume[1]);
    end TankController;

* * * * *

![image7](Modelica.Fluid.Examples.ControlledTankSystem.Utilities.NormalOperationI.png) [Modelica.Fluid.Examples.ControlledTankSystem.Utilities](Modelica_Fluid_Examples_ControlledTankSystem_Utilities.html#Modelica.Fluid.Examples.ControlledTankSystem.Utilities).NormalOperation
===================================================================================================================================================================================================================================================================================

**Normal operation of tank system (button start pressed)**

Information
-----------

Extends from
[Modelica.StateGraph.PartialCompositeStep](Modelica_StateGraph.html#Modelica.StateGraph.PartialCompositeStep)
(Superclass of a subgraph, i.e., a composite step that has internally a
StateGraph).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                 Name    Defaul Description
                                               t      
  ------------------------------------ ------- ------ ---------------------
  [Height](Modelica_SIunits.html#Model maxLeve        Fill level of tank 1
  ica.SIunits.Height)                  l              [m]

  [Height](Modelica_SIunits.html#Model minLeve        Lowest level of tank
  ica.SIunits.Height)                  l              1 and 2 [m]

  [Time](Modelica_SIunits.html#Modelic waitTim        Wait time between
  a.SIunits.Time)                      e              operations [s]

  Exception connections                               

  Integer                              nSuspen 1      Number of suspend
                                       d              ports

  Integer                              nResume 1      Number of resume
                                                      ports
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

    model NormalOperation 
      "Normal operation of tank system (button start pressed)"
          extends Modelica.StateGraph.PartialCompositeStep;
      parameter SI.Height maxLevel "Fill level of tank 1";
      parameter SI.Height minLevel "Lowest level of tank 1 and 2";
      parameter SI.Time waitTime "Wait time between operations";

      Modelica.Blocks.Interfaces.RealInput level1;
      Modelica.StateGraph.Step fillTank1;
      Modelica.StateGraph.Transition T1(condition=level1 > maxLevel);
      Modelica.StateGraph.Step fillTank2;
      Modelica.StateGraph.Transition T3(condition=level1 < minLevel);
      Modelica.StateGraph.Step emptyTank2;
      Modelica.StateGraph.Step wait1;
      Modelica.StateGraph.Transition T2(enableTimer=true, waitTime=waitTime);
      Modelica.StateGraph.Step wait2;
      Modelica.StateGraph.Transition T4(enableTimer=true, waitTime=waitTime);
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
    end NormalOperation;

* * * * *

![image8](Modelica.Fluid.Examples.ControlledTankSystem.Utilities.RadioButtonI.png) [Modelica.Fluid.Examples.ControlledTankSystem.Utilities](Modelica_Fluid_Examples_ControlledTankSystem_Utilities.html#Modelica.Fluid.Examples.ControlledTankSystem.Utilities).RadioButton
===========================================================================================================================================================================================================================================================================

**Button that sets its output to true when pressed and is reset when an
element of 'reset' becomes true**

Parameters
----------

  -------------------------------------------------------------------------
  Type                       Name       Defau Description
                                        lt    
  -------------------------- ---------- ----- -----------------------------
  [Time](Modelica_SIunits.ht buttonTime       Time instants where button is
  ml#Modelica.SIunits.Time)  Table[:]         pressend [s]

  Time varying expressions                    

  Boolean                    reset[:]   {fals Reset button to false, if an
                                        e}    element of reset becomes true
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name  Descripti
                                                                  on
  --------------------------------------------------------- ----- ---------
  output                                                    on    
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Modelica.       
  Blocks.Interfaces.BooleanOutput)                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block RadioButton 
      "Button that sets its output to true when pressed and is reset when an element of 'reset' becomes true"

      parameter Modelica.SIunits.Time buttonTimeTable[:] 
        "Time instants where button is pressend";
      input Boolean reset[:]={false} 
        "Reset button to false, if an element of reset becomes true";

      Modelica.Blocks.Interfaces.BooleanOutput on;
    protected 
      Modelica.Blocks.Sources.BooleanTable table(table=buttonTimeTable);
    algorithm 
      when pre(reset) then
         on := false;
      end when;

      when change(table.y) then
         on := true;
      end when;
    end RadioButton;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:59 2010.
