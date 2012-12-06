================================
Modelica.Blocks.Interaction.Show
================================

`Modelica.Blocks.Interaction <Modelica_Blocks_Interaction.html#Modelica.Blocks.Interaction>`_.Show
--------------------------------------------------------------------------------------------------

**Library of blocks to show variables in a diagram animation**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+
| Name                                                                                                                                                    | Description                                                                                  |
+=========================================================================================================================================================+==============================================================================================+
| |image3| `RealValue <Modelica_Blocks_Interaction_Show.html#Modelica.Blocks.Interaction.Show.RealValue>`_                                                | Show Real value from numberPort or from number input field in diagram layer dynamically      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+
| |image4| `IntegerValue <Modelica_Blocks_Interaction_Show.html#Modelica.Blocks.Interaction.Show.IntegerValue>`_                                          | Show Integer value from numberPort or from number input field in diagram layer dynamically   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+
| |image5| `BooleanValue <Modelica_Blocks_Interaction_Show.html#Modelica.Blocks.Interaction.Show.BooleanValue>`_                                          | Show Boolean value from numberPort or from number input field in diagram layer dynamically   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+

--------------

|image6| `Modelica.Blocks.Interaction.Show <Modelica_Blocks_Interaction_Show.html#Modelica.Blocks.Interaction.Show>`_.RealValue
-------------------------------------------------------------------------------------------------------------------------------

**Show Real value from numberPort or from number input field in diagram
layer dynamically**

.. figure:: Modelica.Blocks.Interaction.Show.RealValueD.png
   :align: center
   :alt: Modelica.Blocks.Interaction.Show.RealValue

   Modelica.Blocks.Interaction.Show.RealValue

Information
~~~~~~~~~~~

::

This block visualizes a Real number in a diagram animation. The number
to be visualized can be defined in the following ways:

-  If useNumberPort = **true** (which is the default), a Real input is
   present and this input variable is shown.
-  If useNumberPort = **false** no input connector is present. Instead,
   a Real input field is activated in the parameter menu and the Real
   expression from this input menu is shown.

The two versions of the block are shown in the following image (in the
right variant, the name of the variable value that is displayed is also
shown below the icon):
 |image7|

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.RealNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.RealNetwork1>`_.

::

Parameters
~~~~~~~~~~

+-----------+---------------------+-----------+---------------------------------------------------------------+
| Type      | Name                | Default   | Description                                                   |
+===========+=====================+===========+===============================================================+
| Boolean   | use\_numberPort     | true      | = true, if numberPort enabled                                 |
+-----------+---------------------+-----------+---------------------------------------------------------------+
| Real      | number              | 0.0       | Number to visualize if use\_numberPort=false (time varying)   |
+-----------+---------------------+-----------+---------------------------------------------------------------+
| Integer   | significantDigits   | 2         | Number of significant digits to be shown                      |
+-----------+---------------------+-----------+---------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------------+-----------------------------------------------------------------+
| Type                                                                                           | Name         | Description                                                     |
+================================================================================================+==============+=================================================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | numberPort   | Number to be shown in diagram layer if use\_numberPort = true   |
+------------------------------------------------------------------------------------------------+--------------+-----------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | showNumber   |                                                                 |
+------------------------------------------------------------------------------------------------+--------------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image8| `Modelica.Blocks.Interaction.Show <Modelica_Blocks_Interaction_Show.html#Modelica.Blocks.Interaction.Show>`_.IntegerValue
----------------------------------------------------------------------------------------------------------------------------------

**Show Integer value from numberPort or from number input field in
diagram layer dynamically**

.. figure:: Modelica.Blocks.Interaction.Show.IntegerValueD.png
   :align: center
   :alt: Modelica.Blocks.Interaction.Show.IntegerValue

   Modelica.Blocks.Interaction.Show.IntegerValue

Information
~~~~~~~~~~~

::

This block visualizes an Integer number in a diagram animation. The
number to be visualized can be defined in the following ways:

-  If useNumberPort = **true** (which is the default), an Integer input
   is present and this input variable is shown.
-  If useNumberPort = **false** no input connector is present. Instead,
   an Integer input field is activated in the parameter menu and the
   Integer expression from this input menu is shown.

