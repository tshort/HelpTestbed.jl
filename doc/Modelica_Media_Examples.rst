=======================
Modelica.Media.Examples
=======================

`Modelica.Media <Modelica_Media.html#Modelica.Media>`_.Examples
---------------------------------------------------------------

**Demonstrate usage of property models (currently: simple tests)**

Information
~~~~~~~~~~~

::

Examples
^^^^^^^^

Physical properties for fluids are needed in so many different variants
that a library can only provide models for the most common situations.
With the following examples we are going to demonstrate how to use the
existing packages and functions in Modelica.Media to customize these
models for advanced applications. The high level functions try to
abstract as much as possible form the fact that different media are
based on different variables, e.g., ideal gases need pressure and
temperature, while many refrigerants are based on Helmholtz functions of
density and temperature, and many water proeprties are based on pressure
and specific enthalpy. Medium properties are needed in control volumes
in the dynamic state equations and in many thermodynamic state locations
that are independent of the dynamic states of a control volume, e.g., at
a wall temperature, an isentropic reference state or at a phase
boundary. The general structure of the library is such that:

-  Each medium has a model called BaseProperties. BaseProperties
   contains the minimum set of medium properties needed in a dynamic
   control volume model.
-  Each instance of BaseProperties contains a "state" record that is an
   input to all the functions to compute properties. If these functions
   need further inputs, like e.g., the molarMass, these are accessible
   as constants in the package.
-  The simplest way to compute properties at any other reference point
   is to declare an instance of ThermodynamicState and use that as input
   to arbitrary property functions.

A small library of generic volume, pipe, pump and ambient models is
provided in Modelica.Media.Examples.Tests.Components to demonstrate how
fluid components should be implemented that are using Modelica.Media
models. This library is also used to test all media models in
Modelica.Media.Examples.Tests.MediaTestModels.

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                          | Description                                                                                     |
+===============================================================================================================================================================================================+=================================================================================================+
| |image9| `SimpleLiquidWater <Modelica_Media_Examples.html#Modelica.Media.Examples.SimpleLiquidWater>`_                                                                                        | Example for Water.SimpleLiquidWater medium model                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image10| `IdealGasH2O <Modelica_Media_Examples.html#Modelica.Media.Examples.IdealGasH2O>`_                                                                                                   | IdealGas H20 medium model                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image11| `WaterIF97 <Modelica_Media_Examples.html#Modelica.Media.Examples.WaterIF97>`_                                                                                                       | WaterIF97 medium model                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image12| `MixtureGases <Modelica_Media_Examples.html#Modelica.Media.Examples.MixtureGases>`_                                                                                                 | Test gas mixtures                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image13| `MoistAir <Modelica_Media_Examples.html#Modelica.Media.Examples.MoistAir>`_                                                                                                         | Ideal gas flue gas model                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image14| `TwoPhaseWater <Modelica_Media_Examples_TwoPhaseWater.html#Modelica.Media.Examples.TwoPhaseWater>`_                                                                                 | extension of the StandardWater package                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image15| `TestOnly <Modelica_Media_Examples_TestOnly.html#Modelica.Media.Examples.TestOnly>`_                                                                                                | examples for testing purposes: move for final version                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image16| `Tests <Modelica_Media_Examples_Tests.html#Modelica.Media.Examples.Tests>`_                                                                                                         | Library to test that all media models simulate and fulfill the expected structural properties   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image17| `SolveOneNonlinearEquation <Modelica_Media_Examples_SolveOneNonlinearEquation.html#Modelica.Media.Examples.SolveOneNonlinearEquation>`_                                             | Demonstrate how to solve one non-linear algebraic equation in one unknown                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+

--------------

|image18| `Modelica.Media.Examples <Modelica_Media_Examples.html#Modelica.Media.Examples>`_.SimpleLiquidWater
-------------------------------------------------------------------------------------------------------------

