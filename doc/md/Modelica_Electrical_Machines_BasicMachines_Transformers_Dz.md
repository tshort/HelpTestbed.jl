% Modelica.Electrical.Machines.BasicMachines.Transformers.Dz
% 
% 

[Modelica.Electrical.Machines.BasicMachines.Transformers](Modelica_Electrical_Machines_BasicMachines_Transformers.html#Modelica.Electrical.Machines.BasicMachines.Transformers).Dz
==================================================================================================================================================================================

**Transformers: primary D / secondary ziag-zag**

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
  Name                                                              Descri
                                                                    ption
  ----------------------------------------------------------------- ------
  ![image6](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Dz.Dz00S.png)                                                    ormer
  [Dz00](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz Dz0
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz. 
  Dz00)                                                             

  ![image7](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Dz.Dz00S.png)                                                    ormer
  [Dz02](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz Dz2
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz. 
  Dz02)                                                             

  ![image8](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Dz.Dz00S.png)                                                    ormer
  [Dz04](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz Dz4
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz. 
  Dz04)                                                             

  ![image9](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Dz.Dz00S.png)                                                    ormer
  [Dz06](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz Dz6
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz. 
  Dz06)                                                             

  ![image10](Modelica.Electrical.Machines.BasicMachines.Transformer Transf
  s.Dz.Dz00S.png)                                                   ormer
  [Dz08](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz Dz8
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz. 
  Dz08)                                                             

  ![image11](Modelica.Electrical.Machines.BasicMachines.Transformer Transf
  s.Dz.Dz00S.png)                                                   ormer
  [Dz10](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz Dz10
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz. 
  Dz10)                                                             
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz00I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dz](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz).Dz00
==============================================================================================================================================================================================================================================================================

**Transformer Dz0**

Information
-----------

::

Transformer Dz0 Typical parameters see:
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

    model Dz00 "Transformer Dz0"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dz00");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot22(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
    equation 
      connect(star2.pin_n,starpoint2);
      connect(r1.plug_p, Delta1.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_p2, Rot21.plug_n);
      connect(core.plug_p3, Rot21.plug_p);
      connect(l2sigma.plug_p, Rot22.plug_p);
      connect(Rot22.plug_n, core.plug_n2);
      connect(core.plug_n3, star2.plug_p);
    end Dz00;

* * * * *

![image13](Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz00I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dz](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz).Dz02
==============================================================================================================================================================================================================================================================================

**Transformer Dz2**

Information
-----------

::

Transformer Dz2 Typical parameters see:
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

    model Dz02 "Transformer Dz2"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dz02");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot22(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
    equation 
      connect(star2.pin_n,starpoint2);
      connect(r1.plug_p, Delta1.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_p2, Rot21.plug_p);
      connect(core.plug_p3, Rot21.plug_n);
      connect(l2sigma.plug_p, Rot22.plug_p);
      connect(Rot22.plug_n, core.plug_n2);
      connect(core.plug_n3, star2.plug_p);
    end Dz02;

* * * * *

![image14](Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz00I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dz](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz).Dz04
==============================================================================================================================================================================================================================================================================

**Transformer Dz4**

Information
-----------

::

Transformer Dz4 Typical parameters see:
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

    model Dz04 "Transformer Dz4"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dz04");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
    equation 
      connect(star2.pin_n,starpoint2);
      connect(r1.plug_p, Delta1.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_p2, Rot21.plug_n);
      connect(core.plug_p3, Rot21.plug_p);
      connect(l2sigma.plug_p, core.plug_n2);
      connect(core.plug_n3, star2.plug_p);
    end Dz04;

* * * * *

![image15](Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz00I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dz](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz).Dz06
==============================================================================================================================================================================================================================================================================

**Transformer Dz6**

Information
-----------

::

Transformer Dz6 Typical parameters see:
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

    model Dz06 "Transformer Dz6"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dz06");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
    equation 
      connect(star2.pin_n,starpoint2);
      connect(r1.plug_p, Delta1.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_p2, Rot21.plug_p);
      connect(core.plug_p3, Rot21.plug_n);
      connect(core.plug_n3, star2.plug_p);
      connect(l2sigma.plug_p, core.plug_n2);
    end Dz06;

* * * * *

![image16](Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz00I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dz](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz).Dz08
==============================================================================================================================================================================================================================================================================

**Transformer Dz8**

Information
-----------

::

Transformer Dz8 Typical parameters see:
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

    model Dz08 "Transformer Dz8"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dz08");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot22(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
    equation 
      connect(star2.pin_n,starpoint2);
      connect(r1.plug_p, Delta1.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_p2, Rot21.plug_n);
      connect(core.plug_p3, Rot21.plug_p);
      connect(core.plug_n3, star2.plug_p);
      connect(l2sigma.plug_p, Rot22.plug_n);
      connect(Rot22.plug_p, core.plug_n2);
    end Dz08;

* * * * *

![image17](Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz00I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Dz](Modelica_Electrical_Machines_BasicMachines_Transformers_Dz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Dz).Dz10
==============================================================================================================================================================================================================================================================================

**Transformer Dz10**

Information
-----------

::

Transformer Dz10 Typical parameters see:
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

    model Dz10 "Transformer Dz10"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Dz10");
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot22(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m);
    equation 
      connect(star2.pin_n,starpoint2);
      connect(r1.plug_p, Delta1.plug_p);
      connect(l1sigma.plug_n, core.plug_p1);
      connect(Delta1.plug_n, core.plug_n1);
      connect(core.plug_p2, Rot21.plug_p);
      connect(core.plug_p3, Rot21.plug_n);
      connect(core.plug_n3, star2.plug_p);
      connect(l2sigma.plug_p, Rot22.plug_n);
      connect(Rot22.plug_p, core.plug_n2);
    end Dz10;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:01 2010.
