% Modelica.Electrical.Machines.BasicMachines.Transformers.Dy
% 
% 

[Modelica.Electrical.Machines.BasicMachines.Transformers](Modelica_Electrical_Machines_BasicMachines_Transformers.html#Modelica.Electrical.Machines.BasicMachines.Transformers).Dy
==================================================================================================================================================================================

**Transformers: primary D / secondary y**

Information
-----------

::

This package contains transformers primary D connected / secondary y
connected in all possbile vector groups.

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                              Descri
                                                                    ption
  ----------------------------------------------------------------- ------
  ![image6](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Dy.Dy01S.png)                                                    ormer
  [Dy01](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy Dy1
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy. 
  Dy01)                                                             

  ![image7](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Dy.Dy01S.png)                                                    ormer
  [Dy03](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy Dy3
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy. 
  Dy03)                                                             

  ![image8](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Dy.Dy01S.png)                                                    ormer
  [Dy05](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy Dy5
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy. 
  Dy05)                                                             

  ![image9](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Dy.Dy01S.png)                                                    ormer
  [Dy07](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy Dy7
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy. 
  Dy07)                                                             

  ![image10](Modelica.Electrical.Machines.BasicMachines.Transformer Transf
  s.Dy.Dy01S.png)                                                   ormer
  [Dy09](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy Dy9
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy. 
  Dy09)                                                             

  ![image11](Modelica.Electrical.Machines.BasicMachines.Transformer Transf
  s.Dy.Dy01S.png)                                                   ormer
  [Dy11](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy Dy11
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy. 
  Dy11)                                                             
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dy](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy).Dy01
==============================================================================================================================================================================================================================================================================

**Transformer Dy1**

Information
-----------

::

Transformer Dy1 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)
(Partial model of threephase transformer).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                       Name  Def Description
                                                   aul 
                                                   t   
  ------------------------------------------ ----- --- ---------------------
  Real                                       n         Ratio primary voltage
                                                       (line-to-line) /
                                                       secondary voltage
                                                       (line-to-line)

  Boolean                                    useTh fal Enable / disable
                                             ermal se  (=fixed temperatures)
                                             Port      thermal port

  Operational temperatures                             

  [Temperature](Modelica_SIunits.html#Modeli T1Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       primary resistance
                                                       [K]

  [Temperature](Modelica_SIunits.html#Modeli T2Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       secondary resistance
                                                       [K]

  **Nominal resistances and inductances**              

  [Resistance](Modelica_SIunits.html#Modelic R1        Primary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T1Ref     Reference temperature
  ca.SIunits.Temperature)                              of primary resistance
                                                       [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_1     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           primary resistance at
  ureCoefficient20)                                    20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L1sig     Primary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]

  [Resistance](Modelica_SIunits.html#Modelic R2        Secondary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T2Ref     Reference temperature
  ca.SIunits.Temperature)                              of secondary
                                                       resistance [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_2     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           secondary resistance
  ureCoefficient20)                                    at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L2sig     Secondary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name   Descrip
                                                                   tion
  --------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces. plug1  Primary
  html#Modelica.Electrical.MultiPhase.Interfaces.PositivePl        plug
  ug)                                                              

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces. plug2  Seconda
  html#Modelica.Electrical.MultiPhase.Interfaces.NegativePl        ry
  ug)                                                              plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Int therma 
  erfaces.html#Modelica.Electrical.Machines.Interfaces.Ther lPort  
  malPortTransformer)                                              

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Dy01 "Transformer Dy1"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dy01");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot2(final m=m);
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

* * * * *

![image13](Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dy](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy).Dy03
==============================================================================================================================================================================================================================================================================

**Transformer Dy3**

Information
-----------

::

Transformer Dy3 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)
(Partial model of threephase transformer).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                       Name  Def Description
                                                   aul 
                                                   t   
  ------------------------------------------ ----- --- ---------------------
  Real                                       n         Ratio primary voltage
                                                       (line-to-line) /
                                                       secondary voltage
                                                       (line-to-line)

  Boolean                                    useTh fal Enable / disable
                                             ermal se  (=fixed temperatures)
                                             Port      thermal port

  Operational temperatures                             

  [Temperature](Modelica_SIunits.html#Modeli T1Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       primary resistance
                                                       [K]

  [Temperature](Modelica_SIunits.html#Modeli T2Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       secondary resistance
                                                       [K]

  **Nominal resistances and inductances**              

  [Resistance](Modelica_SIunits.html#Modelic R1        Primary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T1Ref     Reference temperature
  ca.SIunits.Temperature)                              of primary resistance
                                                       [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_1     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           primary resistance at
  ureCoefficient20)                                    20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L1sig     Primary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]

  [Resistance](Modelica_SIunits.html#Modelic R2        Secondary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T2Ref     Reference temperature
  ca.SIunits.Temperature)                              of secondary
                                                       resistance [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_2     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           secondary resistance
  ureCoefficient20)                                    at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L2sig     Secondary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name   Descrip
                                                                   tion
  --------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces. plug1  Primary
  html#Modelica.Electrical.MultiPhase.Interfaces.PositivePl        plug
  ug)                                                              

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces. plug2  Seconda
  html#Modelica.Electrical.MultiPhase.Interfaces.NegativePl        ry
  ug)                                                              plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Int therma 
  erfaces.html#Modelica.Electrical.Machines.Interfaces.Ther lPort  
  malPortTransformer)                                              

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Dy03 "Transformer Dy3"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dy03");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot2(final m=m);
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

