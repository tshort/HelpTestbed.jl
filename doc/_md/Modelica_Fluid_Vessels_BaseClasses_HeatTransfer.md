% Modelica.Fluid.Vessels.BaseClasses.HeatTransfer
% 
% 

[Modelica.Fluid.Vessels.BaseClasses](Modelica_Fluid_Vessels_BaseClasses.html#Modelica.Fluid.Vessels.BaseClasses).HeatTransfer
=============================================================================================================================

**HeatTransfer models for vessels**

Information
-----------

::

Heat transfer correlations for pipe models

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image3](Modelica.Fluid.Vessels.BaseClasses.HeatTransf Base class for
  er.PartialVesselHeatTransferS.png)                      vessel heat
  [PartialVesselHeatTransfer](Modelica_Fluid_Vessels_Base transfer models
  Classes_HeatTransfer.html#Modelica.Fluid.Vessels.BaseCl 
  asses.HeatTransfer.PartialVesselHeatTransfer)           

  ![image4](Modelica.Fluid.Vessels.BaseClasses.HeatTransf IdealHeatTransfe
  er.PartialVesselHeatTransferS.png)                      r:
  [IdealHeatTransfer](Modelica_Fluid_Vessels_BaseClasses_ Ideal heat
  HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.He transfer without
  atTransfer.IdealHeatTransfer)                           thermal
                                                          resistance

  ![image5](Modelica.Fluid.Vessels.BaseClasses.HeatTransf ConstantHeatTran
  er.PartialVesselHeatTransferS.png)                      sfer:
  [ConstantHeatTransfer](Modelica_Fluid_Vessels_BaseClass Constant heat
  es_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses transfer
  .HeatTransfer.ConstantHeatTransfer)                     coefficient
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferI.png) [Modelica.Fluid.Vessels.BaseClasses.HeatTransfer](Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer).PartialVesselHeatTransfer
===========================================================================================================================================================================================================================================================================

**Base class for vessel heat transfer models**

Information
-----------

::

Base class for vessel heat transfer models.

::

Extends from
[Modelica.Fluid.Interfaces.PartialHeatTransfer](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialHeatTransfer)
(Common interface for heat transfer models).

