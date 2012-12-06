=======================================================
Modelica.Media.Water.IF97\_Utilities.ThermoFluidSpecial
=======================================================

`Modelica.Media.Water.IF97\_Utilities <Modelica_Media_Water_IF97_Utilities.html#Modelica.Media.Water.IF97_Utilities>`_.ThermoFluidSpecial
-----------------------------------------------------------------------------------------------------------------------------------------

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                             | Description                                                                                   |
+==================================================================================================================================================================================================================+===============================================================================================+
| |image3| `water\_ph <Modelica_Media_Water_IF97_Utilities_ThermoFluidSpecial.html#Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecial.water_ph>`_                                                              | calculate the property record for dynamic simulation properties using p,h as states           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| |image4| `water\_dT <Modelica_Media_Water_IF97_Utilities_ThermoFluidSpecial.html#Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecial.water_dT>`_                                                              | calculate property record for dynamic simulation properties using d and T as dynamic states   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| |image5| `water\_pT <Modelica_Media_Water_IF97_Utilities_ThermoFluidSpecial.html#Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecial.water_pT>`_                                                              | calculate property record for dynamic simulation properties using p and T as dynamic states   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+

--------------

|image6| `Modelica.Media.Water.IF97\_Utilities.ThermoFluidSpecial <Modelica_Media_Water_IF97_Utilities_ThermoFluidSpecial.html#Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecial>`_.water\_ph
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**calculate the property record for dynamic simulation properties using
p,h as states**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+
| Type                                                                            | Name    | Default   | Description                                             |
+=================================================================================+=========+===========+=========================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | p       |           | pressure [Pa]                                           |
+---------------------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h       |           | specific enthalpy [J/kg]                                |
+---------------------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+
| Integer                                                                         | phase   | 0         | phase: 2 for two-phase, 1 for one phase, 0 if unknown   |
+---------------------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+