* * * * *

![image14](Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dy](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy).Dy05
==============================================================================================================================================================================================================================================================================

**Transformer Dy5**

Information
-----------

::

Transformer Dy5 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)
(Partial model of threephase transformer).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                       Name  Def Description
                                                   aul 
                                                   t   
  ------------------------------------------ ----- --- ---------------------
  Real                                       n         Ratio primary voltage
                                                       (line-to-line) /
                                                       secondary voltage
                                                       (line-to-line)

  Boolean                                    useTh fal Enable / disable
                                             ermal se  (=fixed temperatures)
                                             Port      thermal port

  Operational temperatures                             

  [Temperature](Modelica_SIunits.html#Modeli T1Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       primary resistance
                                                       [K]

  [Temperature](Modelica_SIunits.html#Modeli T2Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       secondary resistance
                                                       [K]

  **Nominal resistances and inductances**              

  [Resistance](Modelica_SIunits.html#Modelic R1        Primary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T1Ref     Reference temperature
  ca.SIunits.Temperature)                              of primary resistance
                                                       [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_1     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           primary resistance at
  ureCoefficient20)                                    20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L1sig     Primary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]

  [Resistance](Modelica_SIunits.html#Modelic R2        Secondary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T2Ref     Reference temperature
  ca.SIunits.Temperature)                              of secondary
                                                       resistance [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_2     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           secondary resistance
  ureCoefficient20)                                    at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L2sig     Secondary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name   Descrip
                                                                   tion
  --------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces. plug1  Primary
  html#Modelica.Electrical.MultiPhase.Interfaces.PositivePl        plug
  ug)                                                              

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces. plug2  Seconda
  html#Modelica.Electrical.MultiPhase.Interfaces.NegativePl        ry
  ug)                                                              plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Int therma 
  erfaces.html#Modelica.Electrical.Machines.Interfaces.Ther lPort  
  malPortTransformer)                                              

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Dy05 "Transformer Dy5"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dy05");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
    equation 
      connect(star2.pin_n, starpoint2);
      connect(Delta1.plug_p, r1.plug_p);
      connect(Delta1.plug_n, core.plug_n1);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n2, core.plug_p3);
      connect(l2sigma.plug_p, core.plug_n3);
      connect(core.plug_p2, star2.plug_p);
    end Dy05;

* * * * *

![image15](Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dy](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy).Dy07
==============================================================================================================================================================================================================================================================================

**Transformer Dy7**

Information
-----------

::

Transformer Dy7 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)
(Partial model of threephase transformer).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                       Name  Def Description
                                                   aul 
                                                   t   
  ------------------------------------------ ----- --- ---------------------
  Real                                       n         Ratio primary voltage
                                                       (line-to-line) /
                                                       secondary voltage
                                                       (line-to-line)

  Boolean                                    useTh fal Enable / disable
                                             ermal se  (=fixed temperatures)
                                             Port      thermal port

  Operational temperatures                             

  [Temperature](Modelica_SIunits.html#Modeli T1Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       primary resistance
                                                       [K]

  [Temperature](Modelica_SIunits.html#Modeli T2Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       secondary resistance
                                                       [K]

  **Nominal resistances and inductances**              

  [Resistance](Modelica_SIunits.html#Modelic R1        Primary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T1Ref     Reference temperature
  ca.SIunits.Temperature)                              of primary resistance
                                                       [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_1     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           primary resistance at
  ureCoefficient20)                                    20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L1sig     Primary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]

  [Resistance](Modelica_SIunits.html#Modelic R2        Secondary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T2Ref     Reference temperature
  ca.SIunits.Temperature)                              of secondary
                                                       resistance [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_2     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           secondary resistance
  ureCoefficient20)                                    at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L2sig     Secondary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name   Descrip
                                                                   tion
  --------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces. plug1  Primary
  html#Modelica.Electrical.MultiPhase.Interfaces.PositivePl        plug
  ug)                                                              

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces. plug2  Seconda
  html#Modelica.Electrical.MultiPhase.Interfaces.NegativePl        ry
  ug)                                                              plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Int therma 
  erfaces.html#Modelica.Electrical.Machines.Interfaces.Ther lPort  
  malPortTransformer)                                              

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Dy07 "Transformer Dy7"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dy07");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot2(final m=m);
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

