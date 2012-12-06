====================
Modelica.Media.Water
====================

`Modelica.Media <Modelica_Media.html#Modelica.Media>`_.Water
------------------------------------------------------------

**Medium models for water**

Information
~~~~~~~~~~~

::

This package contains different medium models for water:

-  **ConstantPropertyLiquidWater**
    Simple liquid water medium (incompressible, constant data).
-  **IdealSteam**
    Steam water medium as ideal gas from
   Media.IdealGases.SingleGases.H2O
-  **WaterIF97 derived models**
    High precision water model according to the IAPWS/IF97 standard
   (liquid, steam, two phase region). Models with different independent
   variables are provided as well as models valid only for particular
   regions. The **WaterIF97\_ph** model is valid in all regions and is
   the recommended one to use.

Overview of WaterIF97 derived water models
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The WaterIF97 models calculate medium properties for water in the
**liquid**, **gas** and **two phase** regions according to the
IAPWS/IF97 standard, i.e., the accepted industrial standard and best
compromise between accuracy and computation time. It has been part of
the ThermoFluid Modelica library and been extended, reorganized and
documented to become part of the Modelica Standard library.

An important feature that distinguishes this implementation of the IF97
steam property standard is that this implementation has been explicitly
designed to work well in dynamic simulations. Computational performance
has been of high importance. This means that there often exist several
ways to get the same result from different functions if one of the
functions is called often but can be optimized for that purpose.

Three variable pairs can be the independent variables of the model:

#. Pressure **p** and specific enthalpy **h** are the most natural
   choice for general applications. This is the recommended choice for
   most general purpose applications, in particular for power plants.
#. Pressure **p** and temperature **T** are the most natural choice for
   applications where water is always in the same phase, both for liquid
   water and steam.
#. Density **d** and temperature **T** are explicit variables of the
   Helmholtz function in the near-critical region and can be the best
   choice for applications with super-critical or near-critial states.

The following quantities are always computed in Medium.Baseproperties:

+----------------+------------+----------------------------+
| **Variable**   | **Unit**   | **Description**            |
+----------------+------------+----------------------------+
| T              | K          | temperature                |
+----------------+------------+----------------------------+
| u              | J/kg       | specific internal energy   |
+----------------+------------+----------------------------+
| d              | kg/m^3     | density                    |
+----------------+------------+----------------------------+
| p              | Pa         | pressure                   |
+----------------+------------+----------------------------+
| h              | J/kg       | specific enthalpy          |
+----------------+------------+----------------------------+

In some cases additional medium properties are needed. A component that
needs these optional properties has to call one of the following
functions:

+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| **Function call**                                   | **Unit**     | **Description**                                             |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.dynamicViscosity(medium.state)               | Pa.s         | dynamic viscosity                                           |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.thermalConductivity(medium.state)            | W/(m.K)      | thermal conductivity                                        |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.prandtlNumber(medium.state)                  | 1            | Prandtl number                                              |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.specificEntropy(medium.state)                | J/(kg.K)     | specific entropy                                            |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.heatCapacity\_cp(medium.state)               | J/(kg.K)     | specific heat capacity at constant pressure                 |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.heatCapacity\_cv(medium.state)               | J/(kg.K)     | specific heat capacity at constant density                  |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.isentropicExponent(medium.state)             | 1            | isentropic exponent                                         |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.isentropicEnthalpy(pressure, medium.state)   | J/kg         | isentropic enthalpy                                         |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.velocityOfSound(medium.state)                | m/s          | velocity of sound                                           |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.isobaricExpansionCoefficient(medium.state)   | 1/K          | isobaric expansion coefficient                              |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.isothermalCompressibility(medium.state)      | 1/Pa         | isothermal compressibility                                  |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.density\_derp\_h(medium.state)               | kg/(m3.Pa)   | derivative of density by pressure at constant enthalpy      |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.density\_derh\_p(medium.state)               | kg2/(m3.J)   | derivative of density by enthalpy at constant pressure      |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.density\_derp\_T(medium.state)               | kg/(m3.Pa)   | derivative of density by pressure at constant temperature   |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.density\_derT\_p(medium.state)               | kg/(m3.K)    | derivative of density by temperature at constant pressure   |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.density\_derX(medium.state)                  | kg/m3        | derivative of density by mass fraction                      |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+
| Medium.molarMass(medium.state)                      | kg/mol       | molar mass                                                  |
+-----------------------------------------------------+--------------+-------------------------------------------------------------+

More details are given in
`Modelica.Media.UsersGuide.MediumUsage.OptionalProperties <Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage.OptionalProperties>`_.
Many additional optional functions are defined to compute properties of
saturated media, either liquid (bubble point) or vapour (dew point). The
argument to such functions is a SaturationProperties record, which can
be set starting from either the saturation pressure or the saturation
temperature. With reference to a model defining a pressure p, a
temperature T, and a SaturationProperties record sat, the following
functions are provided:

