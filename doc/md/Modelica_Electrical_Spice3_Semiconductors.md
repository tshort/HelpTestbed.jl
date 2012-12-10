% Modelica.Electrical.Spice3.Semiconductors
% 
% 

[Modelica.Electrical.Spice3](Modelica_Electrical_Spice3.html#Modelica.Electrical.Spice3).Semiconductors
=======================================================================================================

**Semiconductor devices and model cards**

Information
-----------

::

This package contains both the semiconductor devices models of SPICE3,
which are available, and their modelcards. The user should apply the
models of this package.

All models of this package extend models of the package Repository,
which contains the functions, parameters and data which are necessary to
model the behaviour of the semiconductor devices.The modelcard records
contain the SPICE3 technology parameters, which can be adjusted for more
than one MOS simultaneously.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image10](Modelica.Electrical.Spice3.Semiconductors.M_ PMOS MOSFET
  PMOSS.png)                                              device
  [M\_PMOS](Modelica_Electrical_Spice3_Semiconductors.htm 
  l#Modelica.Electrical.Spice3.Semiconductors.M_PMOS)     

  ![image11](Modelica.Electrical.Spice3.Semiconductors.M_ NMOS MOSFET
  PMOSS.png)                                              device
  [M\_NMOS](Modelica_Electrical_Spice3_Semiconductors.htm 
  l#Modelica.Electrical.Spice3.Semiconductors.M_NMOS)     

  ![image12](Modelica.Electrical.Spice3.Semiconductors.Mo Record for the
  delcardMOSS.png)                                        specification of
  [ModelcardMOS](Modelica_Electrical_Spice3_Semiconductor modelcard
  s.html#Modelica.Electrical.Spice3.Semiconductors.Modelc parameters
  ardMOS)                                                 

  ![image13](Modelica.Electrical.Spice3.Semiconductors.Q_ Bipolar junction
  NPNBJTS.png)                                            transistor
  [Q\_NPNBJT](Modelica_Electrical_Spice3_Semiconductors.h 
  tml#Modelica.Electrical.Spice3.Semiconductors.Q_NPNBJT) 

  ![image14](Modelica.Electrical.Spice3.Semiconductors.Q_ Bipolar junction
  PNPBJTS.png)                                            transistor
  [Q\_PNPBJT](Modelica_Electrical_Spice3_Semiconductors.h 
  tml#Modelica.Electrical.Spice3.Semiconductors.Q_PNPBJT) 

  ![image15](Modelica.Electrical.Spice3.Semiconductors.Mo Record for the
  delcardBJTS.png)                                        specification of
  [ModelcardBJT](Modelica_Electrical_Spice3_Semiconductor modelcard
  s.html#Modelica.Electrical.Spice3.Semiconductors.Modelc parameters
  ardBJT)                                                 

  ![image16](Modelica.Electrical.Spice3.Semiconductors.D_ Diode model
  DIODES.png)                                             
  [D\_DIODE](Modelica_Electrical_Spice3_Semiconductors.ht 
  ml#Modelica.Electrical.Spice3.Semiconductors.D_DIODE)   

  ![image17](Modelica.Electrical.Spice3.Semiconductors.Mo Record for the
  delcardDIODES.png)                                      specification of
  [ModelcardDIODE](Modelica_Electrical_Spice3_Semiconduct modelcard
  ors.html#Modelica.Electrical.Spice3.Semiconductors.Mode parameters
  lcardDIODE)                                             

  ![image18](Modelica.Electrical.Spice3.Semiconductors.R_ Semiconductor
  ResistorS.png)                                          resistor from
  [R\_Resistor](Modelica_Electrical_Spice3_Semiconductors SPICE3
  .html#Modelica.Electrical.Spice3.Semiconductors.R_Resis 
  tor)                                                    

  ![image19](Modelica.Electrical.Spice3.Semiconductors.Mo Record for the
  delcardRESISTORS.png)                                   specification of
  [ModelcardRESISTOR](Modelica_Electrical_Spice3_Semicond modelcard
  uctors.html#Modelica.Electrical.Spice3.Semiconductors.M parameters
  odelcardRESISTOR)                                       
  ------------------------------------------------------------------------

* * * * *

![image20](Modelica.Electrical.Spice3.Semiconductors.M_PMOSI.png) [Modelica.Electrical.Spice3.Semiconductors](Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors).M\_PMOS
===============================================================================================================================================================================================================

**PMOS MOSFET device**

Information
-----------

::

The model M\_PMOS is a P channel MOSFET transistor with fixed level 1:
Shichman-Hodges model

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
[Modelica.Electrical.Spice3.Internal.MOS](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.MOS)
(Metal-Oxide Semiconductor Field-Effect Transistor).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                 Name Def Description
                                            aul 
                                            t   
  ------------------------------------ ---- --- --------------------------
  Integer                              mtyp 1   MOSFET type: 0 - N
                                       e        channel, 1 - P channel

  [Length](Modelica_SIunits.html#Model L    1e- Length [m]
  ica.SIunits.Length)                       4   

  [Length](Modelica_SIunits.html#Model W    1e- Width [m]
  ica.SIunits.Length)                       4   

  [Area](Modelica_SIunits.html#Modelic AD   0   Area of the drain
  a.SIunits.Area)                               diffusion [m2]

  [Area](Modelica_SIunits.html#Modelic AS   0   Area of the source
  a.SIunits.Area)                               diffusion [m2]

  [Length](Modelica_SIunits.html#Model PD   0   Perimeter of the drain
  ica.SIunits.Length)                           junction [m]

  [Length](Modelica_SIunits.html#Model PS   0   Perimeter of the source
  ica.SIunits.Length)                           junction [m]

  Real                                 NRD  1   Number of squares of the
                                                drain diffusions

  Real                                 NRS  1   Number of squares of the
                                                source diffusions

  Integer                              OFF  0   Optional initial
                                                condition: 0 - IC not
                                                used, 1 - IC used, not
                                                implemented yet

  [Voltage](Modelica_SIunits.html#Mode IC       Initial condition values,
  lica.SIunits.Voltage)                         not implemented yet [V]

  [Temp\_C](Modelica_SIunits.html#Mode TEMP 27  Operating temperature of
  lica.SIunits.Temp_C)                          the device [degC]

  [ModelcardMOS](Modelica_Electrical_S mode     MOSFET modelcard
  pice3_Internal.html#Modelica.Electri lcar     
  cal.Spice3.Internal.ModelcardMOS)    d        
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  [PositivePin](Modelica_Electrical_Analog_Interfaces.html#Mo G    gate
  delica.Electrical.Analog.Interfaces.PositivePin)                 node

  [PositivePin](Modelica_Electrical_Analog_Interfaces.html#Mo D    drain
  delica.Electrical.Analog.Interfaces.PositivePin)                 node

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html#Mo S    source
  delica.Electrical.Analog.Interfaces.NegativePin)                 node

  [PositivePin](Modelica_Electrical_Analog_Interfaces.html#Mo B    bulk
  delica.Electrical.Analog.Interfaces.PositivePin)                 node
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model M_PMOS "PMOS MOSFET device"
      extends Modelica.Electrical.Spice3.Internal.MOS(
                              final mtype=1);
    equation 

    end M_PMOS;

* * * * *

![image21](Modelica.Electrical.Spice3.Semiconductors.M_NMOSI.png) [Modelica.Electrical.Spice3.Semiconductors](Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors).M\_NMOS
===============================================================================================================================================================================================================

**NMOS MOSFET device**

Information
-----------

::

The model M\_NMOS is a N channel MOSFET transistor with fixed level 1:
Shichman-Hodges model

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
[Modelica.Electrical.Spice3.Internal.MOS](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.MOS)
(Metal-Oxide Semiconductor Field-Effect Transistor).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                 Name Def Description
                                            aul 
                                            t   
  ------------------------------------ ---- --- --------------------------
  Integer                              mtyp 0   MOSFET type: 0 - N
                                       e        channel, 1 - P channel

  [Length](Modelica_SIunits.html#Model L    1e- Length [m]
  ica.SIunits.Length)                       4   

  [Length](Modelica_SIunits.html#Model W    1e- Width [m]
  ica.SIunits.Length)                       4   

  [Area](Modelica_SIunits.html#Modelic AD   0   Area of the drain
  a.SIunits.Area)                               diffusion [m2]

  [Area](Modelica_SIunits.html#Modelic AS   0   Area of the source
  a.SIunits.Area)                               diffusion [m2]

  [Length](Modelica_SIunits.html#Model PD   0   Perimeter of the drain
  ica.SIunits.Length)                           junction [m]

  [Length](Modelica_SIunits.html#Model PS   0   Perimeter of the source
  ica.SIunits.Length)                           junction [m]

  Real                                 NRD  1   Number of squares of the
                                                drain diffusions

  Real                                 NRS  1   Number of squares of the
                                                source diffusions

  Integer                              OFF  0   Optional initial
                                                condition: 0 - IC not
                                                used, 1 - IC used, not
                                                implemented yet

  [Voltage](Modelica_SIunits.html#Mode IC       Initial condition values,
  lica.SIunits.Voltage)                         not implemented yet [V]

  [Temp\_C](Modelica_SIunits.html#Mode TEMP 27  Operating temperature of
  lica.SIunits.Temp_C)                          the device [degC]

  [ModelcardMOS](Modelica_Electrical_S mode     MOSFET modelcard
  pice3_Internal.html#Modelica.Electri lcar     
  cal.Spice3.Internal.ModelcardMOS)    d        
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  [PositivePin](Modelica_Electrical_Analog_Interfaces.html#Mo G    gate
  delica.Electrical.Analog.Interfaces.PositivePin)                 node

  [PositivePin](Modelica_Electrical_Analog_Interfaces.html#Mo D    drain
  delica.Electrical.Analog.Interfaces.PositivePin)                 node

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html#Mo S    source
  delica.Electrical.Analog.Interfaces.NegativePin)                 node

  [PositivePin](Modelica_Electrical_Analog_Interfaces.html#Mo B    bulk
  delica.Electrical.Analog.Interfaces.PositivePin)                 node
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model M_NMOS "NMOS MOSFET device"
      extends Modelica.Electrical.Spice3.Internal.MOS(
                              final mtype=0);
    equation 

    end M_NMOS;

* * * * *

[Modelica.Electrical.Spice3.Semiconductors](Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors).ModelcardMOS
==================================================================================================================================================

**Record for the specification of modelcard parameters**

Information
-----------

::

Technology model parameters of MOSFET transistor with fixed level 1:
Shichman-Hodges model

In modelcards, that are typical for SPICE3, the so called technology
parameters are stored. These parameters are usually set for more than
one semiconductor device in a circuit, e.g., the temperature of a whole
electrical circuit.

::

Extends from
[Modelica.Electrical.Spice3.Internal.ModelcardMOS](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardMOS)
(Record with technological parameters (.model)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Nam Def Description
                                            e   aul 
                                                t   
  ----------------------------------------- --- --- -----------------------
  [Voltage](Modelica_SIunits.html#Modelica. VTO -1e Zero-bias threshold
  SIunits.Voltage)                              40  voltage, default 0 [V]

  [Transconductance](Modelica_SIunits.html# KP  -1e Transconductance
  Modelica.SIunits.Transconductance)            40  parameter, default 2e-5
                                                    [A/V2]

  Real                                      GAM -1e Bulk threshold
                                            MA  40  parameter, default 0

  [Voltage](Modelica_SIunits.html#Modelica. PHI -1e Surface potential,
  SIunits.Voltage)                              40  default 0.6 [V]

  [InversePotential](Modelica_SIunits.html# LAM 0   Channel-length
  Modelica.SIunits.InversePotential)        BDA     modulation, default 0
                                                    [1/V]

  [Resistance](Modelica_SIunits.html#Modeli RD  -1e Drain ohmic resistance,
  ca.SIunits.Resistance)                        40  default 0 [Ohm]

  [Resistance](Modelica_SIunits.html#Modeli RS  -1e Source ohmic
  ca.SIunits.Resistance)                        40  resistance, default 0
                                                    [Ohm]

  [Capacitance](Modelica_SIunits.html#Model CBD -1e Zero-bias B-D junction
  ica.SIunits.Capacitance)                      40  capacitance, default 0
                                                    [F]

  [Capacitance](Modelica_SIunits.html#Model CBS -1e Zero-bias B-S junction
  ica.SIunits.Capacitance)                      40  capacitance, default 0
                                                    [F]

  [Current](Modelica_SIunits.html#Modelica. IS  1.e Bulk junction
  SIunits.Current)                              -14 saturation current [A]

  [Voltage](Modelica_SIunits.html#Modelica. PB  0.8 Bulk junction potential
  SIunits.Voltage)                                  [V]

  [Permittivity](Modelica_SIunits.html#Mode CGS 0.0 Gate-source overlap
  lica.SIunits.Permittivity)                O       capacitance per meter
                                                    channel width [F/m]

  [Permittivity](Modelica_SIunits.html#Mode CGD 0.0 Gate-drain overlap
  lica.SIunits.Permittivity)                O       capacitance per meter
                                                    channel width [F/m]

  [Permittivity](Modelica_SIunits.html#Mode CGB 0.0 Gate-bulk overlap
  lica.SIunits.Permittivity)                O       capacitance per meter
                                                    channel width [F/m]

  [Resistance](Modelica_SIunits.html#Modeli RSH 0.0 Drain and source
  ca.SIunits.Resistance)                            diffusion sheet
                                                    resistance [Ohm]

  [CapacitancePerArea](Modelica_SIunits.htm CJ  0.0 Zero-bias bulk junction
  l#Modelica.SIunits.CapacitancePerArea)            bottom cap. per
                                                    sq-meter of junction
                                                    area [F/m2]

  Real                                      MJ  0.5 Bulk junction bottom
                                                    grading coefficient

  [Permittivity](Modelica_SIunits.html#Mode CJS 0.0 Zero-bias junction
  lica.SIunits.Permittivity)                W       sidewall cap. per meter
                                                    of junction perimeter
                                                    [F/m]

  Real                                      MJS 0.5 Bulk junction sidewall
                                            W       grading coefficient

  [CurrentDensity](Modelica_SIunits.html#Mo JS  0.0 Bulk junction
  delica.SIunits.CurrentDensity)                    saturation current per
                                                    sq-meter of junction
                                                    area [A/m2]

  [Length](Modelica_SIunits.html#Modelica.S TOX -1e Oxide thickness,
  Iunits.Length)                                40  default 1e-7 [m]

  Real                                      NSU -1e Substrate doping,
                                            B   40  default 0

  [PerArea\_cm](Modelica_SIunits_Conversion NSS 0.0 Surface state density
  s_NonSIunits.html#Modelica.SIunits.Conver         [1/cm2]
  sions.NonSIunits.PerArea_cm)                      

  Real                                      TPG 1.0 Type of gate material:
                                                    +1 opp. to substrate,
                                                    -1 same as substrate, 0
                                                    Al gate

  [Length](Modelica_SIunits.html#Modelica.S LD  0.0 Lateral diffusion [m]
  Iunits.Length)                                    

  [Area\_cmPerVoltageSecond](Modelica_SIuni UO  600 Surface mobility
  ts_Conversions_NonSIunits.html#Modelica.S         [cm2/(V.s)]
  Iunits.Conversions.NonSIunits.Area_cmPerV         
  oltageSecond)                                     

  Real                                      KF  0   Flicker noise
                                                    coefficient

  Real                                      AF  1.0 Flicker noise exponent

  Real                                      FC  0.5 Coefficient for
                                                    forward-bias depletion
                                                    capacitance formula

  [Temp\_C](Modelica_SIunits.html#Modelica. TNO -1e Parameter measurement
  SIunits.Temp_C)                           M   40  temperature, default 27
                                                    [degC]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record ModelcardMOS 
      "Record for the specification of modelcard parameters"
      extends Modelica.Electrical.Spice3.Internal.ModelcardMOS;
    end ModelcardMOS;

* * * * *

![image22](Modelica.Electrical.Spice3.Semiconductors.Q_NPNBJTI.png) [Modelica.Electrical.Spice3.Semiconductors](Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors).Q\_NPNBJT
===================================================================================================================================================================================================================

**Bipolar junction transistor**

Information
-----------

::

The model Q\_NPNBJT is a NPN bipolar junction transistor model: Modified
Gummel-Poon.

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
[Modelica.Electrical.Spice3.Internal.BJT](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.BJT)
(Bipolar junction transistor).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                 Name Def Description
                                            aul 
                                            t   
  ------------------------------------ ---- --- ---------------------------
  Real                                 TBJT 1   Type of transistor (NPN=1,
                                                PNP=-1)

  Real                                 AREA 1.0 Area factor

  Boolean                              OFF  fal Optional initial condition:
                                            se  false - IC not used, true -
                                                IC used, not implemented
                                                yet

  [Voltage](Modelica_SIunits.html#Mode IC\_     Initial condition value
  lica.SIunits.Voltage)                VCE      (VBE, not implemented yet
                                                [V]

  [Voltage](Modelica_SIunits.html#Mode IC\_     Initial condition value
  lica.SIunits.Voltage)                VBE      (VBC, not implemented yet
                                                [V]

  [Temp\_C](Modelica_SIunits.html#Mode TEMP 27  Operating temperature of
  lica.SIunits.Temp_C)                          the device [degC]

  Boolean                              SENS fal Flag to request sensitivity
                                       \_AR se  WRT area, not implemented
                                       EA       yet

  [ModelcardBJT](Modelica_Electrical_S mode     BJT modelcard
  pice3_Internal.html#Modelica.Electri lcar     
  cal.Spice3.Internal.ModelcardBJT)    d        

  [SpiceConstants](Modelica_Electrical Con      General constants of SPICE
  _Spice3_Internal.html#Modelica.Elect          simulator
  rical.Spice3.Internal.SpiceConstants          
  )                                             
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name Descripti
                                                                 on
  --------------------------------------------------------- ---- ---------
  [PositivePin](Modelica_Electrical_Analog_Interfaces.html# B    Base node
  Modelica.Electrical.Analog.Interfaces.PositivePin)             

  [PositivePin](Modelica_Electrical_Analog_Interfaces.html# C    Collector
  Modelica.Electrical.Analog.Interfaces.PositivePin)             node

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# E    Emitter
  Modelica.Electrical.Analog.Interfaces.NegativePin)             node
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Q_NPNBJT "Bipolar junction transistor"
     extends Modelica.Electrical.Spice3.Internal.BJT(
                            final TBJT=1);


    end Q_NPNBJT;

* * * * *

![image23](Modelica.Electrical.Spice3.Semiconductors.Q_PNPBJTI.png) [Modelica.Electrical.Spice3.Semiconductors](Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors).Q\_PNPBJT
===================================================================================================================================================================================================================

**Bipolar junction transistor**

Information
-----------

::

The model Q\_PNPBJT is a PNP bipolar junction transistor model: Modified
Gummel-Poon.

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
[Modelica.Electrical.Spice3.Internal.BJT](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.BJT)
(Bipolar junction transistor).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                 Name Def Description
                                            aul 
                                            t   
  ------------------------------------ ---- --- ---------------------------
  Real                                 TBJT -1  Type of transistor (NPN=1,
                                                PNP=-1)

  Real                                 AREA 1.0 Area factor

  Boolean                              OFF  fal Optional initial condition:
                                            se  false - IC not used, true -
                                                IC used, not implemented
                                                yet

  [Voltage](Modelica_SIunits.html#Mode IC\_     Initial condition value
  lica.SIunits.Voltage)                VCE      (VBE, not implemented yet
                                                [V]

  [Voltage](Modelica_SIunits.html#Mode IC\_     Initial condition value
  lica.SIunits.Voltage)                VBE      (VBC, not implemented yet
                                                [V]

  [Temp\_C](Modelica_SIunits.html#Mode TEMP 27  Operating temperature of
  lica.SIunits.Temp_C)                          the device [degC]

  Boolean                              SENS fal Flag to request sensitivity
                                       \_AR se  WRT area, not implemented
                                       EA       yet

  [ModelcardBJT](Modelica_Electrical_S mode     BJT modelcard
  pice3_Internal.html#Modelica.Electri lcar     
  cal.Spice3.Internal.ModelcardBJT)    d        

  [SpiceConstants](Modelica_Electrical Con      General constants of SPICE
  _Spice3_Internal.html#Modelica.Elect          simulator
  rical.Spice3.Internal.SpiceConstants          
  )                                             
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name Descripti
                                                                 on
  --------------------------------------------------------- ---- ---------
  [PositivePin](Modelica_Electrical_Analog_Interfaces.html# B    Base node
  Modelica.Electrical.Analog.Interfaces.PositivePin)             

  [PositivePin](Modelica_Electrical_Analog_Interfaces.html# C    Collector
  Modelica.Electrical.Analog.Interfaces.PositivePin)             node

  [NegativePin](Modelica_Electrical_Analog_Interfaces.html# E    Emitter
  Modelica.Electrical.Analog.Interfaces.NegativePin)             node
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Q_PNPBJT "Bipolar junction transistor"
     extends Modelica.Electrical.Spice3.Internal.BJT(
                            final TBJT=-1);


    end Q_PNPBJT;

* * * * *

[Modelica.Electrical.Spice3.Semiconductors](Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors).ModelcardBJT
==================================================================================================================================================

**Record for the specification of modelcard parameters**

Information
-----------

::

In modelcards, that are typical for SPICE3, the so called technology
parameters are stored. These parameters are usually set for more than
one semiconductor device in a circuit, e.g., the temperature of a whole
electrical circuit.

Technology parameters of the modified Gummel-Poon bipolar junction
transistor model

::

Extends from
[Modelica.Electrical.Spice3.Internal.ModelcardBJT](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardBJT)
(Record with technological parameters (.model)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name Defau Description
                                          lt    
  ---------------------------------- ---- ----- ---------------------------
  [Temp\_C](Modelica_SIunits.html#Mo TNOM -1e40 Parameter measurement
  delica.SIunits.Temp_C)                        temperature, default 27
                                                [degC]

  [Current](Modelica_SIunits.html#Mo IS   1e-16 Transport saturation
  delica.SIunits.Current)                       current [A]

  Real                               BF   100.0 Ideal maximum forward beta
                                          0     F

  Real                               NF   1.0   Forward current emission
                                                coefficientF

  Real                               NE   1.5   B-E leakage emission
                                                coefficient

  [Current](Modelica_SIunits.html#Mo ISE  -1e40 B-E leakage saturation
  delica.SIunits.Current)                       current, default = 0 [A]

  [Current](Modelica_SIunits.html#Mo ISC  -1e40 B-C leakage saturation
  delica.SIunits.Current)                       current, default = 0 [A]

  Real                               BR   1.0   Ideal maximum reverse beta

  Real                               NR   1.0   Reverse current emission
                                                coefficient

  Real                               NC   2.0   B-C leakage emission
                                                coefficient

  [Voltage](Modelica_SIunits.html#Mo VAF  0.0   Forward Early voltage [V]
  delica.SIunits.Voltage)                       

  [Current](Modelica_SIunits.html#Mo IKF  0.0   Forward beta roll-off
  delica.SIunits.Current)                       corner current [A]

  [Voltage](Modelica_SIunits.html#Mo VAR  0.0   Reverse Early voltage [V]
  delica.SIunits.Voltage)                       

  [Current](Modelica_SIunits.html#Mo IKR  0.0   Reverse beta roll-off
  delica.SIunits.Current)                       corner current [A]

  [Resistance](Modelica_SIunits.html RE   0.0   Emitter resistance [Ohm]
  #Modelica.SIunits.Resistance)                 

  [Resistance](Modelica_SIunits.html RC   0.0   Collector resistance [Ohm]
  #Modelica.SIunits.Resistance)                 

  [Current](Modelica_SIunits.html#Mo IRB  0.0   Current for base resistance
  delica.SIunits.Current)                       = (rb+rbm)/2 [A]

  [Resistance](Modelica_SIunits.html RB   0.0   Zero bias base resistance
  #Modelica.SIunits.Resistance)                 [Ohm]

  [Resistance](Modelica_SIunits.html RBM  -1e40 Minimum base resistance,
  #Modelica.SIunits.Resistance)                 default = 0.0 [Ohm]

  [Capacitance](Modelica_SIunits.htm CJE  0.0   Zero bias B-E depletion
  l#Modelica.SIunits.Capacitance)               capacitance [F]

  [Voltage](Modelica_SIunits.html#Mo VJE  0.75  B-E built in potential [V]
  delica.SIunits.Voltage)                       

  Real                               MJE  0.33  B-E junction exponential
                                                faktor

  [Time](Modelica_SIunits.html#Model TF   0.0   Ideal forward transit time
  ica.SIunits.Time)                             [s]

  Real                               XTF  0.0   Coefficient for bias
                                                dependence of TF

  [Current](Modelica_SIunits.html#Mo ITF  0.0   High current dependence of
  delica.SIunits.Current)                       TF, [A]

  [Voltage](Modelica_SIunits.html#Mo VTF  0.0   Voltage giving VBC
  delica.SIunits.Voltage)                       dependence of TF [V]

  [Temp\_C](Modelica_SIunits.html#Mo PTF  0.0   Excess phase at
  delica.SIunits.Temp_C)                        freq=1/(TF\*2\*Pi) Hz
                                                [degC]

  [Capacitance](Modelica_SIunits.htm CJC  0.0   Zero bias B-C depletion
  l#Modelica.SIunits.Capacitance)               capacitance [F]

  [Voltage](Modelica_SIunits.html#Mo VJC  0.75  B-C built in potential [V]
  delica.SIunits.Voltage)                       

  Real                               MJC  0.33  B-C junction grading
                                                coefficient

  Real                               XCJC 1.0   Fraction of B-C cap to
                                                internal base

  [Time](Modelica_SIunits.html#Model TR   0.0   Ideal reverse transit time
  ica.SIunits.Time)                             [s]

  [Capacitance](Modelica_SIunits.htm CJS  0.0   Zero bias C-S capacitance
  l#Modelica.SIunits.Capacitance)               [F]

  [Voltage](Modelica_SIunits.html#Mo VJS  0.75  Substrate junction built-in
  delica.SIunits.Voltage)                       potential [V]

  Real                               MJS  0.0   Substrate junction grading
                                                coefficient

  Real                               XTB  0.0   Forward and reverse beta
                                                temperature exponent

  [GapEnergy](Modelica_SIunits.html# EG   1.11  Energy gap for IS
  Modelica.SIunits.GapEnergy)                   temperature effect on IS
                                                [eV]

  Real                               XTI  3.0   Temperature exponent for IS

  Real                               KF   0.0   Flicker Noise Coefficient

  Real                               AF   1.0   Flicker Noise Exponent

  Real                               FC   0.5   Forward bias junction fit
                                                parameter
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record ModelcardBJT 
      "Record for the specification of modelcard parameters"
      extends Modelica.Electrical.Spice3.Internal.ModelcardBJT;
    end ModelcardBJT;

* * * * *

![image24](Modelica.Electrical.Spice3.Semiconductors.D_DIODEI.png) [Modelica.Electrical.Spice3.Semiconductors](Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors).D\_DIODE
=================================================================================================================================================================================================================

**Diode model**

Information
-----------

::

The model D\_DIODE is a Junction diode model

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
[Modelica.Electrical.Spice3.Internal.DIODE](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.DIODE)
(Diode model).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                Name  Def Description
                                            aul 
                                            t   
  ----------------------------------- ----- --- ---------------------------
  Real                                AREA  1   Area factor

  Boolean                             OFF   fal Optional initial condition:
                                            se  false - IC not used, true -
                                                IC used, not implemented
                                                yet

  [Voltage](Modelica_SIunits.html#Mod IC        Initial condition value
  elica.SIunits.Voltage)                        (VD, not implemented yet
                                                [V]

  [Temp\_C](Modelica_SIunits.html#Mod TEMP  27  Operating temperature of
  elica.SIunits.Temp_C)                         the device [degC]

  Boolean                             SENS\     Flag to request sensitivity
                                      _AREA     WRT area, not implemented
                                                yet

  [ModelcardDIODE](Modelica_Electrica model     DIODE modelcard
  l_Spice3_Internal.html#Modelica.Ele cardd     
  ctrical.Spice3.Internal.ModelcardDI iode      
  ODE)                                          
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                     Nam Description
                                           e   
  ---------------------------------------- --- ----------------------------
  [PositivePin](Modelica_Electrical_Analog p   Positive pin Positive pin
  _Interfaces.html#Modelica.Electrical.Ana     (potential p.v \> n.v for
  log.Interfaces.PositivePin)                  positive voltage drop v)

  [NegativePin](Modelica_Electrical_Analog n   Negative pin
  _Interfaces.html#Modelica.Electrical.Ana     
  log.Interfaces.NegativePin)                  
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model D_DIODE "Diode model"
      extends Modelica.Electrical.Spice3.Internal.DIODE;


    end D_DIODE;

* * * * *

[Modelica.Electrical.Spice3.Semiconductors](Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors).ModelcardDIODE
====================================================================================================================================================

**Record for the specification of modelcard parameters**

Information
-----------

::

In modelcards, that are typical for SPICE3, the so called technology
parameters are stored. These parameters are usually set for more than
one semiconductor device in a circuit, e.g., the temperature of a whole
electrical circuit.

Technology parameters of the junction diode model

::

Extends from
[Modelica.Electrical.Spice3.Internal.ModelcardDIODE](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardDIODE)
(Record with technological parameters (.model)).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name Defau Description
                                              lt    
  -------------------------------------- ---- ----- ------------------------
  [Current](Modelica_SIunits.html#Modeli IS   1e-14 Saturation Current [A]
  ca.SIunits.Current)                               

  [Resistance](Modelica_SIunits.html#Mod RS   0.0   Ohmic resistance [Ohm]
  elica.SIunits.Resistance)                         

  Real                                   N    1.0   Emission coefficient

  [Time](Modelica_SIunits.html#Modelica. TT   0.0   Transit time [s]
  SIunits.Time)                                     

  [Capacitance](Modelica_SIunits.html#Mo CJO  0.0   Junction capacitance [F]
  delica.SIunits.Capacitance)                       

  [Voltage](Modelica_SIunits.html#Modeli VJ   1.0   Junction Potential [V]
  ca.SIunits.Voltage)                               

  Real                                   M    0.5   Grading coefficient

  [ActivationEnergy](Modelica_SIunits.ht EG   1.11  Activation Energy [eV]
  ml#Modelica.SIunits.ActivationEnergy)             

  Real                                   XTI  3.0   Saturation current
                                                    temperature exponent

  Real                                   FC   0.5   Forward bias junction
                                                    fit parameter

  [Voltage](Modelica_SIunits.html#Modeli BV   -1e40 Reverse breakdown
  ca.SIunits.Voltage)                               voltage, default
                                                    infinity [V]

  [Current](Modelica_SIunits.html#Modeli IBV  1e-3  Current at reverse
  ca.SIunits.Current)                               breakdown voltage [A]

  [Temp\_C](Modelica_SIunits.html#Modeli TNOM 27    Parameter measurement
  ca.SIunits.Temp_C)                                temperature [degC]

  Real                                   KF   0.0   Flicker noise
                                                    coefficient

  Real                                   AF   1.0   Flicker noise exponent

  [Conductance](Modelica_SIunits.html#Mo G    0     Ohmic conductance [S]
  delica.SIunits.Conductance)                       
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record ModelcardDIODE 
      "Record for the specification of modelcard parameters"
      extends Modelica.Electrical.Spice3.Internal.ModelcardDIODE;
    end ModelcardDIODE;

* * * * *

![image25](Modelica.Electrical.Spice3.Semiconductors.R_ResistorI.png) [Modelica.Electrical.Spice3.Semiconductors](Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors).R\_Resistor
=======================================================================================================================================================================================================================

**Semiconductor resistor from SPICE3**

Information
-----------

::

The model R\_Resistor is a Semiconductor resistor model.

The models from the package Semiconductors accesses to the package
Repository where all functions,

records and data are stored and modeled that are neede for the
semiconductor models.

The package Semiconductors is for user access but not the package
Repository.

::

Extends from
[Modelica.Electrical.Spice3.Internal.R\_SEMI](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.R_SEMI)
(Semiconductor resistor).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                  Name  Defa Description
                                              ult  
  ------------------------------------- ----- ---- -------------------------
  [Resistance](Modelica_SIunits.html#Mo R     -1e4 Resistance, if specified,
  delica.SIunits.Resistance)                  0    geometrical information
                                                   is overwritten [Ohm]

  [Temp\_C](Modelica_SIunits.html#Model TEMP  -1e4 Temperature of resistor
  ica.SIunits.Temp_C)                         0    [degC]

  [Length](Modelica_SIunits.html#Modeli L     -1e4 Lenght of the resistor
  ca.SIunits.Length)                          0    [m]

  [Length](Modelica_SIunits.html#Modeli W     -1e4 Width of the resistor,
  ca.SIunits.Length)                          0    default DEFW (modelcard)
                                                   [m]

  Boolean                               SENS\ fals Parameter for sensitivity
                                        _AREA e    analyses, not implemented
                                                   yet

  [ModelcardR](Modelica_Electrical_Spic model      Resistor modelcard
  e3_Internal.html#Modelica.Electrical. card       
  Spice3.Internal.ModelcardR)                      
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

    model R_Resistor "Semiconductor resistor from SPICE3"
    extends Modelica.Electrical.Spice3.Internal.R_SEMI;
    end R_Resistor;

* * * * *

[Modelica.Electrical.Spice3.Semiconductors](Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors).ModelcardRESISTOR
=======================================================================================================================================================

**Record for the specification of modelcard parameters**

Information
-----------

::

In modelcards, that are typical for SPICE3, the so called technology
parameters are stored. These parameters are usually set for more than
one semiconductor device in a circuit, e.g., the temperature of a whole
electrical circuit.

Technology parameters of the semiconductor resistor model

::

Extends from
[Modelica.Electrical.Spice3.Internal.ModelcardR](Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal.ModelcardR)
(Record with technological parameters (.model)).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                         Nam Def Description
                                               e   aul 
                                                   t   
  -------------------------------------------- --- --- ---------------------
  [FirstOrderTemperaturCoefficient](Modelica_S TC1 0.0 First order
  Iunits_Conversions_NonSIunits.html#Modelica.         temperature
  SIunits.Conversions.NonSIunits.FirstOrderTem         coefficient
  peraturCoefficient)                                  [Ohm/degC]

  [SecondOrderTemperaturCoefficient](Modelica_ TC2 0.0 In Ohm/(deg C\*deg
  SIunits_Conversions_NonSIunits.html#Modelica         C), Second2 order
  .SIunits.Conversions.NonSIunits.SecondOrderT         temperature
  emperaturCoefficient)                                coefficient
                                                       [Ohm/degC2]

  [Resistance](Modelica_SIunits.html#Modelica. RSH -1e Sheet resistance
  SIunits.Resistance)                              40  [Ohm]

  [Temp\_C](Modelica_SIunits.html#Modelica.SIu TNO -1e Parameter measurement
  nits.Temp_C)                                 M   40  temperature, default
                                                       27 [degC]

  [Length](Modelica_SIunits.html#Modelica.SIun DEF 1e- Default device width
  its.Length)                                  W   5   [m]

  [Length](Modelica_SIunits.html#Modelica.SIun NAR 0   Narrowing of resistor
  its.Length)                                  ROW     due to side etching
                                                       [m]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record ModelcardRESISTOR 
      "Record for the specification of modelcard parameters"
      extends Modelica.Electrical.Spice3.Internal.ModelcardR;
    end ModelcardRESISTOR;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:46 2010.
