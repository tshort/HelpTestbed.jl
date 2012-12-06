==========================================================================
Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz
==========================================================================

`Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers>`_.Yz
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformers: primary Y / secondary zig-zag**

Information
~~~~~~~~~~~

::

This package contains transformers primary Y connected / secondary
zig-zag connected in all possbile vector groups.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| Name                                                                                                                                                                                                                                                          | Description        |
+===============================================================================================================================================================================================================================================================+====================+
| |image6| `Yz01 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01>`_                                                                            | Transformer Yz1    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image7| `Yz03 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz03>`_                                                                            | Transformer Yz3    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image8| `Yz05 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz05>`_                                                                            | Transformer Yz5    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image9| `Yz07 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz07>`_                                                                            | Transformer Yz7    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image10| `Yz09 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz09>`_                                                                           | Transformer Yz9    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image11| `Yz11 <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz11>`_                                                                           | Transformer Yz11   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+

--------------

|image12| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz>`_.Yz01
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yz1**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01

Information
~~~~~~~~~~~

::

Transformer Yz1
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
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint1    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yz01 "Transformer Yz1"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yz01");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Rot21(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Rot22(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n,starpoint2);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_p2, Rot21.plug_n);
      connect(core.plug_p3, Rot21.plug_p);
      connect(l2sigma.plug_p, Rot22.plug_p);
      connect(Rot22.plug_n, core.plug_n2);
      connect(core.plug_n3, star2.plug_p);
    end Yz01;

--------------

|image13| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz>`_.Yz03
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yz3**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz03D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz03

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz03

Information
~~~~~~~~~~~

::

Transformer Yz3
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
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint1    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yz03 "Transformer Yz3"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yz03");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Rot21(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Rot22(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n,starpoint2);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_p2, Rot21.plug_p);
      connect(core.plug_p3, Rot21.plug_n);
      connect(l2sigma.plug_p, Rot22.plug_p);
      connect(Rot22.plug_n, core.plug_n2);
      connect(core.plug_n3, star2.plug_p);
    end Yz03;

--------------

|image14| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz>`_.Yz05
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yz5**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz05D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz05

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz05

Information
~~~~~~~~~~~

::

Transformer Yz5
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
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint1    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yz05 "Transformer Yz5"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yz05");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Rot21(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n,starpoint2);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_p2, Rot21.plug_n);
      connect(core.plug_p3, Rot21.plug_p);
      connect(core.plug_n3, star2.plug_p);
      connect(l2sigma.plug_p, core.plug_n2);
    end Yz05;

--------------

|image15| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz>`_.Yz07
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yz7**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz07D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz07

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz07

Information
~~~~~~~~~~~

::

Transformer Yz7
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
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint1    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yz07 "Transformer Yz7"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yz07");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Rot21(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n,starpoint2);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_p2, Rot21.plug_p);
      connect(core.plug_p3, Rot21.plug_n);
      connect(l2sigma.plug_p, core.plug_n2);
      connect(core.plug_n3, star2.plug_p);
    end Yz07;

--------------

|image16| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz>`_.Yz09
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yz9**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz09D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz09

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz09

Information
~~~~~~~~~~~

::

Transformer Yz9
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
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint1    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yz09 "Transformer Yz9"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yz09");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Rot21(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Rot22(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n,starpoint2);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_p2, Rot21.plug_n);
      connect(core.plug_p3, Rot21.plug_p);
      connect(core.plug_n3, star2.plug_p);
      connect(l2sigma.plug_p, Rot22.plug_n);
      connect(Rot22.plug_p, core.plug_n2);
    end Yz09;

--------------

|image17| `Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz <Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz>`_.Yz11
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transformer Yz11**

.. figure:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz11D.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz11

   Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz11

Information
~~~~~~~~~~~

::

Transformer Yz11
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
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint1    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | starpoint2    |                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Yz11 "Transformer Yz11"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yz11");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Rot21(final m=m);
      QuasiStationary.MultiPhase.Basic.Delta Rot22(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n,starpoint2);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_p2, Rot21.plug_p);
      connect(core.plug_p3, Rot21.plug_n);
      connect(l2sigma.plug_p, Rot22.plug_n);
      connect(Rot22.plug_p, core.plug_n2);
      connect(core.plug_n3, star2.plug_p);
    end Yz11;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:32
2010.

.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz03| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz05| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz07| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz09| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz11| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |image6| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |image7| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01S.png
.. |image12| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01I.png
.. |image13| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01I.png
.. |image14| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01I.png
.. |image15| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01I.png
.. |image16| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01I.png
.. |image17| image:: Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yz.Yz01I.png
