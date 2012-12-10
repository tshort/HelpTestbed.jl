% Modelica.Thermal.HeatTransfer.Fahrenheit
% 
% 

[Modelica.Thermal.HeatTransfer](Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer).Fahrenheit
============================================================================================================

**Components with Fahrenheit input and/or output**

Information
-----------

::

The components of this package are provided for the convenience of
people working mostly with Fahrenheit units, since all models in package
HeatTransfer are based on Kelvin units.

Note, that in package SIunits.Conversions, functions are provided to
convert between the units Kelvin, degree Celsius, degree Fahrenheit and
degree Rankine. These functions allow, e.g., a direct conversion of
units at all places where Kelvin is required as parameter. Example:

    import SIunits.Conversions.*;
    Modelica.Thermal.HeatTransfer.HeatCapacitor C(T0 = from_degF(70));

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image5](Modelica.Thermal.HeatTransfer.Fahrenheit.ToKe Conversion block
  lvinS.png)                                              from
  [ToKelvin](Modelica_Thermal_HeatTransfer_Fahrenheit.htm degFahrenheit to
  l#Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvin)    Kelvin

  ![image6](Modelica.Thermal.HeatTransfer.Fahrenheit.From Conversion from
  KelvinS.png)                                            Kelvin to
  [FromKelvin](Modelica_Thermal_HeatTransfer_Fahrenheit.h degFahrenheit
  tml#Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvin 
  )                                                       

  ![image7](Modelica.Thermal.HeatTransfer.Fahrenheit.Fixe Fixed
  dTemperatureS.png)                                      temperature
  [FixedTemperature](Modelica_Thermal_HeatTransfer_Fahren boundary
  heit.html#Modelica.Thermal.HeatTransfer.Fahrenheit.Fixe condition in
  dTemperature)                                           degFahrenheit

  ![image8](Modelica.Thermal.HeatTransfer.Fahrenheit.Pres Variable
  cribedTemperatureS.png)                                 temperature
  [PrescribedTemperature](Modelica_Thermal_HeatTransfer_F boundary
  ahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit condition in
  .PrescribedTemperature)                                 degFahrenheit

  ![image9](Modelica.Thermal.HeatTransfer.Fahrenheit.Temp Absolute
  eratureSensorS.png)                                     temperature
  [TemperatureSensor](Modelica_Thermal_HeatTransfer_Fahre sensor in
  nheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit.Tem degFahrenheit
  peratureSensor)                                         
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvinI.png) [Modelica.Thermal.HeatTransfer.Fahrenheit](Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit).ToKelvin
==============================================================================================================================================================================================================

**Conversion block from degFahrenheit to Kelvin**

Information
-----------

::

This component converts a input signal from degree Fahrenheit to Kelvin
and provides is as output signal.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name     Descripti
                                                                  on
  ------------------------------------------------------ -------- ---------
  input                                                  Fahrenhe 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.B it       
  locks.Interfaces.RealInput)                                     

  output                                                 Kelvin   
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.          
  Blocks.Interfaces.RealOutput)                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ToKelvin "Conversion block from degFahrenheit to Kelvin"

      Modelica.Blocks.Interfaces.RealInput Fahrenheit;
      Modelica.Blocks.Interfaces.RealOutput Kelvin;
    equation 
      Kelvin = from_degF(Fahrenheit);
    end ToKelvin;

* * * * *

![image11](Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvinI.png) [Modelica.Thermal.HeatTransfer.Fahrenheit](Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit).FromKelvin
==================================================================================================================================================================================================================

**Conversion from Kelvin to degFahrenheit**

Information
-----------

::

This component converts all input signals from Kelvin to Fahrenheit and
provides them as output signals.

::

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        1           Number of inputs (= number of outputs)

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name     Descripti
                                                                  on
  ------------------------------------------------------ -------- ---------
  input                                                  Kelvin   
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.B          
  locks.Interfaces.RealInput)                                     

  output                                                 Fahrenhe 
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica. it       
  Blocks.Interfaces.RealOutput)                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model FromKelvin "Conversion from Kelvin to degFahrenheit"
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      Modelica.Blocks.Interfaces.RealInput Kelvin;
      Modelica.Blocks.Interfaces.RealOutput Fahrenheit;
    equation 
      Fahrenheit = to_degF(Kelvin);
    end FromKelvin;

* * * * *

![image12](Modelica.Thermal.HeatTransfer.Fahrenheit.FixedTemperatureI.png) [Modelica.Thermal.HeatTransfer.Fahrenheit](Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit).FixedTemperature
==============================================================================================================================================================================================================================

**Fixed temperature boundary condition in degFahrenheit**

Information
-----------

::

This model defines a fixed temperature T at its port in [degF], i.e., it
defines a fixed temperature as a boundary condition.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Nam Defa Description
                                                   e   ult  
  ------------------------------------------------ --- ---- ---------------
  [Temperature\_degF](Modelica_SIunits_Conversions T        Fixed
  _NonSIunits.html#Modelica.SIunits.Conversions.No          Temperature at
  nSIunits.Temperature_degF)                                the port [degF]
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
      "Fixed temperature boundary condition in degFahrenheit"
      parameter Modelica.SIunits.Conversions.NonSIunits.Temperature_degF T 
        "Fixed Temperature at the port";
      Interfaces.HeatPort_b port;
    equation 
      port.T = from_degF(T);
    end FixedTemperature;

* * * * *

![image13](Modelica.Thermal.HeatTransfer.Fahrenheit.PrescribedTemperatureI.png) [Modelica.Thermal.HeatTransfer.Fahrenheit](Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit).PrescribedTemperature
========================================================================================================================================================================================================================================

**Variable temperature boundary condition in degFahrenheit**

Information
-----------

::

This model represents a variable temperature boundary condition The
temperature value in [degF] is given by the input signal to the model.
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
      "Variable temperature boundary condition in degFahrenheit"

      Interfaces.HeatPort_b port;
      Modelica.Blocks.Interfaces.RealInput T;
    equation 
      port.T = from_degF(T);
    end PrescribedTemperature;

* * * * *

![image14](Modelica.Thermal.HeatTransfer.Fahrenheit.TemperatureSensorI.png) [Modelica.Thermal.HeatTransfer.Fahrenheit](Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit).TemperatureSensor
================================================================================================================================================================================================================================

**Absolute temperature sensor in degFahrenheit**

Information
-----------

::

This is an ideal absolute temperature sensor which returns the
temperature of the connected port in Fahrenheit as an output signal. The
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

    model TemperatureSensor 
      "Absolute temperature sensor in degFahrenheit"

      Modelica.Blocks.Interfaces.RealOutput T;
      Interfaces.HeatPort_a port;
    equation 
      T = to_degF(port.T);
      port.Q_flow = 0;
    end TemperatureSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:47 2010.
