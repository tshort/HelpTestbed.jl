==========================================================================
Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy
==========================================================================

`Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers>`_.Dy
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformers: primary D / secondary y**

Information
~~~~~~~~~~~

::

This package contains transformers primary D connected / secondary y
connected in all possbile vector groups.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| Name                                                                                                                                                                                                                                                          | Description        |
+===============================================================================================================================================================================================================================================================+====================+
| |image6| `Dy01 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01>`_                                                                            | Transformer Dy1    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image7| `Dy03 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy03>`_                                                                            | Transformer Dy3    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image8| `Dy05 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy05>`_                                                                            | Transformer Dy5    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image9| `Dy07 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy07>`_                                                                            | Transformer Dy7    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image10| `Dy09 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy09>`_                                                                           | Transformer Dy9    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image11| `Dy11 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy11>`_                                                                           | Transformer Dy11   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+

--------------

|image12| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy>`_.Dy01
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dy1**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01

Information
~~~~~~~~~~~

::

Transformer Dy1
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`QuasiStationary.Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer>`_
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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug1         | Primary plug     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug2         | Secondary plug   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_                   | thermalPort   |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dy01 "Transformer Dy1"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dy01");
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Rot2(final m=m);
    equation 
      connect(star2.pin_n, starpoint2);
      connect(l2sigma.plug_p, Rot2.plug_p);
      connect(Delta1.plug_p, r1.plug_p);
      connect(Delta1.plug_n, core.plug_n1);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_n3, Rot2.plug_n);
      connect(core.plug_p2, star2.plug_p);
    end Dy01;

--------------

|image13| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy>`_.Dy03
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dy3**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy03D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy03

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy03

Information
~~~~~~~~~~~

::

Transformer Dy3
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`QuasiStationary.Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer>`_
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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug1         | Primary plug     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug2         | Secondary plug   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_                   | thermalPort   |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dy03 "Transformer Dy3"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dy03");
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Rot2(final m=m);
    equation 
      connect(star2.pin_n, starpoint2);
      connect(Rot2.plug_n, l2sigma.plug_p);
      connect(Delta1.plug_p, r1.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_p2, Rot2.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_n3, star2.plug_p);
    end Dy03;

--------------

|image14| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy>`_.Dy05
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dy5**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy05D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy05

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy05

Information
~~~~~~~~~~~

::

Transformer Dy5
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`QuasiStationary.Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer>`_
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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug1         | Primary plug     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug2         | Secondary plug   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_                   | thermalPort   |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dy05 "Transformer Dy5"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dy05");
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
    equation 
      connect(star2.pin_n, starpoint2);
      connect(Delta1.plug_p, r1.plug_p);
      connect(Delta1.plug_n, core.plug_n1);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n2, core.plug_p3);
      connect(l2sigma.plug_p, core.plug_n3);
      connect(core.plug_p2, star2.plug_p);
    end Dy05;

--------------

|image15| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy>`_.Dy07
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dy7**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy07D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy07

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy07

Information
~~~~~~~~~~~

::

Transformer Dy7
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`QuasiStationary.Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer>`_
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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug1         | Primary plug     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug2         | Secondary plug   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_                   | thermalPort   |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dy07 "Transformer Dy7"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dy07");
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Rot2(final m=m);
    equation 
      connect(star2.pin_n, starpoint2);
      connect(r1.plug_p, Delta1.plug_p);
      connect(Rot2.plug_p, l2sigma.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_n3, star2.plug_p);
      connect(core.plug_p2, Rot2.plug_n);
    end Dy07;

--------------

|image16| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy>`_.Dy09
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dy9**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy09D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy09

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy09

Information
~~~~~~~~~~~

::

Transformer Dy9
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`QuasiStationary.Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer>`_
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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug1         | Primary plug     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug2         | Secondary plug   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_                   | thermalPort   |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dy09 "Transformer Dy9"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dy09");
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Rot2(final m=m);
    equation 
      connect(star2.pin_n, starpoint2);
      connect(r1.plug_p, Delta1.plug_p);
      connect(l2sigma.plug_p, Rot2.plug_n);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_n3, Rot2.plug_p);
      connect(core.plug_p2, star2.plug_p);
    end Dy09;

--------------

|image17| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy>`_.Dy11
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dy11**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy11D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy11

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy11

Information
~~~~~~~~~~~

::

Transformer Dy11
Typical parameters see:
`PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_

::

Extends from
`QuasiStationary.Machines.Interfaces.PartialBasicTransformer <Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer>`_
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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug1         | Primary plug     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug2         | Secondary plug   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_                   | thermalPort   |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dy11 "Transformer Dy11"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dy11");
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
    equation 
      connect(star2.pin_n, starpoint2);
      connect(r1.plug_p, Delta1.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_n3, star2.plug_p);
      connect(core.plug_p2, l2sigma.plug_p);
    end Dy11;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:35
2010.

.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy03| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy05| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy07| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy09| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy11| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |image6| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |image7| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01S.png
.. |image12| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01I.png
.. |image13| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01I.png
.. |image14| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01I.png
.. |image15| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01I.png
.. |image16| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01I.png
.. |image17| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dy.Dy01I.png