**Example for Water.SimpleLiquidWater medium model**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+----------------+-----------+---------------------------------------------------+
| Type                                                                            | Name           | Default   | Description                                       |
+=================================================================================+================+===========+===================================================+
| `Volume <Modelica_SIunits.html#Modelica.SIunits.Volume>`_                       | V              | 1         | Volume [m3]                                       |
+---------------------------------------------------------------------------------+----------------+-----------+---------------------------------------------------+
| `EnthalpyFlowRate <Modelica_SIunits.html#Modelica.SIunits.EnthalpyFlowRate>`_   | H\_flow\_ext   | 1.e6      | Constant enthalpy flow rate into the volume [W]   |
+---------------------------------------------------------------------------------+----------------+-----------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SimpleLiquidWater 
      "Example for Water.SimpleLiquidWater medium model"

      import SI = Modelica.SIunits;
      extends Modelica.Icons.Example;
      parameter SI.Volume V=1 "Volume";
      parameter SI.EnthalpyFlowRate H_flow_ext=1.e6 
        "Constant enthalpy flow rate into the volume";

      package Medium = Water.ConstantPropertyLiquidWater (SpecificEnthalpy(max=1e6)) 
        "Medium model";
      Medium.BaseProperties medium(
        T(start=300,fixed=true));

      Medium.BaseProperties medium2;
      Medium.ThermodynamicState state;
      Real m_flow_ext2;
      Real der_p;
      Real der_T;

      SI.Mass m(start = 1.0);
      SI.InternalEnergy U;

      // Use type declarations from the Medium
      Medium.MassFlowRate m_flow_ext;
      Medium.DynamicViscosity eta=Medium.dynamicViscosity(medium);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(medium);
    equation 
      medium.p = 1.0e5;
      m = medium.d*V;
      U = m*medium.u;

      // Mass balance
      der(m) = m_flow_ext;

      // Energy balance
      der(U) = H_flow_ext;

      // Smooth state
      medium2.p = 1e5*time/10;
      medium2.T = 330;
      m_flow_ext2 = time - 30;
      state = Medium.setSmoothState(m_flow_ext2, medium.state, medium2.state, 10);
      der_p = der(state.p);
      der_T = der(state.T);
    end SimpleLiquidWater;

--------------

|image19| `Modelica.Media.Examples <Modelica_Media_Examples.html#Modelica.Media.Examples>`_.IdealGasH2O
-------------------------------------------------------------------------------------------------------

**IdealGas H20 medium model**

Information
~~~~~~~~~~~

::

An example for using ideal gas properties and how to compute isentropic
enthalpy changes. The function that is implemented is approximate, but
usually very good: the second medium record medium2 is given to compare
the approximation.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealGasH2O "IdealGas H20 medium model"
      extends Modelica.Icons.Example;
      package Medium = IdealGases.SingleGases.H2O "Medium model";
      Medium.ThermodynamicState state "thermodynamic state record";
      Medium.ThermodynamicState state2;
      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(state);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(state);
      Medium.IsentropicExponent k=Medium.isentropicExponent(state);
      Medium.SpecificEntropy s=Medium.specificEntropy(state);
      //  Medium.SpecificEntropy s2=Medium.specificEntropy(state2);
      Medium.VelocityOfSound a=Medium.velocityOfSound(state);
      Real beta = Medium.isobaricExpansionCoefficient(state);
      Real gamma = Medium.isothermalCompressibility(state);
      Medium.SpecificEnthalpy h_is = Medium.isentropicEnthalpyApproximation(2.0, state);

      Medium.ThermodynamicState smoothState;
      Real m_flow_ext;
      Real der_p;
      Real der_T;

    equation 
      state.p = 100000.0;
      state.T = 200 + 1000*time;
      state2.p = 2.0e5;
      state2.T = 500.0;
      //  s2 = s;

      // Smooth state
      m_flow_ext = time - 0.5;
      smoothState = Medium.setSmoothState(m_flow_ext, state, state2, 0.1);
      der_p = der(smoothState.p);
      der_T = der(smoothState.T);

    end IdealGasH2O;

