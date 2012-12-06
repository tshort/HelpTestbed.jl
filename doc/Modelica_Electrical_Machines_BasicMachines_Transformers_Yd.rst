==========================================================
Modelica.Electrical.Machines.BasicMachines.Transformers.Yd
==========================================================

`Modelica.Electrical.Machines.BasicMachines.Transformers <Modelica_Electrical_Machines_BasicMachines_Transformers.html#Modelica.Electrical.Machines.BasicMachines.Transformers>`_.Yd
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformers: primary Y / secondary d**

Information
~~~~~~~~~~~

::

This package contains transformers primary Y connected / secondary d
connected in all possbile vector groups.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| Name                                                                                                                                                                                                          | Description        |
+===============================================================================================================================================================================================================+====================+
| |image6| `Yd01 <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01>`_                                                            | Transformer Yd1    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image7| `Yd03 <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd03>`_                                                            | Transformer Yd3    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image8| `Yd05 <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd05>`_                                                            | Transformer Yd5    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image9| `Yd07 <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd07>`_                                                            | Transformer Yd7    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image10| `Yd09 <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd09>`_                                                           | Transformer Yd9    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image11| `Yd11 <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd11>`_                                                           | Transformer Yd11   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+

--------------

|image12| `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd>`_.Yd01
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yd1**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01D.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01

   Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01

Information
~~~~~~~~~~~

::

