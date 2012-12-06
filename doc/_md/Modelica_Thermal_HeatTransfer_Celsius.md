% Modelica.Thermal.HeatTransfer.Celsius
% 
% 

[Modelica.Thermal.HeatTransfer](Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer).Celsius
=========================================================================================================

**Components with Celsius input and/or output**

Information
-----------

::

The components of this package are provided for the convenience of
people working mostly with Celsius units, since all models in package
HeatTransfer are based on Kelvin units.

Note, that in package SIunits.Conversions, functions are provided to
convert between the units Kelvin, degree Celsius, degree Fahrenheit, and
degree Rankine. These functions allow, e.g., a direct conversion of
units at all places where Kelvin is required as parameter. Example:

    import SIunits.Conversions.*;
    Modelica.Thermal.HeatTransfer.HeatCapacitor C(T0 = from_degC(20));

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image5](Modelica.Thermal.HeatTransfer.Celsius.ToKelvi Conversion block
  nS.png)                                                 from degCelsius
  [ToKelvin](Modelica_Thermal_HeatTransfer_Celsius.html#M to Kelvin
  odelica.Thermal.HeatTransfer.Celsius.ToKelvin)          

  ![image6](Modelica.Thermal.HeatTransfer.Celsius.FromKel Conversion from
  vinS.png)                                               Kelvin to
  [FromKelvin](Modelica_Thermal_HeatTransfer_Celsius.html degCelsius
  #Modelica.Thermal.HeatTransfer.Celsius.FromKelvin)      

  ![image7](Modelica.Thermal.HeatTransfer.Celsius.FixedTe Fixed
  mperatureS.png)                                         temperature
  [FixedTemperature](Modelica_Thermal_HeatTransfer_Celsiu boundary
  s.html#Modelica.Thermal.HeatTransfer.Celsius.FixedTempe condition in
  rature)                                                 degree Celsius

  ![image8](Modelica.Thermal.HeatTransfer.Celsius.Prescri Variable
  bedTemperatureS.png)                                    temperature
  [PrescribedTemperature](Modelica_Thermal_HeatTransfer_C boundary
  elsius.html#Modelica.Thermal.HeatTransfer.Celsius.Presc condition in
  ribedTemperature)                                       degCelsius

  ![image9](Modelica.Thermal.HeatTransfer.Celsius.Tempera Absolute
  tureSensorS.png)                                        temperature
  [TemperatureSensor](Modelica_Thermal_HeatTransfer_Celsi sensor in
  us.html#Modelica.Thermal.HeatTransfer.Celsius.Temperatu degCelsius
  reSensor)                                               
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Thermal.HeatTransfer.Celsius.ToKelvinI.png) [Modelica.Thermal.HeatTransfer.Celsius](Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius).ToKelvin
==================================================================================================================================================================================================

**Conversion block from degCelsius to Kelvin**

Information
-----------

::

This component converts an input signal from Celsius to Kelvin and
provide is as output signal.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name   Descripti
                                                                 on
  ------------------------------------------------------- ------ ---------
  input                                                   Celsiu 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bl s      
  ocks.Interfaces.RealInput)                                     

  output                                                  Kelvin 
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.B        
  locks.Interfaces.RealOutput)                                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ToKelvin "Conversion block from degCelsius to Kelvin"

      Modelica.Blocks.Interfaces.RealInput Celsius;
      Modelica.Blocks.Interfaces.RealOutput Kelvin;
    equation 
      Kelvin = from_degC(Celsius);
    end ToKelvin;

* * * * *

![image11](Modelica.Thermal.HeatTransfer.Celsius.FromKelvinI.png) [Modelica.Thermal.HeatTransfer.Celsius](Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius).FromKelvin
======================================================================================================================================================================================================

**Conversion from Kelvin to degCelsius**

Information
-----------

::

This component converts an input signal from Kelvin to Celsius and
provides is as output signal.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name   Descripti
                                                                 on
  ------------------------------------------------------- ------ ---------
  input                                                   Kelvin 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bl        
  ocks.Interfaces.RealInput)                                     

  output                                                  Celsiu 
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.B s      
  locks.Interfaces.RealOutput)                                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model FromKelvin "Conversion from Kelvin to degCelsius"

      Modelica.Blocks.Interfaces.RealInput Kelvin;
      Modelica.Blocks.Interfaces.RealOutput Celsius;
    equation 
      Celsius = to_degC(Kelvin);
    end FromKelvin;

* * * * *

![image12](Modelica.Thermal.HeatTransfer.Celsius.FixedTemperatureI.png) [Modelica.Thermal.HeatTransfer.Celsius](Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius).FixedTemperature
==================================================================================================================================================================================================================

**Fixed temperature boundary condition in degree Celsius**

Information
-----------

::

This model defines a fixed temperature T at its port in [degC], i.e., it
defines a fixed temperature as a boundary condition.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Nam Defa Description
                                                   e   ult  
  ------------------------------------------------ --- ---- ---------------
  [Temperature\_degC](Modelica_SIunits_Conversions T        Fixed
  _NonSIunits.html#Modelica.SIunits.Conversions.No          Temperature at
  nSIunits.Temperature_degC)                                the port [degC]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.html port 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model FixedTemperature 
      "Fixed temperature boundary condition in degree Celsius"
      parameter Modelica.SIunits.Conversions.NonSIunits.Temperature_degC T 
        "Fixed Temperature at the port";
      Interfaces.HeatPort_b port;
    equation 
      port.T = from_degC(T);
    end FixedTemperature;

* * * * *

![image13](Modelica.Thermal.HeatTransfer.Celsius.PrescribedTemperatureI.png) [Modelica.Thermal.HeatTransfer.Celsius](Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius).PrescribedTemperature
============================================================================================================================================================================================================================

**Variable temperature boundary condition in degCelsius**

Information
-----------

::

This model represents a variable temperature boundary condition The
temperature value in [degC] is given by the input signal to the model.
The effect is that an instance of this model acts as an infinite
reservoir able to absorb or generate as much energy as required to keep
the temperature at the specified value.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.html port 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)            

  input                                                       T    
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Blocks      
  .Interfaces.RealInput)                                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PrescribedTemperature 
      "Variable temperature boundary condition in degCelsius"

      Interfaces.HeatPort_b port;
      Modelica.Blocks.Interfaces.RealInput T;
    equation 
      port.T = from_degC(T);
    end PrescribedTemperature;

* * * * *

![image14](Modelica.Thermal.HeatTransfer.Celsius.TemperatureSensorI.png) [Modelica.Thermal.HeatTransfer.Celsius](Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius).TemperatureSensor
====================================================================================================================================================================================================================

**Absolute temperature sensor in degCelsius**

Information
-----------

::

This is an ideal absolute temperature sensor which returns the
temperature of the connected port in Celsius as an output signal. The
sensor itself has no thermal interaction with whatever it is connected
to. Furthermore, no thermocouple-like lags are associated with this
sensor model.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  output                                                      T    
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Block      
  s.Interfaces.RealOutput)                                         

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.html port 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model TemperatureSensor "Absolute temperature sensor in degCelsius"

      Modelica.Blocks.Interfaces.RealOutput T;
      Interfaces.HeatPort_a port;
    equation 
      T = to_degC(port.T);
      port.Q_flow = 0;
    end TemperatureSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:47 2010.
