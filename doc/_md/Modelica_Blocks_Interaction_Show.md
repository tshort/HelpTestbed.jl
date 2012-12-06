% Modelica.Blocks.Interaction.Show
% 
% 

[Modelica.Blocks.Interaction](Modelica_Blocks_Interaction.html#Modelica.Blocks.Interaction).Show
================================================================================================

**Library of blocks to show variables in a diagram animation**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                         Description
  -------------------------------------------- ---------------------------
  ![image3](Modelica.Blocks.Interaction.Show.R Show Real value from
  ealValueS.png)                               numberPort or from number
  [RealValue](Modelica_Blocks_Interaction_Show input field in diagram
  .html#Modelica.Blocks.Interaction.Show.RealV layer dynamically
  alue)                                        

  ![image4](Modelica.Blocks.Interaction.Show.I Show Integer value from
  ntegerValueS.png)                            numberPort or from number
  [IntegerValue](Modelica_Blocks_Interaction_S input field in diagram
  how.html#Modelica.Blocks.Interaction.Show.In layer dynamically
  tegerValue)                                  

  ![image5](Modelica.Blocks.Interaction.Show.B Show Boolean value from
  ooleanValueS.png)                            numberPort or from number
  [BooleanValue](Modelica_Blocks_Interaction_S input field in diagram
  how.html#Modelica.Blocks.Interaction.Show.Bo layer dynamically
  oleanValue)                                  
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Blocks.Interaction.Show.RealValueI.png) [Modelica.Blocks.Interaction.Show](Modelica_Blocks_Interaction_Show.html#Modelica.Blocks.Interaction.Show).RealValue
===============================================================================================================================================================================

**Show Real value from numberPort or from number input field in diagram
layer dynamically**

Information
-----------

::

This block visualizes a Real number in a diagram animation. The number
to be visualized can be defined in the following ways:

-   If useNumberPort = **true** (which is the default), a Real input is
    present and this input variable is shown.
-   If useNumberPort = **false** no input connector is present. Instead,
    a Real input field is activated in the parameter menu and the Real
    expression from this input menu is shown.

The two versions of the block are shown in the following image (in the
right variant, the name of the variable value that is displayed is also
shown below the icon):
![image7](../Resources/Images/Blocks/Interaction/RealValue.png)

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.RealNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.RealNetwork1).

::

Parameters
----------

  ------------------------------------------------------------------------
  Type    Name           Default Description
  ------- -------------- ------- -----------------------------------------
  Boolean use\_numberPor true    = true, if numberPort enabled
          t                      

  Real    number         0.0     Number to visualize if
                                 use\_numberPort=false (time varying)

  Integer significantDig 2       Number of significant digits to be shown
          its                    
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Name   Description
  --------------------------------------- ------ --------------------------
  input                                   number Number to be shown in
  [RealInput](Modelica_Blocks_Interfaces. Port   diagram layer if
  html#Modelica.Blocks.Interfaces.RealInp        use\_numberPort = true
  ut)                                            

  output                                  showNu 
  [RealOutput](Modelica_Blocks_Interfaces mber   
  .html#Modelica.Blocks.Interfaces.RealOu        
  tput)                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block RealValue 
      "Show Real value from numberPort or from number input field in diagram layer dynamically"
      parameter Boolean use_numberPort = true "= true, if numberPort enabled";
      input Real number = 0.0 
        "Number to visualize if use_numberPort=false (time varying)";
      parameter Integer significantDigits(min=1) = 2 
        "Number of significant digits to be shown";

      Modelica.Blocks.Interfaces.RealInput numberPort if use_numberPort 
        "Number to be shown in diagram layer if use_numberPort = true";
       Modelica.Blocks.Interfaces.RealOutput showNumber;
    equation 
      if use_numberPort then
         connect(numberPort, showNumber);
      else
         showNumber = number;
      end if;

    end RealValue;

* * * * *

![image8](Modelica.Blocks.Interaction.Show.IntegerValueI.png) [Modelica.Blocks.Interaction.Show](Modelica_Blocks_Interaction_Show.html#Modelica.Blocks.Interaction.Show).IntegerValue
=====================================================================================================================================================================================

**Show Integer value from numberPort or from number input field in
diagram layer dynamically**

Information
-----------

::

This block visualizes an Integer number in a diagram animation. The
number to be visualized can be defined in the following ways:

-   If useNumberPort = **true** (which is the default), an Integer input
    is present and this input variable is shown.
-   If useNumberPort = **false** no input connector is present. Instead,
    an Integer input field is activated in the parameter menu and the
    Integer expression from this input menu is shown.

The two versions of the block are shown in the following image (in the
right variant, the name of the variable value that is displayed is also
shown below the icon):
![image9](../Resources/Images/Blocks/Interaction/IntegerValue.png)

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.IntegerNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.IntegerNetwork1).

