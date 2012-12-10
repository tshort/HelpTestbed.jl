% Modelica.Electrical.Machines.BasicMachines.Components
% 
% 

[Modelica.Electrical.Machines.BasicMachines](Modelica_Electrical_Machines_BasicMachines.html#Modelica.Electrical.Machines.BasicMachines).Components
===================================================================================================================================================

**Machine components like AirGaps**

Information
-----------

::

This package contains components for modeling electrical machines,
specially threephase induction machines, based on space phasor theory.
These models use package SpacePhasors.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                     Description
  -------------------------------------------------------- ---------------
  ![image15](Modelica.Electrical.Machines.BasicMachines.Co Partial airgap
  mponents.PartialAirGapS.png)                             model
  [PartialAirGap](Modelica_Electrical_Machines_BasicMachin 
  es_Components.html#Modelica.Electrical.Machines.BasicMac 
  hines.Components.PartialAirGap)                          

  ![image16](Modelica.Electrical.Machines.BasicMachines.Co Airgap in
  mponents.AirGapSS.png)                                   stator-fixed
  [AirGapS](Modelica_Electrical_Machines_BasicMachines_Com coordinate
  ponents.html#Modelica.Electrical.Machines.BasicMachines. system
  Components.AirGapS)                                      

  ![image17](Modelica.Electrical.Machines.BasicMachines.Co Airgap in
  mponents.AirGapRS.png)                                   rotor-fixed
  [AirGapR](Modelica_Electrical_Machines_BasicMachines_Com coordinate
  ponents.html#Modelica.Electrical.Machines.BasicMachines. system
  Components.AirGapR)                                      

  ![image18](Modelica.Electrical.Machines.BasicMachines.Co Space phasor
  mponents.InductorS.png)                                  inductor
  [Inductor](Modelica_Electrical_Machines_BasicMachines_Co 
  mponents.html#Modelica.Electrical.Machines.BasicMachines 
  .Components.Inductor)                                    

  ![image19](Modelica.Electrical.Machines.BasicMachines.Co Squirrel Cage
  mponents.SquirrelCageS.png)                              
  [SquirrelCage](Modelica_Electrical_Machines_BasicMachine 
  s_Components.html#Modelica.Electrical.Machines.BasicMach 
  ines.Components.SquirrelCage)                            

  ![image20](Modelica.Electrical.Machines.BasicMachines.Co Squirrel Cage
  mponents.DamperCageS.png)                                
  [DamperCage](Modelica_Electrical_Machines_BasicMachines_ 
  Components.html#Modelica.Electrical.Machines.BasicMachin 
  es.Components.DamperCage)                                

  ![image21](Modelica.Electrical.Machines.BasicMachines.Co Electrical
  mponents.ElectricalExcitationS.png)                      excitation
  [ElectricalExcitation](Modelica_Electrical_Machines_Basi 
  cMachines_Components.html#Modelica.Electrical.Machines.B 
  asicMachines.Components.ElectricalExcitation)            

  ![image22](Modelica.Electrical.Machines.BasicMachines.Co Permanent
  mponents.PermanentMagnetS.png)                           magnet
  [PermanentMagnet](Modelica_Electrical_Machines_BasicMach excitation
  ines_Components.html#Modelica.Electrical.Machines.BasicM 
  achines.Components.PermanentMagnet)                      

  ![image23](Modelica.Electrical.Machines.BasicMachines.Co Ideal linear
  mponents.InductorDCS.png)                                electrical
  [InductorDC](Modelica_Electrical_Machines_BasicMachines_ inductor for
  Components.html#Modelica.Electrical.Machines.BasicMachin electrical DC
  es.Components.InductorDC)                                machines

  ![image24](Modelica.Electrical.Machines.BasicMachines.Co Partial airgap
  mponents.PartialAirGapDCS.png)                           model of a DC
  [PartialAirGapDC](Modelica_Electrical_Machines_BasicMach machine
  ines_Components.html#Modelica.Electrical.Machines.BasicM 
  achines.Components.PartialAirGapDC)                      

  ![image25](Modelica.Electrical.Machines.BasicMachines.Co Linear airgap
  mponents.PartialAirGapDCS.png)                           model of a DC
  [AirGapDC](Modelica_Electrical_Machines_BasicMachines_Co machine
  mponents.html#Modelica.Electrical.Machines.BasicMachines 
  .Components.AirGapDC)                                    

  ![image26](Modelica.Electrical.Machines.BasicMachines.Co Compound
  mponents.CompoundDCExcitationS.png)                      excitation =
  [CompoundDCExcitation](Modelica_Electrical_Machines_Basi shunt + series
  cMachines_Components.html#Modelica.Electrical.Machines.B 
  asicMachines.Components.CompoundDCExcitation)            

  ![image27](Modelica.Electrical.Machines.BasicMachines.Co Partial model
  mponents.PartialCoreS.png)                               of transformer
  [PartialCore](Modelica_Electrical_Machines_BasicMachines core with 3
  _Components.html#Modelica.Electrical.Machines.BasicMachi windings
  nes.Components.PartialCore)                              

  ![image28](Modelica.Electrical.Machines.BasicMachines.Co Ideal
  mponents.PartialCoreS.png)                               transformer
  [IdealCore](Modelica_Electrical_Machines_BasicMachines_C with 3 windings
  omponents.html#Modelica.Electrical.Machines.BasicMachine 
  s.Components.IdealCore)                                  

  ![image29](Modelica.Electrical.Machines.BasicMachines.Co Partial model
  mponents.BasicTransformerS.png)                          of threephase
  [BasicTransformer](Modelica_Electrical_Machines_BasicMac transformer
  hines_Components.html#Modelica.Electrical.Machines.Basic 
  Machines.Components.BasicTransformer)                    
  ------------------------------------------------------------------------

* * * * *

![image30](Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).PartialAirGap
============================================================================================================================================================================================================================================================================

**Partial airgap model**

Information
-----------

::

Partial model of the airgap, using only equations.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ -------------------------
  Integer      m         3            Number of phases
  Integer      p                      Number of pole pairs

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name    Description
  --------------------------------------------- ------- -------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Int flange  
  erfaces.html#Modelica.Mechanics.Rotational.In         
  terfaces.Flange_a)                                    

  [Flange\_a](Modelica_Mechanics_Rotational_Int support Support at which
  erfaces.html#Modelica.Mechanics.Rotational.In         the reaction torque
  terfaces.Flange_a)                                    is acting

  [SpacePhasor](Modelica_Electrical_Machines_In spacePh 
  terfaces.html#Modelica.Electrical.Machines.In asor\_s 
  terfaces.SpacePhasor)                                 

  [SpacePhasor](Modelica_Electrical_Machines_In spacePh 
  terfaces.html#Modelica.Electrical.Machines.In asor\_r 
  terfaces.SpacePhasor)                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialAirGap "Partial airgap model"
      parameter Integer m=3 "Number of phases";
      parameter Integer p(min=1) "Number of pole pairs";
      output Modelica.SIunits.Torque tauElectrical;
      Modelica.SIunits.Angle gamma "Rotor displacement angle";
      Modelica.SIunits.Current i_ss[2] 
        "Stator current space phasor with respect to the stator fixed frame";
      Modelica.SIunits.Current i_sr[2] 
        "Stator current space phasor with respect to the rotor fixed frame";
      Modelica.SIunits.Current i_rs[2] 
        "Rotor current space phasor with respect to the stator fixed frame";
      Modelica.SIunits.Current i_rr[2] 
        "Rotor current space phasor with respect to the rotor fixed frame";
      Modelica.SIunits.MagneticFlux psi_ms[2] 
        "Magnetizing flux phasor with respect to the stator fixed frame";
      Modelica.SIunits.MagneticFlux psi_mr[2] 
        "Magnetizing flux phasor with respect to the rotor fixed frame";
      Real RotationMatrix[2,2] "Matrix of rotation from rotor to stator";
    public 
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange;
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support 
        "Support at which the reaction torque is acting";
      Machines.Interfaces.SpacePhasor spacePhasor_s;
      Machines.Interfaces.SpacePhasor spacePhasor_r;
    equation 
      // mechanical angle of the rotor of an equivalent 2-pole machine
      gamma=p*(flange.phi-support.phi);
      RotationMatrix={{+cos(gamma),-sin(gamma)},{+sin(gamma),+cos(gamma)}};
      i_ss = spacePhasor_s.i_;
      i_ss = RotationMatrix*i_sr;
      i_rr = spacePhasor_r.i_;
      i_rs = RotationMatrix*i_rr;
      // Stator voltage induction
      spacePhasor_s.v_ = der(psi_ms);
      // Rotor voltage induction
      spacePhasor_r.v_ = der(psi_mr);
      // Electromechanical torque (cross product of current and flux space phasor)
      tauElectrical = m/2*p*(spacePhasor_s.i_[2]*psi_ms[1] - spacePhasor_s.i_[1]*psi_ms[2]);
      flange.tau = -tauElectrical;
      support.tau = tauElectrical;
    end PartialAirGap;