--------------

|image20| `Modelica.Media.Examples <Modelica_Media_Examples.html#Modelica.Media.Examples>`_.WaterIF97
-----------------------------------------------------------------------------------------------------

**WaterIF97 medium model**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+--------------------------------------------+
| Type                                                                                                                          | Name           | Default   | Description                                |
+===============================================================================================================================+================+===========+============================================+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_                                                     | dV             | 0.0       | Fixed time derivative of volume [m3/s]     |
+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+--------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_ext   | 0         | Fixed mass flow rate into volume [kg/s]    |
+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+--------------------------------------------+
| `EnthalpyFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.EnthalpyFlowRate>`_   | H\_flow\_ext   | 10000     | Fixed enthalpy flow rate into volume [W]   |
+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model WaterIF97 "WaterIF97 medium model"
      extends Modelica.Icons.Example;
      package Medium = Water.StandardWater "Medium model";
      Medium.BaseProperties medium(
        p(start=1.e5, stateSelect=StateSelect.prefer),
        h(start=1.0e5, stateSelect=StateSelect.prefer),
        T(start = 275.0),
        d(start = 999.0));
      Modelica.SIunits.Volume V(start = 0.1);
      parameter Modelica.SIunits.VolumeFlowRate dV = 0.0 
        "Fixed time derivative of volume";
      parameter Medium.MassFlowRate m_flow_ext=0 "Fixed mass flow rate into volume";
      parameter Medium.EnthalpyFlowRate H_flow_ext=10000 
        "Fixed enthalpy flow rate into volume";
      Modelica.SIunits.Mass m "Mass of volume";
      Modelica.SIunits.InternalEnergy U "Internal energy of volume";

      Medium.ThermodynamicState state2;
      Medium.ThermodynamicState state;
      Real m_flow_ext2;
      Real der_p;
      Real der_T;

    equation 
      der(V) = dV;
      m = medium.d*V;
      U = m*medium.u;

      // Mass balance
      der(m) = m_flow_ext;

      // Energy balance
      der(U) = H_flow_ext;

      // smooth states
      m_flow_ext2 = time - 0.5;
      state2 = Medium.setState_pT(1e5*(1+time), 300+200*time);
      state = Medium.setSmoothState(m_flow_ext2, medium.state, state2, 0.05);
      der_p = der(state.p);
      der_T = der(state.T);
    end WaterIF97;

--------------

|image21| `Modelica.Media.Examples <Modelica_Media_Examples.html#Modelica.Media.Examples>`_.MixtureGases
--------------------------------------------------------------------------------------------------------

