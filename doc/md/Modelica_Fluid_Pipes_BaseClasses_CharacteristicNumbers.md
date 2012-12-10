% Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers
% 
% 

[Modelica.Fluid.Pipes.BaseClasses](Modelica_Fluid_Pipes_BaseClasses.html#Modelica.Fluid.Pipes.BaseClasses).CharacteristicNumbers
================================================================================================================================

**Functions to compute characteristic numbers**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                         Description
  ------------------------------------------------------------ -----------
  ![image3](Modelica.Fluid.Pipes.BaseClasses.CharacteristicNum Return
  bers.ReynoldsNumberS.png)                                    Reynolds
  [ReynoldsNumber](Modelica_Fluid_Pipes_BaseClasses_Characteri number from
  sticNumbers.html#Modelica.Fluid.Pipes.BaseClasses.Characteri v, rho, mu,
  sticNumbers.ReynoldsNumber)                                  D

  ![image4](Modelica.Fluid.Pipes.BaseClasses.CharacteristicNum Return
  bers.ReynoldsNumberS.png)                                    Reynolds
  [ReynoldsNumber\_m\_flow](Modelica_Fluid_Pipes_BaseClasses_C number from
  haracteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.C m\_flow,
  haracteristicNumbers.ReynoldsNumber_m_flow)                  mu, D, A

  ![image5](Modelica.Fluid.Pipes.BaseClasses.CharacteristicNum Return
  bers.ReynoldsNumberS.png)                                    Nusselt
  [NusseltNumber](Modelica_Fluid_Pipes_BaseClasses_Characteris number
  ticNumbers.html#Modelica.Fluid.Pipes.BaseClasses.Characteris 
  ticNumbers.NusseltNumber)                                    
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers](Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers).ReynoldsNumber
===========================================================================================================================================================================================

**Return Reynolds number from v, rho, mu, D**

Information
-----------

::

Calculation of Reynolds Number

    Re = |v|ρD/μ

a measure of the relationship between inertial forces (vρ) and viscous
forces (D/μ).

The following table gives examples for the characteristic dimension D
and the velocity v for different fluid flow devices:

  -------------------------------------------------------------------------
  **Device Type**   **Characteristic Dimension D**   **Velocity v**
  ----------------- -------------------------------- ----------------------
  Circular Pipe     diameter                         m\_flow/ρ/crossArea

  Rectangular Duct  4\*crossArea/perimeter           m\_flow/ρ/crossArea

  Wide Duct         distance between narrow,         m\_flow/ρ/crossArea
                    parallel walls                   

  Packed Bed        diameterOfSpericalParticles/(1-f m\_flow/ρ/crossArea
                    luidFractionOfTotalVolume)       (without particles)

  Device with       diameterOfRotor                  RotationalSpeed\*diame
  rotating agitator                                  terOfRotor
  -------------------------------------------------------------------------

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                Nam Defau Description
                                      e   lt    
  ----------------------------------- --- ----- ---------------------------
  [Velocity](Modelica_SIunits.html#Mo v         Mean velocity of fluid flow
  delica.SIunits.Velocity)                      [m/s]

  [Density](Modelica_SIunits.html#Mod rho       Fluid density [kg/m3]
  elica.SIunits.Density)                        

  [DynamicViscosity](Modelica_SIunits mu        Dynamic (absolute)
  .html#Modelica.SIunits.DynamicVisco           viscosity [Pa.s]
  sity)                                         

  [Length](Modelica_SIunits.html#Mode D         Characteristic dimension
  lica.SIunits.Length)                          (hydraulic diameter of
                                                pipes) [m]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                               Name  Description
  -------------------------------------------------- ----- ---------------
  [ReynoldsNumber](Modelica_SIunits.html#Modelica.SI Re    Reynolds number
  units.ReynoldsNumber)                                    [1]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function ReynoldsNumber "Return Reynolds number from v, rho, mu, D"
      input SI.Velocity v "Mean velocity of fluid flow";
      input SI.Density rho "Fluid density";
      input SI.DynamicViscosity mu "Dynamic (absolute) viscosity";
      input SI.Length D "Characteristic dimension (hydraulic diameter of pipes)";
      output SI.ReynoldsNumber Re "Reynolds number";
    algorithm 
      Re := abs(v)*rho*D/mu;
    end ReynoldsNumber;

