% Modelica.Thermal.HeatTransfer.Components
% 
% 

[Modelica.Thermal.HeatTransfer](Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer).Components
============================================================================================================

**Lumped thermal components**

Information
-----------

::

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                  Description
  ----------------------------------------------------- ------------------
  ![image5](Modelica.Thermal.HeatTransfer.Components.He Lumped thermal
  atCapacitorS.png)                                     element storing
  [HeatCapacitor](Modelica_Thermal_HeatTransfer_Compone heat
  nts.html#Modelica.Thermal.HeatTransfer.Components.Hea 
  tCapacitor)                                           

  ![image6](Modelica.Thermal.HeatTransfer.Components.Th Lumped thermal
  ermalConductorS.png)                                  element
  [ThermalConductor](Modelica_Thermal_HeatTransfer_Comp transporting heat
  onents.html#Modelica.Thermal.HeatTransfer.Components. without storing it
  ThermalConductor)                                     

  ![image7](Modelica.Thermal.HeatTransfer.Components.Co Lumped thermal
  nvectionS.png)                                        element for heat
  [Convection](Modelica_Thermal_HeatTransfer_Components convection
  .html#Modelica.Thermal.HeatTransfer.Components.Convec (Q\_flow = Gc\*dT)
  tion)                                                 

  ![image8](Modelica.Thermal.HeatTransfer.Components.Bo Lumped thermal
  dyRadiationS.png)                                     element for
  [BodyRadiation](Modelica_Thermal_HeatTransfer_Compone radiation heat
  nts.html#Modelica.Thermal.HeatTransfer.Components.Bod transfer
  yRadiation)                                           

  ![image9](Modelica.Thermal.HeatTransfer.Components.Th Collects m heat
  ermalCollectorS.png)                                  flows
  [ThermalCollector](Modelica_Thermal_HeatTransfer_Comp 
  onents.html#Modelica.Thermal.HeatTransfer.Components. 
  ThermalCollector)                                     
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Thermal.HeatTransfer.Components.HeatCapacitorI.png) [Modelica.Thermal.HeatTransfer.Components](Modelica_Thermal_HeatTransfer_Components.html#Modelica.Thermal.HeatTransfer.Components).HeatCapacitor
========================================================================================================================================================================================================================

**Lumped thermal element storing heat**

Information
-----------

::

This is a generic model for the heat capacity of a material. No specific
geometry is assumed beyond a total volume with uniform temperature for
the entire volume. Furthermore, it is assumed that the heat capacity is
constant (indepedent of temperature).

The temperature T [Kelvin] of this component is a **state**. A default
of T = 25 degree Celsius (= SIunits.Conversions.from\_degC(25)) is used
as start value for initialization. This usually means that at start of
integration the temperature of this component is 25 degrees Celsius. You
may, of course, define a different temperature as start value for
initialization. Alternatively, it is possible to set parameter
**steadyStateStart** to **true**. In this case the additional equation
'**der**(T) = 0' is used during initialization, i.e., the temperature T
is computed in such a way that the component starts in **steady state**.
This is useful in cases, where one would like to start simulation in a
suitable operating point without being forced to integrate for a long
time to arrive at this point.

Note, that parameter **steadyStateStart** is not available in the
parameter menue of the simulation window, because its value is utilized
during translation to generate quite different equations depending on
its setting. Therefore, the value of this parameter can only be changed
before translating the model.

This component may be used for complicated geometries where the heat
capacity C is determined my measurements. If the component consists
mainly of one type of material, the **mass m** of the component may be
measured or calculated and multiplied with the **specific heat capacity
cp** of the component material to compute C:

    C = cp*m.
    Typical values for cp at 20 degC in J/(kg.K):
       aluminium   896
       concrete    840
       copper      383
       iron        452
       silver      235
       steel       420 ... 500 (V2A)
       wood       2500

::

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name Defaul Description
                                              t      
  -------------------------------------- ---- ------ -----------------------
  [HeatCapacity](Modelica_SIunits.html#M C           Heat capacity of
  odelica.SIunits.HeatCapacity)                      element (= cp\*m) [J/K]
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.html port 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model HeatCapacitor "Lumped thermal element storing heat"
      parameter Modelica.SIunits.HeatCapacity C "Heat capacity of element (= cp*m)";
      Modelica.SIunits.Temperature T(start=293.15, displayUnit="degC") 
        "Temperature of element";
      Modelica.SIunits.TemperatureSlope der_T(start=0) 
        "Time derivative of temperature (= der(T))";
      Interfaces.HeatPort_a port;
    equation 
      T = port.T;
      der_T = der(T);
      C*der(T) = port.Q_flow;
    end HeatCapacitor;

* * * * *

![image11](Modelica.Thermal.HeatTransfer.Components.ThermalConductorI.png) [Modelica.Thermal.HeatTransfer.Components](Modelica_Thermal_HeatTransfer_Components.html#Modelica.Thermal.HeatTransfer.Components).ThermalConductor
==============================================================================================================================================================================================================================

**Lumped thermal element transporting heat without storing it**

Information
-----------

::

This is a model for transport of heat without storing it. It may be used
for complicated geometries where the thermal conductance G (= inverse of
thermal resistance) is determined by measurements and is assumed to be
constant over the range of operations. If the component consists mainly
of one type of material and a regular geometry, it may be calculated,
e.g., with one of the following equations:

-   Conductance for a **box** geometry under the assumption that heat
    flows along the box length:

        G = k*A/L
        k: Thermal conductivity (material constant)
        A: Area of box
        L: Length of box

-   Conductance for a **cylindrical** geometry under the assumption that
    heat flows from the inside to the outside radius of the cylinder:

        G = 2*pi*k*L/log(r_out/r_in)
        pi   : Modelica.Constants.pi
        k    : Thermal conductivity (material constant)
        L    : Length of cylinder
        log  : Modelica.Math.log;
        r_out: Outer radius of cylinder
        r_in : Inner radius of cylinder

<!-- -->

    Typical values for k at 20 degC in W/(m.K):
      aluminium   220
      concrete      1
      copper      384
      iron         74
      silver      407
      steel        45 .. 15 (V2A)
      wood         0.1 ... 0.2

::

Extends from
[Interfaces.Element1D](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.Element1D)
(Partial heat transfer element with two HeatPort connectors that does
not store energy).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                    Name Defau Description
                                               lt    
  --------------------------------------- ---- ----- -----------------------
  [ThermalConductance](Modelica_SIunits.h G          Constant thermal
  tml#Modelica.SIunits.ThermalConductance            conductance of material
  )                                                  [W/K]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.htm port\ 
  l#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)     _a    

  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.htm port\ 
  l#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)     _b    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ThermalConductor 
      "Lumped thermal element transporting heat without storing it"
      extends Interfaces.Element1D;
      parameter Modelica.SIunits.ThermalConductance G 
        "Constant thermal conductance of material";

    equation 
      Q_flow = G*dT;
    end ThermalConductor;

* * * * *

![image12](Modelica.Thermal.HeatTransfer.Components.ConvectionI.png) [Modelica.Thermal.HeatTransfer.Components](Modelica_Thermal_HeatTransfer_Components.html#Modelica.Thermal.HeatTransfer.Components).Convection
==================================================================================================================================================================================================================

**Lumped thermal element for heat convection (Q\_flow = Gc\*dT)**

Information
-----------

::

This is a model of linear heat convection, e.g., the heat transfer
between a plate and the surrounding air. It may be used for complicated
solid geometries and fluid flow over the solid by determining the
convective thermal conductance Gc by measurements. The basic
constitutive equation for convection is

    Q_flow = Gc*(solid.T - fluid.T);
    Q_flow: Heat flow rate from connector 'solid' (e.g., a plate)
       to connector 'fluid' (e.g., the surrounding air)

Gc = G.signal[1] is an input signal to the component, since Gc is nearly
never constant in practice. For example, Gc may be a function of the
speed of a cooling fan. For simple situations, Gc may be *calculated*
according to

    Gc = A*h
    A: Convection area (e.g., perimeter*length of a box)
    h: Heat transfer coefficient

where the heat transfer coefficient h is calculated from properties of
the fluid flowing over the solid. Examples:

**Machines cooled by air** (empirical, very rough approximation
according to R. Fischer: Elektrische Maschinen, 10th edition,
Hanser-Verlag 1999, p. 378):

    h = 7.8*v^0.78 [W/(m2.K)] (forced convection)
      = 12         [W/(m2.K)] (free convection)
    where
      v: Air velocity in [m/s]

**Laminar** flow with constant velocity of a fluid along a **flat
plate** where the heat flow rate from the plate to the fluid (=
solid.Q\_flow) is kept constant (according to J.P.Holman: Heat Transfer,
8th edition, McGraw-Hill, 1997, p.270):

    h  = Nu*k/x;
    Nu = 0.453*Re^(1/2)*Pr^(1/3);
    where
       h  : Heat transfer coefficient
       Nu : = h*x/k       (Nusselt number)
       Re : = v*x*rho/mue (Reynolds number)
       Pr : = cp*mue/k    (Prandtl number)
       v  : Absolute velocity of fluid
       x  : distance from leading edge of flat plate
       rho: density of fluid (material constant
       mue: dynamic viscosity of fluid (material constant)
       cp : specific heat capacity of fluid (material constant)
       k  : thermal conductivity of fluid (material constant)
    and the equation for h holds, provided
       Re < 5e5 and 0.6 < Pr < 50

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                        Nam Description
                                              e   
  ------------------------------------------- --- ------------------------
  input                                       Gc  Signal representing the
  [RealInput](Modelica_Blocks_Interfaces.html     convective thermal
  #Modelica.Blocks.Interfaces.RealInput)          conductance in [W/K]

  [HeatPort\_a](Modelica_Thermal_HeatTransfer sol 
  _Interfaces.html#Modelica.Thermal.HeatTrans id  
  fer.Interfaces.HeatPort_a)                      

  [HeatPort\_b](Modelica_Thermal_HeatTransfer flu 
  _Interfaces.html#Modelica.Thermal.HeatTrans id  
  fer.Interfaces.HeatPort_b)                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Convection 
      "Lumped thermal element for heat convection (Q_flow = Gc*dT)"
      Modelica.SIunits.HeatFlowRate Q_flow "Heat flow rate from solid -> fluid";
      Modelica.SIunits.TemperatureDifference dT "= solid.T - fluid.T";
      Modelica.Blocks.Interfaces.RealInput Gc 
        "Signal representing the convective thermal conductance in [W/K]";
      Interfaces.HeatPort_a solid;
      Interfaces.HeatPort_b fluid;
    equation 
      dT = solid.T - fluid.T;
      solid.Q_flow = Q_flow;
      fluid.Q_flow = -Q_flow;
      Q_flow = Gc*dT;
    end Convection;

* * * * *

![image13](Modelica.Thermal.HeatTransfer.Components.BodyRadiationI.png) [Modelica.Thermal.HeatTransfer.Components](Modelica_Thermal_HeatTransfer_Components.html#Modelica.Thermal.HeatTransfer.Components).BodyRadiation
========================================================================================================================================================================================================================

**Lumped thermal element for radiation heat transfer**

Information
-----------

::

This is a model describing the thermal radiation, i.e., electromagnetic
radiation emitted between two bodies as a result of their temperatures.
The following constitutive equation is used:

    Q_flow = Gr*sigma*(port_a.T^4 - port_b.T^4);

where Gr is the radiation conductance and sigma is the Stefan-Boltzmann
constant (= Modelica.Constants.sigma). Gr may be determined by
measurements and is assumed to be constant over the range of operations.

For simple cases, Gr may be analytically computed. The analytical
equations use epsilon, the emission value of a body which is in the
range 0..1. Epsilon=1, if the body absorbs all radiation (= black body).
Epsilon=0, if the body reflects all radiation and does not absorb any.

    Typical values for epsilon:
    aluminium, polished    0.04
    copper, polished       0.04
    gold, polished         0.02
    paper                  0.09
    rubber                 0.95
    silver, polished       0.02
    wood                   0.85..0.9

**Analytical Equations for Gr**

**Small convex object in large enclosure** (e.g., a hot machine in a
room):

    Gr = e*A
    where
       e: Emission value of object (0..1)
       A: Surface area of object where radiation
          heat transfer takes place

**Two parallel plates**:

    Gr = A/(1/e1 + 1/e2 - 1)
    where
       e1: Emission value of plate1 (0..1)
       e2: Emission value of plate2 (0..1)
       A : Area of plate1 (= area of plate2)

**Two long cylinders in each other**, where radiation takes place from
the inner to the outer cylinder):

    Gr = 2*pi*r1*L/(1/e1 + (1/e2 - 1)*(r1/r2))
    where
       pi: = Modelica.Constants.pi
       r1: Radius of inner cylinder
       r2: Radius of outer cylinder
       L : Length of the two cylinders
       e1: Emission value of inner cylinder (0..1)
       e2: Emission value of outer cylinder (0..1)

::

Extends from
[Interfaces.Element1D](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.Element1D)
(Partial heat transfer element with two HeatPort connectors that does
not store energy).

Parameters
----------

  ------------------------------------------------------------------------
  Type   Name   Default  Description
  ------ ------ -------- -------------------------------------------------
  Real   Gr              Net radiation conductance between two surfaces
                         (see docu) [m2]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.htm port\ 
  l#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)     _a    

  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.htm port\ 
  l#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)     _b    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model BodyRadiation 
      "Lumped thermal element for radiation heat transfer"
      extends Interfaces.Element1D;
      parameter Real Gr(unit="m2") 
        "Net radiation conductance between two surfaces (see docu)";
    equation 
      Q_flow = Gr*Modelica.Constants.sigma*(port_a.T^4 - port_b.T^4);
    end BodyRadiation;

* * * * *

![image14](Modelica.Thermal.HeatTransfer.Components.ThermalCollectorI.png) [Modelica.Thermal.HeatTransfer.Components](Modelica_Thermal_HeatTransfer_Components.html#Modelica.Thermal.HeatTransfer.Components).ThermalCollector
==============================================================================================================================================================================================================================

**Collects m heat flows**

Information
-----------

::

This is a model to collect the heat flows from *m* heatports to one
single heatport.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ -----------------------------------
  Integer      m         3            Number of collected heat flows

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name    Descrip
                                                                    tion
  --------------------------------------------------------- ------- -------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.ht port\_a 
  ml#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)   [m]     

  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.ht port\_b 
  ml#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ThermalCollector "Collects m heat flows"
      parameter Integer m(min=1)=3 "Number of collected heat flows";
      Interfaces.HeatPort_a port_a[m];
      Interfaces.HeatPort_b port_b;

    equation 
      port_b.Q_flow + sum(port_a.Q_flow) = 0;
      port_a.T = fill(port_b.T, m);
    end ThermalCollector;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:46 2010.