**Test gas mixtures**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------+
| Type                                                                            | Name           | Default   | Description                                                     |
+=================================================================================+================+===========+=================================================================+
| `Volume <Modelica_SIunits.html#Modelica.SIunits.Volume>`_                       | V              | 1         | Fixed size of volume 1 and volume 2 [m3]                        |
+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_           | m\_flow\_ext   | 0.01      | Fixed mass flow rate in to volume 1 and in to volume 2 [kg/s]   |
+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------+
| `EnthalpyFlowRate <Modelica_SIunits.html#Modelica.SIunits.EnthalpyFlowRate>`_   | H\_flow\_ext   | 5000      | Fixed enthalpy flow rate in to volume and in to volume 2 [W]    |
+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MixtureGases "Test gas mixtures"
      extends Modelica.Icons.Example;

      parameter Modelica.SIunits.Volume V=1 "Fixed size of volume 1 and volume 2";
      parameter Modelica.SIunits.MassFlowRate m_flow_ext=0.01 
        "Fixed mass flow rate in to volume 1 and in to volume 2";
      parameter Modelica.SIunits.EnthalpyFlowRate H_flow_ext=5000 
        "Fixed enthalpy flow rate in to volume and in to volume 2";

      package Medium1 = Modelica.Media.IdealGases.MixtureGases.CombustionAir 
        "Medium model";
      Medium1.BaseProperties medium1(p(start=1.e5, stateSelect=StateSelect.prefer),
         T(start=300, stateSelect=StateSelect.prefer),
         X(start={0.8,0.2}));
      Real m1(quantity=Medium1.mediumName, start = 1.0);
      SI.InternalEnergy U1;
      Medium1.SpecificHeatCapacity cp1=Medium1.specificHeatCapacityCp(medium1.state);
      Medium1.DynamicViscosity eta1= Medium1.dynamicViscosity(medium1.state);
      Medium1.ThermalConductivity lambda1= Medium1.thermalConductivity(medium1.state);

      package Medium2 = Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas 
        "Medium model";
      Medium2.BaseProperties medium2(p(start=1.e5, stateSelect=StateSelect.prefer),
         T(start=300, stateSelect=StateSelect.prefer),
         X(start={0.1,0.1,0.1,0.2,0.2,0.3}));
      Real m2(quantity=Medium2.mediumName, start = 1.0);
      SI.InternalEnergy U2;
      Medium2.SpecificHeatCapacity cp2=Medium2.specificHeatCapacityCp(medium2.state);
      Medium2.DynamicViscosity eta2= Medium2.dynamicViscosity(medium2.state);
      Medium2.ThermalConductivity lambda2= Medium2.thermalConductivity(medium2.state);

      Medium2.ThermodynamicState state2 = Medium2.setState_pTX(1.005e5, 302, {0.3,0.2,0.2,0.1,0.1,0.1});
      Medium2.ThermodynamicState smoothState;
      Real m_flow_ext2;
      Real der_p;
      Real der_T;

    equation 
      medium1.X = {0.8,0.2};
      m1 = medium1.d*V;
      U1 = m1*medium1.u;
      der(m1) = m_flow_ext;
      der(U1) = H_flow_ext;

      medium2.X ={0.1,0.1,0.1,0.2,0.2,0.3};
      m2 = medium2.d*V;
      U2 = m2*medium2.u;
      der(m2) = m_flow_ext;
      der(U2) = H_flow_ext;

      // Smooth state
      m_flow_ext2 = time - 0.5;
      smoothState = Medium2.setSmoothState(m_flow_ext2, medium2.state, state2, 0.2);
      der_p = der(smoothState.p);
      der_T = der(smoothState.T);
    end MixtureGases;

--------------

|image22| `Modelica.Media.Examples <Modelica_Media_Examples.html#Modelica.Media.Examples>`_.MoistAir
----------------------------------------------------------------------------------------------------

**Ideal gas flue gas model**

Information
~~~~~~~~~~~

::