* * * * *

![image16](Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dy](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy).Dy09
==============================================================================================================================================================================================================================================================================

**Transformer Dy9**

Information
-----------

::

Transformer Dy9 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)
(Partial model of threephase transformer).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                       Name  Def Description
                                                   aul 
                                                   t   
  ------------------------------------------ ----- --- ---------------------
  Real                                       n         Ratio primary voltage
                                                       (line-to-line) /
                                                       secondary voltage
                                                       (line-to-line)

  Boolean                                    useTh fal Enable / disable
                                             ermal se  (=fixed temperatures)
                                             Port      thermal port

  Operational temperatures                             

  [Temperature](Modelica_SIunits.html#Modeli T1Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       primary resistance
                                                       [K]

  [Temperature](Modelica_SIunits.html#Modeli T2Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       secondary resistance
                                                       [K]

  **Nominal resistances and inductances**              

  [Resistance](Modelica_SIunits.html#Modelic R1        Primary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T1Ref     Reference temperature
  ca.SIunits.Temperature)                              of primary resistance
                                                       [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_1     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           primary resistance at
  ureCoefficient20)                                    20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L1sig     Primary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]

  [Resistance](Modelica_SIunits.html#Modelic R2        Secondary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T2Ref     Reference temperature
  ca.SIunits.Temperature)                              of secondary
                                                       resistance [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_2     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           secondary resistance
  ureCoefficient20)                                    at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L2sig     Secondary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name   Descrip
                                                                   tion
  --------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces. plug1  Primary
  html#Modelica.Electrical.MultiPhase.Interfaces.PositivePl        plug
  ug)                                                              

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces. plug2  Seconda
  html#Modelica.Electrical.MultiPhase.Interfaces.NegativePl        ry
  ug)                                                              plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Int therma 
  erfaces.html#Modelica.Electrical.Machines.Interfaces.Ther lPort  
  malPortTransformer)                                              

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Dy09 "Transformer Dy9"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dy09");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot2(final m=m);
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

* * * * *

![image17](Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dy](Modelica_Electrical_Machines_BasicMachines_Transformers_Dy.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dy).Dy11
==============================================================================================================================================================================================================================================================================

**Transformer Dy11**

Information
-----------

::

Transformer Dy11 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)
(Partial model of threephase transformer).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                       Name  Def Description
                                                   aul 
                                                   t   
  ------------------------------------------ ----- --- ---------------------
  Real                                       n         Ratio primary voltage
                                                       (line-to-line) /
                                                       secondary voltage
                                                       (line-to-line)

  Boolean                                    useTh fal Enable / disable
                                             ermal se  (=fixed temperatures)
                                             Port      thermal port

  Operational temperatures                             

  [Temperature](Modelica_SIunits.html#Modeli T1Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       primary resistance
                                                       [K]

  [Temperature](Modelica_SIunits.html#Modeli T2Ope     Operational
  ca.SIunits.Temperature)                    ratio     temperature of
                                             nal       secondary resistance
                                                       [K]

  **Nominal resistances and inductances**              

  [Resistance](Modelica_SIunits.html#Modelic R1        Primary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T1Ref     Reference temperature
  ca.SIunits.Temperature)                              of primary resistance
                                                       [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_1     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           primary resistance at
  ureCoefficient20)                                    20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L1sig     Primary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]

  [Resistance](Modelica_SIunits.html#Modelic R2        Secondary resistance
  a.SIunits.Resistance)                                per phase at TRef
                                                       [Ohm]

  [Temperature](Modelica_SIunits.html#Modeli T2Ref     Reference temperature
  ca.SIunits.Temperature)                              of secondary
                                                       resistance [K]

  [LinearTemperatureCoefficient20](Modelica_ alpha     Temperature
  Electrical_Machines_Thermal.html#Modelica. 20\_2     coefficient of
  Electrical.Machines.Thermal.LinearTemperat           secondary resistance
  ureCoefficient20)                                    at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Modelic L2sig     Secondary stray
  a.SIunits.Inductance)                      ma        inductance per phase
                                                       [H]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name   Descrip
                                                                   tion
  --------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces. plug1  Primary
  html#Modelica.Electrical.MultiPhase.Interfaces.PositivePl        plug
  ug)                                                              

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces. plug2  Seconda
  html#Modelica.Electrical.MultiPhase.Interfaces.NegativePl        ry
  ug)                                                              plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Int therma 
  erfaces.html#Modelica.Electrical.Machines.Interfaces.Ther lPort  
  malPortTransformer)                                              

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Dy11 "Transformer Dy11"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dy11");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
    equation 
      connect(star2.pin_n, starpoint2);
      connect(r1.plug_p, Delta1.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_n3, star2.plug_p);
      connect(core.plug_p2, l2sigma.plug_p);
    end Dy11;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:57 2010.
