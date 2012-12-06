=======================================================================
Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities
=======================================================================

`Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses>`_.ControllerUtilities
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| Name                                                                                                                                                                                                                                                                                       | Description   |
+============================================================================================================================================================================================================================================================================================+===============+
| `Adapter\_Inference <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Adapter_Inference>`_                                                                                               |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| `Adapter\_Superposition <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Adapter_Superposition>`_                                                                                       |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image5| `Block\_Recipe\_TBD <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Block_Recipe_TBD>`_                                                                                       |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image6| `BlockMain <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.BlockMain>`_                                                                                                       |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| `Buffer\_Recipe\_TBD <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Buffer_Recipe_TBD>`_                                                                                              |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| `BufferMain <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.BufferMain>`_                                                                                                              |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image7| `Port\_Actuators <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_Actuators>`_                                                                                            |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image8| `Port\_IdleTanks <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_IdleTanks>`_                                                                                            |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image9| `Port\_Sensors <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_Sensors>`_                                                                                                |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+

--------------

`Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities>`_.Adapter\_Inference
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    class Adapter_Inference
      Port_IdleTanks idleTanks;
    end Adapter_Inference;

--------------

`Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities>`_.Adapter\_Superposition
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    class Adapter_Superposition
      Port_Actuators actuators;
    end Adapter_Superposition;

--------------

|image10| `Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities>`_.Block\_Recipe\_TBD
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

.. figure:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Block_Recipe_TBDD.png
   :align: center
   :alt: Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities.Block\_Recipe\_TBD

   Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities.Block\_Recipe\_TBD

Parameters
~~~~~~~~~~

+--------+--------------------+-----------+---------------+
| Type   | Name               | Default   | Description   |
+========+====================+===========+===============+
| Real   | startTime          |           |               |
+--------+--------------------+-----------+---------------+
| Real   | w\_dilution        | 0.003     |               |
+--------+--------------------+-----------+---------------+
| Real   | w\_concentrat      | 0.005     |               |
+--------+--------------------+-----------+---------------+
| Real   | T3\_batch\_level   | 0.1273    |               |
+--------+--------------------+-----------+---------------+
| Real   | T5\_batch\_level   | 0.211     |               |
+--------+--------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    class Block_Recipe_TBD
      parameter Real startTime;
      parameter Real w_dilution=0.003;
      parameter Real w_concentrat=0.005;
      parameter Real T3_batch_level=0.1273;
      parameter Real T5_batch_level=0.211;
      Boolean trig;
      Boolean S0(start=true);
      Boolean S1;
      Boolean S2;
      Boolean S3;
      Boolean S4;
      Boolean S5;
      Boolean S6;
      Boolean S7;
      Boolean S8;
      Boolean S9;
      Boolean S10;
      Boolean S11;
      Boolean S12;
      Boolean S13;
      Boolean S14;
      Boolean tr0;
      Boolean tr1;
      Boolean tr2;
      Boolean tr3;
      Boolean tr4;
      Boolean tr5;
      Boolean tr6;
      Boolean tr7;
      Boolean tr8;
      Boolean tr9;
      Boolean tr10;
      Boolean tr11;
      Boolean tr12;
      Boolean tr13;
      Port_Actuators act;
    end Block_Recipe_TBD;

--------------

|image11| `Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities>`_.BlockMain
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    class BlockMain
      Boolean trig;

      Port_Actuators actuators;
      Block_Recipe_TBD Recipe1;
      Block_Recipe_TBD Recipe2;
      Adapter_Inference Inference;
      Adapter_Superposition Superposition;
    end BlockMain;

--------------

`Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities>`_.Buffer\_Recipe\_TBD
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    class Buffer_Recipe_TBD
      Port_Actuators act;
      Boolean S0;
      Boolean S1;
      Boolean S2;
      Boolean S3;
      Boolean S4;
      Boolean S5;
      Boolean S6;
      Boolean S7;
      Boolean S8;
      Boolean S9;
      Boolean S10;
      Boolean S11;
      Boolean S12;
      Boolean S13;
      Boolean S14;
    end Buffer_Recipe_TBD;

--------------

`Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities>`_.BufferMain
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    class BufferMain
      Buffer_Recipe_TBD Recipe1;
      Buffer_Recipe_TBD Recipe2;
    end BufferMain;

--------------

|image12| `Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities>`_.Port\_Actuators
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

.. figure:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_ActuatorsD.png
   :align: center
   :alt: Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities.Port\_Actuators

   Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities.Port\_Actuators

Contents
~~~~~~~~