The two versions of the block are shown in the following image (in the
right variant, the name of the variable value that is displayed is also
shown below the icon):
 |image9|

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.IntegerNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.IntegerNetwork1>`_.

::

Parameters
~~~~~~~~~~

+-----------+-------------------+-----------+---------------------------------------------------------------+
| Type      | Name              | Default   | Description                                                   |
+===========+===================+===========+===============================================================+
| Boolean   | use\_numberPort   | true      | = true, if numberPort enabled                                 |
+-----------+-------------------+-----------+---------------------------------------------------------------+
| Integer   | number            | 0         | Number to visualize if use\_numberPort=false (time varying)   |
+-----------+-------------------+-----------+---------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------------+-----------------------------------------------------------------+
| Type                                                                                                 | Name         | Description                                                     |
+======================================================================================================+==============+=================================================================+
| input `IntegerInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerInput>`_      | numberPort   | Number to be shown in diagram layer if use\_numberPort = true   |
+------------------------------------------------------------------------------------------------------+--------------+-----------------------------------------------------------------+
| output `IntegerOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerOutput>`_   | showNumber   |                                                                 |
+------------------------------------------------------------------------------------------------------+--------------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image10| `Modelica.Blocks.Interaction.Show <Modelica_Blocks_Interaction_Show.html#Modelica.Blocks.Interaction.Show>`_.BooleanValue
-----------------------------------------------------------------------------------------------------------------------------------

**Show Boolean value from numberPort or from number input field in
diagram layer dynamically**

.. figure:: Modelica.Blocks.Interaction.Show.BooleanValueD.png
   :align: center
   :alt: Modelica.Blocks.Interaction.Show.BooleanValue

   Modelica.Blocks.Interaction.Show.BooleanValue

Information
~~~~~~~~~~~

::

This block visualizes a Boolean variable in a diagram animation. The
Boolean variable to be visualized can be defined in the following ways:

-  If useActivePort = **true** (which is the default), a Boolean input
   is present and this input variable is shown.
-  If useActivePort = **false** no input connector is present. Instead,
   a Boolean input field is activated in the parameter menu and the
   Boolean expression from this input menu is shown.

If the Boolean variable is **false** the block is "grey", otherwise, it
is "green". The two versions of the block are shown in the following
image (in the right variant, the name of the variable value that is
displayed is also shown below the icon):
 |image11|

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

::

Parameters
~~~~~~~~~~

+-----------+-------------------+-----------+-------------------------------------------------------------------------+
| Type      | Name              | Default   | Description                                                             |
+===========+===================+===========+=========================================================================+
| Boolean   | use\_activePort   | true      | = true, if activePort enabled                                           |
+-----------+-------------------+-----------+-------------------------------------------------------------------------+
| Boolean   | active            | false     | Boolean variable to visualize if use\_activePort=false (time varying)   |
+-----------+-------------------+-----------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------------+---------------------------------------------------------------------------+
| Type                                                                                                 | Name         | Description                                                               |
+======================================================================================================+==============+===========================================================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | activePort   | Boolean variable to be shown in diagram layer if use\_activePort = true   |
+------------------------------------------------------------------------------------------------------+--------------+---------------------------------------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | showActive   |                                                                           |
+------------------------------------------------------------------------------------------------------+--------------+---------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:36
2010.

.. |Modelica.Blocks.Interaction.Show.RealValue| image:: Modelica.Blocks.Interaction.Show.RealValueS.png
.. |Modelica.Blocks.Interaction.Show.IntegerValue| image:: Modelica.Blocks.Interaction.Show.IntegerValueS.png
.. |Modelica.Blocks.Interaction.Show.BooleanValue| image:: Modelica.Blocks.Interaction.Show.BooleanValueS.png
.. |image3| image:: Modelica.Blocks.Interaction.Show.RealValueS.png
.. |image4| image:: Modelica.Blocks.Interaction.Show.IntegerValueS.png
.. |image5| image:: Modelica.Blocks.Interaction.Show.BooleanValueS.png
.. |image6| image:: Modelica.Blocks.Interaction.Show.RealValueI.png
.. |image7| image:: ../Resources/Images/Blocks/Interaction/RealValue.png
.. |image8| image:: Modelica.Blocks.Interaction.Show.IntegerValueI.png
.. |image9| image:: ../Resources/Images/Blocks/Interaction/IntegerValue.png
.. |image10| image:: Modelica.Blocks.Interaction.Show.BooleanValueI.png
.. |image11| image:: ../Resources/Images/Blocks/Interaction/BooleanValue.png