Outputs
~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------------+
| Type                                                                                                                                   | Name   | Description                              |
+========================================================================================================================================+========+==========================================+
| `ThermoProperties\_ph <Modelica_Media_Common_ThermoFluidSpecial.html#Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_ph>`_   | pro    | property record for dynamic simulation   |
+----------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function water_ph 
      "calculate the property record for dynamic simulation properties using p,h as states"
      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.SpecificEnthalpy h "specific enthalpy";
      input Integer phase= 0 
        "phase: 2 for two-phase, 1 for one phase, 0 if unknown";
      output Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_ph pro 
        "property record for dynamic simulation";
    protected 
      Modelica.Media.Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.HelmholtzDerivs f 
        "dimensionless Helmholtz funcion and dervatives w.r.t. delta and tau";
      Integer region(min=1, max=5) "IF97 region";
      Integer error "error flag";
      SI.Temperature T "temperature";
      SI.Density d "density";
    algorithm 
      region := BaseIF97.Regions.region_ph(p, h, phase);
      if (region == 1) then
        T := BaseIF97.Basic.tph1(p, h);
        g := BaseIF97.Basic.g1(p, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_ph(g);
      elseif (region == 2) then
        T := BaseIF97.Basic.tph2(p, h);
        g := BaseIF97.Basic.g2(p, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_ph(g);
      elseif (region == 3) then
        (d,T,error) := BaseIF97.Inverses.dtofph3(p=p,h= h,delp= 1.0e-7,delh=
          1.0e-6);
        f := BaseIF97.Basic.f3(d, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.helmholtzToProps_ph(f);
      elseif (region == 4) then
        pro := BaseIF97.TwoPhase.waterR4_ph(p=p,h= h);
      elseif (region == 5) then
        (T,error) := BaseIF97.Inverses.tofph5(p=p,h= h,reldh= 1.0e-7);
        g := BaseIF97.Basic.g5(p, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_ph(g);
      end if;
    end water_ph;

--------------

|image7| `Modelica.Media.Water.IF97\_Utilities.ThermoFluidSpecial <Modelica_Media_Water_IF97_Utilities_ThermoFluidSpecial.html#Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecial>`_.water\_dT
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**calculate property record for dynamic simulation properties using d
and T as dynamic states**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+
| Type                                                                  | Name    | Default   | Description                                             |
+=======================================================================+=========+===========+=========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_           | d       |           | density [kg/m3]                                         |
+-----------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T       |           | temperature [K]                                         |
+-----------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+
| Integer                                                               | phase   | 0         | phase: 2 for two-phase, 1 for one phase, 0 if unknown   |
+-----------------------------------------------------------------------+---------+-----------+---------------------------------------------------------+

Outputs
~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------------+
| Type                                                                                                                                   | Name   | Description                              |
+========================================================================================================================================+========+==========================================+
| `ThermoProperties\_dT <Modelica_Media_Common_ThermoFluidSpecial.html#Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_dT>`_   | pro    | property record for dynamic simulation   |
+----------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function water_dT 
      "calculate property record for dynamic simulation properties using d and T as dynamic states"
      extends Modelica.Icons.Function;
      input SI.Density d "density";
      input SI.Temperature T "temperature";
      input Integer phase= 0 
        "phase: 2 for two-phase, 1 for one phase, 0 if unknown";
      output Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_dT pro 
        "property record for dynamic simulation";
    protected 
      SI.Pressure p "pressure";
      Integer region(min=1, max=5) "IF97 region";
      Modelica.Media.Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.HelmholtzDerivs f 
        "dimensionless Helmholtz funcion and dervatives w.r.t. delta and tau";
      Integer error "error flag";
    algorithm 
      region := BaseIF97.Regions.region_dT(d, T, phase);
      if (region == 1) then
        (p,error) := BaseIF97.Inverses.pofdt125(d=d,T= T,reldd= iter.DELD,region=
                 1);
        g := BaseIF97.Basic.g1(p, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_dT(g);
      elseif (region == 2) then
        (p,error) := BaseIF97.Inverses.pofdt125(d=d,T= T,reldd= iter.DELD,region=
                 2);
        g := BaseIF97.Basic.g2(p, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_dT(g);
      elseif (region == 3) then
        f := BaseIF97.Basic.f3(d, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.helmholtzToProps_dT(f);
      elseif (region == 4) then
        pro := BaseIF97.TwoPhase.waterR4_dT(d=d,T= T);
      elseif (region == 5) then
        (p,error) := BaseIF97.Inverses.pofdt125(d=d,T= T,reldd= iter.DELD,region=
                 5);
        g := BaseIF97.Basic.g5(p, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_dT(g);
      end if;
    end water_dT;

--------------

|image8| `Modelica.Media.Water.IF97\_Utilities.ThermoFluidSpecial <Modelica_Media_Water_IF97_Utilities_ThermoFluidSpecial.html#Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecial>`_.water\_pT
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**calculate property record for dynamic simulation properties using p
and T as dynamic states**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                  | Name   | Default   | Description       |
+=======================================================================+========+===========+===================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_         | p      |           | pressure [Pa]     |
+-----------------------------------------------------------------------+--------+-----------+-------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T      |           | temperature [K]   |
+-----------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------------+
| Type                                                                                                                                   | Name   | Description                              |
+========================================================================================================================================+========+==========================================+
| `ThermoProperties\_pT <Modelica_Media_Common_ThermoFluidSpecial.html#Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_pT>`_   | pro    | property record for dynamic simulation   |
+----------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function water_pT 
      "calculate property record for dynamic simulation properties using p and T as dynamic states"

      extends Modelica.Icons.Function;
      input SI.Pressure p "pressure";
      input SI.Temperature T "temperature";
      output Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties_pT pro 
        "property record for dynamic simulation";
    protected 
      SI.Density d "density";
      Integer region(min=1, max=5) "IF97 region";
      Modelica.Media.Common.GibbsDerivs g 
        "dimensionless Gibbs funcion and dervatives w.r.t. pi and tau";
      Modelica.Media.Common.HelmholtzDerivs f 
        "dimensionless Helmholtz funcion and dervatives w.r.t. delta and tau";
      Integer error "error flag";
    algorithm 
      region := BaseIF97.Regions.region_pT(p, T);
      if (region == 1) then
        g := BaseIF97.Basic.g1(p, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_pT(g);
      elseif (region == 2) then
        g := BaseIF97.Basic.g2(p, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_pT(g);
      elseif (region == 3) then
        (d,error) := BaseIF97.Inverses.dofpt3(p=p,T= T,delp= iter.DELP);
        f := BaseIF97.Basic.f3(d, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.helmholtzToProps_pT(f);
      elseif (region == 5) then
        g := BaseIF97.Basic.g5(p, T);
        pro := Modelica.Media.Common.ThermoFluidSpecial.gibbsToProps_pT(g);
      end if;
    end water_pT;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:41
2010.

.. |Modelica.Media.Water.IF97\_Utilities.ThermoFluidSpecial.water\_ph| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.ThermoFluidSpecial.water\_dT| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |Modelica.Media.Water.IF97\_Utilities.ThermoFluidSpecial.water\_pT| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image3| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image4| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image5| image:: Modelica.Media.Water.IF97_Utilities.BaseIF97.extraDerivs_phS.png
.. |image6| image:: Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecial.water_phI.png
.. |image7| image:: Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecial.water_phI.png
.. |image8| image:: Modelica.Media.Water.IF97_Utilities.ThermoFluidSpecial.water_phI.png