* * * * *

![image31](Modelica.Electrical.Machines.BasicMachines.Components.AirGapSI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).AirGapS
================================================================================================================================================================================================================================================================

**Airgap in stator-fixed coordinate system**

Information
-----------

::

Model of the airgap in stator-fixed coordinate system, using only
equations.

::

Extends from
[PartialAirGap](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGap)
(Partial airgap model).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name  Default Description
  ----------------------------------------- ----- ------- -----------------
  [Inductance](Modelica_SIunits.html#Modeli Lm            Main field
  ca.SIunits.Inductance)                                  inductance [H]

  Integer                                   m     3       Number of phases

  Integer                                   p             Number of pole
                                                          pairs
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name    Description
  --------------------------------------------- ------- -------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Int flange  
  erfaces.html#Modelica.Mechanics.Rotational.In         
  terfaces.Flange_a)                                    

  [Flange\_a](Modelica_Mechanics_Rotational_Int support Support at which
  erfaces.html#Modelica.Mechanics.Rotational.In         the reaction torque
  terfaces.Flange_a)                                    is acting

  [SpacePhasor](Modelica_Electrical_Machines_In spacePh 
  terfaces.html#Modelica.Electrical.Machines.In asor\_s 
  terfaces.SpacePhasor)                                 

  [SpacePhasor](Modelica_Electrical_Machines_In spacePh 
  terfaces.html#Modelica.Electrical.Machines.In asor\_r 
  terfaces.SpacePhasor)                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model AirGapS "Airgap in stator-fixed coordinate system"
      parameter Modelica.SIunits.Inductance Lm "Main field inductance";
      extends PartialAirGap;
      Modelica.SIunits.Current i_ms[2] 
        "Magnetizing current space phasor with respect to the stator fixed frame";
    protected 
      parameter Modelica.SIunits.Inductance L[2,2]={{Lm,0},{0,Lm}} 
        "Inductance matrix";
    equation 
      // Magnetizing current with respect to the stator reference frame
      i_ms = i_ss + i_rs;
      // Magnetizing flux linkage with respect to the stator reference frame
      psi_ms = L*i_ms;
      // Magnetizing flux linkage with respect to the rotor reference frame
      psi_mr = transpose(RotationMatrix)*psi_ms;
    end AirGapS;

