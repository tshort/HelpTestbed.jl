==========================================================================
Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd
==========================================================================

`Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers>`_.Dd
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformers: primary D / secondary d**

Information
~~~~~~~~~~~

::

This package contains transformers primary D connected / secondary d
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
| |image6| `Dd00 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00>`_                                                                            | Transformer Dd0    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image7| `Dd02 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd02>`_                                                                            | Transformer Dd2    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image8| `Dd04 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd04>`_                                                                            | Transformer Dd4    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image9| `Dd06 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd06>`_                                                                            | Transformer Dd6    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image10| `Dd08 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd08>`_                                                                           | Transformer Dd8    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image11| `Dd10 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd10>`_                                                                           | Transformer Dd10   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+

--------------

|image12| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd>`_.Dd00
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dd0**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00

Information
~~~~~~~~~~~

::

Transformer Dd0
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

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dd00 "Transformer Dd0"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dd00");
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Delta2(final m=m);
    equation 
      connect(r1.plug_p, Delta1.plug_p);
      connect(Delta2.plug_p, r2.plug_n);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_p2, l2sigma.plug_p);
      connect(core.plug_n3, Delta2.plug_n);
    end Dd00;

--------------

|image13| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd>`_.Dd02
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dd2**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd02D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd02

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd02

Information
~~~~~~~~~~~

::

Transformer Dd2
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

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dd02 "Transformer Dd2"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dd02");
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Delta2(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Rot2(final m=m);
    equation 
      connect(r1.plug_p, Delta1.plug_p);
      connect(Delta2.plug_n, r2.plug_n);
      connect(l2sigma.plug_p, Rot2.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_p2, Delta2.plug_p);
      connect(core.plug_n3, Rot2.plug_n);
    end Dd02;

--------------

|image14| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd>`_.Dd04
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dd4**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd04D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd04

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd04

Information
~~~~~~~~~~~

::

Transformer Dd4
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

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dd04 "Transformer Dd4"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dd04");
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Delta2(final m=m);
    equation 
      connect(r1.plug_p, Delta1.plug_p);
      connect(Delta2.plug_n, r2.plug_n);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_p2, Delta2.plug_p);
      connect(core.plug_n3, l2sigma.plug_p);
    end Dd04;

--------------

|image15| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd>`_.Dd06
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dd6**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd06D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd06

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd06

Information
~~~~~~~~~~~

::

Transformer Dd6
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

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dd06 "Transformer Dd6"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dd06");
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Delta2(final m=m);
    equation 
      connect(Delta2.plug_p, r2.plug_n);
      connect(Delta1.plug_p, r1.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_n2, core.plug_p3);
      connect(Delta2.plug_n, core.plug_p2);
      connect(core.plug_n3, l2sigma.plug_p);
    end Dd06;

--------------

|image16| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd>`_.Dd08
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dd8**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd08D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd08

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd08

Information
~~~~~~~~~~~

::

Transformer Dd8
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

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dd08 "Transformer Dd8"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dd08");
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Rot2(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Delta2(final m=m);
    equation 
      connect(r1.plug_p, Delta1.plug_p);
      connect(Delta2.plug_n, r2.plug_n);
      connect(Rot2.plug_p, l2sigma.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, Delta1.plug_n);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_p2, Rot2.plug_n);
      connect(core.plug_n3, Delta2.plug_p);
    end Dd08;

--------------

|image17| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd>`_.Dd10
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Dd10**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd10D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd10

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd10

Information
~~~~~~~~~~~

::

Transformer Dd10
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

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Dd10 "Transformer Dd10"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Dd10");
      QuasiStationary.MultiPhase.Basic.Delta Delta1(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Delta2(final m=m);
    equation 
      connect(r1.plug_p, Delta1.plug_p);
      connect(Delta2.plug_n, r2.plug_n);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_p2, l2sigma.plug_p);
      connect(core.plug_n3, Delta2.plug_p);
    end Dd10;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:37
2010.

.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd02| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd04| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd06| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd08| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd10| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |image6| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |image7| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00S.png
.. |image12| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png
.. |image13| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png
.. |image14| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png
.. |image15| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png
.. |image16| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png
.. |image17| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png
