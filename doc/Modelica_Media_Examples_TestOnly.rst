================================
Modelica.Media.Examples.TestOnly
================================

`Modelica.Media.Examples <Modelica_Media_Examples.html#Modelica.Media.Examples>`_.TestOnly
------------------------------------------------------------------------------------------

**examples for testing purposes: move for final version**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| Name                                                                                                                                                          | Description                                                |
+===============================================================================================================================================================+============================================================+
| |image6| `MixIdealGasAir <Modelica_Media_Examples_TestOnly.html#Modelica.Media.Examples.TestOnly.MixIdealGasAir>`_                                            | Ideal gas air medium model                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image7| `FlueGas <Modelica_Media_Examples_TestOnly.html#Modelica.Media.Examples.TestOnly.FlueGas>`_                                                          | Ideal gas flue gas model                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image8| `N2AsMix <Modelica_Media_Examples_TestOnly_N2AsMix.html#Modelica.Media.Examples.TestOnly.N2AsMix>`_                                                  | air and steam mixture (no condensation!, pseudo-mixture)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image9| `IdealGasN2 <Modelica_Media_Examples_TestOnly.html#Modelica.Media.Examples.TestOnly.IdealGasN2>`_                                                    | Test IdealGas.SingleMedia.N2 medium model                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image10| `TestMedia <Modelica_Media_Examples_TestOnly_TestMedia.html#Modelica.Media.Examples.TestOnly.TestMedia>`_                                           | Test interfaces of media                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image11| `IdealGasN2Mix <Modelica_Media_Examples_TestOnly.html#Modelica.Media.Examples.TestOnly.IdealGasN2Mix>`_                                             | Test IdealGas.SingleMedia.N2 medium model                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+

--------------

|image12| `Modelica.Media.Examples.TestOnly <Modelica_Media_Examples_TestOnly.html#Modelica.Media.Examples.TestOnly>`_.MixIdealGasAir
-------------------------------------------------------------------------------------------------------------------------------------

**Ideal gas air medium model**

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

    model MixIdealGasAir "Ideal gas air medium model"
      extends Modelica.Icons.Example;
      package Medium = IdealGases.MixtureGases.CombustionAir "Medium model";
      Medium.BaseProperties medium(
         T(start = 200.0),
         X(start = {0.2,0.8}),
         p(start = 1.0e5));
      Medium.BaseProperties medium2(
         T(start = 300.0),
         X(start = {0.2,0.8}),
         p(start = 2.0e5));
      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(medium.state);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(medium.state);
      Medium.IsentropicExponent gamma=Medium.isentropicExponent(medium.state);
      Medium.SpecificEntropy s=Medium.specificEntropy(medium.state);
      Medium.SpecificEntropy s2=Medium.specificEntropy(medium2.state);
      Medium.VelocityOfSound a=Medium.velocityOfSound(medium.state);
      Medium.DynamicViscosity eta= Medium.dynamicViscosity(medium.state);
      Medium.ThermalConductivity lambda= Medium.thermalConductivity(medium.state);
      Real beta = Medium.isobaricExpansionCoefficient(medium.state);
      Real gamma2 = Medium.isothermalCompressibility(medium2.state);
      Medium.SpecificEnthalpy h_is = Medium.isentropicEnthalpyApproximation(2.0e5, medium);
    equation 
      der(medium.p) = 1000.0;
      der(medium.T) = 1000;
      medium.X = {0.2,0.8};
      der(medium2.p) = 1.0e3;
      der(medium2.T) = 0.0;
      der(medium2.X) = {0.0,0.0};
    //  s2 = s;
    end MixIdealGasAir;

--------------

|image13| `Modelica.Media.Examples.TestOnly <Modelica_Media_Examples_TestOnly.html#Modelica.Media.Examples.TestOnly>`_.FlueGas
------------------------------------------------------------------------------------------------------------------------------

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

