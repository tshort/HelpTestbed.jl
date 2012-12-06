=====================================
Modelica.Media.IdealGases.SingleGases
=====================================

`Modelica.Media.IdealGases <Modelica_Media_IdealGases.html#Modelica.Media.IdealGases>`_.SingleGases
---------------------------------------------------------------------------------------------------

**Media models of ideal gases from NASA tables**

Information
~~~~~~~~~~~

::

This package contains medium models for the following 37 gases (see also
the description in
`Modelica.Media.IdealGases <Modelica_Media_IdealGases.html#Modelica.Media.IdealGases>`_):

::

    Argon             Methane          Methanol       Carbon Monoxide  Carbon Dioxide
    Acetylene         Ethylene         Ethanol        Ethane           Propylene
    Propane           1-Propanol       1-Butene       N-Butane         1-Pentene
    N-Pentane         Benzene          1-Hexene       N-Hexane         1-Heptane
    N-Heptane         Ethylbenzene     N-Octane       Chlorine         Fluorine
    Hydrogen          Steam            Helium         Ammonia          Nitric Oxide
    Nitrogen Dioxide  Nitrogen         Nitrous        Oxide            Neon Oxygen
    Sulfur Dioxide    Sulfur Trioxide

::

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| Name                                                                                                                                                                                                | Description                                                  |
+=====================================================================================================================================================================================================+==============================================================+
| |image37| `Ar <Modelica_Media_IdealGases_SingleGases_Ar.html#Modelica.Media.IdealGases.SingleGases.Ar>`_                                                                                            | Ideal gas "Ar" from NASA Glenn coefficients                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image38| `CH4 <Modelica_Media_IdealGases_SingleGases_CH4.html#Modelica.Media.IdealGases.SingleGases.CH4>`_                                                                                         | Ideal gas "CH4" from NASA Glenn coefficients                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image39| `CH3OH <Modelica_Media_IdealGases_SingleGases_CH3OH.html#Modelica.Media.IdealGases.SingleGases.CH3OH>`_                                                                                   | Ideal gas "CH3OH" from NASA Glenn coefficients               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image40| `CO <Modelica_Media_IdealGases_SingleGases_CO.html#Modelica.Media.IdealGases.SingleGases.CO>`_                                                                                            | Ideal gas "CO" from NASA Glenn coefficients                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image41| `CO2 <Modelica_Media_IdealGases_SingleGases_CO2.html#Modelica.Media.IdealGases.SingleGases.CO2>`_                                                                                         | Ideal gas "CO2" from NASA Glenn coefficients                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image42| `C2H2\_vinylidene <Modelica_Media_IdealGases_SingleGases_C2H2_vinylidene.html#Modelica.Media.IdealGases.SingleGases.C2H2_vinylidene>`_                                                    | Ideal gas "C2H2\_vinylidene" from NASA Glenn coefficients    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image43| `C2H4 <Modelica_Media_IdealGases_SingleGases_C2H4.html#Modelica.Media.IdealGases.SingleGases.C2H4>`_                                                                                      | Ideal gas "C2H4" from NASA Glenn coefficients                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image44| `C2H5OH <Modelica_Media_IdealGases_SingleGases_C2H5OH.html#Modelica.Media.IdealGases.SingleGases.C2H5OH>`_                                                                                | Ideal gas "C2H5OH" from NASA Glenn coefficients              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image45| `C2H6 <Modelica_Media_IdealGases_SingleGases_C2H6.html#Modelica.Media.IdealGases.SingleGases.C2H6>`_                                                                                      | Ideal gas "C2H6" from NASA Glenn coefficients                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image46| `C3H6\_propylene <Modelica_Media_IdealGases_SingleGases_C3H6_propylene.html#Modelica.Media.IdealGases.SingleGases.C3H6_propylene>`_                                                       | Ideal gas "C3H6\_propylene" from NASA Glenn coefficients     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image47| `C3H8 <Modelica_Media_IdealGases_SingleGases_C3H8.html#Modelica.Media.IdealGases.SingleGases.C3H8>`_                                                                                      | Ideal gas "C3H8" from NASA Glenn coefficients                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image48| `C3H8O\_1propanol <Modelica_Media_IdealGases_SingleGases_C3H8O_1propanol.html#Modelica.Media.IdealGases.SingleGases.C3H8O_1propanol>`_                                                    | Ideal gas "C3H8O\_1propanol" from NASA Glenn coefficients    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image49| `C4H8\_1\_butene <Modelica_Media_IdealGases_SingleGases_C4H8_1_butene.html#Modelica.Media.IdealGases.SingleGases.C4H8_1_butene>`_                                                         | Ideal gas "C4H8\_1\_butene" from NASA Glenn coefficients     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image50| `C4H10\_n\_butane <Modelica_Media_IdealGases_SingleGases_C4H10_n_butane.html#Modelica.Media.IdealGases.SingleGases.C4H10_n_butane>`_                                                      | Ideal gas "C4H10\_n\_butane" from NASA Glenn coefficients    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image51| `C5H10\_1\_pentene <Modelica_Media_IdealGases_SingleGases_C5H10_1_pentene.html#Modelica.Media.IdealGases.SingleGases.C5H10_1_pentene>`_                                                   | Ideal gas "C5H10\_1\_pentene" from NASA Glenn coefficients   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image52| `C5H12\_n\_pentane <Modelica_Media_IdealGases_SingleGases_C5H12_n_pentane.html#Modelica.Media.IdealGases.SingleGases.C5H12_n_pentane>`_                                                   | Ideal gas "C5H12\_n\_pentane" from NASA Glenn coefficients   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image53| `C6H6 <Modelica_Media_IdealGases_SingleGases_C6H6.html#Modelica.Media.IdealGases.SingleGases.C6H6>`_                                                                                      | Ideal gas "C6H6" from NASA Glenn coefficients                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image54| `C6H12\_1\_hexene <Modelica_Media_IdealGases_SingleGases_C6H12_1_hexene.html#Modelica.Media.IdealGases.SingleGases.C6H12_1_hexene>`_                                                      | Ideal gas "C6H12\_1\_hexene" from NASA Glenn coefficients    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image55| `C6H14\_n\_hexane <Modelica_Media_IdealGases_SingleGases_C6H14_n_hexane.html#Modelica.Media.IdealGases.SingleGases.C6H14_n_hexane>`_                                                      | Ideal gas "C6H14\_n\_hexane" from NASA Glenn coefficients    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image56| `C7H14\_1\_heptene <Modelica_Media_IdealGases_SingleGases_C7H14_1_heptene.html#Modelica.Media.IdealGases.SingleGases.C7H14_1_heptene>`_                                                   | Ideal gas "C7H14\_1\_heptene" from NASA Glenn coefficients   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image57| `C7H16\_n\_heptane <Modelica_Media_IdealGases_SingleGases_C7H16_n_heptane.html#Modelica.Media.IdealGases.SingleGases.C7H16_n_heptane>`_                                                   | Ideal gas "C7H16\_n\_heptane" from NASA Glenn coefficients   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image58| `C8H10\_ethylbenz <Modelica_Media_IdealGases_SingleGases_C8H10_ethylbenz.html#Modelica.Media.IdealGases.SingleGases.C8H10_ethylbenz>`_                                                    | Ideal gas "C8H10\_ethylbenz" from NASA Glenn coefficients    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image59| `C8H18\_n\_octane <Modelica_Media_IdealGases_SingleGases_C8H18_n_octane.html#Modelica.Media.IdealGases.SingleGases.C8H18_n_octane>`_                                                      | Ideal gas "C8H18\_n\_octane" from NASA Glenn coefficients    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image60| `CL2 <Modelica_Media_IdealGases_SingleGases_CL2.html#Modelica.Media.IdealGases.SingleGases.CL2>`_                                                                                         | Ideal gas "Cl2" from NASA Glenn coefficients                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image61| `F2 <Modelica_Media_IdealGases_SingleGases_F2.html#Modelica.Media.IdealGases.SingleGases.F2>`_                                                                                            | Ideal gas "F2" from NASA Glenn coefficients                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image62| `H2 <Modelica_Media_IdealGases_SingleGases_H2.html#Modelica.Media.IdealGases.SingleGases.H2>`_                                                                                            | Ideal gas "H2" from NASA Glenn coefficients                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image63| `H2O <Modelica_Media_IdealGases_SingleGases_H2O.html#Modelica.Media.IdealGases.SingleGases.H2O>`_                                                                                         | Ideal gas "H2O" from NASA Glenn coefficients                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image64| `He <Modelica_Media_IdealGases_SingleGases_He.html#Modelica.Media.IdealGases.SingleGases.He>`_                                                                                            | Ideal gas "He" from NASA Glenn coefficients                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image65| `NH3 <Modelica_Media_IdealGases_SingleGases_NH3.html#Modelica.Media.IdealGases.SingleGases.NH3>`_                                                                                         | Ideal gas "NH3" from NASA Glenn coefficients                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image66| `NO <Modelica_Media_IdealGases_SingleGases_NO.html#Modelica.Media.IdealGases.SingleGases.NO>`_                                                                                            | Ideal gas "NO" from NASA Glenn coefficients                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image67| `NO2 <Modelica_Media_IdealGases_SingleGases_NO2.html#Modelica.Media.IdealGases.SingleGases.NO2>`_                                                                                         | Ideal gas "NO2" from NASA Glenn coefficients                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image68| `N2 <Modelica_Media_IdealGases_SingleGases_N2.html#Modelica.Media.IdealGases.SingleGases.N2>`_                                                                                            | Ideal gas "N2" from NASA Glenn coefficients                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image69| `N2O <Modelica_Media_IdealGases_SingleGases_N2O.html#Modelica.Media.IdealGases.SingleGases.N2O>`_                                                                                         | Ideal gas "N2O" from NASA Glenn coefficients                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image70| `Ne <Modelica_Media_IdealGases_SingleGases_Ne.html#Modelica.Media.IdealGases.SingleGases.Ne>`_                                                                                            | Ideal gas "Ne" from NASA Glenn coefficients                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image71| `O2 <Modelica_Media_IdealGases_SingleGases_O2.html#Modelica.Media.IdealGases.SingleGases.O2>`_                                                                                            | Ideal gas "O2" from NASA Glenn coefficients                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image72| `SO2 <Modelica_Media_IdealGases_SingleGases_SO2.html#Modelica.Media.IdealGases.SingleGases.SO2>`_                                                                                         | Ideal gas "SO2" from NASA Glenn coefficients                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image73| `SO3 <Modelica_Media_IdealGases_SingleGases_SO3.html#Modelica.Media.IdealGases.SingleGases.SO3>`_                                                                                         | Ideal gas "SO3" from NASA Glenn coefficients                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:33
2010.

.. |Modelica.Media.IdealGases.SingleGases.Ar| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.CH4| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.CH3OH| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.CO| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.CO2| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C2H2\_vinylidene| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C2H4| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C2H5OH| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C2H6| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C3H6\_propylene| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C3H8| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C3H8O\_1propanol| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C4H8\_1\_butene| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C4H10\_n\_butane| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C5H10\_1\_pentene| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C5H12\_n\_pentane| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C6H6| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C6H12\_1\_hexene| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C6H14\_n\_hexane| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C7H14\_1\_heptene| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C7H16\_n\_heptane| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C8H10\_ethylbenz| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.C8H18\_n\_octane| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.CL2| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.F2| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.H2| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.H2O| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.He| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.NH3| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.NO| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.NO2| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.N2| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.N2O| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.Ne| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.O2| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.SO2| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.SingleGases.SO3| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image37| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image38| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image39| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image40| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image41| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image42| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image43| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image44| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image45| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image46| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image47| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image48| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image49| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image50| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image51| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image52| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image53| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image54| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image55| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image56| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image57| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image58| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image59| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image60| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image61| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image62| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image63| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image64| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image65| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image66| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image67| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image68| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image69| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image70| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image71| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image72| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image73| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