+------------------------------------------+--------------+----------------------------------------------------------------------------+
| **Function call**                        | **Unit**     | **Description**                                                            |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.saturationPressure(T)             | Pa           | Saturation pressure at temperature T                                       |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.saturationTemperature(p)          | K            | Saturation temperature at pressure p                                       |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.saturationTemperature\_derp(p)    | K/Pa         | Derivative of saturation temperature with respect to pressure              |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.bubbleEnthalpy(sat)               | J/kg         | Specific enthalpy at bubble point                                          |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.dewEnthalpy(sat)                  | J/kg         | Specific enthalpy at dew point                                             |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.bubbleEntropy(sat)                | J/(kg.K)     | Specific entropy at bubble point                                           |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.dewEntropy(sat)                   | J/(kg.K)     | Specific entropy at dew point                                              |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.bubbleDensity(sat)                | kg/m3        | Density at bubble point                                                    |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.dewDensity(sat)                   | kg/m3        | Density at dew point                                                       |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.dBubbleDensity\_dPressure(sat)    | kg/(m3.Pa)   | Derivative of density at bubble point with respect to pressure             |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.dDewDensity\_dPressure(sat)       | kg/(m3.Pa)   | Derivative of density at dew point with respect to pressure                |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.dBubbleEnthalpy\_dPressure(sat)   | J/(kg.Pa)    | Derivative of specific enthalpy at bubble point with respect to pressure   |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.dDewEnthalpy\_dPressure(sat)      | J/(kg.Pa)    | Derivative of specific enthalpy at dew point with respect to pressure      |
+------------------------------------------+--------------+----------------------------------------------------------------------------+
| Medium.surfaceTension(sat)               | N/m          | Surface tension between liquid and vapour phase                            |
+------------------------------------------+--------------+----------------------------------------------------------------------------+

Details on usage and some examples are given in:
`Modelica.Media.UsersGuide.MediumUsage.TwoPhase <Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage.TwoPhase>`_.

Many further properties can be computed. Using the well-known Bridgman's
Tables, all first partial derivatives of the standard thermodynamic
variables can be computed easily.

The documentation of the IAPWS/IF97 steam properties can be freely
distributed with computer implementations and are included here (in
directory
Modelica/Resources/Documentation/Media/Water/IF97documentation):

-  IF97.pdf The standards document for the main part of the IF97.
-  Back3.pdf The backwards equations for region 3.
-  crits.pdf The critical point data.
-  meltsub.pdf The melting- and sublimation line formulation (not
   implemented)
-  surf.pdf The surface tension standard definition
-  thcond.pdf The thermal conductivity standard definition
-  visc.pdf The viscosity standard definition