* * * * *

![image32](Modelica.Electrical.Machines.BasicMachines.Components.AirGapRI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).AirGapR
================================================================================================================================================================================================================================================================

**Airgap in rotor-fixed coordinate system**

Information
-----------

::

Model of the airgap in rotor-fixed coordinate system, using only
equations.

::

Extends from
[PartialAirGap](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGap)
(Partial airgap model).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                    Name  Defaul Description
                                                t      
  --------------------------------------- ----- ------ --------------------
  [Inductance](Modelica_SIunits.html#Mode Lmd          Main field
  lica.SIunits.Inductance)                             inductance d-axis
                                                       [H]

  [Inductance](Modelica_SIunits.html#Mode Lmq          Main field
  lica.SIunits.Inductance)                             inductance q-axis
                                                       [H]

  Integer                                 m     3      Number of phases

  Integer                                 p            Number of pole pairs
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name    Description
  --------------------------------------------- ------- -------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Int flange  
  erfaces.html#Modelica.Mechanics.Rotational.In         
  terfaces.Flange_a)                                    

  [Flange\_a](Modelica_Mechanics_Rotational_Int support Support at which
  erfaces.html#Modelica.Mechanics.Rotational.In         the reaction torque
  terfaces.Flange_a)                                    is acting

  [SpacePhasor](Modelica_Electrical_Machines_In spacePh 
  terfaces.html#Modelica.Electrical.Machines.In asor\_s 
  terfaces.SpacePhasor)                                 

  [SpacePhasor](Modelica_Electrical_Machines_In spacePh 
  terfaces.html#Modelica.Electrical.Machines.In asor\_r 
  terfaces.SpacePhasor)                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model AirGapR "Airgap in rotor-fixed coordinate system"
      parameter Modelica.SIunits.Inductance Lmd "Main field inductance d-axis";
      parameter Modelica.SIunits.Inductance Lmq "Main field inductance q-axis";
      extends PartialAirGap;
      Modelica.SIunits.Current i_mr[2] 
        "Magnetizing current space phasor with respect to the rotor fixed frame";
    protected 
      parameter Modelica.SIunits.Inductance L[2,2]={{Lmd,0},{0,Lmq}} 
        "Inductance matrix";
    equation 
      // Magnetizing current with respect to the rotor reference frame
      i_mr = i_sr + i_rr;
      // Main flux linkage with respect to the rotor reference frame
      psi_mr = L*i_mr;
      // Main flux linkage with respect to the stator reference frame
      psi_ms = RotationMatrix*psi_mr;
    end AirGapR;

* * * * *

![image33](Modelica.Electrical.Machines.BasicMachines.Components.InductorI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).Inductor
==================================================================================================================================================================================================================================================================

**Space phasor inductor**

Information
-----------

::