+------------------+---------------+---------------+
| Type             | Name          | Description   |
+==================+===============+===============+
| output Boolean   | P1            |               |
+------------------+---------------+---------------+
| output Boolean   | P2            |               |
+------------------+---------------+---------------+
| output Boolean   | T5\_Heater    |               |
+------------------+---------------+---------------+
| output Boolean   | T7\_Cooling   |               |
+------------------+---------------+---------------+
| output Boolean   | T6\_Cooling   |               |
+------------------+---------------+---------------+
| output Boolean   | V1            |               |
+------------------+---------------+---------------+
| output Boolean   | V2            |               |
+------------------+---------------+---------------+
| output Boolean   | V3            |               |
+------------------+---------------+---------------+
| output Boolean   | V4            |               |
+------------------+---------------+---------------+
| output Boolean   | V5            |               |
+------------------+---------------+---------------+
| output Boolean   | V6            |               |
+------------------+---------------+---------------+
| output Boolean   | V8            |               |
+------------------+---------------+---------------+
| output Boolean   | V9            |               |
+------------------+---------------+---------------+
| output Boolean   | V10           |               |
+------------------+---------------+---------------+
| output Boolean   | V11           |               |
+------------------+---------------+---------------+
| output Boolean   | V12           |               |
+------------------+---------------+---------------+
| output Boolean   | V15           |               |
+------------------+---------------+---------------+
| output Boolean   | V18           |               |
+------------------+---------------+---------------+
| output Boolean   | V19           |               |
+------------------+---------------+---------------+
| output Boolean   | V20           |               |
+------------------+---------------+---------------+
| output Boolean   | V21           |               |
+------------------+---------------+---------------+
| output Boolean   | V22           |               |
+------------------+---------------+---------------+
| output Boolean   | V23           |               |
+------------------+---------------+---------------+
| output Boolean   | V24           |               |
+------------------+---------------+---------------+
| output Boolean   | V25           |               |
+------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Port_Actuators
      output Boolean P1;
      output Boolean P2;
      output Boolean T5_Heater;
      output Boolean T7_Cooling;
      output Boolean T6_Cooling;
      output Boolean V1;
      output Boolean V2;
      output Boolean V3;
      output Boolean V4;
      output Boolean V5;
      output Boolean V6;
      output Boolean V8;
      output Boolean V9;
      output Boolean V10;
      output Boolean V11;
      output Boolean V12;
      output Boolean V15;
      output Boolean V18;
      output Boolean V19;
      output Boolean V20;
      output Boolean V21;
      output Boolean V22;
      output Boolean V23;
      output Boolean V24;
      output Boolean V25;

    end Port_Actuators;

--------------

`Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities>`_.Port\_IdleTanks
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Contents
~~~~~~~~

+-----------+------------+---------------+
| Type      | Name       | Description   |
+===========+============+===============+
| Boolean   | T5\_idle   |               |
+-----------+------------+---------------+
| Boolean   | T7\_idle   |               |
+-----------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Port_IdleTanks
      Boolean T5_idle;
      Boolean T7_idle;
    end Port_IdleTanks;

--------------

|image13| `Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities <Modelica_Fluid_Examples_AST_BatchPlant_BaseClasses_ControllerUtilities.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities>`_.Port\_Sensors
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

.. figure:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_SensorsD.png
   :align: center
   :alt: Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities.Port\_Sensors

   Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities.Port\_Sensors

Contents
~~~~~~~~

+--------------+------------+---------------+
| Type         | Name       | Description   |
+==============+============+===============+
| input Real   | LIS\_301   |               |
+--------------+------------+---------------+
| input Real   | QI\_302    |               |
+--------------+------------+---------------+
| input Real   | LIS\_501   |               |
+--------------+------------+---------------+
| input Real   | QIS\_502   |               |
+--------------+------------+---------------+
| input Real   | TI\_503    |               |
+--------------+------------+---------------+
| input Real   | LIS\_601   |               |
+--------------+------------+---------------+
| input Real   | TIS\_602   |               |
+--------------+------------+---------------+
| input Real   | LIS\_701   |               |
+--------------+------------+---------------+
| input Real   | TIS\_702   |               |
+--------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Port_Sensors
      input Real LIS_301;
      input Real QI_302;
      input Real LIS_501;
      input Real QIS_502;
      input Real TI_503;
      input Real LIS_601;
      input Real TIS_602;
      input Real LIS_701;
      input Real TIS_702;
    end Port_Sensors;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:08
2010.

.. |Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities.Block\_Recipe\_TBD| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Block_Recipe_TBDS.png
.. |Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities.BlockMain| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.BlockMainS.png
.. |Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities.Port\_Actuators| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_ActuatorsS.png
.. |Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities.Port\_IdleTanks| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_IdleTanksS.png
.. |Modelica.Fluid.Examples.AST\_BatchPlant.BaseClasses.ControllerUtilities.Port\_Sensors| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_SensorsS.png
.. |image5| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Block_Recipe_TBDS.png
.. |image6| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.BlockMainS.png
.. |image7| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_ActuatorsS.png
.. |image8| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_IdleTanksS.png
.. |image9| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_SensorsS.png
.. |image10| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Block_Recipe_TBDI.png
.. |image11| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.BlockMainI.png
.. |image12| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_ActuatorsI.png
.. |image13| image:: Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.ControllerUtilities.Port_SensorsI.png