Transformer Yd1
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_
(Partial model of threephase transformer).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Type                                                                                                                                                | Name             | Default   | Description                                                               |
+=====================================================================================================================================================+==================+===========+===========================================================================+
| Real                                                                                                                                                | n                |           | Ratio primary voltage (line-to-line) / secondary voltage (line-to-line)   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort   | false     | Enable / disable (=fixed temperatures) thermal port                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Operational    |           | Operational temperature of primary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Operational    |           | Operational temperature of secondary resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R1               |           | Primary resistance per phase at TRef [Ohm]                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Ref            |           | Reference temperature of primary resistance [K]                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_1       |           | Temperature coefficient of primary resistance at 20 degC [1/K]            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L1sigma          |           | Primary stray inductance per phase [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R2               |           | Secondary resistance per phase at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Ref            |           | Reference temperature of secondary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_2       |           | Temperature coefficient of secondary resistance at 20 degC [1/K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L2sigma          |           | Secondary stray inductance per phase [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                   | plug1         | Primary plug     |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                   | plug2         | Secondary plug   |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_   | thermalPort   |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_                             | starpoint1    |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yd01 "Transformer Yd1"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yd01");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta2(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(Delta2.plug_p, r2.plug_n);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_n3, Delta2.plug_n);
      connect(core.plug_p2, l2sigma.plug_p);
    end Yd01;

--------------

|image13| `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd>`_.Yd03
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yd3**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd03D.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd03

   Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd03

Information
~~~~~~~~~~~

::

Transformer Yd3
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_
(Partial model of threephase transformer).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Type                                                                                                                                                | Name             | Default   | Description                                                               |
+=====================================================================================================================================================+==================+===========+===========================================================================+
| Real                                                                                                                                                | n                |           | Ratio primary voltage (line-to-line) / secondary voltage (line-to-line)   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort   | false     | Enable / disable (=fixed temperatures) thermal port                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Operational    |           | Operational temperature of primary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Operational    |           | Operational temperature of secondary resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R1               |           | Primary resistance per phase at TRef [Ohm]                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Ref            |           | Reference temperature of primary resistance [K]                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_1       |           | Temperature coefficient of primary resistance at 20 degC [1/K]            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L1sigma          |           | Primary stray inductance per phase [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R2               |           | Secondary resistance per phase at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Ref            |           | Reference temperature of secondary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_2       |           | Temperature coefficient of secondary resistance at 20 degC [1/K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L2sigma          |           | Secondary stray inductance per phase [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                   | plug1         | Primary plug     |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                   | plug2         | Secondary plug   |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_   | thermalPort   |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_                             | starpoint1    |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yd03 "Transformer Yd3"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yd03");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta2(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot2(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(Delta2.plug_n, r2.plug_n);
      connect(l2sigma.plug_p, Rot2.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_p2, Delta2.plug_p);
      connect(core.plug_n3, Rot2.plug_n);
    end Yd03;

--------------

|image14| `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd>`_.Yd05
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yd5**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd05D.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd05

   Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd05

Information
~~~~~~~~~~~

::

Transformer Yd5
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_
(Partial model of threephase transformer).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Type                                                                                                                                                | Name             | Default   | Description                                                               |
+=====================================================================================================================================================+==================+===========+===========================================================================+
| Real                                                                                                                                                | n                |           | Ratio primary voltage (line-to-line) / secondary voltage (line-to-line)   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort   | false     | Enable / disable (=fixed temperatures) thermal port                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Operational    |           | Operational temperature of primary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Operational    |           | Operational temperature of secondary resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R1               |           | Primary resistance per phase at TRef [Ohm]                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Ref            |           | Reference temperature of primary resistance [K]                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_1       |           | Temperature coefficient of primary resistance at 20 degC [1/K]            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L1sigma          |           | Primary stray inductance per phase [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R2               |           | Secondary resistance per phase at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Ref            |           | Reference temperature of secondary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_2       |           | Temperature coefficient of secondary resistance at 20 degC [1/K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L2sigma          |           | Secondary stray inductance per phase [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                   | plug1         | Primary plug     |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                   | plug2         | Secondary plug   |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_   | thermalPort   |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_                             | starpoint1    |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yd05 "Transformer Yd5"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yd05");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta2(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(Delta2.plug_n, r2.plug_n);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_n3, l2sigma.plug_p);
      connect(core.plug_p2, Delta2.plug_p);
    end Yd05;

--------------

|image15| `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd>`_.Yd07
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yd7**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd07D.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd07

   Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd07

Information
~~~~~~~~~~~

::

Transformer Yd7
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_
(Partial model of threephase transformer).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Type                                                                                                                                                | Name             | Default   | Description                                                               |
+=====================================================================================================================================================+==================+===========+===========================================================================+
| Real                                                                                                                                                | n                |           | Ratio primary voltage (line-to-line) / secondary voltage (line-to-line)   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort   | false     | Enable / disable (=fixed temperatures) thermal port                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Operational    |           | Operational temperature of primary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Operational    |           | Operational temperature of secondary resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R1               |           | Primary resistance per phase at TRef [Ohm]                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Ref            |           | Reference temperature of primary resistance [K]                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_1       |           | Temperature coefficient of primary resistance at 20 degC [1/K]            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L1sigma          |           | Primary stray inductance per phase [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R2               |           | Secondary resistance per phase at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Ref            |           | Reference temperature of secondary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_2       |           | Temperature coefficient of secondary resistance at 20 degC [1/K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L2sigma          |           | Secondary stray inductance per phase [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                   | plug1         | Primary plug     |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                   | plug2         | Secondary plug   |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_   | thermalPort   |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_                             | starpoint1    |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yd07 "Transformer Yd7"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yd07");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta2(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(Delta2.plug_p, r2.plug_n);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_p2, Delta2.plug_n);
      connect(l2sigma.plug_p, core.plug_n3);
    end Yd07;

--------------

|image16| `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd>`_.Yd09
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yd9**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd09D.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd09

   Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd09

Information
~~~~~~~~~~~

::

Transformer Yd9
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_
(Partial model of threephase transformer).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Type                                                                                                                                                | Name             | Default   | Description                                                               |
+=====================================================================================================================================================+==================+===========+===========================================================================+
| Real                                                                                                                                                | n                |           | Ratio primary voltage (line-to-line) / secondary voltage (line-to-line)   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort   | false     | Enable / disable (=fixed temperatures) thermal port                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Operational    |           | Operational temperature of primary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Operational    |           | Operational temperature of secondary resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R1               |           | Primary resistance per phase at TRef [Ohm]                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Ref            |           | Reference temperature of primary resistance [K]                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_1       |           | Temperature coefficient of primary resistance at 20 degC [1/K]            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L1sigma          |           | Primary stray inductance per phase [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R2               |           | Secondary resistance per phase at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Ref            |           | Reference temperature of secondary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_2       |           | Temperature coefficient of secondary resistance at 20 degC [1/K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L2sigma          |           | Secondary stray inductance per phase [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                   | plug1         | Primary plug     |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                   | plug2         | Secondary plug   |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_   | thermalPort   |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_                             | starpoint1    |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yd09 "Transformer Yd9"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yd09");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta2(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot2(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(Rot2.plug_p, l2sigma.plug_p);
      connect(Delta2.plug_n, r2.plug_n);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_p2, Rot2.plug_n);
      connect(core.plug_n3, Delta2.plug_p);
    end Yd09;

--------------

|image17| `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd <Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd>`_.Yd11
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yd11**

.. figure:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd11D.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd11

   Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd11

Information
~~~~~~~~~~~

::

Transformer Yd11
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_
(Partial model of threephase transformer).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Type                                                                                                                                                | Name             | Default   | Description                                                               |
+=====================================================================================================================================================+==================+===========+===========================================================================+
| Real                                                                                                                                                | n                |           | Ratio primary voltage (line-to-line) / secondary voltage (line-to-line)   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort   | false     | Enable / disable (=fixed temperatures) thermal port                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Operational    |           | Operational temperature of primary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Operational    |           | Operational temperature of secondary resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R1               |           | Primary resistance per phase at TRef [Ohm]                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Ref            |           | Reference temperature of primary resistance [K]                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_1       |           | Temperature coefficient of primary resistance at 20 degC [1/K]            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L1sigma          |           | Primary stray inductance per phase [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R2               |           | Secondary resistance per phase at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Ref            |           | Reference temperature of secondary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_2       |           | Temperature coefficient of secondary resistance at 20 degC [1/K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L2sigma          |           | Secondary stray inductance per phase [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                   | plug1         | Primary plug     |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                   | plug2         | Secondary plug   |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_   | thermalPort   |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_                             | starpoint1    |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yd11 "Transformer Yd11"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yd11");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta2(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(Delta2.plug_n, r2.plug_n);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_n3, Delta2.plug_p);
      connect(core.plug_p2, l2sigma.plug_p);
    end Yd11;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:53
2010.

.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd03| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd05| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd07| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd09| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd11| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |image6| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |image7| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |image8| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |image9| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |image10| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |image11| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01S.png
.. |image12| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png
.. |image13| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png
.. |image14| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png
.. |image15| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png
.. |image16| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png
.. |image17| image:: Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png
