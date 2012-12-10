% Modelica.Thermal.HeatTransfer.Rankine
% 
% 

[Modelica.Thermal.HeatTransfer](Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer).Rankine
=========================================================================================================

**Components with Rankine input and/or output**

Information
-----------

::

The components of this package are provided for the convenience of
people working mostly with Rankine units, since all models in package
HeatTransfer are based on Kelvin units.

Note, that in package SIunits.Conversions, functions are provided to
convert between the units Kelvin, degree Celsius, degree Fahrenheit and
degree Rankine. These functions allow, e.g., a direct conversion of
units at all places where Kelvin is required as parameter. Example:

    import SIunits.Conversions.*;
    Modelica.Thermal.HeatTransfer.HeatCapacitor C(T0 = from_degRk(500));

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image5](Modelica.Thermal.HeatTransfer.Rankine.ToKelvi Conversion block
  nS.png)                                                 from degRankine
  [ToKelvin](Modelica_Thermal_HeatTransfer_Rankine.html#M to Kelvin
  odelica.Thermal.HeatTransfer.Rankine.ToKelvin)          

  ![image6](Modelica.Thermal.HeatTransfer.Rankine.FromKel Conversion from
  vinS.png)                                               Kelvin to
  [FromKelvin](Modelica_Thermal_HeatTransfer_Rankine.html degRankine
  #Modelica.Thermal.HeatTransfer.Rankine.FromKelvin)      

  ![image7](Modelica.Thermal.HeatTransfer.Rankine.FixedTe Fixed
  mperatureS.png)                                         temperature
  [FixedTemperature](Modelica_Thermal_HeatTransfer_Rankin boundary
  e.html#Modelica.Thermal.HeatTransfer.Rankine.FixedTempe condition in
  rature)                                                 degRankine

  ![image8](Modelica.Thermal.HeatTransfer.Rankine.Prescri Variable
  bedTemperatureS.png)                                    temperature
  [PrescribedTemperature](Modelica_Thermal_HeatTransfer_R boundary
  ankine.html#Modelica.Thermal.HeatTransfer.Rankine.Presc condition in
  ribedTemperature)                                       degRankine

  ![image9](Modelica.Thermal.HeatTransfer.Rankine.Tempera Absolute
  tureSensorS.png)                                        temperature
  [TemperatureSensor](Modelica_Thermal_HeatTransfer_Ranki sensor in
  ne.html#Modelica.Thermal.HeatTransfer.Rankine.Temperatu degRankine
  reSensor)                                               
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Thermal.HeatTransfer.Rankine.ToKelvinI.png) [Modelica.Thermal.HeatTransfer.Rankine](Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine).ToKelvin
==================================================================================================================================================================================================

**Conversion block from degRankine to Kelvin**

Information
-----------

::

This component converts all input signals from degree Rankine to Kelvin
and provides them as output signals.

::

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        1           Number of inputs (= number of outputs)

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name   Descripti
                                                                 on
  ------------------------------------------------------- ------ ---------
  input                                                   Rankin 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bl e      
  ocks.Interfaces.RealInput)                                     

  output                                                  Kelvin 
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.B        
  locks.Interfaces.RealOutput)                                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ToKelvin "Conversion block from degRankine to Kelvin"
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      Modelica.Blocks.Interfaces.RealInput Rankine;
      Modelica.Blocks.Interfaces.RealOutput Kelvin;
    equation 
      Kelvin = from_degRk(Rankine);
    end ToKelvin;

* * * * *

![image11](Modelica.Thermal.HeatTransfer.Rankine.FromKelvinI.png) [Modelica.Thermal.HeatTransfer.Rankine](Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine).FromKelvin
======================================================================================================================================================================================================

**Conversion from Kelvin to degRankine**

Information
-----------

::

This component converts all input signals from Kelvin to Rankine and
provides them as output signals.

::

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ----------------------------------------
  Integer     n        1           Number of inputs (= number of outputs)

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                    Name   Descripti
                                                                 on
  ------------------------------------------------------- ------ ---------
  input                                                   Kelvin 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bl        
  ocks.Interfaces.RealInput)                                     

  output                                                  Rankin 
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.B e      
  locks.Interfaces.RealOutput)                                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model FromKelvin "Conversion from Kelvin to degRankine"
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      Modelica.Blocks.Interfaces.RealInput Kelvin;
      Modelica.Blocks.Interfaces.RealOutput Rankine;
    equation 
      Rankine = to_degRk(Kelvin);
    end FromKelvin;

* * * * *

![image12](Modelica.Thermal.HeatTransfer.Rankine.FixedTemperatureI.png) [Modelica.Thermal.HeatTransfer.Rankine](Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine).FixedTemperature
==================================================================================================================================================================================================================

**Fixed temperature boundary condition in degRankine**

Information
-----------

::

This model defines a fixed temperature T at its port in degree Rankine,
[degRk], i.e., it defines a fixed temperature as a boundary condition.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Nam Defa Description
                                                   e   ult  
  ------------------------------------------------ --- ---- ---------------
  [Temperature\_degRk](Modelica_SIunits_Conversion T        Fixed
  s_NonSIunits.html#Modelica.SIunits.Conversions.N          Temperature at
  onSIunits.Temperature_degRk)                              the port
                                                            [degRk]
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
      "Fixed temperature boundary condition in degRankine"

      parameter Modelica.SIunits.Conversions.NonSIunits.Temperature_degRk T 
        "Fixed Temperature at the port";
      Interfaces.HeatPort_b port;
    equation 
      port.T = from_degRk(T);
    end FixedTemperature;

* * * * *

![image13](Modelica.Thermal.HeatTransfer.Rankine.PrescribedTemperatureI.png) [Modelica.Thermal.HeatTransfer.Rankine](Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine).PrescribedTemperature
============================================================================================================================================================================================================================

**Variable temperature boundary condition in degRankine**

Information
-----------

::

This model represents a variable temperature boundary condition The
temperature value in degree Rankine, [degRk] is given by the input
signal to the model. The effect is that an instance of this model acts
as an infinite reservoir able to absorb or generate as much energy as
required to keep the temperature at the specified value.

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
      "Variable temperature boundary condition in degRankine"

      Interfaces.HeatPort_b port;
      Modelica.Blocks.Interfaces.RealInput T;
    equation 
      port.T = from_degRk(T);
    end PrescribedTemperature;

* * * * *

![image14](Modelica.Thermal.HeatTransfer.Rankine.TemperatureSensorI.png) [Modelica.Thermal.HeatTransfer.Rankine](Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine).TemperatureSensor
====================================================================================================================================================================================================================

**Absolute temperature sensor in degRankine**

Information
-----------

::

This is an ideal absolute temperature sensor which returns the
temperature of the connected port in Rankine as an output signal. The
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

    model TemperatureSensor "Absolute temperature sensor in degRankine"

      Modelica.Blocks.Interfaces.RealOutput T;
      Interfaces.HeatPort_a port;
    equation 
      T = to_degRk(port.T);
      port.Q_flow = 0;
    end TemperatureSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:47 2010.
