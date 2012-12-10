% Modelica.Electrical.Machines.BasicMachines.Transformers.Yd
% 
% 

[Modelica.Electrical.Machines.BasicMachines.Transformers](Modelica_Electrical_Machines_BasicMachines_Transformers.html#Modelica.Electrical.Machines.BasicMachines.Transformers).Yd
==================================================================================================================================================================================

**Transformers: primary Y / secondary d**

Information
-----------

::

This package contains transformers primary Y connected / secondary d
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
  .Yd.Yd01S.png)                                                    ormer
  [Yd01](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd Yd1
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd. 
  Yd01)                                                             

  ![image7](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Yd.Yd01S.png)                                                    ormer
  [Yd03](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd Yd3
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd. 
  Yd03)                                                             

  ![image8](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Yd.Yd01S.png)                                                    ormer
  [Yd05](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd Yd5
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd. 
  Yd05)                                                             

  ![image9](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Yd.Yd01S.png)                                                    ormer
  [Yd07](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd Yd7
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd. 
  Yd07)                                                             

  ![image10](Modelica.Electrical.Machines.BasicMachines.Transformer Transf
  s.Yd.Yd01S.png)                                                   ormer
  [Yd09](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd Yd9
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd. 
  Yd09)                                                             

  ![image11](Modelica.Electrical.Machines.BasicMachines.Transformer Transf
  s.Yd.Yd01S.png)                                                   ormer
  [Yd11](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd Yd11
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd. 
  Yd11)                                                             
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yd](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd).Yd01
==============================================================================================================================================================================================================================================================================

**Transformer Yd1**

Information
-----------

::

Transformer Yd1 Typical parameters see:
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
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int1   
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image13](Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yd](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd).Yd03
==============================================================================================================================================================================================================================================================================

**Transformer Yd3**

Information
-----------

::

Transformer Yd3 Typical parameters see:
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
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int1   
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image14](Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yd](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd).Yd05
==============================================================================================================================================================================================================================================================================

**Transformer Yd5**

Information
-----------

::

Transformer Yd5 Typical parameters see:
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
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int1   
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image15](Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yd](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd).Yd07
==============================================================================================================================================================================================================================================================================

**Transformer Yd7**

Information
-----------

::

Transformer Yd7 Typical parameters see:
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
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int1   
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image16](Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yd](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd).Yd09
==============================================================================================================================================================================================================================================================================

**Transformer Yd9**

Information
-----------

::

Transformer Yd9 Typical parameters see:
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
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int1   
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image17](Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yd](Modelica_Electrical_Machines_BasicMachines_Transformers_Yd.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yd).Yd11
==============================================================================================================================================================================================================================================================================

**Transformer Yd11**

Information
-----------

::

Transformer Yd11 Typical parameters see:
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
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int1   
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:53 2010.
