% Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy
% 
% 

[Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers).Yy
==================================================================================================================================================================================================================================

**Transformers: primary Y / secondary y**

Information
-----------

::

This package contains transformers primary Y connected / secondary y
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
  es.Transformers.Yy.Yy00S.png)                                      forme
  [Yy00](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines. Yy0
  BasicMachines.Transformers.Yy.Yy00)                                

  ![image7](Modelica.Electrical.QuasiStationary.Machines.BasicMachin Trans
  es.Transformers.Yy.Yy00S.png)                                      forme
  [Yy02](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines. Yy2
  BasicMachines.Transformers.Yy.Yy02)                                

  ![image8](Modelica.Electrical.QuasiStationary.Machines.BasicMachin Trans
  es.Transformers.Yy.Yy00S.png)                                      forme
  [Yy04](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines. Yy4
  BasicMachines.Transformers.Yy.Yy04)                                

  ![image9](Modelica.Electrical.QuasiStationary.Machines.BasicMachin Trans
  es.Transformers.Yy.Yy00S.png)                                      forme
  [Yy06](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines. Yy6
  BasicMachines.Transformers.Yy.Yy06)                                

  ![image10](Modelica.Electrical.QuasiStationary.Machines.BasicMachi Trans
  nes.Transformers.Yy.Yy00S.png)                                     forme
  [Yy08](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines. Yy8
  BasicMachines.Transformers.Yy.Yy08)                                

  ![image11](Modelica.Electrical.QuasiStationary.Machines.BasicMachi Trans
  nes.Transformers.Yy.Yy00S.png)                                     forme
  [Yy10](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_ r
  Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines. Yy10
  BasicMachines.Transformers.Yy.Yy10)                                
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy.Yy00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy).Yy00
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Yy0**

Information
-----------

::

Transformer Yy0 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int1   
  nglePhase.Interfaces.NegativePin)                                 

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int2   
  nglePhase.Interfaces.NegativePin)                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Yy00 "Transformer Yy0"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yy00");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n, starpoint2);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_p2, l2sigma.plug_p);
      connect(core.plug_n3, star2.plug_p);
    end Yy00;

* * * * *

![image13](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy.Yy00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy).Yy02
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Yy2**

Information
-----------

::

Transformer Yy2 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int1   
  nglePhase.Interfaces.NegativePin)                                 

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int2   
  nglePhase.Interfaces.NegativePin)                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Yy02 "Transformer Yy2"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yy02");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Rot2(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n, starpoint2);
      connect(l2sigma.plug_p, Rot2.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n3, Rot2.plug_n);
      connect(core.plug_p2, star2.plug_p);
    end Yy02;

* * * * *

![image14](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy.Yy00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy).Yy04
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Yy4**

Information
-----------

::

Transformer Yy4 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int1   
  nglePhase.Interfaces.NegativePin)                                 

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int2   
  nglePhase.Interfaces.NegativePin)                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Yy04 "Transformer Yy4"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yy04");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Rot2(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n, starpoint2);
      connect(Rot2.plug_n, l2sigma.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_p2, Rot2.plug_p);
      connect(core.plug_n3, star2.plug_p);
    end Yy04;

* * * * *

![image15](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy.Yy00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy).Yy06
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Yy6**

Information
-----------

::

Transformer Yy6 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int1   
  nglePhase.Interfaces.NegativePin)                                 

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int2   
  nglePhase.Interfaces.NegativePin)                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Yy06 "Transformer Yy6"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yy06");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n, starpoint2);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(l2sigma.plug_p, core.plug_n3);
      connect(core.plug_p2, star2.plug_p);
    end Yy06;

* * * * *

![image16](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy.Yy00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy).Yy08
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Yy8**

Information
-----------

::

Transformer Yy8 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int1   
  nglePhase.Interfaces.NegativePin)                                 

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int2   
  nglePhase.Interfaces.NegativePin)                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Yy08 "Transformer Yy8"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yy08");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Rot2(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n, starpoint2);
      connect(Rot2.plug_p, l2sigma.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_p2, Rot2.plug_n);
      connect(core.plug_n3, star2.plug_p);
    end Yy08;

* * * * *

![image17](Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy.Yy00I.png) [Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy](Modelica_Electrical_QuasiStationary_Machines_BasicMachines_Transformers_Yy.html#Modelica.Electrical.QuasiStationary.Machines.BasicMachines.Transformers.Yy).Yy10
==============================================================================================================================================================================================================================================================================================================================================

**Transformer Yy10**

Information
-----------

::

Transformer Yy10 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int1   
  nglePhase.Interfaces.NegativePin)                                 

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePh starpo 
  ase_Interfaces.html#Modelica.Electrical.QuasiStationary.Si int2   
  nglePhase.Interfaces.NegativePin)                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Yy10 "Transformer Yy10"

      extends QuasiStationary.Machines.Interfaces.PartialBasicTransformer(
          final VectorGroup="Yy10");
      QuasiStationary.MultiPhase.Basic.Star star1(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint1;
      QuasiStationary.MultiPhase.Basic.Star star2(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin starpoint2;
      QuasiStationary.MultiPhase.Basic.Delta Rot2(final m=m);
    equation 
      connect(star1.pin_n, starpoint1);
      connect(star2.pin_n, starpoint2);
      connect(l2sigma.plug_p, Rot2.plug_n);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(core.plug_n1, star1.plug_p);
      connect(core.plug_n2, core.plug_p3);
      connect(core.plug_n3, Rot2.plug_p);
      connect(core.plug_p2, star2.plug_p);
    end Yy10;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:27 2010.
