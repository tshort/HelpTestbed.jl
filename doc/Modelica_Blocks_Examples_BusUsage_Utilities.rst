============================================
Modelica.Blocks.Examples.BusUsage\_Utilities
============================================

`Modelica.Blocks.Examples <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples>`_.BusUsage\_Utilities
--------------------------------------------------------------------------------------------------------

**Utility models and connectors for example
Modelica.Blocks.Examples.BusUsage**

Information
~~~~~~~~~~~

::

This package contains utility models and bus definitions needed for the
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_
example.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| Name                                                                                                                                                                                           | Description                               |
+================================================================================================================================================================================================+===========================================+
| |image2| `Interfaces <Modelica_Blocks_Examples_BusUsage_Utilities_Interfaces.html#Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces>`_                                                    | Interfaces specialised for this example   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| |image3| `Part <Modelica_Blocks_Examples_BusUsage_Utilities.html#Modelica.Blocks.Examples.BusUsage_Utilities.Part>`_                                                                           | Component with sub-control bus            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+

--------------

|image4| `Modelica.Blocks.Examples.BusUsage\_Utilities <Modelica_Blocks_Examples_BusUsage_Utilities.html#Modelica.Blocks.Examples.BusUsage_Utilities>`_.Part
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Component with sub-control bus**

.. figure:: Modelica.Blocks.Examples.BusUsage_Utilities.PartD.png
   :align: center
   :alt: Modelica.Blocks.Examples.BusUsage\_Utilities.Part

   Modelica.Blocks.Examples.BusUsage\_Utilities.Part

Information
~~~~~~~~~~~

::

This model is used to demonstrate the bus usage in example
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_.

::

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+---------------+
| Type                                                                                                                                                  | Name            | Description   |
+=======================================================================================================================================================+=================+===============+
| `SubControlBus <Modelica_Blocks_Examples_BusUsage_Utilities_Interfaces.html#Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.SubControlBus>`_   | subControlBus   |               |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Part "Component with sub-control bus"

      Interfaces.SubControlBus subControlBus;
      Sources.RealExpression realExpression(y=time);
      Sources.BooleanExpression booleanExpression(y=time > 0.5);
    equation 
       connect(realExpression.y, subControlBus.myRealSignal);
       connect(booleanExpression.y, subControlBus.myBooleanSignal);
    end Part;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:35
2010.

.. |Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces| image:: Modelica.Blocks.Examples.BusUsage_Utilities.InterfacesS.png
.. |Modelica.Blocks.Examples.BusUsage\_Utilities.Part| image:: Modelica.Blocks.Examples.BusUsage_Utilities.PartS.png
.. |image2| image:: Modelica.Blocks.Examples.BusUsage_Utilities.InterfacesS.png
.. |image3| image:: Modelica.Blocks.Examples.BusUsage_Utilities.PartS.png
.. |image4| image:: Modelica.Blocks.Examples.BusUsage_Utilities.PartI.png