+-----------------------------------------------------------------------------------------------------------------+----------+------------------+-------------------------------------+
| Type                                                                                                            | Name     | Default          | Description                         |
+=================================================================================================================+==========+==================+=====================================+
| `MolarMass <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MolarMass>`_   | MMx[4]   | Medium.data.MM   | Molar masses of flue gas [kg/mol]   |
+-----------------------------------------------------------------------------------------------------------------+----------+------------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FlueGas "Ideal gas flue gas  model"
      extends Modelica.Icons.Example;
      package Medium = IdealGases.MixtureGases.FlueGasLambdaOnePlus "Medium model";
      Medium.ThermodynamicState state(
         T(start = 200.0),
         X(start = {0.2,0.3,0.4,0.1}),
         p(start = 1.0e5));
      Medium.BaseProperties medium2(
         T(start = 300.0),
         X(start = {0.2,0.1,0.3,0.4}),
         p(start = 2.0e5));
      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(state);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(state);
      Medium.IsentropicExponent gamma=Medium.isentropicExponent(state);
      Medium.SpecificEntropy s=Medium.specificEntropy(state);
      Medium.SpecificEntropy s2=Medium.specificEntropy(medium2.state);
      Medium.VelocityOfSound a=Medium.velocityOfSound(state);
      Real beta = Medium.isobaricExpansionCoefficient(state);
      Real gamma2 = Medium.isothermalCompressibility(medium2.state);
      Medium.SpecificEnthalpy h_is = Medium.isentropicEnthalpyApproximation(2.0e5, medium2);
      parameter Medium.MolarMass[4] MMx = Medium.data.MM "Molar masses of flue gas";
      Medium.MolarMass MM =  1/sum(state.X[j]/MMx[j] for j in 1:4) "molar mass";
      Real[4] dddX=Medium.density_derX(medium2.state);
    equation 
      der(state.p) = 1000.0;
      der(state.T) = 1000;
      state.X = {0.2,0.2,0.4,0.2};
      der(medium2.p) = 1.0e3;
      der(medium2.T) = 0.0;
      der(medium2.X[1:Medium.nX]) = {0.0,0.0,0.0,0.0};
    end FlueGas;

--------------

|image14| `Modelica.Media.Examples.TestOnly <Modelica_Media_Examples_TestOnly.html#Modelica.Media.Examples.TestOnly>`_.IdealGasN2
---------------------------------------------------------------------------------------------------------------------------------

**Test IdealGas.SingleMedia.N2 medium model**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+--------------------------------------+
| Type                                                                                                                          | Name           | Default   | Description                          |
+===============================================================================================================================+================+===========+======================================+
| `Volume <Modelica_SIunits.html#Modelica.SIunits.Volume>`_                                                                     | V              | 1         | Size of fixed volume [m3]            |
+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+--------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_ext   | 0.01      | Mass flow rate into volume [kg/s]    |
+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+--------------------------------------+
| `EnthalpyFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.EnthalpyFlowRate>`_   | H\_flow\_ext   | 5000      | Enthalpy flow rate into volume [W]   |
+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealGasN2 "Test IdealGas.SingleMedia.N2 medium model"
      extends Modelica.Icons.Example;

      parameter Modelica.SIunits.Volume V=1 "Size of fixed volume";
      parameter Medium.MassFlowRate m_flow_ext=0.01 "Mass flow rate into volume";
      parameter Medium.EnthalpyFlowRate H_flow_ext=5000 
        "Enthalpy flow rate into volume";

      package Medium = IdealGases.SingleGases.N2 "Medium model";
      // initType=Medium.Choices.Init.SteadyState,

      Medium.BaseProperties medium(preferredMediumStates=true,
        p(start=1.e5),
        T(start=300));

      Real m(quantity=Medium.mediumName, start = 1.0);
      SI.InternalEnergy U;

      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(medium);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(medium);
      Medium.IsentropicExponent gamma=Medium.isentropicExponent(medium);
      Medium.SpecificEntropy s=Medium.specificEntropy(medium);
      Medium.VelocityOfSound a=Medium.velocityOfSound(medium);
    equation 

      m = medium.d*V;
      U = m*medium.u;

      // Mass balance
      der(m) = m_flow_ext;

      // Energy balance
      der(U) = H_flow_ext;
    end IdealGasN2;

--------------

