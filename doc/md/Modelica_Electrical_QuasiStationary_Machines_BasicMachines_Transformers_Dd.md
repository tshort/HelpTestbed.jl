% Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd
% 
% 

[Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers).Dd
==================================================================================================================================================================================================================================

**Transformers: primary D / secondary d**

Information
-----------

::

This package contains transformers primary D connected / secondary d
connected in all possbile vector groups.

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                               Descr
                                                                     iptio
                                                                     n
  ------------------------------------------------------------------ -----
  ![image6](Modelica.Electrical.QuasiStationary.Machines.BasicMachin Trans
  es.Transformers.Dd.Dd00S.png)                                      forme
  [Dd00](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines. Dd0
  BasicMachines.Transformers.Dd.Dd00)                                

  ![image7](Modelica.Electrical.QuasiStationary.Machines.BasicMachin Trans
  es.Transformers.Dd.Dd00S.png)                                      forme
  [Dd02](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines. Dd2
  BasicMachines.Transformers.Dd.Dd02)                                

  ![image8](Modelica.Electrical.QuasiStationary.Machines.BasicMachin Trans
  es.Transformers.Dd.Dd00S.png)                                      forme
  [Dd04](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines. Dd4
  BasicMachines.Transformers.Dd.Dd04)                                

  ![image9](Modelica.Electrical.QuasiStationary.Machines.BasicMachin Trans
  es.Transformers.Dd.Dd00S.png)                                      forme
  [Dd06](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines. Dd6
  BasicMachines.Transformers.Dd.Dd06)                                

  ![image10](Modelica.Electrical.QuasiStationary.Machines.BasicMachi Trans
  nes.Transformers.Dd.Dd00S.png)                                     forme
  [Dd08](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines. Dd8
  BasicMachines.Transformers.Dd.Dd08)                                

  ![image11](Modelica.Electrical.QuasiStationary.Machines.BasicMachi Trans
  nes.Transformers.Dd.Dd00S.png)                                     forme
  [Dd10](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines. Dd10
  BasicMachines.Transformers.Dd.Dd10)                                
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd).Dd00
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Dd0**

Information
-----------

::

Transformer Dd0 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[QuasiStationary.Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer)
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

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPh plug1  Primary
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        plug
  ltiPhase.Interfaces.PositivePlug)                                 

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPh plug2  Seconda
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        ry
  ltiPhase.Interfaces.NegativePlug)                                 plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Inte therma 
  rfaces.html#Modelica.Electrical.Machines.Interfaces.Therma lPort  
  lPortTransformer)                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image13](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd).Dd02
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Dd2**

Information
-----------

::

Transformer Dd2 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[QuasiStationary.Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer)
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

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPh plug1  Primary
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        plug
  ltiPhase.Interfaces.PositivePlug)                                 

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPh plug2  Seconda
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        ry
  ltiPhase.Interfaces.NegativePlug)                                 plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Inte therma 
  rfaces.html#Modelica.Electrical.Machines.Interfaces.Therma lPort  
  lPortTransformer)                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image14](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd).Dd04
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Dd4**

Information
-----------

::

Transformer Dd4 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[QuasiStationary.Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer)
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

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPh plug1  Primary
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        plug
  ltiPhase.Interfaces.PositivePlug)                                 

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPh plug2  Seconda
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        ry
  ltiPhase.Interfaces.NegativePlug)                                 plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Inte therma 
  rfaces.html#Modelica.Electrical.Machines.Interfaces.Therma lPort  
  lPortTransformer)                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image15](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd).Dd06
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Dd6**

Information
-----------

::

Transformer Dd6 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[QuasiStationary.Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer)
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

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPh plug1  Primary
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        plug
  ltiPhase.Interfaces.PositivePlug)                                 

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPh plug2  Seconda
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        ry
  ltiPhase.Interfaces.NegativePlug)                                 plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Inte therma 
  rfaces.html#Modelica.Electrical.Machines.Interfaces.Therma lPort  
  lPortTransformer)                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image16](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd).Dd08
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Dd8**

Information
-----------

::

Transformer Dd8 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[QuasiStationary.Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer)
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

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPh plug1  Primary
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        plug
  ltiPhase.Interfaces.PositivePlug)                                 

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPh plug2  Seconda
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        ry
  ltiPhase.Interfaces.NegativePlug)                                 plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Inte therma 
  rfaces.html#Modelica.Electrical.Machines.Interfaces.Therma lPort  
  lPortTransformer)                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image17](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd.Dd00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Dd.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Dd).Dd10
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Dd10**

Information
-----------

::

Transformer Dd10 Typical parameters see:
[PartialBasicTransformer](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer)

::

Extends from
[QuasiStationary.Machines.Interfaces.PartialBasicTransformer](Modelica_Electrical_QuasiStationary_Machines_Interfaces.html#Modelica.Electrical.QuasiStationary.Machines.Interfaces.PartialBasicTransformer)
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

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPh plug1  Primary
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        plug
  ltiPhase.Interfaces.PositivePlug)                                 

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPh plug2  Seconda
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Mu        ry
  ltiPhase.Interfaces.NegativePlug)                                 plug

  [ThermalPortTransformer](Modelica_Electrical_Machines_Inte therma 
  rfaces.html#Modelica.Electrical.Machines.Interfaces.Therma lPort  
  lPortTransformer)                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:37 2010.
