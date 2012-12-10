% Modelica.StateGraph.Temporary
% 
% 

[Modelica.StateGraph](Modelica_StateGraph.html#Modelica.StateGraph).Temporary
=============================================================================

**Components that will be provided by other libraries in the future**

Information
-----------

::

This library is just temporarily present. The components of this library
will be present in the future in the Modelica standard library (with the
new block connectors) and in the UserInteraction library that is
currently under development.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                       Description
  ------------------------------------------ -----------------------------
  ![image6](Modelica.StateGraph.Temporary.Se Define Real parameter (GUI
  tRealParameterS.png)                       not yet satisfactory)
  [SetRealParameter](Modelica_StateGraph_Tem 
  porary.html#Modelica.StateGraph.Temporary. 
  SetRealParameter)                          

  ![image7](Modelica.StateGraph.Temporary.an Returns true, if at least on
  yTrueS.png)                                element of the Boolean input
  [anyTrue](Modelica_StateGraph_Temporary.ht vector is true
  ml#Modelica.StateGraph.Temporary.anyTrue)  

  ![image8](Modelica.StateGraph.Temporary.an Returns true, if all elements
  yTrueS.png)                                of the Boolean input vector
  [allTrue](Modelica_StateGraph_Temporary.ht are true
  ml#Modelica.StateGraph.Temporary.allTrue)  

  ![image9](Modelica.StateGraph.Temporary.Ra Button that sets its output
  dioButtonS.png)                            to true when pressed and is
  [RadioButton](Modelica_StateGraph_Temporar reset when an element of
  y.html#Modelica.StateGraph.Temporary.Radio 'reset' becomes true
  Button)                                    

  ![image10](Modelica.StateGraph.Temporary.N Show value of Real input
  umericValueS.png)                          signal dynamically
  [NumericValue](Modelica_StateGraph_Tempora 
  ry.html#Modelica.StateGraph.Temporary.Nume 
  ricValue)                                  

  ![image11](Modelica.StateGraph.Temporary.I Dynamically show Boolean
  ndicatorLampS.png)                         input signal (false/true =
  [IndicatorLamp](Modelica_StateGraph_Tempor white/green color)
  ary.html#Modelica.StateGraph.Temporary.Ind 
  icatorLamp)                                
  ------------------------------------------------------------------------

Types and constants
-------------------

    type SetRealParameter = Real "Define Real parameter (GUI not yet satisfactory)";

* * * * *

![image12](Modelica.StateGraph.Temporary.anyTrueI.png) [Modelica.StateGraph.Temporary](Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary).anyTrue
================================================================================================================================================================

**Returns true, if at least on element of the Boolean input vector is
true**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------
  Boolean      b[:]                   

Outputs
-------

  Type         Name        Description
  ------------ ----------- ----------------
  Boolean      result      

Modelica definition
-------------------

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

* * * * *

![image13](Modelica.StateGraph.Temporary.anyTrueI.png) [Modelica.StateGraph.Temporary](Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary).allTrue
================================================================================================================================================================

**Returns true, if all elements of the Boolean input vector are true**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------
  Boolean      b[:]                   

Outputs
-------

  Type         Name        Description
  ------------ ----------- ----------------
  Boolean      result      

Modelica definition
-------------------

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

* * * * *

![image14](Modelica.StateGraph.Temporary.RadioButtonI.png) [Modelica.StateGraph.Temporary](Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary).RadioButton
========================================================================================================================================================================

**Button that sets its output to true when pressed and is reset when an
element of 'reset' becomes true**

Information
-----------

::

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                       Name       Defau Description
                                        lt    
  -------------------------- ---------- ----- -----------------------------
  [Time](Modelica_SIunits.ht buttonTime {0}   Time instants where button is
  ml#Modelica.SIunits.Time)  Table[:]         pressend and released [s]

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

* * * * *

![image15](Modelica.StateGraph.Temporary.NumericValueI.png) [Modelica.StateGraph.Temporary](Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary).NumericValue
==========================================================================================================================================================================

**Show value of Real input signal dynamically**

Information
-----------

::

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name   Defa Description
                                            ult  
  ---------------------------------- ------ ---- --------------------------
  Integer                            precis 3    Number of significant
                                     ion         digits to be shown

  Boolean                            hideCo fals = true, if connector is
                                     nnecto e    not shown in the dynamic
                                     r           object diagram

  [RealInput](Modelica_Blocks_Interf Value       Real value to be shown in
  aces.html#Modelica.Blocks.Interfac             icon
  es.RealInput)                                  
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- ------------------
  input                                            Value Real value to be
  [RealInput](Modelica_Blocks_Interfaces.html#Mode       shown in icon
  lica.Blocks.Interfaces.RealInput)                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model NumericValue "Show value of Real input signal dynamically"
      parameter Integer precision(min=0) = 3 
        "Number of significant digits to be shown";
      parameter Boolean hideConnector=false 
        "= true, if connector is not shown in the dynamic object diagram";

      Modelica.Blocks.Interfaces.RealInput Value "Real value to be shown in icon";


    end NumericValue;

* * * * *

![image16](Modelica.StateGraph.Temporary.IndicatorLampI.png) [Modelica.StateGraph.Temporary](Modelica_StateGraph_Temporary.html#Modelica.StateGraph.Temporary).IndicatorLamp
============================================================================================================================================================================

**Dynamically show Boolean input signal (false/true = white/green
color)**

Information
-----------

::

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name  Descripti
                                                                  on
  --------------------------------------------------------- ----- ---------
  input                                                     u     
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modelica.B       
  locks.Interfaces.BooleanInput)                                  
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model IndicatorLamp 
      "Dynamically show Boolean input signal (false/true = white/green color)"

      Modelica.Blocks.Interfaces.BooleanInput u;


    end IndicatorLamp;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:51 2010.
