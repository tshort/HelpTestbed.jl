% Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines
% 
% 

[Modelica.Electrical.Machines.BasicMachines](Modelica_Electrical_Machines_BasicMachines.html#Modelica.Electrical.Machines.BasicMachines).QuasiStationaryDCMachines
==================================================================================================================================================================

**Models of quasistationary DC machines**

Information
-----------

::

This package contains quasistationary models of DC machines; these
models are fully compatible with the [transient machine models of DC
machines](Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines);
the only difference is that electrical transients are neglected.

### Please note:

Quasistationary DC machine models are basically different from
quasistationary induction machine models: Quasistaionary DC machine
models neglect electrical transients, i.e., setting `der(i) = 0`,
whereas quasistationary induction machine models are based on time
phasor theory, see [QuasiStationary
Library](Modelica_Electrical_QuasiStationary.html#Modelica.Electrical.QuasiStationary),
where e.g., `L*der(i)` is replaced by `j*omega*L*(I_re+j*I_im)`.

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image3](Modelica.Electrical.Machines.BasicMachines.Quas Quasistationar
  iStationaryDCMachines.DC_PermanentMagnetS.png)            y
  [DC\_PermanentMagnet](Modelica_Electrical_Machines_BasicM permanent
  achines_QuasiStationaryDCMachines.html#Modelica.Electrica magnet DC
  l.Machines.BasicMachines.QuasiStationaryDCMachines.DC_Per machine
  manentMagnet)                                             

  ![image4](Modelica.Electrical.Machines.BasicMachines.Quas Quasistationar
  iStationaryDCMachines.DC_ElectricalExcitedS.png)          y
  [DC\_ElectricalExcited](Modelica_Electrical_Machines_Basi electrical
  cMachines_QuasiStationaryDCMachines.html#Modelica.Electri shunt/separate
  cal.Machines.BasicMachines.QuasiStationaryDCMachines.DC_E excited linear
  lectricalExcited)                                         DC machine

  ![image5](Modelica.Electrical.Machines.BasicMachines.Quas Quasistationar
  iStationaryDCMachines.DC_SeriesExcitedS.png)              y
  [DC\_SeriesExcited](Modelica_Electrical_Machines_BasicMac series excited
  hines_QuasiStationaryDCMachines.html#Modelica.Electrical. linear DC
  Machines.BasicMachines.QuasiStationaryDCMachines.DC_Serie machine
  sExcited)                                                 
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnetI.png) [Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines](Modelica_Electrical_Machines_BasicMachines_QuasiStationaryDCMachines.html#Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines).DC\_PermanentMagnet
==================================================================================================================================================================================================================================================================================================================================================

**Quasistationary permanent magnet DC machine**

Information
-----------

::

**Quasistaionary model of a DC Machine with permanent magnets.**
  ~ This model is fully compatible with the \`transient machine model of
    a

DC machine with permanent magnets
<Modelica\_Electrical\_Machines\_BasicMachines\_DCMachines.html\#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_PermanentMagnet\>\`\_;
the only difference is that electrical transients are neglected.

::

Extends from
[Machines.BasicMachines.DCMachines.DC\_PermanentMagnet](Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet)
(Permanent magnet DC machine),
[Machines.Icons.QuasiStationaryMachine](Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons.QuasiStationaryMachine).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                     Name   Default   Description
  ---------------------------------------- ------ --------- ----------------
  [Inertia](Modelica_SIunits.html#Modelica Jr     Jr(start= Rotor's moment
  .SIunits.Inertia)                               0.15)     of inertia
                                                            [kg.m2]

  Boolean                                  useSup false     Enable / disable
                                           port             (=fixed stator)
                                                            support

  [Inertia](Modelica_SIunits.html#Modelica Js               Stator's moment
  .SIunits.Inertia)                                         of inertia
                                                            [kg.m2]

  Boolean                                  useThe false     Enable / disable
                                           rmalPo           (=fixed
                                           rt               temperatures)
                                                            thermal port

  Operational temperatures                                  

  [Temperature](Modelica_SIunits.html#Mode TaOper           Operational
  lica.SIunits.Temperature)                ationa           armature
                                           l                temperature [K]

  **Nominal parameters**                                    

  [Voltage](Modelica_SIunits.html#Modelica VaNomi           Nominal armature
  .SIunits.Voltage)                        nal              voltage [V]

  [Current](Modelica_SIunits.html#Modelica IaNomi           Nominal armature
  .SIunits.Current)                        nal              current
                                                            (\>0..Motor,
                                                            <0..Generator)
                                                            [A]

  [AngularVelocity](Modelica_SIunits.html# wNomin           Nominal speed
  Modelica.SIunits.AngularVelocity)        al               [rad/s]

  [Temperature](Modelica_SIunits.html#Mode TaNomi           Nominal armature
  lica.SIunits.Temperature)                nal              temperature [K]

  **Nominal resistances and inductances**                   

  [Resistance](Modelica_SIunits.html#Model Ra               Armature
  ica.SIunits.Resistance)                                   resistance at
                                                            TRef [Ohm]

  [Temperature](Modelica_SIunits.html#Mode TaRef            Reference
  lica.SIunits.Temperature)                                 temperature of
                                                            armature
                                                            resistance [K]

  [LinearTemperatureCoefficient20](Modelic alpha2           Temperature
  a_Electrical_Machines_Thermal.html#Model 0a               coefficient of
  ica.Electrical.Machines.Thermal.LinearTe                  armature
  mperatureCoefficient20)                                   resistance [1/K]

  [Inductance](Modelica_SIunits.html#Model La               Armature
  ica.SIunits.Inductance)                                   inductance [H]

  **Losses**                                                

  [FrictionParameters](Modelica_Electrical fricti frictionP Friction losses
  _Machines_Losses.html#Modelica.Electrica onPara arameters 
  l.Machines.Losses.FrictionParameters)    meters (wRef=wNo 
                                                  m...      

  [CoreParameters](Modelica_Electrical_Mac corePa           Armature core
  hines_Losses.html#Modelica.Electrical.Ma ramete           losses
  chines.Losses.CoreParameters)            rs               

  [StrayLoadParameters](Modelica_Electrica strayL           Stray load
  l_Machines_Losses.html#Modelica.Electric oadPar           losses
  al.Machines.Losses.StrayLoadParameters)  ameter           
                                           s                

  [BrushParameters](Modelica_Electrical_Ma brushP           Brush losses
  chines_Losses.html#Modelica.Electrical.M aramet           
  achines.Losses.BrushParameters)          ers              
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Inte flan Shaft
  rfaces.html#Modelica.Mechanics.Rotational.Inte ge   
  rfaces.Flange_a)                                    

  [Flange\_a](Modelica_Mechanics_Rotational_Inte supp Support at which the
  rfaces.html#Modelica.Mechanics.Rotational.Inte ort  reaction torque is
  rfaces.Flange_a)                                    acting

  [PositivePin](Modelica_Electrical_Analog_Inter pin\ Positive armature
  faces.html#Modelica.Electrical.Analog.Interfac _ap  pin
  es.PositivePin)                                     

  [NegativePin](Modelica_Electrical_Analog_Inter pin\ Negative armature
  faces.html#Modelica.Electrical.Analog.Interfac _an  pin
  es.NegativePin)                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model DC_PermanentMagnet 
      "Quasistationary permanent magnet DC machine"
      extends Machines.BasicMachines.DCMachines.DC_PermanentMagnet(final quasiStationary=true);
        extends Machines.Icons.QuasiStationaryMachine;
    end DC_PermanentMagnet;

* * * * *

![image7](Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_ElectricalExcitedI.png) [Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines](Modelica_Electrical_Machines_BasicMachines_QuasiStationaryDCMachines.html#Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines).DC\_ElectricalExcited
======================================================================================================================================================================================================================================================================================================================================================

**Quasistationary electrical shunt/separate excited linear DC machine**

Information
-----------

::

**Quasistaionary model of a DC Machine with electrical shunt or separate
excitation.**
  ~ This model is fully compatible with the \`transient machine model of
    a

DC machine with electrical shunt or separate excitation
<Modelica\_Electrical\_Machines\_BasicMachines\_DCMachines.html\#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_ElectricalExcited\>\`\_;
the only difference is that electrical transients are neglected.

::

Extends from
[Machines.BasicMachines.DCMachines.DC\_ElectricalExcited](Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_ElectricalExcited)
(Electrical shunt/separate excited linear DC machine),
[Machines.Icons.QuasiStationaryMachine](Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons.QuasiStationaryMachine).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                     Name   Default   Description
  ---------------------------------------- ------ --------- ----------------
  [Inertia](Modelica_SIunits.html#Modelica Jr     Jr(start= Rotor's moment
  .SIunits.Inertia)                               0.15)     of inertia
                                                            [kg.m2]

  Boolean                                  useSup false     Enable / disable
                                           port             (=fixed stator)
                                                            support

  [Inertia](Modelica_SIunits.html#Modelica Js               Stator's moment
  .SIunits.Inertia)                                         of inertia
                                                            [kg.m2]

  Boolean                                  useThe false     Enable / disable
                                           rmalPo           (=fixed
                                           rt               temperatures)
                                                            thermal port

  Operational temperatures                                  

  [Temperature](Modelica_SIunits.html#Mode TaOper           Operational
  lica.SIunits.Temperature)                ationa           armature
                                           l                temperature [K]

  [Temperature](Modelica_SIunits.html#Mode TeOper           Operational
  lica.SIunits.Temperature)                ationa           (shunt)
                                           l                excitation
                                                            temperature [K]

  **Nominal parameters**                                    

  [Voltage](Modelica_SIunits.html#Modelica VaNomi           Nominal armature
  .SIunits.Voltage)                        nal              voltage [V]

  [Current](Modelica_SIunits.html#Modelica IaNomi           Nominal armature
  .SIunits.Current)                        nal              current
                                                            (\>0..Motor,
                                                            <0..Generator)
                                                            [A]

  [AngularVelocity](Modelica_SIunits.html# wNomin           Nominal speed
  Modelica.SIunits.AngularVelocity)        al               [rad/s]

  [Temperature](Modelica_SIunits.html#Mode TaNomi           Nominal armature
  lica.SIunits.Temperature)                nal              temperature [K]

  **Nominal resistances and inductances**                   

  [Resistance](Modelica_SIunits.html#Model Ra               Armature
  ica.SIunits.Resistance)                                   resistance at
                                                            TRef [Ohm]

  [Temperature](Modelica_SIunits.html#Mode TaRef            Reference
  lica.SIunits.Temperature)                                 temperature of
                                                            armature
                                                            resistance [K]

  [LinearTemperatureCoefficient20](Modelic alpha2           Temperature
  a_Electrical_Machines_Thermal.html#Model 0a               coefficient of
  ica.Electrical.Machines.Thermal.LinearTe                  armature
  mperatureCoefficient20)                                   resistance [1/K]

  [Inductance](Modelica_SIunits.html#Model La               Armature
  ica.SIunits.Inductance)                                   inductance [H]

  **Losses**                                                

  [FrictionParameters](Modelica_Electrical fricti frictionP Friction losses
  _Machines_Losses.html#Modelica.Electrica onPara arameters 
  l.Machines.Losses.FrictionParameters)    meters (wRef=wNo 
                                                  m...      

  [CoreParameters](Modelica_Electrical_Mac corePa           Armature core
  hines_Losses.html#Modelica.Electrical.Ma ramete           losses
  chines.Losses.CoreParameters)            rs               

  [StrayLoadParameters](Modelica_Electrica strayL           Stray load
  l_Machines_Losses.html#Modelica.Electric oadPar           losses
  al.Machines.Losses.StrayLoadParameters)  ameter           
                                           s                

  [BrushParameters](Modelica_Electrical_Ma brushP           Brush losses
  chines_Losses.html#Modelica.Electrical.M aramet           
  achines.Losses.BrushParameters)          ers              

  **Excitation**                                            

  [Current](Modelica_SIunits.html#Modelica IeNomi           Nominal
  .SIunits.Current)                        nal              excitation
                                                            current [A]

  [Resistance](Modelica_SIunits.html#Model Re               Field excitation
  ica.SIunits.Resistance)                                   resistance at
                                                            TRef [Ohm]

  [Temperature](Modelica_SIunits.html#Mode TeRef            Reference
  lica.SIunits.Temperature)                                 temperature of
                                                            excitation
                                                            resistance [K]

  [LinearTemperatureCoefficient20](Modelic alpha2           Temperature
  a_Electrical_Machines_Thermal.html#Model 0e               coefficient of
  ica.Electrical.Machines.Thermal.LinearTe                  excitation
  mperatureCoefficient20)                                   resistance [1/K]

  [Inductance](Modelica_SIunits.html#Model Le               Total field
  ica.SIunits.Inductance)                                   excitation
                                                            inductance [H]

  Real                                     sigmae           Stray fraction
                                                            of total
                                                            excitation
                                                            inductance
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Inte flan Shaft
  rfaces.html#Modelica.Mechanics.Rotational.Inte ge   
  rfaces.Flange_a)                                    

  [Flange\_a](Modelica_Mechanics_Rotational_Inte supp Support at which the
  rfaces.html#Modelica.Mechanics.Rotational.Inte ort  reaction torque is
  rfaces.Flange_a)                                    acting

  [PositivePin](Modelica_Electrical_Analog_Inter pin\ Positive armature
  faces.html#Modelica.Electrical.Analog.Interfac _ap  pin
  es.PositivePin)                                     

  [NegativePin](Modelica_Electrical_Analog_Inter pin\ Negative armature
  faces.html#Modelica.Electrical.Analog.Interfac _an  pin
  es.NegativePin)                                     

  [PositivePin](Modelica_Electrical_Analog_Inter pin\ Positive excitation
  faces.html#Modelica.Electrical.Analog.Interfac _ep  pin
  es.PositivePin)                                     

  [NegativePin](Modelica_Electrical_Analog_Inter pin\ Negative excitation
  faces.html#Modelica.Electrical.Analog.Interfac _en  pin
  es.NegativePin)                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model DC_ElectricalExcited 
      "Quasistationary electrical shunt/separate excited linear DC machine"
      extends Machines.BasicMachines.DCMachines.DC_ElectricalExcited(final quasiStationary=true);
      extends Machines.Icons.QuasiStationaryMachine;
    end DC_ElectricalExcited;

* * * * *

![image8](Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_SeriesExcitedI.png) [Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines](Modelica_Electrical_Machines_BasicMachines_QuasiStationaryDCMachines.html#Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines).DC\_SeriesExcited
==============================================================================================================================================================================================================================================================================================================================================

**Quasistationary series excited linear DC machine**

Information
-----------

::

**Quasistaionary model of a DC Machine with Series excitation.**
  ~ This model is fully compatible with the \`transient machine model of
    a

DC machine with with series excitation
<Modelica\_Electrical\_Machines\_BasicMachines\_DCMachines.html\#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_SeriesExcited\>\`\_;
the only difference is that electrical transients are neglected.

::

Extends from
[Machines.BasicMachines.DCMachines.DC\_SeriesExcited](Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_SeriesExcited)
(Series excited linear DC machine),
[Machines.Icons.QuasiStationaryMachine](Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons.QuasiStationaryMachine).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                     Name   Default   Description
  ---------------------------------------- ------ --------- ----------------
  [Inertia](Modelica_SIunits.html#Modelica Jr     Jr(start= Rotor's moment
  .SIunits.Inertia)                               0.15)     of inertia
                                                            [kg.m2]

  Boolean                                  useSup false     Enable / disable
                                           port             (=fixed stator)
                                                            support

  [Inertia](Modelica_SIunits.html#Modelica Js               Stator's moment
  .SIunits.Inertia)                                         of inertia
                                                            [kg.m2]

  Boolean                                  useThe false     Enable / disable
                                           rmalPo           (=fixed
                                           rt               temperatures)
                                                            thermal port

  Operational temperatures                                  

  [Temperature](Modelica_SIunits.html#Mode TaOper           Operational
  lica.SIunits.Temperature)                ationa           armature
                                           l                temperature [K]

  [Temperature](Modelica_SIunits.html#Mode TeOper           Operational
  lica.SIunits.Temperature)                ationa           series
                                           l                excitation
                                                            temperature [K]

  **Nominal parameters**                                    

  [Voltage](Modelica_SIunits.html#Modelica VaNomi           Nominal armature
  .SIunits.Voltage)                        nal              voltage [V]

  [Current](Modelica_SIunits.html#Modelica IaNomi           Nominal armature
  .SIunits.Current)                        nal              current
                                                            (\>0..Motor,
                                                            <0..Generator)
                                                            [A]

  [AngularVelocity](Modelica_SIunits.html# wNomin wNominal( Nominal speed
  Modelica.SIunits.AngularVelocity)        al     start=141 [rad/s]
                                                  0\*2\*pi/ 
                                                  60)       

  [Temperature](Modelica_SIunits.html#Mode TaNomi           Nominal armature
  lica.SIunits.Temperature)                nal              temperature [K]

  [Temperature](Modelica_SIunits.html#Mode TeNomi           Nominal series
  lica.SIunits.Temperature)                nal              excitation
                                                            temperature [K]

  **Nominal resistances and inductances**                   

  [Resistance](Modelica_SIunits.html#Model Ra               Armature
  ica.SIunits.Resistance)                                   resistance at
                                                            TRef [Ohm]

  [Temperature](Modelica_SIunits.html#Mode TaRef            Reference
  lica.SIunits.Temperature)                                 temperature of
                                                            armature
                                                            resistance [K]

  [LinearTemperatureCoefficient20](Modelic alpha2           Temperature
  a_Electrical_Machines_Thermal.html#Model 0a               coefficient of
  ica.Electrical.Machines.Thermal.LinearTe                  armature
  mperatureCoefficient20)                                   resistance [1/K]

  [Inductance](Modelica_SIunits.html#Model La               Armature
  ica.SIunits.Inductance)                                   inductance [H]

  **Losses**                                                

  [FrictionParameters](Modelica_Electrical fricti frictionP Friction losses
  _Machines_Losses.html#Modelica.Electrica onPara arameters 
  l.Machines.Losses.FrictionParameters)    meters (wRef=wNo 
                                                  m...      

  [CoreParameters](Modelica_Electrical_Mac corePa           Armature core
  hines_Losses.html#Modelica.Electrical.Ma ramete           losses
  chines.Losses.CoreParameters)            rs               

  [StrayLoadParameters](Modelica_Electrica strayL           Stray load
  l_Machines_Losses.html#Modelica.Electric oadPar           losses
  al.Machines.Losses.StrayLoadParameters)  ameter           
                                           s                

  [BrushParameters](Modelica_Electrical_Ma brushP           Brush losses
  chines_Losses.html#Modelica.Electrical.M aramet           
  achines.Losses.BrushParameters)          ers              

  **Excitation**                                            

  [Resistance](Modelica_SIunits.html#Model Re               Series
  ica.SIunits.Resistance)                                   excitation
                                                            resistance at
                                                            TRef [Ohm]

  [Temperature](Modelica_SIunits.html#Mode TeRef            Reference
  lica.SIunits.Temperature)                                 temperature of
                                                            excitation
                                                            resistance [K]

  [LinearTemperatureCoefficient20](Modelic alpha2           Temperature
  a_Electrical_Machines_Thermal.html#Model 0e               coefficient of
  ica.Electrical.Machines.Thermal.LinearTe                  excitation
  mperatureCoefficient20)                                   resistance [1/K]

  [Inductance](Modelica_SIunits.html#Model Le               Total field
  ica.SIunits.Inductance)                                   excitation
                                                            inductance [H]

  Real                                     sigmae           Stray fraction
                                                            of total
                                                            excitation
                                                            inductance
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Inte flan Shaft
  rfaces.html#Modelica.Mechanics.Rotational.Inte ge   
  rfaces.Flange_a)                                    

  [Flange\_a](Modelica_Mechanics_Rotational_Inte supp Support at which the
  rfaces.html#Modelica.Mechanics.Rotational.Inte ort  reaction torque is
  rfaces.Flange_a)                                    acting

  [PositivePin](Modelica_Electrical_Analog_Inter pin\ Positive armature
  faces.html#Modelica.Electrical.Analog.Interfac _ap  pin
  es.PositivePin)                                     

  [NegativePin](Modelica_Electrical_Analog_Inter pin\ Negative armature
  faces.html#Modelica.Electrical.Analog.Interfac _an  pin
  es.NegativePin)                                     

  [PositivePin](Modelica_Electrical_Analog_Inter pin\ Positive series
  faces.html#Modelica.Electrical.Analog.Interfac _ep  excitation pin
  es.PositivePin)                                     

  [NegativePin](Modelica_Electrical_Analog_Inter pin\ Negative series
  faces.html#Modelica.Electrical.Analog.Interfac _en  excitation pin
  es.NegativePin)                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model DC_SeriesExcited 
      "Quasistationary series excited linear DC machine"
      extends Machines.BasicMachines.DCMachines.DC_SeriesExcited(final quasiStationary=true);
      extends Machines.Icons.QuasiStationaryMachine;
    end DC_SeriesExcited;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:48 2010.
