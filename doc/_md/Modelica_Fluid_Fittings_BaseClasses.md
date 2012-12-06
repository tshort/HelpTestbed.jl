% Modelica.Fluid.Fittings.BaseClasses
% 
% 

[Modelica.Fluid.Fittings](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings).BaseClasses
===========================================================================================

**Base classes used in the Fittings package (only of interest to build
new component models)**

Information
-----------

Extends from
[Modelica.Icons.BasesPackage](Modelica_Icons_BasesPackage.html#Modelica.Icons.BasesPackage)
(Icon for packages containing base classes).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  ![image6](Modelica.Fluid.Fittings.BaseClasses Return the loss constant
  .lossConstant_D_zetaS.png)                    8\*zeta/(pi\^2\*D\^4)
  [lossConstant\_D\_zeta](Modelica_Fluid_Fittin 
  gs_BaseClasses.html#Modelica.Fluid.Fittings.B 
  aseClasses.lossConstant_D_zeta)               

  ![image7](Modelica.Fluid.Fittings.BaseClasses Pressure loss components
  .QuadraticTurbulentS.png)                     that are mainly defined by
  [QuadraticTurbulent](Modelica_Fluid_Fittings_ a quadratic turbulent
  BaseClasses_QuadraticTurbulent.html#Modelica. regime with constant loss
  Fluid.Fittings.BaseClasses.QuadraticTurbulent factor data
  )                                             

  ![image8](Modelica.Fluid.Fittings.BaseClasses Base class for a
  .PartialTeeJunctionS.png)                     splitting/joining
  [PartialTeeJunction](Modelica_Fluid_Fittings_ component with three ports
  BaseClasses.html#Modelica.Fluid.Fittings.Base 
  Classes.PartialTeeJunction)                   

  ![image9](Modelica.Fluid.Fittings.BaseClasses Pressure loss functions
  .BendsS.png)                                  for bends
  [Bends](Modelica_Fluid_Fittings_BaseClasses_B 
  ends.html#Modelica.Fluid.Fittings.BaseClasses 
  .Bends)                                       

  ![image10](Modelica.Fluid.Fittings.BaseClasse Pressure loss functions
  s.BendsS.png)                                 for orifices
  [Orifices](Modelica_Fluid_Fittings_BaseClasse 
  s_Orifices.html#Modelica.Fluid.Fittings.BaseC 
  lasses.Orifices)                              

  ![image11](Modelica.Fluid.Fittings.BaseClasse Pressure loss functions
  s.BendsS.png)                                 for generic, geometry
  [GenericResistances](Modelica_Fluid_Fittings_ independent flow
  BaseClasses_GenericResistances.html#Modelica. resistances
  Fluid.Fittings.BaseClasses.GenericResistances 
  )                                             
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Fluid.Fittings.BaseClasses.lossConstant_D_zetaI.png) [Modelica.Fluid.Fittings.BaseClasses](Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses).lossConstant\_D\_zeta
==================================================================================================================================================================================================================

**Return the loss constant 8\*zeta/(pi\^2\*D\^4)**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                        Nam Defa Description
                              e   ult  
  --------------------------- --- ---- -----------------------------------
  [Diameter](Modelica_SIunits D        Diameter at port\_a or port\_b [m]
  .html#Modelica.SIunits.Diam          
  eter)                                

  Real                        zet      Constant pressure loss factor with
                              a        respect to D (i.e., either port\_a
                                       or port\_b)
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ------------------------------------------
  Real      k         Loss constant (= 8\*zeta/(pi\^2\*D\^4))

Modelica definition
-------------------

    function lossConstant_D_zeta 
      "Return the loss constant 8*zeta/(pi^2*D^4)"
          extends Modelica.Icons.Function;

      input SI.Diameter D "Diameter at port_a or port_b";
      input Real zeta 
        "Constant pressure loss factor with respect to D (i.e., either port_a or port_b)";
      output Real k "Loss constant (= 8*zeta/(pi^2*D^4))";

    algorithm 
      k :=8*zeta/(Modelica.Constants.pi*Modelica.Constants.pi*D*D*D*D);
    end lossConstant_D_zeta;

* * * * *

![image13](Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunctionI.png) [Modelica.Fluid.Fittings.BaseClasses](Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses).PartialTeeJunction
==============================================================================================================================================================================================================

**Base class for a splitting/joining component with three ports**

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                    Name    Descripti
                                                                  on
  ------------------------------------------------------- ------- ---------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Modelica. port\_1 
  Fluid.Interfaces.FluidPort_a)                                   

  [FluidPort\_b](Modelica_Fluid_Interfaces.html#Modelica. port\_2 
  Fluid.Interfaces.FluidPort_b)                                   

  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Modelica. port\_3 
  Fluid.Interfaces.FluidPort_a)                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialTeeJunction 
      "Base class for a splitting/joining component with three ports"
      import Modelica.Fluid.Types;
      import Modelica.Fluid.Types.PortFlowDirection;

      replaceable package Medium=Modelica.Media.Interfaces.PartialMedium 
        "Medium in the component";

      Modelica.Fluid.Interfaces.FluidPort_a port_1(redeclare package Medium =
            Medium, m_flow(min=if (portFlowDirection_1 == PortFlowDirection.Entering) then 
                    0.0 else -Modelica.Constants.inf, max=if (portFlowDirection_1
               == PortFlowDirection.Leaving) then 0.0 else Modelica.Constants.inf));
      Modelica.Fluid.Interfaces.FluidPort_b port_2(redeclare package Medium =
            Medium, m_flow(min=if (portFlowDirection_2 == PortFlowDirection.Entering) then 
                    0.0 else -Modelica.Constants.inf, max=if (portFlowDirection_2
               == PortFlowDirection.Leaving) then 0.0 else Modelica.Constants.inf));
      Modelica.Fluid.Interfaces.FluidPort_a port_3(
        redeclare package Medium=Medium,
        m_flow(min=if (portFlowDirection_3==PortFlowDirection.Entering) then 0.0 else -Modelica.Constants.inf,
        max=if (portFlowDirection_3==PortFlowDirection.Leaving) then 0.0 else Modelica.Constants.inf));

    protected 
      parameter PortFlowDirection portFlowDirection_1=PortFlowDirection.Bidirectional 
        "Flow direction for port_1";
      parameter PortFlowDirection portFlowDirection_2=PortFlowDirection.Bidirectional 
        "Flow direction for port_2";
      parameter PortFlowDirection portFlowDirection_3=PortFlowDirection.Bidirectional 
        "Flow direction for port_3";

    end PartialTeeJunction;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:18 2010.