|image15| `Modelica.Media.Examples.TestOnly <Modelica_Media_Examples_TestOnly.html#Modelica.Media.Examples.TestOnly>`_.IdealGasN2Mix
------------------------------------------------------------------------------------------------------------------------------------

**Test IdealGas.SingleMedia.N2 medium model**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+----------------------------------------------+
| Type                                                                                                                          | Name           | Default   | Description                                  |
+===============================================================================================================================+================+===========+==============================================+
| `Volume <Modelica_SIunits.html#Modelica.SIunits.Volume>`_                                                                     | V              | 1         | Size of volume [m3]                          |
+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+----------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_ext   | 0.01      | Mass flow rate flowing into volume [kg/s]    |
+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+----------------------------------------------+
| `EnthalpyFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.EnthalpyFlowRate>`_   | H\_flow\_ext   | 5000      | Enthalpy flow rate flowing into volume [W]   |
+-------------------------------------------------------------------------------------------------------------------------------+----------------+-----------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealGasN2Mix "Test IdealGas.SingleMedia.N2 medium model"
      extends Modelica.Icons.Example;

      parameter Modelica.SIunits.Volume V=1 "Size of volume";
      parameter Medium.MassFlowRate m_flow_ext=0.01 
        "Mass flow rate flowing into volume";
      parameter Medium.EnthalpyFlowRate H_flow_ext=5000 
        "Enthalpy flow rate flowing into volume";

      package Medium = N2AsMix "Medium model";
      // initType=Medium.Choices.Init.SteadyState,

      Medium.BaseProperties medium(preferredMediumStates=true,
        p(start=1.e5),
        T(start=300));

      Real m(quantity=Medium.mediumName, start = 1.0);
      SI.InternalEnergy U;

      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(medium);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(medium);
      Medium.IsentropicExponent gamma=Medium.isentropicExponent(medium);
      Medium.SpecificEntropy s=Medium.specificEntropy(medium);
      Medium.VelocityOfSound a=Medium.velocityOfSound(medium);
    equation 

      m = medium.d*V;
      U = m*medium.u;
      medium.X = {1.0};
      // Mass balance
      der(m) = m_flow_ext;

      // Energy balance
      der(U) = H_flow_ext;
    end IdealGasN2Mix;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:26
2010.

.. |Modelica.Media.Examples.TestOnly.MixIdealGasAir| image:: Modelica.Media.Examples.TestOnly.MixIdealGasAirS.png
.. |Modelica.Media.Examples.TestOnly.FlueGas| image:: Modelica.Media.Examples.TestOnly.MixIdealGasAirS.png
.. |Modelica.Media.Examples.TestOnly.N2AsMix| image:: Modelica.Media.Examples.TestOnly.N2AsMixS.png
.. |Modelica.Media.Examples.TestOnly.IdealGasN2| image:: Modelica.Media.Examples.TestOnly.IdealGasN2S.png
.. |Modelica.Media.Examples.TestOnly.TestMedia| image:: Modelica.Media.Examples.TestOnly.TestMediaS.png
.. |Modelica.Media.Examples.TestOnly.IdealGasN2Mix| image:: Modelica.Media.Examples.TestOnly.IdealGasN2MixS.png
.. |image6| image:: Modelica.Media.Examples.TestOnly.MixIdealGasAirS.png
.. |image7| image:: Modelica.Media.Examples.TestOnly.MixIdealGasAirS.png
.. |image8| image:: Modelica.Media.Examples.TestOnly.N2AsMixS.png
.. |image9| image:: Modelica.Media.Examples.TestOnly.IdealGasN2S.png
.. |image10| image:: Modelica.Media.Examples.TestOnly.TestMediaS.png
.. |image11| image:: Modelica.Media.Examples.TestOnly.IdealGasN2MixS.png
.. |image12| image:: Modelica.Media.Examples.TestOnly.MixIdealGasAirI.png
.. |image13| image:: Modelica.Media.Examples.TestOnly.MixIdealGasAirI.png
.. |image14| image:: Modelica.Media.Examples.TestOnly.MixIdealGasAirI.png
.. |image15| image:: Modelica.Media.Examples.TestOnly.MixIdealGasAirI.png