Parameters
----------

  ---------------------------------------------------------------------------
  Type                      Name                        Default Description
  ------------------------- --------------------------- ------- -------------
  Ambient                                                       

  [CoefficientOfHeatTransfe k                           0       Heat transfer
  r](Modelica_SIunits.html#                                     coefficient
  Modelica.SIunits.Coeffici                                     to ambient
  entOfHeatTransfer)                                            [W/(m2.K)]

  [Temperature](Modelica_SI T\_ambient                  system. Ambient
  units.html#Modelica.SIuni                             T\_ambi temperature
  ts.Temperature)                                       ent     [K]

  **Internal Interface**                                        

  replaceable package       [PartialMedium](Modelica_Me Medium  
  Medium                    dia_Interfaces_PartialMediu in the  
                            m.html#Modelica.Media.Inter compone 
                            faces.PartialMedium)        nt      

  Integer                   n                           1       Number of
                                                                heat transfer
                                                                segments

  Boolean                   use\_k                      false   = true to use
                                                                k value for
                                                                thermal
                                                                isolation
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name     Description
  --------------------------------------------- -------- ------------------
  [HeatPorts\_a](Modelica_Fluid_Interfaces.html heatPort Heat port to
  #Modelica.Fluid.Interfaces.HeatPorts_a)       s[n]     component boundary
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialVesselHeatTransfer 
      "Base class for vessel heat transfer models"
      extends Modelica.Fluid.Interfaces.PartialHeatTransfer;

    end PartialVesselHeatTransfer;

* * * * *

![image7](Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferI.png) [Modelica.Fluid.Vessels.BaseClasses.HeatTransfer](Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer).IdealHeatTransfer
===================================================================================================================================================================================================================================================================

**IdealHeatTransfer: Ideal heat transfer without thermal resistance**

Information
-----------

::

Ideal heat transfer without thermal resistance.

::

Extends from
[PartialVesselHeatTransfer](Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransfer)
(Base class for vessel heat transfer models).

Parameters
----------

  ---------------------------------------------------------------------------
  Type                      Name                        Default Description
  ------------------------- --------------------------- ------- -------------
  Ambient                                                       

  [CoefficientOfHeatTransfe k                           0       Heat transfer
  r](Modelica_SIunits.html#                                     coefficient
  Modelica.SIunits.Coeffici                                     to ambient
  entOfHeatTransfer)                                            [W/(m2.K)]

  [Temperature](Modelica_SI T\_ambient                  system. Ambient
  units.html#Modelica.SIuni                             T\_ambi temperature
  ts.Temperature)                                       ent     [K]

  **Internal Interface**                                        

  replaceable package       [PartialMedium](Modelica_Me Medium  
  Medium                    dia_Interfaces_PartialMediu in the  
                            m.html#Modelica.Media.Inter compone 
                            faces.PartialMedium)        nt      

  Integer                   n                           1       Number of
                                                                heat transfer
                                                                segments

  Boolean                   use\_k                      false   = true to use
                                                                k value for
                                                                thermal
                                                                isolation
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name     Description
  --------------------------------------------- -------- ------------------
  [HeatPorts\_a](Modelica_Fluid_Interfaces.html heatPort Heat port to
  #Modelica.Fluid.Interfaces.HeatPorts_a)       s[n]     component boundary
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealHeatTransfer 
      "IdealHeatTransfer: Ideal heat transfer without thermal resistance"
      extends PartialVesselHeatTransfer;

    equation 
      Ts = heatPorts.T;

    end IdealHeatTransfer;

* * * * *

![image8](Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransferI.png) [Modelica.Fluid.Vessels.BaseClasses.HeatTransfer](Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer).ConstantHeatTransfer
======================================================================================================================================================================================================================================================================

**ConstantHeatTransfer: Constant heat transfer coefficient**

Information
-----------

::

Simple heat transfer correlation with constant heat transfer
coefficient.

::

Extends from
[PartialVesselHeatTransfer](Modelica_Fluid_Vessels_BaseClasses_HeatTransfer.html#Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.PartialVesselHeatTransfer)
(Base class for vessel heat transfer models).

Parameters
----------

  ---------------------------------------------------------------------------
  Type                      Name                        Default Description
  ------------------------- --------------------------- ------- -------------
  [CoefficientOfHeatTransfe alpha0                              constant heat
  r](Modelica_SIunits.html#                                     transfer
  Modelica.SIunits.Coeffici                                     coefficient
  entOfHeatTransfer)                                            [W/(m2.K)]

  Ambient                                                       

  [CoefficientOfHeatTransfe k                           0       Heat transfer
  r](Modelica_SIunits.html#                                     coefficient
  Modelica.SIunits.Coeffici                                     to ambient
  entOfHeatTransfer)                                            [W/(m2.K)]

  [Temperature](Modelica_SI T\_ambient                  system. Ambient
  units.html#Modelica.SIuni                             T\_ambi temperature
  ts.Temperature)                                       ent     [K]

  **Internal Interface**                                        

  replaceable package       [PartialMedium](Modelica_Me Medium  
  Medium                    dia_Interfaces_PartialMediu in the  
                            m.html#Modelica.Media.Inter compone 
                            faces.PartialMedium)        nt      

  Integer                   n                           1       Number of
                                                                heat transfer
                                                                segments

  Boolean                   use\_k                      false   = true to use
                                                                k value for
                                                                thermal
                                                                isolation
  ---------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name     Description
  --------------------------------------------- -------- ------------------
  [HeatPorts\_a](Modelica_Fluid_Interfaces.html heatPort Heat port to
  #Modelica.Fluid.Interfaces.HeatPorts_a)       s[n]     component boundary
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ConstantHeatTransfer 
      "ConstantHeatTransfer: Constant heat transfer coefficient"
      extends PartialVesselHeatTransfer;
      parameter SI.CoefficientOfHeatTransfer alpha0 
        "constant heat transfer coefficient";

    equation 
      Q_flows = {(alpha0+k)*surfaceAreas[i]*(heatPorts[i].T - Ts[i]) for i in 1:n};

    end ConstantHeatTransfer;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:12 2010.
