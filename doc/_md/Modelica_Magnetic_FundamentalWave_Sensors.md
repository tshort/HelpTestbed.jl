% Modelica.Magnetic.FundamentalWave.Sensors
% 
% 

[Modelica.Magnetic.FundamentalWave](Modelica_Magnetic_FundamentalWave.html#Modelica.Magnetic.FundamentalWave).Sensors
=====================================================================================================================

**Sensors to measure variables in magnetic networks**

Information
-----------

::

This package provides sensors for the magnetic potential difference and
the magnetic flux in magnetic circuit.

::

Extends from
[Modelica.Icons.SensorsPackage](Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage)
(Icon for packages containing sensors).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                        Description
  ----------------------------------------------------------- ------------
  ![image3](Modelica.Magnetic.FundamentalWave.Sensors.Magneti Sensor to
  cFluxSensorS.png)                                           measure
  [MagneticFluxSensor](Modelica_Magnetic_FundamentalWave_Sens magnetic
  ors.html#Modelica.Magnetic.FundamentalWave.Sensors.Magnetic flux
  FluxSensor)                                                 

  ![image4](Modelica.Magnetic.FundamentalWave.Sensors.Magneti Sensor to
  cFluxSensorS.png)                                           measure
  [MagneticPotentialDifferenceSensor](Modelica_Magnetic_Funda magnetic
  mentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.S potential
  ensors.MagneticPotentialDifferenceSensor)                   difference

  ![image5](Modelica.Magnetic.FundamentalWave.Sensors.Magneti Sensor to
  cPotentialSensorS.png)                                      measure
  [MagneticPotentialSensor](Modelica_Magnetic_FundamentalWave magnetic
  _Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors.Mag potentiale
  neticPotentialSensor)                                       
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensorI.png) [Modelica.Magnetic.FundamentalWave.Sensors](Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors).MagneticFluxSensor
=====================================================================================================================================================================================================================================

**Sensor to measure magnetic flux**

Information
-----------

::

Sensor for magnetic flux.

### See also

[MagneticPotentialDifferenceSensor](Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor)

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device),
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort)
(Two magnetic ports for graphical modeling).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Nam Description
                                                 e   
  ---------------------------------------------- --- ---------------------
  [PositiveMagneticPort](Modelica_Magnetic_Funda por Positive complex
  mentalWave_Interfaces.html#Modelica.Magnetic.F t\_ magnetic port
  undamentalWave.Interfaces.PositiveMagneticPort p   
  )                                                  

  [NegativeMagneticPort](Modelica_Magnetic_Funda por Negative complex
  mentalWave_Interfaces.html#Modelica.Magnetic.F t\_ magnetic port
  undamentalWave.Interfaces.NegativeMagneticPort n   
  )                                                  

  output                                         Phi Complex magnetic flux
  [ComplexOutput](Modelica_ComplexBlocks_Interfa     from por\_ p to
  ces.html#Modelica.ComplexBlocks.Interfaces.Com     port\_n as output
  plexOutput)                                        signal
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model MagneticFluxSensor "Sensor to measure magnetic flux"
      extends Modelica.Icons.RotationalSensor;
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      Modelica.SIunits.ComplexMagneticPotentialDifference  V_m 
        "Complex magnetic potential difference";
      Modelica.ComplexBlocks.Interfaces.ComplexOutput Phi 
        "Complex magnetic flux from por_ p to port_n as output signal";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

      // No magnetic potential difference at sensor
      V_m = Complex(0,0);

    end MagneticFluxSensor;

* * * * *

![image7](Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensorI.png) [Modelica.Magnetic.FundamentalWave.Sensors](Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors).MagneticPotentialDifferenceSensor
===================================================================================================================================================================================================================================================================

**Sensor to measure magnetic potential difference**

Information
-----------

::

Sensor for magnetic potential difference.

### See also

[MagneticFluxSensor](Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensor)

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device),
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort)
(Two magnetic ports for graphical modeling).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                       Nam Description
                                             e   
  ------------------------------------------ --- -------------------------
  [PositiveMagneticPort](Modelica_Magnetic_F por Positive complex magnetic
  undamentalWave_Interfaces.html#Modelica.Ma t\_ port
  gnetic.FundamentalWave.Interfaces.Positive p   
  MagneticPort)                                  

  [NegativeMagneticPort](Modelica_Magnetic_F por Negative complex magnetic
  undamentalWave_Interfaces.html#Modelica.Ma t\_ port
  gnetic.FundamentalWave.Interfaces.Negative n   
  MagneticPort)                                  

  output                                     V\_ Complex magnetic
  [ComplexOutput](Modelica_ComplexBlocks_Int m   potential difference
  erfaces.html#Modelica.ComplexBlocks.Interf     between port\_p and
  aces.ComplexOutput)                            port\_n as output signal
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model MagneticPotentialDifferenceSensor 
      "Sensor to measure magnetic potential difference"
      extends Modelica.Icons.RotationalSensor;
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      Modelica.ComplexBlocks.Interfaces.ComplexOutput V_m 
        "Complex magnetic potential difference between port_p and port_n as output signal";
      Modelica.SIunits.ComplexMagneticFlux  Phi "Complex magnetic flux";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

      // No magnetic flux through sensor
      Phi = Complex(0,0);

    end MagneticPotentialDifferenceSensor;

* * * * *

![image8](Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialSensorI.png) [Modelica.Magnetic.FundamentalWave.Sensors](Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors).MagneticPotentialSensor
===============================================================================================================================================================================================================================================

**Sensor to measure magnetic potentiale**

Information
-----------

::

Sensor for magnetic potential difference.

### See also

[MagneticFluxSensor](Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensor)

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                    Name Description
  ------------------------------------------------------- ---- ------------
  output                                                  V\_m Complex
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#      magnetic
  Modelica.ComplexBlocks.Interfaces.ComplexOutput)             potential

  [PositiveMagneticPort](Modelica_Magnetic_FundamentalWav port Magnetic
  e_Interfaces.html#Modelica.Magnetic.FundamentalWave.Int \_p  connector of
  erfaces.PositiveMagneticPort)                                sensor
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model MagneticPotentialSensor "Sensor to measure magnetic potentiale"
      extends Modelica.Icons.RotationalSensor;

      Modelica.ComplexBlocks.Interfaces.ComplexOutput V_m 
        "Complex magnetic potential";

      Interfaces.PositiveMagneticPort port_p "Magnetic connector of sensor";
    equation 
      // No magnetic flux through sensor
      port_p.Phi = Complex(0,0);

      // Magnetic potential
      V_m = port_p.V_m;

    end MagneticPotentialSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:02 2010.