* * * * *

[Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers](Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers).ReynoldsNumber\_m\_flow
====================================================================================================================================================================================================

**Return Reynolds number from m\_flow, mu, D, A**

Information
-----------

::

Simplified calculation of Reynolds Number for flow through pipes or
orifices; using the mass flow rate `m_flow` instead of the velocity `v`
to express inertial forces.

    Re = |m_flow|*diameter/A/μ

> with
>   ~ m\_flow = v*ρ*A
>
See also
[Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber](Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber).

::

Inputs
------

  --------------------------------------------------------------------------
  Type                          Name Default      Description
  ----------------------------- ---- ------------ --------------------------
  [MassFlowRate](Modelica_SIuni m\_f              Mass flow rate [kg/s]
  ts.html#Modelica.SIunits.Mass low               
  FlowRate)                                       

  [DynamicViscosity](Modelica_S mu                Dynamic viscosity [Pa.s]
  Iunits.html#Modelica.SIunits.                   
  DynamicViscosity)                               

  [Length](Modelica_SIunits.htm D                 Characteristic dimension
  l#Modelica.SIunits.Length)                      (hydraulic diameter of
                                                  pipes or orifices) [m]

  [Area](Modelica_SIunits.html# A    Modelica.Con Cross sectional area of
  Modelica.SIunits.Area)             stants.pi/4\ fluid flow [m2]
                                     *D\*D        
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                               Name  Description
  -------------------------------------------------- ----- ---------------
  [ReynoldsNumber](Modelica_SIunits.html#Modelica.SI Re    Reynolds number
  units.ReynoldsNumber)                                    [1]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function ReynoldsNumber_m_flow 
      "Return Reynolds number from m_flow, mu, D, A"
      input SI.MassFlowRate m_flow "Mass flow rate";
      input SI.DynamicViscosity mu "Dynamic viscosity";
      input SI.Length D 
        "Characteristic dimension (hydraulic diameter of pipes or orifices)";
      input SI.Area A = Modelica.Constants.pi/4*D*D 
        "Cross sectional area of fluid flow";
      output SI.ReynoldsNumber Re "Reynolds number";
    algorithm 
      Re := abs(m_flow)*D/A/mu;
    end ReynoldsNumber_m_flow;

* * * * *

[Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers](Modelica_Fluid_Pipes_BaseClasses_CharacteristicNumbers.html#Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers).NusseltNumber
==========================================================================================================================================================================================

**Return Nusselt number**

Information
-----------

    Nusselt number Nu = alpha*D/lambda

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name Defau Description
                                                   lt    
  ------------------------------------------- ---- ----- ------------------
  [CoefficientOfHeatTransfer](Modelica_SIunit alph       Coefficient of
  s.html#Modelica.SIunits.CoefficientOfHeatTr a          heat transfer
  ansfer)                                                [W/(m2.K)]

  [Length](Modelica_SIunits.html#Modelica.SIu D          Characteristic
  nits.Length)                                           dimension [m]

  [ThermalConductivity](Modelica_SIunits.html lamb       Thermal
  #Modelica.SIunits.ThermalConductivity)      da         conductivity
                                                         [W/(m.K)]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                               Name   Description
  -------------------------------------------------- ------ ---------------
  [NusseltNumber](Modelica_SIunits.html#Modelica.SIu Nu     Nusselt number
  nits.NusseltNumber)                                       [1]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function NusseltNumber "Return Nusselt number"
      input SI.CoefficientOfHeatTransfer alpha "Coefficient of heat transfer";
      input SI.Length D "Characteristic dimension";
      input SI.ThermalConductivity lambda "Thermal conductivity";
      output SI.NusseltNumber Nu "Nusselt number";
    algorithm 
      Nu := alpha*D/lambda;
    end NusseltNumber;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:14 2010.