::

Parameters
----------

  --------------------------------------------------------------------------
  Type     Name          Default  Description
  -------- ------------- -------- ------------------------------------------
  Boolean  use\_numberPo true     = true, if numberPort enabled
           rt                     

  Integer  number        0        Number to visualize if
                                  use\_numberPort=false (time varying)
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name  Description
  ---------------------------------------- ----- -------------------------
  input                                    numbe Number to be shown in
  [IntegerInput](Modelica_Blocks_Interface rPort diagram layer if
  s.html#Modelica.Blocks.Interfaces.Intege       use\_numberPort = true
  rInput)                                        

  output                                   showN 
  [IntegerOutput](Modelica_Blocks_Interfac umber 
  es.html#Modelica.Blocks.Interfaces.Integ       
  erOutput)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block IntegerValue 
      "Show Integer value from numberPort or from number input field in diagram layer dynamically"
      parameter Boolean use_numberPort = true "= true, if numberPort enabled";
      input Integer number=0 
        "Number to visualize if use_numberPort=false (time varying)";
      Modelica.Blocks.Interfaces.IntegerInput numberPort if use_numberPort 
        "Number to be shown in diagram layer if use_numberPort = true";
       Modelica.Blocks.Interfaces.IntegerOutput showNumber;
    equation 
      if use_numberPort then
         connect(numberPort, showNumber);
      else
         showNumber = number;
      end if;

    end IntegerValue;

* * * * *

![image10](Modelica.Blocks.Interaction.Show.BooleanValueI.png) [Modelica.Blocks.Interaction.Show](Modelica_Blocks_Interaction_Show.html#Modelica.Blocks.Interaction.Show).BooleanValue
======================================================================================================================================================================================

**Show Boolean value from numberPort or from number input field in
diagram layer dynamically**

Information
-----------

::

This block visualizes a Boolean variable in a diagram animation. The
Boolean variable to be visualized can be defined in the following ways:

-   If useActivePort = **true** (which is the default), a Boolean input
    is present and this input variable is shown.
-   If useActivePort = **false** no input connector is present. Instead,
    a Boolean input field is activated in the parameter menu and the
    Boolean expression from this input menu is shown.

If the Boolean variable is **false** the block is "grey", otherwise, it
is "green". The two versions of the block are shown in the following
image (in the right variant, the name of the variable value that is
displayed is also shown below the icon):
![image11](../Resources/Images/Blocks/Interaction/BooleanValue.png)

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

::

Parameters
----------

  --------------------------------------------------------------------------
  Type    Name         Default Description
  ------- ------------ ------- ---------------------------------------------
  Boolean use\_activeP true    = true, if activePort enabled
          ort                  

  Boolean active       false   Boolean variable to visualize if
                               use\_activePort=false (time varying)
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                   Name  Description
  -------------------------------------- ----- ----------------------------
  input                                  activ Boolean variable to be shown
  [BooleanInput](Modelica_Blocks_Interfa ePort in diagram layer if
  ces.html#Modelica.Blocks.Interfaces.Bo       use\_activePort = true
  oleanInput)                                  

  output                                 showA 
  [BooleanOutput](Modelica_Blocks_Interf ctive 
  aces.html#Modelica.Blocks.Interfaces.B       
  ooleanOutput)                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block BooleanValue 
      "Show Boolean value from numberPort or from number input field in diagram layer dynamically"
      parameter Boolean use_activePort = true "= true, if activePort enabled";
      input Boolean active=false 
        "Boolean variable to visualize if use_activePort=false (time varying)";
      Modelica.Blocks.Interfaces.BooleanInput activePort if use_activePort 
        "Boolean variable to be shown in diagram layer if use_activePort = true";

       Modelica.Blocks.Interfaces.BooleanOutput showActive;
    equation 
      if use_activePort then
         connect(activePort, showActive);
      else
         showActive = active;
      end if;

    end BooleanValue;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:36 2010.
