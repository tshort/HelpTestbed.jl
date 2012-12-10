% Modelica.Electrical.Machines.BasicMachines.Transformers.Yz
% 
% 

[Modelica.Electrical.Machines.BasicMachines.Transformers](Modelica_Electrical_Machines_BasicMachines_Transformers.html#Modelica.Electrical.Machines.BasicMachines.Transformers).Yz
==================================================================================================================================================================================

**Transformers: primary Y / secondary zig-zag**

Information
-----------

::

This package contains transformers primary Y connected / secondary
zig-zag connected in all possbile vector groups.

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
  .Yz.Yz01S.png)                                                    ormer
  [Yz01](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz Yz1
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz. 
  Yz01)                                                             

  ![image7](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Yz.Yz01S.png)                                                    ormer
  [Yz03](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz Yz3
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz. 
  Yz03)                                                             

  ![image8](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Yz.Yz01S.png)                                                    ormer
  [Yz05](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz Yz5
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz. 
  Yz05)                                                             

  ![image9](Modelica.Electrical.Machines.BasicMachines.Transformers Transf
  .Yz.Yz01S.png)                                                    ormer
  [Yz07](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz Yz7
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz. 
  Yz07)                                                             

  ![image10](Modelica.Electrical.Machines.BasicMachines.Transformer Transf
  s.Yz.Yz01S.png)                                                   ormer
  [Yz09](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz Yz9
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz. 
  Yz09)                                                             

  ![image11](Modelica.Electrical.Machines.BasicMachines.Transformer Transf
  s.Yz.Yz01S.png)                                                   ormer
  [Yz11](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz Yz11
  .html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz. 
  Yz11)                                                             
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yz](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz).Yz01
==============================================================================================================================================================================================================================================================================

**Transformer Yz1**

Information
-----------

::

Transformer Yz1 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Yz01 "Transformer Yz1"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yz01");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot22(final m=m);
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

* * * * *

![image13](Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yz](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz).Yz03
==============================================================================================================================================================================================================================================================================

**Transformer Yz3**

Information
-----------

::

Transformer Yz3 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Yz03 "Transformer Yz3"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yz03");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot22(final m=m);
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

* * * * *

![image14](Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yz](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz).Yz05
==============================================================================================================================================================================================================================================================================

**Transformer Yz5**

Information
-----------

::

Transformer Yz5 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Yz05 "Transformer Yz5"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yz05");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
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

* * * * *

![image15](Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yz](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz).Yz07
==============================================================================================================================================================================================================================================================================

**Transformer Yz7**

Information
-----------

::

Transformer Yz7 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Yz07 "Transformer Yz7"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yz07");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
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

* * * * *

![image16](Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yz](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz).Yz09
==============================================================================================================================================================================================================================================================================

**Transformer Yz9**

Information
-----------

::

Transformer Yz9 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Yz09 "Transformer Yz9"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yz09");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot22(final m=m);
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

* * * * *

![image17](Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz01I.png) [Modelica.Electrical.Machines.BasicMachines.Transformers.Yz](Modelica_Electrical_Machines_BasicMachines_Transformers_Yz.html#Modelica.Electrical.Machines.BasicMachines.Transformers.Yz).Yz11
==============================================================================================================================================================================================================================================================================

**Transformer Yz11**

Information
-----------

::

Transformer Yz11 Typical parameters see:
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

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# starpo 
  Modelica.Electrical.Analog.Interfaces.NegativePin)        int2   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Yz11 "Transformer Yz11"

      extends Machines.Interfaces.PartialBasicTransformer(
        final VectorGroup="Yz11");
      Modelica.Electrical.MultiPhase.Basic.Star star1(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint1;
      Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2;
      Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta Rot22(final m=m);
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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:55 2010.