This is a model of an inductor, described with space phasors.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                     Name  Default Description
  ---------------------------------------- ----- ------- ------------------
  [Inductance](Modelica_SIunits.html#Model L[2]          Inductance of both
  ica.SIunits.Inductance)                                axes [H]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name     Descrip
                                                                   tion
  ------------------------------------------------------- -------- -------
  [SpacePhasor](Modelica_Electrical_Machines_Interfaces.h spacePha 
  tml#Modelica.Electrical.Machines.Interfaces.SpacePhasor sor\_a   
  )                                                                

  [SpacePhasor](Modelica_Electrical_Machines_Interfaces.h spacePha 
  tml#Modelica.Electrical.Machines.Interfaces.SpacePhasor sor\_b   
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Inductor "Space phasor inductor"
      parameter Modelica.SIunits.Inductance L[2] "Inductance of both axes";
      Modelica.SIunits.Voltage v_[2];
      Modelica.SIunits.Current i_[2];
      Machines.Interfaces.SpacePhasor spacePhasor_a;
      Machines.Interfaces.SpacePhasor spacePhasor_b;
    equation 
      spacePhasor_a.i_ + spacePhasor_b.i_ = zeros(2);
      v_ = spacePhasor_a.v_ - spacePhasor_b.v_;
      i_ = spacePhasor_a.i_;
      v_[1] = L[1]*der(i_[1]);
      v_[2] = L[2]*der(i_[2]);
    end Inductor;

* * * * *

![image34](Modelica.Electrical.Machines.BasicMachines.Components.SquirrelCageI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).SquirrelCage
==========================================================================================================================================================================================================================================================================

**Squirrel Cage**

Information
-----------

::

Model of a squirrel cage / symmetrical damper cage in two axis.

The squirrel cage has an optional (conditional) HeatPort, which can be
enabled or disabled by the Boolean parameter useHeatPort. Temperatures
of both axis are the same, both losses are added. Material properties
alpha of both axis are the same.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name  Defa Description
                                              ult  
  ------------------------------------- ----- ---- ------------------------
  [Inductance](Modelica_SIunits.html#Mo Lrsig      Rotor stray inductance
  delica.SIunits.Inductance)            ma         per phase translated to
                                                   stator [H]

  [Resistance](Modelica_SIunits.html#Mo Rr         Rotor resistance per
  delica.SIunits.Resistance)                       phase translated to
                                                   stator at T\_ref [Ohm]

  [Temperature](Modelica_SIunits.html#M T\_re 293. Reference temperature
  odelica.SIunits.Temperature)          f     15   [K]

  [LinearTemperatureCoefficient](Modeli alpha 0    Temperature coefficient
  ca_SIunits.html#Modelica.SIunits.Line            of resistance at T\_ref
  arTemperatureCoefficient)                        [1/K]

  Boolean                               useHe fals =true, if HeatPort is
                                        atPor e    enabled
                                        t          

  [Temperature](Modelica_SIunits.html#M T     T\_r Fixed device temperature
  odelica.SIunits.Temperature)                ef   if useHeatPort = false
                                                   [K]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name     Descrip
                                                                   tion
  ------------------------------------------------------- -------- -------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces. heatPort 
  html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_          
  a)                                                               

  [SpacePhasor](Modelica_Electrical_Machines_Interfaces.h spacePha 
  tml#Modelica.Electrical.Machines.Interfaces.SpacePhasor sor\_r   
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SquirrelCage "Squirrel Cage"
      parameter Modelica.SIunits.Inductance Lrsigma 
        "Rotor stray inductance per phase translated to stator";
      parameter Modelica.SIunits.Resistance Rr 
        "Rotor resistance per phase translated to stator at T_ref";
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of resistance at T_ref";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Resistance Rr_actual 
        "Actual resistance = Rr*(1 + alpha*(T_heatPort - T_ref))";
      Machines.Interfaces.SpacePhasor spacePhasor_r;
    equation 
      assert((1 + alpha*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      Rr_actual = Rr*(1 + alpha*(T_heatPort - T_ref));
      spacePhasor_r.v_ = Rr_actual*spacePhasor_r.i_ + Lrsigma*der(spacePhasor_r.i_);
      2/3*LossPower = Rr_actual*(spacePhasor_r.i_[1]*spacePhasor_r.i_[1] + spacePhasor_r.i_[2]*spacePhasor_r.i_[2]);
    end SquirrelCage;

* * * * *

![image35](Modelica.Electrical.Machines.BasicMachines.Components.DamperCageI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).DamperCage
======================================================================================================================================================================================================================================================================

**Squirrel Cage**

Information
-----------

::

Model of an usymmetrical damper cage in two axis.

The damper cage has an optional (conditional) HeatPort, which can be
enabled or disabled by the Boolean parameter useHeatPort. Temperatures
of both axis are the same, both losses are added. Material properties
alpha can be set differently for both d- and q-axis, although reference
temperature for both resistances is the same.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                Name  Defa Description
                                            ult  
  ----------------------------------- ----- ---- ---------------------------
  [Inductance](Modelica_SIunits.html# Lrsig      Stray inductance in d-axis
  Modelica.SIunits.Inductance)        mad        per phase translated to
                                                 stator [H]

  [Inductance](Modelica_SIunits.html# Lrsig      Stray inductance in q-axis
  Modelica.SIunits.Inductance)        maq        per phase translated to
                                                 stator [H]

  [Resistance](Modelica_SIunits.html# Rrd        Resistance in d-axis per
  Modelica.SIunits.Resistance)                   phase translated to stator
                                                 at T\_ref [Ohm]

  [Resistance](Modelica_SIunits.html# Rrq        Resistance in q-axis per
  Modelica.SIunits.Resistance)                   phase translated to stator
                                                 at T\_ref [Ohm]

  [Temperature](Modelica_SIunits.html T\_re 293. Reference temperature of
  #Modelica.SIunits.Temperature)      f     15   both resistances in d- and
                                                 q-axis [K]

  [LinearTemperatureCoefficient](Mode alpha 0    Temperature coefficient of
  lica_SIunits.html#Modelica.SIunits.            both resistances in d- and
  LinearTemperatureCoefficient)                  q-axis at T\_ref [1/K]

  Boolean                             useHe fals =true, if HeatPort is
                                      atPor e    enabled
                                      t          

  [Temperature](Modelica_SIunits.html T     T\_r Fixed device temperature if
  #Modelica.SIunits.Temperature)            ef   useHeatPort = false [K]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name     Descrip
                                                                   tion
  ------------------------------------------------------- -------- -------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces. heatPort 
  html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_          
  a)                                                               

  [SpacePhasor](Modelica_Electrical_Machines_Interfaces.h spacePha 
  tml#Modelica.Electrical.Machines.Interfaces.SpacePhasor sor\_r   
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model DamperCage "Squirrel Cage"
      parameter Modelica.SIunits.Inductance Lrsigmad 
        "Stray inductance in d-axis per phase translated to stator";
      parameter Modelica.SIunits.Inductance Lrsigmaq 
        "Stray inductance in q-axis per phase translated to stator";
      parameter Modelica.SIunits.Resistance Rrd 
        "Resistance in d-axis per phase translated to stator at T_ref";
      parameter Modelica.SIunits.Resistance Rrq 
        "Resistance in q-axis per phase translated to stator at T_ref";
      parameter Modelica.SIunits.Temperature T_ref=293.15 
        "Reference temperature of both resistances in d- and q-axis";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of both resistances in d- and q-axis at T_ref";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Resistance Rrd_actual 
        "Actual resistance = Rrd*(1 + alpha*(T_heatPort - T_ref))";
      Modelica.SIunits.Resistance Rrq_actual 
        "Actual resistance = Rrq*(1 + alpha*(T_heatPort - T_ref))";
      Machines.Interfaces.SpacePhasor spacePhasor_r;
    equation 
      assert((1 + alpha*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      Rrd_actual = Rrd*(1 + alpha*(T_heatPort - T_ref));
      Rrq_actual = Rrq*(1 + alpha*(T_heatPort - T_ref));
      spacePhasor_r.v_[1] = Rrd_actual * spacePhasor_r.i_[1] + Lrsigmad * der(spacePhasor_r.i_[1]);
      spacePhasor_r.v_[2] = Rrq_actual * spacePhasor_r.i_[2] + Lrsigmaq * der(spacePhasor_r.i_[2]);
      2/3*LossPower = Rrd_actual*spacePhasor_r.i_[1]*spacePhasor_r.i_[1] + Rrq_actual*spacePhasor_r.i_[2]*spacePhasor_r.i_[2];
    end DamperCage;

* * * * *

![image36](Modelica.Electrical.Machines.BasicMachines.Components.ElectricalExcitationI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).ElectricalExcitation
==========================================================================================================================================================================================================================================================================================

**Electrical excitation**

Information
-----------

::

Model of an electrical excitation, converting excitation to space
phasor.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type    Name          Default    Description
  ------- ------------- ---------- ----------------------------------------
  Real    turnsRatio               Ratio stator current / excitation
                                   current
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name     Descrip
                                                                   tion
  ------------------------------------------------------- -------- -------
  [SpacePhasor](Modelica_Electrical_Machines_Interfaces.h spacePha 
  tml#Modelica.Electrical.Machines.Interfaces.SpacePhasor sor\_r   
  )                                                                

  [PositivePin](Modelica_Electrical_Analog_Interfaces.htm pin\_ep  
  l#Modelica.Electrical.Analog.Interfaces.PositivePin)             

  [NegativePin](Modelica_Electrical_Analog_Interfaces.htm pin\_en  
  l#Modelica.Electrical.Analog.Interfaces.NegativePin)             
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ElectricalExcitation "Electrical excitation"
      parameter Real turnsRatio(start=1) 
        "Ratio stator current / excitation current";
      Modelica.SIunits.Current ie "Excitation current";
      Modelica.SIunits.Voltage ve "Excitation voltage";
      Machines.Interfaces.SpacePhasor spacePhasor_r;
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ep;
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_en;
    equation 
      pin_ep.i + pin_en.i = 0;
      ie = +pin_ep.i;
      ve = pin_ep.v - pin_en.v;
      spacePhasor_r.i_ = {-ie*turnsRatio,0};
      ve = spacePhasor_r.v_[1]*turnsRatio*3/2;
    end ElectricalExcitation;

* * * * *

![image37](Modelica.Electrical.Machines.BasicMachines.Components.PermanentMagnetI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).PermanentMagnet
================================================================================================================================================================================================================================================================================

**Permanent magnet excitation**

Information
-----------

::

Model of a permanent magnet excitation, characterized by an equivalent
excitation current.

::

Parameters
----------

  --------------------------------------------------------------------------
  Type                                  Name  Default Description
  ------------------------------------- ----- ------- ----------------------
  [Current](Modelica_SIunits.html#Model Ie            Equivalent excitation
  ica.SIunits.Current)                                current [A]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name     Descrip
                                                                   tion
  ------------------------------------------------------- -------- -------
  [SpacePhasor](Modelica_Electrical_Machines_Interfaces.h spacePha 
  tml#Modelica.Electrical.Machines.Interfaces.SpacePhasor sor\_r   
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model PermanentMagnet "Permanent magnet excitation"
      parameter Modelica.SIunits.Current Ie "Equivalent excitation current";
      Machines.Interfaces.SpacePhasor spacePhasor_r;
    equation 
      spacePhasor_r.i_ = {-Ie,0};
    end PermanentMagnet;

* * * * *

![image38](Modelica.Electrical.Machines.BasicMachines.Components.InductorDCI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).InductorDC
======================================================================================================================================================================================================================================================================

**Ideal linear electrical inductor for electrical DC machines**

Information
-----------

::

The linear inductor connects the branch voltage *v* with the branch
current *i* by *v = L \* di/dt*. If `quasiStationary == false`, the
electrical transients are neglected, i.e., the voltage drop is zero.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                 Name       Defaul Description
                                                  t      
  ------------------------------------ ---------- ------ -------------------
  [Inductance](Modelica_SIunits.html#M L                 Inductance [H]
  odelica.SIunits.Inductance)                            

  Boolean                              quasiStati        No electrical
                                       onary             transients if true
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Nam Description
                                              e   
  ------------------------------------------- --- -------------------------
  [PositivePin](Modelica_Electrical_Analog_In p   Positive pin (potential
  terfaces.html#Modelica.Electrical.Analog.In     p.v \> n.v for positive
  terfaces.PositivePin)                           voltage drop v)

  [NegativePin](Modelica_Electrical_Analog_In n   Negative pin
  terfaces.html#Modelica.Electrical.Analog.In     
  terfaces.NegativePin)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model InductorDC 
      "Ideal linear electrical inductor for electrical DC machines"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Modelica.SIunits.Inductance L(start=1) "Inductance";
      parameter Boolean quasiStationary(start=false) 
        "No electrical transients if true";
    equation 
      v = if quasiStationary then 0 else L*der(i);
    end InductorDC;

* * * * *

![image39](Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDCI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).PartialAirGapDC
================================================================================================================================================================================================================================================================================

**Partial airgap model of a DC machine**

Information
-----------

::

Linear model of the airgap (without saturation effects) of a DC machine,
using only equations. Induced excitation voltage is calculated from
der(flux), where flux is defined by excitation inductance times
excitation current. If `quasiStationary == false`, the electrical
transients are neglected, i.e., the induced excitation voltage is zero.
Induced armature voltage is calculated from flux times angular velocity.

::

Parameters
----------

  --------------------------------------------------------------------------
  Type    Name         Default Description
  ------- ------------ ------- ---------------------------------------------
  Boolean quasiStation         No electrical transients if true
          ary                  

  Real    turnsRatio           Ratio of armature turns over number of turns
                               of the excitation winding
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Inte flan 
  rfaces.html#Modelica.Mechanics.Rotational.Inte ge   
  rfaces.Flange_a)                                    

  [Flange\_a](Modelica_Mechanics_Rotational_Inte supp Support at which the
  rfaces.html#Modelica.Mechanics.Rotational.Inte ort  reaction torque is
  rfaces.Flange_a)                                    acting

  [PositivePin](Modelica_Electrical_Analog_Inter pin\ 
  faces.html#Modelica.Electrical.Analog.Interfac _ap  
  es.PositivePin)                                     

  [PositivePin](Modelica_Electrical_Analog_Inter pin\ 
  faces.html#Modelica.Electrical.Analog.Interfac _ep  
  es.PositivePin)                                     

  [NegativePin](Modelica_Electrical_Analog_Inter pin\ 
  faces.html#Modelica.Electrical.Analog.Interfac _an  
  es.NegativePin)                                     

  [NegativePin](Modelica_Electrical_Analog_Inter pin\ 
  faces.html#Modelica.Electrical.Analog.Interfac _en  
  es.NegativePin)                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialAirGapDC "Partial airgap model of a DC machine"
      parameter Boolean quasiStationary(start=false) 
        "No electrical transients if true";
      parameter Real turnsRatio 
        "Ratio of armature turns over number of turns of the excitation winding";
      output Modelica.SIunits.AngularVelocity w "Angluar velocity";
      Modelica.SIunits.Voltage vei 
        "Voltage drop across field excitation inductance";
      Modelica.SIunits.Current ie "Excitation current";
      Modelica.SIunits.MagneticFlux psi_e "Excitation flux";
      Modelica.SIunits.Voltage vai "Induced armature voltage";
      Modelica.SIunits.Current ia "Armature current";
      output Modelica.SIunits.Torque tauElectrical;
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange;
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support 
        "Support at which the reaction torque is acting";
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ap;
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ep;
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_an;
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_en;
    equation 
      // armature pins
      vai = pin_ap.v - pin_an.v;
      ia = + pin_ap.i;
      ia = - pin_an.i;
      // excitation pins
      vei = pin_ep.v - pin_en.v;
      ie = + pin_ep.i;
      ie = - pin_en.i;
      // induced voltage across field excitation inductance
      vei = if quasiStationary then 0 else der(psi_e);
      // mechanical speed
      w = der(flange.phi)-der(support.phi);
      // induced armature voltage
      vai = turnsRatio * psi_e * w;
      // electrical torque (ia is perpendicular to flux)
      tauElectrical = turnsRatio * psi_e * ia;
      flange.tau = -tauElectrical;
      support.tau = tauElectrical;
    end PartialAirGapDC;

* * * * *

![image40](Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDCI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).AirGapDC
=========================================================================================================================================================================================================================================================================

**Linear airgap model of a DC machine**

Information
-----------

::

Linear model of the airgap (without saturation effects) of a DC machine,
using only equations. Induced excitation voltage is calculated from
der(flux), where flux is defined by excitation inductance times
excitation current. Induced armature voltage is calculated from flux
times angular velocity.

::

Extends from
[PartialAirGapDC](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PartialAirGapDC)
(Partial airgap model of a DC machine).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name     Defa Description
                                        ult  
  ---------------------------- -------- ---- ------------------------------
  Boolean                      quasiSta      No electrical transients if
                               tionary       true

  Real                         turnsRat      Ratio of armature turns over
                               io            number of turns of the
                                             excitation winding

  [Inductance](Modelica_SIunit Le            Excitation inductance [H]
  s.html#Modelica.SIunits.Indu               
  ctance)                                    
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Inte flan 
  rfaces.html#Modelica.Mechanics.Rotational.Inte ge   
  rfaces.Flange_a)                                    

  [Flange\_a](Modelica_Mechanics_Rotational_Inte supp Support at which the
  rfaces.html#Modelica.Mechanics.Rotational.Inte ort  reaction torque is
  rfaces.Flange_a)                                    acting

  [PositivePin](Modelica_Electrical_Analog_Inter pin\ 
  faces.html#Modelica.Electrical.Analog.Interfac _ap  
  es.PositivePin)                                     

  [PositivePin](Modelica_Electrical_Analog_Inter pin\ 
  faces.html#Modelica.Electrical.Analog.Interfac _ep  
  es.PositivePin)                                     

  [NegativePin](Modelica_Electrical_Analog_Inter pin\ 
  faces.html#Modelica.Electrical.Analog.Interfac _an  
  es.NegativePin)                                     

  [NegativePin](Modelica_Electrical_Analog_Inter pin\ 
  faces.html#Modelica.Electrical.Analog.Interfac _en  
  es.NegativePin)                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model AirGapDC "Linear airgap model of a DC machine"
      extends PartialAirGapDC;
      parameter Modelica.SIunits.Inductance Le "Excitation inductance";
    equation 
      // excitation flux: linearly dependent on excitation current
      psi_e = Le * ie;
    end AirGapDC;

* * * * *

![image41](Modelica.Electrical.Machines.BasicMachines.Components.CompoundDCExcitationI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).CompoundDCExcitation
==========================================================================================================================================================================================================================================================================================

**Compound excitation = shunt + series**

Information
-----------

::

Model to compound the shunt excitation current and the series excitation
current to the total excitation current w.r.t. shunt excitation. This
model is intended to be placed between shunt and series excitation pins
and the airgap; the connection to airgap has to be grounded at one
point.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type  Name             Default Description
  ----- ---------------- ------- ------------------------------------------
  Real  excitationTurnsR         Ratio of series excitation turns over
        atio                     shunt excitation turns
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- ----------------
  [PositivePin](Modelica_Electrical_Analog_Interfac pin\_ Positive pin to
  es.html#Modelica.Electrical.Analog.Interfaces.Pos p     airgap
  itivePin)                                               

  [NegativePin](Modelica_Electrical_Analog_Interfac pin\_ Negative pin to
  es.html#Modelica.Electrical.Analog.Interfaces.Neg n     airgap
  ativePin)                                               

  [PositivePin](Modelica_Electrical_Analog_Interfac pin\_ Positive pin to
  es.html#Modelica.Electrical.Analog.Interfaces.Pos ep    shunt excitation
  itivePin)                                               

  [NegativePin](Modelica_Electrical_Analog_Interfac pin\_ Negative pin to
  es.html#Modelica.Electrical.Analog.Interfaces.Neg en    shunt excitation
  ativePin)                                               

  [PositivePin](Modelica_Electrical_Analog_Interfac pin\_ Positive pin to
  es.html#Modelica.Electrical.Analog.Interfaces.Pos sep   series
  itivePin)                                               excitation

  [NegativePin](Modelica_Electrical_Analog_Interfac pin\_ Negative pin to
  es.html#Modelica.Electrical.Analog.Interfaces.Neg sen   series
  ativePin)                                               excitation
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model CompoundDCExcitation "Compound excitation = shunt + series"
      parameter Real excitationTurnsRatio 
        "Ratio of series excitation turns over shunt excitation turns";
      Modelica.SIunits.Voltage v = pin_p.v - pin_n.v;
      Modelica.SIunits.Current i = pin_p.i;
      Modelica.SIunits.Voltage ve = pin_ep.v - pin_en.v;
      Modelica.SIunits.Current ie = pin_ep.i;
      Modelica.SIunits.Voltage vse = pin_sep.v - pin_sen.v;
      Modelica.SIunits.Current ise = pin_sep.i;
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p 
        "Positive pin to airgap";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n 
        "Negative pin to airgap";
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ep 
        "Positive pin to shunt excitation";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_en 
        "Negative pin to shunt excitation";
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_sep 
        "Positive pin to series excitation";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_sen 
        "Negative pin to series excitation";
    equation 
    //current balances
      pin_p.i + pin_n.i = 0;
      pin_ep.i + pin_en.i = 0;
      pin_sep.i + pin_sen.i = 0;
    //compound currents
      -i = ie + excitationTurnsRatio*ise;
    //induced voltages
      ve = v;
      vse = v*excitationTurnsRatio;
    end CompoundDCExcitation;

* * * * *

![image42](Modelica.Electrical.Machines.BasicMachines.Components.PartialCoreI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).PartialCore
========================================================================================================================================================================================================================================================================

**Partial model of transformer core with 3 windings**

Information
-----------

::

Partial model of transformer core with 3 windings; saturation function
flux versus magentizing current has to be defined.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases
  Real         n12                    Turns ratio 1:2
  Real         n13                    Turns ratio 1:3

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug p1     
  )                                                                 

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug n1     
  )                                                                 

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug p2     
  )                                                                 

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug n2     
  )                                                                 

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug p3     
  )                                                                 

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug n3     
  )                                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialCore 
      "Partial model of transformer core with 3 windings"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Real n12(start=1) "Turns ratio 1:2";
      parameter Real n13(start=1) "Turns ratio 1:3";
      Modelica.SIunits.Voltage v1[m] = plug_p1.pin.v  - plug_n1.pin.v;
      Modelica.SIunits.Current i1[m] = plug_p1.pin.i;
      Modelica.SIunits.Voltage v2[m] = plug_p2.pin.v  - plug_n2.pin.v;
      Modelica.SIunits.Current i2[m] = plug_p2.pin.i;
      Modelica.SIunits.Voltage v3[m] = plug_p3.pin.v  - plug_n3.pin.v;
      Modelica.SIunits.Current i3[m] = plug_p3.pin.i;
      Modelica.SIunits.Current im[m] = i1 + i2/n12 + i3/n13 "Magnetizing current";
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p1(final m=
            m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n1(final m=
            m);
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p2(final m=
            m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n2(final m=
            m);
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p3(final m=
            m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n3(final m=
            m);
    equation 
      plug_p1.pin.i + plug_n1.pin.i = zeros(m);
      plug_p2.pin.i + plug_n2.pin.i = zeros(m);
      plug_p3.pin.i + plug_n3.pin.i = zeros(m);
    end PartialCore;

* * * * *

![image43](Modelica.Electrical.Machines.BasicMachines.Components.PartialCoreI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).IdealCore
======================================================================================================================================================================================================================================================================

**Ideal transformer with 3 windings**

Information
-----------

::

Ideal transformer with 3 windings: no magnetizing current.

::

Extends from
[PartialCore](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components.PartialCore)
(Partial model of transformer core with 3 windings).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases
  Real         n12                    Turns ratio 1:2
  Real         n13                    Turns ratio 1:3

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug p1     
  )                                                                 

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug n1     
  )                                                                 

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug p2     
  )                                                                 

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug n2     
  )                                                                 

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug p3     
  )                                                                 

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug n3     
  )                                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealCore "Ideal transformer with 3 windings"

      extends PartialCore;
    equation 
      im = zeros(m);
      v1 = n12*v2;
      v1 = n13*v3;
    end IdealCore;

* * * * *

![image44](Modelica.Electrical.Machines.BasicMachines.Components.BasicTransformerI.png) [Modelica.Electrical.Machines.BasicMachines.Components](Modelica_Electrical_Machines_BasicMachines_Components.html#Modelica.Electrical.Machines.BasicMachines.Components).BasicTransformer
==================================================================================================================================================================================================================================================================================

**Partial model of threephase transformer**

Information
-----------

::

Partialmodel of a threephase transformer, containing primary and
secondary resistances and stray inductances, as well as the iron core.
Circuit layout (vector group) of primary and secondary windings have to
be defined. Exactly the same as Interfaces.PartialBasicTransformer,
included for compatibility reasons.

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
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model BasicTransformer 
      "Partial model of threephase transformer"
      extends Machines.Interfaces.PartialBasicTransformer;
    //dummy will be removed when conversion script is applicable
    end BasicTransformer;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:01 2010.