An example for using ideal gas properties and how to compute isentropic
enthalpy changes. The function that is implemented is approximate, but
usually very good: the second medium record medium2 is given to compare
the approximation.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+------------------------------------------------------------------------+
| Type                                                                                                            | Name     | Default                           | Description                                                            |
+=================================================================================================================+==========+===================================+========================================================================+
| `MolarMass <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MolarMass>`_   | MMx[2]   | {Medium.dryair.MM,Medium.ste...   | Vector of molar masses (consisting of dry air and of steam) [kg/mol]   |
+-----------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MoistAir "Ideal gas flue gas  model"
        extends Modelica.Icons.Example;
        package Medium = Air.MoistAir "Medium model";
        Medium.BaseProperties medium(
           T(start = 274.0),
           X(start = {0.95,0.05}),
           p(start = 1.0e5));
      //  Medium.SpecificEntropy s=Medium.specificEntropy(medium);
      //  Medium.SpecificEnthalpy h_is = Medium.isentropicEnthalpyApproximation(medium, 2.0e5);
        parameter Medium.MolarMass[2] MMx = {Medium.dryair.MM,Medium.steam.MM} 
        "Vector of molar masses (consisting of dry air and of steam)";
        Medium.MolarMass MM = 1/((1-medium.X[1])/MMx[1]+medium.X[1]/MMx[2]) 
        "Molar mass of gas part of mixture";
      //  Real[4] dddX=Medium.density_derX(medium,MM);

      Medium.ThermodynamicState state1;
      Medium.ThermodynamicState state2;
      Medium.ThermodynamicState smoothState;
      Real m_flow_ext;
      Real der_p;
      Real der_T;
    equation 
        der(medium.p) = 0.0;
        der(medium.T) = 90;
        medium.X[Medium.Air] = 0.95;
        //    medium.X[Medium.Water] = 0.05;
        // one simple assumption only for quick testing:
      //  medium.X_liquidWater = if medium.X_sat < medium.X[2] then medium.X[2] - medium.X_sat else 0.0;

       // Smooth state
       m_flow_ext = time - 0.5;
       state1.p = 1.e5*(1+time);
       state1.T = 300 + 10*time;
       state1.X = {time, 1-time};
       state2.p = 1.e5*(1+time/2);
       state2.T = 340 - 20*time;
       state2.X = {0.5*time, 1-0.5*time};
       smoothState = Medium.setSmoothState(m_flow_ext, state1, state2, 0.2);
       der_p = der(smoothState.p);
       der_T = der(smoothState.T);
    end MoistAir;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:26
2010.

.. |Modelica.Media.Examples.SimpleLiquidWater| image:: Modelica.Media.Examples.SimpleLiquidWaterS.png
.. |Modelica.Media.Examples.IdealGasH2O| image:: Modelica.Media.Examples.SimpleLiquidWaterS.png
.. |Modelica.Media.Examples.WaterIF97| image:: Modelica.Media.Examples.SimpleLiquidWaterS.png
.. |Modelica.Media.Examples.MixtureGases| image:: Modelica.Media.Examples.SimpleLiquidWaterS.png
.. |Modelica.Media.Examples.MoistAir| image:: Modelica.Media.Examples.SimpleLiquidWaterS.png
.. |Modelica.Media.Examples.TwoPhaseWater| image:: Modelica.Media.Examples.TwoPhaseWaterS.png
.. |Modelica.Media.Examples.TestOnly| image:: Modelica.Media.Examples.TestOnlyS.png
.. |Modelica.Media.Examples.Tests| image:: Modelica.Media.Examples.TestOnlyS.png
.. |Modelica.Media.Examples.SolveOneNonlinearEquation| image:: Modelica.Media.Examples.TestOnlyS.png
.. |image9| image:: Modelica.Media.Examples.SimpleLiquidWaterS.png
.. |image10| image:: Modelica.Media.Examples.SimpleLiquidWaterS.png
.. |image11| image:: Modelica.Media.Examples.SimpleLiquidWaterS.png
.. |image12| image:: Modelica.Media.Examples.SimpleLiquidWaterS.png
.. |image13| image:: Modelica.Media.Examples.SimpleLiquidWaterS.png
.. |image14| image:: Modelica.Media.Examples.TwoPhaseWaterS.png
.. |image15| image:: Modelica.Media.Examples.TestOnlyS.png
.. |image16| image:: Modelica.Media.Examples.TestOnlyS.png
.. |image17| image:: Modelica.Media.Examples.TestOnlyS.png
.. |image18| image:: Modelica.Media.Examples.SimpleLiquidWaterI.png
.. |image19| image:: Modelica.Media.Examples.SimpleLiquidWaterI.png
.. |image20| image:: Modelica.Media.Examples.SimpleLiquidWaterI.png
.. |image21| image:: Modelica.Media.Examples.SimpleLiquidWaterI.png
.. |image22| image:: Modelica.Media.Examples.SimpleLiquidWaterI.png
