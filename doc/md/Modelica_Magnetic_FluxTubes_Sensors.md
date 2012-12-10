% Modelica.Magnetic.FluxTubes.Sensors
% 
% 

[Modelica.Magnetic.FluxTubes](Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes).Sensors
===================================================================================================

**Sensors to measure variables in magnetic networks**

Information
-----------

::

For analysis of magnetic networks, only magnetic potential differences
and magnetic flux are variables of interest. For that reason, a magnetic
potential sensor is not provided.

::

Extends from
[Modelica.Icons.SensorsPackage](Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage)
(Icon for packages containing sensors).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image2](Modelica.Magnetic.FluxTubes.Sensors.MagneticPote Sensor to
  ntialDifferenceSensorS.png)                                measure
  [MagneticPotentialDifferenceSensor](Modelica_Magnetic_Flux magnetic
  Tubes_Sensors.html#Modelica.Magnetic.FluxTubes.Sensors.Mag potential
  neticPotentialDifferenceSensor)                            difference

  ![image3](Modelica.Magnetic.FluxTubes.Sensors.MagneticPote Sensor to
  ntialDifferenceSensorS.png)                                measure
  [MagneticFluxSensor](Modelica_Magnetic_FluxTubes_Sensors.h magnetic flux
  tml#Modelica.Magnetic.FluxTubes.Sensors.MagneticFluxSensor 
  )                                                          
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensorI.png) [Modelica.Magnetic.FluxTubes.Sensors](Modelica_Magnetic_FluxTubes_Sensors.html#Modelica.Magnetic.FluxTubes.Sensors).MagneticPotentialDifferenceSensor
===========================================================================================================================================================================================================================================

**Sensor to measure magnetic potential difference**

Information
-----------

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device),
[Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary)
(Partial component with two magnetic ports p and n for textual
programming).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                         Nam Description
                                               e   
  -------------------------------------------- --- ------------------------
  [PositiveMagneticPort](Modelica_Magnetic_Flu por Positive magnetic port
  xTubes_Interfaces.html#Modelica.Magnetic.Flu t\_ 
  xTubes.Interfaces.PositiveMagneticPort)      p   

  [NegativeMagneticPort](Modelica_Magnetic_Flu por Negative magnetic port
  xTubes_Interfaces.html#Modelica.Magnetic.Flu t\_ 
  xTubes.Interfaces.NegativeMagneticPort)      n   

  output                                       V\_ Magnetic potential
  [RealOutput](Modelica_Blocks_Interfaces.html m   difference between ports
  #Modelica.Blocks.Interfaces.RealOutput)          p and n as output signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model MagneticPotentialDifferenceSensor 
      "Sensor to measure magnetic potential difference"
      extends Modelica.Icons.RotationalSensor;
      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;

      Modelica.Blocks.Interfaces.RealOutput V_m 
        "Magnetic potential difference between ports p and n as output signal";
      SI.MagneticFlux Phi "Magnetic flux from port_p to port_n";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      Phi = 0;
      0 = port_p.Phi + port_n.Phi;

    end MagneticPotentialDifferenceSensor;

* * * * *

![image5](Modelica.Magnetic.FluxTubes.Sensors.MagneticFluxSensorI.png) [Modelica.Magnetic.FluxTubes.Sensors](Modelica_Magnetic_FluxTubes_Sensors.html#Modelica.Magnetic.FluxTubes.Sensors).MagneticFluxSensor
=============================================================================================================================================================================================================

**Sensor to measure magnetic flux**

Information
-----------

Extends from
[Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary](Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary)
(Partial component with two magnetic ports p and n for textual
programming),
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  [PositiveMagneticPort](Modelica_Magnetic_FluxTu port Positive magnetic
  bes_Interfaces.html#Modelica.Magnetic.FluxTubes \_p  port
  .Interfaces.PositiveMagneticPort)                    

  [NegativeMagneticPort](Modelica_Magnetic_FluxTu port Negative magnetic
  bes_Interfaces.html#Modelica.Magnetic.FluxTubes \_n  port
  .Interfaces.NegativeMagneticPort)                    

  output                                          Phi  Magnetic flux from
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo      port p to port n as
  delica.Blocks.Interfaces.RealOutput)                 output signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model MagneticFluxSensor "Sensor to measure magnetic flux"
      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      extends Modelica.Icons.RotationalSensor;

      Modelica.Blocks.Interfaces.RealOutput Phi 
        "Magnetic flux from port p to port n as output signal";
    equation 
      port_p.V_m = port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;

    end MagneticFluxSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:53 2010.