::

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                         | Description                                                                                                 |
+==============================================================================================================================================================================================+=============================================================================================================+
| waterConstants                                                                                                                                                                               |                                                                                                             |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| simpleWaterConstants                                                                                                                                                                         |                                                                                                             |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image14| `ConstantPropertyLiquidWater <Modelica_Media_Water_ConstantPropertyLiquidWater.html#Modelica.Media.Water.ConstantPropertyLiquidWater>`_                                            | Water: Simple liquid water medium (incompressible, constant data)                                           |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image15| `IdealSteam <Modelica_Media_Water_IdealSteam.html#Modelica.Media.Water.IdealSteam>`_                                                                                               | Water: Steam as ideal gas from NASA source                                                                  |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image16| `WaterIF97OnePhase\_ph <Modelica_Media_Water_WaterIF97OnePhase_ph.html#Modelica.Media.Water.WaterIF97OnePhase_ph>`_                                                                | Water using the IF97 standard, explicit in p and h, and only valid outside the two-phase dome               |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image17| `WaterIF97\_ph <Modelica_Media_Water_WaterIF97_ph.html#Modelica.Media.Water.WaterIF97_ph>`_                                                                                        | Water using the IF97 standard, explicit in p and h                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image18| `WaterIF97\_base <Modelica_Media_Water_WaterIF97_base.html#Modelica.Media.Water.WaterIF97_base>`_                                                                                  | Water: Steam properties as defined by IAPWS/IF97 standard                                                   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image19| `WaterIF97\_fixedregion <Modelica_Media_Water_WaterIF97_fixedregion.html#Modelica.Media.Water.WaterIF97_fixedregion>`_                                                             | Water: Steam properties as defined by IAPWS/IF97 standard                                                   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image20| `WaterIF97\_R1ph <Modelica_Media_Water_WaterIF97_R1ph.html#Modelica.Media.Water.WaterIF97_R1ph>`_                                                                                  | region 1 (liquid) water according to IF97 standard                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image21| `WaterIF97\_R2ph <Modelica_Media_Water_WaterIF97_R2ph.html#Modelica.Media.Water.WaterIF97_R2ph>`_                                                                                  | region 2 (steam) water according to IF97 standard                                                           |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image22| `WaterIF97\_R3ph <Modelica_Media_Water_WaterIF97_R3ph.html#Modelica.Media.Water.WaterIF97_R3ph>`_                                                                                  | region 3 water according to IF97 standard                                                                   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image23| `WaterIF97\_R4ph <Modelica_Media_Water_WaterIF97_R4ph.html#Modelica.Media.Water.WaterIF97_R4ph>`_                                                                                  | region 4 water according to IF97 standard                                                                   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image24| `WaterIF97\_R5ph <Modelica_Media_Water_WaterIF97_R5ph.html#Modelica.Media.Water.WaterIF97_R5ph>`_                                                                                  | region 5 water according to IF97 standard                                                                   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image25| `WaterIF97\_R1pT <Modelica_Media_Water_WaterIF97_R1pT.html#Modelica.Media.Water.WaterIF97_R1pT>`_                                                                                  | region 1 (liquid) water according to IF97 standard                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image26| `WaterIF97\_R2pT <Modelica_Media_Water_WaterIF97_R2pT.html#Modelica.Media.Water.WaterIF97_R2pT>`_                                                                                  | region 2 (steam) water according to IF97 standard                                                           |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image27| `IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_                                                                                  | Low level and utility computation for high accuracy water properties according to the IAPWS/IF97 standard   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+

Types and constants
~~~~~~~~~~~~~~~~~~~

::

      constant Interfaces.PartialTwoPhaseMedium.FluidConstants[1] waterConstants(
         each chemicalFormula = "H2O",
         each structureFormula="H2O",
         each casRegistryNumber="7732-18-5",
         each iupacName="oxidane",
         each molarMass=0.018015268,
         each criticalTemperature=647.096,
         each criticalPressure=22064.0e3,
         each criticalMolarVolume=1/322.0*0.018015268,
         each normalBoilingPoint=373.124,
         each meltingPoint=273.15,
         each triplePointTemperature=273.16,
         each triplePointPressure=611.657,
         each acentricFactor = 0.344,
         each dipoleMoment = 1.8,
         each hasCriticalData=true);

::

      constant Interfaces.PartialMedium.FluidConstants[1] simpleWaterConstants(
         each chemicalFormula = "H2O",
         each structureFormula="H2O",
         each casRegistryNumber="7732-18-5",
         each iupacName="oxidane",
         each molarMass=0.018015268);

::

    package StandardWater = WaterIF97_ph 
      "Water using the IF97 standard, explicit in p and h. Recommended for most applications";

::

    package StandardWaterOnePhase = WaterIF97_pT 
      "Water using the IF97 standard, explicit in p and T. Recommended for one-phase applications";

::

    package WaterIF97_pT 
      "Water using the IF97 standard, explicit in p and T"
      extends WaterIF97_base(
        ThermoStates = Choices.IndependentVariables.pT,
        final ph_explicit=false,
        final dT_explicit=false,
        final pT_explicit=true,
        final smoothModel=true,
        final onePhase=true);
    end WaterIF97_pT;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:34
2010.

.. |Modelica.Media.Water.ConstantPropertyLiquidWater| image:: Modelica.Media.Water.ConstantPropertyLiquidWaterS.png
.. |Modelica.Media.Water.IdealSteam| image:: Modelica.Media.Water.IdealSteamS.png
.. |Modelica.Media.Water.WaterIF97OnePhase\_ph| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |Modelica.Media.Water.WaterIF97\_ph| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |Modelica.Media.Water.WaterIF97\_base| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |Modelica.Media.Water.WaterIF97\_fixedregion| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |Modelica.Media.Water.WaterIF97\_R1ph| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |Modelica.Media.Water.WaterIF97\_R2ph| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |Modelica.Media.Water.WaterIF97\_R3ph| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |Modelica.Media.Water.WaterIF97\_R4ph| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |Modelica.Media.Water.WaterIF97\_R5ph| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |Modelica.Media.Water.WaterIF97\_R1pT| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |Modelica.Media.Water.WaterIF97\_R2pT| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |Modelica.Media.Water.IF97\_Utilities| image:: Modelica.Media.Water.IF97_UtilitiesS.png
.. |image14| image:: Modelica.Media.Water.ConstantPropertyLiquidWaterS.png
.. |image15| image:: Modelica.Media.Water.IdealSteamS.png
.. |image16| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |image17| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |image18| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |image19| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |image20| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |image21| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |image22| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |image23| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |image24| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |image25| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |image26| image:: Modelica.Media.Water.WaterIF97OnePhase_phS.png
.. |image27| image:: Modelica.Media.Water.IF97_UtilitiesS.png
