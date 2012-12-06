% Modelica.Media.Water.IF97\_Utilities.BaseIF97
% 
% 

[Modelica.Media.Water.IF97\_Utilities](Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities).BaseIF97
=============================================================================================================================

**Modelica Physical Property Model: the new industrial formulation
IAPWS-IF97**

Information
-----------

::

### Version Info and Revision history

-   First implemented: *July, 2000* by Hubertus Tummescheit for the
    ThermoFluid Library with help from Jonas Eborn and Falko Jens Wagner
-   Code reorganization, enhanced documentation, additional functions:
    *December, 2002* by [Hubertus
    Tummescheit](mailto:Hubertus.Tummescheit@modelon.se) and moved to
    Modelica properties library.

Author: Hubertus Tummescheit,
  ~ Modelon AB Ideon Science Park SE-22370 Lund, Sweden email:
    [hubertus@modelon.se](mailto:hubertus@modelon.se)

In September 1997, the International Association for the Properties of
Water and Steam ([IAPWS](http://www.iapws.org)) adopted a new
formulation for the thermodynamic properties of water and steam for
industrial use. This new industrial standard is called "IAPWS Industrial
Formulation for the Thermodynamic Properties of Water and Steam"
(IAPWS-IF97). The formulation IAPWS-IF97 replaces the previous
industrial standard IFC-67.

Based on this new formulation, a new steam table, titled "[Properties of
Water and
Steam](http://www.springer.de/cgi-bin/search_book.pl?isbn=3-540-64339-7)"
by W. Wagner and A. Kruse, was published by the Springer-Verlag, Berlin
- New-York - Tokyo in April 1998. This steam table, ref.
[[1]](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#steamprop) is
bilingual (English / German) and contains a complete description of the
equations of IAPWS-IF97. This reference is the authoritative source of
information for this implementation. A mostly identical version has been
published by the International Association for the Properties of Water
and Steam ([IAPWS](http://www.iapws.org)) with permission granted to
re-publish the information if credit is given to IAPWS. This document is
distributed with this library as IF97.pdf. In addition, the equations
published by [IAPWS](http://www.iapws.org) for the transport properties
dynamic viscosity (standards document: visc.pdf) and thermal
conductivity (standards document: thcond.pdf) and equations for the
surface tension (standards document: surf.pdf) are also implemented in
this library and included for reference.

The functions in BaseIF97.mo are low level functions which should only
be used in those exceptions when the standard user level functions in
Water.mo do not contain the wanted properties.

Based on IAPWS-IF97, Modelica functions are available for calculating
the most common thermophysical properties (thermodynamic and transport
properties). The implementation requires part of the common medium
property infrastructure of the Modelica.Thermal.Properties library in
the file Common.mo. There are a few extensions from the version of IF97
as documented in IF97.pdf in order to improve performance for dynamic
simulations. Input variables for calculating the properties are only
implemented for a limited number of variable pairs which make sense as
dynamic states: (p,h), (p,T), (p,s) and (d,T).

* * * * *

### 1. Structure and Regions of IAPWS-IF97

The IAPWS Industrial Formulation 1997 consists of a set of equations for
different regions which cover the following range of validity:

  -------------------------------- ------------------
  273,15 K < *T* < 1073,15 K       *p* < 100 MPa
  1073,15 K < *T* < 2273,15 K      *p* < 10 MPa
  -------------------------------- ------------------

Figure 1 shows the 5 regions into which the entire range of validity of
IAPWS-IF97 is divided. The boundaries of the regions can be directly
taken from Fig. 1 except for the boundary between regions 2 and 3; this
boundary, which corresponds approximately to the isentropic line *s* =
5.047 kJ kg ^-1^ K^-1^, is defined by a corresponding auxiliary
equation. Both regions 1 and 2 are individually covered by a fundamental
equation for the specific Gibbs free energy *g*(*p*,*T*), region 3 by a
fundamental equation for the specific Helmholtz free energy
*f*(*r*,*T*), and the saturation curve, corresponding to region 4, by a
saturation-pressure equation *p*~s~(*T*). The high-temperature region 5
is also covered by a *g*(*p*,*T*) equation. These 5 equations, shown in
rectangular boxes in Fig. 1, form the so-called *basic equations*.

Figure 1: Regions and equations of IAPWS-IF97

In addition to these basic equations, so-called *backward equations* are
provided for regions 1, 2, and 4 in form of *T*(*p*,*h*) and
*T*(*p*,*s*) for regions 1 and 2, and *T*~s~ (*p*) for region 4. These
backward equations, marked in grey in Fig. 1, were developed in such a
way that they are numerically very consistent with the corresponding
basic equation. Thus, properties as functions of *p*,*h*and of
*p*,*s*for regions 1 and 2, and of *p* for region 4 can be calculated
without any iteration. As a result of this special concept for the
development of the new industrial standard IAPWS-IF97, the most
important properties can be calculated extremely quickly. All modelica
functions are optimized with regard to short computing times.

The complete description of the individual equations of the new
industrial formulation IAPWS-IF97 is given in IF97.pdf. Comprehensive
information on IAPWS-IF97 (requirements, concept, accuracy, consistency
along region boundaries, and the increase of computing speed in
comparison with IFC-67, etc.) can be taken from IF97.pdf or [2].

[1]*Wagner, W., Kruse, A.* Properties of Water and Steam /
Zustandsgrößen von Wasser und Wasserdampf / IAPWS-IF97. Springer-Verlag,
Berlin, 1998.

[2] *Wagner, W., Cooper, J. R., Dittmann, A., Kijima, J., Kretzschmar,
H.-J., Kruse, A., Mareš R., Oguchi, K., Sato, H., Stöcker, I., Šifner,
O., Takaishi, Y., Tanishita, I., Trübenbach, J., and Willkommen, Th.*
The IAPWS Industrial Formulation 1997 for the Thermodynamic Properties
of Water and Steam. ASME Journal of Engineering for Gas Turbines and
Power 122 (2000), 150 - 182.

* * * * *

### 2. Calculable Properties

**Common name**

**Abbreviation**

**Unit**

1

Pressure

p

Pa

2

Temperature

T

K

3

Density

d

kg/m^3^

4

Specific volume

v

m^3^/kg

5

Specific enthalpy

h

J/kg

6

Specific entropy

s

J/(kg K)

7

Specific internal energy

u

J/kg

8

Specific isobaric heat capacity

c~p~

J/(kg K)

9

Specific isochoric heat capacity

c~v~

J/(kg K)

10

Isentropic exponent, kappa= -(v/p) (dp/dv)~s~

kappa ( k)

1

11

Speed of sound

a

m/s

12

Dryness fraction

x

kg/kg

13

Specific Helmholtz free energy, f = u - Ts

f

J/kg

14

Specific Gibbs free energy, g = h - Ts

g

J/kg

15

Isenthalpic exponent, theta = -(v/p)(dp/dv)~h~

theta (q)

1

16

Isobaric volume expansion coefficient, alpha = v^-1^ (dv/dT)~p~

alpha (a)

1/K

17

Isochoric pressure coefficient, beta = p^-1^ (dp/dT)~v~

beta (b)

1/K

18

Isothermal compressibility, gamma = -v ^-1^(dv/dp)~T~

gamma (g)

1/Pa

19

Dynamic viscosity

eta (h)

Pa s

20

Kinematic viscosity

nu (n)

m^2^/s

21

Thermal conductivity

lambda (l)

W/(m K)

22

Surface tension

sigma (s)

N/m

The properties 1-11 are calculated by default with the functions for
dynamic simulation, 2 of these variables are the dynamic states and are
the inputs to calculate all other properties. In addition to these
properties of general interest, the entries to the thermodynamic
Jacobian matrix which render the mass- and energy balances explicit in
the input variables to the property calculation are also calculated. For
an explanatory example using pressure and specific enthalpy as states,
see the Examples sub-package.

The high-level calls to steam properties are grouped into records
comprising both the properties of general interest and the entries to
the thermodynamic Jacobian. If additional properties are needed the low
level functions in BaseIF97 provide more choice.

* * * * *

### Additional functions

-   Function **boundaryvals\_p** computes the temperature and the
    specific enthalpy and entropy on both phase boundaries as a function
    of p
-   Function **boundaryderivs\_p** is the Modelica derivative function
    of **boundaryvals\_p**
-   Function **extraDerivs\_ph** computes all entries to Bridgmans
    tables for all one-phase regions of IF97 using inputs (p,h). All 336
    directional derivatives of the thermodynamic surface can be computed
    as a ratio of two entries in the return data, see package Common for
    details.
-   Function **extraDerivs\_pT** computes all entries to Bridgmans
    tables for all one-phase regions of IF97 using inputs (p,T).

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  ![image16](Modelica.Media.Water.IF97_Utilities.B constants for
  aseIF97.IterationDataS.png)                      iterations internal to
  [IterationData](Modelica_Media_Water_IF97_Utilit some functions
  ies_BaseIF97.html#Modelica.Media.Water.IF97_Util 
  ities.BaseIF97.IterationData)                    

  ![image17](Modelica.Media.Water.IF97_Utilities.B constant IF97 data and
  aseIF97.IterationDataS.png)                      region limits
  [data](Modelica_Media_Water_IF97_Utilities_BaseI 
  F97.html#Modelica.Media.Water.IF97_Utilities.Bas 
  eIF97.data)                                      

  ![image18](Modelica.Media.Water.IF97_Utilities.B get normalization
  aseIF97.getTstarS.png)                           temperature for region
  [getTstar](Modelica_Media_Water_IF97_Utilities_B 1, 2 or 5
  aseIF97.html#Modelica.Media.Water.IF97_Utilities 
  .BaseIF97.getTstar)                              

  ![image19](Modelica.Media.Water.IF97_Utilities.B get normalization
  aseIF97.getTstarS.png)                           pressure for region 1,
  [getpstar](Modelica_Media_Water_IF97_Utilities_B 2 or 5
  aseIF97.html#Modelica.Media.Water.IF97_Utilities 
  .BaseIF97.getpstar)                              

  ![image20](Modelica.Media.Water.IF97_Utilities.B critical point data
  aseIF97.criticalS.png)                           
  [critical](Modelica_Media_Water_IF97_Utilities_B 
  aseIF97.html#Modelica.Media.Water.IF97_Utilities 
  .BaseIF97.critical)                              

  ![image21](Modelica.Media.Water.IF97_Utilities.B triple point data
  aseIF97.criticalS.png)                           
  [triple](Modelica_Media_Water_IF97_Utilities_Bas 
  eIF97.html#Modelica.Media.Water.IF97_Utilities.B 
  aseIF97.triple)                                  

  ![image22](Modelica.Media.Water.IF97_Utilities.B functions to find the
  aseIF97.RegionsS.png)                            current region for
  [Regions](Modelica_Media_Water_IF97_Utilities_Ba given pairs of input
  seIF97_Regions.html#Modelica.Media.Water.IF97_Ut variables
  ilities.BaseIF97.Regions)                        

  ![image23](Modelica.Media.Water.IF97_Utilities.B Base functions as
  aseIF97.RegionsS.png)                            described in IAWPS/IF97
  [Basic](Modelica_Media_Water_IF97_Utilities_Base 
  IF97_Basic.html#Modelica.Media.Water.IF97_Utilit 
  ies.BaseIF97.Basic)                              

  ![image24](Modelica.Media.Water.IF97_Utilities.B the melting line and
  aseIF97.RegionsS.png)                            sublimation line curves
  [IceBoundaries](Modelica_Media_Water_IF97_Utilit from IAPWS
  ies_BaseIF97_IceBoundaries.html#Modelica.Media.W 
  ater.IF97_Utilities.BaseIF97.IceBoundaries)      

  ![image25](Modelica.Media.Water.IF97_Utilities.B transport properties
  aseIF97.RegionsS.png)                            for water according to
  [Transport](Modelica_Media_Water_IF97_Utilities_ IAPWS/IF97
  BaseIF97_Transport.html#Modelica.Media.Water.IF9 
  7_Utilities.BaseIF97.Transport)                  

  ![image26](Modelica.Media.Water.IF97_Utilities.B functions for
  aseIF97.RegionsS.png)                            calculating the
  [Isentropic](Modelica_Media_Water_IF97_Utilities isentropic enthalpy
  _BaseIF97_Isentropic.html#Modelica.Media.Water.I from pressure p and
  F97_Utilities.BaseIF97.Isentropic)               specific entropy s

  ![image27](Modelica.Media.Water.IF97_Utilities.B efficient inverses for
  aseIF97.RegionsS.png)                            selected pairs of
  [Inverses](Modelica_Media_Water_IF97_Utilities_B variables
  aseIF97_Inverses.html#Modelica.Media.Water.IF97_ 
  Utilities.BaseIF97.Inverses)                     

  ![image28](Modelica.Media.Water.IF97_Utilities.B simple explicit
  aseIF97.RegionsS.png)                            functions for one
  [ByRegion](Modelica_Media_Water_IF97_Utilities_B region only
  aseIF97_ByRegion.html#Modelica.Media.Water.IF97_ 
  Utilities.BaseIF97.ByRegion)                     

  ![image29](Modelica.Media.Water.IF97_Utilities.B steam properties in the
  aseIF97.RegionsS.png)                            two-phase rgion and on
  [TwoPhase](Modelica_Media_Water_IF97_Utilities_B the phase boundaries
  aseIF97_TwoPhase.html#Modelica.Media.Water.IF97_ 
  Utilities.BaseIF97.TwoPhase)                     

  ![image30](Modelica.Media.Water.IF97_Utilities.B function to calculate
  aseIF97.extraDerivs_phS.png)                     some extra
  [extraDerivs\_ph](Modelica_Media_Water_IF97_Util thermophysical
  ities_BaseIF97.html#Modelica.Media.Water.IF97_Ut properties in regions
  ilities.BaseIF97.extraDerivs_ph)                 1, 2, 3 and 5 as f(p,h)

  ![image31](Modelica.Media.Water.IF97_Utilities.B function to calculate
  aseIF97.extraDerivs_phS.png)                     some extra
  [extraDerivs\_pT](Modelica_Media_Water_IF97_Util thermophysical
  ities_BaseIF97.html#Modelica.Media.Water.IF97_Ut properties in regions
  ilities.BaseIF97.extraDerivs_pT)                 1, 2, 3 and 5 as f(p,T)
  ------------------------------------------------------------------------

* * * * *

![image32](Modelica.Media.Water.IF97_Utilities.BaseIF97.IterationDataI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).IterationData
=========================================================================================================================================================================================================================================

**constants for iterations internal to some functions**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Modelica definition
-------------------

    record IterationData 
      "constants for iterations internal to some functions"

      extends Modelica.Icons.Record;
      constant Integer IMAX=50 "maximum number of iterations for inverse functions";
      constant Real DELP=1.0e-6 "maximum iteration error in pressure, Pa";
      constant Real DELS=1.0e-8 
        "maximum iteration error in specific entropy, J/{kg.K}";
      constant Real DELH=1.0e-8 
        "maximum iteration error in specific entthalpy, J/kg";
      constant Real DELD=1.0e-8 "maximum iteration error in density, kg/m^3";
    end IterationData;

* * * * *

![image33](Modelica.Media.Water.IF97_Utilities.BaseIF97.IterationDataI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).data
================================================================================================================================================================================================================================

**constant IF97 data and region limits**

Information
-----------

::

### Record description

Constants needed in the international steam properties IF97. SCRIT and
HCRIT are calculated from Helmholtz function for region 3.

### Version Info and Revision history

-   First implemented: *July, 2000* by Hubertus Tummescheit

Author: Hubertus Tummescheit,
  ~ Modelon AB Ideon Science Park SE-22370 Lund, Sweden email:
    [hubertus@modelon.se](mailto:hubertus@modelon.se)

-   Initial version: July 2000
-   Documentation added: December 2002

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Modelica definition
-------------------

    record data "constant IF97 data and region limits"
      extends Modelica.Icons.Record;
      constant SI.SpecificHeatCapacity RH2O=461.526 
        "specific gas constant of water vapour";
      constant SI.MolarMass MH2O=0.01801528 "molar weight of water";
      constant SI.Temperature TSTAR1=1386.0 
        "normalization temperature for region 1 IF97";
      constant SI.Pressure PSTAR1=16.53e6 
        "normalization pressure for region 1 IF97";
      constant SI.Temperature TSTAR2=540.0 
        "normalization temperature for region 2 IF97";
      constant SI.Pressure PSTAR2=1.0e6 "normalization pressure for region 2 IF97";
      constant SI.Temperature TSTAR5=1000.0 
        "normalization temperature for region 5 IF97";
      constant SI.Pressure PSTAR5=1.0e6 "normalization pressure for region 5 IF97";
      constant SI.SpecificEnthalpy HSTAR1=2.5e6 
        "normalization specific enthalpy for region 1 IF97";
      constant Real IPSTAR=1.0e-6 
        "normalization pressure for inverse function in region 2 IF97";
      constant Real IHSTAR=5.0e-7 
        "normalization specific enthalpy for inverse function in region 2 IF97";
      constant SI.Temperature TLIMIT1=623.15 
        "temperature limit between regions 1 and 3";
      constant SI.Temperature TLIMIT2=1073.15 
        "temperature limit between regions 2 and 5";
      constant SI.Temperature TLIMIT5=2273.15 "upper temperature limit of 5";
      constant SI.Pressure PLIMIT1=100.0e6 
        "upper pressure limit for regions 1, 2 and 3";
      constant SI.Pressure PLIMIT4A=16.5292e6 
        "pressure limit between regions 1 and 2, important for for two-phase (region 4)";
      constant SI.Pressure PLIMIT5=10.0e6 
        "upper limit of valid pressure in region 5";
      constant SI.Pressure PCRIT=22064000.0 "the critical pressure";
      constant SI.Temperature TCRIT=647.096 "the critical temperature";
      constant SI.Density DCRIT=322.0 "the critical density";
      constant SI.SpecificEntropy SCRIT=4412.02148223476 
        "the calculated specific entropy at the critical point";
      constant SI.SpecificEnthalpy HCRIT=2087546.84511715 
        "the calculated specific enthalpy at the critical point";
      constant Real[5] n=array(0.34805185628969e3, -0.11671859879975e1,
          0.10192970039326e-2, 0.57254459862746e3, 0.13918839778870e2) 
        "polynomial coefficients for boundary between regions 2 and 3";
    end data;

* * * * *

![image34](Modelica.Media.Water.IF97_Utilities.BaseIF97.getTstarI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).getTstar
===============================================================================================================================================================================================================================

**get normalization temperature for region 1, 2 or 5**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name        Default      Description
  ------------ ----------- ------------ -----------------
  Integer      region                   IF 97 region

Outputs
-------

  -------------------------------------------------------------------------
  Type                                         Name   Description
  -------------------------------------------- ------ ---------------------
  [Temperature](Modelica_SIunits.html#Modelica Tstar  normalization
  .SIunits.Temperature)                               temperature [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function getTstar 
      "get normalization temperature for region 1, 2 or 5"
      extends Modelica.Icons.Function;
      input Integer region "IF 97 region";
      output SI.Temperature Tstar "normalization temperature";
    algorithm 
      if region == 1 then
        Tstar
       := data.TSTAR1;
      elseif region == 2 then
        Tstar
       := data.TSTAR2;
      else
        Tstar
       := data.TSTAR5;
      end if;
    end getTstar;

* * * * *

![image35](Modelica.Media.Water.IF97_Utilities.BaseIF97.getTstarI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).getpstar
===============================================================================================================================================================================================================================

**get normalization pressure for region 1, 2 or 5**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name        Default      Description
  ------------ ----------- ------------ -----------------
  Integer      region                   IF 97 region

Outputs
-------

  -------------------------------------------------------------------------
  Type                                         Name   Description
  -------------------------------------------- ------ ---------------------
  [Pressure](Modelica_SIunits.html#Modelica.SI pstar  normalization
  units.Pressure)                                     pressure [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function getpstar "get normalization pressure for region 1, 2 or 5"
      extends Modelica.Icons.Function;
      input Integer region "IF 97 region";
      output SI.Pressure pstar "normalization pressure";
    algorithm 
      if region == 1 then
        pstar
       := data.PSTAR1;
      elseif region == 2 then
        pstar
       := data.PSTAR2;
      else
        pstar
       := data.PSTAR5;
      end if;
    end getpstar;

* * * * *

![image36](Modelica.Media.Water.IF97_Utilities.BaseIF97.criticalI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).critical
===============================================================================================================================================================================================================================

**critical point data**

Information
-----------

::

### Record description

Critical point data for IF97 steam properties. SCRIT and HCRIT are
calculated from helmholtz function for region 3

### Version Info and Revision history

-   First implemented: *July, 2000* by [Hubertus
    Tummescheit](http://www.control.lth.se/~hubertus/)

Author: Hubertus Tummescheit,
  ~ Modelon AB Ideon Science Park SE-22370 Lund, Sweden email:
    [hubertus@modelon.se](mailto:hubertus@modelon.se)

-   Initial version: July 2000
-   Documentation added: December 2002

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Modelica definition
-------------------

    record critical "critical point data"
      extends Modelica.Icons.Record;
      constant SI.Pressure PCRIT=22064000.0 "the critical pressure";
      constant SI.Temperature TCRIT=647.096 "the critical temperature";
      constant SI.Density DCRIT=322.0 "the critical density";
      constant SI.SpecificEnthalpy HCRIT=2087546.84511715 
        "the calculated specific enthalpy at the critical point";
      constant SI.SpecificEntropy SCRIT=4412.02148223476 
        "the calculated specific entropy at the critical point";
    end critical;

* * * * *

![image37](Modelica.Media.Water.IF97_Utilities.BaseIF97.criticalI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).triple
=============================================================================================================================================================================================================================

**triple point data**

Information
-----------

::

### Record description

Vapour/liquid/ice triple point data for IF97 steam properties.

### Version Info and Revision history

-   First implemented: *July, 2000* by [Hubertus
    Tummescheit](http://www.control.lth.se/~hubertus/)

Author: Hubertus Tummescheit,
  ~ Modelon AB Ideon Science Park SE-22370 Lund, Sweden email:
    [hubertus@modelon.se](mailto:hubertus@modelon.se)

-   Initial version: July 2000
-   Documentation added: December 2002

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Modelica definition
-------------------

    record triple "triple point data"
      extends Modelica.Icons.Record;
      constant SI.Temperature Ttriple=273.16 "the triple point temperature";
      constant SI.Pressure ptriple=611.657 "the triple point temperature";
      constant SI.Density dltriple=999.792520031617642 
        "the triple point liquid density";
      constant SI.Density dvtriple=0.485457572477861372e-2 
        "the triple point vapour density";
    end triple;

* * * * *

![image38](Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).extraDerivs\_ph
============================================================================================================================================================================================================================================

**function to calculate some extra thermophysical properties in regions
1, 2, 3 and 5 as f(p,h)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                 Name Defau Description
                                            lt    
  ------------------------------------ ---- ----- -------------------------
  [Pressure](Modelica_SIunits.html#Mod p          pressure [Pa]
  elica.SIunits.Pressure)                         

  [SpecificEnthalpy](Modelica_SIunits. h          specific enthalpy [J/kg]
  html#Modelica.SIunits.SpecificEnthal            
  py)                                             

  Integer                              phas 0     phase: 2 for two-phase, 1
                                       e          for one phase, 0 if
                                                  unknown
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [ExtraDerivatives](Modelica_Media_Common.html#M dpro thermodynamic
  odelica.Media.Common.ExtraDerivatives)               property collection
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function extraDerivs_ph 
      "function to calculate some extra thermophysical properties in regions 1, 2, 3 and 5 as f(p,h)"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase= 0 
        "phase: 2 for two-phase, 1 for one phase, 0 if unknown";
      output Modelica.Media.Common.ExtraDerivatives dpro 
        "thermodynamic property collection";
    protected 
      SI.Density d "density";
      SI.Temperature T "temperature";
      Integer region "IF97 region";
      Integer error "error flag";
      Modelica.Media.Common.HelmholtzDerivs f 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
      Modelica.Media.Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
    algorithm 
      assert(phase ==1,
        "extraDerivs_ph: properties are not implemented in 2 phase region");
      region := Regions.region_ph(p=p,h= h,phase= phase);
      if region == 1 then
        T := Basic.tph1(p, h);
        g := Basic.g1(p, T);
        dpro := Modelica.Media.Common.gibbsToExtraDerivs(g);
      elseif region == 2 then
        T := Basic.tph2(p, h);
        g := Basic.g2(p, T);
        dpro := Modelica.Media.Common.gibbsToExtraDerivs(g);
      elseif region == 3 then
        (d,T,error) := Inverses.dtofph3(p=p,h= h,delp= 1.0e-7,delh= 1.0e-6);
        f := Basic.f3(d, T);
        dpro := Modelica.Media.Common.helmholtzToExtraDerivs(f);
      elseif region == 5 then
        // region assumed to be 5
        (T,error) := Inverses.tofph5(p=p,h= h,reldh= 1.0e-7);
        g := Basic.g5(p, T);
        dpro := Modelica.Media.Common.gibbsToExtraDerivs(g);
      end if;
    end extraDerivs_ph;

* * * * *

![image39](Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phI.png) [Modelica.Media.Water.IF97\_Utilities.BaseIF97](Modelica_Media_Water_IF97_Utilities_BaseIF97.html#Modelica.Media.Water.IF97_Utilities.BaseIF97).extraDerivs\_pT
============================================================================================================================================================================================================================================

**function to calculate some extra thermophysical properties in regions
1, 2, 3 and 5 as f(p,T)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Pressure](Modelica_SIunits.html#Modelica.SIu p             pressure
  nits.Pressure)                                              [Pa]

  [Temperature](Modelica_SIunits.html#Modelica. T             temperature
  SIunits.Temperature)                                        [K]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [ExtraDerivatives](Modelica_Media_Common.html#M dpro thermodynamic
  odelica.Media.Common.ExtraDerivatives)               property collection
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function extraDerivs_pT 
      "function to calculate some extra thermophysical properties in regions 1, 2, 3 and 5 as f(p,T)"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      output Modelica.Media.Common.ExtraDerivatives dpro 
        "thermodynamic property collection";
    protected 
      SI.Density d "density";
      Integer region "IF97 region";
      Integer error "error flag";
      Modelica.Media.Common.HelmholtzDerivs f 
        "dimensionless Helmholtz function and dervatives w.r.t. delta and tau";
      Modelica.Media.Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
    algorithm 
      region := Regions.region_pT(p=p,T= T);
      if region == 1 then
        g := Basic.g1(p, T);
        dpro := Modelica.Media.Common.gibbsToExtraDerivs(g);
      elseif region == 2 then
        g := Basic.g2(p, T);
        dpro := Modelica.Media.Common.gibbsToExtraDerivs(g);
      elseif region == 3 then
        (d,error) := Inverses.dofpt3(p=p,T= T,delp= 1.0e-7);
        f := Basic.f3(d, T);
        dpro := Modelica.Media.Common.helmholtzToExtraDerivs(f);
      elseif region == 5 then
        // region assumed to be 5
        g := Basic.g5(p, T);
        dpro := Modelica.Media.Common.gibbsToExtraDerivs(g);
      end if;
    end extraDerivs_pT;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:37 2010.
